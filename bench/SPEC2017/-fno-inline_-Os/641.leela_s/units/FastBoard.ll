; ModuleID = 'FastBoard.cpp'
source_filename = "FastBoard.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.boost::array" = type { [2 x i32] }
%"class.boost::array.0" = type { [4 x i32] }
%class.FastBoard = type <{ %"class.boost::array.1", %"class.boost::array.1", i32, i32, i32, %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.3", %"class.boost::array.3", %"class.boost::array.3", %"class.boost::array.1", [2 x i8], %"class.boost::array.4", %"class.boost::array.5", %"class.boost::array", %"class.boost::array", %"class.std::vector", i32, [4 x i8] }>
%"class.boost::array.2" = type { [441 x i32] }
%"class.boost::array.3" = type { [442 x i16] }
%"class.boost::array.1" = type { [441 x i16] }
%"class.boost::array.4" = type { [4 x i32] }
%"class.boost::array.5" = type { [8 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.6" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::allocator.10" = type { i8 }
%"struct.std::_Bit_reference" = type { ptr, i64 }
%"class.std::allocator.7" = type { i8 }
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>
%"struct.std::_Bit_const_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.__gnu_cxx::__normal_iterator.13" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::__cxx11::basic_ostringstream" = type { %"class.std::basic_ostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_ostream.base" = type { ptr }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.std::locale" }
%"class.std::locale" = type { ptr }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.boost::array.20" = type { [3 x i32] }
%"class.boost::array.21" = type { [8 x i32] }
%"class.boost::array.22" = type { [12 x i32] }
%"class.boost::array.23" = type { [20 x i64] }
%"struct.std::pair" = type { i32, i32 }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }
%"class.std::back_insert_iterator" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_equal_to_iter" = type { i8 }

$_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm = comdat any

$_ZN5boost5arrayIiLm2EEixEm = comdat any

$_ZN5boost5arrayIiLm4EEixEm = comdat any

$_ZN5boost5arrayIiLm8EEixEm = comdat any

$_ZN5boost5arrayItLm441EEixEm = comdat any

$_ZN5boost5arrayItLm442EEixEm = comdat any

$_ZNK5boost5arrayIiLm2EEixEm = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIbED2Ev = comdat any

$_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_ = comdat any

$_ZNSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNSt6vectorIbSaIbEE3endEv = comdat any

$_ZNSt6vectorIbSaIbEEaSERKS1_ = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_ = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSt15__new_allocatorIbEC2Ev = comdat any

$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_initializeEm = comdat any

$_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb = comdat any

$_ZNSaImEC2IbEERKSaIT_E = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE = comdat any

$_ZNSt15__new_allocatorImEC2Ev = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorImEC2ERKS0_ = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt18_Bit_iterator_baseC2EPmj = comdat any

$_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm = comdat any

$_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm = comdat any

$_ZNSt13_Bit_iteratorC2EPmj = comdat any

$_ZStplRKSt13_Bit_iteratorl = comdat any

$_ZNSt16allocator_traitsISaImEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorImE8allocateEmPKv = comdat any

$_ZNKSt15__new_allocatorImE11_M_max_sizeEv = comdat any

$_ZNSt13_Bit_iteratorpLEl = comdat any

$_ZNSt18_Bit_iterator_base7_M_incrEl = comdat any

$_ZSt16__fill_bvector_nPmmb = comdat any

$_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv = comdat any

$_ZNSt15__new_allocatorImED2Ev = comdat any

$_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv = comdat any

$_ZNSt15__new_allocatorImE10deallocateEPmm = comdat any

$_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev = comdat any

$_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1St13_Bit_iteratorS_RKb = comdat any

$_ZSt14__fill_bvectorPmjjb = comdat any

$_ZNKSt6vectorIbSaIbEE4sizeEv = comdat any

$_ZNKSt6vectorIbSaIbEE8capacityEv = comdat any

$_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator = comdat any

$_ZNKSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNKSt6vectorIbSaIbEE3endEv = comdat any

$_ZStmiRKSt18_Bit_iterator_baseS1_ = comdat any

$_ZNSt19_Bit_const_iteratorC2EPmj = comdat any

$_ZSt4copyIPmS0_ET0_T_S2_S1_ = comdat any

$_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_ = comdat any

$_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPmET_S1_ = comdat any

$_ZSt12__niter_wrapIPmET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPmET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_ = comdat any

$_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_ = comdat any

$_ZSt12__niter_baseISt13_Bit_iteratorET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_ = comdat any

$_ZNKSt19_Bit_const_iteratordeEv = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt19_Bit_const_iteratorppEv = comdat any

$_ZNSt13_Bit_iteratorppEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZNSt18_Bit_iterator_base10_M_bump_upEv = comdat any

$_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator = comdat any

$_ZNKSt13_Bit_iteratorixEl = comdat any

$_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_ = comdat any

$_ZSt5equalISt19_Bit_const_iteratorS0_EbT_S1_T0_ = comdat any

$_ZSt11__equal_auxISt19_Bit_const_iteratorS0_EbT_S1_T0_ = comdat any

$_ZSt12__equal_aux1ISt19_Bit_const_iteratorS0_EbT_S1_T0_ = comdat any

$_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_ = comdat any

$_ZStneRKSt18_Bit_iterator_baseS1_ = comdat any

$_ZSteqRKSt18_Bit_iterator_baseS1_ = comdat any

$_ZN9FastBoardC2ERKS_ = comdat any

$_ZN9FastBoardD2Ev = comdat any

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

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZNSt6vectorIiSaIiEEaSERKS1_ = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE21_M_default_initializeEm = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIiE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E = comdat any

$_ZSt25__uninitialized_default_nIPimET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ = comdat any

$_ZSt10_ConstructIiJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPiiEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

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

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE7reserveEm = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZN5boost5arrayIiLm24EEixEm = comdat any

$_ZN5boost5arrayIiLm3EEixEm = comdat any

$_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi = comdat any

$_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm = comdat any

$_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv = comdat any

$_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm = comdat any

$_ZSt3minIiERKT_S2_S2_ = comdat any

$_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm = comdat any

$_ZN5boost5arrayIN9FastBoard8square_tELm12EE4sizeEv = comdat any

$_ZN5boost5arrayIyLm20EEixEm = comdat any

$_ZN5boost5arrayIyLm20EE4sizeEv = comdat any

$_ZSt3minIyERKT_S2_S2_ = comdat any

$_ZNSt6vectorIiSaIiEE5clearEv = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv = comdat any

$_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_ = comdat any

$_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_ = comdat any

$_ZN9FastBoard20add_string_libertiesILi2EEEviRN5boost5arrayIiXT_EEERi = comdat any

$_ZN9FastBoardaSERKS_ = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_ = comdat any

$_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_ = comdat any

$_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_ = comdat any

$_ZSt13back_inserterISt6vectorIiSaIiEEESt20back_insert_iteratorIT_ERS4_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_ = comdat any

$_ZSt12__niter_wrapISt20back_insert_iteratorISt6vectorIiSaIiEEEET_RKS5_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPiSt20back_insert_iteratorISt6vectorIiSaIiEEEET1_T0_S7_S6_ = comdat any

$_ZSt12__niter_baseISt20back_insert_iteratorISt6vectorIiSaIiEEEET_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPiSt20back_insert_iteratorISt6vectorIiSaIiEEEET1_T0_S7_S6_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPiSt20back_insert_iteratorISt6vectorIiSaIiEEEEET0_T_SA_S9_ = comdat any

$_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEdeEv = comdat any

$_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi = comdat any

$_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEppEv = comdat any

$_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEC2ERS2_ = comdat any

$_ZNKSt6vectorIiSaIiEE5emptyEv = comdat any

$_ZNSt6vectorIiSaIiEEC2EOS1_ = comdat any

$_ZNSt6vectorIiSaIiEE9push_backEOi = comdat any

$_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_ = comdat any

$_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_ = comdat any

$_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE = comdat any

$_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EOS1_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_ = comdat any

$_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE4backEv = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl = comdat any

$_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt4__lgl = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_ = comdat any

$_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_ = comdat any

$_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

$_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_ = comdat any

$_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_ = comdat any

$_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_ = comdat any

$_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_ = comdat any

$_ZNKSt6vectorIiSaIiEE6cbeginEv = comdat any

$_ZNSt6vectorIiSaIiEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EES5_ = comdat any

$_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_ = comdat any

$_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET1_T0_S8_S7_ = comdat any

$_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_ = comdat any

$_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv = comdat any

$_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_ = comdat any

$_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN9FastBoard9s_eyemaskE = dso_local constant %"class.boost::array" { [2 x i32] [i32 4, i32 64] }, align 4
@_ZN9FastBoard9s_cinvertE = dso_local constant %"class.boost::array.0" { [4 x i32] [i32 1, i32 0, i32 2, i32 3] }, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"X \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"w \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"x \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"b \00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"O \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"o \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c". \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\0A   \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%2d\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"%1d\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"resign\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"tt\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.31 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_FastBoard.cpp, ptr null }]

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #0 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #17
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #4 align 2 !prof !465 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %3 = load i32, ptr %2, align 8, !tbaa !466
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard10get_vertexEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !482 {
  %4 = add nsw i32 %2, 1
  %5 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #17
  %6 = add nsw i32 %5, 2
  %7 = mul nsw i32 %6, %4
  %8 = add nsw i32 %1, 1
  %9 = add nsw i32 %8, %7
  ret i32 %9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !483 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %4) #17
  %6 = load i32, ptr %5, align 4, !tbaa !484
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !486 {
  %3 = getelementptr inbounds [441 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !487 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %5 = sext i32 %1 to i64
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #17
  store i32 %2, ptr %6, align 4, !tbaa !484
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !488 {
  %4 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17
  %5 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4) #17
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard10set_squareEiiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 !prof !489 {
  %5 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17
  tail call void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %5, i32 noundef %3) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !490 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %1, ptr %3, align 8, !tbaa !466
  %4 = add nsw i32 %1, 2
  %5 = mul nsw i32 %4, %4
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  store i32 %5, ptr %6, align 4, !tbaa !491
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !492
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %9 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %8, i64 noundef 0) #17
  store i32 0, ptr %9, align 4, !tbaa !493
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %8, i64 noundef 1) #17
  store i32 0, ptr %10, align 4, !tbaa !493
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %11, i64 noundef 0) #17
  store i32 0, ptr %12, align 4, !tbaa !493
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %11, i64 noundef 1) #17
  store i32 0, ptr %13, align 4, !tbaa !493
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !494
  %15 = sub i32 -2, %1
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef 0) #17
  store i32 %15, ptr %17, align 4, !tbaa !493
  %18 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef 1) #17
  store i32 1, ptr %18, align 4, !tbaa !493
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef 2) #17
  store i32 %4, ptr %19, align 4, !tbaa !493
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %16, i64 noundef 3) #17
  store i32 -1, ptr %20, align 4, !tbaa !493
  %21 = sub i32 -3, %1
  %22 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13
  %23 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 0) #17
  store i32 %21, ptr %23, align 4, !tbaa !493
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 1) #17
  store i32 %15, ptr %24, align 4, !tbaa !493
  %25 = xor i32 %1, -1
  %26 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 2) #17
  store i32 %25, ptr %26, align 4, !tbaa !493
  %27 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 3) #17
  store i32 -1, ptr %27, align 4, !tbaa !493
  %28 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 4) #17
  store i32 1, ptr %28, align 4, !tbaa !493
  %29 = add nsw i32 %1, 1
  %30 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 5) #17
  store i32 %29, ptr %30, align 4, !tbaa !493
  %31 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 6) #17
  store i32 %4, ptr %31, align 4, !tbaa !493
  %32 = add nsw i32 %1, 3
  %33 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %22, i64 noundef 7) #17
  store i32 %32, ptr %33, align 4, !tbaa !493
  %34 = load i32, ptr %6, align 4, !tbaa !491
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40, !prof !495

36:                                               ; preds = %2
  %37 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %38 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %39 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %47

40:                                               ; preds = %47, %2
  %41 = icmp sgt i32 %1, 0
  br i1 %41, label %42, label %61, !prof !495

42:                                               ; preds = %40
  %43 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %44 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %45 = add nsw i32 %1, -1
  %46 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  br label %56

47:                                               ; preds = %36, %47
  %48 = phi i64 [ 0, %36 ], [ %52, %47 ]
  %49 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %37, i64 noundef %48) #17
  store i32 3, ptr %49, align 4, !tbaa !484
  %50 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %38, i64 noundef %48) #17
  store i16 0, ptr %50, align 2, !tbaa !496
  %51 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %39, i64 noundef %48) #17
  store i16 441, ptr %51, align 2, !tbaa !496
  %52 = add nuw nsw i64 %48, 1
  %53 = load i32, ptr %6, align 4, !tbaa !491
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %47, label %40, !prof !498, !llvm.loop !499

56:                                               ; preds = %68, %42
  %57 = phi i32 [ 0, %42 ], [ %69, %68 ]
  %58 = icmp eq i32 %57, 0
  %59 = icmp eq i32 %57, %45
  %60 = select i1 %58, i1 true, i1 %59
  br label %71

61:                                               ; preds = %68, %40
  %62 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %63 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %62, i64 noundef 441) #17
  store i16 441, ptr %63, align 2, !tbaa !496
  %64 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %65 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %64, i64 noundef 441) #17
  store i16 999, ptr %65, align 2, !tbaa !496
  %66 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %67 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %66, i64 noundef 441) #17
  store i16 441, ptr %67, align 2, !tbaa !496
  ret void

68:                                               ; preds = %106
  %69 = add nuw nsw i32 %57, 1
  %70 = icmp eq i32 %69, %1
  br i1 %70, label %61, label %56, !prof !501, !llvm.loop !502

71:                                               ; preds = %56, %106
  %72 = phi i32 [ 0, %56 ], [ %107, %106 ]
  %73 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %57, i32 noundef %72) #17
  %74 = sext i32 %73 to i64
  %75 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %43, i64 noundef %74) #17
  store i32 2, ptr %75, align 4, !tbaa !484
  %76 = load i32, ptr %14, align 4, !tbaa !494
  %77 = trunc i32 %76 to i16
  %78 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %44, i64 noundef %74) #17
  store i16 %77, ptr %78, align 2, !tbaa !496
  %79 = trunc i32 %73 to i16
  %80 = load i32, ptr %14, align 4, !tbaa !494
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr %14, align 4, !tbaa !494
  %82 = sext i32 %80 to i64
  %83 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %82) #17
  store i16 %79, ptr %83, align 2, !tbaa !496
  %84 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %46, i64 noundef %74) #17
  %85 = load i16, ptr %84, align 2, !tbaa !496
  br i1 %60, label %86, label %91, !prof !503

86:                                               ; preds = %71
  %87 = add i16 %85, 17
  store i16 %87, ptr %84, align 2, !tbaa !496
  %88 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %46, i64 noundef %74) #17
  %89 = load i16, ptr %88, align 2, !tbaa !496
  %90 = add i16 %89, 256
  store i16 %90, ptr %88, align 2, !tbaa !496
  br label %93

91:                                               ; preds = %71
  %92 = add i16 %85, 512
  store i16 %92, ptr %84, align 2, !tbaa !496
  br label %93

93:                                               ; preds = %91, %86
  %94 = icmp eq i32 %72, 0
  %95 = icmp eq i32 %72, %45
  %96 = select i1 %94, i1 true, i1 %95
  %97 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %46, i64 noundef %74) #17
  %98 = load i16, ptr %97, align 2, !tbaa !496
  br i1 %96, label %99, label %104, !prof !503

99:                                               ; preds = %93
  %100 = add i16 %98, 17
  store i16 %100, ptr %97, align 2, !tbaa !496
  %101 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %46, i64 noundef %74) #17
  %102 = load i16, ptr %101, align 2, !tbaa !496
  %103 = add i16 %102, 256
  store i16 %103, ptr %101, align 2, !tbaa !496
  br label %106

104:                                              ; preds = %93
  %105 = add i16 %98, 512
  store i16 %105, ptr %97, align 2, !tbaa !496
  br label %106

106:                                              ; preds = %104, %99
  %107 = add nuw nsw i32 %72, 1
  %108 = icmp eq i32 %107, %1
  br i1 %108, label %68, label %71, !prof !504, !llvm.loop !505
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !506 {
  %3 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !507 {
  %3 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !508 {
  %3 = getelementptr inbounds [8 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !509 {
  %3 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !510 {
  %3 = getelementptr inbounds [442 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !511 {
  %4 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) #17, !range !512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %67, !prof !513

6:                                                ; preds = %3
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %10

10:                                               ; preds = %6, %28
  %11 = phi i64 [ 0, %6 ], [ %30, %28 ]
  %12 = phi i8 [ 0, %6 ], [ %29, %28 ]
  %13 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %7, i64 noundef %11) #17
  %14 = load i32, ptr %13, align 4, !tbaa !493
  %15 = add nsw i32 %14, %1
  %16 = sext i32 %15 to i64
  %17 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %16) #17
  %18 = load i16, ptr %17, align 2, !tbaa !496
  %19 = zext i16 %18 to i64
  %20 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %8, i64 noundef %19) #17
  %21 = load i16, ptr %20, align 2, !tbaa !496
  %22 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %15) #17
  %23 = icmp eq i32 %22, %2
  br i1 %23, label %24, label %26, !prof !514

24:                                               ; preds = %10
  %25 = icmp ugt i16 %21, 1
  br i1 %25, label %67, label %28, !prof !515

26:                                               ; preds = %10
  %27 = icmp ult i16 %21, 2
  br i1 %27, label %67, label %28, !prof !516

28:                                               ; preds = %24, %26
  %29 = phi i8 [ %12, %26 ], [ 1, %24 ]
  %30 = add nuw nsw i64 %11, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %10, !prof !517, !llvm.loop !518

32:                                               ; preds = %28
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17
  br label %38

33:                                               ; preds = %58
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17
  %34 = and i8 %29, 1
  %35 = icmp eq i8 %34, 0
  %36 = and i8 %59, 1
  %37 = icmp ne i8 %36, 0
  br i1 %35, label %67, label %63, !prof !519

38:                                               ; preds = %32, %58
  %39 = phi i64 [ 0, %32 ], [ %61, %58 ]
  %40 = phi i8 [ 1, %32 ], [ %60, %58 ]
  %41 = phi i8 [ 1, %32 ], [ %59, %58 ]
  %42 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %7, i64 noundef %39) #17
  %43 = load i32, ptr %42, align 4, !tbaa !493
  %44 = add nsw i32 %43, %1
  %45 = sext i32 %44 to i64
  %46 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %45) #17
  %47 = load i16, ptr %46, align 2, !tbaa !496
  %48 = zext i16 %47 to i64
  %49 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %8, i64 noundef %48) #17
  %50 = load i16, ptr %49, align 2, !tbaa !496
  %51 = icmp eq i16 %50, 0
  %52 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %44) #17
  %53 = icmp eq i32 %52, %2
  br i1 %51, label %54, label %56, !prof !520

54:                                               ; preds = %38
  %55 = select i1 %53, i8 %41, i8 0, !prof !521
  br label %58

56:                                               ; preds = %38
  br i1 %53, label %57, label %58, !prof !522

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %54, %56, %57
  %59 = phi i8 [ %41, %57 ], [ %41, %56 ], [ %55, %54 ]
  %60 = phi i8 [ 0, %57 ], [ %40, %56 ], [ %40, %54 ]
  %61 = add nuw nsw i64 %39, 1
  %62 = icmp eq i64 %61, 4
  br i1 %62, label %33, label %38, !prof !523, !llvm.loop !524

63:                                               ; preds = %33
  %64 = and i8 %60, 1
  %65 = icmp ne i8 %64, 0
  %66 = select i1 %37, i1 %65, i1 false, !prof !525
  br label %67

67:                                               ; preds = %26, %24, %33, %63, %3
  %68 = phi i1 [ false, %3 ], [ %66, %63 ], [ %37, %33 ], [ false, %24 ], [ false, %26 ]
  ret i1 %68
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !526 {
  %3 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 2, i32 noundef %1) #17, !range !512
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !527 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %6 = shl nsw i32 %2, 2
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %9 = trunc i32 %7 to i16
  %10 = add nsw i16 %9, -256
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %14

13:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret void

14:                                               ; preds = %3, %51
  %15 = phi i64 [ 0, %3 ], [ %53, %51 ]
  %16 = phi i32 [ 0, %3 ], [ %52, %51 ]
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %15) #17
  %18 = load i32, ptr %17, align 4, !tbaa !493
  %19 = add nsw i32 %18, %1
  %20 = sext i32 %19 to i64
  %21 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %8, i64 noundef %20) #17
  %22 = load i16, ptr %21, align 2, !tbaa !496
  %23 = add i16 %10, %22
  store i16 %23, ptr %21, align 2, !tbaa !496
  %24 = icmp sgt i32 %16, 0
  br i1 %24, label %25, label %38, !prof !528

25:                                               ; preds = %14
  %26 = zext nneg i32 %16 to i64
  br label %30

27:                                               ; preds = %30
  %28 = add nuw nsw i64 %31, 1
  %29 = icmp eq i64 %28, %26
  br i1 %29, label %38, label %30, !prof !529, !llvm.loop !530

30:                                               ; preds = %25, %27
  %31 = phi i64 [ 0, %25 ], [ %28, %27 ]
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %31) #17
  %33 = load i32, ptr %32, align 4, !tbaa !493
  %34 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %20) #17
  %35 = load i16, ptr %34, align 2, !tbaa !496
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %51, label %27, !prof !531

38:                                               ; preds = %27, %14
  %39 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %20) #17
  %40 = load i16, ptr %39, align 2, !tbaa !496
  %41 = zext i16 %40 to i64
  %42 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %41) #17
  %43 = load i16, ptr %42, align 2, !tbaa !496
  %44 = add i16 %43, -1
  store i16 %44, ptr %42, align 2, !tbaa !496
  %45 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %20) #17
  %46 = load i16, ptr %45, align 2, !tbaa !496
  %47 = zext i16 %46 to i32
  %48 = add nsw i32 %16, 1
  %49 = sext i32 %16 to i64
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %49) #17
  store i32 %47, ptr %50, align 4, !tbaa !493
  br label %51

51:                                               ; preds = %30, %38
  %52 = phi i32 [ %48, %38 ], [ %16, %30 ]
  %53 = add nuw nsw i64 %15, 1
  %54 = icmp eq i64 %53, 4
  br i1 %54, label %13, label %14, !prof !532, !llvm.loop !533
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !534 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %6 = shl nsw i32 %2, 2
  %7 = shl nsw i32 -1, %6
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %9 = trunc i32 %7 to i16
  %10 = add i16 %9, 256
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %14

13:                                               ; preds = %50
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret void

14:                                               ; preds = %3, %50
  %15 = phi i64 [ 0, %3 ], [ %52, %50 ]
  %16 = phi i32 [ 0, %3 ], [ %51, %50 ]
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %15) #17
  %18 = load i32, ptr %17, align 4, !tbaa !493
  %19 = add nsw i32 %18, %1
  %20 = sext i32 %19 to i64
  %21 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %8, i64 noundef %20) #17
  %22 = load i16, ptr %21, align 2, !tbaa !496
  %23 = add i16 %10, %22
  store i16 %23, ptr %21, align 2, !tbaa !496
  %24 = icmp sgt i32 %16, 0
  br i1 %24, label %29, label %37, !prof !535

25:                                               ; preds = %29
  %26 = zext nneg i32 %16 to i64
  %27 = add nuw nsw i64 %30, 1
  %28 = icmp eq i64 %27, %26
  br i1 %28, label %37, label %29, !prof !536, !llvm.loop !537

29:                                               ; preds = %14, %25
  %30 = phi i64 [ %27, %25 ], [ 0, %14 ]
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %30) #17
  %32 = load i32, ptr %31, align 4, !tbaa !493
  %33 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %20) #17
  %34 = load i16, ptr %33, align 2, !tbaa !496
  %35 = zext i16 %34 to i32
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %50, label %25, !prof !538

37:                                               ; preds = %25, %14
  %38 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %20) #17
  %39 = load i16, ptr %38, align 2, !tbaa !496
  %40 = zext i16 %39 to i64
  %41 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %40) #17
  %42 = load i16, ptr %41, align 2, !tbaa !496
  %43 = add i16 %42, 1
  store i16 %43, ptr %41, align 2, !tbaa !496
  %44 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %20) #17
  %45 = load i16, ptr %44, align 2, !tbaa !496
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %16, 1
  %48 = sext i32 %16 to i64
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %48) #17
  store i32 %46, ptr %49, align 4, !tbaa !493
  br label %50

50:                                               ; preds = %29, %37
  %51 = phi i32 [ %47, %37 ], [ %16, %29 ]
  %52 = add nuw nsw i64 %15, 1
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %13, label %14, !prof !539, !llvm.loop !540
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !541 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %5 = sext i32 %2 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = zext i16 %7 to i32
  %9 = shl nsw i32 %1, 2
  %10 = lshr i32 %8, %9
  %11 = and i32 %10, 7
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !542 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %5 = sext i32 %2 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = zext i16 %7 to i32
  %9 = icmp eq i32 %1, 0
  %10 = zext i1 %9 to i64
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) @_ZN9FastBoard9s_eyemaskE, i64 noundef %10) #17
  %12 = load i32, ptr %11, align 4, !tbaa !493
  %13 = and i32 %12, %8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15, !prof !543

15:                                               ; preds = %3
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %18 = add nsw i32 %2, -1
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %19) #17
  %21 = load i16, ptr %20, align 2, !tbaa !496
  %22 = zext i16 %21 to i64
  %23 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %16, i64 noundef %22) #17
  %24 = load i16, ptr %23, align 2, !tbaa !496
  %25 = icmp ult i16 %24, 2
  br i1 %25, label %59, label %26, !prof !544

26:                                               ; preds = %15
  %27 = add nsw i32 %2, 1
  %28 = sext i32 %27 to i64
  %29 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %28) #17
  %30 = load i16, ptr %29, align 2, !tbaa !496
  %31 = zext i16 %30 to i64
  %32 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %16, i64 noundef %31) #17
  %33 = load i16, ptr %32, align 2, !tbaa !496
  %34 = icmp ult i16 %33, 2
  br i1 %34, label %59, label %35, !prof !545

35:                                               ; preds = %26
  %36 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %37 = load i32, ptr %36, align 8, !tbaa !466
  %38 = add i32 %2, 2
  %39 = add i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %40) #17
  %42 = load i16, ptr %41, align 2, !tbaa !496
  %43 = zext i16 %42 to i64
  %44 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %16, i64 noundef %43) #17
  %45 = load i16, ptr %44, align 2, !tbaa !496
  %46 = icmp ult i16 %45, 2
  br i1 %46, label %59, label %47, !prof !546

47:                                               ; preds = %35
  %48 = load i32, ptr %36, align 8, !tbaa !466
  %49 = add i32 %2, -2
  %50 = sub i32 %49, %48
  %51 = sext i32 %50 to i64
  %52 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %51) #17
  %53 = load i16, ptr %52, align 2, !tbaa !496
  %54 = zext i16 %53 to i64
  %55 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %16, i64 noundef %54) #17
  %56 = load i16, ptr %55, align 2, !tbaa !496
  %57 = icmp ugt i16 %56, 1
  %58 = zext i1 %57 to i32
  br label %59

59:                                               ; preds = %47, %35, %26, %15, %3
  %60 = phi i32 [ 0, %3 ], [ 0, %15 ], [ 0, %26 ], [ 0, %35 ], [ %58, %47 ]
  ret i32 %60
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !547 {
  %3 = getelementptr inbounds [2 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !548 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %4) #17
  %6 = load i32, ptr %5, align 4, !tbaa !484
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %9 = sext i32 %6 to i64
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %13

13:                                               ; preds = %13, %2
  %14 = phi i32 [ 0, %2 ], [ %31, %13 ]
  %15 = phi i32 [ %1, %2 ], [ %34, %13 ]
  %16 = sext i32 %15 to i64
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %3, i64 noundef %16) #17
  store i32 2, ptr %17, align 4, !tbaa !484
  %18 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %7, i64 noundef %16) #17
  store i16 441, ptr %18, align 2, !tbaa !496
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %8, i64 noundef %9) #17
  %20 = load i32, ptr %19, align 4, !tbaa !493
  %21 = add nsw i32 %20, -1
  store i32 %21, ptr %19, align 4, !tbaa !493
  tail call void @_ZN9FastBoard16remove_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %15, i32 noundef %6) #17
  %22 = load i32, ptr %10, align 4, !tbaa !494
  %23 = trunc i32 %22 to i16
  %24 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %11, i64 noundef %16) #17
  store i16 %23, ptr %24, align 2, !tbaa !496
  %25 = trunc i32 %15 to i16
  %26 = load i32, ptr %10, align 4, !tbaa !494
  %27 = sext i32 %26 to i64
  %28 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %27) #17
  store i16 %25, ptr %28, align 2, !tbaa !496
  %29 = load i32, ptr %10, align 4, !tbaa !494
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %10, align 4, !tbaa !494
  %31 = add nuw nsw i32 %14, 1
  %32 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %16) #17
  %33 = load i16, ptr %32, align 2, !tbaa !496
  %34 = zext i16 %33 to i32
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %13, !prof !549, !llvm.loop !550

36:                                               ; preds = %13
  ret i32 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.6") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !551 {
  %4 = alloca %"class.std::allocator.10", align 1
  %5 = alloca %"class.std::vector.6", align 8
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %"struct.std::_Bit_reference", align 8
  %10 = alloca %"struct.std::_Bit_reference", align 8
  %11 = alloca %"struct.std::_Bit_reference", align 8
  %12 = alloca %"struct.std::_Bit_reference", align 8
  %13 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !491
  %15 = sext i32 %14 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %15, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
          to label %16 unwind label %52

16:                                               ; preds = %3
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  %17 = load i32, ptr %13, align 4, !tbaa !491
  %18 = sext i32 %17 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %5, i64 noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %19 unwind label %54

19:                                               ; preds = %16
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  %20 = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %21 = extractvalue { ptr, i32 } %20, 0
  %22 = extractvalue { ptr, i32 } %20, 1
  %23 = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %24 = extractvalue { ptr, i32 } %23, 0
  %25 = extractvalue { ptr, i32 } %23, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  store i8 0, ptr %7, align 1, !tbaa !552
  invoke void @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %21, i32 %22, ptr %24, i32 %25, ptr noundef nonnull align 1 dereferenceable(1) %7) #17
          to label %26 unwind label %56

26:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  %27 = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #19
  %28 = extractvalue { ptr, i32 } %27, 0
  %29 = extractvalue { ptr, i32 } %27, 1
  %30 = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #19
  %31 = extractvalue { ptr, i32 } %30, 0
  %32 = extractvalue { ptr, i32 } %30, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #18
  store i8 0, ptr %8, align 1, !tbaa !552
  invoke void @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %28, i32 %29, ptr %31, i32 %32, ptr noundef nonnull align 1 dereferenceable(1) %8) #17
          to label %33 unwind label %58

33:                                               ; preds = %26
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #18
  %34 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %35 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %36 = getelementptr inbounds { ptr, i64 }, ptr %11, i64 0, i32 1
  %37 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %38 = getelementptr inbounds { ptr, i64 }, ptr %12, i64 0, i32 1
  %39 = getelementptr inbounds { ptr, i64 }, ptr %9, i64 0, i32 1
  %40 = getelementptr inbounds { ptr, i64 }, ptr %10, i64 0, i32 1
  br label %41

41:                                               ; preds = %146, %33
  %42 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %0) #17
          to label %43 unwind label %60

43:                                               ; preds = %41
  %44 = load i32, ptr %34, align 8, !tbaa !466
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %50, !prof !554

46:                                               ; preds = %43, %62
  %47 = phi i32 [ %63, %62 ], [ %44, %43 ]
  %48 = phi i32 [ %64, %62 ], [ 0, %43 ]
  %49 = icmp sgt i32 %47, 0
  br i1 %49, label %66, label %62, !prof !555

50:                                               ; preds = %62, %43
  %51 = invoke noundef zeroext i1 @_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %0) #17
          to label %146 unwind label %60

52:                                               ; preds = %3
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  br label %152

54:                                               ; preds = %16
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  br label %150

56:                                               ; preds = %19
  %57 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  br label %148

58:                                               ; preds = %26
  %59 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #18
  br label %148

60:                                               ; preds = %50, %41
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %148

62:                                               ; preds = %142, %46
  %63 = phi i32 [ %47, %46 ], [ %144, %142 ]
  %64 = add nuw nsw i32 %48, 1
  %65 = icmp slt i32 %64, %63
  br i1 %65, label %46, label %50, !prof !556, !llvm.loop !557

66:                                               ; preds = %46, %142
  %67 = phi i32 [ %143, %142 ], [ 0, %46 ]
  %68 = call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %48, i32 noundef %67) #17
  %69 = sext i32 %68 to i64
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %35, i64 noundef %69) #17
  %71 = load i32, ptr %70, align 4, !tbaa !484
  %72 = icmp eq i32 %71, %2
  br i1 %72, label %73, label %105, !prof !558

73:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #18
  %74 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %69) #17
          to label %75 unwind label %79

75:                                               ; preds = %73
  %76 = extractvalue { ptr, i64 } %74, 0
  store ptr %76, ptr %9, align 8
  %77 = extractvalue { ptr, i64 } %74, 1
  store i64 %77, ptr %39, align 8
  %78 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %81

79:                                               ; preds = %73
  %80 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #18
  br label %148

81:                                               ; preds = %75, %102
  %82 = phi i64 [ 0, %75 ], [ %103, %102 ]
  %83 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %37, i64 noundef %82) #17
  %84 = load i32, ptr %83, align 4, !tbaa !493
  %85 = add nsw i32 %84, %68
  %86 = sext i32 %85 to i64
  %87 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %35, i64 noundef %86) #17
  %88 = load i32, ptr %87, align 4, !tbaa !484
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %102, !prof !559

90:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %37, i64 noundef %82) #17
  %92 = load i32, ptr %91, align 4, !tbaa !493
  %93 = add nsw i32 %92, %68
  %94 = sext i32 %93 to i64
  %95 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %94) #17
          to label %96 unwind label %100

96:                                               ; preds = %90
  %97 = extractvalue { ptr, i64 } %95, 0
  store ptr %97, ptr %10, align 8
  %98 = extractvalue { ptr, i64 } %95, 1
  store i64 %98, ptr %40, align 8
  %99 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  br label %102

100:                                              ; preds = %90
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  br label %148

102:                                              ; preds = %81, %96
  %103 = add nuw nsw i64 %82, 1
  %104 = icmp eq i64 %103, 4
  br i1 %104, label %142, label %81, !prof !560, !llvm.loop !561

105:                                              ; preds = %66
  %106 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %35, i64 noundef %69) #17
  %107 = load i32, ptr %106, align 4, !tbaa !484
  %108 = icmp eq i32 %107, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #18
  br i1 %108, label %109, label %141, !prof !562

109:                                              ; preds = %105
  %110 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %69) #17
          to label %111 unwind label %115

111:                                              ; preds = %109
  %112 = extractvalue { ptr, i64 } %110, 0
  store ptr %112, ptr %11, align 8
  %113 = extractvalue { ptr, i64 } %110, 1
  store i64 %113, ptr %36, align 8
  %114 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br i1 %114, label %117, label %142, !prof !563

115:                                              ; preds = %109
  %116 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %148

117:                                              ; preds = %111, %138
  %118 = phi i64 [ %139, %138 ], [ 0, %111 ]
  %119 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %37, i64 noundef %118) #17
  %120 = load i32, ptr %119, align 4, !tbaa !493
  %121 = add nsw i32 %120, %68
  %122 = sext i32 %121 to i64
  %123 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %35, i64 noundef %122) #17
  %124 = load i32, ptr %123, align 4, !tbaa !484
  %125 = icmp eq i32 %124, 2
  br i1 %125, label %126, label %138, !prof !564

126:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #18
  %127 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %37, i64 noundef %118) #17
  %128 = load i32, ptr %127, align 4, !tbaa !493
  %129 = add nsw i32 %128, %68
  %130 = sext i32 %129 to i64
  %131 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %130) #17
          to label %132 unwind label %136

132:                                              ; preds = %126
  %133 = extractvalue { ptr, i64 } %131, 0
  store ptr %133, ptr %12, align 8
  %134 = extractvalue { ptr, i64 } %131, 1
  store i64 %134, ptr %38, align 8
  %135 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %12, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  br label %138

136:                                              ; preds = %126
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #18
  br label %148

138:                                              ; preds = %117, %132
  %139 = add nuw nsw i64 %118, 1
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %142, label %117, !prof !565, !llvm.loop !566

141:                                              ; preds = %105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #18
  br label %142

142:                                              ; preds = %138, %102, %111, %141
  %143 = add nuw nsw i32 %67, 1
  %144 = load i32, ptr %34, align 8, !tbaa !466
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %66, label %62, !prof !567, !llvm.loop !568

146:                                              ; preds = %50
  br i1 %51, label %41, label %147, !prof !569, !llvm.loop !570

147:                                              ; preds = %146
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  ret void

148:                                              ; preds = %79, %100, %115, %136, %60, %58, %56
  %149 = phi { ptr, i32 } [ %61, %60 ], [ %59, %58 ], [ %57, %56 ], [ %101, %100 ], [ %80, %79 ], [ %137, %136 ], [ %116, %115 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #19
  br label %150

150:                                              ; preds = %148, %54
  %151 = phi { ptr, i32 } [ %149, %148 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  br label %152

152:                                              ; preds = %150, %52
  %153 = phi { ptr, i32 } [ %151, %150 ], [ %53, %52 ]
  resume { ptr, i32 } %153
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !571 {
  tail call void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 !prof !571 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #18
  store i8 0, ptr %4, align 1, !tbaa !552
  call void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !571 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #7 comdat !prof !571 {
  tail call void @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !572 {
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, i32 noundef 0) #17
  %4 = load ptr, ptr %2, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = insertvalue { ptr, i32 } %5, i32 %7, 1
  ret { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !571 {
  %2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %3, 0
  %7 = insertvalue { ptr, i32 } %6, i32 %5, 1
  ret { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(40) ptr @_ZNSt6vectorIbSaIbEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 comdat align 2 !prof !575 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %27, label %5, !prof !576

5:                                                ; preds = %2
  %6 = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %8 = icmp ugt i64 %6, %7
  br i1 %8, label %9, label %11, !prof !576

9:                                                ; preds = %5
  tail call void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
  %10 = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  tail call void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %10) #17
  br label %11

11:                                               ; preds = %9, %5
  %12 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  %15 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  %18 = tail call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %19 = extractvalue { ptr, i32 } %18, 0
  store ptr %19, ptr %3, align 8
  %20 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %21 = extractvalue { ptr, i32 } %18, 1
  store i32 %21, ptr %20, align 8
  %22 = tail call { ptr, i32 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %13, i32 %14, ptr %16, i32 %17, ptr noundef nonnull byval(%"struct.std::_Bit_iterator") align 8 %3) #17
  %23 = extractvalue { ptr, i32 } %22, 0
  %24 = extractvalue { ptr, i32 } %22, 1
  %25 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr %23, ptr %25, align 8
  %26 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %24, ptr %26, align 8
  br label %27

27:                                               ; preds = %2, %11
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !577 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = tail call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !578 {
  %3 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !579
  br i1 %1, label %5, label %9, !prof !582

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !583
  %7 = load i64, ptr %6, align 8, !tbaa !584
  %8 = or i64 %7, %4
  store i64 %8, ptr %6, align 8, !tbaa !584
  br label %14

9:                                                ; preds = %2
  %10 = xor i64 %4, -1
  %11 = load ptr, ptr %0, align 8, !tbaa !583
  %12 = load i64, ptr %11, align 8, !tbaa !584
  %13 = and i64 %12, %10
  store i64 %13, ptr %11, align 8, !tbaa !584
  br label %14

14:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !585 {
  %2 = load ptr, ptr %0, align 8, !tbaa !583
  %3 = load i64, ptr %2, align 8, !tbaa !584
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !579
  %6 = and i64 %5, %3
  %7 = icmp ne i64 %6, 0
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 comdat !prof !575 {
  %3 = tail call noundef zeroext i1 @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) #17
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !571 {
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #17
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !571 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !571 {
  %3 = alloca %"class.std::allocator.7", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  call void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !571 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %15, label %5, !prof !586

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #17
  %7 = tail call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %1) #17
  %8 = getelementptr inbounds i64, ptr %6, i64 %7
  %9 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !587
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %6, i32 noundef 0) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %10 = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #17
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %12, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  br label %15

15:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #6 comdat align 2 !prof !571 {
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !586

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  tail call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %3, i64 noundef %10, i1 noundef zeroext %1) #19
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !571 {
  tail call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !571 {
  tail call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !571 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !571 {
  tail call void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !571 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #7 comdat align 2 !prof !590 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef null, i32 noundef 0) #17
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !prof !591 {
  store ptr %1, ptr %0, align 8, !tbaa !573
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !592
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !571 {
  %3 = tail call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %1) #17
  %4 = tail call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %0) local_unnamed_addr #6 comdat align 2 !prof !593 {
  %2 = add i64 %0, 63
  %3 = lshr i64 %2, 6
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !prof !594 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #7 comdat !prof !595 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %4 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #17
  %5 = load ptr, ptr %3, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %5, 0
  %7 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } %6, i32 %8, 1
  ret { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !571 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !571 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !596

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
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !571 {
  ret i64 1152921504606846975
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #10

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #10

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !595 {
  tail call void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !595 {
  %3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !592
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, %1
  %7 = sdiv i64 %6, 64
  %8 = load ptr, ptr %0, align 8, !tbaa !573
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = srem i64 %6, 64
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15, !prof !597

12:                                               ; preds = %2
  %13 = add nsw i64 %10, 64
  %14 = getelementptr inbounds i64, ptr %9, i64 -1
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %9, %2 ]
  %17 = phi i64 [ %13, %12 ], [ %10, %2 ]
  store ptr %16, ptr %0, align 8, !tbaa !573
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %3, align 8, !tbaa !592
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt16__fill_bvector_nPmmb(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat !prof !593 {
  %4 = sext i1 %2 to i8
  %5 = shl i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 %4, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !598 {
  %2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !587
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 !prof !571 {
  %2 = load ptr, ptr %0, align 8, !tbaa !573
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !586

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %6 = load ptr, ptr %0, align 8, !tbaa !573
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !587
  %13 = sub nsw i64 0, %10
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  tail call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %14, i64 noundef %10) #17
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  br label %15

15:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !593 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !571 {
  tail call void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 !prof !571 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !571 {
  tail call void @_ZdlPv(ptr noundef %1) #23
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !593 {
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #17
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #17
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !587
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #7 comdat !prof !571 {
  tail call void @_ZSt9__fill_a1St13_Bit_iteratorS_RKb(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1St13_Bit_iteratorS_RKb(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #6 comdat !prof !571 {
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %25, label %7, !prof !586

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9, !prof !599

9:                                                ; preds = %7
  %10 = getelementptr inbounds i64, ptr %0, i64 1
  %11 = load i8, ptr %4, align 1, !tbaa !552, !range !600, !noundef !601
  %12 = icmp ne i8 %11, 0
  tail call void @_ZSt14__fill_bvectorPmjjb(ptr noundef %0, i32 noundef %1, i32 noundef 64, i1 noundef zeroext %12) #19
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %10, %9 ], [ %0, %7 ]
  %15 = ptrtoint ptr %2 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = load i8, ptr %4, align 1, !tbaa !552, !range !600, !noundef !601
  %20 = icmp ne i8 %19, 0
  tail call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %14, i64 noundef %18, i1 noundef zeroext %20) #19
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %30, label %22, !prof !586

22:                                               ; preds = %13
  %23 = load i8, ptr %4, align 1, !tbaa !552, !range !600, !noundef !601
  %24 = icmp ne i8 %23, 0
  tail call void @_ZSt14__fill_bvectorPmjjb(ptr noundef %2, i32 noundef 0, i32 noundef %3, i1 noundef zeroext %24) #19
  br label %30

25:                                               ; preds = %5
  %26 = icmp eq i32 %1, %3
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, ptr %4, align 1, !tbaa !552, !range !600, !noundef !601
  %29 = icmp ne i8 %28, 0
  tail call void @_ZSt14__fill_bvectorPmjjb(ptr noundef %0, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %29) #19
  br label %30

30:                                               ; preds = %13, %22, %25, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt14__fill_bvectorPmjjb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 comdat !prof !571 {
  %5 = zext nneg i32 %1 to i64
  %6 = shl nsw i64 -1, %5
  %7 = sub i32 64, %2
  %8 = zext nneg i32 %7 to i64
  %9 = lshr i64 -1, %8
  %10 = and i64 %9, %6
  br i1 %3, label %11, label %14, !prof !586

11:                                               ; preds = %4
  %12 = load i64, ptr %0, align 8, !tbaa !584
  %13 = or i64 %12, %10
  br label %18

14:                                               ; preds = %4
  %15 = xor i64 %10, -1
  %16 = load i64, ptr %0, align 8, !tbaa !584
  %17 = and i64 %16, %15
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i64 [ %17, %14 ], [ %13, %11 ]
  store i64 %19, ptr %0, align 8, !tbaa !584
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !602 {
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %4 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %2, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %8 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %9 = extractvalue { ptr, i32 } %8, 0
  store ptr %9, ptr %3, align 8
  %10 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %11 = extractvalue { ptr, i32 } %8, 1
  store i32 %11, ptr %10, align 8
  %12 = call noundef i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i64 %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIbSaIbEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !575 {
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = alloca %"struct.std::_Bit_const_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %4 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %4, i32 noundef 0) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %5 = call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %6 = extractvalue { ptr, i32 } %5, 0
  store ptr %6, ptr %3, align 8
  %7 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %8 = extractvalue { ptr, i32 } %5, 1
  store i32 %8, ptr %7, align 8
  %9 = call noundef i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i64 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, ptr %3, i32 %4, ptr noundef byval(%"struct.std::_Bit_iterator") align 8 %5) local_unnamed_addr #7 comdat align 2 !prof !575 {
  %7 = alloca %"struct.std::_Bit_const_iterator", align 8
  %8 = alloca %"struct.std::_Bit_iterator", align 8
  %9 = load ptr, ptr %5, align 8, !tbaa !573
  %10 = tail call noundef ptr @_ZSt4copyIPmS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef %3, ptr noundef %9) #17
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef %3, i32 noundef 0) #17
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef %10, i32 noundef 0) #17
  %11 = load ptr, ptr %7, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %7, i64 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = load ptr, ptr %8, align 8
  %15 = getelementptr inbounds { ptr, i32 }, ptr %8, i64 0, i32 1
  %16 = load i32, ptr %15, align 8
  %17 = call { ptr, i32 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(ptr %11, i32 %13, ptr %3, i32 %4, ptr %14, i32 %16) #17
  ret { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !603 {
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  call void @_ZNSt19_Bit_const_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, i32 noundef 0) #17
  %4 = load ptr, ptr %2, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = insertvalue { ptr, i32 } %5, i32 %7, 1
  ret { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !604 {
  %2 = alloca %"struct.std::_Bit_const_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef nonnull align 8 dereferenceable(12) %3) #17
  %4 = load ptr, ptr %2, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = insertvalue { ptr, i32 } %5, i32 %7, 1
  ret { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #6 comdat !prof !604 {
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  %4 = load ptr, ptr %1, align 8, !tbaa !573
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = shl nsw i64 %7, 3
  %9 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !592
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !592
  %15 = zext i32 %14 to i64
  %16 = sub i64 %12, %15
  ret i64 %16
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt19_Bit_const_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 comdat align 2 !prof !605 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPmS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !575 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPmET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPmET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = tail call { ptr, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(ptr %0, i32 %1) #17
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = tail call { ptr, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(ptr %2, i32 %3) #17
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = tail call { ptr, i32 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(ptr %8, i32 %9, ptr %11, i32 %12, ptr %4, i32 %5) #17
  ret { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !575 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !606
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPmET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPmET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPmET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPmET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPmET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !607 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPmET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !575 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !575 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPmET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !602 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !575 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !575 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !576

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = alloca %"struct.std::_Bit_iterator", align 8
  store ptr %4, ptr %7, align 8
  %8 = getelementptr inbounds { ptr, i32 }, ptr %7, i64 0, i32 1
  store i32 %5, ptr %8, align 8
  %9 = tail call { ptr, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(ptr %0, i32 %1) #19
  %10 = extractvalue { ptr, i32 } %9, 0
  %11 = extractvalue { ptr, i32 } %9, 1
  %12 = tail call { ptr, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(ptr %2, i32 %3) #19
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = extractvalue { ptr, i32 } %12, 1
  %15 = tail call { ptr, i32 } @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_(ptr %4, i32 %5) #19
  %16 = extractvalue { ptr, i32 } %15, 0
  %17 = extractvalue { ptr, i32 } %15, 1
  %18 = tail call { ptr, i32 } @_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(ptr %10, i32 %11, ptr %13, i32 %14, ptr %16, i32 %17) #17
  %19 = extractvalue { ptr, i32 } %18, 0
  %20 = extractvalue { ptr, i32 } %18, 1
  %21 = call { ptr, i32 } @_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr %19, i32 %20) #17
  ret { ptr, i32 } %21
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_(ptr %0, i32 %1) local_unnamed_addr #6 comdat !prof !607 {
  %3 = insertvalue { ptr, i32 } poison, ptr %0, 0
  %4 = insertvalue { ptr, i32 } %3, i32 %1, 1
  ret { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr %1, i32 %2) local_unnamed_addr #6 comdat !prof !575 {
  %4 = insertvalue { ptr, i32 } poison, ptr %1, 0
  %5 = insertvalue { ptr, i32 } %4, i32 %2, 1
  ret { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = tail call { ptr, i32 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) #17
  ret { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(ptr %0, i32 %1) local_unnamed_addr #6 comdat !prof !604 {
  %3 = insertvalue { ptr, i32 } poison, ptr %0, 0
  %4 = insertvalue { ptr, i32 } %3, i32 %1, 1
  ret { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_(ptr %0, i32 %1) local_unnamed_addr #6 comdat !prof !575 {
  %3 = insertvalue { ptr, i32 } poison, ptr %0, 0
  %4 = insertvalue { ptr, i32 } %3, i32 %1, 1
  ret { ptr, i32 } %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = tail call { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) #17
  ret { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat align 2 !prof !575 {
  %7 = alloca %"struct.std::_Bit_const_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_iterator", align 8
  %10 = alloca %"struct.std::_Bit_reference", align 8
  store ptr %0, ptr %7, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %7, i64 0, i32 1
  store i32 %1, ptr %11, align 8
  store ptr %2, ptr %8, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %8, i64 0, i32 1
  store i32 %3, ptr %12, align 8
  store ptr %4, ptr %9, align 8
  %13 = getelementptr inbounds { ptr, i32 }, ptr %9, i64 0, i32 1
  store i32 %5, ptr %13, align 8
  %14 = call noundef i64 @_ZStmiRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %7) #17
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %21, !prof !554

16:                                               ; preds = %6
  %17 = getelementptr inbounds { ptr, i64 }, ptr %10, i64 0, i32 1
  br label %26

18:                                               ; preds = %26
  %19 = load ptr, ptr %9, align 8
  %20 = load i32, ptr %13, align 8
  br label %21

21:                                               ; preds = %18, %6
  %22 = phi i32 [ %20, %18 ], [ %5, %6 ]
  %23 = phi ptr [ %19, %18 ], [ %4, %6 ]
  %24 = insertvalue { ptr, i32 } poison, ptr %23, 0
  %25 = insertvalue { ptr, i32 } %24, i32 %22, 1
  ret { ptr, i32 } %25

26:                                               ; preds = %16, %26
  %27 = phi i64 [ %14, %16 ], [ %35, %26 ]
  %28 = call noundef zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #18
  %29 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #17
  %30 = extractvalue { ptr, i64 } %29, 0
  store ptr %30, ptr %10, align 8
  %31 = extractvalue { ptr, i64 } %29, 1
  store i64 %31, ptr %17, align 8
  %32 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext %28) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #18
  %33 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt19_Bit_const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #17
  %34 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #17
  %35 = add nsw i64 %27, -1
  %36 = icmp ugt i64 %27, 1
  br i1 %36, label %26, label %18, !prof !608, !llvm.loop !609
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 !prof !610 {
  %2 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !592
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw i64 1, %6
  call void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i64 noundef %7) #17
  %8 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #18
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 !prof !611 {
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !592
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw i64 1, %6
  call void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i64 noundef %7) #17
  %8 = load ptr, ptr %2, align 8
  %9 = insertvalue { ptr, i64 } poison, ptr %8, 0
  %10 = getelementptr inbounds { ptr, i64 }, ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = insertvalue { ptr, i64 } %9, i64 %11, 1
  ret { ptr, i64 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt19_Bit_const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #7 comdat align 2 !prof !612 {
  tail call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 !prof !613 {
  tail call void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !614 {
  store ptr %1, ptr %0, align 8, !tbaa !583
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !579
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base10_M_bump_upEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #6 comdat align 2 !prof !615 {
  %2 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !592
  %4 = add i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !592
  %5 = icmp eq i32 %3, 63
  br i1 %5, label %6, label %9, !prof !616

6:                                                ; preds = %1
  store i32 0, ptr %2, align 8, !tbaa !592
  %7 = load ptr, ptr %0, align 8, !tbaa !573
  %8 = getelementptr inbounds i64, ptr %7, i64 1
  store ptr %8, ptr %0, align 8, !tbaa !573
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) unnamed_addr #6 comdat align 2 !prof !604 {
  %3 = load ptr, ptr %1, align 8, !tbaa !573
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !592
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %3, i32 noundef %5) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !577 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #18
  %4 = tail call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #17
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #18
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #7 comdat !prof !575 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %4 = tail call noundef i64 @_ZNKSt6vectorIbSaIbEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %17, !prof !617

6:                                                ; preds = %2
  %7 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = tail call { ptr, i32 } @_ZNKSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #19
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  %16 = tail call noundef zeroext i1 @_ZSt5equalISt19_Bit_const_iteratorS0_EbT_S1_T0_(ptr %8, i32 %9, ptr %11, i32 %12, ptr %14, i32 %15) #17
  br label %17

17:                                               ; preds = %6, %2
  %18 = phi i1 [ false, %2 ], [ %16, %6 ]
  ret i1 %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt5equalISt19_Bit_const_iteratorS0_EbT_S1_T0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = tail call noundef zeroext i1 @_ZSt11__equal_auxISt19_Bit_const_iteratorS0_EbT_S1_T0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) #17
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt11__equal_auxISt19_Bit_const_iteratorS0_EbT_S1_T0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = tail call { ptr, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(ptr %0, i32 %1) #19
  %8 = extractvalue { ptr, i32 } %7, 0
  %9 = extractvalue { ptr, i32 } %7, 1
  %10 = tail call { ptr, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(ptr %2, i32 %3) #19
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = tail call { ptr, i32 } @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_(ptr %4, i32 %5) #19
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  %16 = tail call noundef zeroext i1 @_ZSt12__equal_aux1ISt19_Bit_const_iteratorS0_EbT_S1_T0_(ptr %8, i32 %9, ptr %11, i32 %12, ptr %14, i32 %15) #17
  ret i1 %16
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSt12__equal_aux1ISt19_Bit_const_iteratorS0_EbT_S1_T0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat !prof !575 {
  %7 = tail call noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) #17
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr %4, i32 %5) local_unnamed_addr #7 comdat align 2 !prof !575 {
  %7 = alloca %"struct.std::_Bit_const_iterator", align 8
  %8 = alloca %"struct.std::_Bit_const_iterator", align 8
  %9 = alloca %"struct.std::_Bit_const_iterator", align 8
  store ptr %0, ptr %7, align 8
  %10 = getelementptr inbounds { ptr, i32 }, ptr %7, i64 0, i32 1
  store i32 %1, ptr %10, align 8
  store ptr %2, ptr %8, align 8
  %11 = getelementptr inbounds { ptr, i32 }, ptr %8, i64 0, i32 1
  store i32 %3, ptr %11, align 8
  store ptr %4, ptr %9, align 8
  %12 = getelementptr inbounds { ptr, i32 }, ptr %9, i64 0, i32 1
  store i32 %5, ptr %12, align 8
  %13 = call noundef zeroext i1 @_ZStneRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8) #17
  br i1 %13, label %14, label %24, !prof !618

14:                                               ; preds = %6, %18
  %15 = call noundef zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #17
  %16 = call noundef zeroext i1 @_ZNKSt19_Bit_const_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #17
  %17 = xor i1 %15, %16
  br i1 %17, label %22, label %18, !prof !619

18:                                               ; preds = %14
  %19 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt19_Bit_const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(12) %7) #17
  %20 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt19_Bit_const_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(12) %9) #17
  %21 = call noundef zeroext i1 @_ZStneRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8) #17
  br i1 %21, label %14, label %22, !prof !620, !llvm.loop !621

22:                                               ; preds = %18, %14
  %23 = xor i1 %17, true
  br label %24

24:                                               ; preds = %22, %6
  %25 = phi i1 [ true, %6 ], [ %23, %22 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #7 comdat !prof !622 {
  %3 = tail call noundef zeroext i1 @_ZSteqRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) #17
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqRKSt18_Bit_iterator_baseS1_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #6 comdat !prof !622 {
  %3 = load ptr, ptr %0, align 8, !tbaa !573
  %4 = load ptr, ptr %1, align 8, !tbaa !573
  %5 = icmp eq ptr %3, %4
  %6 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %7, %9
  %11 = select i1 %5, i1 %10, i1 false, !prof !623
  ret i1 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @_ZN9FastBoard21percentual_area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #7 align 2 !prof !624 {
  %3 = tail call noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1) #17
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !466
  %6 = mul nsw i32 %5, %5
  %7 = sitofp i32 %6 to float
  %8 = fdiv float %3, %7
  ret float %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !625 {
  %3 = alloca %"class.std::vector.6", align 8
  %4 = alloca %"class.std::vector.6", align 8
  %5 = alloca %"struct.std::_Bit_reference", align 8
  %6 = alloca %"struct.std::_Bit_reference", align 8
  %7 = alloca %"struct.std::_Bit_reference", align 8
  %8 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 1) #17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  invoke void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.6") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0) #17
          to label %9 unwind label %26

9:                                                ; preds = %2
  %10 = fneg float %1
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %12 = load i32, ptr %11, align 8, !tbaa !466
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %24, !prof !626

14:                                               ; preds = %9
  %15 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0, i32 1
  %16 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1
  %17 = getelementptr inbounds { ptr, i64 }, ptr %7, i64 0, i32 1
  %18 = getelementptr inbounds { ptr, i64 }, ptr %8, i64 0, i32 1
  br label %19

19:                                               ; preds = %14, %28
  %20 = phi i32 [ %12, %14 ], [ %29, %28 ]
  %21 = phi i32 [ 0, %14 ], [ %31, %28 ]
  %22 = phi float [ %10, %14 ], [ %30, %28 ]
  %23 = icmp sgt i32 %20, 0
  br i1 %23, label %33, label %28, !prof !627

24:                                               ; preds = %28, %9
  %25 = phi float [ %10, %9 ], [ %30, %28 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  ret float %25

26:                                               ; preds = %2
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %86

28:                                               ; preds = %79, %19
  %29 = phi i32 [ %20, %19 ], [ %82, %79 ]
  %30 = phi float [ %22, %19 ], [ %80, %79 ]
  %31 = add nuw nsw i32 %21, 1
  %32 = icmp slt i32 %31, %29
  br i1 %32, label %19, label %24, !prof !628, !llvm.loop !629

33:                                               ; preds = %19, %79
  %34 = phi i32 [ %81, %79 ], [ 0, %19 ]
  %35 = phi float [ %80, %79 ], [ %22, %19 ]
  %36 = call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21, i32 noundef %34) #17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %37 = sext i32 %36 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %38 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %37) #17
          to label %39 unwind label %51

39:                                               ; preds = %33
  %40 = extractvalue { ptr, i64 } %38, 0
  store ptr %40, ptr %5, align 8
  %41 = extractvalue { ptr, i64 } %38, 1
  store i64 %41, ptr %15, align 8
  %42 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #19
  br i1 %42, label %43, label %57, !prof !630

43:                                               ; preds = %39
  %44 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %37) #17
          to label %45 unwind label %53

45:                                               ; preds = %43
  %46 = extractvalue { ptr, i64 } %44, 0
  store ptr %46, ptr %6, align 8
  %47 = extractvalue { ptr, i64 } %44, 1
  store i64 %47, ptr %16, align 8
  %48 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br i1 %48, label %58, label %49, !prof !631

49:                                               ; preds = %45
  %50 = fadd float %35, -1.000000e+00
  br label %79

51:                                               ; preds = %33
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %55

53:                                               ; preds = %43
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %54, %53 ], [ %52, %51 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %84

57:                                               ; preds = %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %58

58:                                               ; preds = %57, %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  %59 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %37) #17
          to label %60 unwind label %72

60:                                               ; preds = %58
  %61 = extractvalue { ptr, i64 } %59, 0
  store ptr %61, ptr %7, align 8
  %62 = extractvalue { ptr, i64 } %59, 1
  store i64 %62, ptr %17, align 8
  %63 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  br i1 %63, label %64, label %78, !prof !632

64:                                               ; preds = %60
  %65 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %37) #17
          to label %66 unwind label %74

66:                                               ; preds = %64
  %67 = extractvalue { ptr, i64 } %65, 0
  store ptr %67, ptr %8, align 8
  %68 = extractvalue { ptr, i64 } %65, 1
  store i64 %68, ptr %18, align 8
  %69 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br i1 %69, label %79, label %70, !prof !633

70:                                               ; preds = %66
  %71 = fadd float %35, 1.000000e+00
  br label %79

72:                                               ; preds = %58
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %76

74:                                               ; preds = %64
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %73, %72 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %84

78:                                               ; preds = %60
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %79

79:                                               ; preds = %66, %70, %78, %49
  %80 = phi float [ %50, %49 ], [ %71, %70 ], [ %35, %66 ], [ %35, %78 ]
  %81 = add nuw nsw i32 %34, 1
  %82 = load i32, ptr %11, align 8, !tbaa !466
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %33, label %28, !prof !634, !llvm.loop !635

84:                                               ; preds = %76, %55
  %85 = phi { ptr, i32 } [ %77, %76 ], [ %56, %55 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  br label %86

86:                                               ; preds = %84, %26
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  resume { ptr, i32 } %87
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard17estimate_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #6 align 2 !prof !636 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %4 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %3, i64 noundef 0) #17
  %5 = load i32, ptr %4, align 4, !tbaa !493
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %3, i64 noundef 1) #17
  %7 = load i32, ptr %6, align 4, !tbaa !493
  %8 = fptosi float %1 to i32
  %9 = add i32 %5, 1
  %10 = add i32 %7, %8
  %11 = sub i32 %9, %10
  ret i32 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #6 align 2 !prof !637 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !494
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %5, i64 noundef 0) #17
  %7 = load i32, ptr %6, align 4, !tbaa !493
  %8 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %5, i64 noundef 1) #17
  %9 = load i32, ptr %8, align 4, !tbaa !493
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %14, !prof !638

11:                                               ; preds = %2
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %13 = zext nneg i32 %4 to i64
  br label %21

14:                                               ; preds = %41, %2
  %15 = phi i32 [ %7, %2 ], [ %42, %41 ]
  %16 = phi i32 [ %9, %2 ], [ %43, %41 ]
  %17 = sitofp i32 %15 to float
  %18 = sitofp i32 %16 to float
  %19 = fadd float %18, %1
  %20 = fsub float %17, %19
  ret float %20

21:                                               ; preds = %11, %41
  %22 = phi i64 [ 0, %11 ], [ %44, %41 ]
  %23 = phi i32 [ %9, %11 ], [ %43, %41 ]
  %24 = phi i32 [ %7, %11 ], [ %42, %41 ]
  %25 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %22) #17
  %26 = load i16, ptr %25, align 2, !tbaa !496
  %27 = zext i16 %26 to i64
  %28 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %12, i64 noundef %27) #17
  %29 = load i16, ptr %28, align 2, !tbaa !496
  %30 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %12, i64 noundef %27) #17
  %31 = load i16, ptr %30, align 2, !tbaa !496
  %32 = and i16 %31, 112
  %33 = icmp eq i16 %32, 64
  br i1 %33, label %34, label %36, !prof !639

34:                                               ; preds = %21
  %35 = add nsw i32 %23, 1
  br label %41

36:                                               ; preds = %21
  %37 = and i16 %29, 7
  %38 = icmp eq i16 %37, 4
  %39 = zext i1 %38 to i32
  %40 = add nsw i32 %24, %39
  br label %41

41:                                               ; preds = %36, %34
  %42 = phi i32 [ %24, %34 ], [ %40, %36 ]
  %43 = phi i32 [ %35, %34 ], [ %23, %36 ]
  %44 = add nuw nsw i64 %22, 1
  %45 = icmp eq i64 %44, %13
  br i1 %45, label %14, label %21, !prof !640, !llvm.loop !641
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind noalias nonnull writable sret(%class.FastBoard) align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #17
  %3 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !466
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %42

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi i32 [ %4, %6 ], [ %13, %12 ]
  %10 = phi i32 [ 0, %6 ], [ %14, %12 ]
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %38, %8
  %13 = phi i32 [ %9, %8 ], [ %40, %38 ]
  %14 = add nuw nsw i32 %10, 1
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %8, label %42, !llvm.loop !642

16:                                               ; preds = %8, %38
  %17 = phi i32 [ %39, %38 ], [ 0, %8 ]
  %18 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %10, i32 noundef %17) #17
  %19 = invoke noundef ptr @_ZN12MCOwnerTable7get_MCOEv() #17
          to label %20 unwind label %29

20:                                               ; preds = %16
  %21 = invoke noundef float @_ZN12MCOwnerTable9get_scoreEii(ptr noundef nonnull align 8 dereferenceable(40) %19, i32 noundef 0, i32 noundef %18) #17
          to label %22 unwind label %29

22:                                               ; preds = %20
  %23 = sext i32 %18 to i64
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %23) #17
  %25 = load i32, ptr %24, align 4, !tbaa !484
  %26 = icmp eq i32 %25, 0
  %27 = fcmp olt float %21, 0x3FC99999A0000000
  %28 = and i1 %27, %26
  br i1 %28, label %37, label %31

29:                                               ; preds = %20, %16
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) #19
  resume { ptr, i32 } %30

31:                                               ; preds = %22
  %32 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %23) #17
  %33 = load i32, ptr %32, align 4, !tbaa !484
  %34 = icmp eq i32 %33, 1
  %35 = fcmp ogt float %21, 0x3FE99999A0000000
  %36 = and i1 %35, %34
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %22
  tail call void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %18, i32 noundef 2) #17
  br label %38

38:                                               ; preds = %37, %31
  %39 = add nuw nsw i32 %17, 1
  %40 = load i32, ptr %3, align 8, !tbaa !466
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %16, label %12, !llvm.loop !643

42:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #7 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !466
  store i32 %7, ptr %5, align 8, !tbaa !466
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #1

; Function Attrs: optsize
declare noundef float @_ZN12MCOwnerTable9get_scoreEii(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !644 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !645
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #17
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !646
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !647 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !646
  %4 = load ptr, ptr %0, align 8, !tbaa !645
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 comdat align 2 !prof !644 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !648 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !649 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !650 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat !prof !644 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !652 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !653 {
  %2 = load ptr, ptr %0, align 8, !tbaa !645
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !654
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #17
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 !prof !644 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !655 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !655 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #6 comdat align 2 !prof !656 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !649 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
  store ptr %3, ptr %0, align 8, !tbaa !645
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !646
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !654
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !657 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !658 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !659

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #17
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !660 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !660 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !596

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
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !661 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !644 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !644 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !644 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #17
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !644 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !606
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #6 comdat !prof !662 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !644 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !651 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #6 comdat !prof !662 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !663 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !651 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !651 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !664

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !665 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !662 {
  %3 = load ptr, ptr %1, align 8, !tbaa !606
  store ptr %3, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !668 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !669

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #17
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !670 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #6 comdat align 2 !prof !670 {
  tail call void @_ZdlPv(ptr noundef %1) #23
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !653 {
  %2 = load ptr, ptr %0, align 8, !tbaa !645
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !646
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !671 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #7 comdat !prof !671 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !671 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard9influenceEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %3 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %3) #18
  call void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind nonnull writable sret(%class.FastBoard) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %1) #17
  invoke void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 5, i32 noundef 21) #17
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %3) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #18
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %3) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca %"class.std::allocator", align 1
  %7 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %8 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !491
  %10 = sext i32 %9 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %11 unwind label %26

11:                                               ; preds = %4
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  %12 = load i32, ptr %8, align 4, !tbaa !491
  %13 = sext i32 %12 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %13, ptr noundef nonnull align 1 dereferenceable(1) %7) #17
          to label %14 unwind label %28

14:                                               ; preds = %11
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  %15 = load i32, ptr %8, align 4, !tbaa !491
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  br label %19

19:                                               ; preds = %17, %37
  %20 = phi i64 [ 0, %17 ], [ %38, %37 ]
  %21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %20) #17
  %22 = load i32, ptr %21, align 4, !tbaa !484
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %20) #19
  store i32 128, ptr %25, align 4, !tbaa !493
  br label %37

26:                                               ; preds = %4
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  br label %248

28:                                               ; preds = %11
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %7) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  br label %246

30:                                               ; preds = %19
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %20) #17
  %32 = load i32, ptr %31, align 4, !tbaa !484
  %33 = icmp eq i32 %32, 1
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %20) #19
  br i1 %33, label %35, label %36

35:                                               ; preds = %30
  store i32 -128, ptr %34, align 4, !tbaa !493
  br label %37

36:                                               ; preds = %30
  store i32 0, ptr %34, align 4, !tbaa !493
  br label %37

37:                                               ; preds = %24, %36, %35
  %38 = add nuw nsw i64 %20, 1
  %39 = load i32, ptr %8, align 4, !tbaa !491
  %40 = sext i32 %39 to i64
  %41 = icmp slt i64 %38, %40
  br i1 %41, label %19, label %42, !llvm.loop !672

42:                                               ; preds = %37, %14
  %43 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %0) #17
          to label %44 unwind label %65

44:                                               ; preds = %42
  %45 = icmp sgt i32 %2, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %44
  %47 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  br label %48

48:                                               ; preds = %46, %159
  %49 = phi i32 [ 0, %46 ], [ %160, %159 ]
  %50 = load i32, ptr %8, align 4, !tbaa !491
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %56, label %157

52:                                               ; preds = %159, %44
  %53 = icmp sgt i32 %3, 0
  br i1 %53, label %54, label %245

54:                                               ; preds = %52
  %55 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  br label %162

56:                                               ; preds = %48, %152
  %57 = phi i64 [ %153, %152 ], [ 0, %48 ]
  %58 = trunc i64 %57 to i32
  %59 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %58) #17
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %152, label %69

61:                                               ; preds = %240
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %67

63:                                               ; preds = %157
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %67

65:                                               ; preds = %42
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %67

67:                                               ; preds = %63, %65, %61
  %68 = phi { ptr, i32 } [ %62, %61 ], [ %64, %63 ], [ %66, %65 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %246

69:                                               ; preds = %56
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %57) #19
  %71 = load i32, ptr %70, align 4, !tbaa !493
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %110

73:                                               ; preds = %69, %101
  %74 = phi i64 [ %103, %101 ], [ 0, %69 ]
  %75 = phi i32 [ %102, %101 ], [ 0, %69 ]
  br label %78

76:                                               ; preds = %97
  %77 = icmp eq i32 %98, 0
  br i1 %77, label %105, label %110

78:                                               ; preds = %73, %97
  %79 = phi i64 [ %99, %97 ], [ %74, %73 ]
  %80 = phi i32 [ %98, %97 ], [ 0, %73 ]
  %81 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %47, i64 noundef %79) #17
  %82 = load i32, ptr %81, align 4, !tbaa !493
  %83 = add nsw i32 %82, %58
  %84 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %83) #17
  %85 = icmp eq i32 %84, 3
  %86 = icmp ne i32 %80, 0
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %97, label %88

88:                                               ; preds = %78
  %89 = sext i32 %83 to i64
  %90 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %89) #19
  %91 = load i32, ptr %90, align 4, !tbaa !493
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %89) #19
  %95 = load i32, ptr %94, align 4, !tbaa !493
  %96 = lshr i32 %95, 31
  br label %97

97:                                               ; preds = %93, %78
  %98 = phi i32 [ %80, %78 ], [ %96, %93 ]
  %99 = add nuw nsw i64 %79, 1
  %100 = icmp eq i64 %99, 4
  br i1 %100, label %76, label %78, !llvm.loop !673

101:                                              ; preds = %88
  %102 = add nuw nsw i32 %75, 1
  %103 = add nuw nsw i64 %79, 1
  %104 = icmp eq i64 %103, 4
  br i1 %104, label %105, label %73, !llvm.loop !673

105:                                              ; preds = %101, %76
  %106 = phi i32 [ %75, %76 ], [ %102, %101 ]
  %107 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %57) #19
  %108 = load i32, ptr %107, align 4, !tbaa !493
  %109 = add nsw i32 %108, %106
  store i32 %109, ptr %107, align 4, !tbaa !493
  br label %110

110:                                              ; preds = %76, %105, %69
  %111 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %57) #19
  %112 = load i32, ptr %111, align 4, !tbaa !493
  %113 = icmp slt i32 %112, 1
  br i1 %113, label %114, label %152

114:                                              ; preds = %110, %143
  %115 = phi i64 [ %145, %143 ], [ 0, %110 ]
  %116 = phi i32 [ %144, %143 ], [ 0, %110 ]
  br label %119

117:                                              ; preds = %139
  %118 = icmp eq i32 %140, 0
  br i1 %118, label %147, label %152

119:                                              ; preds = %114, %139
  %120 = phi i64 [ %141, %139 ], [ %115, %114 ]
  %121 = phi i32 [ %140, %139 ], [ 0, %114 ]
  %122 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %47, i64 noundef %120) #17
  %123 = load i32, ptr %122, align 4, !tbaa !493
  %124 = add nsw i32 %123, %58
  %125 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %124) #17
  %126 = icmp eq i32 %125, 3
  %127 = icmp ne i32 %121, 0
  %128 = select i1 %126, i1 true, i1 %127
  br i1 %128, label %139, label %129

129:                                              ; preds = %119
  %130 = sext i32 %124 to i64
  %131 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %130) #19
  %132 = load i32, ptr %131, align 4, !tbaa !493
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %129
  %135 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %130) #19
  %136 = load i32, ptr %135, align 4, !tbaa !493
  %137 = icmp sgt i32 %136, 0
  %138 = zext i1 %137 to i32
  br label %139

139:                                              ; preds = %134, %119
  %140 = phi i32 [ %121, %119 ], [ %138, %134 ]
  %141 = add nuw nsw i64 %120, 1
  %142 = icmp eq i64 %141, 4
  br i1 %142, label %117, label %119, !llvm.loop !674

143:                                              ; preds = %129
  %144 = add nuw nsw i32 %116, 1
  %145 = add nuw nsw i64 %120, 1
  %146 = icmp eq i64 %145, 4
  br i1 %146, label %147, label %114, !llvm.loop !674

147:                                              ; preds = %143, %117
  %148 = phi i32 [ %116, %117 ], [ %144, %143 ]
  %149 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %57) #19
  %150 = load i32, ptr %149, align 4, !tbaa !493
  %151 = sub nsw i32 %150, %148
  store i32 %151, ptr %149, align 4, !tbaa !493
  br label %152

152:                                              ; preds = %110, %147, %117, %56
  %153 = add nuw nsw i64 %57, 1
  %154 = load i32, ptr %8, align 4, !tbaa !491
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %153, %155
  br i1 %156, label %56, label %157, !llvm.loop !675

157:                                              ; preds = %152, %48
  %158 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #17
          to label %159 unwind label %63

159:                                              ; preds = %157
  %160 = add nuw nsw i32 %49, 1
  %161 = icmp eq i32 %160, %2
  br i1 %161, label %52, label %48, !llvm.loop !676

162:                                              ; preds = %54, %242
  %163 = phi i32 [ 0, %54 ], [ %243, %242 ]
  %164 = load i32, ptr %8, align 4, !tbaa !491
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %240

166:                                              ; preds = %162, %235
  %167 = phi i64 [ %236, %235 ], [ 0, %162 ]
  %168 = trunc i64 %167 to i32
  %169 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %168) #17
  %170 = icmp eq i32 %169, 3
  br i1 %170, label %235, label %171

171:                                              ; preds = %166
  %172 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %167) #19
  %173 = load i32, ptr %172, align 4, !tbaa !493
  %174 = icmp sgt i32 %173, 0
  br i1 %174, label %182, label %202

175:                                              ; preds = %198
  %176 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %167) #19
  %177 = load i32, ptr %176, align 4, !tbaa !493
  %178 = sub nsw i32 %177, %199
  store i32 %178, ptr %176, align 4, !tbaa !493
  %179 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %167) #19
  %180 = load i32, ptr %179, align 4, !tbaa !493
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %233, label %235

182:                                              ; preds = %171, %198
  %183 = phi i64 [ %200, %198 ], [ 0, %171 ]
  %184 = phi i32 [ %199, %198 ], [ 0, %171 ]
  %185 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %55, i64 noundef %183) #17
  %186 = load i32, ptr %185, align 4, !tbaa !493
  %187 = add nsw i32 %186, %168
  %188 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %187) #17
  %189 = icmp eq i32 %188, 3
  %190 = icmp ne i32 %184, 0
  %191 = select i1 %189, i1 true, i1 %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %182
  %193 = sext i32 %187 to i64
  %194 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %193) #19
  %195 = load i32, ptr %194, align 4, !tbaa !493
  %196 = icmp slt i32 %195, 1
  %197 = zext i1 %196 to i32
  br label %198

198:                                              ; preds = %192, %182
  %199 = phi i32 [ %184, %182 ], [ %197, %192 ]
  %200 = add nuw nsw i64 %183, 1
  %201 = icmp eq i64 %200, 4
  br i1 %201, label %175, label %182, !llvm.loop !677

202:                                              ; preds = %171
  %203 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %167) #19
  %204 = load i32, ptr %203, align 4, !tbaa !493
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %213, label %235

206:                                              ; preds = %229
  %207 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %167) #19
  %208 = load i32, ptr %207, align 4, !tbaa !493
  %209 = add nsw i32 %208, %230
  store i32 %209, ptr %207, align 4, !tbaa !493
  %210 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %167) #19
  %211 = load i32, ptr %210, align 4, !tbaa !493
  %212 = icmp sgt i32 %211, 0
  br i1 %212, label %233, label %235

213:                                              ; preds = %202, %229
  %214 = phi i64 [ %231, %229 ], [ 0, %202 ]
  %215 = phi i32 [ %230, %229 ], [ 0, %202 ]
  %216 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %55, i64 noundef %214) #17
  %217 = load i32, ptr %216, align 4, !tbaa !493
  %218 = add nsw i32 %217, %168
  %219 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %218) #17
  %220 = icmp eq i32 %219, 3
  %221 = icmp ne i32 %215, 0
  %222 = select i1 %220, i1 true, i1 %221
  br i1 %222, label %229, label %223

223:                                              ; preds = %213
  %224 = sext i32 %218 to i64
  %225 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %224) #19
  %226 = load i32, ptr %225, align 4, !tbaa !493
  %227 = icmp sgt i32 %226, -1
  %228 = zext i1 %227 to i32
  br label %229

229:                                              ; preds = %223, %213
  %230 = phi i32 [ %215, %213 ], [ %228, %223 ]
  %231 = add nuw nsw i64 %214, 1
  %232 = icmp eq i64 %231, 4
  br i1 %232, label %206, label %213, !llvm.loop !678

233:                                              ; preds = %206, %175
  %234 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %167) #19
  store i32 0, ptr %234, align 4, !tbaa !493
  br label %235

235:                                              ; preds = %233, %175, %206, %202, %166
  %236 = add nuw nsw i64 %167, 1
  %237 = load i32, ptr %8, align 4, !tbaa !491
  %238 = sext i32 %237 to i64
  %239 = icmp slt i64 %236, %238
  br i1 %239, label %166, label %240, !llvm.loop !679

240:                                              ; preds = %235, %162
  %241 = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %5) #17
          to label %242 unwind label %61

242:                                              ; preds = %240
  %243 = add nuw nsw i32 %163, 1
  %244 = icmp eq i32 %243, %3
  br i1 %244, label %245, label %162, !llvm.loop !680

245:                                              ; preds = %242, %52
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  ret void

246:                                              ; preds = %67, %28
  %247 = phi { ptr, i32 } [ %68, %67 ], [ %29, %28 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  br label %248

248:                                              ; preds = %246, %26
  %249 = phi { ptr, i32 } [ %247, %246 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  resume { ptr, i32 } %249
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard4moyoEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %3 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %3) #18
  call void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind nonnull writable sret(%class.FastBoard) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %1) #17
  invoke void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 5, i32 noundef 10) #17
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %3) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #18
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %3) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard4areaEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %3 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %3) #18
  call void @_ZN9FastBoard11remove_deadEv(ptr dead_on_unwind nonnull writable sret(%class.FastBoard) align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %1) #17
  invoke void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 4, i32 noundef 0) #17
          to label %4 unwind label %5

4:                                                ; preds = %2
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %3) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #18
  ret void

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %3) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %3) #18
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !681 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !682 {
  %4 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  invoke void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !683 {
  %3 = load ptr, ptr %0, align 8, !tbaa !645
  %4 = getelementptr inbounds i32, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat align 2 !prof !684 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %53, label %4, !prof !685

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = icmp ugt i64 %5, %6
  br i1 %7, label %8, label %24, !prof !685

8:                                                ; preds = %4
  %9 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %10 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %11 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5, ptr %9, ptr %10) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !645
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !646
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %12, ptr noundef %14, ptr noundef nonnull align 1 dereferenceable(1) %15) #17
  %16 = load ptr, ptr %0, align 8, !tbaa !645
  %17 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !654
  %19 = ptrtoint ptr %18 to i64
  %20 = ptrtoint ptr %16 to i64
  %21 = sub i64 %19, %20
  %22 = ashr exact i64 %21, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %16, i64 noundef %22) #17
  store ptr %11, ptr %0, align 8, !tbaa !645
  %23 = getelementptr inbounds i32, ptr %11, i64 %5
  store ptr %23, ptr %17, align 8, !tbaa !654
  br label %49

24:                                               ; preds = %4
  %25 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %26 = icmp ult i64 %25, %5
  br i1 %26, label %34, label %27, !prof !685

27:                                               ; preds = %24
  %28 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %29 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %30 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %31 = tail call ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(ptr %28, ptr %29, ptr %30) #17
  %32 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %33 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(ptr %31, ptr %32, ptr noundef nonnull align 1 dereferenceable(1) %33) #17
  br label %49

34:                                               ; preds = %24
  %35 = load ptr, ptr %1, align 8, !tbaa !645
  %36 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %37 = getelementptr inbounds i32, ptr %35, i64 %36
  %38 = load ptr, ptr %0, align 8, !tbaa !645
  %39 = tail call noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %35, ptr noundef %37, ptr noundef %38) #17
  %40 = load ptr, ptr %1, align 8, !tbaa !645
  %41 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %42 = getelementptr inbounds i32, ptr %40, i64 %41
  %43 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !646
  %45 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !646
  %47 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %48 = tail call noundef ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(ptr noundef %42, ptr noundef %44, ptr noundef %46, ptr noundef nonnull align 1 dereferenceable(1) %47) #17
  br label %49

49:                                               ; preds = %27, %34, %8
  %50 = load ptr, ptr %0, align 8, !tbaa !645
  %51 = getelementptr inbounds i32, ptr %50, i64 %5
  %52 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %51, ptr %52, align 8, !tbaa !646
  br label %53

53:                                               ; preds = %49, %2
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !681 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 comdat align 2 !prof !682 {
  %3 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #18
  call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  %4 = call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #18
  br i1 %5, label %6, label %7, !prof !686

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #21
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !682 {
  %3 = load ptr, ptr %0, align 8, !tbaa !645
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !646
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !687 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !584
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  store i64 %4, ptr %3, align 8, !tbaa !584
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #17
  %6 = load i64, ptr %5, align 8, !tbaa !584
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i64 %6
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !687 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !688 {
  %3 = load i64, ptr %1, align 8, !tbaa !584
  %4 = load i64, ptr %0, align 8, !tbaa !584
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !689
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #6 comdat align 2 !prof !687 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  ret i64 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !690 {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_(ptr noundef %0, i64 noundef %1) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 comdat !prof !690 {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(ptr noundef %0, i64 noundef %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !690 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !691

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIiJEEvPT_DpOT0_(ptr noundef %0) #17
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %0) #17
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIiJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !690 {
  store i32 0, ptr %0, align 4, !tbaa !493
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat !prof !690 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !606
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #17
  call void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %6 = call noundef ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat !prof !690 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !691

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #17
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #6 comdat !prof !692 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !690 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat !prof !690 {
  tail call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat !prof !693 {
  %4 = load i32, ptr %2, align 4, !tbaa !493
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !694

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store i32 %4, ptr %7, align 4, !tbaa !493
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !695, !llvm.loop !696

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !684 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !654
  %4 = load ptr, ptr %0, align 8, !tbaa !645
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %5 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
  %6 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %2, ptr %3, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %5

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = tail call ptr @__cxa_begin_catch(ptr %11) #18
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %5, i64 noundef %1) #17
          to label %13 unwind label %14

13:                                               ; preds = %9
  invoke void @__cxa_rethrow() #24
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
  tail call void @__clang_call_terminate(ptr %19) #20
  unreachable

20:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !684 {
  tail call void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !684 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #17
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #17
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(ptr %4, ptr %5, ptr %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !697 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !698 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) #17
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %1) #17
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat !prof !489 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %5
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !684 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(ptr %0, ptr %1) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_(ptr %0, ptr %1) local_unnamed_addr #6 comdat align 2 !prof !684 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !684 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #19
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #19
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #17
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !684 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %8) #19
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) local_unnamed_addr #6 comdat !prof !699 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !684 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !700
  %6 = getelementptr inbounds i32, ptr %5, i64 %1
  store ptr %6, ptr %4, align 8, !tbaa !606
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %7 = load ptr, ptr %3, align 8
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !702 {
  %3 = load ptr, ptr %1, align 8, !tbaa !606
  store ptr %3, ptr %0, align 8, !tbaa !700
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !703 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !606
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #17
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #6 comdat !prof !489 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPiS2_EET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %4 = tail call noundef ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard11display_mapESt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !489 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !466
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %8, label %43

6:                                                ; preds = %41
  %7 = load i32, ptr %3, align 8, !tbaa !466
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i32 [ %7, %6 ], [ %4, %2 ]
  %10 = phi i32 [ %11, %6 ], [ %4, %2 ]
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i32 %9, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8, %36
  %14 = phi i32 [ %38, %36 ], [ 0, %8 ]
  %15 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14, i32 noundef %11) #17
  %16 = sext i32 %15 to i64
  %17 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %16) #19
  %18 = load i32, ptr %17, align 4, !tbaa !493
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14, i32 noundef %11) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %36, label %23

23:                                               ; preds = %20
  %24 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14, i32 noundef %11) #17
  %25 = icmp eq i32 %24, 1
  %26 = select i1 %25, ptr @.str.2, ptr @.str.3
  br label %36

27:                                               ; preds = %13
  %28 = icmp slt i32 %18, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %27
  %30 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14, i32 noundef %11) #17
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14, i32 noundef %11) #17
  %34 = icmp eq i32 %33, 1
  %35 = select i1 %34, ptr @.str.5, ptr @.str.6
  br label %36

36:                                               ; preds = %27, %32, %29, %23, %20
  %37 = phi ptr [ @.str.1, %20 ], [ %26, %23 ], [ @.str.4, %29 ], [ %35, %32 ], [ @.str.7, %27 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %37) #17
  %38 = add nuw nsw i32 %14, 1
  %39 = load i32, ptr %3, align 8, !tbaa !466
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %13, label %41, !llvm.loop !704

41:                                               ; preds = %36, %8
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  %42 = icmp sgt i32 %10, 1
  br i1 %42, label %6, label %43, !llvm.loop !705

43:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard4evalEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %1) local_unnamed_addr #7 align 2 !prof !489 {
  %3 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #18
  call void @_ZN9FastBoard9run_bouzyEii(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 5, i32 noundef 21) #17
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %5 = load i32, ptr %4, align 8, !tbaa !466
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %2, %20
  %8 = phi i32 [ %21, %20 ], [ %5, %2 ]
  %9 = phi i32 [ %22, %20 ], [ 0, %2 ]
  %10 = phi i32 [ %23, %20 ], [ 0, %2 ]
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %25, label %20

12:                                               ; preds = %20, %2
  %13 = phi i32 [ 0, %2 ], [ %22, %20 ]
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !492
  %16 = icmp eq i32 %15, 1
  %17 = fptosi float %1 to i32
  %18 = sub nsw i32 %17, %13
  %19 = select i1 %16, i32 %18, i32 %13
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #18
  ret i32 %19

20:                                               ; preds = %38, %7
  %21 = phi i32 [ %8, %7 ], [ %42, %38 ]
  %22 = phi i32 [ %9, %7 ], [ %40, %38 ]
  %23 = add nuw nsw i32 %10, 1
  %24 = icmp slt i32 %23, %21
  br i1 %24, label %7, label %12, !llvm.loop !706

25:                                               ; preds = %7, %38
  %26 = phi i32 [ %40, %38 ], [ %9, %7 ]
  %27 = phi i32 [ %41, %38 ], [ 0, %7 ]
  %28 = call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %10, i32 noundef %27) #17
  %29 = sext i32 %28 to i64
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %29) #19
  %31 = load i32, ptr %30, align 4, !tbaa !493
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %25
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %29) #19
  %35 = load i32, ptr %34, align 4, !tbaa !493
  %36 = icmp sgt i32 %35, 0
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %25, %33
  %39 = phi i32 [ %37, %33 ], [ -1, %25 ]
  %40 = add nsw i32 %26, %39
  %41 = add nuw nsw i32 %27, 1
  %42 = load i32, ptr %4, align 8, !tbaa !466
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %25, label %20, !llvm.loop !707
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !708 {
  %3 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #17
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.9) #17
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %8, label %5, !prof !709

5:                                                ; preds = %2
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  br label %15

6:                                                ; preds = %8
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  %7 = add nsw i32 %3, -1
  br i1 %4, label %17, label %15, !prof !710

8:                                                ; preds = %2, %8
  %9 = phi i32 [ %13, %8 ], [ 0, %2 ]
  %10 = icmp ult i32 %9, 8
  %11 = select i1 %10, i32 97, i32 98, !prof !711
  %12 = add nuw nsw i32 %11, %9
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %12) #17
  %13 = add nuw nsw i32 %9, 1
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %6, label %8, !prof !712, !llvm.loop !713

15:                                               ; preds = %5, %6
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20) #17
  br label %50

16:                                               ; preds = %23
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20) #17
  br i1 %4, label %51, label %50, !prof !710

17:                                               ; preds = %6, %23
  %18 = phi i32 [ %24, %23 ], [ %7, %6 ]
  %19 = add nuw nsw i32 %18, 1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.11, i32 noundef %19) #17
  %20 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0, i32 noundef %18) #17
  %21 = icmp eq i32 %20, %1
  %22 = select i1 %21, ptr @.str.12, ptr @.str.13, !prof !714
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %22) #17
  br label %26

23:                                               ; preds = %46
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.19, i32 noundef %19) #17
  %24 = add nsw i32 %18, -1
  %25 = icmp sgt i32 %18, 0
  br i1 %25, label %17, label %16, !prof !715, !llvm.loop !716

26:                                               ; preds = %17, %46
  %27 = phi i32 [ %48, %46 ], [ 0, %17 ]
  %28 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %27, i32 noundef %18) #17
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %36, label %30, !prof !717

30:                                               ; preds = %26
  %31 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %27, i32 noundef %18) #17
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33, !prof !718

33:                                               ; preds = %30
  %34 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEiii(i32 noundef %3, i32 noundef %27, i32 noundef %18) #17
  %35 = select i1 %34, ptr @.str.16, ptr @.str.17, !prof !719
  br label %36

36:                                               ; preds = %33, %30, %26
  %37 = phi ptr [ @.str.14, %26 ], [ @.str.15, %30 ], [ %35, %33 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %37) #17
  %38 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %27, i32 noundef %18) #17
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %46, label %40, !prof !720

40:                                               ; preds = %36
  %41 = icmp ne i32 %27, %7
  %42 = add nsw i32 %38, 1
  %43 = icmp eq i32 %42, %1
  %44 = select i1 %41, i1 %43, i1 false
  %45 = select i1 %44, ptr @.str.12, ptr @.str.13, !prof !721
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi ptr [ @.str.18, %36 ], [ %45, %40 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %47) #17
  %48 = add nuw nsw i32 %27, 1
  %49 = icmp eq i32 %48, %3
  br i1 %49, label %23, label %26, !prof !722, !llvm.loop !723

50:                                               ; preds = %51, %15, %16
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.21) #17
  ret void

51:                                               ; preds = %16, %51
  %52 = phi i32 [ %56, %51 ], [ 0, %16 ]
  %53 = icmp ult i32 %52, 8
  %54 = select i1 %53, i32 97, i32 98, !prof !711
  %55 = add nuw nsw i32 %54, %52
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %55) #17
  %56 = add nuw nsw i32 %52, 1
  %57 = icmp eq i32 %56, %3
  br i1 %57, label %50, label %51, !prof !712, !llvm.loop !724
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard9starpointEiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #14 align 2 !prof !725 {
  %4 = mul nsw i32 %2, %0
  %5 = add nsw i32 %4, %1
  %6 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEii(i32 noundef %0, i32 noundef %5) #17
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard17display_libertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #7 align 2 !prof !489 {
  %3 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #17
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20) #17
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  %6 = add nsw i32 %3, -1
  br label %19

7:                                                ; preds = %12
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  %8 = add nsw i32 %3, -1
  br i1 %4, label %9, label %19

9:                                                ; preds = %7
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %22

12:                                               ; preds = %2, %12
  %13 = phi i32 [ %17, %12 ], [ 0, %2 ]
  %14 = icmp ult i32 %13, 8
  %15 = select i1 %14, i32 97, i32 98
  %16 = add nuw nsw i32 %15, %13
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %16) #17
  %17 = add nuw nsw i32 %13, 1
  %18 = icmp eq i32 %17, %3
  br i1 %18, label %7, label %12, !llvm.loop !726

19:                                               ; preds = %28, %5, %7
  %20 = phi i32 [ %6, %5 ], [ %8, %7 ], [ %8, %28 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.21) #17
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.20) #17
  br i1 %4, label %78, label %21

21:                                               ; preds = %19
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  br label %85

22:                                               ; preds = %9, %28
  %23 = phi i32 [ %8, %9 ], [ %29, %28 ]
  %24 = add nuw nsw i32 %23, 1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.11, i32 noundef %24) #17
  %25 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0, i32 noundef %23) #17
  %26 = icmp eq i32 %25, %1
  %27 = select i1 %26, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %27) #17
  br label %31

28:                                               ; preds = %71
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.19, i32 noundef %24) #17
  %29 = add nsw i32 %23, -1
  %30 = icmp sgt i32 %23, 0
  br i1 %30, label %22, label %19, !llvm.loop !727

31:                                               ; preds = %22, %71
  %32 = phi i32 [ %73, %71 ], [ 0, %22 ]
  %33 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %32, i32 noundef %23) #17
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %32, i32 noundef %23) #17
  %37 = sext i32 %36 to i64
  %38 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %37) #17
  %39 = load i16, ptr %38, align 2, !tbaa !496
  %40 = zext i16 %39 to i64
  %41 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %40) #17
  %42 = load i16, ptr %41, align 2, !tbaa !496
  %43 = tail call i16 @llvm.umin.i16(i16 %42, i16 9)
  %44 = zext nneg i16 %43 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.22, i32 noundef %44) #17
  br label %62

45:                                               ; preds = %31
  %46 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %32, i32 noundef %23) #17
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %45
  %49 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %32, i32 noundef %23) #17
  %50 = sext i32 %49 to i64
  %51 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %50) #17
  %52 = load i16, ptr %51, align 2, !tbaa !496
  %53 = zext i16 %52 to i64
  %54 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %53) #17
  %55 = load i16, ptr %54, align 2, !tbaa !496
  %56 = tail call i16 @llvm.umin.i16(i16 %55, i16 9)
  %57 = zext nneg i16 %56 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.22, i32 noundef %57) #17
  br label %62

58:                                               ; preds = %45
  %59 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEiii(i32 noundef %3, i32 noundef %32, i32 noundef %23) #17
  br i1 %59, label %60, label %61

60:                                               ; preds = %58
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.16) #17
  br label %62

61:                                               ; preds = %58
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.17) #17
  br label %62

62:                                               ; preds = %48, %61, %60, %35
  %63 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %32, i32 noundef %23) #17
  %64 = icmp eq i32 %63, %1
  br i1 %64, label %71, label %65

65:                                               ; preds = %62
  %66 = icmp ne i32 %32, %8
  %67 = add nsw i32 %63, 1
  %68 = icmp eq i32 %67, %1
  %69 = select i1 %66, i1 %68, i1 false
  %70 = select i1 %69, ptr @.str.12, ptr @.str.13
  br label %71

71:                                               ; preds = %65, %62
  %72 = phi ptr [ @.str.18, %62 ], [ %70, %65 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %72) #17
  %73 = add nuw nsw i32 %32, 1
  %74 = icmp eq i32 %73, %3
  br i1 %74, label %28, label %31, !llvm.loop !728

75:                                               ; preds = %78
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.8) #17
  br i1 %4, label %76, label %85

76:                                               ; preds = %75
  %77 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %86

78:                                               ; preds = %19, %78
  %79 = phi i32 [ %83, %78 ], [ 0, %19 ]
  %80 = icmp ult i32 %79, 8
  %81 = select i1 %80, i32 97, i32 98
  %82 = add nuw nsw i32 %81, %79
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.10, i32 noundef %82) #17
  %83 = add nuw nsw i32 %79, 1
  %84 = icmp eq i32 %83, %3
  br i1 %84, label %75, label %78, !llvm.loop !729

85:                                               ; preds = %92, %21, %75
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.21) #17
  ret void

86:                                               ; preds = %76, %92
  %87 = phi i32 [ %20, %76 ], [ %93, %92 ]
  %88 = add nuw nsw i32 %87, 1
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.11, i32 noundef %88) #17
  %89 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0, i32 noundef %87) #17
  %90 = icmp eq i32 %89, %1
  %91 = select i1 %90, ptr @.str.12, ptr @.str.13
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %91) #17
  br label %95

92:                                               ; preds = %127
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.19, i32 noundef %88) #17
  %93 = add nsw i32 %87, -1
  %94 = icmp sgt i32 %87, 0
  br i1 %94, label %86, label %85, !llvm.loop !730

95:                                               ; preds = %86, %127
  %96 = phi i32 [ %129, %127 ], [ 0, %86 ]
  %97 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %96, i32 noundef %87) #17
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %96, i32 noundef %87) #17
  %101 = sext i32 %100 to i64
  %102 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %77, i64 noundef %101) #17
  %103 = load i16, ptr %102, align 2, !tbaa !496
  %104 = zext i16 %103 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.11, i32 noundef %104) #17
  br label %118

105:                                              ; preds = %95
  %106 = tail call noundef i32 @_ZN9FastBoard10get_squareEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %96, i32 noundef %87) #17
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %96, i32 noundef %87) #17
  %110 = sext i32 %109 to i64
  %111 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %77, i64 noundef %110) #17
  %112 = load i16, ptr %111, align 2, !tbaa !496
  %113 = zext i16 %112 to i32
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.11, i32 noundef %113) #17
  br label %118

114:                                              ; preds = %105
  %115 = tail call noundef zeroext i1 @_ZN9FastBoard9starpointEiii(i32 noundef %3, i32 noundef %96, i32 noundef %87) #17
  br i1 %115, label %116, label %117

116:                                              ; preds = %114
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.23) #17
  br label %118

117:                                              ; preds = %114
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.7) #17
  br label %118

118:                                              ; preds = %108, %117, %116, %99
  %119 = tail call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %96, i32 noundef %87) #17
  %120 = icmp eq i32 %119, %1
  br i1 %120, label %127, label %121

121:                                              ; preds = %118
  %122 = icmp ne i32 %96, %20
  %123 = add nsw i32 %119, 1
  %124 = icmp eq i32 %123, %1
  %125 = select i1 %122, i1 %124, i1 false
  %126 = select i1 %125, ptr @.str.12, ptr @.str.13
  br label %127

127:                                              ; preds = %121, %118
  %128 = phi ptr [ @.str.18, %118 ], [ %126, %121 ]
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %128) #17
  %129 = add nuw nsw i32 %96, 1
  %130 = icmp eq i32 %129, %3
  br i1 %130, label %92, label %95, !llvm.loop !731
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !732 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %5 = sext i32 %2 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = sext i32 %1 to i64
  %9 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %4, i64 noundef %8) #17
  %10 = load i16, ptr %9, align 2, !tbaa !496
  %11 = add i16 %10, %7
  store i16 %11, ptr %9, align 2, !tbaa !496
  %12 = trunc i32 %1 to i16
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %18

18:                                               ; preds = %20, %3
  %19 = phi i32 [ %2, %3 ], [ %25, %20 ]
  br label %27

20:                                               ; preds = %53
  %21 = sext i32 %19 to i64
  %22 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %13, i64 noundef %21) #17
  store i16 %12, ptr %22, align 2, !tbaa !496
  %23 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %21) #17
  %24 = load i16, ptr %23, align 2, !tbaa !496
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, %2
  br i1 %26, label %56, label %18, !prof !733, !llvm.loop !734

27:                                               ; preds = %18, %53
  %28 = phi i64 [ 0, %18 ], [ %54, %53 ]
  %29 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %14, i64 noundef %28) #17
  %30 = load i32, ptr %29, align 4, !tbaa !493
  %31 = add nsw i32 %30, %19
  %32 = sext i32 %31 to i64
  %33 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %32) #17
  %34 = load i32, ptr %33, align 4, !tbaa !484
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %39, label %53, !prof !735

36:                                               ; preds = %39
  %37 = add nuw nsw i64 %40, 1
  %38 = icmp eq i64 %37, 4
  br i1 %38, label %49, label %39, !prof !736, !llvm.loop !737

39:                                               ; preds = %27, %36
  %40 = phi i64 [ %37, %36 ], [ 0, %27 ]
  %41 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %14, i64 noundef %40) #17
  %42 = load i32, ptr %41, align 4, !tbaa !493
  %43 = add nsw i32 %42, %31
  %44 = sext i32 %43 to i64
  %45 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %13, i64 noundef %44) #17
  %46 = load i16, ptr %45, align 2, !tbaa !496
  %47 = zext i16 %46 to i32
  %48 = icmp eq i32 %47, %1
  br i1 %48, label %53, label %36

49:                                               ; preds = %36
  %50 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %16, i64 noundef %8) #17
  %51 = load i16, ptr %50, align 2, !tbaa !496
  %52 = add i16 %51, 1
  store i16 %52, ptr %50, align 2, !tbaa !496
  br label %53

53:                                               ; preds = %39, %49, %27
  %54 = add nuw nsw i64 %28, 1
  %55 = icmp eq i64 %54, 4
  br i1 %55, label %20, label %27, !prof !738, !llvm.loop !739

56:                                               ; preds = %20
  %57 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %5) #17
  %58 = load i16, ptr %57, align 2, !tbaa !496
  %59 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %8) #17
  %60 = load i16, ptr %59, align 2, !tbaa !496
  %61 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %5) #17
  store i16 %60, ptr %61, align 2, !tbaa !496
  %62 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %8) #17
  store i16 %58, ptr %62, align 2, !tbaa !496
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !740 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %5 = sext i32 %2 to i64
  %6 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %4, i64 noundef %5) #17
  store i32 %1, ptr %6, align 4, !tbaa !484
  %7 = trunc i32 %2 to i16
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %9 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %8, i64 noundef %5) #17
  store i16 %7, ptr %9, align 2, !tbaa !496
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %11 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %5) #17
  store i16 %7, ptr %11, align 2, !tbaa !496
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %13 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %5) #17
  store i16 0, ptr %13, align 2, !tbaa !496
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %15 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %14, i64 noundef %5) #17
  store i16 1, ptr %15, align 2, !tbaa !496
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %17 = sext i32 %1 to i64
  %18 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %16, i64 noundef %17) #17
  %19 = load i32, ptr %18, align 4, !tbaa !493
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 4, !tbaa !493
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %1) #17
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  br label %44

22:                                               ; preds = %61
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !494
  %25 = add nsw i32 %24, -1
  store i32 %25, ptr %23, align 4, !tbaa !494
  %26 = sext i32 %25 to i64
  %27 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %26) #17
  %28 = load i16, ptr %27, align 2, !tbaa !496
  %29 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %30 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %29, i64 noundef %5) #17
  %31 = load i16, ptr %30, align 2, !tbaa !496
  %32 = zext i16 %28 to i64
  %33 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %29, i64 noundef %32) #17
  store i16 %31, ptr %33, align 2, !tbaa !496
  %34 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %29, i64 noundef %5) #17
  %35 = load i16, ptr %34, align 2, !tbaa !496
  %36 = zext i16 %35 to i64
  %37 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %36) #17
  store i16 %28, ptr %37, align 2, !tbaa !496
  %38 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %39 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %38, i64 noundef %17) #17
  %40 = load i32, ptr %39, align 4, !tbaa !493
  %41 = add nsw i32 %40, %62
  store i32 %41, ptr %39, align 4, !tbaa !493
  %42 = icmp eq i32 %62, 1
  %43 = select i1 %42, i32 %63, i32 -1, !prof !741
  ret i32 %43

44:                                               ; preds = %3, %61
  %45 = phi i64 [ 0, %3 ], [ %64, %61 ]
  %46 = phi i32 [ undef, %3 ], [ %63, %61 ]
  %47 = phi i32 [ 0, %3 ], [ %62, %61 ]
  %48 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %21, i64 noundef %45) #17
  %49 = load i32, ptr %48, align 4, !tbaa !493
  %50 = add nsw i32 %49, %2
  %51 = sext i32 %50 to i64
  %52 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %51) #17
  %53 = load i16, ptr %52, align 2, !tbaa !496
  %54 = zext i16 %53 to i64
  %55 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %54) #17
  %56 = load i16, ptr %55, align 2, !tbaa !496
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %58, label %61, !prof !742

58:                                               ; preds = %44
  %59 = tail call noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %50) #17
  %60 = add nsw i32 %59, %47
  br label %61

61:                                               ; preds = %58, %44
  %62 = phi i32 [ %60, %58 ], [ %47, %44 ]
  %63 = phi i32 [ %50, %58 ], [ %46, %44 ]
  %64 = add nuw nsw i64 %45, 1
  %65 = icmp eq i64 %64, 4
  br i1 %65, label %22, label %44, !prof !743, !llvm.loop !744
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !745 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %5 = sext i32 %2 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = zext i16 %7 to i32
  %9 = icmp eq i32 %1, 0
  %10 = zext i1 %9 to i64
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) @_ZN9FastBoard9s_eyemaskE, i64 noundef %10) #17
  %12 = load i32, ptr %11, align 4, !tbaa !493
  %13 = and i32 %12, %8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15, !prof !746

15:                                               ; preds = %3
  %16 = tail call noundef i32 @_ZN9FastBoard16update_board_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17
  br label %113

17:                                               ; preds = %3
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %5) #17
  store i32 %1, ptr %19, align 4, !tbaa !484
  %20 = trunc i32 %2 to i16
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %22 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %21, i64 noundef %5) #17
  store i16 %20, ptr %22, align 2, !tbaa !496
  %23 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %24 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %23, i64 noundef %5) #17
  store i16 %20, ptr %24, align 2, !tbaa !496
  %25 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #17, !range !512
  %26 = trunc i32 %25 to i16
  %27 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %28 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %27, i64 noundef %5) #17
  store i16 %26, ptr %28, align 2, !tbaa !496
  %29 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %30 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %29, i64 noundef %5) #17
  store i16 1, ptr %30, align 2, !tbaa !496
  %31 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 15
  %32 = sext i32 %1 to i64
  %33 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %31, i64 noundef %32) #17
  %34 = load i32, ptr %33, align 4, !tbaa !493
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !493
  tail call void @_ZN9FastBoard13add_neighbourEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %1) #17
  %36 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %37 = zext i1 %9 to i32
  br label %60

38:                                               ; preds = %108
  %39 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !494
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %39, align 4, !tbaa !494
  %42 = sext i32 %41 to i64
  %43 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %42) #17
  %44 = load i16, ptr %43, align 2, !tbaa !496
  %45 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 1
  %46 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %45, i64 noundef %5) #17
  %47 = load i16, ptr %46, align 2, !tbaa !496
  %48 = zext i16 %44 to i64
  %49 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %45, i64 noundef %48) #17
  store i16 %47, ptr %49, align 2, !tbaa !496
  %50 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %45, i64 noundef %5) #17
  %51 = load i16, ptr %50, align 2, !tbaa !496
  %52 = zext i16 %51 to i64
  %53 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %52) #17
  store i16 %44, ptr %53, align 2, !tbaa !496
  %54 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %23, i64 noundef %5) #17
  %55 = load i16, ptr %54, align 2, !tbaa !496
  %56 = zext i16 %55 to i64
  %57 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %27, i64 noundef %56) #17
  %58 = load i16, ptr %57, align 2, !tbaa !496
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %111, label %113, !prof !747

60:                                               ; preds = %17, %108
  %61 = phi i64 [ 0, %17 ], [ %109, %108 ]
  %62 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %36, i64 noundef %61) #17
  %63 = load i32, ptr %62, align 4, !tbaa !493
  %64 = add nsw i32 %63, %2
  %65 = sext i32 %64 to i64
  %66 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %65) #17
  %67 = load i32, ptr %66, align 4, !tbaa !484
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %108, label %69, !prof !748

69:                                               ; preds = %60
  %70 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %65) #17
  %71 = load i32, ptr %70, align 4, !tbaa !484
  %72 = icmp eq i32 %71, %37
  br i1 %72, label %73, label %86, !prof !749

73:                                               ; preds = %69
  %74 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %23, i64 noundef %65) #17
  %75 = load i16, ptr %74, align 2, !tbaa !496
  %76 = zext i16 %75 to i64
  %77 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %27, i64 noundef %76) #17
  %78 = load i16, ptr %77, align 2, !tbaa !496
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %108, !prof !750

80:                                               ; preds = %73
  %81 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %82 = tail call noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %64) #17
  %83 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %81, i64 noundef %32) #17
  %84 = load i32, ptr %83, align 4, !tbaa !493
  %85 = add nsw i32 %84, %82
  store i32 %85, ptr %83, align 4, !tbaa !493
  br label %108

86:                                               ; preds = %69
  %87 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %65) #17
  %88 = load i32, ptr %87, align 4, !tbaa !484
  %89 = icmp eq i32 %88, %1
  br i1 %89, label %90, label %108, !prof !751

90:                                               ; preds = %86
  %91 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %23, i64 noundef %5) #17
  %92 = load i16, ptr %91, align 2, !tbaa !496
  %93 = zext i16 %92 to i32
  %94 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %23, i64 noundef %65) #17
  %95 = load i16, ptr %94, align 2, !tbaa !496
  %96 = zext i16 %95 to i32
  %97 = icmp eq i16 %92, %95
  br i1 %97, label %108, label %98, !prof !752

98:                                               ; preds = %90
  %99 = zext i16 %92 to i64
  %100 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %29, i64 noundef %99) #17
  %101 = load i16, ptr %100, align 2, !tbaa !496
  %102 = zext i16 %95 to i64
  %103 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %29, i64 noundef %102) #17
  %104 = load i16, ptr %103, align 2, !tbaa !496
  %105 = icmp ult i16 %101, %104
  br i1 %105, label %107, label %106, !prof !753

106:                                              ; preds = %98
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %93, i32 noundef %96) #17
  br label %108

107:                                              ; preds = %98
  tail call void @_ZN9FastBoard13merge_stringsEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %96, i32 noundef %93) #17
  br label %108

108:                                              ; preds = %80, %73, %86, %106, %107, %90, %60
  %109 = add nuw nsw i64 %61, 1
  %110 = icmp eq i64 %109, 4
  br i1 %110, label %38, label %60, !prof !754, !llvm.loop !755

111:                                              ; preds = %38
  %112 = tail call noundef i32 @_ZN9FastBoard18remove_string_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #17
  br label %113

113:                                              ; preds = %38, %111, %15
  %114 = phi i32 [ %16, %15 ], [ -1, %111 ], [ -1, %38 ]
  ret i32 %114
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !756 {
  %4 = alloca [4 x i32], align 16
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 10
  %6 = sext i32 %2 to i64
  %7 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %5, i64 noundef %6) #17
  %8 = load i16, ptr %7, align 2, !tbaa !496
  %9 = zext i16 %8 to i32
  %10 = sext i32 %1 to i64
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) @_ZN9FastBoard9s_eyemaskE, i64 noundef %10) #17
  %12 = load i32, ptr %11, align 4, !tbaa !493
  %13 = and i32 %12, %9
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %73, label %15, !prof !757

15:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  store i32 0, ptr %4, align 16, !tbaa !493
  %16 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 1
  store i32 0, ptr %16, align 4, !tbaa !493
  %17 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 3
  store i32 0, ptr %17, align 4, !tbaa !493
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %20 = load i32, ptr %19, align 8, !tbaa !466
  %21 = add i32 %2, -3
  %22 = sub i32 %21, %20
  %23 = sext i32 %22 to i64
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %23) #17
  %25 = load i32, ptr %24, align 4, !tbaa !484
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !493
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !493
  %30 = load i32, ptr %19, align 8, !tbaa !466
  %31 = xor i32 %30, -1
  %32 = add i32 %31, %2
  %33 = sext i32 %32 to i64
  %34 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %33) #17
  %35 = load i32, ptr %34, align 4, !tbaa !484
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %36
  %38 = load i32, ptr %37, align 4, !tbaa !493
  %39 = add nsw i32 %38, 1
  store i32 %39, ptr %37, align 4, !tbaa !493
  %40 = load i32, ptr %19, align 8, !tbaa !466
  %41 = add i32 %2, 1
  %42 = add i32 %41, %40
  %43 = sext i32 %42 to i64
  %44 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %43) #17
  %45 = load i32, ptr %44, align 4, !tbaa !484
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !493
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr %47, align 4, !tbaa !493
  %50 = load i32, ptr %19, align 8, !tbaa !466
  %51 = add i32 %2, 3
  %52 = add i32 %51, %50
  %53 = sext i32 %52 to i64
  %54 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %18, i64 noundef %53) #17
  %55 = load i32, ptr %54, align 4, !tbaa !484
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !493
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 4, !tbaa !493
  %60 = load i32, ptr %17, align 4, !tbaa !493
  %61 = icmp eq i32 %60, 0
  %62 = icmp eq i32 %1, 0
  %63 = zext i1 %62 to i64
  %64 = getelementptr inbounds [4 x i32], ptr %4, i64 0, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !493
  br i1 %61, label %66, label %68, !prof !758

66:                                               ; preds = %15
  %67 = icmp sgt i32 %65, 1
  br i1 %67, label %71, label %70, !prof !759

68:                                               ; preds = %15
  %69 = icmp eq i32 %65, 0
  br i1 %69, label %70, label %71, !prof !760

70:                                               ; preds = %68, %66
  br label %71

71:                                               ; preds = %68, %66, %70
  %72 = phi i1 [ true, %70 ], [ false, %66 ], [ false, %68 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  br label %73

73:                                               ; preds = %3, %71
  %74 = phi i1 [ %72, %71 ], [ false, %3 ]
  ret i1 %74
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard17predict_solid_eyeEiii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 !prof !489 {
  %5 = alloca [4 x i32], align 16
  %6 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %3) #17, !range !512
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %151, label %8

8:                                                ; preds = %4
  %9 = icmp eq i32 %6, 3
  %10 = icmp eq i32 %1, -1
  %11 = and i1 %10, %9
  br i1 %11, label %151, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %18

15:                                               ; preds = %18
  %16 = add nuw nsw i64 %19, 1
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %31, label %18, !llvm.loop !761

18:                                               ; preds = %12, %15
  %19 = phi i64 [ 0, %12 ], [ %16, %15 ]
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %13, i64 noundef %19) #17
  %21 = load i32, ptr %20, align 4, !tbaa !493
  %22 = add nsw i32 %21, %3
  %23 = sext i32 %22 to i64
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %23) #17
  %25 = load i32, ptr %24, align 4, !tbaa !484
  %26 = icmp eq i32 %25, %2
  %27 = icmp eq i32 %25, 3
  %28 = or i1 %26, %27
  %29 = icmp eq i32 %22, %1
  %30 = or i1 %29, %28
  br i1 %30, label %15, label %151

31:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  store i32 0, ptr %5, align 16, !tbaa !493
  %32 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 1
  store i32 0, ptr %32, align 4, !tbaa !493
  %33 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 3
  store i32 0, ptr %33, align 4, !tbaa !493
  %34 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %35 = load i32, ptr %34, align 8, !tbaa !466
  %36 = add i32 %3, -3
  %37 = sub i32 %36, %35
  %38 = sext i32 %37 to i64
  %39 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %38) #17
  %40 = load i32, ptr %39, align 4, !tbaa !484
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !493
  %44 = add nsw i32 %43, 1
  store i32 %44, ptr %42, align 4, !tbaa !493
  %45 = add i32 %3, 1
  %46 = load i32, ptr %34, align 8, !tbaa !466
  %47 = xor i32 %46, -1
  %48 = add i32 %47, %3
  %49 = sext i32 %48 to i64
  %50 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %49) #17
  %51 = load i32, ptr %50, align 4, !tbaa !484
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !493
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %53, align 4, !tbaa !493
  %56 = load i32, ptr %34, align 8, !tbaa !466
  %57 = add i32 %45, %56
  %58 = sext i32 %57 to i64
  %59 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %58) #17
  %60 = load i32, ptr %59, align 4, !tbaa !484
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !493
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %62, align 4, !tbaa !493
  %65 = load i32, ptr %34, align 8, !tbaa !466
  %66 = add i32 %3, 3
  %67 = add i32 %66, %65
  %68 = sext i32 %67 to i64
  %69 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %68) #17
  %70 = load i32, ptr %69, align 4, !tbaa !484
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !493
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !493
  %75 = icmp eq i32 %2, 0
  %76 = zext i1 %75 to i64
  %77 = getelementptr inbounds [4 x i32], ptr %5, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !493
  %79 = load i32, ptr %34, align 8, !tbaa !466
  %80 = xor i32 %79, -1
  %81 = add i32 %80, %3
  %82 = add nsw i32 %81, -2
  %83 = sext i32 %82 to i64
  %84 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %83) #17
  %85 = load i32, ptr %84, align 4, !tbaa !484
  %86 = icmp ne i32 %85, 2
  %87 = icmp eq i32 %82, %1
  %88 = or i1 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %31
  %90 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %82) #17, !range !512
  %91 = icmp ult i32 %90, 4
  %92 = zext i1 %91 to i32
  %93 = add nsw i32 %78, %92
  br label %94

94:                                               ; preds = %89, %31
  %95 = phi i32 [ %78, %31 ], [ %93, %89 ]
  %96 = load i32, ptr %34, align 8, !tbaa !466
  %97 = sub nsw i32 %45, %96
  %98 = add nsw i32 %97, -2
  %99 = sext i32 %98 to i64
  %100 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %99) #17
  %101 = load i32, ptr %100, align 4, !tbaa !484
  %102 = icmp ne i32 %101, 2
  %103 = icmp eq i32 %98, %1
  %104 = or i1 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %94
  %106 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %98) #17, !range !512
  %107 = icmp ult i32 %106, 4
  %108 = zext i1 %107 to i32
  %109 = add nsw i32 %95, %108
  br label %110

110:                                              ; preds = %105, %94
  %111 = phi i32 [ %95, %94 ], [ %109, %105 ]
  %112 = load i32, ptr %34, align 8, !tbaa !466
  %113 = add i32 %45, %112
  %114 = sext i32 %113 to i64
  %115 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %114) #17
  %116 = load i32, ptr %115, align 4, !tbaa !484
  %117 = icmp ne i32 %116, 2
  %118 = icmp eq i32 %113, %1
  %119 = or i1 %118, %117
  br i1 %119, label %125, label %120

120:                                              ; preds = %110
  %121 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %113) #17, !range !512
  %122 = icmp ult i32 %121, 4
  %123 = zext i1 %122 to i32
  %124 = add nsw i32 %111, %123
  br label %125

125:                                              ; preds = %120, %110
  %126 = phi i32 [ %111, %110 ], [ %124, %120 ]
  %127 = load i32, ptr %34, align 8, !tbaa !466
  %128 = add i32 %66, %127
  %129 = sext i32 %128 to i64
  %130 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %129) #17
  %131 = load i32, ptr %130, align 4, !tbaa !484
  %132 = icmp ne i32 %131, 2
  %133 = icmp eq i32 %128, %1
  %134 = or i1 %133, %132
  br i1 %134, label %140, label %135

135:                                              ; preds = %125
  %136 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2, i32 noundef %128) #17, !range !512
  %137 = icmp ult i32 %136, 4
  %138 = zext i1 %137 to i32
  %139 = add nsw i32 %126, %138
  br label %140

140:                                              ; preds = %135, %125
  %141 = phi i32 [ %126, %125 ], [ %139, %135 ]
  %142 = load i32, ptr %33, align 4, !tbaa !493
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = icmp sgt i32 %141, 1
  br i1 %145, label %149, label %148

146:                                              ; preds = %140
  %147 = icmp eq i32 %141, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %146, %144
  br label %149

149:                                              ; preds = %146, %144, %148
  %150 = phi i1 [ true, %148 ], [ false, %144 ], [ false, %146 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  br label %151

151:                                              ; preds = %18, %8, %4, %149
  %152 = phi i1 [ %150, %149 ], [ false, %4 ], [ false, %8 ], [ false, %18 ]
  ret i1 %152
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !762 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !492
  %5 = tail call noundef zeroext i1 @_ZN9FastBoard6is_eyeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %4, i32 noundef %1) #17
  %6 = xor i1 %5, true
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !763 {
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %4) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #17
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !466
  %7 = add nsw i32 %6, 2
  %8 = sdiv i32 %2, %7
  %9 = srem i32 %2, %7
  %10 = icmp slt i32 %2, 0
  %11 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %12 = load i32, ptr %11, align 4
  %13 = icmp slt i32 %12, %2
  %14 = select i1 %10, i1 true, i1 %13
  br i1 %14, label %25, label %15, !prof !764

15:                                               ; preds = %3
  %16 = icmp ult i32 %9, 9
  %17 = select i1 %16, i32 64, i32 65, !prof !765
  %18 = add nuw nsw i32 %17, %9
  %19 = trunc i32 %18 to i8
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %19) #17
          to label %21 unwind label %23

21:                                               ; preds = %15
  %22 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %8) #17
          to label %31 unwind label %23

23:                                               ; preds = %25, %31, %21, %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #19
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %4) #18
  resume { ptr, i32 } %24

25:                                               ; preds = %3
  %26 = icmp eq i32 %2, -2
  %27 = select i1 %26, ptr @.str.25, ptr @.str.26
  %28 = icmp eq i32 %2, -1
  %29 = select i1 %28, ptr @.str.24, ptr %27
  %30 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %29) #17
          to label %31 unwind label %23

31:                                               ; preds = %25, %21
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %4) #17
          to label %32 unwind label %23

32:                                               ; preds = %31
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #19
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard16move_to_text_sgfB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca %"class.std::__cxx11::basic_ostringstream", align 8
  call void @llvm.lifetime.start.p0(i64 376, ptr nonnull %4) #18
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #17
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !466
  %7 = add nsw i32 %6, 2
  %8 = sdiv i32 %2, %7
  %9 = srem i32 %2, %7
  %10 = sub i32 %6, %8
  %11 = icmp slt i32 %2, 0
  %12 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp slt i32 %13, %2
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = trunc i32 %9 to i8
  %18 = add i8 %17, 96
  %19 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %18) #17
          to label %20 unwind label %24

20:                                               ; preds = %16
  %21 = trunc i32 %10 to i8
  %22 = add i8 %21, 97
  %23 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %4, i8 noundef signext %22) #17
          to label %30 unwind label %24

24:                                               ; preds = %26, %30, %20, %16
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #19
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %4) #18
  resume { ptr, i32 } %25

26:                                               ; preds = %3
  %27 = icmp ugt i32 %2, -3
  %28 = select i1 %27, ptr @.str.29, ptr @.str.26
  %29 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %28) #17
          to label %30 unwind label %24

30:                                               ; preds = %26, %20
  invoke void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(112) %4) #17
          to label %31 unwind label %24

31:                                               ; preds = %30
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %4) #19
  call void @llvm.lifetime.end.p0(i64 376, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard9starpointEii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #14 align 2 !prof !725 {
  %3 = alloca [3 x i32], align 4
  %4 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = and i32 %0, 1
  %6 = icmp eq i32 %5, 0
  %7 = icmp slt i32 %0, 9
  %8 = or i1 %7, %6
  br i1 %8, label %39, label %9, !prof !766

9:                                                ; preds = %2
  %10 = icmp ugt i32 %0, 12
  %11 = select i1 %10, i32 3, i32 2
  store i32 %11, ptr %3, align 4, !tbaa !493
  %12 = lshr i32 %0, 1
  %13 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !493
  %14 = xor i32 %11, -1
  %15 = add nsw i32 %14, %0
  %16 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 2
  store i32 %15, ptr %16, align 4, !tbaa !493
  %17 = sdiv i32 %1, %0
  store i32 %17, ptr %4, align 4, !tbaa !493
  %18 = srem i32 %1, %0
  %19 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 1
  store i32 %18, ptr %19, align 4, !tbaa !493
  br label %20

20:                                               ; preds = %9, %28
  %21 = phi i1 [ true, %9 ], [ false, %28 ]
  %22 = phi i64 [ 0, %9 ], [ 1, %28 ]
  %23 = phi i32 [ 0, %9 ], [ %36, %28 ]
  %24 = getelementptr inbounds [2 x i32], ptr %4, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !493
  br label %29

26:                                               ; preds = %28
  %27 = icmp sgt i32 %36, 1
  br label %39

28:                                               ; preds = %29
  br i1 %21, label %20, label %26, !prof !767, !llvm.loop !768

29:                                               ; preds = %20, %29
  %30 = phi i64 [ 0, %20 ], [ %37, %29 ]
  %31 = phi i32 [ %23, %20 ], [ %36, %29 ]
  %32 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !493
  %34 = icmp eq i32 %25, %33
  %35 = zext i1 %34 to i32
  %36 = add nsw i32 %31, %35
  %37 = add nuw nsw i64 %30, 1
  %38 = icmp eq i64 %37, 3
  br i1 %38, label %28, label %29, !prof !769, !llvm.loop !770

39:                                               ; preds = %2, %26
  %40 = phi i1 [ %27, %26 ], [ false, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #18
  ret i1 %40
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !771 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 14
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %3, i64 noundef %4) #17
  %6 = load i32, ptr %5, align 4, !tbaa !493
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard13black_to_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #4 align 2 !prof !708 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !492
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #4 align 2 !prof !489 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !492
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard11get_groupidEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !489 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %3, i64 noundef %4) #17
  %6 = load i16, ptr %5, align 2, !tbaa !496
  %7 = zext i16 %6 to i32
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard17get_string_stonesEi(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  %6 = sext i32 %2 to i64
  %7 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %5, i64 noundef %6) #17
  %8 = load i16, ptr %7, align 2, !tbaa !496
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %9 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 9
  %10 = zext i16 %8 to i64
  %11 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %10) #17
  %12 = load i16, ptr %11, align 2, !tbaa !496
  %13 = zext i16 %12 to i64
  invoke void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %13) #17
          to label %14 unwind label %26

14:                                               ; preds = %3
  %15 = zext i16 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  store i32 %15, ptr %4, align 4, !tbaa !493
  %16 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 6
  br label %17

17:                                               ; preds = %18, %14
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
          to label %18 unwind label %28

18:                                               ; preds = %17
  %19 = load i32, ptr %4, align 4, !tbaa !493
  %20 = sext i32 %19 to i64
  %21 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %16, i64 noundef %20) #17
  %22 = load i16, ptr %21, align 2, !tbaa !496
  %23 = zext i16 %22 to i32
  store i32 %23, ptr %4, align 4, !tbaa !493
  %24 = icmp eq i16 %22, %8
  br i1 %24, label %25, label %17, !llvm.loop !772

25:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void

26:                                               ; preds = %3
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %17
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !773 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.30) #21
  unreachable

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %11 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #17
  %12 = load ptr, ptr %0, align 8, !tbaa !645
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !646
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %16 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %12, ptr noundef %14, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %15) #19
  %17 = load ptr, ptr %0, align 8, !tbaa !645
  %18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !654
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %17 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %17, i64 noundef %23) #17
  store ptr %11, ptr %0, align 8, !tbaa !645
  %24 = getelementptr inbounds i32, ptr %11, i64 %10
  store ptr %24, ptr %13, align 8, !tbaa !646
  %25 = getelementptr inbounds i32, ptr %11, i64 %1
  store ptr %25, ptr %18, align 8, !tbaa !654
  br label %26

26:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 !prof !774 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !646
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !654
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !775

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !646
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !646
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !773 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 !prof !773 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #19
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !776 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %3 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #19
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 !prof !777 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat !prof !777 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #19
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #19
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #19
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat !prof !777 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !778

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !774 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 !prof !779 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.31) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !645
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !646
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #17
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #19
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !606
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #19
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %20 = load ptr, ptr %19, align 8, !tbaa !606
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #19
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !654
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #17
  store ptr %12, ptr %0, align 8, !tbaa !645
  store ptr %22, ptr %8, align 8, !tbaa !646
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !654
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !774 {
  %4 = load i32, ptr %2, align 4, !tbaa !493
  store i32 %4, ptr %1, align 4, !tbaa !493
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat align 2 !prof !780 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !584
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !781

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #21
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %13 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store i64 %13, ptr %5, align 8, !tbaa !584
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %15 = load i64, ptr %14, align 8, !tbaa !584
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %17 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !781

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !781

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !782 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !606
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !783 {
  %3 = load i64, ptr %0, align 8, !tbaa !584
  %4 = load i64, ptr %1, align 8, !tbaa !584
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !784
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard10get_stringB5cxx11Ei(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  %5 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  %7 = sext i32 %2 to i64
  %8 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %6, i64 noundef %7) #17
  %9 = load i16, ptr %8, align 2, !tbaa !496
  %10 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 6
  br label %11

11:                                               ; preds = %17, %3
  %12 = phi i16 [ %9, %3 ], [ %20, %17 ]
  %13 = zext i16 %12 to i32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  invoke void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %13) #17
          to label %14 unwind label %25

14:                                               ; preds = %11
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13) #17
          to label %15 unwind label %27

15:                                               ; preds = %14
  %16 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #17
          to label %17 unwind label %29

17:                                               ; preds = %15
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  %18 = zext i16 %12 to i64
  %19 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %18) #17
  %20 = load i16, ptr %19, align 2, !tbaa !496
  %21 = icmp eq i16 %20, %9
  br i1 %21, label %22, label %11, !llvm.loop !785

22:                                               ; preds = %17
  %23 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %24 = add i64 %23, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %24) #17
          to label %39 unwind label %35

25:                                               ; preds = %11
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %33

27:                                               ; preds = %14
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %31

29:                                               ; preds = %15
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %28, %27 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  br label %37

35:                                               ; preds = %22
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %34, %33 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  resume { ptr, i32 } %38

39:                                               ; preds = %22
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) #17
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6 align 2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard13fast_in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !786 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %3, i64 noundef %4) #17
  %6 = load i16, ptr %5, align 2, !tbaa !496
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %8 = zext i16 %6 to i64
  %9 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %7, i64 noundef %8) #17
  %10 = load i16, ptr %9, align 2, !tbaa !496
  %11 = icmp eq i16 %10, 1
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !787 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = zext i16 %7 to i64
  %9 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %3, i64 noundef %8) #17
  %10 = load i16, ptr %9, align 2, !tbaa !496
  %11 = icmp ugt i16 %10, 1
  br i1 %11, label %38, label %12, !prof !788

12:                                               ; preds = %2
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %15

15:                                               ; preds = %12, %31
  %16 = phi i32 [ %36, %31 ], [ %1, %12 ]
  %17 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %16) #17, !range !512
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %22, !prof !789

19:                                               ; preds = %22
  %20 = add nuw nsw i64 %23, 1
  %21 = icmp eq i64 %20, 4
  br i1 %21, label %31, label %22, !prof !790, !llvm.loop !791

22:                                               ; preds = %15, %19
  %23 = phi i64 [ %20, %19 ], [ 0, %15 ]
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %13, i64 noundef %23) #17
  %25 = load i32, ptr %24, align 4, !tbaa !493
  %26 = add nsw i32 %25, %16
  %27 = sext i32 %26 to i64
  %28 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %27) #17
  %29 = load i32, ptr %28, align 4, !tbaa !484
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %38, label %19

31:                                               ; preds = %19, %15
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %33 = sext i32 %16 to i64
  %34 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %32, i64 noundef %33) #17
  %35 = load i16, ptr %34, align 2, !tbaa !496
  %36 = zext i16 %35 to i32
  %37 = icmp eq i32 %36, %1
  br i1 %37, label %38, label %15, !prof !792, !llvm.loop !793

38:                                               ; preds = %31, %22, %2
  %39 = phi i32 [ 0, %2 ], [ %26, %22 ], [ 0, %31 ]
  ret i32 %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(96) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 align 2 !prof !794 {
  %5 = alloca %"class.boost::array.4", align 4
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = sext i32 %1 to i64
  %8 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %7) #17
  %9 = load i32, ptr %8, align 4, !tbaa !484
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %16

16:                                               ; preds = %19, %4
  %17 = phi i32 [ 0, %4 ], [ %71, %19 ]
  %18 = phi i32 [ %1, %4 ], [ %23, %19 ]
  br label %25

19:                                               ; preds = %70
  %20 = sext i32 %18 to i64
  %21 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %20) #17
  %22 = load i16, ptr %21, align 2, !tbaa !496
  %23 = zext i16 %22 to i32
  %24 = icmp eq i32 %23, %1
  br i1 %24, label %74, label %16, !prof !795, !llvm.loop !796

25:                                               ; preds = %16, %70
  %26 = phi i64 [ 0, %16 ], [ %72, %70 ]
  %27 = phi i32 [ %17, %16 ], [ %71, %70 ]
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %13, i64 noundef %26) #17
  %29 = load i32, ptr %28, align 4, !tbaa !493
  %30 = add nsw i32 %29, %18
  %31 = sext i32 %30 to i64
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %31) #17
  %33 = load i32, ptr %32, align 4, !tbaa !484
  %34 = icmp eq i32 %33, %11
  br i1 %34, label %35, label %70, !prof !797

35:                                               ; preds = %25
  %36 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %14, i64 noundef %31) #17
  %37 = load i16, ptr %36, align 2, !tbaa !496
  %38 = zext i16 %37 to i32
  %39 = zext i16 %37 to i64
  %40 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %15, i64 noundef %39) #17
  %41 = load i16, ptr %40, align 2, !tbaa !496
  %42 = icmp ult i16 %41, 2
  %43 = icmp slt i32 %27, 4
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %70, !prof !798

45:                                               ; preds = %35
  %46 = icmp sgt i32 %27, 0
  br i1 %46, label %47, label %61, !prof !799

47:                                               ; preds = %45
  %48 = zext nneg i32 %27 to i64
  br label %52

49:                                               ; preds = %52
  %50 = and i8 %58, 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %70, !prof !800

52:                                               ; preds = %47, %52
  %53 = phi i64 [ 0, %47 ], [ %59, %52 ]
  %54 = phi i8 [ 0, %47 ], [ %58, %52 ]
  %55 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %53) #17
  %56 = load i32, ptr %55, align 4, !tbaa !493
  %57 = icmp eq i32 %56, %38
  %58 = select i1 %57, i8 1, i8 %54, !prof !801
  %59 = add nuw nsw i64 %53, 1
  %60 = icmp eq i64 %59, %48
  br i1 %60, label %49, label %52, !prof !802, !llvm.loop !803

61:                                               ; preds = %45, %49
  %62 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %30) #17
  %63 = load i32, ptr %3, align 4, !tbaa !493
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %3, align 4, !tbaa !493
  %65 = sext i32 %63 to i64
  %66 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %2, i64 noundef %65) #17
  store i32 %62, ptr %66, align 4, !tbaa !493
  %67 = add nsw i32 %27, 1
  %68 = sext i32 %27 to i64
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %68) #17
  store i32 %38, ptr %69, align 4, !tbaa !493
  br label %70

70:                                               ; preds = %35, %61, %49, %25
  %71 = phi i32 [ %27, %25 ], [ %27, %35 ], [ %27, %49 ], [ %67, %61 ]
  %72 = add nuw nsw i64 %26, 1
  %73 = icmp eq i64 %72, 4
  br i1 %73, label %19, label %25, !prof !804, !llvm.loop !805

74:                                               ; preds = %19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !806 {
  %3 = getelementptr inbounds [24 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard11saving_sizeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !489 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %3, %29
  %9 = phi i64 [ 0, %3 ], [ %30, %29 ]
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %9) #17
  %11 = load i32, ptr %10, align 4, !tbaa !493
  %12 = add nsw i32 %11, %2
  %13 = sext i32 %12 to i64
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %13) #17
  %15 = load i32, ptr %14, align 4, !tbaa !484
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %29

17:                                               ; preds = %8
  %18 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %6, i64 noundef %13) #17
  %19 = load i16, ptr %18, align 2, !tbaa !496
  %20 = zext i16 %19 to i64
  %21 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %7, i64 noundef %20) #17
  %22 = load i16, ptr %21, align 2, !tbaa !496
  %23 = icmp ult i16 %22, 2
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = tail call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %12) #17
  %26 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %25) #17
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = tail call noundef i32 @_ZN9FastBoard11string_sizeEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %12) #17, !range !807
  br label %32

29:                                               ; preds = %8, %17, %24
  %30 = add nuw nsw i64 %9, 1
  %31 = icmp eq i64 %30, 4
  br i1 %31, label %32, label %8, !llvm.loop !808

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %28, %27 ], [ 0, %29 ]
  ret i32 %33
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !809 {
  %4 = alloca %"class.boost::array.20", align 4
  %5 = alloca i32, align 4
  %6 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #17, !range !512
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %66, label %8, !prof !810

8:                                                ; preds = %3
  %9 = tail call noundef zeroext i1 @_ZN9FastBoard15kill_or_connectEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17
  br i1 %9, label %66, label %10, !prof !811

10:                                               ; preds = %8
  %11 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #17, !range !512
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %66, label %13, !prof !812

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  store i32 1, ptr %5, align 4, !tbaa !493
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm3EEixEm(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 noundef 0) #17
  store i32 %2, ptr %14, align 4, !tbaa !493
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  br label %16

16:                                               ; preds = %13, %60
  %17 = phi i64 [ 0, %13 ], [ %61, %60 ]
  %18 = phi i1 [ false, %13 ], [ %62, %60 ]
  %19 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %15, i64 noundef %17) #17
  %20 = load i32, ptr %19, align 4, !tbaa !493
  %21 = add nsw i32 %20, %2
  %22 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21) #17
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %44, !prof !813

24:                                               ; preds = %16
  %25 = load i32, ptr %5, align 4, !tbaa !493
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %32, label %39, !prof !814

27:                                               ; preds = %32
  %28 = add nuw nsw i64 %33, 1
  %29 = load i32, ptr %5, align 4, !tbaa !493
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %28, %30
  br i1 %31, label %32, label %37, !prof !815, !llvm.loop !816

32:                                               ; preds = %24, %27
  %33 = phi i64 [ %28, %27 ], [ 0, %24 ]
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm3EEixEm(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 noundef %33) #17
  %35 = load i32, ptr %34, align 4, !tbaa !493
  %36 = icmp eq i32 %35, %21
  br i1 %36, label %60, label %27, !prof !817

37:                                               ; preds = %27
  %38 = icmp sgt i32 %29, 1
  br i1 %38, label %64, label %39, !prof !818

39:                                               ; preds = %24, %37
  %40 = phi i32 [ %29, %37 ], [ %25, %24 ]
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %5, align 4, !tbaa !493
  %42 = sext i32 %40 to i64
  %43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm3EEixEm(ptr noundef nonnull align 4 dereferenceable(12) %4, i64 noundef %42) #17
  store i32 %21, ptr %43, align 4, !tbaa !493
  br label %60

44:                                               ; preds = %16
  %45 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21) #17
  %46 = icmp eq i32 %45, %1
  br i1 %46, label %47, label %60, !prof !819

47:                                               ; preds = %44
  %48 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %49 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %50 = sext i32 %21 to i64
  %51 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %48, i64 noundef %50) #17
  %52 = load i16, ptr %51, align 2, !tbaa !496
  %53 = zext i16 %52 to i64
  %54 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %49, i64 noundef %53) #17
  %55 = load i16, ptr %54, align 2, !tbaa !496
  %56 = icmp ugt i16 %55, 1
  br i1 %56, label %57, label %60, !prof !820

57:                                               ; preds = %47
  call void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %21, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) #17
  %58 = load i32, ptr %5, align 4, !tbaa !493
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %64, label %60, !prof !821

60:                                               ; preds = %32, %47, %57, %39, %44
  %61 = add nuw nsw i64 %17, 1
  %62 = icmp ugt i64 %17, 2
  %63 = icmp eq i64 %61, 4
  br i1 %63, label %64, label %16, !prof !822, !llvm.loop !823

64:                                               ; preds = %60, %37, %57
  %65 = phi i1 [ %62, %60 ], [ %18, %37 ], [ %18, %57 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #18
  br label %66

66:                                               ; preds = %10, %8, %3, %64
  %67 = phi i1 [ %65, %64 ], [ false, %3 ], [ false, %8 ], [ true, %10 ]
  ret i1 %67
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard11string_sizeEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !489 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 9
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = zext i16 %7 to i64
  %9 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %3, i64 noundef %8) #17
  %10 = load i16, ptr %9, align 2, !tbaa !496
  %11 = zext i16 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(96) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 align 2 !prof !824 {
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %12

11:                                               ; preds = %44
  ret void

12:                                               ; preds = %5, %44
  %13 = phi i64 [ 0, %5 ], [ %45, %44 ]
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %7, i64 noundef %13) #17
  %15 = load i32, ptr %14, align 4, !tbaa !493
  %16 = add nsw i32 %15, %2
  %17 = sext i32 %16 to i64
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %8, i64 noundef %17) #17
  %19 = load i32, ptr %18, align 4, !tbaa !484
  %20 = icmp eq i32 %19, %1
  br i1 %20, label %21, label %44, !prof !825

21:                                               ; preds = %12
  %22 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %17) #17
  %23 = load i16, ptr %22, align 2, !tbaa !496
  %24 = zext i16 %23 to i64
  %25 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %24) #17
  %26 = load i16, ptr %25, align 2, !tbaa !496
  %27 = icmp ult i16 %26, 2
  br i1 %27, label %28, label %44, !prof !826

28:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %29 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %16) #17
  store i32 %29, ptr %6, align 4, !tbaa !493
  %30 = load i32, ptr %4, align 4, !tbaa !493
  %31 = call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %29) #17
  br i1 %31, label %38, label %32, !prof !827

32:                                               ; preds = %28
  %33 = load i32, ptr %6, align 4, !tbaa !493
  %34 = load i32, ptr %4, align 4, !tbaa !493
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr %4, align 4, !tbaa !493
  %36 = sext i32 %34 to i64
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %3, i64 noundef %36) #17
  store i32 %33, ptr %37, align 4, !tbaa !493
  br label %38

38:                                               ; preds = %32, %28
  call void @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %16, ptr noundef nonnull align 4 dereferenceable(96) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  %39 = load i32, ptr %4, align 4, !tbaa !493
  %40 = icmp eq i32 %39, %30
  br i1 %40, label %41, label %43, !prof !828

41:                                               ; preds = %38
  %42 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 4 dereferenceable(4) %6) #17
  br label %43

43:                                               ; preds = %41, %38
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %44

44:                                               ; preds = %21, %43, %12
  %45 = add nuw nsw i64 %13, 1
  %46 = icmp eq i64 %45, 4
  br i1 %46, label %11, label %12, !prof !829, !llvm.loop !830
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard7get_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !489 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef %4) #17
  %6 = load i32, ptr %5, align 4, !tbaa !493
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !831 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13
  %4 = sext i32 %1 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef %4) #17
  %6 = load i32, ptr %5, align 4, !tbaa !493
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard15kill_or_connectEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !832 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %7

7:                                                ; preds = %3, %29
  %8 = phi i64 [ 0, %3 ], [ %30, %29 ]
  %9 = phi i1 [ true, %3 ], [ %31, %29 ]
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %8) #17
  %11 = load i32, ptr %10, align 4, !tbaa !493
  %12 = add nsw i32 %11, %2
  %13 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %12) #17
  %14 = sext i32 %12 to i64
  %15 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %6, i64 noundef %14) #17
  %16 = load i16, ptr %15, align 2, !tbaa !496
  %17 = zext i16 %16 to i64
  %18 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %5, i64 noundef %17) #17
  %19 = load i16, ptr %18, align 2, !tbaa !496
  %20 = icmp ult i16 %19, 2
  br i1 %20, label %21, label %25, !prof !833

21:                                               ; preds = %7
  %22 = icmp eq i32 %1, 0
  %23 = zext i1 %22 to i32
  %24 = icmp eq i32 %13, %23
  br i1 %24, label %33, label %29, !prof !834

25:                                               ; preds = %7
  %26 = icmp ne i16 %19, 2
  %27 = icmp eq i32 %13, %1
  %28 = and i1 %27, %26
  br i1 %28, label %33, label %29, !prof !835

29:                                               ; preds = %21, %25
  %30 = add nuw nsw i64 %8, 1
  %31 = icmp ult i64 %8, 3
  %32 = icmp eq i64 %30, 4
  br i1 %32, label %33, label %7, !prof !836, !llvm.loop !837

33:                                               ; preds = %25, %21, %29
  %34 = phi i1 [ %9, %25 ], [ %9, %21 ], [ %31, %29 ]
  ret i1 %34
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm3EEixEm(ptr noundef nonnull align 4 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !838 {
  %3 = getelementptr inbounds [3 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !839 {
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = sext i32 %1 to i64
  %7 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %6) #17
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %48, %4
  %11 = phi i32 [ %1, %4 ], [ %52, %48 ]
  %12 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %11) #17, !range !512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14, !prof !840

14:                                               ; preds = %10, %45
  %15 = phi i64 [ %46, %45 ], [ 0, %10 ]
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %15) #17
  %17 = load i32, ptr %16, align 4, !tbaa !493
  %18 = add nsw i32 %17, %11
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %19) #17
  %21 = load i32, ptr %20, align 4, !tbaa !484
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %45, !prof !841

23:                                               ; preds = %14
  %24 = load i32, ptr %3, align 4, !tbaa !493
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %33, label %26, !prof !842

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  br label %38

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = load i32, ptr %3, align 4, !tbaa !493
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %38, !prof !843, !llvm.loop !844

33:                                               ; preds = %23, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %23 ]
  %35 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm3EEixEm(ptr noundef nonnull align 4 dereferenceable(12) %2, i64 noundef %34) #17
  %36 = load i32, ptr %35, align 4, !tbaa !493
  %37 = icmp eq i32 %36, %18
  br i1 %37, label %45, label %28, !prof !845

38:                                               ; preds = %28, %26
  %39 = phi i64 [ %27, %26 ], [ %31, %28 ]
  %40 = phi i32 [ %24, %26 ], [ %30, %28 ]
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %3, align 4, !tbaa !493
  %42 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm3EEixEm(ptr noundef nonnull align 4 dereferenceable(12) %2, i64 noundef %39) #17
  store i32 %18, ptr %42, align 4, !tbaa !493
  %43 = load i32, ptr %3, align 4, !tbaa !493
  %44 = icmp sgt i32 %43, 2
  br i1 %44, label %54, label %45, !prof !846

45:                                               ; preds = %33, %38, %14
  %46 = add nuw nsw i64 %15, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %14, !prof !847, !llvm.loop !848

48:                                               ; preds = %45, %10
  %49 = sext i32 %11 to i64
  %50 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %49) #17
  %51 = load i16, ptr %50, align 2, !tbaa !496
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %54, label %10, !prof !849, !llvm.loop !850

54:                                               ; preds = %48, %38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard16get_pattern_fastEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !489 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %4 = load i32, ptr %3, align 8, !tbaa !466
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = sub nsw i32 %1, %4
  %7 = add nsw i32 %6, -2
  %8 = add nsw i32 %6, -3
  %9 = sext i32 %8 to i64
  %10 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %9) #17
  %11 = load i32, ptr %10, align 4, !tbaa !484
  %12 = shl i32 %11, 14
  %13 = sext i32 %7 to i64
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %13) #17
  %15 = load i32, ptr %14, align 4, !tbaa !484
  %16 = shl i32 %15, 12
  %17 = or i32 %16, %12
  %18 = add nsw i32 %6, -1
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %19) #17
  %21 = load i32, ptr %20, align 4, !tbaa !484
  %22 = shl i32 %21, 10
  %23 = or i32 %17, %22
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %25) #17
  %27 = load i32, ptr %26, align 4, !tbaa !484
  %28 = shl i32 %27, 8
  %29 = or i32 %23, %28
  %30 = add nsw i32 %1, 1
  %31 = sext i32 %30 to i64
  %32 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %31) #17
  %33 = load i32, ptr %32, align 4, !tbaa !484
  %34 = shl i32 %33, 6
  %35 = or i32 %29, %34
  %36 = add nsw i32 %4, %1
  %37 = add nsw i32 %36, 2
  %38 = add nsw i32 %36, 1
  %39 = sext i32 %38 to i64
  %40 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %39) #17
  %41 = load i32, ptr %40, align 4, !tbaa !484
  %42 = shl i32 %41, 4
  %43 = or i32 %35, %42
  %44 = sext i32 %37 to i64
  %45 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %44) #17
  %46 = load i32, ptr %45, align 4, !tbaa !484
  %47 = shl i32 %46, 2
  %48 = or i32 %43, %47
  %49 = add nsw i32 %36, 3
  %50 = sext i32 %49 to i64
  %51 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %50) #17
  %52 = load i32, ptr %51, align 4, !tbaa !484
  %53 = or i32 %48, %52
  ret i32 %53
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !851 {
  %3 = alloca %"class.boost::array.21", align 4
  %4 = alloca %"class.boost::array.4", align 4
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !466
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %8 = sub nsw i32 %1, %6
  %9 = add nsw i32 %8, -2
  %10 = add nsw i32 %8, -3
  %11 = sext i32 %10 to i64
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %11) #17
  %13 = load i32, ptr %12, align 4, !tbaa !484
  %14 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 0) #17
  store i32 %13, ptr %14, align 4, !tbaa !484
  %15 = sext i32 %9 to i64
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %15) #17
  %17 = load i32, ptr %16, align 4, !tbaa !484
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 1) #17
  store i32 %17, ptr %18, align 4, !tbaa !484
  %19 = add nsw i32 %8, -1
  %20 = sext i32 %19 to i64
  %21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %20) #17
  %22 = load i32, ptr %21, align 4, !tbaa !484
  %23 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 2) #17
  store i32 %22, ptr %23, align 4, !tbaa !484
  %24 = add nsw i32 %1, -1
  %25 = sext i32 %24 to i64
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %25) #17
  %27 = load i32, ptr %26, align 4, !tbaa !484
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 3) #17
  store i32 %27, ptr %28, align 4, !tbaa !484
  %29 = add nsw i32 %1, 1
  %30 = sext i32 %29 to i64
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %30) #17
  %32 = load i32, ptr %31, align 4, !tbaa !484
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 4) #17
  store i32 %32, ptr %33, align 4, !tbaa !484
  %34 = add nsw i32 %6, %1
  %35 = add nsw i32 %34, 2
  %36 = add nsw i32 %34, 1
  %37 = sext i32 %36 to i64
  %38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %37) #17
  %39 = load i32, ptr %38, align 4, !tbaa !484
  %40 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 5) #17
  store i32 %39, ptr %40, align 4, !tbaa !484
  %41 = sext i32 %35 to i64
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %41) #17
  %43 = load i32, ptr %42, align 4, !tbaa !484
  %44 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 6) #17
  store i32 %43, ptr %44, align 4, !tbaa !484
  %45 = add nsw i32 %34, 3
  %46 = sext i32 %45 to i64
  %47 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %46) #17
  %48 = load i32, ptr %47, align 4, !tbaa !484
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 7) #17
  store i32 %48, ptr %49, align 4, !tbaa !484
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 0) #17
  %51 = load i32, ptr %50, align 4, !tbaa !484
  %52 = shl i32 %51, 14
  %53 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 1) #17
  %54 = load i32, ptr %53, align 4, !tbaa !484
  %55 = shl i32 %54, 12
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 2) #17
  %57 = load i32, ptr %56, align 4, !tbaa !484
  %58 = shl i32 %57, 10
  %59 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 3) #17
  %60 = load i32, ptr %59, align 4, !tbaa !484
  %61 = shl i32 %60, 8
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 4) #17
  %63 = load i32, ptr %62, align 4, !tbaa !484
  %64 = shl i32 %63, 6
  %65 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 5) #17
  %66 = load i32, ptr %65, align 4, !tbaa !484
  %67 = shl i32 %66, 4
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 6) #17
  %69 = load i32, ptr %68, align 4, !tbaa !484
  %70 = shl i32 %69, 2
  %71 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %3, i64 noundef 7) #17
  %72 = load i32, ptr %71, align 4, !tbaa !484
  %73 = call noundef zeroext i1 @_ZN9FastBoard13fast_in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %9) #17
  %74 = zext i1 %73 to i32
  %75 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 0) #17
  store i32 %74, ptr %75, align 4, !tbaa !493
  %76 = call noundef zeroext i1 @_ZN9FastBoard13fast_in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %24) #17
  %77 = zext i1 %76 to i32
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 1) #17
  store i32 %77, ptr %78, align 4, !tbaa !493
  %79 = call noundef zeroext i1 @_ZN9FastBoard13fast_in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %29) #17
  %80 = zext i1 %79 to i32
  %81 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 2) #17
  store i32 %80, ptr %81, align 4, !tbaa !493
  %82 = call noundef zeroext i1 @_ZN9FastBoard13fast_in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %35) #17
  %83 = zext i1 %82 to i32
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 3) #17
  store i32 %83, ptr %84, align 4, !tbaa !493
  %85 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 0) #17
  %86 = load i32, ptr %85, align 4, !tbaa !493
  %87 = shl i32 %86, 19
  %88 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 1) #17
  %89 = load i32, ptr %88, align 4, !tbaa !493
  %90 = shl i32 %89, 18
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 2) #17
  %92 = load i32, ptr %91, align 4, !tbaa !493
  %93 = shl i32 %92, 17
  %94 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 3) #17
  %95 = load i32, ptr %94, align 4, !tbaa !493
  %96 = shl i32 %95, 16
  %97 = or i32 %55, %52
  %98 = or i32 %97, %58
  %99 = or i32 %98, %61
  %100 = or i32 %99, %64
  %101 = or i32 %100, %67
  %102 = or i32 %101, %70
  %103 = or i32 %102, %72
  %104 = or i32 %103, %87
  %105 = or i32 %104, %90
  %106 = or i32 %105, %93
  %107 = or i32 %106, %96
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  ret i32 %107
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !852 {
  %3 = getelementptr inbounds [8 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard12get_pattern3Eib(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !489 {
  %4 = alloca %"class.boost::array.21", align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !466
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %16 = sub nsw i32 %1, %14
  %17 = add nsw i32 %16, -2
  %18 = add nsw i32 %16, -3
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %19) #17
  %21 = load i32, ptr %20, align 4, !tbaa !484
  %22 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  store i32 %21, ptr %22, align 4, !tbaa !484
  %23 = sext i32 %17 to i64
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %23) #17
  %25 = load i32, ptr %24, align 4, !tbaa !484
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  store i32 %25, ptr %26, align 4, !tbaa !484
  %27 = add nsw i32 %16, -1
  %28 = sext i32 %27 to i64
  %29 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %28) #17
  %30 = load i32, ptr %29, align 4, !tbaa !484
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  store i32 %30, ptr %31, align 4, !tbaa !484
  %32 = add nsw i32 %1, -1
  %33 = sext i32 %32 to i64
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %33) #17
  %35 = load i32, ptr %34, align 4, !tbaa !484
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  store i32 %35, ptr %36, align 4, !tbaa !484
  %37 = add nsw i32 %1, 1
  %38 = sext i32 %37 to i64
  %39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %38) #17
  %40 = load i32, ptr %39, align 4, !tbaa !484
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  store i32 %40, ptr %41, align 4, !tbaa !484
  %42 = add nsw i32 %14, %1
  %43 = add nsw i32 %42, 2
  %44 = add nsw i32 %42, 1
  %45 = sext i32 %44 to i64
  %46 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %45) #17
  %47 = load i32, ptr %46, align 4, !tbaa !484
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  store i32 %47, ptr %48, align 4, !tbaa !484
  %49 = sext i32 %43 to i64
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %49) #17
  %51 = load i32, ptr %50, align 4, !tbaa !484
  %52 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  store i32 %51, ptr %52, align 4, !tbaa !484
  %53 = add nsw i32 %42, 3
  %54 = sext i32 %53 to i64
  %55 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %54) #17
  %56 = load i32, ptr %55, align 4, !tbaa !484
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  store i32 %56, ptr %57, align 4, !tbaa !484
  br i1 %2, label %58, label %74

58:                                               ; preds = %3
  %59 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() #17
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %58, %61
  %62 = phi i64 [ %71, %61 ], [ 0, %58 ]
  %63 = phi i32 [ %70, %61 ], [ 0, %58 ]
  %64 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef %62) #17
  %65 = load i32, ptr %64, align 4, !tbaa !484
  %66 = zext i32 %65 to i64
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) @_ZN9FastBoard9s_cinvertE, i64 noundef %66) #17
  %68 = load i32, ptr %67, align 4, !tbaa !484
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef %62) #17
  store i32 %68, ptr %69, align 4, !tbaa !484
  %70 = add i32 %63, 1
  %71 = zext i32 %70 to i64
  %72 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() #17
  %73 = icmp ugt i64 %72, %71
  br i1 %73, label %61, label %74, !llvm.loop !853

74:                                               ; preds = %61, %58, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  %75 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %76 = load i32, ptr %75, align 4, !tbaa !484
  %77 = shl i32 %76, 14
  %78 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %79 = load i32, ptr %78, align 4, !tbaa !484
  %80 = shl i32 %79, 12
  %81 = or i32 %80, %77
  %82 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %83 = load i32, ptr %82, align 4, !tbaa !484
  %84 = shl i32 %83, 10
  %85 = or i32 %81, %84
  %86 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %87 = load i32, ptr %86, align 4, !tbaa !484
  %88 = shl i32 %87, 8
  %89 = or i32 %85, %88
  %90 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %91 = load i32, ptr %90, align 4, !tbaa !484
  %92 = shl i32 %91, 6
  %93 = or i32 %89, %92
  %94 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %95 = load i32, ptr %94, align 4, !tbaa !484
  %96 = shl i32 %95, 4
  %97 = or i32 %93, %96
  %98 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %99 = load i32, ptr %98, align 4, !tbaa !484
  %100 = shl i32 %99, 2
  %101 = or i32 %97, %100
  %102 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %103 = load i32, ptr %102, align 4, !tbaa !484
  %104 = or i32 %101, %103
  store i32 %104, ptr %5, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %105 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %106 = load i32, ptr %105, align 4, !tbaa !484
  %107 = shl i32 %106, 14
  %108 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %109 = load i32, ptr %108, align 4, !tbaa !484
  %110 = shl i32 %109, 12
  %111 = or i32 %110, %107
  %112 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %113 = load i32, ptr %112, align 4, !tbaa !484
  %114 = shl i32 %113, 10
  %115 = or i32 %111, %114
  %116 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %117 = load i32, ptr %116, align 4, !tbaa !484
  %118 = shl i32 %117, 8
  %119 = or i32 %115, %118
  %120 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %121 = load i32, ptr %120, align 4, !tbaa !484
  %122 = shl i32 %121, 6
  %123 = or i32 %119, %122
  %124 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %125 = load i32, ptr %124, align 4, !tbaa !484
  %126 = shl i32 %125, 4
  %127 = or i32 %123, %126
  %128 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %129 = load i32, ptr %128, align 4, !tbaa !484
  %130 = shl i32 %129, 2
  %131 = or i32 %127, %130
  %132 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %133 = load i32, ptr %132, align 4, !tbaa !484
  %134 = or i32 %131, %133
  store i32 %134, ptr %6, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %135 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %136 = load i32, ptr %135, align 4, !tbaa !484
  %137 = shl i32 %136, 14
  %138 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %139 = load i32, ptr %138, align 4, !tbaa !484
  %140 = shl i32 %139, 12
  %141 = or i32 %140, %137
  %142 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %143 = load i32, ptr %142, align 4, !tbaa !484
  %144 = shl i32 %143, 10
  %145 = or i32 %141, %144
  %146 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %147 = load i32, ptr %146, align 4, !tbaa !484
  %148 = shl i32 %147, 8
  %149 = or i32 %145, %148
  %150 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %151 = load i32, ptr %150, align 4, !tbaa !484
  %152 = shl i32 %151, 6
  %153 = or i32 %149, %152
  %154 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %155 = load i32, ptr %154, align 4, !tbaa !484
  %156 = shl i32 %155, 4
  %157 = or i32 %153, %156
  %158 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %159 = load i32, ptr %158, align 4, !tbaa !484
  %160 = shl i32 %159, 2
  %161 = or i32 %157, %160
  %162 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %163 = load i32, ptr %162, align 4, !tbaa !484
  %164 = or i32 %161, %163
  store i32 %164, ptr %7, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %165 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %166 = load i32, ptr %165, align 4, !tbaa !484
  %167 = shl i32 %166, 14
  %168 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %169 = load i32, ptr %168, align 4, !tbaa !484
  %170 = shl i32 %169, 12
  %171 = or i32 %170, %167
  %172 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %173 = load i32, ptr %172, align 4, !tbaa !484
  %174 = shl i32 %173, 10
  %175 = or i32 %171, %174
  %176 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %177 = load i32, ptr %176, align 4, !tbaa !484
  %178 = shl i32 %177, 8
  %179 = or i32 %175, %178
  %180 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %181 = load i32, ptr %180, align 4, !tbaa !484
  %182 = shl i32 %181, 6
  %183 = or i32 %179, %182
  %184 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %185 = load i32, ptr %184, align 4, !tbaa !484
  %186 = shl i32 %185, 4
  %187 = or i32 %183, %186
  %188 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %189 = load i32, ptr %188, align 4, !tbaa !484
  %190 = shl i32 %189, 2
  %191 = or i32 %187, %190
  %192 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %193 = load i32, ptr %192, align 4, !tbaa !484
  %194 = or i32 %191, %193
  store i32 %194, ptr %8, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %195 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %196 = load i32, ptr %195, align 4, !tbaa !484
  %197 = shl i32 %196, 14
  %198 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %199 = load i32, ptr %198, align 4, !tbaa !484
  %200 = shl i32 %199, 12
  %201 = or i32 %200, %197
  %202 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %203 = load i32, ptr %202, align 4, !tbaa !484
  %204 = shl i32 %203, 10
  %205 = or i32 %201, %204
  %206 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %207 = load i32, ptr %206, align 4, !tbaa !484
  %208 = shl i32 %207, 8
  %209 = or i32 %205, %208
  %210 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %211 = load i32, ptr %210, align 4, !tbaa !484
  %212 = shl i32 %211, 6
  %213 = or i32 %209, %212
  %214 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %215 = load i32, ptr %214, align 4, !tbaa !484
  %216 = shl i32 %215, 4
  %217 = or i32 %213, %216
  %218 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %219 = load i32, ptr %218, align 4, !tbaa !484
  %220 = shl i32 %219, 2
  %221 = or i32 %217, %220
  %222 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %223 = load i32, ptr %222, align 4, !tbaa !484
  %224 = or i32 %221, %223
  store i32 %224, ptr %9, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %225 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %226 = load i32, ptr %225, align 4, !tbaa !484
  %227 = shl i32 %226, 14
  %228 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %229 = load i32, ptr %228, align 4, !tbaa !484
  %230 = shl i32 %229, 12
  %231 = or i32 %230, %227
  %232 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %233 = load i32, ptr %232, align 4, !tbaa !484
  %234 = shl i32 %233, 10
  %235 = or i32 %231, %234
  %236 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %237 = load i32, ptr %236, align 4, !tbaa !484
  %238 = shl i32 %237, 8
  %239 = or i32 %235, %238
  %240 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %241 = load i32, ptr %240, align 4, !tbaa !484
  %242 = shl i32 %241, 6
  %243 = or i32 %239, %242
  %244 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %245 = load i32, ptr %244, align 4, !tbaa !484
  %246 = shl i32 %245, 4
  %247 = or i32 %243, %246
  %248 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %249 = load i32, ptr %248, align 4, !tbaa !484
  %250 = shl i32 %249, 2
  %251 = or i32 %247, %250
  %252 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %253 = load i32, ptr %252, align 4, !tbaa !484
  %254 = or i32 %251, %253
  store i32 %254, ptr %10, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %255 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %256 = load i32, ptr %255, align 4, !tbaa !484
  %257 = shl i32 %256, 14
  %258 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %259 = load i32, ptr %258, align 4, !tbaa !484
  %260 = shl i32 %259, 12
  %261 = or i32 %260, %257
  %262 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %263 = load i32, ptr %262, align 4, !tbaa !484
  %264 = shl i32 %263, 10
  %265 = or i32 %261, %264
  %266 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %267 = load i32, ptr %266, align 4, !tbaa !484
  %268 = shl i32 %267, 8
  %269 = or i32 %265, %268
  %270 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %271 = load i32, ptr %270, align 4, !tbaa !484
  %272 = shl i32 %271, 6
  %273 = or i32 %269, %272
  %274 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %275 = load i32, ptr %274, align 4, !tbaa !484
  %276 = shl i32 %275, 4
  %277 = or i32 %273, %276
  %278 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %279 = load i32, ptr %278, align 4, !tbaa !484
  %280 = shl i32 %279, 2
  %281 = or i32 %277, %280
  %282 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %283 = load i32, ptr %282, align 4, !tbaa !484
  %284 = or i32 %281, %283
  store i32 %284, ptr %11, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  %285 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %286 = load i32, ptr %285, align 4, !tbaa !484
  %287 = shl i32 %286, 14
  %288 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %289 = load i32, ptr %288, align 4, !tbaa !484
  %290 = shl i32 %289, 12
  %291 = or i32 %290, %287
  %292 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %293 = load i32, ptr %292, align 4, !tbaa !484
  %294 = shl i32 %293, 10
  %295 = or i32 %291, %294
  %296 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %297 = load i32, ptr %296, align 4, !tbaa !484
  %298 = shl i32 %297, 8
  %299 = or i32 %295, %298
  %300 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %301 = load i32, ptr %300, align 4, !tbaa !484
  %302 = shl i32 %301, 6
  %303 = or i32 %299, %302
  %304 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %305 = load i32, ptr %304, align 4, !tbaa !484
  %306 = shl i32 %305, 4
  %307 = or i32 %303, %306
  %308 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %309 = load i32, ptr %308, align 4, !tbaa !484
  %310 = shl i32 %309, 2
  %311 = or i32 %307, %310
  %312 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %313 = load i32, ptr %312, align 4, !tbaa !484
  %314 = or i32 %311, %313
  store i32 %314, ptr %12, align 4, !tbaa !493
  %315 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #17
  %316 = load i32, ptr %315, align 4, !tbaa !493
  store i32 %316, ptr %5, align 4, !tbaa !493
  %317 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #17
  %318 = load i32, ptr %317, align 4, !tbaa !493
  store i32 %318, ptr %7, align 4, !tbaa !493
  %319 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #17
  %320 = load i32, ptr %319, align 4, !tbaa !493
  store i32 %320, ptr %9, align 4, !tbaa !493
  %321 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12) #17
  %322 = load i32, ptr %321, align 4, !tbaa !493
  store i32 %322, ptr %11, align 4, !tbaa !493
  %323 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %7) #17
  %324 = load i32, ptr %323, align 4, !tbaa !493
  store i32 %324, ptr %5, align 4, !tbaa !493
  %325 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %11) #17
  %326 = load i32, ptr %325, align 4, !tbaa !493
  store i32 %326, ptr %9, align 4, !tbaa !493
  %327 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %9) #17
  %328 = load i32, ptr %327, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret i32 %328
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() local_unnamed_addr #6 comdat align 2 !prof !854 {
  ret i64 8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !855 {
  %3 = getelementptr inbounds [4 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat !prof !856 {
  %3 = load i32, ptr %1, align 4, !tbaa !493
  %4 = load i32, ptr %0, align 4, !tbaa !493
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !857
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard20get_pattern3_augmentEib(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !489 {
  %4 = alloca %"class.boost::array.21", align 4
  %5 = alloca %"class.boost::array.4", align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #18
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !466
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %17 = sub nsw i32 %1, %15
  %18 = add nsw i32 %17, -2
  %19 = add nsw i32 %17, -3
  %20 = sext i32 %19 to i64
  %21 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %20) #17
  %22 = load i32, ptr %21, align 4, !tbaa !484
  %23 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  store i32 %22, ptr %23, align 4, !tbaa !484
  %24 = sext i32 %18 to i64
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %24) #17
  %26 = load i32, ptr %25, align 4, !tbaa !484
  %27 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  store i32 %26, ptr %27, align 4, !tbaa !484
  %28 = add nsw i32 %17, -1
  %29 = sext i32 %28 to i64
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %29) #17
  %31 = load i32, ptr %30, align 4, !tbaa !484
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  store i32 %31, ptr %32, align 4, !tbaa !484
  %33 = add nsw i32 %1, -1
  %34 = sext i32 %33 to i64
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %34) #17
  %36 = load i32, ptr %35, align 4, !tbaa !484
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  store i32 %36, ptr %37, align 4, !tbaa !484
  %38 = add nsw i32 %1, 1
  %39 = sext i32 %38 to i64
  %40 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %39) #17
  %41 = load i32, ptr %40, align 4, !tbaa !484
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  store i32 %41, ptr %42, align 4, !tbaa !484
  %43 = add nsw i32 %15, %1
  %44 = add nsw i32 %43, 2
  %45 = add nsw i32 %43, 1
  %46 = sext i32 %45 to i64
  %47 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %46) #17
  %48 = load i32, ptr %47, align 4, !tbaa !484
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  store i32 %48, ptr %49, align 4, !tbaa !484
  %50 = sext i32 %44 to i64
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %50) #17
  %52 = load i32, ptr %51, align 4, !tbaa !484
  %53 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  store i32 %52, ptr %53, align 4, !tbaa !484
  %54 = add nsw i32 %43, 3
  %55 = sext i32 %54 to i64
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %16, i64 noundef %55) #17
  %57 = load i32, ptr %56, align 4, !tbaa !484
  %58 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  store i32 %57, ptr %58, align 4, !tbaa !484
  %59 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %60 = load i32, ptr %59, align 4, !tbaa !484
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %66, label %62

62:                                               ; preds = %3
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %64 = load i32, ptr %63, align 4, !tbaa !484
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62, %3
  %67 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %18) #17
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i32
  br label %70

70:                                               ; preds = %62, %66
  %71 = phi i32 [ %69, %66 ], [ 0, %62 ]
  %72 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  store i32 %71, ptr %72, align 4, !tbaa !493
  %73 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %74 = load i32, ptr %73, align 4, !tbaa !484
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %80, label %76

76:                                               ; preds = %70
  %77 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %78 = load i32, ptr %77, align 4, !tbaa !484
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %76, %70
  %81 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %33) #17
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  br label %84

84:                                               ; preds = %76, %80
  %85 = phi i32 [ %83, %80 ], [ 0, %76 ]
  %86 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  store i32 %85, ptr %86, align 4, !tbaa !493
  %87 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %88 = load i32, ptr %87, align 4, !tbaa !484
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %94, label %90

90:                                               ; preds = %84
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %92 = load i32, ptr %91, align 4, !tbaa !484
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90, %84
  %95 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %38) #17
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i32
  br label %98

98:                                               ; preds = %90, %94
  %99 = phi i32 [ %97, %94 ], [ 0, %90 ]
  %100 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  store i32 %99, ptr %100, align 4, !tbaa !493
  %101 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %102 = load i32, ptr %101, align 4, !tbaa !484
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %108, label %104

104:                                              ; preds = %98
  %105 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %106 = load i32, ptr %105, align 4, !tbaa !484
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104, %98
  %109 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %44) #17
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i32
  br label %112

112:                                              ; preds = %104, %108
  %113 = phi i32 [ %111, %108 ], [ 0, %104 ]
  %114 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  store i32 %113, ptr %114, align 4, !tbaa !493
  br i1 %2, label %115, label %131

115:                                              ; preds = %112
  %116 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() #17
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %131, label %118

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %128, %118 ], [ 0, %115 ]
  %120 = phi i32 [ %127, %118 ], [ 0, %115 ]
  %121 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef %119) #17
  %122 = load i32, ptr %121, align 4, !tbaa !484
  %123 = zext i32 %122 to i64
  %124 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) @_ZN9FastBoard9s_cinvertE, i64 noundef %123) #17
  %125 = load i32, ptr %124, align 4, !tbaa !484
  %126 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef %119) #17
  store i32 %125, ptr %126, align 4, !tbaa !484
  %127 = add i32 %120, 1
  %128 = zext i32 %127 to i64
  %129 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() #17
  %130 = icmp ugt i64 %129, %128
  br i1 %130, label %118, label %131, !llvm.loop !858

131:                                              ; preds = %118, %115, %112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %132 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %133 = load i32, ptr %132, align 4, !tbaa !484
  %134 = shl i32 %133, 14
  %135 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %136 = load i32, ptr %135, align 4, !tbaa !484
  %137 = shl i32 %136, 12
  %138 = or i32 %137, %134
  %139 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %140 = load i32, ptr %139, align 4, !tbaa !484
  %141 = shl i32 %140, 10
  %142 = or i32 %138, %141
  %143 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %144 = load i32, ptr %143, align 4, !tbaa !484
  %145 = shl i32 %144, 8
  %146 = or i32 %142, %145
  %147 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %148 = load i32, ptr %147, align 4, !tbaa !484
  %149 = shl i32 %148, 6
  %150 = or i32 %146, %149
  %151 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %152 = load i32, ptr %151, align 4, !tbaa !484
  %153 = shl i32 %152, 4
  %154 = or i32 %150, %153
  %155 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %156 = load i32, ptr %155, align 4, !tbaa !484
  %157 = shl i32 %156, 2
  %158 = or i32 %154, %157
  %159 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %160 = load i32, ptr %159, align 4, !tbaa !484
  %161 = or i32 %158, %160
  %162 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %163 = load i32, ptr %162, align 4, !tbaa !493
  %164 = shl i32 %163, 19
  %165 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %166 = load i32, ptr %165, align 4, !tbaa !493
  %167 = shl i32 %166, 18
  %168 = or i32 %167, %164
  %169 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %170 = load i32, ptr %169, align 4, !tbaa !493
  %171 = shl i32 %170, 17
  %172 = or i32 %168, %171
  %173 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %174 = load i32, ptr %173, align 4, !tbaa !493
  %175 = shl i32 %174, 16
  %176 = or i32 %172, %175
  %177 = or i32 %176, %161
  store i32 %177, ptr %6, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %178 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %179 = load i32, ptr %178, align 4, !tbaa !484
  %180 = shl i32 %179, 14
  %181 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %182 = load i32, ptr %181, align 4, !tbaa !484
  %183 = shl i32 %182, 12
  %184 = or i32 %183, %180
  %185 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %186 = load i32, ptr %185, align 4, !tbaa !484
  %187 = shl i32 %186, 10
  %188 = or i32 %184, %187
  %189 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %190 = load i32, ptr %189, align 4, !tbaa !484
  %191 = shl i32 %190, 8
  %192 = or i32 %188, %191
  %193 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %194 = load i32, ptr %193, align 4, !tbaa !484
  %195 = shl i32 %194, 6
  %196 = or i32 %192, %195
  %197 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %198 = load i32, ptr %197, align 4, !tbaa !484
  %199 = shl i32 %198, 4
  %200 = or i32 %196, %199
  %201 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %202 = load i32, ptr %201, align 4, !tbaa !484
  %203 = shl i32 %202, 2
  %204 = or i32 %200, %203
  %205 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %206 = load i32, ptr %205, align 4, !tbaa !484
  %207 = or i32 %204, %206
  %208 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %209 = load i32, ptr %208, align 4, !tbaa !493
  %210 = shl i32 %209, 19
  %211 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %212 = load i32, ptr %211, align 4, !tbaa !493
  %213 = shl i32 %212, 18
  %214 = or i32 %213, %210
  %215 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %216 = load i32, ptr %215, align 4, !tbaa !493
  %217 = shl i32 %216, 17
  %218 = or i32 %214, %217
  %219 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %220 = load i32, ptr %219, align 4, !tbaa !493
  %221 = shl i32 %220, 16
  %222 = or i32 %218, %221
  %223 = or i32 %222, %207
  store i32 %223, ptr %7, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %224 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %225 = load i32, ptr %224, align 4, !tbaa !484
  %226 = shl i32 %225, 14
  %227 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %228 = load i32, ptr %227, align 4, !tbaa !484
  %229 = shl i32 %228, 12
  %230 = or i32 %229, %226
  %231 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %232 = load i32, ptr %231, align 4, !tbaa !484
  %233 = shl i32 %232, 10
  %234 = or i32 %230, %233
  %235 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %236 = load i32, ptr %235, align 4, !tbaa !484
  %237 = shl i32 %236, 8
  %238 = or i32 %234, %237
  %239 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %240 = load i32, ptr %239, align 4, !tbaa !484
  %241 = shl i32 %240, 6
  %242 = or i32 %238, %241
  %243 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %244 = load i32, ptr %243, align 4, !tbaa !484
  %245 = shl i32 %244, 4
  %246 = or i32 %242, %245
  %247 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %248 = load i32, ptr %247, align 4, !tbaa !484
  %249 = shl i32 %248, 2
  %250 = or i32 %246, %249
  %251 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %252 = load i32, ptr %251, align 4, !tbaa !484
  %253 = or i32 %250, %252
  %254 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %255 = load i32, ptr %254, align 4, !tbaa !493
  %256 = shl i32 %255, 19
  %257 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %258 = load i32, ptr %257, align 4, !tbaa !493
  %259 = shl i32 %258, 18
  %260 = or i32 %259, %256
  %261 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %262 = load i32, ptr %261, align 4, !tbaa !493
  %263 = shl i32 %262, 17
  %264 = or i32 %260, %263
  %265 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %266 = load i32, ptr %265, align 4, !tbaa !493
  %267 = shl i32 %266, 16
  %268 = or i32 %264, %267
  %269 = or i32 %268, %253
  store i32 %269, ptr %8, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %270 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %271 = load i32, ptr %270, align 4, !tbaa !484
  %272 = shl i32 %271, 14
  %273 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %274 = load i32, ptr %273, align 4, !tbaa !484
  %275 = shl i32 %274, 12
  %276 = or i32 %275, %272
  %277 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %278 = load i32, ptr %277, align 4, !tbaa !484
  %279 = shl i32 %278, 10
  %280 = or i32 %276, %279
  %281 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %282 = load i32, ptr %281, align 4, !tbaa !484
  %283 = shl i32 %282, 8
  %284 = or i32 %280, %283
  %285 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %286 = load i32, ptr %285, align 4, !tbaa !484
  %287 = shl i32 %286, 6
  %288 = or i32 %284, %287
  %289 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %290 = load i32, ptr %289, align 4, !tbaa !484
  %291 = shl i32 %290, 4
  %292 = or i32 %288, %291
  %293 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %294 = load i32, ptr %293, align 4, !tbaa !484
  %295 = shl i32 %294, 2
  %296 = or i32 %292, %295
  %297 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %298 = load i32, ptr %297, align 4, !tbaa !484
  %299 = or i32 %296, %298
  %300 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %301 = load i32, ptr %300, align 4, !tbaa !493
  %302 = shl i32 %301, 19
  %303 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %304 = load i32, ptr %303, align 4, !tbaa !493
  %305 = shl i32 %304, 18
  %306 = or i32 %305, %302
  %307 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %308 = load i32, ptr %307, align 4, !tbaa !493
  %309 = shl i32 %308, 17
  %310 = or i32 %306, %309
  %311 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %312 = load i32, ptr %311, align 4, !tbaa !493
  %313 = shl i32 %312, 16
  %314 = or i32 %310, %313
  %315 = or i32 %314, %299
  store i32 %315, ptr %9, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %316 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %317 = load i32, ptr %316, align 4, !tbaa !484
  %318 = shl i32 %317, 14
  %319 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %320 = load i32, ptr %319, align 4, !tbaa !484
  %321 = shl i32 %320, 12
  %322 = or i32 %321, %318
  %323 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %324 = load i32, ptr %323, align 4, !tbaa !484
  %325 = shl i32 %324, 10
  %326 = or i32 %322, %325
  %327 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %328 = load i32, ptr %327, align 4, !tbaa !484
  %329 = shl i32 %328, 8
  %330 = or i32 %326, %329
  %331 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %332 = load i32, ptr %331, align 4, !tbaa !484
  %333 = shl i32 %332, 6
  %334 = or i32 %330, %333
  %335 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %336 = load i32, ptr %335, align 4, !tbaa !484
  %337 = shl i32 %336, 4
  %338 = or i32 %334, %337
  %339 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %340 = load i32, ptr %339, align 4, !tbaa !484
  %341 = shl i32 %340, 2
  %342 = or i32 %338, %341
  %343 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %344 = load i32, ptr %343, align 4, !tbaa !484
  %345 = or i32 %342, %344
  %346 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %347 = load i32, ptr %346, align 4, !tbaa !493
  %348 = shl i32 %347, 19
  %349 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %350 = load i32, ptr %349, align 4, !tbaa !493
  %351 = shl i32 %350, 18
  %352 = or i32 %351, %348
  %353 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %354 = load i32, ptr %353, align 4, !tbaa !493
  %355 = shl i32 %354, 17
  %356 = or i32 %352, %355
  %357 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %358 = load i32, ptr %357, align 4, !tbaa !493
  %359 = shl i32 %358, 16
  %360 = or i32 %356, %359
  %361 = or i32 %360, %345
  store i32 %361, ptr %10, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %362 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %363 = load i32, ptr %362, align 4, !tbaa !484
  %364 = shl i32 %363, 14
  %365 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %366 = load i32, ptr %365, align 4, !tbaa !484
  %367 = shl i32 %366, 12
  %368 = or i32 %367, %364
  %369 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %370 = load i32, ptr %369, align 4, !tbaa !484
  %371 = shl i32 %370, 10
  %372 = or i32 %368, %371
  %373 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %374 = load i32, ptr %373, align 4, !tbaa !484
  %375 = shl i32 %374, 8
  %376 = or i32 %372, %375
  %377 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %378 = load i32, ptr %377, align 4, !tbaa !484
  %379 = shl i32 %378, 6
  %380 = or i32 %376, %379
  %381 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %382 = load i32, ptr %381, align 4, !tbaa !484
  %383 = shl i32 %382, 4
  %384 = or i32 %380, %383
  %385 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %386 = load i32, ptr %385, align 4, !tbaa !484
  %387 = shl i32 %386, 2
  %388 = or i32 %384, %387
  %389 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %390 = load i32, ptr %389, align 4, !tbaa !484
  %391 = or i32 %388, %390
  %392 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %393 = load i32, ptr %392, align 4, !tbaa !493
  %394 = shl i32 %393, 19
  %395 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %396 = load i32, ptr %395, align 4, !tbaa !493
  %397 = shl i32 %396, 18
  %398 = or i32 %397, %394
  %399 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %400 = load i32, ptr %399, align 4, !tbaa !493
  %401 = shl i32 %400, 17
  %402 = or i32 %398, %401
  %403 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %404 = load i32, ptr %403, align 4, !tbaa !493
  %405 = shl i32 %404, 16
  %406 = or i32 %402, %405
  %407 = or i32 %406, %391
  store i32 %407, ptr %11, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  %408 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %409 = load i32, ptr %408, align 4, !tbaa !484
  %410 = shl i32 %409, 14
  %411 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %412 = load i32, ptr %411, align 4, !tbaa !484
  %413 = shl i32 %412, 12
  %414 = or i32 %413, %410
  %415 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %416 = load i32, ptr %415, align 4, !tbaa !484
  %417 = shl i32 %416, 10
  %418 = or i32 %414, %417
  %419 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %420 = load i32, ptr %419, align 4, !tbaa !484
  %421 = shl i32 %420, 8
  %422 = or i32 %418, %421
  %423 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %424 = load i32, ptr %423, align 4, !tbaa !484
  %425 = shl i32 %424, 6
  %426 = or i32 %422, %425
  %427 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %428 = load i32, ptr %427, align 4, !tbaa !484
  %429 = shl i32 %428, 4
  %430 = or i32 %426, %429
  %431 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %432 = load i32, ptr %431, align 4, !tbaa !484
  %433 = shl i32 %432, 2
  %434 = or i32 %430, %433
  %435 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %436 = load i32, ptr %435, align 4, !tbaa !484
  %437 = or i32 %434, %436
  %438 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %439 = load i32, ptr %438, align 4, !tbaa !493
  %440 = shl i32 %439, 19
  %441 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %442 = load i32, ptr %441, align 4, !tbaa !493
  %443 = shl i32 %442, 18
  %444 = or i32 %443, %440
  %445 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %446 = load i32, ptr %445, align 4, !tbaa !493
  %447 = shl i32 %446, 17
  %448 = or i32 %444, %447
  %449 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %450 = load i32, ptr %449, align 4, !tbaa !493
  %451 = shl i32 %450, 16
  %452 = or i32 %448, %451
  %453 = or i32 %452, %437
  store i32 %453, ptr %12, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  %454 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 5) #17
  %455 = load i32, ptr %454, align 4, !tbaa !484
  %456 = shl i32 %455, 14
  %457 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 6) #17
  %458 = load i32, ptr %457, align 4, !tbaa !484
  %459 = shl i32 %458, 12
  %460 = or i32 %459, %456
  %461 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 7) #17
  %462 = load i32, ptr %461, align 4, !tbaa !484
  %463 = shl i32 %462, 10
  %464 = or i32 %460, %463
  %465 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 3) #17
  %466 = load i32, ptr %465, align 4, !tbaa !484
  %467 = shl i32 %466, 8
  %468 = or i32 %464, %467
  %469 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 4) #17
  %470 = load i32, ptr %469, align 4, !tbaa !484
  %471 = shl i32 %470, 6
  %472 = or i32 %468, %471
  %473 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 0) #17
  %474 = load i32, ptr %473, align 4, !tbaa !484
  %475 = shl i32 %474, 4
  %476 = or i32 %472, %475
  %477 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 1) #17
  %478 = load i32, ptr %477, align 4, !tbaa !484
  %479 = shl i32 %478, 2
  %480 = or i32 %476, %479
  %481 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %4, i64 noundef 2) #17
  %482 = load i32, ptr %481, align 4, !tbaa !484
  %483 = or i32 %480, %482
  %484 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 3) #17
  %485 = load i32, ptr %484, align 4, !tbaa !493
  %486 = shl i32 %485, 19
  %487 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 1) #17
  %488 = load i32, ptr %487, align 4, !tbaa !493
  %489 = shl i32 %488, 18
  %490 = or i32 %489, %486
  %491 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 2) #17
  %492 = load i32, ptr %491, align 4, !tbaa !493
  %493 = shl i32 %492, 17
  %494 = or i32 %490, %493
  %495 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef 0) #17
  %496 = load i32, ptr %495, align 4, !tbaa !493
  %497 = shl i32 %496, 16
  %498 = or i32 %494, %497
  %499 = or i32 %498, %483
  store i32 %499, ptr %13, align 4, !tbaa !493
  %500 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7) #17
  %501 = load i32, ptr %500, align 4, !tbaa !493
  store i32 %501, ptr %6, align 4, !tbaa !493
  %502 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) #17
  %503 = load i32, ptr %502, align 4, !tbaa !493
  store i32 %503, ptr %8, align 4, !tbaa !493
  %504 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %11) #17
  %505 = load i32, ptr %504, align 4, !tbaa !493
  store i32 %505, ptr %10, align 4, !tbaa !493
  %506 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %13) #17
  %507 = load i32, ptr %506, align 4, !tbaa !493
  store i32 %507, ptr %12, align 4, !tbaa !493
  %508 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %8) #17
  %509 = load i32, ptr %508, align 4, !tbaa !493
  store i32 %509, ptr %6, align 4, !tbaa !493
  %510 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %10, ptr noundef nonnull align 4 dereferenceable(4) %12) #17
  %511 = load i32, ptr %510, align 4, !tbaa !493
  store i32 %511, ptr %10, align 4, !tbaa !493
  %512 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %10) #17
  %513 = load i32, ptr %512, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  ret i32 %513
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard25get_pattern3_augment_specEiib(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 !prof !859 {
  %5 = alloca %"class.boost::array.21", align 4
  %6 = alloca %"class.boost::array.4", align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #18
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %16 = load i32, ptr %15, align 8, !tbaa !466
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %18 = sub nsw i32 %1, %16
  %19 = add nsw i32 %18, -2
  %20 = add nsw i32 %18, -3
  %21 = sext i32 %20 to i64
  %22 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %21) #17
  %23 = load i32, ptr %22, align 4, !tbaa !484
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  store i32 %23, ptr %24, align 4, !tbaa !484
  %25 = sext i32 %19 to i64
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %25) #17
  %27 = load i32, ptr %26, align 4, !tbaa !484
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  store i32 %27, ptr %28, align 4, !tbaa !484
  %29 = add nsw i32 %18, -1
  %30 = sext i32 %29 to i64
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %30) #17
  %32 = load i32, ptr %31, align 4, !tbaa !484
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  store i32 %32, ptr %33, align 4, !tbaa !484
  %34 = add nsw i32 %1, -1
  %35 = sext i32 %34 to i64
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %35) #17
  %37 = load i32, ptr %36, align 4, !tbaa !484
  %38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  store i32 %37, ptr %38, align 4, !tbaa !484
  %39 = add nsw i32 %1, 1
  %40 = sext i32 %39 to i64
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %40) #17
  %42 = load i32, ptr %41, align 4, !tbaa !484
  %43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  store i32 %42, ptr %43, align 4, !tbaa !484
  %44 = add nsw i32 %16, %1
  %45 = add nsw i32 %44, 2
  %46 = add nsw i32 %44, 1
  %47 = sext i32 %46 to i64
  %48 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %47) #17
  %49 = load i32, ptr %48, align 4, !tbaa !484
  %50 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  store i32 %49, ptr %50, align 4, !tbaa !484
  %51 = sext i32 %45 to i64
  %52 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %51) #17
  %53 = load i32, ptr %52, align 4, !tbaa !484
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  store i32 %53, ptr %54, align 4, !tbaa !484
  %55 = add nsw i32 %44, 3
  %56 = sext i32 %55 to i64
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %17, i64 noundef %56) #17
  %58 = load i32, ptr %57, align 4, !tbaa !484
  %59 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  store i32 %58, ptr %59, align 4, !tbaa !484
  %60 = and i32 %2, 1
  %61 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  store i32 %60, ptr %61, align 4, !tbaa !493
  %62 = lshr i32 %2, 1
  %63 = and i32 %62, 1
  %64 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  store i32 %63, ptr %64, align 4, !tbaa !493
  %65 = lshr i32 %2, 2
  %66 = and i32 %65, 1
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  store i32 %66, ptr %67, align 4, !tbaa !493
  %68 = lshr i32 %2, 3
  %69 = and i32 %68, 1
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  store i32 %69, ptr %70, align 4, !tbaa !493
  br i1 %3, label %71, label %87, !prof !860

71:                                               ; preds = %4
  %72 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() #17
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %87, label %74, !prof !861

74:                                               ; preds = %71, %74
  %75 = phi i64 [ %84, %74 ], [ 0, %71 ]
  %76 = phi i32 [ %83, %74 ], [ 0, %71 ]
  %77 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef %75) #17
  %78 = load i32, ptr %77, align 4, !tbaa !484
  %79 = zext i32 %78 to i64
  %80 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) @_ZN9FastBoard9s_cinvertE, i64 noundef %79) #17
  %81 = load i32, ptr %80, align 4, !tbaa !484
  %82 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef %75) #17
  store i32 %81, ptr %82, align 4, !tbaa !484
  %83 = add i32 %76, 1
  %84 = zext i32 %83 to i64
  %85 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv() #17
  %86 = icmp ugt i64 %85, %84
  br i1 %86, label %74, label %87, !prof !862, !llvm.loop !863

87:                                               ; preds = %74, %71, %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  %88 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %89 = load i32, ptr %88, align 4, !tbaa !484
  %90 = shl i32 %89, 14
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %92 = load i32, ptr %91, align 4, !tbaa !484
  %93 = shl i32 %92, 12
  %94 = or i32 %93, %90
  %95 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %96 = load i32, ptr %95, align 4, !tbaa !484
  %97 = shl i32 %96, 10
  %98 = or i32 %94, %97
  %99 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %100 = load i32, ptr %99, align 4, !tbaa !484
  %101 = shl i32 %100, 8
  %102 = or i32 %98, %101
  %103 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %104 = load i32, ptr %103, align 4, !tbaa !484
  %105 = shl i32 %104, 6
  %106 = or i32 %102, %105
  %107 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %108 = load i32, ptr %107, align 4, !tbaa !484
  %109 = shl i32 %108, 4
  %110 = or i32 %106, %109
  %111 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %112 = load i32, ptr %111, align 4, !tbaa !484
  %113 = shl i32 %112, 2
  %114 = or i32 %110, %113
  %115 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %116 = load i32, ptr %115, align 4, !tbaa !484
  %117 = or i32 %114, %116
  %118 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %119 = load i32, ptr %118, align 4, !tbaa !493
  %120 = shl i32 %119, 19
  %121 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %122 = load i32, ptr %121, align 4, !tbaa !493
  %123 = shl i32 %122, 18
  %124 = or i32 %123, %120
  %125 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %126 = load i32, ptr %125, align 4, !tbaa !493
  %127 = shl i32 %126, 17
  %128 = or i32 %124, %127
  %129 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %130 = load i32, ptr %129, align 4, !tbaa !493
  %131 = shl i32 %130, 16
  %132 = or i32 %128, %131
  %133 = or i32 %132, %117
  store i32 %133, ptr %7, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  %134 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %135 = load i32, ptr %134, align 4, !tbaa !484
  %136 = shl i32 %135, 14
  %137 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %138 = load i32, ptr %137, align 4, !tbaa !484
  %139 = shl i32 %138, 12
  %140 = or i32 %139, %136
  %141 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %142 = load i32, ptr %141, align 4, !tbaa !484
  %143 = shl i32 %142, 10
  %144 = or i32 %140, %143
  %145 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %146 = load i32, ptr %145, align 4, !tbaa !484
  %147 = shl i32 %146, 8
  %148 = or i32 %144, %147
  %149 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %150 = load i32, ptr %149, align 4, !tbaa !484
  %151 = shl i32 %150, 6
  %152 = or i32 %148, %151
  %153 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %154 = load i32, ptr %153, align 4, !tbaa !484
  %155 = shl i32 %154, 4
  %156 = or i32 %152, %155
  %157 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %158 = load i32, ptr %157, align 4, !tbaa !484
  %159 = shl i32 %158, 2
  %160 = or i32 %156, %159
  %161 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %162 = load i32, ptr %161, align 4, !tbaa !484
  %163 = or i32 %160, %162
  %164 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %165 = load i32, ptr %164, align 4, !tbaa !493
  %166 = shl i32 %165, 19
  %167 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %168 = load i32, ptr %167, align 4, !tbaa !493
  %169 = shl i32 %168, 18
  %170 = or i32 %169, %166
  %171 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %172 = load i32, ptr %171, align 4, !tbaa !493
  %173 = shl i32 %172, 17
  %174 = or i32 %170, %173
  %175 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %176 = load i32, ptr %175, align 4, !tbaa !493
  %177 = shl i32 %176, 16
  %178 = or i32 %174, %177
  %179 = or i32 %178, %163
  store i32 %179, ptr %8, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  %180 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %181 = load i32, ptr %180, align 4, !tbaa !484
  %182 = shl i32 %181, 14
  %183 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %184 = load i32, ptr %183, align 4, !tbaa !484
  %185 = shl i32 %184, 12
  %186 = or i32 %185, %182
  %187 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %188 = load i32, ptr %187, align 4, !tbaa !484
  %189 = shl i32 %188, 10
  %190 = or i32 %186, %189
  %191 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %192 = load i32, ptr %191, align 4, !tbaa !484
  %193 = shl i32 %192, 8
  %194 = or i32 %190, %193
  %195 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %196 = load i32, ptr %195, align 4, !tbaa !484
  %197 = shl i32 %196, 6
  %198 = or i32 %194, %197
  %199 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %200 = load i32, ptr %199, align 4, !tbaa !484
  %201 = shl i32 %200, 4
  %202 = or i32 %198, %201
  %203 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %204 = load i32, ptr %203, align 4, !tbaa !484
  %205 = shl i32 %204, 2
  %206 = or i32 %202, %205
  %207 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %208 = load i32, ptr %207, align 4, !tbaa !484
  %209 = or i32 %206, %208
  %210 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %211 = load i32, ptr %210, align 4, !tbaa !493
  %212 = shl i32 %211, 19
  %213 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %214 = load i32, ptr %213, align 4, !tbaa !493
  %215 = shl i32 %214, 18
  %216 = or i32 %215, %212
  %217 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %218 = load i32, ptr %217, align 4, !tbaa !493
  %219 = shl i32 %218, 17
  %220 = or i32 %216, %219
  %221 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %222 = load i32, ptr %221, align 4, !tbaa !493
  %223 = shl i32 %222, 16
  %224 = or i32 %220, %223
  %225 = or i32 %224, %209
  store i32 %225, ptr %9, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  %226 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %227 = load i32, ptr %226, align 4, !tbaa !484
  %228 = shl i32 %227, 14
  %229 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %230 = load i32, ptr %229, align 4, !tbaa !484
  %231 = shl i32 %230, 12
  %232 = or i32 %231, %228
  %233 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %234 = load i32, ptr %233, align 4, !tbaa !484
  %235 = shl i32 %234, 10
  %236 = or i32 %232, %235
  %237 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %238 = load i32, ptr %237, align 4, !tbaa !484
  %239 = shl i32 %238, 8
  %240 = or i32 %236, %239
  %241 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %242 = load i32, ptr %241, align 4, !tbaa !484
  %243 = shl i32 %242, 6
  %244 = or i32 %240, %243
  %245 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %246 = load i32, ptr %245, align 4, !tbaa !484
  %247 = shl i32 %246, 4
  %248 = or i32 %244, %247
  %249 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %250 = load i32, ptr %249, align 4, !tbaa !484
  %251 = shl i32 %250, 2
  %252 = or i32 %248, %251
  %253 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %254 = load i32, ptr %253, align 4, !tbaa !484
  %255 = or i32 %252, %254
  %256 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %257 = load i32, ptr %256, align 4, !tbaa !493
  %258 = shl i32 %257, 19
  %259 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %260 = load i32, ptr %259, align 4, !tbaa !493
  %261 = shl i32 %260, 18
  %262 = or i32 %261, %258
  %263 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %264 = load i32, ptr %263, align 4, !tbaa !493
  %265 = shl i32 %264, 17
  %266 = or i32 %262, %265
  %267 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %268 = load i32, ptr %267, align 4, !tbaa !493
  %269 = shl i32 %268, 16
  %270 = or i32 %266, %269
  %271 = or i32 %270, %255
  store i32 %271, ptr %10, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  %272 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %273 = load i32, ptr %272, align 4, !tbaa !484
  %274 = shl i32 %273, 14
  %275 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %276 = load i32, ptr %275, align 4, !tbaa !484
  %277 = shl i32 %276, 12
  %278 = or i32 %277, %274
  %279 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %280 = load i32, ptr %279, align 4, !tbaa !484
  %281 = shl i32 %280, 10
  %282 = or i32 %278, %281
  %283 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %284 = load i32, ptr %283, align 4, !tbaa !484
  %285 = shl i32 %284, 8
  %286 = or i32 %282, %285
  %287 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %288 = load i32, ptr %287, align 4, !tbaa !484
  %289 = shl i32 %288, 6
  %290 = or i32 %286, %289
  %291 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %292 = load i32, ptr %291, align 4, !tbaa !484
  %293 = shl i32 %292, 4
  %294 = or i32 %290, %293
  %295 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %296 = load i32, ptr %295, align 4, !tbaa !484
  %297 = shl i32 %296, 2
  %298 = or i32 %294, %297
  %299 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %300 = load i32, ptr %299, align 4, !tbaa !484
  %301 = or i32 %298, %300
  %302 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %303 = load i32, ptr %302, align 4, !tbaa !493
  %304 = shl i32 %303, 19
  %305 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %306 = load i32, ptr %305, align 4, !tbaa !493
  %307 = shl i32 %306, 18
  %308 = or i32 %307, %304
  %309 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %310 = load i32, ptr %309, align 4, !tbaa !493
  %311 = shl i32 %310, 17
  %312 = or i32 %308, %311
  %313 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %314 = load i32, ptr %313, align 4, !tbaa !493
  %315 = shl i32 %314, 16
  %316 = or i32 %312, %315
  %317 = or i32 %316, %301
  store i32 %317, ptr %11, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  %318 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %319 = load i32, ptr %318, align 4, !tbaa !484
  %320 = shl i32 %319, 14
  %321 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %322 = load i32, ptr %321, align 4, !tbaa !484
  %323 = shl i32 %322, 12
  %324 = or i32 %323, %320
  %325 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %326 = load i32, ptr %325, align 4, !tbaa !484
  %327 = shl i32 %326, 10
  %328 = or i32 %324, %327
  %329 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %330 = load i32, ptr %329, align 4, !tbaa !484
  %331 = shl i32 %330, 8
  %332 = or i32 %328, %331
  %333 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %334 = load i32, ptr %333, align 4, !tbaa !484
  %335 = shl i32 %334, 6
  %336 = or i32 %332, %335
  %337 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %338 = load i32, ptr %337, align 4, !tbaa !484
  %339 = shl i32 %338, 4
  %340 = or i32 %336, %339
  %341 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %342 = load i32, ptr %341, align 4, !tbaa !484
  %343 = shl i32 %342, 2
  %344 = or i32 %340, %343
  %345 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %346 = load i32, ptr %345, align 4, !tbaa !484
  %347 = or i32 %344, %346
  %348 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %349 = load i32, ptr %348, align 4, !tbaa !493
  %350 = shl i32 %349, 19
  %351 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %352 = load i32, ptr %351, align 4, !tbaa !493
  %353 = shl i32 %352, 18
  %354 = or i32 %353, %350
  %355 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %356 = load i32, ptr %355, align 4, !tbaa !493
  %357 = shl i32 %356, 17
  %358 = or i32 %354, %357
  %359 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %360 = load i32, ptr %359, align 4, !tbaa !493
  %361 = shl i32 %360, 16
  %362 = or i32 %358, %361
  %363 = or i32 %362, %347
  store i32 %363, ptr %12, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #18
  %364 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %365 = load i32, ptr %364, align 4, !tbaa !484
  %366 = shl i32 %365, 14
  %367 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %368 = load i32, ptr %367, align 4, !tbaa !484
  %369 = shl i32 %368, 12
  %370 = or i32 %369, %366
  %371 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %372 = load i32, ptr %371, align 4, !tbaa !484
  %373 = shl i32 %372, 10
  %374 = or i32 %370, %373
  %375 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %376 = load i32, ptr %375, align 4, !tbaa !484
  %377 = shl i32 %376, 8
  %378 = or i32 %374, %377
  %379 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %380 = load i32, ptr %379, align 4, !tbaa !484
  %381 = shl i32 %380, 6
  %382 = or i32 %378, %381
  %383 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %384 = load i32, ptr %383, align 4, !tbaa !484
  %385 = shl i32 %384, 4
  %386 = or i32 %382, %385
  %387 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %388 = load i32, ptr %387, align 4, !tbaa !484
  %389 = shl i32 %388, 2
  %390 = or i32 %386, %389
  %391 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %392 = load i32, ptr %391, align 4, !tbaa !484
  %393 = or i32 %390, %392
  %394 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %395 = load i32, ptr %394, align 4, !tbaa !493
  %396 = shl i32 %395, 19
  %397 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %398 = load i32, ptr %397, align 4, !tbaa !493
  %399 = shl i32 %398, 18
  %400 = or i32 %399, %396
  %401 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %402 = load i32, ptr %401, align 4, !tbaa !493
  %403 = shl i32 %402, 17
  %404 = or i32 %400, %403
  %405 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %406 = load i32, ptr %405, align 4, !tbaa !493
  %407 = shl i32 %406, 16
  %408 = or i32 %404, %407
  %409 = or i32 %408, %393
  store i32 %409, ptr %13, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #18
  %410 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 5) #17
  %411 = load i32, ptr %410, align 4, !tbaa !484
  %412 = shl i32 %411, 14
  %413 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 6) #17
  %414 = load i32, ptr %413, align 4, !tbaa !484
  %415 = shl i32 %414, 12
  %416 = or i32 %415, %412
  %417 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 7) #17
  %418 = load i32, ptr %417, align 4, !tbaa !484
  %419 = shl i32 %418, 10
  %420 = or i32 %416, %419
  %421 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 3) #17
  %422 = load i32, ptr %421, align 4, !tbaa !484
  %423 = shl i32 %422, 8
  %424 = or i32 %420, %423
  %425 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 4) #17
  %426 = load i32, ptr %425, align 4, !tbaa !484
  %427 = shl i32 %426, 6
  %428 = or i32 %424, %427
  %429 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 0) #17
  %430 = load i32, ptr %429, align 4, !tbaa !484
  %431 = shl i32 %430, 4
  %432 = or i32 %428, %431
  %433 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 1) #17
  %434 = load i32, ptr %433, align 4, !tbaa !484
  %435 = shl i32 %434, 2
  %436 = or i32 %432, %435
  %437 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %5, i64 noundef 2) #17
  %438 = load i32, ptr %437, align 4, !tbaa !484
  %439 = or i32 %436, %438
  %440 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 3) #17
  %441 = load i32, ptr %440, align 4, !tbaa !493
  %442 = shl i32 %441, 19
  %443 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 1) #17
  %444 = load i32, ptr %443, align 4, !tbaa !493
  %445 = shl i32 %444, 18
  %446 = or i32 %445, %442
  %447 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 2) #17
  %448 = load i32, ptr %447, align 4, !tbaa !493
  %449 = shl i32 %448, 17
  %450 = or i32 %446, %449
  %451 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %6, i64 noundef 0) #17
  %452 = load i32, ptr %451, align 4, !tbaa !493
  %453 = shl i32 %452, 16
  %454 = or i32 %450, %453
  %455 = or i32 %454, %439
  store i32 %455, ptr %14, align 4, !tbaa !493
  %456 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #17
  %457 = load i32, ptr %456, align 4, !tbaa !493
  store i32 %457, ptr %7, align 4, !tbaa !493
  %458 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #17
  %459 = load i32, ptr %458, align 4, !tbaa !493
  store i32 %459, ptr %9, align 4, !tbaa !493
  %460 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12) #17
  %461 = load i32, ptr %460, align 4, !tbaa !493
  store i32 %461, ptr %11, align 4, !tbaa !493
  %462 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %13, ptr noundef nonnull align 4 dereferenceable(4) %14) #17
  %463 = load i32, ptr %462, align 4, !tbaa !493
  store i32 %463, ptr %13, align 4, !tbaa !493
  %464 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %9) #17
  %465 = load i32, ptr %464, align 4, !tbaa !493
  store i32 %465, ptr %7, align 4, !tbaa !493
  %466 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %13) #17
  %467 = load i32, ptr %466, align 4, !tbaa !493
  store i32 %467, ptr %11, align 4, !tbaa !493
  %468 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %11) #17
  %469 = load i32, ptr %468, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #18
  ret i32 %469
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard12get_pattern4Eib(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #6 align 2 !prof !489 {
  %4 = alloca %"class.boost::array.22", align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %14 = load i32, ptr %13, align 8, !tbaa !466
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #18
  %15 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %16 = add nsw i32 %14, 2
  %17 = sub nsw i32 %1, %16
  %18 = add nsw i32 %17, -1
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %19) #17
  %21 = load i32, ptr %20, align 4, !tbaa !484
  %22 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  store i32 %21, ptr %22, align 4, !tbaa !484
  %23 = sext i32 %17 to i64
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %23) #17
  %25 = load i32, ptr %24, align 4, !tbaa !484
  %26 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  store i32 %25, ptr %26, align 4, !tbaa !484
  %27 = add nsw i32 %17, 1
  %28 = sext i32 %27 to i64
  %29 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %28) #17
  %30 = load i32, ptr %29, align 4, !tbaa !484
  %31 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  store i32 %30, ptr %31, align 4, !tbaa !484
  %32 = add nsw i32 %1, -1
  %33 = sext i32 %32 to i64
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %33) #17
  %35 = load i32, ptr %34, align 4, !tbaa !484
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  store i32 %35, ptr %36, align 4, !tbaa !484
  %37 = add nsw i32 %1, 1
  %38 = sext i32 %37 to i64
  %39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %38) #17
  %40 = load i32, ptr %39, align 4, !tbaa !484
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  store i32 %40, ptr %41, align 4, !tbaa !484
  %42 = add nsw i32 %16, %1
  %43 = add nsw i32 %42, -1
  %44 = sext i32 %43 to i64
  %45 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %44) #17
  %46 = load i32, ptr %45, align 4, !tbaa !484
  %47 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  store i32 %46, ptr %47, align 4, !tbaa !484
  %48 = sext i32 %42 to i64
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %48) #17
  %50 = load i32, ptr %49, align 4, !tbaa !484
  %51 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  store i32 %50, ptr %51, align 4, !tbaa !484
  %52 = add nsw i32 %42, 1
  %53 = sext i32 %52 to i64
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %53) #17
  %55 = load i32, ptr %54, align 4, !tbaa !484
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  store i32 %55, ptr %56, align 4, !tbaa !484
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %58 = load i32, ptr %57, align 4, !tbaa !484
  %59 = icmp eq i32 %58, 3
  br i1 %59, label %66, label %60

60:                                               ; preds = %3
  %61 = shl nsw i32 %16, 1
  %62 = sub nsw i32 %1, %61
  %63 = sext i32 %62 to i64
  %64 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %63) #17
  %65 = load i32, ptr %64, align 4, !tbaa !484
  br label %66

66:                                               ; preds = %3, %60
  %67 = phi i32 [ %65, %60 ], [ 3, %3 ]
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  store i32 %67, ptr %68, align 4, !tbaa !484
  %69 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %70 = load i32, ptr %69, align 4, !tbaa !484
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %77, label %72

72:                                               ; preds = %66
  %73 = add nsw i32 %1, -2
  %74 = sext i32 %73 to i64
  %75 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %74) #17
  %76 = load i32, ptr %75, align 4, !tbaa !484
  br label %77

77:                                               ; preds = %66, %72
  %78 = phi i32 [ %76, %72 ], [ 3, %66 ]
  %79 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  store i32 %78, ptr %79, align 4, !tbaa !484
  %80 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %81 = load i32, ptr %80, align 4, !tbaa !484
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %88, label %83

83:                                               ; preds = %77
  %84 = add nsw i32 %1, 2
  %85 = sext i32 %84 to i64
  %86 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %85) #17
  %87 = load i32, ptr %86, align 4, !tbaa !484
  br label %88

88:                                               ; preds = %77, %83
  %89 = phi i32 [ %87, %83 ], [ 3, %77 ]
  %90 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  store i32 %89, ptr %90, align 4, !tbaa !484
  %91 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %92 = load i32, ptr %91, align 4, !tbaa !484
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = shl nsw i32 %16, 1
  %96 = add nsw i32 %95, %1
  %97 = sext i32 %96 to i64
  %98 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %97) #17
  %99 = load i32, ptr %98, align 4, !tbaa !484
  br label %100

100:                                              ; preds = %88, %94
  %101 = phi i32 [ %99, %94 ], [ 3, %88 ]
  %102 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  store i32 %101, ptr %102, align 4, !tbaa !484
  br i1 %2, label %103, label %119

103:                                              ; preds = %100
  %104 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm12EE4sizeEv() #17
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %103, %106
  %107 = phi i64 [ %116, %106 ], [ 0, %103 ]
  %108 = phi i32 [ %115, %106 ], [ 0, %103 ]
  %109 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef %107) #17
  %110 = load i32, ptr %109, align 4, !tbaa !484
  %111 = zext i32 %110 to i64
  %112 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) @_ZN9FastBoard9s_cinvertE, i64 noundef %111) #17
  %113 = load i32, ptr %112, align 4, !tbaa !484
  %114 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef %107) #17
  store i32 %113, ptr %114, align 4, !tbaa !484
  %115 = add i32 %108, 1
  %116 = zext i32 %115 to i64
  %117 = call noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm12EE4sizeEv() #17
  %118 = icmp ugt i64 %117, %116
  br i1 %118, label %106, label %119, !llvm.loop !864

119:                                              ; preds = %106, %103, %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #18
  %120 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %121 = load i32, ptr %120, align 4, !tbaa !484
  %122 = shl i32 %121, 22
  %123 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %124 = load i32, ptr %123, align 4, !tbaa !484
  %125 = shl i32 %124, 20
  %126 = or i32 %125, %122
  %127 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %128 = load i32, ptr %127, align 4, !tbaa !484
  %129 = shl i32 %128, 18
  %130 = or i32 %126, %129
  %131 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %132 = load i32, ptr %131, align 4, !tbaa !484
  %133 = shl i32 %132, 16
  %134 = or i32 %130, %133
  %135 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %136 = load i32, ptr %135, align 4, !tbaa !484
  %137 = shl i32 %136, 14
  %138 = or i32 %134, %137
  %139 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %140 = load i32, ptr %139, align 4, !tbaa !484
  %141 = shl i32 %140, 12
  %142 = or i32 %138, %141
  %143 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %144 = load i32, ptr %143, align 4, !tbaa !484
  %145 = shl i32 %144, 10
  %146 = or i32 %142, %145
  %147 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %148 = load i32, ptr %147, align 4, !tbaa !484
  %149 = shl i32 %148, 8
  %150 = or i32 %146, %149
  %151 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %152 = load i32, ptr %151, align 4, !tbaa !484
  %153 = shl i32 %152, 6
  %154 = or i32 %150, %153
  %155 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %156 = load i32, ptr %155, align 4, !tbaa !484
  %157 = shl i32 %156, 4
  %158 = or i32 %154, %157
  %159 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %160 = load i32, ptr %159, align 4, !tbaa !484
  %161 = shl i32 %160, 2
  %162 = or i32 %158, %161
  %163 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %164 = load i32, ptr %163, align 4, !tbaa !484
  %165 = or i32 %162, %164
  store i32 %165, ptr %5, align 4, !tbaa !493
  %166 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %167 = load i32, ptr %166, align 4, !tbaa !484
  %168 = shl i32 %167, 22
  %169 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %170 = load i32, ptr %169, align 4, !tbaa !484
  %171 = shl i32 %170, 20
  %172 = or i32 %171, %168
  %173 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %174 = load i32, ptr %173, align 4, !tbaa !484
  %175 = shl i32 %174, 18
  %176 = or i32 %172, %175
  %177 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %178 = load i32, ptr %177, align 4, !tbaa !484
  %179 = shl i32 %178, 16
  %180 = or i32 %176, %179
  %181 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %182 = load i32, ptr %181, align 4, !tbaa !484
  %183 = shl i32 %182, 14
  %184 = or i32 %180, %183
  %185 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %186 = load i32, ptr %185, align 4, !tbaa !484
  %187 = shl i32 %186, 12
  %188 = or i32 %184, %187
  %189 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %190 = load i32, ptr %189, align 4, !tbaa !484
  %191 = shl i32 %190, 10
  %192 = or i32 %188, %191
  %193 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %194 = load i32, ptr %193, align 4, !tbaa !484
  %195 = shl i32 %194, 8
  %196 = or i32 %192, %195
  %197 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %198 = load i32, ptr %197, align 4, !tbaa !484
  %199 = shl i32 %198, 6
  %200 = or i32 %196, %199
  %201 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %202 = load i32, ptr %201, align 4, !tbaa !484
  %203 = shl i32 %202, 4
  %204 = or i32 %200, %203
  %205 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %206 = load i32, ptr %205, align 4, !tbaa !484
  %207 = shl i32 %206, 2
  %208 = or i32 %204, %207
  %209 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %210 = load i32, ptr %209, align 4, !tbaa !484
  %211 = or i32 %208, %210
  store i32 %211, ptr %6, align 4, !tbaa !493
  %212 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %213 = load i32, ptr %212, align 4, !tbaa !484
  %214 = shl i32 %213, 22
  %215 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %216 = load i32, ptr %215, align 4, !tbaa !484
  %217 = shl i32 %216, 20
  %218 = or i32 %217, %214
  %219 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %220 = load i32, ptr %219, align 4, !tbaa !484
  %221 = shl i32 %220, 18
  %222 = or i32 %218, %221
  %223 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %224 = load i32, ptr %223, align 4, !tbaa !484
  %225 = shl i32 %224, 16
  %226 = or i32 %222, %225
  %227 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %228 = load i32, ptr %227, align 4, !tbaa !484
  %229 = shl i32 %228, 14
  %230 = or i32 %226, %229
  %231 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %232 = load i32, ptr %231, align 4, !tbaa !484
  %233 = shl i32 %232, 12
  %234 = or i32 %230, %233
  %235 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %236 = load i32, ptr %235, align 4, !tbaa !484
  %237 = shl i32 %236, 10
  %238 = or i32 %234, %237
  %239 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %240 = load i32, ptr %239, align 4, !tbaa !484
  %241 = shl i32 %240, 8
  %242 = or i32 %238, %241
  %243 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %244 = load i32, ptr %243, align 4, !tbaa !484
  %245 = shl i32 %244, 6
  %246 = or i32 %242, %245
  %247 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %248 = load i32, ptr %247, align 4, !tbaa !484
  %249 = shl i32 %248, 4
  %250 = or i32 %246, %249
  %251 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %252 = load i32, ptr %251, align 4, !tbaa !484
  %253 = shl i32 %252, 2
  %254 = or i32 %250, %253
  %255 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %256 = load i32, ptr %255, align 4, !tbaa !484
  %257 = or i32 %254, %256
  store i32 %257, ptr %7, align 4, !tbaa !493
  %258 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %259 = load i32, ptr %258, align 4, !tbaa !484
  %260 = shl i32 %259, 22
  %261 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %262 = load i32, ptr %261, align 4, !tbaa !484
  %263 = shl i32 %262, 20
  %264 = or i32 %263, %260
  %265 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %266 = load i32, ptr %265, align 4, !tbaa !484
  %267 = shl i32 %266, 18
  %268 = or i32 %264, %267
  %269 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %270 = load i32, ptr %269, align 4, !tbaa !484
  %271 = shl i32 %270, 16
  %272 = or i32 %268, %271
  %273 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %274 = load i32, ptr %273, align 4, !tbaa !484
  %275 = shl i32 %274, 14
  %276 = or i32 %272, %275
  %277 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %278 = load i32, ptr %277, align 4, !tbaa !484
  %279 = shl i32 %278, 12
  %280 = or i32 %276, %279
  %281 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %282 = load i32, ptr %281, align 4, !tbaa !484
  %283 = shl i32 %282, 10
  %284 = or i32 %280, %283
  %285 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %286 = load i32, ptr %285, align 4, !tbaa !484
  %287 = shl i32 %286, 8
  %288 = or i32 %284, %287
  %289 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %290 = load i32, ptr %289, align 4, !tbaa !484
  %291 = shl i32 %290, 6
  %292 = or i32 %288, %291
  %293 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %294 = load i32, ptr %293, align 4, !tbaa !484
  %295 = shl i32 %294, 4
  %296 = or i32 %292, %295
  %297 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %298 = load i32, ptr %297, align 4, !tbaa !484
  %299 = shl i32 %298, 2
  %300 = or i32 %296, %299
  %301 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %302 = load i32, ptr %301, align 4, !tbaa !484
  %303 = or i32 %300, %302
  store i32 %303, ptr %8, align 4, !tbaa !493
  %304 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %305 = load i32, ptr %304, align 4, !tbaa !484
  %306 = shl i32 %305, 22
  %307 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %308 = load i32, ptr %307, align 4, !tbaa !484
  %309 = shl i32 %308, 20
  %310 = or i32 %309, %306
  %311 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %312 = load i32, ptr %311, align 4, !tbaa !484
  %313 = shl i32 %312, 18
  %314 = or i32 %310, %313
  %315 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %316 = load i32, ptr %315, align 4, !tbaa !484
  %317 = shl i32 %316, 16
  %318 = or i32 %314, %317
  %319 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %320 = load i32, ptr %319, align 4, !tbaa !484
  %321 = shl i32 %320, 14
  %322 = or i32 %318, %321
  %323 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %324 = load i32, ptr %323, align 4, !tbaa !484
  %325 = shl i32 %324, 12
  %326 = or i32 %322, %325
  %327 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %328 = load i32, ptr %327, align 4, !tbaa !484
  %329 = shl i32 %328, 10
  %330 = or i32 %326, %329
  %331 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %332 = load i32, ptr %331, align 4, !tbaa !484
  %333 = shl i32 %332, 8
  %334 = or i32 %330, %333
  %335 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %336 = load i32, ptr %335, align 4, !tbaa !484
  %337 = shl i32 %336, 6
  %338 = or i32 %334, %337
  %339 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %340 = load i32, ptr %339, align 4, !tbaa !484
  %341 = shl i32 %340, 4
  %342 = or i32 %338, %341
  %343 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %344 = load i32, ptr %343, align 4, !tbaa !484
  %345 = shl i32 %344, 2
  %346 = or i32 %342, %345
  %347 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %348 = load i32, ptr %347, align 4, !tbaa !484
  %349 = or i32 %346, %348
  store i32 %349, ptr %9, align 4, !tbaa !493
  %350 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %351 = load i32, ptr %350, align 4, !tbaa !484
  %352 = shl i32 %351, 22
  %353 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %354 = load i32, ptr %353, align 4, !tbaa !484
  %355 = shl i32 %354, 20
  %356 = or i32 %355, %352
  %357 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %358 = load i32, ptr %357, align 4, !tbaa !484
  %359 = shl i32 %358, 18
  %360 = or i32 %356, %359
  %361 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %362 = load i32, ptr %361, align 4, !tbaa !484
  %363 = shl i32 %362, 16
  %364 = or i32 %360, %363
  %365 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %366 = load i32, ptr %365, align 4, !tbaa !484
  %367 = shl i32 %366, 14
  %368 = or i32 %364, %367
  %369 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %370 = load i32, ptr %369, align 4, !tbaa !484
  %371 = shl i32 %370, 12
  %372 = or i32 %368, %371
  %373 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %374 = load i32, ptr %373, align 4, !tbaa !484
  %375 = shl i32 %374, 10
  %376 = or i32 %372, %375
  %377 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %378 = load i32, ptr %377, align 4, !tbaa !484
  %379 = shl i32 %378, 8
  %380 = or i32 %376, %379
  %381 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %382 = load i32, ptr %381, align 4, !tbaa !484
  %383 = shl i32 %382, 6
  %384 = or i32 %380, %383
  %385 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %386 = load i32, ptr %385, align 4, !tbaa !484
  %387 = shl i32 %386, 4
  %388 = or i32 %384, %387
  %389 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %390 = load i32, ptr %389, align 4, !tbaa !484
  %391 = shl i32 %390, 2
  %392 = or i32 %388, %391
  %393 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %394 = load i32, ptr %393, align 4, !tbaa !484
  %395 = or i32 %392, %394
  store i32 %395, ptr %10, align 4, !tbaa !493
  %396 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %397 = load i32, ptr %396, align 4, !tbaa !484
  %398 = shl i32 %397, 22
  %399 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %400 = load i32, ptr %399, align 4, !tbaa !484
  %401 = shl i32 %400, 20
  %402 = or i32 %401, %398
  %403 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %404 = load i32, ptr %403, align 4, !tbaa !484
  %405 = shl i32 %404, 18
  %406 = or i32 %402, %405
  %407 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %408 = load i32, ptr %407, align 4, !tbaa !484
  %409 = shl i32 %408, 16
  %410 = or i32 %406, %409
  %411 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %412 = load i32, ptr %411, align 4, !tbaa !484
  %413 = shl i32 %412, 14
  %414 = or i32 %410, %413
  %415 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %416 = load i32, ptr %415, align 4, !tbaa !484
  %417 = shl i32 %416, 12
  %418 = or i32 %414, %417
  %419 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %420 = load i32, ptr %419, align 4, !tbaa !484
  %421 = shl i32 %420, 10
  %422 = or i32 %418, %421
  %423 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %424 = load i32, ptr %423, align 4, !tbaa !484
  %425 = shl i32 %424, 8
  %426 = or i32 %422, %425
  %427 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %428 = load i32, ptr %427, align 4, !tbaa !484
  %429 = shl i32 %428, 6
  %430 = or i32 %426, %429
  %431 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %432 = load i32, ptr %431, align 4, !tbaa !484
  %433 = shl i32 %432, 4
  %434 = or i32 %430, %433
  %435 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %436 = load i32, ptr %435, align 4, !tbaa !484
  %437 = shl i32 %436, 2
  %438 = or i32 %434, %437
  %439 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %440 = load i32, ptr %439, align 4, !tbaa !484
  %441 = or i32 %438, %440
  store i32 %441, ptr %11, align 4, !tbaa !493
  %442 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 11) #17
  %443 = load i32, ptr %442, align 4, !tbaa !484
  %444 = shl i32 %443, 22
  %445 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 8) #17
  %446 = load i32, ptr %445, align 4, !tbaa !484
  %447 = shl i32 %446, 20
  %448 = or i32 %447, %444
  %449 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 9) #17
  %450 = load i32, ptr %449, align 4, !tbaa !484
  %451 = shl i32 %450, 18
  %452 = or i32 %448, %451
  %453 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 10) #17
  %454 = load i32, ptr %453, align 4, !tbaa !484
  %455 = shl i32 %454, 16
  %456 = or i32 %452, %455
  %457 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 4) #17
  %458 = load i32, ptr %457, align 4, !tbaa !484
  %459 = shl i32 %458, 14
  %460 = or i32 %456, %459
  %461 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 5) #17
  %462 = load i32, ptr %461, align 4, !tbaa !484
  %463 = shl i32 %462, 12
  %464 = or i32 %460, %463
  %465 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 6) #17
  %466 = load i32, ptr %465, align 4, !tbaa !484
  %467 = shl i32 %466, 10
  %468 = or i32 %464, %467
  %469 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 7) #17
  %470 = load i32, ptr %469, align 4, !tbaa !484
  %471 = shl i32 %470, 8
  %472 = or i32 %468, %471
  %473 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 1) #17
  %474 = load i32, ptr %473, align 4, !tbaa !484
  %475 = shl i32 %474, 6
  %476 = or i32 %472, %475
  %477 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 2) #17
  %478 = load i32, ptr %477, align 4, !tbaa !484
  %479 = shl i32 %478, 4
  %480 = or i32 %476, %479
  %481 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 3) #17
  %482 = load i32, ptr %481, align 4, !tbaa !484
  %483 = shl i32 %482, 2
  %484 = or i32 %480, %483
  %485 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %4, i64 noundef 0) #17
  %486 = load i32, ptr %485, align 4, !tbaa !484
  %487 = or i32 %484, %486
  store i32 %487, ptr %12, align 4, !tbaa !493
  %488 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #17
  %489 = load i32, ptr %488, align 4, !tbaa !493
  store i32 %489, ptr %5, align 4, !tbaa !493
  %490 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 4 dereferenceable(4) %8) #17
  %491 = load i32, ptr %490, align 4, !tbaa !493
  store i32 %491, ptr %7, align 4, !tbaa !493
  %492 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10) #17
  %493 = load i32, ptr %492, align 4, !tbaa !493
  store i32 %493, ptr %9, align 4, !tbaa !493
  %494 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %11, ptr noundef nonnull align 4 dereferenceable(4) %12) #17
  %495 = load i32, ptr %494, align 4, !tbaa !493
  store i32 %495, ptr %11, align 4, !tbaa !493
  %496 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %7) #17
  %497 = load i32, ptr %496, align 4, !tbaa !493
  store i32 %497, ptr %5, align 4, !tbaa !493
  %498 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %11) #17
  %499 = load i32, ptr %498, align 4, !tbaa !493
  store i32 %499, ptr %9, align 4, !tbaa !493
  %500 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZSt3minIiERKT_S2_S2_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %9) #17
  %501 = load i32, ptr %500, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #18
  ret i32 %501
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm12EEixEm(ptr noundef nonnull align 4 dereferenceable(48) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %3 = getelementptr inbounds [12 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost5arrayIN9FastBoard8square_tELm12EE4sizeEv() local_unnamed_addr #6 comdat align 2 !prof !489 {
  ret i64 12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZN9FastBoard12get_pattern5Eibb(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 !prof !489 {
  %5 = alloca %"class.boost::array.23", align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %15 = load i32, ptr %14, align 8, !tbaa !466
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %5) #18
  br i1 %3, label %16, label %31

16:                                               ; preds = %4
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  store i64 3, ptr %17, align 8, !tbaa !865
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  store i64 3, ptr %18, align 8, !tbaa !865
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  store i64 3, ptr %19, align 8, !tbaa !865
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  store i64 3, ptr %20, align 8, !tbaa !865
  %21 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  store i64 3, ptr %21, align 8, !tbaa !865
  %22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  store i64 3, ptr %22, align 8, !tbaa !865
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  store i64 3, ptr %23, align 8, !tbaa !865
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  store i64 3, ptr %24, align 8, !tbaa !865
  %25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  store i64 3, ptr %25, align 8, !tbaa !865
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  store i64 3, ptr %26, align 8, !tbaa !865
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  store i64 3, ptr %27, align 8, !tbaa !865
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  store i64 3, ptr %28, align 8, !tbaa !865
  %29 = add nsw i32 %15, 2
  %30 = sub nsw i32 %1, %29
  br label %108

31:                                               ; preds = %4
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %33 = add nsw i32 %15, 2
  %34 = shl nsw i32 %33, 1
  %35 = sub nsw i32 %1, %34
  %36 = add nsw i32 %35, -1
  %37 = sext i32 %36 to i64
  %38 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %37) #17
  %39 = load i32, ptr %38, align 4, !tbaa !484
  %40 = zext i32 %39 to i64
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  store i64 %40, ptr %41, align 8, !tbaa !865
  %42 = sext i32 %35 to i64
  %43 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %42) #17
  %44 = load i32, ptr %43, align 4, !tbaa !484
  %45 = zext i32 %44 to i64
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  store i64 %45, ptr %46, align 8, !tbaa !865
  %47 = add nsw i32 %35, 1
  %48 = sext i32 %47 to i64
  %49 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %48) #17
  %50 = load i32, ptr %49, align 4, !tbaa !484
  %51 = zext i32 %50 to i64
  %52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  store i64 %51, ptr %52, align 8, !tbaa !865
  %53 = sub nsw i32 %1, %33
  %54 = add nsw i32 %53, -2
  %55 = sext i32 %54 to i64
  %56 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %55) #17
  %57 = load i32, ptr %56, align 4, !tbaa !484
  %58 = zext i32 %57 to i64
  %59 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  store i64 %58, ptr %59, align 8, !tbaa !865
  %60 = add nsw i32 %53, 2
  %61 = sext i32 %60 to i64
  %62 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %61) #17
  %63 = load i32, ptr %62, align 4, !tbaa !484
  %64 = zext i32 %63 to i64
  %65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  store i64 %64, ptr %65, align 8, !tbaa !865
  %66 = add nsw i32 %1, -2
  %67 = sext i32 %66 to i64
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %67) #17
  %69 = load i32, ptr %68, align 4, !tbaa !484
  %70 = zext i32 %69 to i64
  %71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  store i64 %70, ptr %71, align 8, !tbaa !865
  %72 = add i32 %1, 2
  %73 = sext i32 %72 to i64
  %74 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %73) #17
  %75 = load i32, ptr %74, align 4, !tbaa !484
  %76 = zext i32 %75 to i64
  %77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  store i64 %76, ptr %77, align 8, !tbaa !865
  %78 = add i32 %15, %1
  %79 = sext i32 %78 to i64
  %80 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %79) #17
  %81 = load i32, ptr %80, align 4, !tbaa !484
  %82 = zext i32 %81 to i64
  %83 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  store i64 %82, ptr %83, align 8, !tbaa !865
  %84 = add i32 %72, %33
  %85 = sext i32 %84 to i64
  %86 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %85) #17
  %87 = load i32, ptr %86, align 4, !tbaa !484
  %88 = zext i32 %87 to i64
  %89 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  store i64 %88, ptr %89, align 8, !tbaa !865
  %90 = add nsw i32 %34, %1
  %91 = add nsw i32 %90, -1
  %92 = sext i32 %91 to i64
  %93 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %92) #17
  %94 = load i32, ptr %93, align 4, !tbaa !484
  %95 = zext i32 %94 to i64
  %96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  store i64 %95, ptr %96, align 8, !tbaa !865
  %97 = sext i32 %90 to i64
  %98 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %97) #17
  %99 = load i32, ptr %98, align 4, !tbaa !484
  %100 = zext i32 %99 to i64
  %101 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  store i64 %100, ptr %101, align 8, !tbaa !865
  %102 = add nsw i32 %90, 1
  %103 = sext i32 %102 to i64
  %104 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %32, i64 noundef %103) #17
  %105 = load i32, ptr %104, align 4, !tbaa !484
  %106 = zext i32 %105 to i64
  %107 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  store i64 %106, ptr %107, align 8, !tbaa !865
  br label %108

108:                                              ; preds = %31, %16
  %109 = phi i32 [ %53, %31 ], [ %30, %16 ]
  %110 = phi i32 [ %33, %31 ], [ %29, %16 ]
  %111 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %112 = add nsw i32 %109, -1
  %113 = sext i32 %112 to i64
  %114 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %113) #17
  %115 = load i32, ptr %114, align 4, !tbaa !484
  %116 = zext i32 %115 to i64
  %117 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  store i64 %116, ptr %117, align 8, !tbaa !865
  %118 = sext i32 %109 to i64
  %119 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %118) #17
  %120 = load i32, ptr %119, align 4, !tbaa !484
  %121 = zext i32 %120 to i64
  %122 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  store i64 %121, ptr %122, align 8, !tbaa !865
  %123 = add nsw i32 %109, 1
  %124 = sext i32 %123 to i64
  %125 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %124) #17
  %126 = load i32, ptr %125, align 4, !tbaa !484
  %127 = zext i32 %126 to i64
  %128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  store i64 %127, ptr %128, align 8, !tbaa !865
  %129 = add nsw i32 %1, -1
  %130 = sext i32 %129 to i64
  %131 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %130) #17
  %132 = load i32, ptr %131, align 4, !tbaa !484
  %133 = zext i32 %132 to i64
  %134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  store i64 %133, ptr %134, align 8, !tbaa !865
  %135 = add nsw i32 %1, 1
  %136 = sext i32 %135 to i64
  %137 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %136) #17
  %138 = load i32, ptr %137, align 4, !tbaa !484
  %139 = zext i32 %138 to i64
  %140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  store i64 %139, ptr %140, align 8, !tbaa !865
  %141 = add nsw i32 %110, %1
  %142 = add nsw i32 %141, -1
  %143 = sext i32 %142 to i64
  %144 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %143) #17
  %145 = load i32, ptr %144, align 4, !tbaa !484
  %146 = zext i32 %145 to i64
  %147 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  store i64 %146, ptr %147, align 8, !tbaa !865
  %148 = sext i32 %141 to i64
  %149 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %148) #17
  %150 = load i32, ptr %149, align 4, !tbaa !484
  %151 = zext i32 %150 to i64
  %152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  store i64 %151, ptr %152, align 8, !tbaa !865
  %153 = add nsw i32 %141, 1
  %154 = sext i32 %153 to i64
  %155 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %111, i64 noundef %154) #17
  %156 = load i32, ptr %155, align 4, !tbaa !484
  %157 = zext i32 %156 to i64
  %158 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  store i64 %157, ptr %158, align 8, !tbaa !865
  br i1 %2, label %159, label %175

159:                                              ; preds = %108
  %160 = call noundef i64 @_ZN5boost5arrayIyLm20EE4sizeEv() #17
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %159, %162
  %163 = phi i64 [ %172, %162 ], [ 0, %159 ]
  %164 = phi i32 [ %171, %162 ], [ 0, %159 ]
  %165 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef %163) #17
  %166 = load i64, ptr %165, align 8, !tbaa !865
  %167 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) @_ZN9FastBoard9s_cinvertE, i64 noundef %166) #17
  %168 = load i32, ptr %167, align 4, !tbaa !484
  %169 = zext i32 %168 to i64
  %170 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef %163) #17
  store i64 %169, ptr %170, align 8, !tbaa !865
  %171 = add i32 %164, 1
  %172 = zext i32 %171 to i64
  %173 = call noundef i64 @_ZN5boost5arrayIyLm20EE4sizeEv() #17
  %174 = icmp ugt i64 %173, %172
  br i1 %174, label %162, label %175, !llvm.loop !867

175:                                              ; preds = %162, %159, %108
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #18
  %176 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %177 = load i64, ptr %176, align 8, !tbaa !865
  %178 = shl i64 %177, 38
  %179 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %180 = load i64, ptr %179, align 8, !tbaa !865
  %181 = shl i64 %180, 36
  %182 = or i64 %181, %178
  %183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %184 = load i64, ptr %183, align 8, !tbaa !865
  %185 = shl i64 %184, 34
  %186 = or i64 %182, %185
  %187 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %188 = load i64, ptr %187, align 8, !tbaa !865
  %189 = shl i64 %188, 32
  %190 = or i64 %186, %189
  %191 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %192 = load i64, ptr %191, align 8, !tbaa !865
  %193 = shl i64 %192, 30
  %194 = or i64 %190, %193
  %195 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %196 = load i64, ptr %195, align 8, !tbaa !865
  %197 = shl i64 %196, 28
  %198 = or i64 %194, %197
  %199 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %200 = load i64, ptr %199, align 8, !tbaa !865
  %201 = shl i64 %200, 26
  %202 = or i64 %198, %201
  %203 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %204 = load i64, ptr %203, align 8, !tbaa !865
  %205 = shl i64 %204, 24
  %206 = or i64 %202, %205
  %207 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %208 = load i64, ptr %207, align 8, !tbaa !865
  %209 = shl i64 %208, 22
  %210 = or i64 %206, %209
  %211 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %212 = load i64, ptr %211, align 8, !tbaa !865
  %213 = shl i64 %212, 20
  %214 = or i64 %210, %213
  %215 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %216 = load i64, ptr %215, align 8, !tbaa !865
  %217 = shl i64 %216, 18
  %218 = or i64 %214, %217
  %219 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %220 = load i64, ptr %219, align 8, !tbaa !865
  %221 = shl i64 %220, 16
  %222 = or i64 %218, %221
  %223 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %224 = load i64, ptr %223, align 8, !tbaa !865
  %225 = shl i64 %224, 14
  %226 = or i64 %222, %225
  %227 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %228 = load i64, ptr %227, align 8, !tbaa !865
  %229 = shl i64 %228, 12
  %230 = or i64 %226, %229
  %231 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %232 = load i64, ptr %231, align 8, !tbaa !865
  %233 = shl i64 %232, 10
  %234 = or i64 %230, %233
  %235 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %236 = load i64, ptr %235, align 8, !tbaa !865
  %237 = shl i64 %236, 8
  %238 = or i64 %234, %237
  %239 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %240 = load i64, ptr %239, align 8, !tbaa !865
  %241 = shl i64 %240, 6
  %242 = or i64 %238, %241
  %243 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %244 = load i64, ptr %243, align 8, !tbaa !865
  %245 = shl i64 %244, 4
  %246 = or i64 %242, %245
  %247 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %248 = load i64, ptr %247, align 8, !tbaa !865
  %249 = shl i64 %248, 2
  %250 = or i64 %246, %249
  %251 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %252 = load i64, ptr %251, align 8, !tbaa !865
  %253 = or i64 %250, %252
  store i64 %253, ptr %6, align 8, !tbaa !865
  %254 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %255 = load i64, ptr %254, align 8, !tbaa !865
  %256 = shl i64 %255, 38
  %257 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %258 = load i64, ptr %257, align 8, !tbaa !865
  %259 = shl i64 %258, 36
  %260 = or i64 %259, %256
  %261 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %262 = load i64, ptr %261, align 8, !tbaa !865
  %263 = shl i64 %262, 34
  %264 = or i64 %260, %263
  %265 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %266 = load i64, ptr %265, align 8, !tbaa !865
  %267 = shl i64 %266, 32
  %268 = or i64 %264, %267
  %269 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %270 = load i64, ptr %269, align 8, !tbaa !865
  %271 = shl i64 %270, 30
  %272 = or i64 %268, %271
  %273 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %274 = load i64, ptr %273, align 8, !tbaa !865
  %275 = shl i64 %274, 28
  %276 = or i64 %272, %275
  %277 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %278 = load i64, ptr %277, align 8, !tbaa !865
  %279 = shl i64 %278, 26
  %280 = or i64 %276, %279
  %281 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %282 = load i64, ptr %281, align 8, !tbaa !865
  %283 = shl i64 %282, 24
  %284 = or i64 %280, %283
  %285 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %286 = load i64, ptr %285, align 8, !tbaa !865
  %287 = shl i64 %286, 22
  %288 = or i64 %284, %287
  %289 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %290 = load i64, ptr %289, align 8, !tbaa !865
  %291 = shl i64 %290, 20
  %292 = or i64 %288, %291
  %293 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %294 = load i64, ptr %293, align 8, !tbaa !865
  %295 = shl i64 %294, 18
  %296 = or i64 %292, %295
  %297 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %298 = load i64, ptr %297, align 8, !tbaa !865
  %299 = shl i64 %298, 16
  %300 = or i64 %296, %299
  %301 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %302 = load i64, ptr %301, align 8, !tbaa !865
  %303 = shl i64 %302, 14
  %304 = or i64 %300, %303
  %305 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %306 = load i64, ptr %305, align 8, !tbaa !865
  %307 = shl i64 %306, 12
  %308 = or i64 %304, %307
  %309 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %310 = load i64, ptr %309, align 8, !tbaa !865
  %311 = shl i64 %310, 10
  %312 = or i64 %308, %311
  %313 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %314 = load i64, ptr %313, align 8, !tbaa !865
  %315 = shl i64 %314, 8
  %316 = or i64 %312, %315
  %317 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %318 = load i64, ptr %317, align 8, !tbaa !865
  %319 = shl i64 %318, 6
  %320 = or i64 %316, %319
  %321 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %322 = load i64, ptr %321, align 8, !tbaa !865
  %323 = shl i64 %322, 4
  %324 = or i64 %320, %323
  %325 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %326 = load i64, ptr %325, align 8, !tbaa !865
  %327 = shl i64 %326, 2
  %328 = or i64 %324, %327
  %329 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %330 = load i64, ptr %329, align 8, !tbaa !865
  %331 = or i64 %328, %330
  store i64 %331, ptr %7, align 8, !tbaa !865
  %332 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %333 = load i64, ptr %332, align 8, !tbaa !865
  %334 = shl i64 %333, 38
  %335 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %336 = load i64, ptr %335, align 8, !tbaa !865
  %337 = shl i64 %336, 36
  %338 = or i64 %337, %334
  %339 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %340 = load i64, ptr %339, align 8, !tbaa !865
  %341 = shl i64 %340, 34
  %342 = or i64 %338, %341
  %343 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %344 = load i64, ptr %343, align 8, !tbaa !865
  %345 = shl i64 %344, 32
  %346 = or i64 %342, %345
  %347 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %348 = load i64, ptr %347, align 8, !tbaa !865
  %349 = shl i64 %348, 30
  %350 = or i64 %346, %349
  %351 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %352 = load i64, ptr %351, align 8, !tbaa !865
  %353 = shl i64 %352, 28
  %354 = or i64 %350, %353
  %355 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %356 = load i64, ptr %355, align 8, !tbaa !865
  %357 = shl i64 %356, 26
  %358 = or i64 %354, %357
  %359 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %360 = load i64, ptr %359, align 8, !tbaa !865
  %361 = shl i64 %360, 24
  %362 = or i64 %358, %361
  %363 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %364 = load i64, ptr %363, align 8, !tbaa !865
  %365 = shl i64 %364, 22
  %366 = or i64 %362, %365
  %367 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %368 = load i64, ptr %367, align 8, !tbaa !865
  %369 = shl i64 %368, 20
  %370 = or i64 %366, %369
  %371 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %372 = load i64, ptr %371, align 8, !tbaa !865
  %373 = shl i64 %372, 18
  %374 = or i64 %370, %373
  %375 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %376 = load i64, ptr %375, align 8, !tbaa !865
  %377 = shl i64 %376, 16
  %378 = or i64 %374, %377
  %379 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %380 = load i64, ptr %379, align 8, !tbaa !865
  %381 = shl i64 %380, 14
  %382 = or i64 %378, %381
  %383 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %384 = load i64, ptr %383, align 8, !tbaa !865
  %385 = shl i64 %384, 12
  %386 = or i64 %382, %385
  %387 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %388 = load i64, ptr %387, align 8, !tbaa !865
  %389 = shl i64 %388, 10
  %390 = or i64 %386, %389
  %391 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %392 = load i64, ptr %391, align 8, !tbaa !865
  %393 = shl i64 %392, 8
  %394 = or i64 %390, %393
  %395 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %396 = load i64, ptr %395, align 8, !tbaa !865
  %397 = shl i64 %396, 6
  %398 = or i64 %394, %397
  %399 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %400 = load i64, ptr %399, align 8, !tbaa !865
  %401 = shl i64 %400, 4
  %402 = or i64 %398, %401
  %403 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %404 = load i64, ptr %403, align 8, !tbaa !865
  %405 = shl i64 %404, 2
  %406 = or i64 %402, %405
  %407 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %408 = load i64, ptr %407, align 8, !tbaa !865
  %409 = or i64 %406, %408
  store i64 %409, ptr %8, align 8, !tbaa !865
  %410 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %411 = load i64, ptr %410, align 8, !tbaa !865
  %412 = shl i64 %411, 38
  %413 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %414 = load i64, ptr %413, align 8, !tbaa !865
  %415 = shl i64 %414, 36
  %416 = or i64 %415, %412
  %417 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %418 = load i64, ptr %417, align 8, !tbaa !865
  %419 = shl i64 %418, 34
  %420 = or i64 %416, %419
  %421 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %422 = load i64, ptr %421, align 8, !tbaa !865
  %423 = shl i64 %422, 32
  %424 = or i64 %420, %423
  %425 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %426 = load i64, ptr %425, align 8, !tbaa !865
  %427 = shl i64 %426, 30
  %428 = or i64 %424, %427
  %429 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %430 = load i64, ptr %429, align 8, !tbaa !865
  %431 = shl i64 %430, 28
  %432 = or i64 %428, %431
  %433 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %434 = load i64, ptr %433, align 8, !tbaa !865
  %435 = shl i64 %434, 26
  %436 = or i64 %432, %435
  %437 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %438 = load i64, ptr %437, align 8, !tbaa !865
  %439 = shl i64 %438, 24
  %440 = or i64 %436, %439
  %441 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %442 = load i64, ptr %441, align 8, !tbaa !865
  %443 = shl i64 %442, 22
  %444 = or i64 %440, %443
  %445 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %446 = load i64, ptr %445, align 8, !tbaa !865
  %447 = shl i64 %446, 20
  %448 = or i64 %444, %447
  %449 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %450 = load i64, ptr %449, align 8, !tbaa !865
  %451 = shl i64 %450, 18
  %452 = or i64 %448, %451
  %453 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %454 = load i64, ptr %453, align 8, !tbaa !865
  %455 = shl i64 %454, 16
  %456 = or i64 %452, %455
  %457 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %458 = load i64, ptr %457, align 8, !tbaa !865
  %459 = shl i64 %458, 14
  %460 = or i64 %456, %459
  %461 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %462 = load i64, ptr %461, align 8, !tbaa !865
  %463 = shl i64 %462, 12
  %464 = or i64 %460, %463
  %465 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %466 = load i64, ptr %465, align 8, !tbaa !865
  %467 = shl i64 %466, 10
  %468 = or i64 %464, %467
  %469 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %470 = load i64, ptr %469, align 8, !tbaa !865
  %471 = shl i64 %470, 8
  %472 = or i64 %468, %471
  %473 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %474 = load i64, ptr %473, align 8, !tbaa !865
  %475 = shl i64 %474, 6
  %476 = or i64 %472, %475
  %477 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %478 = load i64, ptr %477, align 8, !tbaa !865
  %479 = shl i64 %478, 4
  %480 = or i64 %476, %479
  %481 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %482 = load i64, ptr %481, align 8, !tbaa !865
  %483 = shl i64 %482, 2
  %484 = or i64 %480, %483
  %485 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %486 = load i64, ptr %485, align 8, !tbaa !865
  %487 = or i64 %484, %486
  store i64 %487, ptr %9, align 8, !tbaa !865
  %488 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %489 = load i64, ptr %488, align 8, !tbaa !865
  %490 = shl i64 %489, 38
  %491 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %492 = load i64, ptr %491, align 8, !tbaa !865
  %493 = shl i64 %492, 36
  %494 = or i64 %493, %490
  %495 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %496 = load i64, ptr %495, align 8, !tbaa !865
  %497 = shl i64 %496, 34
  %498 = or i64 %494, %497
  %499 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %500 = load i64, ptr %499, align 8, !tbaa !865
  %501 = shl i64 %500, 32
  %502 = or i64 %498, %501
  %503 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %504 = load i64, ptr %503, align 8, !tbaa !865
  %505 = shl i64 %504, 30
  %506 = or i64 %502, %505
  %507 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %508 = load i64, ptr %507, align 8, !tbaa !865
  %509 = shl i64 %508, 28
  %510 = or i64 %506, %509
  %511 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %512 = load i64, ptr %511, align 8, !tbaa !865
  %513 = shl i64 %512, 26
  %514 = or i64 %510, %513
  %515 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %516 = load i64, ptr %515, align 8, !tbaa !865
  %517 = shl i64 %516, 24
  %518 = or i64 %514, %517
  %519 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %520 = load i64, ptr %519, align 8, !tbaa !865
  %521 = shl i64 %520, 22
  %522 = or i64 %518, %521
  %523 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %524 = load i64, ptr %523, align 8, !tbaa !865
  %525 = shl i64 %524, 20
  %526 = or i64 %522, %525
  %527 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %528 = load i64, ptr %527, align 8, !tbaa !865
  %529 = shl i64 %528, 18
  %530 = or i64 %526, %529
  %531 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %532 = load i64, ptr %531, align 8, !tbaa !865
  %533 = shl i64 %532, 16
  %534 = or i64 %530, %533
  %535 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %536 = load i64, ptr %535, align 8, !tbaa !865
  %537 = shl i64 %536, 14
  %538 = or i64 %534, %537
  %539 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %540 = load i64, ptr %539, align 8, !tbaa !865
  %541 = shl i64 %540, 12
  %542 = or i64 %538, %541
  %543 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %544 = load i64, ptr %543, align 8, !tbaa !865
  %545 = shl i64 %544, 10
  %546 = or i64 %542, %545
  %547 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %548 = load i64, ptr %547, align 8, !tbaa !865
  %549 = shl i64 %548, 8
  %550 = or i64 %546, %549
  %551 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %552 = load i64, ptr %551, align 8, !tbaa !865
  %553 = shl i64 %552, 6
  %554 = or i64 %550, %553
  %555 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %556 = load i64, ptr %555, align 8, !tbaa !865
  %557 = shl i64 %556, 4
  %558 = or i64 %554, %557
  %559 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %560 = load i64, ptr %559, align 8, !tbaa !865
  %561 = shl i64 %560, 2
  %562 = or i64 %558, %561
  %563 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %564 = load i64, ptr %563, align 8, !tbaa !865
  %565 = or i64 %562, %564
  store i64 %565, ptr %10, align 8, !tbaa !865
  %566 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %567 = load i64, ptr %566, align 8, !tbaa !865
  %568 = shl i64 %567, 38
  %569 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %570 = load i64, ptr %569, align 8, !tbaa !865
  %571 = shl i64 %570, 36
  %572 = or i64 %571, %568
  %573 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %574 = load i64, ptr %573, align 8, !tbaa !865
  %575 = shl i64 %574, 34
  %576 = or i64 %572, %575
  %577 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %578 = load i64, ptr %577, align 8, !tbaa !865
  %579 = shl i64 %578, 32
  %580 = or i64 %576, %579
  %581 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %582 = load i64, ptr %581, align 8, !tbaa !865
  %583 = shl i64 %582, 30
  %584 = or i64 %580, %583
  %585 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %586 = load i64, ptr %585, align 8, !tbaa !865
  %587 = shl i64 %586, 28
  %588 = or i64 %584, %587
  %589 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %590 = load i64, ptr %589, align 8, !tbaa !865
  %591 = shl i64 %590, 26
  %592 = or i64 %588, %591
  %593 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %594 = load i64, ptr %593, align 8, !tbaa !865
  %595 = shl i64 %594, 24
  %596 = or i64 %592, %595
  %597 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %598 = load i64, ptr %597, align 8, !tbaa !865
  %599 = shl i64 %598, 22
  %600 = or i64 %596, %599
  %601 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %602 = load i64, ptr %601, align 8, !tbaa !865
  %603 = shl i64 %602, 20
  %604 = or i64 %600, %603
  %605 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %606 = load i64, ptr %605, align 8, !tbaa !865
  %607 = shl i64 %606, 18
  %608 = or i64 %604, %607
  %609 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %610 = load i64, ptr %609, align 8, !tbaa !865
  %611 = shl i64 %610, 16
  %612 = or i64 %608, %611
  %613 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %614 = load i64, ptr %613, align 8, !tbaa !865
  %615 = shl i64 %614, 14
  %616 = or i64 %612, %615
  %617 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %618 = load i64, ptr %617, align 8, !tbaa !865
  %619 = shl i64 %618, 12
  %620 = or i64 %616, %619
  %621 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %622 = load i64, ptr %621, align 8, !tbaa !865
  %623 = shl i64 %622, 10
  %624 = or i64 %620, %623
  %625 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %626 = load i64, ptr %625, align 8, !tbaa !865
  %627 = shl i64 %626, 8
  %628 = or i64 %624, %627
  %629 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %630 = load i64, ptr %629, align 8, !tbaa !865
  %631 = shl i64 %630, 6
  %632 = or i64 %628, %631
  %633 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %634 = load i64, ptr %633, align 8, !tbaa !865
  %635 = shl i64 %634, 4
  %636 = or i64 %632, %635
  %637 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %638 = load i64, ptr %637, align 8, !tbaa !865
  %639 = shl i64 %638, 2
  %640 = or i64 %636, %639
  %641 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %642 = load i64, ptr %641, align 8, !tbaa !865
  %643 = or i64 %640, %642
  store i64 %643, ptr %11, align 8, !tbaa !865
  %644 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %645 = load i64, ptr %644, align 8, !tbaa !865
  %646 = shl i64 %645, 38
  %647 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %648 = load i64, ptr %647, align 8, !tbaa !865
  %649 = shl i64 %648, 36
  %650 = or i64 %649, %646
  %651 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %652 = load i64, ptr %651, align 8, !tbaa !865
  %653 = shl i64 %652, 34
  %654 = or i64 %650, %653
  %655 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %656 = load i64, ptr %655, align 8, !tbaa !865
  %657 = shl i64 %656, 32
  %658 = or i64 %654, %657
  %659 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %660 = load i64, ptr %659, align 8, !tbaa !865
  %661 = shl i64 %660, 30
  %662 = or i64 %658, %661
  %663 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %664 = load i64, ptr %663, align 8, !tbaa !865
  %665 = shl i64 %664, 28
  %666 = or i64 %662, %665
  %667 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %668 = load i64, ptr %667, align 8, !tbaa !865
  %669 = shl i64 %668, 26
  %670 = or i64 %666, %669
  %671 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %672 = load i64, ptr %671, align 8, !tbaa !865
  %673 = shl i64 %672, 24
  %674 = or i64 %670, %673
  %675 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %676 = load i64, ptr %675, align 8, !tbaa !865
  %677 = shl i64 %676, 22
  %678 = or i64 %674, %677
  %679 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %680 = load i64, ptr %679, align 8, !tbaa !865
  %681 = shl i64 %680, 20
  %682 = or i64 %678, %681
  %683 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %684 = load i64, ptr %683, align 8, !tbaa !865
  %685 = shl i64 %684, 18
  %686 = or i64 %682, %685
  %687 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %688 = load i64, ptr %687, align 8, !tbaa !865
  %689 = shl i64 %688, 16
  %690 = or i64 %686, %689
  %691 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %692 = load i64, ptr %691, align 8, !tbaa !865
  %693 = shl i64 %692, 14
  %694 = or i64 %690, %693
  %695 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %696 = load i64, ptr %695, align 8, !tbaa !865
  %697 = shl i64 %696, 12
  %698 = or i64 %694, %697
  %699 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %700 = load i64, ptr %699, align 8, !tbaa !865
  %701 = shl i64 %700, 10
  %702 = or i64 %698, %701
  %703 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %704 = load i64, ptr %703, align 8, !tbaa !865
  %705 = shl i64 %704, 8
  %706 = or i64 %702, %705
  %707 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %708 = load i64, ptr %707, align 8, !tbaa !865
  %709 = shl i64 %708, 6
  %710 = or i64 %706, %709
  %711 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %712 = load i64, ptr %711, align 8, !tbaa !865
  %713 = shl i64 %712, 4
  %714 = or i64 %710, %713
  %715 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %716 = load i64, ptr %715, align 8, !tbaa !865
  %717 = shl i64 %716, 2
  %718 = or i64 %714, %717
  %719 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %720 = load i64, ptr %719, align 8, !tbaa !865
  %721 = or i64 %718, %720
  store i64 %721, ptr %12, align 8, !tbaa !865
  %722 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 3) #17
  %723 = load i64, ptr %722, align 8, !tbaa !865
  %724 = shl i64 %723, 38
  %725 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 8) #17
  %726 = load i64, ptr %725, align 8, !tbaa !865
  %727 = shl i64 %726, 36
  %728 = or i64 %727, %724
  %729 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 12) #17
  %730 = load i64, ptr %729, align 8, !tbaa !865
  %731 = shl i64 %730, 34
  %732 = or i64 %728, %731
  %733 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 0) #17
  %734 = load i64, ptr %733, align 8, !tbaa !865
  %735 = shl i64 %734, 32
  %736 = or i64 %732, %735
  %737 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 4) #17
  %738 = load i64, ptr %737, align 8, !tbaa !865
  %739 = shl i64 %738, 30
  %740 = or i64 %736, %739
  %741 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 9) #17
  %742 = load i64, ptr %741, align 8, !tbaa !865
  %743 = shl i64 %742, 28
  %744 = or i64 %740, %743
  %745 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 13) #17
  %746 = load i64, ptr %745, align 8, !tbaa !865
  %747 = shl i64 %746, 26
  %748 = or i64 %744, %747
  %749 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 17) #17
  %750 = load i64, ptr %749, align 8, !tbaa !865
  %751 = shl i64 %750, 24
  %752 = or i64 %748, %751
  %753 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 1) #17
  %754 = load i64, ptr %753, align 8, !tbaa !865
  %755 = shl i64 %754, 22
  %756 = or i64 %752, %755
  %757 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 5) #17
  %758 = load i64, ptr %757, align 8, !tbaa !865
  %759 = shl i64 %758, 20
  %760 = or i64 %756, %759
  %761 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 14) #17
  %762 = load i64, ptr %761, align 8, !tbaa !865
  %763 = shl i64 %762, 18
  %764 = or i64 %760, %763
  %765 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 18) #17
  %766 = load i64, ptr %765, align 8, !tbaa !865
  %767 = shl i64 %766, 16
  %768 = or i64 %764, %767
  %769 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 2) #17
  %770 = load i64, ptr %769, align 8, !tbaa !865
  %771 = shl i64 %770, 14
  %772 = or i64 %768, %771
  %773 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 6) #17
  %774 = load i64, ptr %773, align 8, !tbaa !865
  %775 = shl i64 %774, 12
  %776 = or i64 %772, %775
  %777 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 10) #17
  %778 = load i64, ptr %777, align 8, !tbaa !865
  %779 = shl i64 %778, 10
  %780 = or i64 %776, %779
  %781 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 15) #17
  %782 = load i64, ptr %781, align 8, !tbaa !865
  %783 = shl i64 %782, 8
  %784 = or i64 %780, %783
  %785 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 19) #17
  %786 = load i64, ptr %785, align 8, !tbaa !865
  %787 = shl i64 %786, 6
  %788 = or i64 %784, %787
  %789 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 7) #17
  %790 = load i64, ptr %789, align 8, !tbaa !865
  %791 = shl i64 %790, 4
  %792 = or i64 %788, %791
  %793 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 11) #17
  %794 = load i64, ptr %793, align 8, !tbaa !865
  %795 = shl i64 %794, 2
  %796 = or i64 %792, %795
  %797 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %5, i64 noundef 16) #17
  %798 = load i64, ptr %797, align 8, !tbaa !865
  %799 = or i64 %796, %798
  store i64 %799, ptr %13, align 8, !tbaa !865
  %800 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #17
  %801 = load i64, ptr %800, align 8, !tbaa !865
  store i64 %801, ptr %6, align 8, !tbaa !865
  %802 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #17
  %803 = load i64, ptr %802, align 8, !tbaa !865
  store i64 %803, ptr %8, align 8, !tbaa !865
  %804 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #17
  %805 = load i64, ptr %804, align 8, !tbaa !865
  store i64 %805, ptr %10, align 8, !tbaa !865
  %806 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %13) #17
  %807 = load i64, ptr %806, align 8, !tbaa !865
  store i64 %807, ptr %12, align 8, !tbaa !865
  %808 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %8) #17
  %809 = load i64, ptr %808, align 8, !tbaa !865
  store i64 %809, ptr %6, align 8, !tbaa !865
  %810 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12) #17
  %811 = load i64, ptr %810, align 8, !tbaa !865
  store i64 %811, ptr %10, align 8, !tbaa !865
  %812 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %10) #17
  %813 = load i64, ptr %812, align 8, !tbaa !865
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %5) #18
  ret i64 %813
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm20EEixEm(ptr noundef nonnull align 8 dereferenceable(160) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %3 = getelementptr inbounds [20 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost5arrayIyLm20EE4sizeEv() local_unnamed_addr #6 comdat align 2 !prof !489 {
  ret i64 20
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minIyERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = load i64, ptr %1, align 8, !tbaa !865
  %4 = load i64, ptr %0, align 8, !tbaa !865
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(96) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 align 2 !prof !824 {
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 13
  %7 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %9

8:                                                ; preds = %25
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i64 [ 0, %5 ], [ %26, %25 ]
  %11 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm8EEixEm(ptr noundef nonnull align 4 dereferenceable(32) %6, i64 noundef %10) #17
  %12 = load i32, ptr %11, align 4, !tbaa !493
  %13 = add nsw i32 %12, %2
  %14 = sext i32 %13 to i64
  %15 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %7, i64 noundef %14) #17
  %16 = load i32, ptr %15, align 4, !tbaa !484
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %25, !prof !868

18:                                               ; preds = %9
  %19 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %13) #17
  br i1 %19, label %25, label %20, !prof !869

20:                                               ; preds = %18
  %21 = load i32, ptr %4, align 4, !tbaa !493
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %4, align 4, !tbaa !493
  %23 = sext i32 %21 to i64
  %24 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %3, i64 noundef %23) #17
  store i32 %13, ptr %24, align 4, !tbaa !493
  br label %25

25:                                               ; preds = %18, %20, %9
  %26 = add nuw nsw i64 %10, 1
  %27 = icmp eq i64 %26, 8
  br i1 %27, label %8, label %9, !prof !870, !llvm.loop !871
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(96) %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #6 align 2 !prof !824 {
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9, !prof !872

8:                                                ; preds = %9, %4
  tail call void @_ZNSt6vectorIiSaIiEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  ret void

9:                                                ; preds = %4, %9
  %10 = phi i64 [ %15, %9 ], [ 0, %4 ]
  %11 = phi i32 [ %14, %9 ], [ 0, %4 ]
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %10) #19
  %13 = load i32, ptr %12, align 4, !tbaa !493
  tail call void @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %13, ptr noundef nonnull align 4 dereferenceable(96) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) #17
  %14 = add i32 %11, 1
  %15 = zext i32 %14 to i64
  %16 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %17 = icmp ugt i64 %16, %15
  br i1 %17, label %9, label %8, !prof !873, !llvm.loop !874
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(96) %3, ptr nocapture noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 align 2 !prof !875 {
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %7 = sext i32 %2 to i64
  %8 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %7) #17
  %9 = load i32, ptr %8, align 4, !tbaa !484
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %11, label %44, !prof !876

11:                                               ; preds = %5
  %12 = icmp eq i32 %1, 0
  %13 = zext i1 %12 to i32
  %14 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %13, i32 noundef %2) #17, !range !512
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %44, label %16, !prof !877

16:                                               ; preds = %11
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %20

20:                                               ; preds = %16, %41
  %21 = phi i64 [ 0, %16 ], [ %42, %41 ]
  %22 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %17, i64 noundef %21) #17
  %23 = load i32, ptr %22, align 4, !tbaa !493
  %24 = add nsw i32 %23, %2
  %25 = sext i32 %24 to i64
  %26 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %6, i64 noundef %25) #17
  %27 = load i32, ptr %26, align 4, !tbaa !484
  %28 = icmp eq i32 %27, %13
  br i1 %28, label %29, label %41, !prof !878

29:                                               ; preds = %20
  %30 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %18, i64 noundef %25) #17
  %31 = load i16, ptr %30, align 2, !tbaa !496
  %32 = zext i16 %31 to i64
  %33 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %19, i64 noundef %32) #17
  %34 = load i16, ptr %33, align 2, !tbaa !496
  %35 = icmp ugt i16 %34, 1
  br i1 %35, label %41, label %36, !prof !879

36:                                               ; preds = %29
  %37 = load i32, ptr %4, align 4, !tbaa !493
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %4, align 4, !tbaa !493
  %39 = sext i32 %37 to i64
  %40 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %3, i64 noundef %39) #17
  store i32 %2, ptr %40, align 4, !tbaa !493
  br label %44

41:                                               ; preds = %29, %20
  %42 = add nuw nsw i64 %21, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %44, label %20, !prof !880, !llvm.loop !881

44:                                               ; preds = %41, %36, %11, %5
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !824 {
  %2 = load ptr, ptr %0, align 8, !tbaa !645
  tail call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !824 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !646
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !882

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #17
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !646
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard12capture_sizeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !489 {
  %4 = icmp eq i32 %1, 0
  %5 = zext i1 %4 to i32
  %6 = tail call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %5, i32 noundef %2) #17, !range !512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  br label %13

13:                                               ; preds = %8, %31
  %14 = phi i64 [ 0, %8 ], [ %32, %31 ]
  %15 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %9, i64 noundef %14) #17
  %16 = load i32, ptr %15, align 4, !tbaa !493
  %17 = add nsw i32 %16, %2
  %18 = sext i32 %17 to i64
  %19 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %10, i64 noundef %18) #17
  %20 = load i32, ptr %19, align 4, !tbaa !484
  %21 = icmp eq i32 %20, %5
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %18) #17
  %24 = load i16, ptr %23, align 2, !tbaa !496
  %25 = zext i16 %24 to i64
  %26 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %12, i64 noundef %25) #17
  %27 = load i16, ptr %26, align 2, !tbaa !496
  %28 = icmp ugt i16 %27, 1
  br i1 %28, label %31, label %29

29:                                               ; preds = %22
  %30 = tail call noundef i32 @_ZN9FastBoard11string_sizeEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %17) #17, !range !807
  br label %34

31:                                               ; preds = %13, %22
  %32 = add nuw nsw i64 %14, 1
  %33 = icmp eq i64 %32, 4
  br i1 %33, label %34, label %13, !llvm.loop !883

34:                                               ; preds = %31, %29, %3
  %35 = phi i32 [ 0, %3 ], [ %30, %29 ], [ 0, %31 ]
  ret i32 %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard14get_stone_listB5cxx11Ev(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %3 = alloca %"class.std::__cxx11::basic_string", align 8
  %4 = alloca %"class.std::__cxx11::basic_string", align 8
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %6 = load i32, ptr %5, align 8, !tbaa !466
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2, %15
  %9 = phi i32 [ %16, %15 ], [ %6, %2 ]
  %10 = phi i32 [ %17, %15 ], [ 0, %2 ]
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %19, label %15

12:                                               ; preds = %15, %2
  %13 = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  %14 = add i64 %13, -1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14) #17
          to label %45 unwind label %43

15:                                               ; preds = %39, %8
  %16 = phi i32 [ %9, %8 ], [ %41, %39 ]
  %17 = add nuw nsw i32 %10, 1
  %18 = icmp slt i32 %17, %16
  br i1 %18, label %8, label %12, !llvm.loop !884

19:                                               ; preds = %8, %39
  %20 = phi i32 [ %40, %39 ], [ 0, %8 ]
  %21 = call noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %10, i32 noundef %20) #17
  %22 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %21) #17
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %39, label %24

24:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #18
  invoke void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %21) #17
          to label %25 unwind label %29

25:                                               ; preds = %24
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.13) #17
          to label %26 unwind label %31

26:                                               ; preds = %25
  %27 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #17
          to label %28 unwind label %33

28:                                               ; preds = %26
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %39

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %37

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #19
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #19
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #18
  br label %46

39:                                               ; preds = %28, %19
  %40 = add nuw nsw i32 %20, 1
  %41 = load i32, ptr %5, align 8, !tbaa !466
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %19, label %15, !llvm.loop !885

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %46

45:                                               ; preds = %12
  ret void

46:                                               ; preds = %37, %43
  %47 = phi { ptr, i32 } [ %44, %43 ], [ %38, %37 ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #19
  resume { ptr, i32 } %47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local i64 @_ZN9FastBoard6get_xyEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !489 {
  %3 = alloca %"struct.std::pair", align 8
  call void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %3) #17
  %4 = call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #17
  %5 = add nsw i32 %4, 2
  %6 = srem i32 %1, %5
  %7 = add nsw i32 %6, -1
  %8 = sdiv i32 %1, %5
  %9 = add nsw i32 %8, -1
  store i32 %7, ptr %3, align 8, !tbaa !886
  %10 = getelementptr inbounds %"struct.std::pair", ptr %3, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !888
  %11 = load i64, ptr %3, align 8
  ret i64 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IiiTnNSt9enable_ifIXsr6__and_ISt37__is_implicitly_default_constructibleIT_ES3_IT0_EEE5valueEbE4typeELb1EEEv(ptr noundef nonnull align 4 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 !prof !889 {
  store i32 0, ptr %0, align 4, !tbaa !886
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 0, ptr %2, align 4, !tbaa !888
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !890 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = icmp eq i32 %1, 0
  %7 = zext i1 %6 to i32
  br label %9

8:                                                ; preds = %29
  ret i32 %30

9:                                                ; preds = %3, %29
  %10 = phi i64 [ 0, %3 ], [ %31, %29 ]
  %11 = phi i32 [ 100, %3 ], [ %30, %29 ]
  %12 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %10) #17
  %13 = load i32, ptr %12, align 4, !tbaa !493
  %14 = add nsw i32 %13, %2
  %15 = sext i32 %14 to i64
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %15) #17
  %17 = load i32, ptr %16, align 4, !tbaa !484
  %18 = icmp eq i32 %17, %7
  br i1 %18, label %19, label %29, !prof !891

19:                                               ; preds = %9
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %22 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %21, i64 noundef %15) #17
  %23 = load i16, ptr %22, align 2, !tbaa !496
  %24 = zext i16 %23 to i64
  %25 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %20, i64 noundef %24) #17
  %26 = load i16, ptr %25, align 2, !tbaa !496
  %27 = zext i16 %26 to i32
  %28 = tail call i32 @llvm.smin.i32(i32 %11, i32 %27)
  br label %29

29:                                               ; preds = %19, %9
  %30 = phi i32 [ %28, %19 ], [ %11, %9 ]
  %31 = add nuw nsw i64 %10, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %8, label %9, !prof !892, !llvm.loop !893
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !894 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 0) #17
  store i32 8, ptr %5, align 4, !tbaa !493
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 1) #17
  store i32 8, ptr %6, align 4, !tbaa !493
  %7 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 2) #17
  store i32 8, ptr %7, align 4, !tbaa !493
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 3) #17
  store i32 8, ptr %8, align 4, !tbaa !493
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  br label %20

13:                                               ; preds = %43
  %14 = sext i32 %1 to i64
  %15 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %14) #17
  %16 = icmp eq i32 %1, 0
  %17 = zext i1 %16 to i64
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %17) #17
  %19 = call i64 @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_(ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %18) #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret i64 %19

20:                                               ; preds = %3, %43
  %21 = phi i64 [ 0, %3 ], [ %44, %43 ]
  %22 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %9, i64 noundef %21) #17
  %23 = load i32, ptr %22, align 4, !tbaa !493
  %24 = add nsw i32 %23, %2
  %25 = sext i32 %24 to i64
  %26 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %11, i64 noundef %25) #17
  %27 = load i16, ptr %26, align 2, !tbaa !496
  %28 = zext i16 %27 to i64
  %29 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %10, i64 noundef %28) #17
  %30 = load i16, ptr %29, align 2, !tbaa !496
  %31 = zext i16 %30 to i32
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %12, i64 noundef %25) #17
  %33 = load i32, ptr %32, align 4, !tbaa !484
  %34 = zext i32 %33 to i64
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %34) #17
  %36 = load i32, ptr %35, align 4, !tbaa !493
  %37 = icmp sgt i32 %36, %31
  br i1 %37, label %38, label %43, !prof !895

38:                                               ; preds = %20
  %39 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %12, i64 noundef %25) #17
  %40 = load i32, ptr %39, align 4, !tbaa !484
  %41 = zext i32 %40 to i64
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %41) #17
  store i32 %31, ptr %42, align 4, !tbaa !493
  br label %43

43:                                               ; preds = %38, %20
  %44 = add nuw nsw i64 %21, 1
  %45 = icmp eq i64 %44, 4
  br i1 %45, label %13, label %20, !prof !896, !llvm.loop !897
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i64 @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat !prof !898 {
  %3 = alloca %"struct.std::pair", align 8
  call void @_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  %4 = load i64, ptr %3, align 8
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #6 comdat align 2 !prof !898 {
  %4 = load i32, ptr %1, align 4, !tbaa !493
  store i32 %4, ptr %0, align 4, !tbaa !886
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %2, align 4, !tbaa !493
  store i32 %6, ptr %5, align 4, !tbaa !888
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard16count_rlibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !489 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %5 = sext i32 %1 to i64
  %6 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %4, i64 noundef %5) #17
  %7 = load i16, ptr %6, align 2, !tbaa !496
  %8 = zext i16 %7 to i64
  %9 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %3, i64 noundef %8) #17
  %10 = load i16, ptr %9, align 2, !tbaa !496
  %11 = zext i16 %10 to i32
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard19check_losing_ladderEiii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %5 = alloca %class.FastBoard, align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.boost::array", align 4
  %8 = alloca %class.FastBoard, align 8
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %5) #18
  call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %5, ptr noundef nonnull align 8 dereferenceable(8052) %0) #17
  %9 = icmp sgt i32 %3, 5
  br i1 %9, label %119, label %10

10:                                               ; preds = %4
  %11 = call noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %1, i32 noundef %2) #17, !range !899
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %119, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %class.FastBoard, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !492
  %16 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %15, i32 noundef %2) #17
  %17 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %2) #17
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %119, label %19

19:                                               ; preds = %13, %109
  %20 = phi i32 [ %110, %109 ], [ %2, %13 ]
  %21 = call noundef i32 @_ZN9FastBoard16count_rlibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %20) #17, !range !807
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %119, label %23

23:                                               ; preds = %19
  %24 = icmp ugt i32 %21, 2
  br i1 %24, label %119, label %25

25:                                               ; preds = %23
  %26 = call noundef i32 @_ZN9FastBoard18minimum_elib_countEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %1, i32 noundef %20) #17, !range !899
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %119, label %28

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  store i32 0, ptr %6, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  invoke void @_ZN9FastBoard20add_string_libertiesILi2EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %20, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(4) %6) #17
          to label %29 unwind label %39

29:                                               ; preds = %28
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 0) #17
  %31 = load i32, ptr %30, align 4, !tbaa !493
  %32 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %31) #17, !range !512
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 1) #17
  %36 = load i32, ptr %35, align 4, !tbaa !493
  %37 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %36) #17, !range !512
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %115, label %41

39:                                               ; preds = %28
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %117

41:                                               ; preds = %34, %29
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 0) #17
  %43 = load i32, ptr %42, align 4, !tbaa !493
  %44 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %43) #17, !range !512
  %45 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 1) #17
  %46 = load i32, ptr %45, align 4, !tbaa !493
  %47 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %46) #17, !range !512
  %48 = icmp eq i32 %44, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %41
  call void @llvm.lifetime.start.p0(i64 8056, ptr nonnull %8) #18
  invoke void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %8, ptr noundef nonnull align 8 dereferenceable(8052) %5) #17
          to label %50 unwind label %75

50:                                               ; preds = %49
  %51 = load i32, ptr %14, align 8, !tbaa !492
  %52 = icmp eq i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 0) #17
  %55 = load i32, ptr %54, align 4, !tbaa !493
  %56 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %53, i32 noundef %55) #17
  %57 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 1) #17
  %58 = load i32, ptr %57, align 4, !tbaa !493
  %59 = add nsw i32 %3, 1
  %60 = invoke noundef zeroext i1 @_ZN9FastBoard19check_losing_ladderEiii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %1, i32 noundef %58, i32 noundef %59) #17
          to label %61 unwind label %77

61:                                               ; preds = %50
  %62 = invoke noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %8, ptr noundef nonnull align 8 dereferenceable(8052) %5) #17
          to label %63 unwind label %77

63:                                               ; preds = %61
  %64 = load i32, ptr %14, align 8, !tbaa !492
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 1) #17
  %68 = load i32, ptr %67, align 4, !tbaa !493
  %69 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %66, i32 noundef %68) #17
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 0) #17
  %71 = load i32, ptr %70, align 4, !tbaa !493
  %72 = invoke noundef zeroext i1 @_ZN9FastBoard19check_losing_ladderEiii(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %1, i32 noundef %71, i32 noundef %59) #17
          to label %73 unwind label %79

73:                                               ; preds = %63
  %74 = and i1 %60, %72
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %8) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %8) #18
  br label %115

75:                                               ; preds = %49
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %83

77:                                               ; preds = %61, %50
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %63
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %81

81:                                               ; preds = %77, %79
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %78, %77 ]
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %8) #19
  br label %83

83:                                               ; preds = %81, %75
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %8) #18
  br label %117

85:                                               ; preds = %41
  %86 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 0) #17
  %87 = load i32, ptr %86, align 4, !tbaa !493
  %88 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %87) #17, !range !512
  %89 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 1) #17
  %90 = load i32, ptr %89, align 4, !tbaa !493
  %91 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %90) #17, !range !512
  %92 = icmp ugt i32 %88, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %85
  %94 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 0) #17
  %95 = load i32, ptr %94, align 4, !tbaa !493
  %96 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %95) #17, !range !512
  %97 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef 1) #17
  %98 = load i32, ptr %97, align 4, !tbaa !493
  %99 = call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %98) #17, !range !512
  %100 = icmp ult i32 %96, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %93, %85
  %102 = phi i64 [ 0, %85 ], [ 1, %93 ]
  %103 = load i32, ptr %14, align 8, !tbaa !492
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %7, i64 noundef %102) #17
  %107 = load i32, ptr %106, align 4, !tbaa !493
  %108 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %105, i32 noundef %107) #17
  br label %109

109:                                              ; preds = %101, %93
  %110 = call noundef i32 @_ZN9FastBoard8in_atariEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %20) #17
  %111 = load i32, ptr %14, align 8, !tbaa !492
  %112 = call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %111, i32 noundef %110) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  %113 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %5, i32 noundef %110) #17
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %119, label %19, !llvm.loop !900

115:                                              ; preds = %34, %73
  %116 = phi i1 [ %74, %73 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %119

117:                                              ; preds = %83, %39
  %118 = phi { ptr, i32 } [ %84, %83 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %5) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %5) #18
  resume { ptr, i32 } %118

119:                                              ; preds = %109, %19, %23, %25, %13, %115, %10, %4
  %120 = phi i1 [ false, %4 ], [ false, %10 ], [ %116, %115 ], [ true, %13 ], [ true, %109 ], [ true, %19 ], [ false, %23 ], [ false, %25 ]
  call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %5) #19
  call void @llvm.lifetime.end.p0(i64 8056, ptr nonnull %5) #18
  ret i1 %120
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoard20add_string_libertiesILi2EEEviRN5boost5arrayIiXT_EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %6 = sext i32 %1 to i64
  %7 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %6) #17
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %10

10:                                               ; preds = %48, %4
  %11 = phi i32 [ %1, %4 ], [ %52, %48 ]
  %12 = tail call noundef i32 @_ZN9FastBoard16count_plibertiesEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %11) #17, !range !512
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %48, label %14

14:                                               ; preds = %10, %45
  %15 = phi i64 [ %46, %45 ], [ 0, %10 ]
  %16 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %8, i64 noundef %15) #17
  %17 = load i32, ptr %16, align 4, !tbaa !493
  %18 = add nsw i32 %17, %11
  %19 = sext i32 %18 to i64
  %20 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %5, i64 noundef %19) #17
  %21 = load i32, ptr %20, align 4, !tbaa !484
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %45

23:                                               ; preds = %14
  %24 = load i32, ptr %3, align 4, !tbaa !493
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %23
  %27 = sext i32 %24 to i64
  br label %38

28:                                               ; preds = %33
  %29 = add nuw nsw i64 %34, 1
  %30 = load i32, ptr %3, align 4, !tbaa !493
  %31 = sext i32 %30 to i64
  %32 = icmp slt i64 %29, %31
  br i1 %32, label %33, label %38, !llvm.loop !901

33:                                               ; preds = %23, %28
  %34 = phi i64 [ %29, %28 ], [ 0, %23 ]
  %35 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %34) #17
  %36 = load i32, ptr %35, align 4, !tbaa !493
  %37 = icmp eq i32 %36, %18
  br i1 %37, label %45, label %28

38:                                               ; preds = %28, %26
  %39 = phi i64 [ %27, %26 ], [ %31, %28 ]
  %40 = phi i32 [ %24, %26 ], [ %30, %28 ]
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr %3, align 4, !tbaa !493
  %42 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm2EEixEm(ptr noundef nonnull align 4 dereferenceable(8) %2, i64 noundef %39) #17
  store i32 %18, ptr %42, align 4, !tbaa !493
  %43 = load i32, ptr %3, align 4, !tbaa !493
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %54, label %45

45:                                               ; preds = %33, %38, %14
  %46 = add nuw nsw i64 %15, 1
  %47 = icmp eq i64 %46, 4
  br i1 %47, label %48, label %14, !llvm.loop !902

48:                                               ; preds = %45, %10
  %49 = sext i32 %11 to i64
  %50 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %49) #17
  %51 = load i16, ptr %50, align 2, !tbaa !496
  %52 = zext i16 %51 to i32
  %53 = icmp eq i32 %52, %1
  br i1 %53, label %54, label %10, !llvm.loop !903

54:                                               ; preds = %48, %38
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8052) ptr @_ZN9FastBoardaSERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) local_unnamed_addr #7 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  %5 = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIiSaIiEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !466
  %8 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  store i32 %7, ptr %8, align 8, !tbaa !466
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard18merged_string_sizeEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !489 {
  %4 = alloca %"class.boost::array.4", align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #18
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  br label %8

7:                                                ; preds = %39
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #18
  ret i32 %41

8:                                                ; preds = %3, %39
  %9 = phi i64 [ 0, %3 ], [ %42, %39 ]
  %10 = phi i32 [ 0, %3 ], [ %41, %39 ]
  %11 = phi i32 [ 0, %3 ], [ %40, %39 ]
  %12 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %9) #17
  %13 = load i32, ptr %12, align 4, !tbaa !493
  %14 = add nsw i32 %13, %2
  %15 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14) #17
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %39

17:                                               ; preds = %8
  %18 = sext i32 %14 to i64
  %19 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %6, i64 noundef %18) #17
  %20 = load i16, ptr %19, align 2, !tbaa !496
  %21 = zext i16 %20 to i32
  %22 = icmp sgt i32 %11, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %17
  %24 = zext nneg i32 %11 to i64
  br label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i64 %29, 1
  %27 = icmp eq i64 %26, %24
  br i1 %27, label %33, label %28, !llvm.loop !904

28:                                               ; preds = %23, %25
  %29 = phi i64 [ 0, %23 ], [ %26, %25 ]
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %29) #17
  %31 = load i32, ptr %30, align 4, !tbaa !493
  %32 = icmp eq i32 %31, %21
  br i1 %32, label %39, label %25

33:                                               ; preds = %25, %17
  %34 = call noundef i32 @_ZN9FastBoard11string_sizeEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %14) #17, !range !807
  %35 = add nsw i32 %34, %10
  %36 = add nsw i32 %11, 1
  %37 = sext i32 %11 to i64
  %38 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef %37) #17
  store i32 %21, ptr %38, align 4, !tbaa !493
  br label %39

39:                                               ; preds = %28, %33, %8
  %40 = phi i32 [ %11, %8 ], [ %36, %33 ], [ %11, %28 ]
  %41 = phi i32 [ %10, %8 ], [ %35, %33 ], [ %10, %28 ]
  %42 = add nuw nsw i64 %9, 1
  %43 = icmp eq i64 %42, 4
  br i1 %43, label %7, label %8, !llvm.loop !905
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard17get_neighbour_idsEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca i32, align 4
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  br label %7

7:                                                ; preds = %3, %37
  %8 = phi i64 [ 0, %3 ], [ %38, %37 ]
  %9 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %5, i64 noundef %8) #17
  %10 = load i32, ptr %9, align 4, !tbaa !493
  %11 = add nsw i32 %10, %2
  %12 = call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %11) #17
  %13 = icmp slt i32 %12, 2
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %15 = sext i32 %11 to i64
  %16 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %6, i64 noundef %15) #17
  %17 = load i16, ptr %16, align 2, !tbaa !496
  %18 = zext i16 %17 to i32
  store i32 %18, ptr %4, align 4, !tbaa !493
  %19 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %33, label %26

21:                                               ; preds = %26
  %22 = add i32 %28, 1
  %23 = zext i32 %22 to i64
  %24 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %26, label %33, !llvm.loop !906

26:                                               ; preds = %14, %21
  %27 = phi i64 [ %23, %21 ], [ 0, %14 ]
  %28 = phi i32 [ %22, %21 ], [ 0, %14 ]
  %29 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #19
  %30 = load i32, ptr %29, align 4, !tbaa !493
  %31 = load i32, ptr %4, align 4, !tbaa !493
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %36, label %21

33:                                               ; preds = %21, %14
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
          to label %36 unwind label %34

34:                                               ; preds = %33
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %35

36:                                               ; preds = %26, %33
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %37

37:                                               ; preds = %36, %7
  %38 = add nuw nsw i64 %8, 1
  %39 = icmp eq i64 %38, 4
  br i1 %39, label %40, label %7, !llvm.loop !907

40:                                               ; preds = %37
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastBoard16predict_is_aliveEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca %"class.std::vector.6", align 8
  %5 = alloca i8, align 1
  %6 = alloca %"class.std::allocator.10", align 1
  %7 = alloca %"struct.std::_Bit_reference", align 8
  %8 = alloca %"struct.std::_Bit_reference", align 8
  %9 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %10 = sext i32 %2 to i64
  %11 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %9, i64 noundef %10) #17
  %12 = load i16, ptr %11, align 2, !tbaa !496
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %13, i64 noundef %10) #17
  %15 = load i32, ptr %14, align 4, !tbaa !484
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  %16 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !491
  %18 = sext i32 %17 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  store i8 0, ptr %5, align 1, !tbaa !552
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #18
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %18, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) #17
          to label %19 unwind label %28

19:                                               ; preds = %3
  %20 = zext i16 %12 to i32
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  %21 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %22 = getelementptr inbounds { ptr, i64 }, ptr %7, i64 0, i32 1
  %23 = getelementptr inbounds { ptr, i64 }, ptr %8, i64 0, i32 1
  %24 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %25

25:                                               ; preds = %66, %19
  %26 = phi i32 [ %20, %19 ], [ %70, %66 ]
  %27 = phi i32 [ 0, %19 ], [ %61, %66 ]
  br label %30

28:                                               ; preds = %3
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %6) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  br label %74

30:                                               ; preds = %25, %60
  %31 = phi i64 [ 0, %25 ], [ %62, %60 ]
  %32 = phi i32 [ %27, %25 ], [ %61, %60 ]
  %33 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %21, i64 noundef %31) #17
  %34 = load i32, ptr %33, align 4, !tbaa !493
  %35 = add nsw i32 %34, %26
  %36 = sext i32 %35 to i64
  %37 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %13, i64 noundef %36) #17
  %38 = load i32, ptr %37, align 4, !tbaa !484
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %60

40:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #18
  %41 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %36) #17
          to label %42 unwind label %53

42:                                               ; preds = %40
  %43 = extractvalue { ptr, i64 } %41, 0
  store ptr %43, ptr %7, align 8
  %44 = extractvalue { ptr, i64 } %41, 1
  store i64 %44, ptr %22, align 8
  %45 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %7) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br i1 %45, label %60, label %46

46:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #18
  %47 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %36) #17
          to label %48 unwind label %55

48:                                               ; preds = %46
  %49 = extractvalue { ptr, i64 } %47, 0
  store ptr %49, ptr %8, align 8
  %50 = extractvalue { ptr, i64 } %47, 1
  store i64 %50, ptr %23, align 8
  %51 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  %52 = call noundef zeroext i1 @_ZN9FastBoard17predict_solid_eyeEiii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %15, i32 noundef %35) #17
  br i1 %52, label %57, label %60

53:                                               ; preds = %40
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #18
  br label %64

55:                                               ; preds = %46
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #18
  br label %64

57:                                               ; preds = %48
  %58 = add nsw i32 %32, 1
  %59 = icmp slt i32 %32, 1
  br i1 %59, label %60, label %72

60:                                               ; preds = %30, %48, %42, %57
  %61 = phi i32 [ %58, %57 ], [ %32, %42 ], [ %32, %48 ], [ %32, %30 ]
  %62 = add nuw nsw i64 %31, 1
  %63 = icmp eq i64 %62, 4
  br i1 %63, label %66, label %30, !llvm.loop !908

64:                                               ; preds = %55, %53
  %65 = phi { ptr, i32 } [ %56, %55 ], [ %54, %53 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  br label %74

66:                                               ; preds = %60
  %67 = zext nneg i32 %26 to i64
  %68 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %24, i64 noundef %67) #17
  %69 = load i16, ptr %68, align 2, !tbaa !496
  %70 = zext i16 %69 to i32
  %71 = icmp eq i32 %70, %2
  br i1 %71, label %72, label %25, !llvm.loop !909

72:                                               ; preds = %66, %57
  %73 = phi i32 [ %58, %57 ], [ %61, %66 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  ret i32 %73

74:                                               ; preds = %64, %28
  %75 = phi { ptr, i32 } [ %65, %64 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  resume { ptr, i32 } %75
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !571 {
  tail call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #17
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #17
          to label %5 unwind label %8

5:                                                ; preds = %4
  %6 = load i8, ptr %2, align 1, !tbaa !552, !range !600, !noundef !601
  %7 = icmp ne i8 %6, 0
  tail call void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %7) #19
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastBoard9get_emptyEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8052) %0) local_unnamed_addr #4 align 2 !prof !489 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !494
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard13augment_chainERSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca i32, align 4
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %7 = alloca %"class.std::vector.6", align 8
  %8 = alloca i8, align 1
  %9 = alloca %"class.std::allocator.10", align 1
  %10 = alloca %"class.std::vector.6", align 8
  %11 = alloca i8, align 1
  %12 = alloca %"class.std::allocator.10", align 1
  %13 = alloca %"struct.std::_Bit_reference", align 8
  %14 = alloca %"struct.std::_Bit_reference", align 8
  %15 = alloca %"struct.std::_Bit_reference", align 8
  %16 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %17 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %18 = sext i32 %2 to i64
  %19 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %18) #17
  %20 = load i16, ptr %19, align 2, !tbaa !496
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %4, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %22 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %23 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  %24 = call ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_(ptr %22, ptr %23, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  store ptr %24, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %25 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  store ptr %25, ptr %6, align 8
  %26 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %26, label %136, label %27

27:                                               ; preds = %3
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
  %28 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %29 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %28, i64 noundef %18) #17
  %30 = load i32, ptr %29, align 4, !tbaa !484
  %31 = load i32, ptr %4, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  %32 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !491
  %34 = sext i32 %33 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #18
  store i8 0, ptr %8, align 1, !tbaa !552
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #18
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #19
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %34, ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) #17
          to label %35 unwind label %53

35:                                               ; preds = %27
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #18
  %36 = load i32, ptr %32, align 4, !tbaa !491
  %37 = sext i32 %36 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  store i8 0, ptr %11, align 1, !tbaa !552
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #18
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #19
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %37, ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 1 dereferenceable(1) %12) #17
          to label %38 unwind label %55

38:                                               ; preds = %35
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  %39 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  %40 = getelementptr inbounds { ptr, i64 }, ptr %13, i64 0, i32 1
  %41 = getelementptr inbounds { ptr, i64 }, ptr %14, i64 0, i32 1
  %42 = getelementptr inbounds { ptr, i64 }, ptr %15, i64 0, i32 1
  %43 = getelementptr inbounds { ptr, i64 }, ptr %16, i64 0, i32 1
  %44 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 6
  br label %45

45:                                               ; preds = %47, %38
  %46 = phi i32 [ %31, %38 ], [ %51, %47 ]
  br label %57

47:                                               ; preds = %130
  %48 = sext i32 %46 to i64
  %49 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %44, i64 noundef %48) #17
  %50 = load i16, ptr %49, align 2, !tbaa !496
  %51 = zext i16 %50 to i32
  %52 = icmp eq i32 %51, %2
  br i1 %52, label %135, label %45, !llvm.loop !910

53:                                               ; preds = %27
  %54 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %9) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #18
  br label %139

55:                                               ; preds = %35
  %56 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %12) #19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  br label %137

57:                                               ; preds = %45, %130
  %58 = phi i64 [ 0, %45 ], [ %131, %130 ]
  %59 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %39, i64 noundef %58) #17
  %60 = load i32, ptr %59, align 4, !tbaa !493
  %61 = add nsw i32 %60, %46
  %62 = sext i32 %61 to i64
  %63 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %28, i64 noundef %62) #17
  %64 = load i32, ptr %63, align 4, !tbaa !484
  %65 = icmp eq i32 %64, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #18
  br i1 %65, label %66, label %129

66:                                               ; preds = %57
  %67 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %62) #17
          to label %68 unwind label %78

68:                                               ; preds = %66
  %69 = extractvalue { ptr, i64 } %67, 0
  store ptr %69, ptr %13, align 8
  %70 = extractvalue { ptr, i64 } %67, 1
  store i64 %70, ptr %40, align 8
  %71 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %13) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br i1 %71, label %130, label %72

72:                                               ; preds = %68
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #18
  %73 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %62) #17
          to label %74 unwind label %80

74:                                               ; preds = %72
  %75 = extractvalue { ptr, i64 } %73, 0
  store ptr %75, ptr %14, align 8
  %76 = extractvalue { ptr, i64 } %73, 1
  store i64 %76, ptr %41, align 8
  %77 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %14, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  br label %82

78:                                               ; preds = %66
  %79 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br label %133

80:                                               ; preds = %72
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #18
  br label %133

82:                                               ; preds = %74, %126
  %83 = phi i64 [ 0, %74 ], [ %127, %126 ]
  %84 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %39, i64 noundef %83) #17
  %85 = load i32, ptr %84, align 4, !tbaa !493
  %86 = add nsw i32 %85, %61
  %87 = sext i32 %86 to i64
  %88 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %28, i64 noundef %87) #17
  %89 = load i32, ptr %88, align 4, !tbaa !484
  %90 = icmp eq i32 %89, %30
  br i1 %90, label %91, label %126

91:                                               ; preds = %82
  %92 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %87) #17
  %93 = load i16, ptr %92, align 2, !tbaa !496
  %94 = zext i16 %93 to i32
  %95 = load i32, ptr %4, align 4, !tbaa !493
  %96 = icmp eq i32 %95, %94
  br i1 %96, label %126, label %97

97:                                               ; preds = %91
  %98 = call noundef i32 @_ZN9FastBoard16count_neighboursEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %30, i32 noundef %61) #17, !range !512
  %99 = icmp ugt i32 %98, 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #18
  br i1 %99, label %109, label %100

100:                                              ; preds = %97
  %101 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %87) #17
  %102 = load i16, ptr %101, align 2, !tbaa !496
  %103 = zext i16 %102 to i64
  %104 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %103) #17
          to label %105 unwind label %111

105:                                              ; preds = %100
  %106 = extractvalue { ptr, i64 } %104, 0
  store ptr %106, ptr %15, align 8
  %107 = extractvalue { ptr, i64 } %104, 1
  store i64 %107, ptr %42, align 8
  %108 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %15) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  br i1 %108, label %110, label %115

109:                                              ; preds = %97
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  br label %110

110:                                              ; preds = %109, %105
  invoke void @_ZN9FastBoard13augment_chainERSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %86) #17
          to label %126 unwind label %113

111:                                              ; preds = %100
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #18
  br label %133

113:                                              ; preds = %110
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %133

115:                                              ; preds = %105
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #18
  %116 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %17, i64 noundef %87) #17
  %117 = load i16, ptr %116, align 2, !tbaa !496
  %118 = zext i16 %117 to i64
  %119 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %118) #17
          to label %120 unwind label %124

120:                                              ; preds = %115
  %121 = extractvalue { ptr, i64 } %119, 0
  store ptr %121, ptr %16, align 8
  %122 = extractvalue { ptr, i64 } %119, 1
  store i64 %122, ptr %43, align 8
  %123 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %16, i1 noundef zeroext true) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  br label %126

124:                                              ; preds = %115
  %125 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #18
  br label %133

126:                                              ; preds = %120, %110, %91, %82
  %127 = add nuw nsw i64 %83, 1
  %128 = icmp eq i64 %127, 4
  br i1 %128, label %130, label %82, !llvm.loop !911

129:                                              ; preds = %57
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #18
  br label %130

130:                                              ; preds = %126, %129, %68
  %131 = add nuw nsw i64 %58, 1
  %132 = icmp eq i64 %131, 4
  br i1 %132, label %47, label %57, !llvm.loop !912

133:                                              ; preds = %111, %113, %124, %80, %78
  %134 = phi { ptr, i32 } [ %81, %80 ], [ %79, %78 ], [ %114, %113 ], [ %125, %124 ], [ %112, %111 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #19
  br label %137

135:                                              ; preds = %47
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #18
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #19
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  br label %136

136:                                              ; preds = %3, %135
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void

137:                                              ; preds = %133, %55
  %138 = phi { ptr, i32 } [ %134, %133 ], [ %56, %55 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #18
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #19
  br label %139

139:                                              ; preds = %137, %53
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %54, %53 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  resume { ptr, i32 } %140
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_(ptr noundef nonnull align 4 dereferenceable(4) %2) #17
  %5 = tail call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_(ptr %0, ptr %1, ptr %4) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !606
  %7 = icmp ne ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %4, align 8
  call void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %5 = call ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) #17
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKiEENS0_16_Iter_equals_valIT_EERS4_(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #7 comdat !prof !489 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops16_Iter_equals_valIKiEEET_SB_SB_T0_St26random_access_iterator_tag(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %8 = ashr i64 %7, 2
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %26
  %11 = phi i64 [ %28, %26 ], [ %8, %3 ]
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %12) #17
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %17 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %16) #17
  br i1 %17, label %47, label %18

18:                                               ; preds = %14
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %20 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %20) #17
  br i1 %21, label %47, label %22

22:                                               ; preds = %18
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %24 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %25 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %24) #17
  br i1 %25, label %47, label %26

26:                                               ; preds = %22
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %28 = add nsw i64 %11, -1
  %29 = icmp sgt i64 %11, 1
  br i1 %29, label %10, label %30, !llvm.loop !914

30:                                               ; preds = %26, %3
  %31 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  switch i64 %31, label %47 [
    i64 3, label %32
    i64 2, label %37
    i64 1, label %42
  ]

32:                                               ; preds = %30
  %33 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %34 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %33) #17
  br i1 %34, label %47, label %35

35:                                               ; preds = %32
  %36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br label %37

37:                                               ; preds = %30, %35
  %38 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %38) #17
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br label %42

42:                                               ; preds = %30, %40
  %43 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %44 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr %43) #17
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br label %47

47:                                               ; preds = %22, %18, %14, %10, %30, %45, %42, %37, %32
  %48 = phi ptr [ %4, %32 ], [ %4, %37 ], [ %4, %42 ], [ %5, %45 ], [ %5, %30 ], [ %4, %10 ], [ %4, %14 ], [ %4, %18 ], [ %4, %22 ]
  %49 = load ptr, ptr %48, align 8
  ret ptr %49
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !489 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %3, align 8
  %4 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %5 = load i32, ptr %4, align 4, !tbaa !493
  %6 = load ptr, ptr %0, align 8, !tbaa !915
  %7 = load i32, ptr %6, align 4, !tbaa !493
  %8 = icmp eq i32 %5, %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %2 = load ptr, ptr %0, align 8, !tbaa !700
  %3 = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %3, ptr %0, align 8, !tbaa !700
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !917 {
  %2 = load ptr, ptr %0, align 8, !tbaa !700
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKiEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #6 comdat align 2 !prof !489 {
  store ptr %1, ptr %0, align 8, !tbaa !606
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard20get_augmented_stringEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector", align 8
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  invoke void @_ZN9FastBoard13augment_chainERSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef %2) #17
          to label %6 unwind label %10

6:                                                ; preds = %3
  %7 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %23, %6
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void

10:                                               ; preds = %3
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %34

12:                                               ; preds = %6, %23
  %13 = phi i64 [ %25, %23 ], [ 0, %6 ]
  %14 = phi i32 [ %24, %23 ], [ 0, %6 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  %15 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %13) #19
  %16 = load i32, ptr %15, align 4, !tbaa !493
  invoke void @_ZN9FastBoard17get_string_stonesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %16) #17
          to label %17 unwind label %28

17:                                               ; preds = %12
  %18 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %19 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %20 = invoke ptr @_ZSt13back_inserterISt6vectorIiSaIiEEESt20back_insert_iteratorIT_ERS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
          to label %21 unwind label %30

21:                                               ; preds = %17
  %22 = invoke ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %18, ptr %19, ptr %20) #17
          to label %23 unwind label %30

23:                                               ; preds = %21
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  %24 = add i32 %14, 1
  %25 = zext i32 %24 to i64
  %26 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %27 = icmp ugt i64 %26, %25
  br i1 %27, label %12, label %9, !llvm.loop !918

28:                                               ; preds = %12
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %32

30:                                               ; preds = %21, %17
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %29, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  br label %34

34:                                               ; preds = %32, %10
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %11, %10 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %35
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %0) #17
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %1) #17
  %6 = tail call ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET1_T0_SA_S9_(ptr %4, ptr %5, ptr %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13back_inserterISt6vectorIiSaIiEEESt20back_insert_iteratorIT_ERS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #7 comdat !prof !489 {
  %2 = alloca %"class.std::back_insert_iterator", align 8
  call void @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET1_T0_SA_S9_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  store ptr %2, ptr %4, align 8
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %7 = tail call ptr @_ZSt12__niter_baseISt20back_insert_iteratorISt6vectorIiSaIiEEEET_S5_(ptr %2) #19
  %8 = tail call ptr @_ZSt14__copy_move_a1ILb0EPiSt20back_insert_iteratorISt6vectorIiSaIiEEEET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr %7) #17
  %9 = call ptr @_ZSt12__niter_wrapISt20back_insert_iteratorISt6vectorIiSaIiEEEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr %8) #17
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %0) local_unnamed_addr #6 comdat !prof !489 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_wrapISt20back_insert_iteratorISt6vectorIiSaIiEEEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) local_unnamed_addr #6 comdat !prof !489 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt14__copy_move_a1ILb0EPiSt20back_insert_iteratorISt6vectorIiSaIiEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call ptr @_ZSt14__copy_move_a2ILb0EPiSt20back_insert_iteratorISt6vectorIiSaIiEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__niter_baseISt20back_insert_iteratorISt6vectorIiSaIiEEEET_S5_(ptr %0) local_unnamed_addr #6 comdat !prof !489 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt14__copy_move_a2ILb0EPiSt20back_insert_iteratorISt6vectorIiSaIiEEEET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPiSt20back_insert_iteratorISt6vectorIiSaIiEEEEET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPiSt20back_insert_iteratorISt6vectorIiSaIiEEEEET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %4 = alloca %"class.std::back_insert_iterator", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %14, label %12

10:                                               ; preds = %14
  %11 = load ptr, ptr %4, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi ptr [ %11, %10 ], [ %2, %3 ]
  ret ptr %13

14:                                               ; preds = %3, %14
  %15 = phi i64 [ %21, %14 ], [ %8, %3 ]
  %16 = phi ptr [ %19, %14 ], [ %0, %3 ]
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 4 dereferenceable(4) %16) #17
  %19 = getelementptr inbounds i32, ptr %16, i64 1
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #17
  %21 = add nsw i64 %15, -1
  %22 = icmp ugt i64 %15, 1
  br i1 %22, label %14, label %10, !llvm.loop !919
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !489 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEaSERKi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %3 = load ptr, ptr %0, align 8, !tbaa !920
  tail call void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !489 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt20back_insert_iteratorISt6vectorIiSaIiEEEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !489 {
  store ptr %1, ptr %0, align 8, !tbaa !920
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard16dilate_libertiesERSt6vectorIiSaIiEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca i32, align 4
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %5 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %6 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %7 = invoke ptr @_ZSt13back_inserterISt6vectorIiSaIiEEESt20back_insert_iteratorIT_ERS4_(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
          to label %8 unwind label %19

8:                                                ; preds = %3
  %9 = invoke ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %5, ptr %6, ptr %7) #17
          to label %10 unwind label %19

10:                                               ; preds = %8
  %11 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %43, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 12
  %15 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  br label %16

16:                                               ; preds = %13, %21
  %17 = phi i64 [ 0, %13 ], [ %23, %21 ]
  %18 = phi i32 [ 0, %13 ], [ %22, %21 ]
  br label %26

19:                                               ; preds = %8, %3
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %44

21:                                               ; preds = %40
  %22 = add i32 %18, 1
  %23 = zext i32 %22 to i64
  %24 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %25 = icmp ugt i64 %24, %23
  br i1 %25, label %16, label %43, !llvm.loop !922

26:                                               ; preds = %16, %40
  %27 = phi i64 [ 0, %16 ], [ %41, %40 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %14, i64 noundef %27) #17
  %29 = load i32, ptr %28, align 4, !tbaa !493
  %30 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %17) #19
  %31 = load i32, ptr %30, align 4, !tbaa !493
  %32 = add nsw i32 %31, %29
  store i32 %32, ptr %4, align 4, !tbaa !493
  %33 = sext i32 %32 to i64
  %34 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %15, i64 noundef %33) #17
  %35 = load i32, ptr %34, align 4, !tbaa !484
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #17
          to label %40 unwind label %38

38:                                               ; preds = %37
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  br label %44

40:                                               ; preds = %37, %26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  %41 = add nuw nsw i64 %27, 1
  %42 = icmp eq i64 %41, 4
  br i1 %42, label %21, label %26, !llvm.loop !923

43:                                               ; preds = %21, %10
  ret void

44:                                               ; preds = %38, %19
  %45 = phi { ptr, i32 } [ %39, %38 ], [ %20, %19 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  resume { ptr, i32 } %45
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastBoard18get_nearby_enemiesERSt6vectorIiSaIiEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  %4 = alloca %"class.std::vector", align 8
  %5 = alloca %"class.std::vector", align 8
  %6 = alloca i32, align 4
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %11 = alloca %"class.std::vector", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #18
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #18
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  %12 = call noundef zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  br i1 %12, label %109, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 5
  %15 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 0) #19
  %16 = load i32, ptr %15, align 4, !tbaa !493
  %17 = sext i32 %16 to i64
  %18 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %17) #17
  %19 = load i32, ptr %18, align 4, !tbaa !484
  %20 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %13
  %23 = icmp eq i32 %19, 0
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 8
  %26 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 7
  br label %27

27:                                               ; preds = %22, %33
  %28 = phi i64 [ 0, %22 ], [ %35, %33 ]
  %29 = phi i32 [ 0, %22 ], [ %34, %33 ]
  br label %38

30:                                               ; preds = %33, %13
  %31 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %32 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  invoke void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %31, ptr %32) #17
          to label %65 unwind label %77

33:                                               ; preds = %62
  %34 = add i32 %29, 1
  %35 = zext i32 %34 to i64
  %36 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #19
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %27, label %30, !llvm.loop !924

38:                                               ; preds = %27, %62
  %39 = phi i32 [ 0, %27 ], [ %63, %62 ]
  %40 = call noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %39) #17
  %41 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %28) #19
  %42 = load i32, ptr %41, align 4, !tbaa !493
  %43 = add nsw i32 %42, %40
  %44 = sext i32 %43 to i64
  %45 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %44) #17
  %46 = load i32, ptr %45, align 4, !tbaa !484
  %47 = icmp eq i32 %46, %24
  br i1 %47, label %48, label %62

48:                                               ; preds = %38
  %49 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %26, i64 noundef %44) #17
  %50 = load i16, ptr %49, align 2, !tbaa !496
  %51 = zext i16 %50 to i64
  %52 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %25, i64 noundef %51) #17
  %53 = load i16, ptr %52, align 2, !tbaa !496
  %54 = icmp ult i16 %53, 4
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #18
  %56 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %26, i64 noundef %44) #17
  %57 = load i16, ptr %56, align 2, !tbaa !496
  %58 = zext i16 %57 to i32
  store i32 %58, ptr %6, align 4, !tbaa !493
  invoke void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 4 dereferenceable(4) %6) #17
          to label %59 unwind label %60

59:                                               ; preds = %55
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %62

60:                                               ; preds = %55
  %61 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #18
  br label %107

62:                                               ; preds = %48, %59, %38
  %63 = add nuw nsw i32 %39, 1
  %64 = icmp eq i32 %63, 8
  br i1 %64, label %33, label %38, !llvm.loop !925

65:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %66 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %67 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %68 = invoke ptr @_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_(ptr %66, ptr %67) #17
          to label %69 unwind label %79

69:                                               ; preds = %65
  store ptr %68, ptr %8, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %70 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  store ptr %70, ptr %10, align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  %71 = load ptr, ptr %7, align 8
  %72 = load ptr, ptr %9, align 8
  %73 = invoke ptr @_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr %71, ptr %72) #17
          to label %74 unwind label %81

74:                                               ; preds = %69
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %75 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %109, label %85

77:                                               ; preds = %30
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %107

79:                                               ; preds = %65
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %83

81:                                               ; preds = %69
  %82 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %80, %79 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %107

85:                                               ; preds = %74, %96
  %86 = phi i64 [ %98, %96 ], [ 0, %74 ]
  %87 = phi i32 [ %97, %96 ], [ 0, %74 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #18
  %88 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %86) #19
  %89 = load i32, ptr %88, align 4, !tbaa !493
  invoke void @_ZN9FastBoard17get_string_stonesEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %89) #17
          to label %90 unwind label %101

90:                                               ; preds = %85
  %91 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #19
  %92 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %11) #19
  %93 = invoke ptr @_ZSt13back_inserterISt6vectorIiSaIiEEESt20back_insert_iteratorIT_ERS4_(ptr noundef nonnull align 8 dereferenceable(24) %5) #17
          to label %94 unwind label %103

94:                                               ; preds = %90
  %95 = invoke ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEESt20back_insert_iteratorIS5_EET0_T_SA_S9_(ptr %91, ptr %92, ptr %93) #17
          to label %96 unwind label %103

96:                                               ; preds = %94
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  %97 = add i32 %87, 1
  %98 = zext i32 %97 to i64
  %99 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  %100 = icmp ugt i64 %99, %98
  br i1 %100, label %85, label %109, !llvm.loop !926

101:                                              ; preds = %85
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %105

103:                                              ; preds = %94, %90
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #19
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi { ptr, i32 } [ %104, %103 ], [ %102, %101 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #18
  br label %107

107:                                              ; preds = %105, %83, %77, %60
  %108 = phi { ptr, i32 } [ %61, %60 ], [ %106, %105 ], [ %84, %83 ], [ %78, %77 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  resume { ptr, i32 } %108

109:                                              ; preds = %96, %74, %3
  %110 = phi ptr [ %4, %3 ], [ %5, %74 ], [ %5, %96 ]
  call void @_ZNSt6vectorIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %110) #19
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #18
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6vectorIiSaIiEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  %4 = tail call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %5 = tail call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %5, ptr %3, align 8
  %6 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !927 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 !prof !917 {
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  tail call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #17
  tail call void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %8 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %8, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %9 = tail call ptr @_ZNKSt6vectorIiSaIiEE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %9, ptr %7, align 8
  %10 = call noundef i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %10) #19
  %12 = call noundef i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %13 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %12) #19
  %14 = call ptr @_ZNSt6vectorIiSaIiEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %11, ptr %13) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  tail call void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv() #17
  %3 = tail call ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(ptr %0, ptr %1) #17
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 comdat align 2 !prof !928 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  store ptr %4, ptr %0, align 8, !tbaa !666
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !606
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !927 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !927 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #19
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !927 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !606
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !606
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !654
  store ptr %6, ptr %4, align 8, !tbaa !654
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #7 comdat align 2 !prof !917 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !646
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !654
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !929

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #19
  %9 = load ptr, ptr %3, align 8, !tbaa !646
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !646
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #17
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !917 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #7 comdat align 2 !prof !930 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.31) #17
  %7 = load ptr, ptr %0, align 8, !tbaa !645
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !646
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #17
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #19
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !606
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #19
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %20 = load ptr, ptr %19, align 8, !tbaa !606
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #19
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !654
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #17
  store ptr %12, ptr %0, align 8, !tbaa !645
  store ptr %22, ptr %8, align 8, !tbaa !646
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !654
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !917 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !917 {
  %4 = load i32, ptr %2, align 4, !tbaa !493
  store i32 %4, ptr %1, align 4, !tbaa !493
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !917 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !700
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !606
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %8 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %9 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %10 = call noundef i64 @_ZSt4__lgl(i64 noundef %9) #17
  %11 = shl nsw i64 %10, 1
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %7, ptr %8, i64 noundef %11) #17
  %12 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %13 = load ptr, ptr %4, align 8, !tbaa.struct !913
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %12, ptr %13) #17
  br label %14

14:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() local_unnamed_addr #6 comdat !prof !489 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %7 = icmp sgt i64 %6, 16
  br i1 %7, label %8, label %22

8:                                                ; preds = %3, %14
  %9 = phi i64 [ %15, %14 ], [ %2, %3 ]
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %13 = load ptr, ptr %5, align 8
  call void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %12, ptr %13, ptr %13) #17
  br label %22

14:                                               ; preds = %8
  %15 = add nsw i64 %9, -1
  %16 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %17 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %18 = call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(ptr %16, ptr %17) #17
  %19 = load ptr, ptr %5, align 8, !tbaa.struct !913
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %18, ptr %19, i64 noundef %15) #17
  store ptr %18, ptr %5, align 8
  %20 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %21 = icmp sgt i64 %20, 16
  br i1 %21, label %8, label %22, !llvm.loop !931

22:                                               ; preds = %14, %3, %11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgl(i64 noundef %0) local_unnamed_addr #6 comdat !prof !489 {
  %2 = tail call i64 @llvm.ctlz.i64(i64 %0, i1 true), !range !932
  %3 = xor i64 %2, 63
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %6 = icmp sgt i64 %5, 16
  %7 = load ptr, ptr %3, align 8
  br i1 %6, label %8, label %12

8:                                                ; preds = %2
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 16) #19
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %7, ptr %9) #17
  %10 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 16) #19
  %11 = load ptr, ptr %4, align 8, !tbaa.struct !913
  call void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %10, ptr %11) #17
  br label %14

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !tbaa.struct !913
  call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %7, ptr %13) #17
  br label %14

14:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  tail call void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %0, ptr %1, ptr %2) #17
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %6 = sdiv i64 %5, 2
  %7 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %6) #19
  %8 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  %10 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 1) #19
  call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(ptr %8, ptr %9, ptr %7, ptr %10) #17
  %11 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %13 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %14 = call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_(ptr %11, ptr %12, ptr %13) #17
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %2, ptr %4, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  store ptr %1, ptr %6, align 8, !tbaa.struct !913
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %7, label %9, label %8

8:                                                ; preds = %14, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  ret void

9:                                                ; preds = %3, %14
  %10 = load ptr, ptr %6, align 8, !tbaa.struct !913
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %10, ptr %0) #17
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %6, align 8, !tbaa.struct !913
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(ptr %0, ptr %1, ptr %13, ptr noundef nonnull align 1 dereferenceable(1) %5) #17
  br label %14

14:                                               ; preds = %9, %12
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %16, label %9, label %8, !llvm.loop !933
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %7 = icmp sgt i64 %6, 1
  br i1 %7, label %8, label %14

8:                                                ; preds = %3, %8
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %11 = load ptr, ptr %5, align 8
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(ptr %10, ptr %11, ptr %11, ptr noundef nonnull align 1 dereferenceable(1) %2) #17
  %12 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %13 = icmp sgt i64 %12, 1
  br i1 %13, label %8, label %14, !llvm.loop !934

14:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %8 = icmp slt i64 %7, 2
  br i1 %8, label %21, label %9

9:                                                ; preds = %3
  %10 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %11 = add nsw i64 %10, -2
  %12 = sdiv i64 %11, 2
  br label %13

13:                                               ; preds = %13, %9
  %14 = phi i64 [ %12, %9 ], [ %20, %13 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %15 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %14) #19
  store ptr %15, ptr %6, align 8
  %16 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %17 = load i32, ptr %16, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  %18 = load ptr, ptr %4, align 8, !tbaa.struct !913
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %18, i64 noundef %14, i64 noundef %10, i32 noundef %17) #17
  %19 = icmp eq i64 %14, 0
  %20 = add nsw i64 %14, -1
  br i1 %19, label %21, label %13, !llvm.loop !935

21:                                               ; preds = %13, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !606
  %7 = icmp ult ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %7 = load i32, ptr %6, align 4, !tbaa !493
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %9 = load i32, ptr %8, align 4, !tbaa !493
  %10 = icmp slt i32 %7, %9
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #7 comdat !prof !489 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %9 = load i32, ptr %8, align 4, !tbaa !493
  %10 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %11 = load i32, ptr %10, align 4, !tbaa !493
  %12 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  store i32 %11, ptr %12, align 4, !tbaa !493
  %13 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %14 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %13, i64 noundef 0, i64 noundef %14, i32 noundef %9) #17
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #7 comdat !prof !489 {
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %11 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  store ptr %0, ptr %5, align 8
  %12 = add nsw i64 %2, -1
  %13 = sdiv i64 %12, 2
  %14 = icmp sgt i64 %13, %1
  br i1 %14, label %15, label %30

15:                                               ; preds = %4, %15
  %16 = phi i64 [ %23, %15 ], [ %1, %4 ]
  %17 = shl i64 %16, 1
  %18 = add i64 %17, 2
  %19 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %18) #19
  %20 = or disjoint i64 %17, 1
  %21 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %20) #19
  %22 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %19, ptr %21) #17
  %23 = select i1 %22, i64 %20, i64 %18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %24 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %23) #19
  store ptr %24, ptr %7, align 8
  %25 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #19
  %26 = load i32, ptr %25, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %27 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %16) #19
  store ptr %27, ptr %8, align 8
  %28 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  store i32 %26, ptr %28, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  %29 = icmp slt i64 %23, %13
  br i1 %29, label %15, label %30, !llvm.loop !936

30:                                               ; preds = %15, %4
  %31 = phi i64 [ %1, %4 ], [ %23, %15 ]
  %32 = and i64 %2, 1
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = add nsw i64 %2, -2
  %36 = ashr exact i64 %35, 1
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = shl nsw i64 %31, 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %40 = or disjoint i64 %39, 1
  %41 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %40) #19
  store ptr %41, ptr %9, align 8
  %42 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #19
  %43 = load i32, ptr %42, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %44 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %31) #19
  store ptr %44, ptr %10, align 8
  %45 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  store i32 %43, ptr %45, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %46

46:                                               ; preds = %38, %34, %30
  %47 = phi i64 [ %40, %38 ], [ %31, %34 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #18
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %11) #17
  %48 = load ptr, ptr %5, align 8, !tbaa.struct !913
  call void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_(ptr %48, i64 noundef %47, i64 noundef %1, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %11) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #6 comdat align 2 !prof !489 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_less_valEEvT_T0_SA_T1_RT2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #7 comdat !prof !489 {
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %7 = alloca i32, align 4
  %8 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %9 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %10 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %6, align 8
  store i32 %3, ptr %7, align 4, !tbaa !493
  %11 = icmp sgt i64 %1, %2
  br i1 %11, label %12, label %28

12:                                               ; preds = %5, %18
  %13 = phi i64 [ %15, %18 ], [ %1, %5 ]
  %14 = add nsw i64 %13, -1
  %15 = sdiv i64 %14, 2
  %16 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %15) #19
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr %16, ptr noundef nonnull align 4 dereferenceable(4) %7) #17
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  %19 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %15) #19
  store ptr %19, ptr %8, align 8
  %20 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #19
  %21 = load i32, ptr %20, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  %22 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %13) #19
  store ptr %22, ptr %9, align 8
  %23 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %9) #19
  store i32 %21, ptr %23, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  %24 = icmp sgt i64 %15, %2
  br i1 %24, label %12, label %25, !llvm.loop !937

25:                                               ; preds = %18, %12
  %26 = phi i64 [ %13, %12 ], [ %15, %18 ]
  %27 = load i32, ptr %7, align 4, !tbaa !493
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi i32 [ %3, %5 ], [ %27, %25 ]
  %30 = phi i64 [ %1, %5 ], [ %26, %25 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  %31 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %30) #19
  store ptr %31, ptr %10, align 8
  %32 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #19
  store i32 %29, ptr %32, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %6 = load i32, ptr %5, align 4, !tbaa !493
  %7 = load i32, ptr %2, align 4, !tbaa !493
  %8 = icmp slt i32 %6, %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %2 = load ptr, ptr %0, align 8, !tbaa !700
  %3 = getelementptr inbounds i32, ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !700
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_S9_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #7 comdat !prof !489 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %1, ptr %2) #17
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %2, ptr %3) #17
  br i1 %8, label %15, label %11

9:                                                ; preds = %4
  %10 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %1, ptr %3) #17
  br i1 %10, label %15, label %11

11:                                               ; preds = %9, %7
  %12 = phi ptr [ %1, %7 ], [ %2, %9 ]
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %12, ptr %3) #17
  %14 = select i1 %13, ptr %3, ptr %12
  br label %15

15:                                               ; preds = %11, %9, %7
  %16 = phi ptr [ %2, %7 ], [ %1, %9 ], [ %14, %11 ]
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_(ptr %0, ptr %16) #17
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_S9_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  br label %7

7:                                                ; preds = %3, %26
  %8 = phi ptr [ %0, %3 ], [ %29, %26 ]
  %9 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %8, ptr %2) #17
  br i1 %9, label %10, label %14

10:                                               ; preds = %7, %10
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %12 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %13 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %12, ptr %2) #17
  br i1 %13, label %10, label %14, !llvm.loop !938

14:                                               ; preds = %10, %7
  %15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %16 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %2, ptr %16) #17
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %18
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %20 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %21 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr %2, ptr %20) #17
  br i1 %21, label %18, label %22, !llvm.loop !939

22:                                               ; preds = %18, %14
  %23 = call noundef zeroext i1 @_ZN9__gnu_cxxltIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %24 = load ptr, ptr %4, align 8
  br i1 %23, label %26, label %25

25:                                               ; preds = %22
  ret ptr %24

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8, !tbaa.struct !913
  call void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_(ptr %24, ptr %27) #17
  %28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %29 = load ptr, ptr %4, align 8, !tbaa.struct !913
  br label %7, !llvm.loop !940
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_EvT_T0_(ptr %0, ptr %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = load i32, ptr %0, align 4, !tbaa !493
  %4 = load i32, ptr %1, align 4, !tbaa !493
  store i32 %4, ptr %0, align 4, !tbaa !493
  store i32 %3, ptr %1, align 4, !tbaa !493
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %7, label %29, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %9 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #19
  store ptr %9, ptr %6, align 8
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %10, label %12, label %11

11:                                               ; preds = %26, %8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %29

12:                                               ; preds = %8, %26
  %13 = load ptr, ptr %6, align 8, !tbaa.struct !913
  %14 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %15 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %13, ptr %14) #17
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %18 = load i32, ptr %17, align 4, !tbaa !493
  %19 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %20 = load ptr, ptr %6, align 8, !tbaa.struct !913
  %21 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 1) #19
  %22 = call ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_(ptr %19, ptr %20, ptr %21) #17
  %23 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  store i32 %18, ptr %23, align 4, !tbaa !493
  br label %26

24:                                               ; preds = %12
  %25 = load ptr, ptr %6, align 8, !tbaa.struct !913
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #17
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %25) #17
  br label %26

26:                                               ; preds = %16, %24
  %27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %28 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %28, label %12, label %11, !llvm.loop !941

29:                                               ; preds = %2, %11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  store ptr %0, ptr %4, align 8, !tbaa.struct !913
  %5 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  br i1 %5, label %7, label %6

6:                                                ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void

7:                                                ; preds = %2, %7
  %8 = load ptr, ptr %4, align 8, !tbaa.struct !913
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #17
  call void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %8) #17
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %10 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  br i1 %10, label %7, label %6, !llvm.loop !942
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !606
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %0) #17
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %1) #17
  %6 = tail call ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET1_T0_S8_S7_(ptr %4, ptr %5, ptr %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr %0) local_unnamed_addr #7 comdat !prof !489 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %3 = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %4 = alloca i32, align 4
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #18
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  %7 = load i32, ptr %6, align 4, !tbaa !493
  store i32 %7, ptr %4, align 4, !tbaa !493
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %8 = load i64, ptr %2, align 8, !tbaa !606
  store i64 %8, ptr %5, align 8, !tbaa !606
  %9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %10 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr %10) #17
  br i1 %11, label %12, label %20

12:                                               ; preds = %1, %12
  %13 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %14 = load i32, ptr %13, align 4, !tbaa !493
  %15 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  store i32 %14, ptr %15, align 4, !tbaa !493
  %16 = load i64, ptr %5, align 8, !tbaa !606
  store i64 %16, ptr %2, align 8, !tbaa !606
  %17 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %18 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr %18) #17
  br i1 %19, label %12, label %20, !llvm.loop !943

20:                                               ; preds = %12, %1
  %21 = load i32, ptr %4, align 4, !tbaa !493
  %22 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #19
  store i32 %21, ptr %22, align 4, !tbaa !493
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() local_unnamed_addr #6 comdat !prof !489 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt22__copy_move_backward_aILb1EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET1_T0_S8_S7_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #19
  %7 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #17
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 2
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds i32, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %11, ptr align 4 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds i32, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiNS_17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr %2) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %2, ptr %4, align 8
  %5 = load i32, ptr %1, align 4, !tbaa !493
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %7 = load i32, ptr %6, align 4, !tbaa !493
  %8 = icmp slt i32 %5, %7
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE6cbeginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPiS1_EES5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat align 2 !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %7 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  br i1 %8, label %9, label %23

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %10 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %10, ptr %6, align 8
  %11 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !tbaa.struct !913
  %14 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  %15 = load ptr, ptr %4, align 8, !tbaa.struct !913
  %16 = call ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_(ptr %13, ptr %14, ptr %15) #17
  br label %17

17:                                               ; preds = %12, %9
  %18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %19 = load ptr, ptr %18, align 8, !tbaa !606
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  %20 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #19
  store ptr %20, ptr %7, align 8
  %21 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %22 = getelementptr inbounds i32, ptr %19, i64 %21
  call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %22) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %23

23:                                               ; preds = %17, %3
  %24 = load ptr, ptr %4, align 8, !tbaa.struct !913
  ret ptr %24
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !489 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
  %4 = load ptr, ptr %3, align 8, !tbaa !606
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #19
  %6 = load ptr, ptr %5, align 8, !tbaa !606
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  ret i64 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %0) #17
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_(ptr %1) #17
  %6 = tail call ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET1_T0_S8_S7_(ptr %4, ptr %5, ptr %2) #17
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt13__copy_move_aILb1EN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET1_T0_S8_S7_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %0) #19
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %1) #19
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE(ptr %2) #19
  %7 = tail call noundef ptr @_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %6) #17
  %8 = tail call ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_(ptr %2, ptr noundef %7) #17
  ret ptr %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #7 comdat !prof !489 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8__uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_equal_to_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  %7 = tail call ptr @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(ptr %0, ptr %1) #17
  store ptr %7, ptr %3, align 8, !tbaa.struct !913
  %8 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !913
  br label %31

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %12 = load i64, ptr %3, align 8, !tbaa !606
  store i64 %12, ptr %6, align 8, !tbaa !606
  %13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %15 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %15, label %16, label %28

16:                                               ; preds = %11, %25
  %17 = load ptr, ptr %6, align 8, !tbaa.struct !913
  %18 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %19 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %17, ptr %18) #17
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %22 = load i32, ptr %21, align 4, !tbaa !493
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %24 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %23) #19
  store i32 %22, ptr %24, align 4, !tbaa !493
  br label %25

25:                                               ; preds = %20, %16
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #19
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %27, label %16, label %28, !llvm.loop !944

28:                                               ; preds = %25, %11
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %30 = load ptr, ptr %29, align 8, !tbaa.struct !913
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %31

31:                                               ; preds = %28, %9
  %32 = phi ptr [ %10, %9 ], [ %30, %28 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops20__iter_equal_to_iterEv() local_unnamed_addr #6 comdat !prof !489 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_(ptr %0, ptr %1) local_unnamed_addr #7 comdat !prof !489 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_equal_to_iter", align 1
  %6 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load ptr, ptr %4, align 8, !tbaa.struct !913
  br label %25

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %11 = load i64, ptr %3, align 8, !tbaa !606
  store i64 %11, ptr %6, align 8, !tbaa !606
  %12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %13, label %14, label %22

14:                                               ; preds = %10, %18
  %15 = load ptr, ptr %3, align 8, !tbaa.struct !913
  %16 = load ptr, ptr %6, align 8, !tbaa.struct !913
  %17 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr %15, ptr %16) #17
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %6, align 8, !tbaa !606
  store i64 %19, ptr %3, align 8, !tbaa !606
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %6) #19
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  br i1 %21, label %14, label %22, !llvm.loop !945

22:                                               ; preds = %14, %18, %10
  %23 = phi ptr [ %4, %10 ], [ %4, %18 ], [ %3, %14 ]
  %24 = load ptr, ptr %23, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %25

25:                                               ; preds = %22, %8
  %26 = phi ptr [ %9, %8 ], [ %24, %22 ]
  ret ptr %26
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclINS_17__normal_iteratorIPiSt6vectorIiSaIiEEEES8_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat align 2 !prof !489 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %1, ptr %4, align 8
  store ptr %2, ptr %5, align 8
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #19
  %7 = load i32, ptr %6, align 4, !tbaa !493
  %8 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #19
  %9 = load i32, ptr %8, align 4, !tbaa !493
  %10 = icmp eq i32 %7, %9
  ret i1 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastBoard12predict_killEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 align 2 !prof !489 {
  %4 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 8
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 7
  %6 = sext i32 %2 to i64
  %7 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %5, i64 noundef %6) #17
  %8 = load i16, ptr %7, align 2, !tbaa !496
  %9 = zext i16 %8 to i64
  %10 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %4, i64 noundef %9) #17
  %11 = load i16, ptr %10, align 2, !tbaa !496
  %12 = icmp ugt i16 %11, 1
  br i1 %12, label %40, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 5
  %15 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %6) #17
  %16 = load i32, ptr %15, align 4, !tbaa !484
  %17 = tail call noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #17
  %18 = icmp eq i32 %17, %16
  br i1 %18, label %40, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 12
  br label %21

21:                                               ; preds = %19, %35
  %22 = phi i64 [ 0, %19 ], [ %36, %35 ]
  %23 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm4EEixEm(ptr noundef nonnull align 4 dereferenceable(16) %20, i64 noundef %22) #17
  %24 = load i32, ptr %23, align 4, !tbaa !493
  %25 = add nsw i32 %24, %1
  %26 = sext i32 %25 to i64
  %27 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm(ptr noundef nonnull align 4 dereferenceable(1764) %14, i64 noundef %26) #17
  %28 = load i32, ptr %27, align 4, !tbaa !484
  %29 = icmp eq i32 %28, %16
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm442EEixEm(ptr noundef nonnull align 2 dereferenceable(884) %5, i64 noundef %26) #17
  %32 = load i16, ptr %31, align 2, !tbaa !496
  %33 = zext i16 %32 to i32
  %34 = icmp eq i32 %33, %2
  br i1 %34, label %40, label %35

35:                                               ; preds = %30, %21
  %36 = add nuw nsw i64 %22, 1
  %37 = icmp eq i64 %36, 4
  br i1 %37, label %38, label %21, !llvm.loop !946

38:                                               ; preds = %35
  %39 = icmp ult i64 %22, 3
  br label %40

40:                                               ; preds = %30, %38, %13, %3
  %41 = phi i1 [ false, %3 ], [ false, %13 ], [ %39, %38 ], [ true, %30 ]
  ret i1 %41
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_FastBoard.cpp() #0 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

attributes #0 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { optsize }
attributes #18 = { nounwind }
attributes #19 = { nounwind optsize }
attributes #20 = { noreturn nounwind }
attributes #21 = { noreturn optsize }
attributes #22 = { builtin optsize allocsize(0) }
attributes #23 = { builtin nounwind optsize }
attributes #24 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!464}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463}
!36 = !{ptr @_ZN9FastBoard10get_vertexEii, ptr @_ZN9FastBoard13get_boardsizeEv, i64 1198002857}
!37 = !{ptr @_ZN9FastBoard10get_squareEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 15649259044}
!38 = !{ptr @_ZN9FastBoard10set_squareEiNS_8square_tE, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 8388690}
!39 = !{ptr @_ZN9FastBoard10get_squareEii, ptr @_ZN9FastBoard10get_vertexEii, i64 440665}
!40 = !{ptr @_ZN9FastBoard10get_squareEii, ptr @_ZN9FastBoard10get_squareEi, i64 440665}
!41 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 120}
!42 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 120}
!43 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN5boost5arrayIiLm8EEixEm, i64 240}
!44 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 15590}
!45 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN5boost5arrayItLm441EEixEm, i64 37993}
!46 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 8775}
!47 = !{ptr @_ZN9FastBoard11reset_boardEi, ptr @_ZN9FastBoard10get_vertexEii, i64 6905}
!48 = !{ptr @_ZN9FastBoard10is_suicideEii, ptr @_ZN9FastBoard16count_plibertiesEi, i64 12533678}
!49 = !{ptr @_ZN9FastBoard10is_suicideEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 4674931}
!50 = !{ptr @_ZN9FastBoard10is_suicideEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 9349862}
!51 = !{ptr @_ZN9FastBoard10is_suicideEii, ptr @_ZN9FastBoard10get_squareEi, i64 4674931}
!52 = !{ptr @_ZN9FastBoard10is_suicideEii, ptr @_ZN9FastBoard13add_neighbourEii, i64 288422}
!53 = !{ptr @_ZN9FastBoard10is_suicideEii, ptr @_ZN9FastBoard16remove_neighbourEii, i64 288422}
!54 = !{ptr @_ZN9FastBoard16count_plibertiesEi, ptr @_ZN9FastBoard16count_neighboursEii, i64 6536823190}
!55 = !{ptr @_ZN9FastBoard13add_neighbourEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 10023899601}
!56 = !{ptr @_ZN9FastBoard13add_neighbourEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 3292029932}
!57 = !{ptr @_ZN9FastBoard13add_neighbourEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 10990017323}
!58 = !{ptr @_ZN9FastBoard16remove_neighbourEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 4506556292}
!59 = !{ptr @_ZN9FastBoard16remove_neighbourEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 1513066105}
!60 = !{ptr @_ZN9FastBoard16remove_neighbourEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 4813859455}
!61 = !{ptr @_ZN9FastBoard16count_neighboursEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 7806322315}
!62 = !{ptr @_ZN9FastBoard15fast_ss_suicideEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 3424467921}
!63 = !{ptr @_ZN9FastBoard15fast_ss_suicideEii, ptr @_ZNK5boost5arrayIiLm2EEixEm, i64 3424467921}
!64 = !{ptr @_ZN9FastBoard15fast_ss_suicideEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 11116032798}
!65 = !{ptr @_ZN9FastBoard18remove_string_fastEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 564299789}
!66 = !{ptr @_ZN9FastBoard18remove_string_fastEi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 740247974}
!67 = !{ptr @_ZN9FastBoard18remove_string_fastEi, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 370123987}
!68 = !{ptr @_ZN9FastBoard18remove_string_fastEi, ptr @_ZN9FastBoard16remove_neighbourEii, i64 370123987}
!69 = !{ptr @_ZN9FastBoard18remove_string_fastEi, ptr @_ZN5boost5arrayItLm441EEixEm, i64 740247974}
!70 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSaIbEC2Ev, i64 126008}
!71 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt6vectorIbSaIbEEC2EmRKS0_, i64 126008}
!72 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt15__new_allocatorIbED2Ev, i64 126008}
!73 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 126008}
!74 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt6vectorIbSaIbEE3endEv, i64 126008}
!75 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_, i64 126008}
!76 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, i64 129350}
!77 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_, i64 129342}
!78 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZN9FastBoard10get_vertexEii, i64 10476647}
!79 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 37951351}
!80 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt6vectorIbSaIbEEixEm, i64 8100838}
!81 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt14_Bit_referenceaSEb, i64 6778182}
!82 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 23776246}
!83 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNKSt14_Bit_referencecvbEv, i64 1322647}
!84 = !{ptr @_ZN9FastBoard16calc_reach_colorEi, ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, i64 63012}
!85 = !{ptr @_ZNSaIbEC2Ev, ptr @_ZNSt15__new_allocatorIbEC2Ev, i64 126015}
!86 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKS0_, ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, i64 126015}
!87 = !{ptr @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_, ptr @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_, i64 126015}
!88 = !{ptr @_ZNSt6vectorIbSaIbEE5beginEv, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 14973351}
!89 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNKSt6vectorIbSaIbEE4sizeEv, i64 129359}
!90 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNKSt6vectorIbSaIbEE8capacityEv, i64 129358}
!91 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, i64 1}
!92 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, i64 1}
!93 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNKSt6vectorIbSaIbEE5beginEv, i64 129358}
!94 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNKSt6vectorIbSaIbEE3endEv, i64 129358}
!95 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 129358}
!96 = !{ptr @_ZNSt6vectorIbSaIbEEaSERKS1_, ptr @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, i64 129358}
!97 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 14717977}
!98 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNKSt13_Bit_iteratorixEl, i64 14717977}
!99 = !{ptr @_ZStneIbSaIbEEbRKSt6vectorIT_T0_ES6_, ptr @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_, i64 129359}
!100 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, i64 126015}
!101 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!102 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSaImEC2IbEERKSaIT_E, i64 126015}
!103 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, i64 126015}
!104 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!105 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, i64 126014}
!106 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, i64 126014}
!107 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 126014}
!108 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZStplRKSt13_Bit_iteratorl, i64 126014}
!109 = !{ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!110 = !{ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, ptr @_ZSt16__fill_bvector_nPmmb, i64 126014}
!111 = !{ptr @_ZNSaImEC2IbEERKSaIT_E, ptr @_ZNSt15__new_allocatorImEC2Ev, i64 126015}
!112 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, ptr @_ZNSaImEC2ERKS_, i64 126015}
!113 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!114 = !{ptr @_ZNSaImEC2ERKS_, ptr @_ZNSt15__new_allocatorImEC2ERKS0_, i64 126015}
!115 = !{ptr @_ZNSt13_Bit_iteratorC2Ev, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 504060}
!116 = !{ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, ptr @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, i64 126015}
!117 = !{ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m, i64 126015}
!118 = !{ptr @_ZNSt13_Bit_iteratorC2EPmj, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 15228725}
!119 = !{ptr @_ZStplRKSt13_Bit_iteratorl, ptr @_ZNSt13_Bit_iteratorpLEl, i64 14843992}
!120 = !{ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, i64 126015}
!121 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorImE11_M_max_sizeEv, i64 126015}
!122 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 31}
!123 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 31}
!124 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_Znwm, i64 125952}
!125 = !{ptr @_ZNSt13_Bit_iteratorpLEl, ptr @_ZNSt18_Bit_iterator_base7_M_incrEl, i64 14843992}
!126 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!127 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, i64 126014}
!128 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, i64 126014}
!129 = !{ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, i64 126015}
!130 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!131 = !{ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, ptr @_ZdlPv, i64 126015}
!132 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, ptr @_ZNSt13_Bit_iteratorC2Ev, i64 504060}
!133 = !{ptr @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_, ptr @_ZSt9__fill_a1St13_Bit_iteratorS_RKb, i64 126015}
!134 = !{ptr @_ZSt9__fill_a1St13_Bit_iteratorS_RKb, ptr @_ZSt14__fill_bvectorPmjjb, i64 126014}
!135 = !{ptr @_ZSt9__fill_a1St13_Bit_iteratorS_RKb, ptr @_ZSt16__fill_bvector_nPmmb, i64 126014}
!136 = !{ptr @_ZNKSt6vectorIbSaIbEE4sizeEv, ptr @_ZNKSt6vectorIbSaIbEE3endEv, i64 388077}
!137 = !{ptr @_ZNKSt6vectorIbSaIbEE4sizeEv, ptr @_ZNKSt6vectorIbSaIbEE5beginEv, i64 388077}
!138 = !{ptr @_ZNKSt6vectorIbSaIbEE4sizeEv, ptr @_ZStmiRKSt18_Bit_iterator_baseS1_, i64 388077}
!139 = !{ptr @_ZNKSt6vectorIbSaIbEE8capacityEv, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 129359}
!140 = !{ptr @_ZNKSt6vectorIbSaIbEE8capacityEv, ptr @_ZNSt19_Bit_const_iteratorC2EPmj, i64 129359}
!141 = !{ptr @_ZNKSt6vectorIbSaIbEE8capacityEv, ptr @_ZNKSt6vectorIbSaIbEE5beginEv, i64 129359}
!142 = !{ptr @_ZNKSt6vectorIbSaIbEE8capacityEv, ptr @_ZStmiRKSt18_Bit_iterator_baseS1_, i64 129359}
!143 = !{ptr @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, ptr @_ZSt4copyIPmS0_ET0_T_S2_S1_, i64 129359}
!144 = !{ptr @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, ptr @_ZNSt19_Bit_const_iteratorC2EPmj, i64 129359}
!145 = !{ptr @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 129359}
!146 = !{ptr @_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator, ptr @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_, i64 129359}
!147 = !{ptr @_ZNKSt6vectorIbSaIbEE5beginEv, ptr @_ZNSt19_Bit_const_iteratorC2EPmj, i64 905513}
!148 = !{ptr @_ZNKSt6vectorIbSaIbEE3endEv, ptr @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator, i64 646795}
!149 = !{ptr @_ZNSt19_Bit_const_iteratorC2EPmj, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 1164231}
!150 = !{ptr @_ZSt4copyIPmS0_ET0_T_S2_S1_, ptr @_ZSt12__miter_baseIPmET_S1_, i64 258718}
!151 = !{ptr @_ZSt4copyIPmS0_ET0_T_S2_S1_, ptr @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_, i64 129359}
!152 = !{ptr @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_, ptr @_ZSt12__miter_baseISt19_Bit_const_iteratorET_S1_, i64 258718}
!153 = !{ptr @_ZSt4copyISt19_Bit_const_iteratorSt13_Bit_iteratorET0_T_S3_S2_, ptr @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, i64 129359}
!154 = !{ptr @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_baseIPmET_S1_, i64 388077}
!155 = !{ptr @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_, i64 129359}
!156 = !{ptr @_ZSt13__copy_move_aILb0EPmS0_ET1_T0_S2_S1_, ptr @_ZSt12__niter_wrapIPmET_RKS1_S1_, i64 129359}
!157 = !{ptr @_ZSt14__copy_move_a1ILb0EPmS0_ET1_T0_S2_S1_, ptr @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_, i64 129359}
!158 = !{ptr @_ZSt14__copy_move_a2ILb0EPmS0_ET1_T0_S2_S1_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_, i64 129359}
!159 = !{ptr @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, ptr @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_, i64 258718}
!160 = !{ptr @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, ptr @_ZSt12__niter_baseISt13_Bit_iteratorET_S1_, i64 129359}
!161 = !{ptr @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, ptr @_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, i64 129359}
!162 = !{ptr @_ZSt13__copy_move_aILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, ptr @_ZSt12__niter_wrapISt13_Bit_iteratorET_RKS1_S1_, i64 129359}
!163 = !{ptr @_ZSt14__copy_move_a1ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, ptr @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, i64 129359}
!164 = !{ptr @_ZSt14__copy_move_a2ILb0ESt19_Bit_const_iteratorSt13_Bit_iteratorET1_T0_S3_S2_, ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, i64 129359}
!165 = !{ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, ptr @_ZStmiRKSt18_Bit_iterator_baseS1_, i64 129359}
!166 = !{ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, ptr @_ZNKSt19_Bit_const_iteratordeEv, i64 7373407}
!167 = !{ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, ptr @_ZNKSt13_Bit_iteratordeEv, i64 7373407}
!168 = !{ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, ptr @_ZNSt14_Bit_referenceaSEb, i64 7373407}
!169 = !{ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, ptr @_ZNSt19_Bit_const_iteratorppEv, i64 7373407}
!170 = !{ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mISt19_Bit_const_iteratorSt13_Bit_iteratorEET0_T_S6_S5_, ptr @_ZNSt13_Bit_iteratorppEv, i64 7373407}
!171 = !{ptr @_ZNKSt19_Bit_const_iteratordeEv, ptr @_ZNSt14_Bit_referenceC2EPmm, i64 25119843}
!172 = !{ptr @_ZNKSt19_Bit_const_iteratordeEv, ptr @_ZNKSt14_Bit_referencecvbEv, i64 25119843}
!173 = !{ptr @_ZNKSt13_Bit_iteratordeEv, ptr @_ZNSt14_Bit_referenceC2EPmm, i64 22091440}
!174 = !{ptr @_ZNSt19_Bit_const_iteratorppEv, ptr @_ZNSt18_Bit_iterator_base10_M_bump_upEv, i64 24987133}
!175 = !{ptr @_ZNSt13_Bit_iteratorppEv, ptr @_ZNSt18_Bit_iterator_base10_M_bump_upEv, i64 7373463}
!176 = !{ptr @_ZNSt19_Bit_const_iteratorC2ERKSt13_Bit_iterator, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 646795}
!177 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZStplRKSt13_Bit_iteratorl, i64 14717977}
!178 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZNKSt13_Bit_iteratordeEv, i64 14717977}
!179 = !{ptr @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_, ptr @_ZNKSt6vectorIbSaIbEE4sizeEv, i64 258718}
!180 = !{ptr @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_, ptr @_ZNKSt6vectorIbSaIbEE5beginEv, i64 258716}
!181 = !{ptr @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_, ptr @_ZNKSt6vectorIbSaIbEE3endEv, i64 129358}
!182 = !{ptr @_ZSteqIbSaIbEEbRKSt6vectorIT_T0_ES6_, ptr @_ZSt5equalISt19_Bit_const_iteratorS0_EbT_S1_T0_, i64 129358}
!183 = !{ptr @_ZSt5equalISt19_Bit_const_iteratorS0_EbT_S1_T0_, ptr @_ZSt11__equal_auxISt19_Bit_const_iteratorS0_EbT_S1_T0_, i64 129359}
!184 = !{ptr @_ZSt11__equal_auxISt19_Bit_const_iteratorS0_EbT_S1_T0_, ptr @_ZSt12__niter_baseISt19_Bit_const_iteratorET_S1_, i64 388077}
!185 = !{ptr @_ZSt11__equal_auxISt19_Bit_const_iteratorS0_EbT_S1_T0_, ptr @_ZSt12__equal_aux1ISt19_Bit_const_iteratorS0_EbT_S1_T0_, i64 129359}
!186 = !{ptr @_ZSt12__equal_aux1ISt19_Bit_const_iteratorS0_EbT_S1_T0_, ptr @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_, i64 129359}
!187 = !{ptr @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_, ptr @_ZStneRKSt18_Bit_iterator_baseS1_, i64 8968180}
!188 = !{ptr @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_, ptr @_ZNKSt19_Bit_const_iteratordeEv, i64 17810836}
!189 = !{ptr @_ZNSt7__equalILb0EE5equalISt19_Bit_const_iteratorS2_EEbT_S3_T0_, ptr @_ZNSt19_Bit_const_iteratorppEv, i64 17677642}
!190 = !{ptr @_ZStneRKSt18_Bit_iterator_baseS1_, ptr @_ZSteqRKSt18_Bit_iterator_baseS1_, i64 8936194}
!191 = !{ptr @_ZN9FastBoard21percentual_area_scoreEf, ptr @_ZN9FastBoard10area_scoreEf, i64 31495}
!192 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZN9FastBoard16calc_reach_colorEi, i64 63004}
!193 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, i64 63004}
!194 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZN9FastBoard10get_vertexEii, i64 2551075}
!195 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZNSt6vectorIbSaIbEEixEm, i64 6613855}
!196 = !{ptr @_ZN9FastBoard10area_scoreEf, ptr @_ZNKSt14_Bit_referencecvbEv, i64 6613849}
!197 = !{ptr @_ZN9FastBoard17estimate_mc_scoreEf, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 1602961626}
!198 = !{ptr @_ZN9FastBoard14final_mc_scoreEf, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 12196634}
!199 = !{ptr @_ZN9FastBoard14final_mc_scoreEf, ptr @_ZN5boost5arrayItLm441EEixEm, i64 613156617}
!200 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!201 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!202 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!203 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!204 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!205 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!206 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!207 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!208 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!209 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!210 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!211 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!212 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!213 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!214 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!215 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!216 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!217 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!218 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!219 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!220 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!221 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!222 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!223 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!224 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!225 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!226 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!227 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!228 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!229 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!230 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!231 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!232 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!233 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!234 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!235 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!236 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!237 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!238 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!239 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!240 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!241 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!242 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!243 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!244 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!245 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!246 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!247 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!248 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!249 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!250 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!251 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!252 = !{ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, i64 7}
!253 = !{ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7}
!254 = !{ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, ptr @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, i64 7}
!255 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 893}
!256 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE8capacityEv, i64 446}
!257 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 445}
!258 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 445}
!259 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKiS1_EEEEPimT_S9_, i64 1}
!260 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 446}
!261 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 1}
!262 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 1}
!263 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 444}
!264 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, i64 444}
!265 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 444}
!266 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, i64 444}
!267 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt4copyIPiS0_ET0_T_S2_S1_, i64 1}
!268 = !{ptr @_ZNSt6vectorIiSaIiEEaSERKS1_, ptr @_ZSt22__uninitialized_copy_aIPiS0_iET0_T_S2_S1_RSaIT1_E, i64 1}
!269 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7}
!270 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 7}
!271 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!272 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!273 = !{ptr @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7}
!274 = !{ptr @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, i64 7}
!275 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, i64 20504893}
!276 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 20504893}
!277 = !{ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, i64 20504893}
!278 = !{ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 20504893}
!279 = !{ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_, i64 8}
!280 = !{ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_, ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, i64 8}
!281 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, ptr @_ZSt10_ConstructIiJEEvPT_DpOT0_, i64 7}
!282 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, i64 7}
!283 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 8}
!284 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 8}
!285 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, i64 8}
!286 = !{ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, i64 7}
!287 = !{ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 8}
!288 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RSaIT0_E, ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, i64 447}
!289 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 894}
!290 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET0_T_SB_SA_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, i64 447}
!291 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!292 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!293 = !{ptr @_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEEvT_S9_, i64 447}
!294 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 894}
!295 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 447}
!296 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 447}
!297 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEENS1_IPiS6_EEET1_T0_SB_SA_, ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, i64 447}
!298 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, i64 447}
!299 = !{ptr @_ZSt12__niter_wrapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES2_ET_S7_T0_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, i64 447}
!300 = !{ptr @_ZSt12__niter_baseIPiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS4_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 894}
!301 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEplEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 447}
!302 = !{ptr @_ZN9FastBoard13display_boardEi, ptr @_ZN9FastBoard13get_boardsizeEv, i64 970}
!303 = !{ptr @_ZN9FastBoard13display_boardEi, ptr @_ZN5Utils8myprintfEPKcz, i64 573784}
!304 = !{ptr @_ZN9FastBoard13display_boardEi, ptr @_ZN9FastBoard10get_vertexEii, i64 262788}
!305 = !{ptr @_ZN9FastBoard13display_boardEi, ptr @_ZN9FastBoard10get_squareEii, i64 440242}
!306 = !{ptr @_ZN9FastBoard13display_boardEi, ptr @_ZN9FastBoard9starpointEiii, i64 135660}
!307 = !{ptr @_ZN9FastBoard9starpointEiii, ptr @_ZN9FastBoard9starpointEii, i64 135791}
!308 = !{ptr @_ZN9FastBoard13merge_stringsEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 14452750516}
!309 = !{ptr @_ZN9FastBoard13merge_stringsEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 11448668223}
!310 = !{ptr @_ZN9FastBoard13merge_stringsEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 5601060916}
!311 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 34294662}
!312 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 411535938}
!313 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 68589324}
!314 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN9FastBoard13add_neighbourEii, i64 34294662}
!315 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 171473310}
!316 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 137178645}
!317 = !{ptr @_ZN9FastBoard16update_board_eyeEii, ptr @_ZN9FastBoard18remove_string_fastEi, i64 39323962}
!318 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 4578502789}
!319 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZNK5boost5arrayIiLm2EEixEm, i64 791662684}
!320 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN9FastBoard16update_board_eyeEii, i64 34294663}
!321 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 6596883438}
!322 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 9813292180}
!323 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN9FastBoard16count_plibertiesEi, i64 757368021}
!324 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 900904242}
!325 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN9FastBoard13add_neighbourEii, i64 757368021}
!326 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 3029472079}
!327 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN9FastBoard18remove_string_fastEi, i64 154851841}
!328 = !{ptr @_ZN9FastBoard17update_board_fastEii, ptr @_ZN9FastBoard13merge_stringsEii, i64 770911156}
!329 = !{ptr @_ZN9FastBoard6is_eyeEii, ptr @_ZN5boost5arrayItLm441EEixEm, i64 4945435260}
!330 = !{ptr @_ZN9FastBoard6is_eyeEii, ptr @_ZNK5boost5arrayIiLm2EEixEm, i64 4945435260}
!331 = !{ptr @_ZN9FastBoard6is_eyeEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 5811353092}
!332 = !{ptr @_ZN9FastBoard11no_eye_fillEi, ptr @_ZN9FastBoard6is_eyeEii, i64 4741049687}
!333 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev, i64 40412}
!334 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c, i64 38461}
!335 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSolsEi, i64 38461}
!336 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc, i64 1951}
!337 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv, i64 40412}
!338 = !{ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, ptr @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev, i64 40412}
!339 = !{ptr @_ZN9FastBoard13get_prisonersEi, ptr @_ZN5boost5arrayIiLm2EEixEm, i64 1940}
!340 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!341 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 67024124}
!342 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 10239256}
!343 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 10239256}
!344 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!345 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!346 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!347 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20504886}
!348 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 20504886}
!349 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, i64 20504883}
!350 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 61514649}
!351 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, i64 20504883}
!352 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_, i64 77263380}
!353 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 10239255}
!354 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 10239255}
!355 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 10239255}
!356 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 10239255}
!357 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 10239255}
!358 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20478510}
!359 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20478510}
!360 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 20478510}
!361 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 10239255}
!362 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 20504884}
!363 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 41009765}
!364 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!365 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 10252441}
!366 = !{ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20504882}
!367 = !{ptr @_ZN9FastBoard13fast_in_atariEi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 29487578136}
!368 = !{ptr @_ZN9FastBoard8in_atariEi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 705640007}
!369 = !{ptr @_ZN9FastBoard8in_atariEi, ptr @_ZN9FastBoard16count_plibertiesEi, i64 422882331}
!370 = !{ptr @_ZN9FastBoard8in_atariEi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 9048245507}
!371 = !{ptr @_ZN9FastBoard8in_atariEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 9048245507}
!372 = !{ptr @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 2230374454}
!373 = !{ptr @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 2511102646}
!374 = !{ptr @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 2181521033}
!375 = !{ptr @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard8in_atariEi, i64 82558465}
!376 = !{ptr @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm24EEixEm, i64 82558465}
!377 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN9FastBoard16count_plibertiesEi, i64 4213754285}
!378 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN9FastBoard15kill_or_connectEii, i64 2679070596}
!379 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN9FastBoard16count_neighboursEii, i64 1205724373}
!380 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN5boost5arrayIiLm3EEixEm, i64 1533516387}
!381 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 2984383519}
!382 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN9FastBoard10get_squareEi, i64 5579666922}
!383 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 1268273146}
!384 = !{ptr @_ZN9FastBoard10self_atariEii, ptr @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi, i64 299563162}
!385 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 3141361518}
!386 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 3141361518}
!387 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 1632407954}
!388 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard8in_atariEi, i64 200199208}
!389 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard10self_atariEii, i64 200199208}
!390 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm24EEixEm, i64 110317373}
!391 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard15kill_neighboursEiRN5boost5arrayIiLm24EEERi, i64 200199208}
!392 = !{ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, i64 65102887}
!393 = !{ptr @_ZN9FastBoard13get_extra_dirEi, ptr @_ZN5boost5arrayIiLm8EEixEm, i64 7844141798}
!394 = !{ptr @_ZN9FastBoard15kill_or_connectEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 8274799620}
!395 = !{ptr @_ZN9FastBoard15kill_or_connectEii, ptr @_ZN9FastBoard10get_squareEi, i64 8274799620}
!396 = !{ptr @_ZN9FastBoard15kill_or_connectEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 16549599240}
!397 = !{ptr @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 2623107590}
!398 = !{ptr @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi, ptr @_ZN9FastBoard16count_plibertiesEi, i64 1163784108}
!399 = !{ptr @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 2331637446}
!400 = !{ptr @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi, ptr @_ZN5boost5arrayIiLm3EEixEm, i64 1355272846}
!401 = !{ptr @_ZN9FastBoard20add_string_libertiesILi3EEEviRN5boost5arrayIiXT_EEERi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 1130621781}
!402 = !{ptr @_ZN9FastBoard24get_pattern_fast_augmentEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 29487578136}
!403 = !{ptr @_ZN9FastBoard24get_pattern_fast_augmentEi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm, i64 58975156272}
!404 = !{ptr @_ZN9FastBoard24get_pattern_fast_augmentEi, ptr @_ZN9FastBoard13fast_in_atariEi, i64 14743789068}
!405 = !{ptr @_ZN9FastBoard24get_pattern_fast_augmentEi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 29487578136}
!406 = !{ptr @_ZN9FastBoard25get_pattern3_augment_specEiib, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 16777216}
!407 = !{ptr @_ZN9FastBoard25get_pattern3_augment_specEiib, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EEixEm, i64 167772146}
!408 = !{ptr @_ZN9FastBoard25get_pattern3_augment_specEiib, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 75497472}
!409 = !{ptr @_ZN9FastBoard25get_pattern3_augment_specEiib, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm8EE4sizeEv, i64 9437177}
!410 = !{ptr @_ZN9FastBoard25get_pattern3_augment_specEiib, ptr @_ZNK5boost5arrayIN9FastBoard8square_tELm4EEixEm, i64 8388601}
!411 = !{ptr @_ZN9FastBoard25get_pattern3_augment_specEiib, ptr @_ZSt3minIiERKT_S2_S2_, i64 14680064}
!412 = !{ptr @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm8EEixEm, i64 6282723048}
!413 = !{ptr @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 6282723048}
!414 = !{ptr @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard10self_atariEii, i64 1962117952}
!415 = !{ptr @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm24EEixEm, i64 1417236006}
!416 = !{ptr @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 850200955}
!417 = !{ptr @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi, ptr @_ZNSt6vectorIiSaIiEE5clearEv, i64 785340381}
!418 = !{ptr @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi, ptr @_ZNSt6vectorIiSaIiEEixEm, i64 64860574}
!419 = !{ptr @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi, i64 64860574}
!420 = !{ptr @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 215800401}
!421 = !{ptr @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN9FastBoard16count_neighboursEii, i64 63774751}
!422 = !{ptr @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 150939828}
!423 = !{ptr @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayItLm442EEixEm, i64 147085236}
!424 = !{ptr @_ZN9FastBoard11try_captureEiiRN5boost5arrayIiLm24EEERi, ptr @_ZN5boost5arrayIiLm24EEixEm, i64 62102317}
!425 = !{ptr @_ZNSt6vectorIiSaIiEE5clearEv, ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, i64 785340381}
!426 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 60083239}
!427 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 60083239}
!428 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @__clang_call_terminate, i64 57}
!429 = !{ptr @_ZN9FastBoard18minimum_elib_countEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 97283941}
!430 = !{ptr @_ZN9FastBoard18minimum_elib_countEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 97283941}
!431 = !{ptr @_ZN9FastBoard18minimum_elib_countEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 31360996}
!432 = !{ptr @_ZN9FastBoard15nbr_criticalityEii, ptr @_ZN5boost5arrayIiLm4EEixEm, i64 25151055041}
!433 = !{ptr @_ZN9FastBoard15nbr_criticalityEii, ptr @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, i64 1634510143}
!434 = !{ptr @_ZN9FastBoard15nbr_criticalityEii, ptr @_ZN5boost5arrayItLm442EEixEm, i64 13076081144}
!435 = !{ptr @_ZN9FastBoard15nbr_criticalityEii, ptr @_ZN5boost5arrayIN9FastBoard8square_tELm441EEixEm, i64 8805953611}
!436 = !{ptr @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, ptr @_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_, i64 4178409236}
!437 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, i64 126015}
!438 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, i64 126015}
!439 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, i64 126015}
!440 = !{ptr @_ZNSt6vectorIiSaIiEEC2EOS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, i64 1381009}
!441 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backEOi, ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, i64 170411}
!442 = !{ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2IPivEERKNS0_IT_S5_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 201906}
!443 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EOS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, i64 1381009}
!444 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, ptr @_ZNSaIiEC2ERKS_, i64 1381009}
!445 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2EOS2_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2EOS2_, i64 1381009}
!446 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 157224}
!447 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 13187}
!448 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 13187}
!449 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE4backEv, i64 170411}
!450 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, i64 170411}
!451 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 13186}
!452 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 13186}
!453 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 13186}
!454 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 13186}
!455 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 13186}
!456 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 26372}
!457 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 26372}
!458 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 26372}
!459 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 13186}
!460 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 170411}
!461 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, i64 170411}
!462 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, i64 170411}
!463 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 170411}
!464 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!465 = !{!"function_entry_count", i64 1204288380}
!466 = !{!467, !471, i64 8048}
!467 = !{!"_ZTS9FastBoard", !468, i64 0, !468, i64 882, !471, i64 1764, !471, i64 1768, !471, i64 1772, !472, i64 1776, !473, i64 3540, !473, i64 4424, !473, i64 5308, !473, i64 6192, !468, i64 7076, !474, i64 7960, !475, i64 7976, !476, i64 8008, !476, i64 8016, !477, i64 8024, !471, i64 8048}
!468 = !{!"_ZTSN5boost5arrayItLm441EEE", !469, i64 0}
!469 = !{!"omnipotent char", !470, i64 0}
!470 = !{!"Simple C++ TBAA"}
!471 = !{!"int", !469, i64 0}
!472 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !469, i64 0}
!473 = !{!"_ZTSN5boost5arrayItLm442EEE", !469, i64 0}
!474 = !{!"_ZTSN5boost5arrayIiLm4EEE", !469, i64 0}
!475 = !{!"_ZTSN5boost5arrayIiLm8EEE", !469, i64 0}
!476 = !{!"_ZTSN5boost5arrayIiLm2EEE", !469, i64 0}
!477 = !{!"_ZTSSt6vectorIiSaIiEE", !478, i64 0}
!478 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !479, i64 0}
!479 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !480, i64 0}
!480 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !481, i64 0, !481, i64 8, !481, i64 16}
!481 = !{!"any pointer", !469, i64 0}
!482 = !{!"function_entry_count", i64 1198002857}
!483 = !{!"function_entry_count", i64 15649259044}
!484 = !{!485, !485, i64 0}
!485 = !{!"_ZTSN9FastBoard8square_tE", !469, i64 0}
!486 = !{!"function_entry_count", i64 88073131441}
!487 = !{!"function_entry_count", i64 8388690}
!488 = !{!"function_entry_count", i64 440665}
!489 = !{!"function_entry_count", i64 0}
!490 = !{!"function_entry_count", i64 30}
!491 = !{!467, !471, i64 1772}
!492 = !{!467, !471, i64 1768}
!493 = !{!471, !471, i64 0}
!494 = !{!467, !471, i64 1764}
!495 = !{!"branch_weights", i32 247, i32 1}
!496 = !{!497, !497, i64 0}
!497 = !{!"short", !469, i64 0}
!498 = !{!"branch_weights", i32 71553, i32 247}
!499 = distinct !{!499, !500}
!500 = !{!"llvm.loop.mustprogress"}
!501 = !{!"branch_weights", i32 247, i32 3233}
!502 = distinct !{!502, !500}
!503 = !{!"branch_weights", i32 5816385, i32 41787935}
!504 = !{!"branch_weights", i32 434, i32 6685}
!505 = distinct !{!505, !500}
!506 = !{!"function_entry_count", i64 3086438695}
!507 = !{!"function_entry_count", i64 99995171483}
!508 = !{!"function_entry_count", i64 14126865086}
!509 = !{!"function_entry_count", i64 32030604394}
!510 = !{!"function_entry_count", i64 115183010216}
!511 = !{!"function_entry_count", i64 12533678}
!512 = !{i32 0, i32 8}
!513 = !{!"branch_weights", i32 1313298, i32 11220382}
!514 = !{!"branch_weights", i32 943300, i32 2286720}
!515 = !{!"branch_weights", i32 839620, i32 103681}
!516 = !{!"branch_weights", i32 100494, i32 2186227}
!517 = !{!"branch_weights", i32 373186, i32 2856833}
!518 = distinct !{!518, !500}
!519 = !{!"branch_weights", i32 323067, i32 50120}
!520 = !{!"branch_weights", i32 175543518, i32 -301664341}
!521 = !{!"branch_weights", i32 62857, i32 1}
!522 = !{!"branch_weights", i32 1, i32 1429885}
!523 = !{!"branch_weights", i32 373186, i32 1119555}
!524 = distinct !{!524, !500}
!525 = !{!"branch_weights", i32 50120, i32 1}
!526 = !{!"function_entry_count", i64 6536823190}
!527 = !{!"function_entry_count", i64 823007483}
!528 = !{!"branch_weights", i32 -1957235043, i32 1}
!529 = !{!"branch_weights", i32 -1957235043, i32 1439226632}
!530 = distinct !{!530, !500}
!531 = !{!"branch_weights", i32 954297680, i32 -1472306090}
!532 = !{!"branch_weights", i32 823007484, i32 -1825944847}
!533 = distinct !{!533, !500}
!534 = !{!"function_entry_count", i64 378266527}
!535 = !{!"branch_weights", i32 1028813278, i32 1}
!536 = !{!"branch_weights", i32 1028813278, i32 644561439}
!537 = distinct !{!537, !500}
!538 = !{!"branch_weights", i32 484252831, i32 1189121887}
!539 = !{!"branch_weights", i32 378266528, i32 1134799581}
!540 = distinct !{!540, !500}
!541 = !{!"function_entry_count", i64 7806322315}
!542 = !{!"function_entry_count", i64 3424467921}
!543 = !{!"branch_weights", i32 2019026874, i32 1405441049}
!544 = !{!"branch_weights", i32 13379526, i32 1392061524}
!545 = !{!"branch_weights", i32 9314342, i32 1382747183}
!546 = !{!"branch_weights", i32 4980529, i32 1377766655}
!547 = !{!"function_entry_count", i64 9192537479}
!548 = !{!"function_entry_count", i64 194175802}
!549 = !{!"branch_weights", i32 194175803, i32 175948186}
!550 = distinct !{!550, !500}
!551 = !{!"function_entry_count", i64 63004}
!552 = !{!553, !553, i64 0}
!553 = !{!"bool", !469, i64 0}
!554 = !{!"branch_weights", i32 129359, i32 1}
!555 = !{!"branch_weights", i32 1164231, i32 1}
!556 = !{!"branch_weights", i32 1034873, i32 129359}
!557 = distinct !{!557, !500}
!558 = !{!"branch_weights", i32 4573608, i32 5904473}
!559 = !{!"branch_weights", i32 2088761, i32 16205669}
!560 = !{!"branch_weights", i32 4573608, i32 13720821}
!561 = distinct !{!561, !500}
!562 = !{!"branch_weights", i32 1322830, i32 4581644}
!563 = !{!"branch_weights", i32 819899, i32 502932}
!564 = !{!"branch_weights", i32 116751, i32 3162843}
!565 = !{!"branch_weights", i32 819899, i32 2459694}
!566 = distinct !{!566, !500}
!567 = !{!"branch_weights", i32 9313849, i32 1164231}
!568 = distinct !{!568, !500}
!569 = !{!"branch_weights", i32 66356, i32 63005}
!570 = distinct !{!570, !500}
!571 = !{!"function_entry_count", i64 126015}
!572 = !{!"function_entry_count", i64 14973351}
!573 = !{!574, !481, i64 0}
!574 = !{!"_ZTSSt18_Bit_iterator_base", !481, i64 0, !471, i64 8}
!575 = !{!"function_entry_count", i64 129359}
!576 = !{!"branch_weights", i32 1, i32 129360}
!577 = !{!"function_entry_count", i64 14717977}
!578 = !{!"function_entry_count", i64 14152662}
!579 = !{!580, !581, i64 8}
!580 = !{!"_ZTSSt14_Bit_reference", !481, i64 0, !581, i64 8}
!581 = !{!"long", !469, i64 0}
!582 = !{!"branch_weights", i32 8066000, i32 6086664}
!583 = !{!580, !481, i64 0}
!584 = !{!581, !581, i64 0}
!585 = !{!"function_entry_count", i64 33058621}
!586 = !{!"branch_weights", i32 1, i32 126016}
!587 = !{!588, !481, i64 32}
!588 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !589, i64 0, !589, i64 16, !481, i64 32}
!589 = !{!"_ZTSSt13_Bit_iterator", !574, i64 0}
!590 = !{!"function_entry_count", i64 504060}
!591 = !{!"function_entry_count", i64 17543811}
!592 = !{!574, !471, i64 8}
!593 = !{!"function_entry_count", i64 252030}
!594 = !{!"function_entry_count", i64 15228725}
!595 = !{!"function_entry_count", i64 14843992}
!596 = !{!"branch_weights", i32 1, i32 2000}
!597 = !{!"branch_weights", i32 1, i32 14843993}
!598 = !{!"function_entry_count", i64 381389}
!599 = !{!"branch_weights", i32 126016, i32 1}
!600 = !{i8 0, i8 2}
!601 = !{}
!602 = !{!"function_entry_count", i64 388077}
!603 = !{!"function_entry_count", i64 905513}
!604 = !{!"function_entry_count", i64 646795}
!605 = !{!"function_entry_count", i64 1164231}
!606 = !{!481, !481, i64 0}
!607 = !{!"function_entry_count", i64 258718}
!608 = !{!"branch_weights", i32 7244105, i32 129359}
!609 = distinct !{!609, !500}
!610 = !{!"function_entry_count", i64 25119843}
!611 = !{!"function_entry_count", i64 22091440}
!612 = !{!"function_entry_count", i64 24987133}
!613 = !{!"function_entry_count", i64 7373463}
!614 = !{!"function_entry_count", i64 47211283}
!615 = !{!"function_entry_count", i64 32360596}
!616 = !{!"branch_weights", i32 129413, i32 32231185}
!617 = !{!"branch_weights", i32 129360, i32 1}
!618 = !{!"branch_weights", i32 63004, i32 1}
!619 = !{!"branch_weights", i32 66356, i32 8806836}
!620 = !{!"branch_weights", i32 8810187, i32 63004}
!621 = distinct !{!621, !500}
!622 = !{!"function_entry_count", i64 8936194}
!623 = !{!"branch_weights", i32 3704614, i32 5231582}
!624 = !{!"function_entry_count", i64 31495}
!625 = !{!"function_entry_count", i64 31502}
!626 = !{!"branch_weights", i32 31502, i32 1}
!627 = !{!"branch_weights", i32 283518, i32 1}
!628 = !{!"branch_weights", i32 252017, i32 31502}
!629 = distinct !{!629, !500}
!630 = !{!"branch_weights", i32 1249995, i32 1301669}
!631 = !{!"branch_weights", i32 105196, i32 1144800}
!632 = !{!"branch_weights", i32 1406864, i32 1}
!633 = !{!"branch_weights", i32 105196, i32 1301669}
!634 = !{!"branch_weights", i32 2268145, i32 283518}
!635 = distinct !{!635, !500}
!636 = !{!"function_entry_count", i64 801480813}
!637 = !{!"function_entry_count", i64 6098317}
!638 = !{!"branch_weights", i32 6098317, i32 1}
!639 = !{!"branch_weights", i32 80526949, i32 123858626}
!640 = !{!"branch_weights", i32 6098317, i32 198287257}
!641 = distinct !{!641, !500}
!642 = distinct !{!642, !500}
!643 = distinct !{!643, !500}
!644 = !{!"function_entry_count", i64 7788864}
!645 = !{!480, !481, i64 0}
!646 = !{!480, !481, i64 8}
!647 = !{!"function_entry_count", i64 899000483}
!648 = !{!"function_entry_count", i64 28293760}
!649 = !{!"function_entry_count", i64 7788871}
!650 = !{!"function_entry_count", i64 17161144}
!651 = !{!"function_entry_count", i64 7789311}
!652 = !{!"function_entry_count", i64 97749716}
!653 = !{!"function_entry_count", i64 9372256}
!654 = !{!480, !481, i64 16}
!655 = !{!"function_entry_count", i64 16958771}
!656 = !{!"function_entry_count", i64 7788881}
!657 = !{!"function_entry_count", i64 7991268}
!658 = !{!"function_entry_count", i64 18041313}
!659 = !{!"branch_weights", i32 7788865, i32 10252450}
!660 = !{!"function_entry_count", i64 10252449}
!661 = !{!"function_entry_count", i64 30757342}
!662 = !{!"function_entry_count", i64 15578622}
!663 = !{!"function_entry_count", i64 69303513}
!664 = !{!"branch_weights", i32 7789312, i32 1}
!665 = !{!"function_entry_count", i64 28111432}
!666 = !{!667, !481, i64 0}
!667 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !481, i64 0}
!668 = !{!"function_entry_count", i64 19624698}
!669 = !{!"branch_weights", i32 9372251, i32 10252449}
!670 = !{!"function_entry_count", i64 10252448}
!671 = !{!"function_entry_count", i64 69455494}
!672 = distinct !{!672, !500}
!673 = distinct !{!673, !500}
!674 = distinct !{!674, !500}
!675 = distinct !{!675, !500}
!676 = distinct !{!676, !500}
!677 = distinct !{!677, !500}
!678 = distinct !{!678, !500}
!679 = distinct !{!679, !500}
!680 = distinct !{!680, !500}
!681 = !{!"function_entry_count", i64 202374}
!682 = !{!"function_entry_count", i64 7}
!683 = !{!"function_entry_count", i64 643347597}
!684 = !{!"function_entry_count", i64 447}
!685 = !{!"branch_weights", i32 1, i32 448}
!686 = !{!"branch_weights", i32 1, i32 8}
!687 = !{!"function_entry_count", i64 20504893}
!688 = !{!"function_entry_count", i64 46063954}
!689 = !{!"branch_weights", i32 1, i32 46063955}
!690 = !{!"function_entry_count", i64 8}
!691 = !{!"branch_weights", i32 1, i32 9}
!692 = !{!"function_entry_count", i64 10}
!693 = !{!"function_entry_count", i64 985}
!694 = !{!"branch_weights", i32 1, i32 985}
!695 = !{!"branch_weights", i32 985, i32 433393}
!696 = distinct !{!696, !500}
!697 = !{!"function_entry_count", i64 10455771}
!698 = !{!"function_entry_count", i64 22957086}
!699 = !{!"function_entry_count", i64 894}
!700 = !{!701, !481, i64 0}
!701 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !481, i64 0}
!702 = !{!"function_entry_count", i64 33583715}
!703 = !{!"function_entry_count", i64 53747328}
!704 = distinct !{!704, !500}
!705 = distinct !{!705, !500}
!706 = distinct !{!706, !500}
!707 = distinct !{!707, !500}
!708 = !{!"function_entry_count", i64 970}
!709 = !{!"branch_weights", i32 970, i32 1}
!710 = !{!"branch_weights", i32 -2147483648, i32 0}
!711 = !{!"branch_weights", i32 7761, i32 7031}
!712 = !{!"branch_weights", i32 970, i32 13821}
!713 = distinct !{!713, !500}
!714 = !{!"branch_weights", i32 62, i32 14730}
!715 = !{!"branch_weights", i32 13821, i32 970}
!716 = distinct !{!716, !500}
!717 = !{!"branch_weights", i32 55836, i32 192416}
!718 = !{!"branch_weights", i32 56625, i32 135792}
!719 = !{!"branch_weights", i32 3405, i32 132388}
!720 = !{!"branch_weights", i32 960, i32 247292}
!721 = !{!"branch_weights", i32 13067864, i32 -713368657}
!722 = !{!"branch_weights", i32 14790, i32 233461}
!723 = distinct !{!723, !500}
!724 = distinct !{!724, !500}
!725 = !{!"function_entry_count", i64 135791}
!726 = distinct !{!726, !500}
!727 = distinct !{!727, !500}
!728 = distinct !{!728, !500}
!729 = distinct !{!729, !500}
!730 = distinct !{!730, !500}
!731 = distinct !{!731, !500}
!732 = !{!"function_entry_count", i64 793626358}
!733 = !{!"branch_weights", i32 793626359, i32 606638875}
!734 = distinct !{!734, !500}
!735 = !{!"branch_weights", i32 612796164, i32 -2107232994}
!736 = !{!"branch_weights", i32 723674648, i32 -1087583372}
!737 = distinct !{!737, !500}
!738 = !{!"branch_weights", i32 700132617, i32 2100397848}
!739 = distinct !{!739, !500}
!740 = !{!"function_entry_count", i64 34294662}
!741 = !{!"branch_weights", i32 21910445, i32 12384219}
!742 = !{!"branch_weights", i32 39323963, i32 97854687}
!743 = !{!"branch_weights", i32 34294663, i32 102883986}
!744 = distinct !{!744, !500}
!745 = !{!"function_entry_count", i64 791662684}
!746 = !{!"branch_weights", i32 757368023, i32 34294663}
!747 = !{!"branch_weights", i32 11315620, i32 746052404}
!748 = !{!"branch_weights", i32 1165841211, i32 1863630879}
!749 = !{!"branch_weights", i32 917218410, i32 946412470}
!750 = !{!"branch_weights", i32 143536222, i32 773682189}
!751 = !{!"branch_weights", i32 946412470, i32 1}
!752 = !{!"branch_weights", i32 175501310, i32 770911161}
!753 = !{!"branch_weights", i32 450511523, i32 320399639}
!754 = !{!"branch_weights", i32 757368023, i32 -2022863230}
!755 = distinct !{!755, !500}
!756 = !{!"function_entry_count", i64 4945435260}
!757 = !{!"branch_weights", i32 -802370309, i32 1452838275}
!758 = !{!"branch_weights", i32 976063088, i32 476775188}
!759 = !{!"branch_weights", i32 36460336, i32 939602753}
!760 = !{!"branch_weights", i32 445583203, i32 31191986}
!761 = distinct !{!761, !500}
!762 = !{!"function_entry_count", i64 4741049687}
!763 = !{!"function_entry_count", i64 40412}
!764 = !{!"branch_weights", i32 75045214, i32 1479479296}
!765 = !{!"branch_weights", i32 27235, i32 11230}
!766 = !{!"branch_weights", i32 33948, i32 -1990033888}
!767 = !{!"branch_weights", i32 135791, i32 135792}
!768 = distinct !{!768, !500}
!769 = !{!"branch_weights", i32 271583, i32 543164}
!770 = distinct !{!770, !500}
!771 = !{!"function_entry_count", i64 1940}
!772 = distinct !{!772, !500}
!773 = !{!"function_entry_count", i64 202367}
!774 = !{!"function_entry_count", i64 77263380}
!775 = !{!"branch_weights", i32 10239256, i32 67024126}
!776 = !{!"function_entry_count", i64 20504886}
!777 = !{!"function_entry_count", i64 20504883}
!778 = !{!"branch_weights", i32 4082007, i32 16422878}
!779 = !{!"function_entry_count", i64 10239255}
!780 = !{!"function_entry_count", i64 10252442}
!781 = !{!"branch_weights", i32 1, i32 10252443}
!782 = !{!"function_entry_count", i64 10252441}
!783 = !{!"function_entry_count", i64 23031751}
!784 = !{!"branch_weights", i32 6217633, i32 16814120}
!785 = distinct !{!785, !500}
!786 = !{!"function_entry_count", i64 14743789068}
!787 = !{!"function_entry_count", i64 282757674}
!788 = !{!"branch_weights", i32 1, i32 282757675}
!789 = !{!"branch_weights", i32 140124642, i32 282757675}
!790 = !{!"branch_weights", i32 1, i32 706535724}
!791 = distinct !{!791, !500}
!792 = !{!"branch_weights", i32 1, i32 140124642}
!793 = distinct !{!793, !500}
!794 = !{!"function_entry_count", i64 200199208}
!795 = !{!"branch_weights", i32 200199209, i32 307344606}
!796 = distinct !{!796, !500}
!797 = !{!"branch_weights", i32 1001779421, i32 1028395833}
!798 = !{!"branch_weights", i32 456804003, i32 -1049384605}
!799 = !{!"branch_weights", i32 68787323, i32 54813179}
!800 = !{!"branch_weights", i32 866185051, i32 1281298597}
!801 = !{!"branch_weights", i32 41042036, i32 27745288}
!802 = !{!"branch_weights", i32 68787323, i32 0}
!803 = distinct !{!803, !500}
!804 = !{!"branch_weights", i32 507543814, i32 1522631439}
!805 = distinct !{!805, !500}
!806 = !{!"function_entry_count", i64 4996717050}
!807 = !{i32 0, i32 65536}
!808 = distinct !{!808, !500}
!809 = !{!"function_entry_count", i64 4213754285}
!810 = !{!"branch_weights", i32 1534683689, i32 -1615896698}
!811 = !{!"branch_weights", i32 1473346225, i32 1205724374}
!812 = !{!"branch_weights", i32 462649129, i32 743075246}
!813 = !{!"branch_weights", i32 378588163, i32 -1769798234}
!814 = !{!"branch_weights", i32 366303149, i32 1}
!815 = !{!"branch_weights", i32 61318275, i32 366303149}
!816 = distinct !{!816, !500}
!817 = !{!"branch_weights", i32 12285014, i32 415336411}
!818 = !{!"branch_weights", i32 215439762, i32 1932043886}
!819 = !{!"branch_weights", i32 617004700, i32 1908164363}
!820 = !{!"branch_weights", i32 291470145, i32 325534556}
!821 = !{!"branch_weights", i32 52253298, i32 239216848}
!822 = !{!"branch_weights", i32 654073701, i32 -2045283773}
!823 = distinct !{!823, !500}
!824 = !{!"function_entry_count", i64 785340381}
!825 = !{!"branch_weights", i32 816203979, i32 -1969809749}
!826 = !{!"branch_weights", i32 200199209, i32 616004771}
!827 = !{!"branch_weights", i32 89881836, i32 110317374}
!828 = !{!"branch_weights", i32 65102888, i32 135096322}
!829 = !{!"branch_weights", i32 785340382, i32 -1938946153}
!830 = distinct !{!830, !500}
!831 = !{!"function_entry_count", i64 7844141798}
!832 = !{!"function_entry_count", i64 2679070597}
!833 = !{!"branch_weights", i32 293659091, i32 -814700097}
!834 = !{!"branch_weights", i32 181216313, i32 406101870}
!835 = !{!"branch_weights", i32 398651554, i32 1748832094}
!836 = !{!"branch_weights", i32 602862187, i32 -1123903193}
!837 = distinct !{!837, !500}
!838 = !{!"function_entry_count", i64 2619501835}
!839 = !{!"function_entry_count", i64 291470144}
!840 = !{!"branch_weights", i32 563479651, i32 535833627}
!841 = !{!"branch_weights", i32 712334064, i32 1368747360}
!842 = !{!"branch_weights", i32 241317966, i32 1}
!843 = !{!"branch_weights", i32 636614335, i32 241317966}
!844 = distinct !{!844, !500}
!845 = !{!"branch_weights", i32 471016098, i32 406916204}
!846 = !{!"branch_weights", i32 52253298, i32 189064670}
!847 = !{!"branch_weights", i32 483580330, i32 1597501093}
!848 = distinct !{!848, !500}
!849 = !{!"branch_weights", i32 239216848, i32 807843133}
!850 = distinct !{!850, !500}
!851 = !{!"function_entry_count", i64 3685947267}
!852 = !{!"function_entry_count", i64 59142928432}
!853 = distinct !{!853, !500}
!854 = !{!"function_entry_count", i64 9437184}
!855 = !{!"function_entry_count", i64 8388608}
!856 = !{!"function_entry_count", i64 14680064}
!857 = !{!"branch_weights", i32 7313697, i32 7366369}
!858 = distinct !{!858, !500}
!859 = !{!"function_entry_count", i64 2097152}
!860 = !{!"branch_weights", i32 1048577, i32 1048577}
!861 = !{!"branch_weights", i32 1, i32 1048576}
!862 = !{!"branch_weights", i32 7340033, i32 1048576}
!863 = distinct !{!863, !500}
!864 = distinct !{!864, !500}
!865 = !{!866, !866, i64 0}
!866 = !{!"long long", !469, i64 0}
!867 = distinct !{!867, !500}
!868 = !{!"branch_weights", i32 981058977, i32 -2134664748}
!869 = !{!"branch_weights", i32 544881947, i32 1417236008}
!870 = !{!"branch_weights", i32 392670191, i32 -1546275962}
!871 = distinct !{!871, !500}
!872 = !{!"branch_weights", i32 720479808, i32 64860574}
!873 = !{!"branch_weights", i32 0, i32 64860574}
!874 = distinct !{!874, !500}
!875 = !{!"function_entry_count", i64 64860573}
!876 = !{!"branch_weights", i32 63774753, i32 1085822}
!877 = !{!"branch_weights", i32 186074, i32 63588680}
!878 = !{!"branch_weights", i32 72360245, i32 76152866}
!879 = !{!"branch_weights", i32 11256371, i32 61103875}
!880 = !{!"branch_weights", i32 2484806, i32 146028304}
!881 = distinct !{!881, !500}
!882 = !{!"branch_weights", i32 725257144, i32 60083239}
!883 = distinct !{!883, !500}
!884 = distinct !{!884, !500}
!885 = distinct !{!885, !500}
!886 = !{!887, !471, i64 0}
!887 = !{!"_ZTSSt4pairIiiE", !471, i64 0, !471, i64 4}
!888 = !{!887, !471, i64 4}
!889 = !{!"function_entry_count", i64 11016}
!890 = !{!"function_entry_count", i64 24320986}
!891 = !{!"branch_weights", i32 15680499, i32 81603447}
!892 = !{!"branch_weights", i32 24320987, i32 72962958}
!893 = distinct !{!893, !500}
!894 = !{!"function_entry_count", i64 1634510143}
!895 = !{!"branch_weights", i32 -2027054256, i32 -24839762}
!896 = !{!"branch_weights", i32 817255072, i32 -1843202081}
!897 = distinct !{!897, !500}
!898 = !{!"function_entry_count", i64 4178409236}
!899 = !{i32 0, i32 101}
!900 = distinct !{!900, !500}
!901 = distinct !{!901, !500}
!902 = distinct !{!902, !500}
!903 = distinct !{!903, !500}
!904 = distinct !{!904, !500}
!905 = distinct !{!905, !500}
!906 = distinct !{!906, !500}
!907 = distinct !{!907, !500}
!908 = distinct !{!908, !500}
!909 = distinct !{!909, !500}
!910 = distinct !{!910, !500}
!911 = distinct !{!911, !500}
!912 = distinct !{!912, !500}
!913 = !{i64 0, i64 8, !606}
!914 = distinct !{!914, !500}
!915 = !{!916, !481, i64 0}
!916 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKiEE", !481, i64 0}
!917 = !{!"function_entry_count", i64 170411}
!918 = distinct !{!918, !500}
!919 = distinct !{!919, !500}
!920 = !{!921, !481, i64 0}
!921 = !{!"_ZTSSt20back_insert_iteratorISt6vectorIiSaIiEEE", !481, i64 0}
!922 = distinct !{!922, !500}
!923 = distinct !{!923, !500}
!924 = distinct !{!924, !500}
!925 = distinct !{!925, !500}
!926 = distinct !{!926, !500}
!927 = !{!"function_entry_count", i64 1381009}
!928 = !{!"function_entry_count", i64 201906}
!929 = !{!"branch_weights", i32 13187, i32 157226}
!930 = !{!"function_entry_count", i64 13186}
!931 = distinct !{!931, !500}
!932 = !{i64 0, i64 65}
!933 = distinct !{!933, !500}
!934 = distinct !{!934, !500}
!935 = distinct !{!935, !500}
!936 = distinct !{!936, !500}
!937 = distinct !{!937, !500}
!938 = distinct !{!938, !500}
!939 = distinct !{!939, !500}
!940 = distinct !{!940, !500}
!941 = distinct !{!941, !500}
!942 = distinct !{!942, !500}
!943 = distinct !{!943, !500}
!944 = distinct !{!944, !500}
!945 = distinct !{!945, !500}
!946 = distinct !{!946, !500}
