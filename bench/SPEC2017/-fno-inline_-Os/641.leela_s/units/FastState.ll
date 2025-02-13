; ModuleID = 'FastState.cpp'
source_filename = "FastState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.boost::array.13" = type { [9 x i32] }
%"class.boost::array.14" = type { [5 x i64] }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%class.FullBoard = type { %class.FastBoard.base, i64, i64 }
%class.FastBoard.base = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32 }>
%"class.boost::array.0" = type { [441 x i32] }
%"class.boost::array.1" = type { [442 x i16] }
%"class.boost::array" = type { [441 x i16] }
%"class.boost::array.2" = type { [4 x i32] }
%"class.boost::array.3" = type { [8 x i32] }
%"class.boost::array.4" = type { [2 x i32] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.boost::array.5" = type { [24 x i32] }
%"class.boost::array.6" = type { [24 x %"struct.std::pair"] }
%"struct.std::pair" = type { i32, i32 }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.18" = type { %"struct.std::_Bvector_base" }
%"struct.std::_Bvector_base" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl" = type { %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" }
%"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data" = type { %"struct.std::_Bit_iterator", %"struct.std::_Bit_iterator", ptr }
%"struct.std::_Bit_iterator" = type { %"struct.std::_Bit_iterator_base.base", [4 x i8] }
%"struct.std::_Bit_iterator_base.base" = type <{ ptr, i32 }>
%"class.std::allocator" = type { i8 }
%"class.std::allocator.22" = type { i8 }
%class.Playout = type { i8, float, %"class.boost::array.25" }
%"class.boost::array.25" = type { [2 x %"class.std::bitset"] }
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [7 x i64] }
%"struct.std::_Bit_reference" = type { ptr, i64 }
%"class.std::allocator.19" = type { i8 }
%"struct.std::_Bit_iterator_base" = type <{ ptr, i32, [4 x i8] }>
%"class.__gnu_cxx::__normal_iterator.26" = type { ptr }

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE7reserveEm = comdat any

$_ZN5boost5arrayItLm441EEixEm = comdat any

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt6vectorIiSaIiEE9push_backEOi = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZNKSt6vectorIiSaIiEE8capacityEv = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$__clang_call_terminate = comdat any

$_ZNKSt15__new_allocatorIiE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_ = comdat any

$_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

$_ZNSt6vectorIiSaIiEE4backEv = comdat any

$_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZN5boost5arrayIiLm24EEixEm = comdat any

$_ZNK5boost5arrayIiLm9EEixEm = comdat any

$_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_ = comdat any

$_ZN5boost5arrayISt4pairIiiELm24EEixEm = comdat any

$_ZNSt4pairIiiEaSEOS0_ = comdat any

$_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_ = comdat any

$_ZN5boost5arrayIyLm5EEixEm = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZNSaIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIbED2Ev = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_ = comdat any

$_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_ = comdat any

$_ZNSt6vectorIbSaIbEE5beginEv = comdat any

$_ZNSt6vectorIbSaIbEE3endEv = comdat any

$_ZN9FastStateC2ERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZN9FastStateD2Ev = comdat any

$_ZNSt6vectorIbSaIbEEixEm = comdat any

$_ZNSt14_Bit_referenceaSEb = comdat any

$_ZNSt13_Bvector_baseISaIbEED2Ev = comdat any

$_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_ = comdat any

$_ZNSt6vectorIiSaIiEE21_M_default_initializeEm = comdat any

$_ZNSaIiEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIiEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm = comdat any

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

$_ZNSt15__new_allocatorIbEC2Ev = comdat any

$_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_ = comdat any

$_ZNSt13_Bvector_baseISaIbEEC2ERKS0_ = comdat any

$_ZNSt6vectorIbSaIbEE13_M_initializeEm = comdat any

$_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb = comdat any

$_ZNSaImEC2IbEERKSaIT_E = comdat any

$_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE = comdat any

$_ZNSt15__new_allocatorImEC2Ev = comdat any

$_ZNSaImEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorImEC2ERKS0_ = comdat any

$_ZNSt13_Bit_iteratorC2Ev = comdat any

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

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_ = comdat any

$_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_ = comdat any

$_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1St13_Bit_iteratorS_RKb = comdat any

$_ZSt14__fill_bvectorPmjjb = comdat any

$_ZN9FullBoardC2ERKS_ = comdat any

$_ZN9FastBoardC2ERKS_ = comdat any

$_ZNSt6vectorIiSaIiEEC2ERKS1_ = comdat any

$_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_ = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNKSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_ = comdat any

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

$_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_ = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZNKSt13_Bit_iteratorixEl = comdat any

$_ZNKSt13_Bit_iteratordeEv = comdat any

$_ZNSt14_Bit_referenceC2EPmm = comdat any

$_ZNKSt14_Bit_referencecvbEv = comdat any

$_ZNSt6vectorIiSaIiEE6resizeEm = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN9FastBoard8square_tEEvT_S9_RKT0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN9FastBoard8square_tEEvT_S9_RKT0_ = comdat any

$_ZSt9__fill_a1IPiSt6vectorIiSaIiEEN9FastBoard8square_tEEvN9__gnu_cxx17__normal_iteratorIT_T0_EESA_RKT1_ = comdat any

$_ZSt9__fill_a1IPiN9FastBoard8square_tEEN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_ = comdat any

@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@_ZZN9FastState16play_random_moveEiE9crit_mine = internal constant %"class.boost::array.13" { [9 x i32] [i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1] }, align 4
@_ZZN9FastState16play_random_moveEiE10crit_enemy = internal constant %"class.boost::array.13" { [9 x i32] [i32 1, i32 15, i32 12, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1] }, align 4
@_ZN7Zobrist12zobrist_passE = external global %"class.boost::array.14", align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"\0APasses: %d            Black (X) Prisoners: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Black (X) to move\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"White (O) to move\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"    White (O) Prisoners: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 !prof !301 {
  tail call void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1) #14
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store float %2, ptr %5, align 8, !tbaa !302
  %6 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  store i32 0, ptr %6, align 4, !tbaa !324
  %7 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  store i32 0, ptr %7, align 8, !tbaa !325
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState8set_komiEf(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, float noundef %1) local_unnamed_addr #2 align 2 !prof !326 {
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  store float %1, ptr %3, align 8, !tbaa !302
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !326 {
  tail call void @_ZN9FastState11reset_boardEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store i32 441, ptr %3, align 4, !tbaa !327
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 441, ptr %4, align 8, !tbaa !328
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState11reset_boardEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !326 {
  %2 = tail call noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #14
  tail call void @_ZN9FullBoard11reset_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %2) #14
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastState16play_random_moveEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !329 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !330
  %4 = tail call noundef i32 @_ZN9FastState16play_random_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %3) #14
  ret i32 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastState16play_random_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !329 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %"struct.std::pair", align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %"struct.std::pair", align 8
  %10 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 %1, ptr %10, align 8, !tbaa !330
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !331
  %11 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !327
  %13 = icmp sgt i32 %12, 0
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %12, %15
  %17 = select i1 %13, i1 %16, i1 false
  br i1 %17, label %18, label %46, !prof !332

18:                                               ; preds = %2
  %19 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %12) #14
  %20 = icmp eq i32 %1, 0
  %21 = zext i1 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %46, !prof !333

23:                                               ; preds = %18
  %24 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 8
  call void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(96) %24, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %25 = load i32, ptr %11, align 4, !tbaa !327
  call void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %25, ptr noundef nonnull align 4 dereferenceable(96) %24, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %26 = load i32, ptr %11, align 4, !tbaa !327
  call void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %26, ptr noundef nonnull align 4 dereferenceable(96) %24, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %27 = load i32, ptr %3, align 4, !tbaa !331
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %31, label %29, !prof !334

29:                                               ; preds = %23
  %30 = call noundef ptr @_ZN7Matcher11get_MatcherEv() #14
  br label %138

31:                                               ; preds = %23
  %32 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %42, %33 ]
  %35 = phi i32 [ %27, %31 ], [ %41, %33 ]
  %36 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %24, i64 noundef %34) #14
  %37 = load i32, ptr %36, align 4, !tbaa !331
  %38 = load i32, ptr %32, align 4, !tbaa !335
  %39 = icmp eq i32 %37, %38
  %40 = sext i1 %39 to i32
  %41 = add nsw i32 %35, %40
  %42 = add nuw nsw i64 %34, 1
  %43 = load i32, ptr %3, align 4, !tbaa !331
  %44 = sext i32 %43 to i64
  %45 = icmp slt i64 %42, %44
  br i1 %45, label %33, label %48, !prof !336, !llvm.loop !337

46:                                               ; preds = %18, %2
  %47 = tail call noundef ptr @_ZN7Matcher11get_MatcherEv() #14
  br label %138

48:                                               ; preds = %33
  %49 = icmp sgt i32 %41, 0
  %50 = call noundef ptr @_ZN7Matcher11get_MatcherEv() #14
  br i1 %49, label %51, label %138, !prof !339

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 0, ptr %4, align 4, !tbaa !331
  %52 = load i32, ptr %3, align 4, !tbaa !331
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56, !prof !340

54:                                               ; preds = %51
  %55 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  br label %65

56:                                               ; preds = %117, %51
  %57 = phi i32 [ 0, %51 ], [ %118, %117 ]
  %58 = call noundef ptr @_ZN6Random7get_RngEv() #14
  %59 = load i32, ptr %4, align 4, !tbaa !331
  %60 = trunc i32 %59 to i16
  %61 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %58, i16 noundef zeroext %60) #14
  %62 = icmp sgt i32 %57, 0
  br i1 %62, label %63, label %137, !prof !341

63:                                               ; preds = %56
  %64 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  br label %127

65:                                               ; preds = %54, %117
  %66 = phi i64 [ 0, %54 ], [ %119, %117 ]
  %67 = phi i32 [ 0, %54 ], [ %118, %117 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %68 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %24, i64 noundef %66) #14
  %69 = load i32, ptr %68, align 4, !tbaa !331
  store i32 %69, ptr %5, align 4, !tbaa !331
  %70 = load i32, ptr %55, align 4, !tbaa !335
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %117, label %72, !prof !342

72:                                               ; preds = %65
  %73 = call noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %69) #14
  %74 = call noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48) %50, i32 noundef %1, i32 noundef %73) #14
  %75 = load i32, ptr %5, align 4, !tbaa !331
  %76 = call i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %75) #14
  %77 = shl i64 %76, 32
  %78 = ashr exact i64 %77, 32
  %79 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm9EEixEm(ptr noundef nonnull align 4 dereferenceable(36) @_ZZN9FastState16play_random_moveEiE9crit_mine, i64 noundef %78) #14
  %80 = load i32, ptr %79, align 4, !tbaa !331
  %81 = mul nsw i32 %80, %74
  %82 = ashr i64 %76, 32
  %83 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm9EEixEm(ptr noundef nonnull align 4 dereferenceable(36) @_ZZN9FastState16play_random_moveEiE10crit_enemy, i64 noundef %82) #14
  %84 = load i32, ptr %83, align 4, !tbaa !331
  %85 = mul nsw i32 %81, %84
  %86 = load i32, ptr %11, align 4, !tbaa !327
  %87 = call noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0) #14
  %88 = add nsw i32 %87, %86
  %89 = load i32, ptr %5, align 4, !tbaa !331
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %103, label %91

91:                                               ; preds = %72, %95
  %92 = phi i32 [ %93, %95 ], [ 0, %72 ]
  %93 = add nuw nsw i32 %92, 1
  %94 = icmp eq i32 %93, 8
  br i1 %94, label %101, label %95, !prof !343, !llvm.loop !344

95:                                               ; preds = %91
  %96 = load i32, ptr %11, align 4, !tbaa !327
  %97 = call noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %93) #14
  %98 = add nsw i32 %97, %96
  %99 = load i32, ptr %5, align 4, !tbaa !331
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %91, !llvm.loop !344

101:                                              ; preds = %91, %95
  %102 = icmp ugt i32 %92, 6
  br label %103

103:                                              ; preds = %101, %72
  %104 = phi i1 [ false, %72 ], [ %102, %101 ]
  %105 = mul nsw i32 %85, 20
  %106 = select i1 %104, i32 %105, i32 %85, !prof !345
  %107 = icmp sgt i32 %106, 39
  br i1 %107, label %108, label %117, !prof !346

108:                                              ; preds = %103
  %109 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %110 = load i32, ptr %4, align 4, !tbaa !331
  %111 = add nsw i32 %110, %106
  store i32 %111, ptr %4, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %112 = call i64 @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_(ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  store i64 %112, ptr %6, align 8
  %113 = add nsw i32 %67, 1
  %114 = sext i32 %67 to i64
  %115 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %109, i64 noundef %114) #14
  %116 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %115, ptr noundef nonnull align 4 dereferenceable(8) %6) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %117

117:                                              ; preds = %103, %108, %65
  %118 = phi i32 [ %67, %65 ], [ %113, %108 ], [ %67, %103 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  %119 = add nuw nsw i64 %66, 1
  %120 = load i32, ptr %3, align 4, !tbaa !331
  %121 = sext i32 %120 to i64
  %122 = icmp slt i64 %119, %121
  br i1 %122, label %65, label %56, !prof !347, !llvm.loop !348

123:                                              ; preds = %127
  %124 = zext nneg i32 %57 to i64
  %125 = add nuw nsw i64 %128, 1
  %126 = icmp eq i64 %125, %124
  br i1 %126, label %137, label %127, !prof !349, !llvm.loop !350

127:                                              ; preds = %63, %123
  %128 = phi i64 [ 0, %63 ], [ %125, %123 ]
  %129 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %64, i64 noundef %128) #14
  %130 = getelementptr inbounds %"struct.std::pair", ptr %129, i64 0, i32 1
  %131 = load i32, ptr %130, align 4, !tbaa !351
  %132 = icmp slt i32 %61, %131
  br i1 %132, label %133, label %123, !prof !353

133:                                              ; preds = %127
  %134 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %64, i64 noundef %128) #14
  %135 = load i32, ptr %134, align 4, !tbaa !354
  %136 = call noundef i32 @_ZN9FastState14play_move_fastEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %135) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %199

137:                                              ; preds = %123, %56
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %138

138:                                              ; preds = %29, %137, %46, %48
  %139 = phi ptr [ %50, %137 ], [ %50, %48 ], [ %47, %46 ], [ %30, %29 ]
  %140 = phi i32 [ %57, %137 ], [ 0, %48 ], [ 0, %46 ], [ 0, %29 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #15
  store i32 0, ptr %7, align 4, !tbaa !331
  %141 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %142 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 9
  %143 = sext i32 %140 to i64
  br label %144

144:                                              ; preds = %157, %138
  %145 = phi i32 [ %158, %157 ], [ %140, %138 ]
  %146 = phi i64 [ %168, %157 ], [ %143, %138 ]
  %147 = phi i32 [ %171, %157 ], [ 4, %138 ]
  %148 = call noundef ptr @_ZN6Random7get_RngEv() #14
  %149 = load i32, ptr %141, align 4, !tbaa !355
  %150 = trunc i32 %149 to i16
  %151 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %148, i16 noundef zeroext %150) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  %152 = load i32, ptr %10, align 8, !tbaa !330
  %153 = call noundef i32 @_ZN9FastState15walk_empty_listEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %152, i32 noundef %151, i1 noundef zeroext true) #14
  store i32 %153, ptr %8, align 4, !tbaa !331
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %157, !prof !356

155:                                              ; preds = %144
  %156 = call noundef i32 @_ZN9FastState14play_move_fastEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef -1) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %197

157:                                              ; preds = %144
  %158 = add i32 %145, 1
  %159 = call noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %153) #14
  %160 = call noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48) %139, i32 noundef %1, i32 noundef %159) #14
  %161 = load i32, ptr %8, align 4, !tbaa !331
  %162 = call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %161) #14
  %163 = shl nsw i32 %160, 6
  %164 = select i1 %162, i32 %160, i32 %163, !prof !357
  %165 = load i32, ptr %7, align 4, !tbaa !331
  %166 = add nsw i32 %165, %164
  store i32 %166, ptr %7, align 4, !tbaa !331
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %167 = call i64 @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_(ptr noundef nonnull align 4 dereferenceable(4) %8, ptr noundef nonnull align 4 dereferenceable(4) %7) #14
  store i64 %167, ptr %9, align 8
  %168 = add nsw i64 %146, 1
  %169 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %142, i64 noundef %146) #14
  %170 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %169, ptr noundef nonnull align 4 dereferenceable(8) %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  %171 = add nsw i32 %147, -1
  %172 = icmp ugt i32 %147, 1
  br i1 %172, label %144, label %173, !prof !358, !llvm.loop !359

173:                                              ; preds = %157
  %174 = call noundef ptr @_ZN6Random7get_RngEv() #14
  %175 = load i32, ptr %7, align 4, !tbaa !331
  %176 = trunc i32 %175 to i16
  %177 = call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %174, i16 noundef zeroext %176) #14
  %178 = and i64 %146, 2147483648
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %195, !prof !360

180:                                              ; preds = %173
  %181 = zext i32 %158 to i64
  br label %185

182:                                              ; preds = %185
  %183 = add nuw nsw i64 %186, 1
  %184 = icmp eq i64 %183, %181
  br i1 %184, label %195, label %185, !prof !361, !llvm.loop !362

185:                                              ; preds = %180, %182
  %186 = phi i64 [ 0, %180 ], [ %183, %182 ]
  %187 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %142, i64 noundef %186) #14
  %188 = getelementptr inbounds %"struct.std::pair", ptr %187, i64 0, i32 1
  %189 = load i32, ptr %188, align 4, !tbaa !351
  %190 = icmp slt i32 %177, %189
  br i1 %190, label %191, label %182, !prof !363

191:                                              ; preds = %185
  %192 = call noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %142, i64 noundef %186) #14
  %193 = load i32, ptr %192, align 4, !tbaa !354
  %194 = call noundef i32 @_ZN9FastState14play_move_fastEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %193) #14
  br label %197

195:                                              ; preds = %182, %173
  %196 = call noundef i32 @_ZN9FastState14play_move_fastEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef -1) #14
  br label %197

197:                                              ; preds = %191, %155, %195
  %198 = phi i32 [ -1, %195 ], [ -1, %155 ], [ %193, %191 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #15
  br label %199

199:                                              ; preds = %133, %197
  %200 = phi i32 [ %198, %197 ], [ %135, %133 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret i32 %200
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState14generate_movesEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !326 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !355
  %8 = sext i32 %7 to i64
  invoke void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %8) #14
          to label %9 unwind label %15

9:                                                ; preds = %3
  %10 = load i32, ptr %6, align 4, !tbaa !355
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 4
  br label %17

14:                                               ; preds = %30, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 -1, ptr %5, align 4, !tbaa !331
  invoke void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %5) #14
          to label %35 unwind label %36

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %38

17:                                               ; preds = %12, %30
  %18 = phi i64 [ 0, %12 ], [ %31, %30 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %19 = call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %1, i64 noundef %18) #14
  %20 = load i16, ptr %19, align 2, !tbaa !364
  %21 = zext i16 %20 to i32
  store i32 %21, ptr %4, align 4, !tbaa !331
  %22 = load i32, ptr %13, align 4, !tbaa !335
  %23 = icmp eq i32 %22, %21
  br i1 %23, label %30, label %24

24:                                               ; preds = %17
  %25 = invoke noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %21, i32 noundef %2) #14
          to label %26 unwind label %28

26:                                               ; preds = %24
  br i1 %25, label %30, label %27

27:                                               ; preds = %26
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
          to label %30 unwind label %28

28:                                               ; preds = %27, %24
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %38

30:                                               ; preds = %27, %26, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  %31 = add nuw nsw i64 %18, 1
  %32 = load i32, ptr %6, align 4, !tbaa !355
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %17, label %14, !llvm.loop !366

35:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  ret void

36:                                               ; preds = %14
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %38

38:                                               ; preds = %36, %28, %15
  %39 = phi { ptr, i32 } [ %29, %28 ], [ %37, %36 ], [ %16, %15 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %39
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !367 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

6:                                                ; preds = %2
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %26

9:                                                ; preds = %6
  %10 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  %12 = load ptr, ptr %0, align 8, !tbaa !368
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !369
  %15 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %16 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %12, ptr noundef %14, ptr noundef %11, ptr noundef nonnull align 1 dereferenceable(1) %15) #16
  %17 = load ptr, ptr %0, align 8, !tbaa !368
  %18 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !370
  %20 = ptrtoint ptr %19 to i64
  %21 = ptrtoint ptr %17 to i64
  %22 = sub i64 %20, %21
  %23 = ashr exact i64 %22, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %17, i64 noundef %23) #14
  store ptr %11, ptr %0, align 8, !tbaa !368
  %24 = getelementptr inbounds i32, ptr %11, i64 %10
  store ptr %24, ptr %13, align 8, !tbaa !369
  %25 = getelementptr inbounds i32, ptr %11, i64 %1
  store ptr %25, ptr %18, align 8, !tbaa !370
  br label %26

26:                                               ; preds = %9, %6
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !371 {
  %3 = getelementptr inbounds [441 x i16], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !372 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !370
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !373

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #16
  %9 = load ptr, ptr %3, align 8, !tbaa !369
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !369
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #14
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE9push_backEOi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !374 {
  %3 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !375 {
  %2 = load ptr, ptr %0, align 8, !tbaa !368
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !367 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !367 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !376 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !377 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !378 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !379 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !370
  %4 = load ptr, ptr %0, align 8, !tbaa !368
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !380 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !369
  %4 = load ptr, ptr %0, align 8, !tbaa !368
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !381 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !382

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 !prof !383 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !384 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !385 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !386

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !387 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !388
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !388
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !388
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !390 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !387 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !391 {
  %3 = load i64, ptr %1, align 8, !tbaa !388
  %4 = load i64, ptr %0, align 8, !tbaa !388
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !392
  ret ptr %6
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !387 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !393 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !394 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !394 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !395

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #19
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !383 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !383 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !396

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !397 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !398 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !398 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !372 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !399 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.1) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !368
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #14
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !400
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #16
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %20 = load ptr, ptr %19, align 8, !tbaa !400
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #16
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !370
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #14
  store ptr %12, ptr %0, align 8, !tbaa !368
  store ptr %22, ptr %8, align 8, !tbaa !369
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !370
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !401 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !372 {
  %4 = load i32, ptr %2, align 4, !tbaa !331
  store i32 %4, ptr %1, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !402 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !388
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !403

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #17
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %13 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !388
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !388
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %17 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !403

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !403

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !404 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !400
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  %6 = load ptr, ptr %5, align 8, !tbaa !400
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !405 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !406 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !407 {
  %3 = load i64, ptr %0, align 8, !tbaa !388
  %4 = load i64, ptr %1, align 8, !tbaa !388
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !408
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !409 {
  %3 = load ptr, ptr %1, align 8, !tbaa !400
  store ptr %3, ptr %0, align 8, !tbaa !410
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat align 2 !prof !374 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !370
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !412

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %1) #16
  %9 = load ptr, ptr %3, align 8, !tbaa !369
  %10 = getelementptr inbounds i32, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !369
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  tail call void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 4 dereferenceable(4) %1) #14
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !374 {
  tail call void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat align 2 !prof !413 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str.1) #14
  %7 = load ptr, ptr %0, align 8, !tbaa !368
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !369
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %10 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  %12 = call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #14
  %13 = getelementptr inbounds i32, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 4 dereferenceable(4) %2) #16
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %15 = load ptr, ptr %14, align 8, !tbaa !400
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #16
  %18 = getelementptr inbounds i32, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %20 = load ptr, ptr %19, align 8, !tbaa !400
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %22 = call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #16
  %23 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !370
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 2
  call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #14
  store ptr %12, ptr %0, align 8, !tbaa !368
  store ptr %22, ptr %8, align 8, !tbaa !369
  %29 = getelementptr inbounds i32, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !370
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !374 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #16
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 !prof !374 {
  %4 = load i32, ptr %2, align 4, !tbaa !331
  store i32 %4, ptr %1, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !374 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %5 = load ptr, ptr %0, align 8, !tbaa !410
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !400
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !374 {
  %2 = load ptr, ptr %0, align 8, !tbaa !410
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !414 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !375 {
  %2 = load ptr, ptr %0, align 8, !tbaa !368
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !370
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
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
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !414 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !414 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN9FastState8try_moveEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 !prof !415 {
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %6 = load i32, ptr %5, align 4, !tbaa !335
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %16, label %8, !prof !416

8:                                                ; preds = %4
  %9 = tail call noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %2) #14
  br i1 %9, label %10, label %16, !prof !417

10:                                               ; preds = %8
  %11 = tail call noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16, !prof !418

13:                                               ; preds = %10
  br i1 %3, label %17, label %14, !prof !419

14:                                               ; preds = %13
  %15 = tail call noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %2) #14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %14, %8, %4
  br label %17

17:                                               ; preds = %13, %14, %16
  %18 = phi i1 [ false, %16 ], [ true, %14 ], [ true, %13 ]
  ret i1 %18
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard11no_eye_fillEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard15fast_ss_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard10self_atariEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastState15walk_empty_listEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 !prof !420 {
  %5 = tail call noundef ptr @_ZN6Random7get_RngEv() #14
  %6 = tail call noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12) %5, i16 noundef zeroext 2) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8, !prof !421

8:                                                ; preds = %4
  %9 = icmp slt i32 %2, 0
  br i1 %9, label %51, label %10, !prof !422

10:                                               ; preds = %8
  %11 = zext nneg i32 %2 to i64
  br label %45

12:                                               ; preds = %4
  %13 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %14 = load i32, ptr %13, align 4, !tbaa !355
  %15 = icmp sgt i32 %14, %2
  br i1 %15, label %16, label %23, !prof !423

16:                                               ; preds = %12
  %17 = sext i32 %2 to i64
  br label %27

18:                                               ; preds = %27
  %19 = add nsw i64 %28, 1
  %20 = load i32, ptr %13, align 4, !tbaa !355
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %27, label %23, !prof !424, !llvm.loop !425

23:                                               ; preds = %18, %12
  %24 = icmp sgt i32 %2, 0
  br i1 %24, label %25, label %65, !prof !426

25:                                               ; preds = %23
  %26 = zext nneg i32 %2 to i64
  br label %36

27:                                               ; preds = %16, %18
  %28 = phi i64 [ %17, %16 ], [ %19, %18 ]
  %29 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %28) #14
  %30 = load i16, ptr %29, align 2, !tbaa !364
  %31 = zext i16 %30 to i32
  %32 = tail call noundef zeroext i1 @_ZN9FastState8try_moveEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %31, i1 noundef zeroext %3) #14
  br i1 %32, label %65, label %18

33:                                               ; preds = %36
  %34 = add nuw nsw i64 %37, 1
  %35 = icmp eq i64 %34, %26
  br i1 %35, label %65, label %36, !prof !427, !llvm.loop !428

36:                                               ; preds = %25, %33
  %37 = phi i64 [ 0, %25 ], [ %34, %33 ]
  %38 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %37) #14
  %39 = load i16, ptr %38, align 2, !tbaa !364
  %40 = zext i16 %39 to i32
  %41 = tail call noundef zeroext i1 @_ZN9FastState8try_moveEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %40, i1 noundef zeroext %3) #14
  br i1 %41, label %65, label %33

42:                                               ; preds = %45
  %43 = add nsw i64 %46, -1
  %44 = icmp slt i64 %46, 1
  br i1 %44, label %51, label %45, !prof !429, !llvm.loop !430

45:                                               ; preds = %10, %42
  %46 = phi i64 [ %11, %10 ], [ %43, %42 ]
  %47 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %46) #14
  %48 = load i16, ptr %47, align 2, !tbaa !364
  %49 = zext i16 %48 to i32
  %50 = tail call noundef zeroext i1 @_ZN9FastState8try_moveEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %49, i1 noundef zeroext %3) #14
  br i1 %50, label %65, label %42

51:                                               ; preds = %42, %8
  %52 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 2
  %53 = load i32, ptr %52, align 4, !tbaa !355
  %54 = sext i32 %53 to i64
  %55 = sext i32 %2 to i64
  br label %56

56:                                               ; preds = %60, %51
  %57 = phi i64 [ %58, %60 ], [ %54, %51 ]
  %58 = add nsw i64 %57, -1
  %59 = icmp sgt i64 %58, %55
  br i1 %59, label %60, label %65, !prof !431

60:                                               ; preds = %56
  %61 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZN5boost5arrayItLm441EEixEm(ptr noundef nonnull align 2 dereferenceable(882) %0, i64 noundef %58) #14
  %62 = load i16, ptr %61, align 2, !tbaa !364
  %63 = zext i16 %62 to i32
  %64 = tail call noundef zeroext i1 @_ZN9FastState8try_moveEiib(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %63, i1 noundef zeroext %3) #14
  br i1 %64, label %65, label %56, !llvm.loop !432

65:                                               ; preds = %45, %60, %56, %27, %33, %36, %23
  %66 = phi i32 [ -1, %23 ], [ -1, %33 ], [ %40, %36 ], [ %31, %27 ], [ %63, %60 ], [ -1, %56 ], [ %49, %45 ]
  ret i32 %66
}

; Function Attrs: optsize
declare noundef ptr @_ZN6Random7get_RngEv() local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN6Random7randintEt(ptr noundef nonnull align 4 dereferenceable(12), i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, ptr noundef nonnull align 4 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(96), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZN5boost5arrayIiLm24EEixEm(ptr noundef nonnull align 4 dereferenceable(96) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !433 {
  %3 = getelementptr inbounds [24 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN7Matcher11get_MatcherEv() local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard24get_pattern_fast_augmentEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN7Matcher7matchesEii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @_ZN9FastBoard15nbr_criticalityEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNK5boost5arrayIiLm9EEixEm(ptr noundef nonnull align 4 dereferenceable(36) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !434 {
  %3 = getelementptr inbounds [9 x i32], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_extra_dirEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local i64 @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #0 comdat !prof !435 {
  %3 = alloca %"struct.std::pair", align 8
  call void @_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #14
  %4 = load i64, ptr %3, align 8
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm(ptr noundef nonnull align 4 dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !436 {
  %3 = getelementptr inbounds [24 x %"struct.std::pair"], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(8) ptr @_ZNSt4pairIiiEaSEOS0_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 !prof !437 {
  %3 = load i32, ptr %1, align 4, !tbaa !331
  store i32 %3, ptr %0, align 4, !tbaa !354
  %4 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !331
  %6 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !351
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastState14play_move_fastEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef returned %1) local_unnamed_addr #0 align 2 !prof !329 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %5, !prof !438

4:                                                ; preds = %2
  tail call void @_ZN9FastState16increment_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  br label %10

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !330
  %8 = tail call noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %7, i32 noundef %1) #14
  %9 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  store i32 %8, ptr %9, align 4, !tbaa !335
  tail call void @_ZN9FastState10set_passesEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef 0) #14
  br label %10

10:                                               ; preds = %5, %4
  %11 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 4, !tbaa !327
  %13 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %12, ptr %13, align 8, !tbaa !328
  store i32 %1, ptr %11, align 4, !tbaa !327
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !330
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  store i32 %17, ptr %14, align 8, !tbaa !330
  %18 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !439
  %20 = add nsw i32 %19, 1
  store i32 %20, ptr %18, align 8, !tbaa !439
  ret i32 %1
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #3 comdat align 2 !prof !435 {
  %4 = load i32, ptr %1, align 4, !tbaa !331
  store i32 %4, ptr %0, align 4, !tbaa !354
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load i32, ptr %2, align 4, !tbaa !331
  store i32 %6, ptr %5, align 4, !tbaa !351
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN9FastState16increment_passesEv(ptr nocapture noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #10 align 2 !prof !440 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !325
  %4 = add nsw i32 %3, 1
  %5 = icmp sgt i32 %3, 3
  br i1 %5, label %6, label %7, !prof !441

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %6, %1
  %8 = phi i32 [ 4, %6 ], [ %4, %1 ]
  store i32 %8, ptr %2, align 8, !tbaa !325
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard17update_board_fastEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState10set_passesEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !442 {
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !325
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN9FastState9play_passEv(ptr nocapture noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #3 align 2 !prof !443 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !439
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !439
  %5 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !327
  %7 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %6, ptr %7, align 8, !tbaa !328
  store i32 -1, ptr %5, align 4, !tbaa !327
  %8 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !444
  %10 = xor i64 %9, -6067004223159161907
  store i64 %10, ptr %8, align 8, !tbaa !444
  %11 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !330
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  store i32 %14, ptr %11, align 8, !tbaa !330
  %15 = tail call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %16 = sext i32 %15 to i64
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7Zobrist12zobrist_passE, i64 noundef %16) #14
  %18 = load i64, ptr %17, align 8, !tbaa !445
  %19 = load i64, ptr %8, align 8, !tbaa !444
  %20 = xor i64 %19, %18
  store i64 %20, ptr %8, align 8, !tbaa !444
  tail call void @_ZN9FastState16increment_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %21 = tail call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %22 = sext i32 %21 to i64
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7Zobrist12zobrist_passE, i64 noundef %22) #14
  %24 = load i64, ptr %23, align 8, !tbaa !445
  %25 = load i64, ptr %8, align 8, !tbaa !444
  %26 = xor i64 %25, %24
  store i64 %26, ptr %8, align 8, !tbaa !444
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !446 {
  %3 = getelementptr inbounds [5 x i64], ptr %0, i64 0, i64 %1
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState10get_passesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !447 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !325
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !326 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !330
  tail call void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %4, i32 noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !448 {
  %4 = icmp ult i32 %2, -2
  br i1 %4, label %5, label %37, !prof !449

5:                                                ; preds = %3
  %6 = tail call noundef i32 @_ZN9FullBoard12update_boardEii(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %1, i32 noundef %2) #14
  %7 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  store i32 %6, ptr %7, align 4, !tbaa !335
  %8 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !327
  %10 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  store i32 %9, ptr %10, align 8, !tbaa !328
  store i32 %2, ptr %8, align 4, !tbaa !327
  %11 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !439
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8, !tbaa !439
  %14 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !330
  %16 = icmp eq i32 %15, %1
  br i1 %16, label %17, label %21, !prof !450

17:                                               ; preds = %5
  %18 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !444
  %20 = xor i64 %19, -6067004223159161907
  store i64 %20, ptr %18, align 8, !tbaa !444
  br label %21

21:                                               ; preds = %17, %5
  %22 = icmp eq i32 %1, 0
  %23 = zext i1 %22 to i32
  store i32 %23, ptr %14, align 8, !tbaa !330
  %24 = tail call noundef i32 @_ZN9FastState10get_passesEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38, !prof !451

26:                                               ; preds = %21
  %27 = zext nneg i32 %24 to i64
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7Zobrist12zobrist_passE, i64 noundef %27) #14
  %29 = load i64, ptr %28, align 8, !tbaa !445
  %30 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !444
  %32 = xor i64 %31, %29
  store i64 %32, ptr %30, align 8, !tbaa !444
  tail call void @_ZN9FastState10set_passesEi(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef 0) #14
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5boost5arrayIyLm5EEixEm(ptr noundef nonnull align 8 dereferenceable(40) @_ZN7Zobrist12zobrist_passE, i64 noundef 0) #14
  %34 = load i64, ptr %33, align 8, !tbaa !445
  %35 = load i64, ptr %30, align 8, !tbaa !444
  %36 = xor i64 %35, %34
  store i64 %36, ptr %30, align 8, !tbaa !444
  br label %38

37:                                               ; preds = %3
  tail call void @_ZN9FastState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  br label %38

38:                                               ; preds = %21, %26, %37
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FullBoard12update_boardEii(ptr noundef nonnull align 8 dereferenceable(8072), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState11get_movenumEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !452 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !439
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN9FastState17estimate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !453 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !324
  %6 = sitofp i32 %5 to float
  %7 = fadd float %3, %6
  %8 = tail call noundef i32 @_ZN9FastBoard17estimate_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %7) #14
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard17estimate_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @_ZN9FastState18calculate_mc_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !454 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !324
  %6 = sitofp i32 %5 to float
  %7 = fadd float %3, %6
  %8 = tail call noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %7) #14
  ret float %8
}

; Function Attrs: optsize
declare noundef float @_ZN9FastBoard14final_mc_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @_ZN9FastState21percentual_area_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !455 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !302
  %4 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !324
  %6 = sitofp i32 %5 to float
  %7 = fadd float %3, %6
  %8 = tail call noundef float @_ZN9FastBoard21percentual_area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %0, float noundef %7) #14
  ret float %8
}

; Function Attrs: optsize
declare noundef float @_ZN9FastBoard21percentual_area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState13get_last_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !456 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4, !tbaa !327
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState17get_prevlast_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !326 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !328
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState11get_to_moveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !457 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !330
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState11set_to_moveEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !326 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 8, !tbaa !330
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState13display_stateEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 !prof !456 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 8, !tbaa !325
  %4 = tail call noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 0) #14
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.2, i32 noundef %3, i32 noundef %4) #14
  %5 = tail call noundef zeroext i1 @_ZN9FastBoard13black_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #14
  %6 = select i1 %5, ptr @.str.3, ptr @.str.4, !prof !458
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull %6) #14
  %7 = tail call noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef 1) #14
  tail call void (ptr, ...) @_ZN5Utils8myprintfEPKcz(ptr noundef nonnull @.str.5, i32 noundef %7) #14
  %8 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 4, !tbaa !327
  tail call void @_ZN9FullBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8072) %0, i32 noundef %9) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN5Utils8myprintfEPKcz(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard13get_prisonersEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard13black_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FullBoard13display_boardEi(ptr noundef nonnull align 8 dereferenceable(8072), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState12move_to_textB5cxx11Ei(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !459 {
  tail call void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastBoard12move_to_textB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.18") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !460 {
  %3 = alloca %"class.std::vector", align 8
  %4 = alloca %"class.std::allocator", align 1
  %5 = alloca %"class.std::allocator.22", align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %class.FastState, align 8
  %9 = alloca %class.Playout, align 8
  %10 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  invoke void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 441, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
          to label %11 unwind label %25

11:                                               ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #15
  call void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  invoke void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 441, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %12 unwind label %27

12:                                               ; preds = %11
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  %13 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  %14 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #15
  store i32 0, ptr %6, align 4, !tbaa !331
  invoke void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %13, ptr %14, ptr noundef nonnull align 4 dereferenceable(4) %6) #14
          to label %15 unwind label %29

15:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  %16 = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %17 = extractvalue { ptr, i32 } %16, 0
  %18 = extractvalue { ptr, i32 } %16, 1
  %19 = call { ptr, i32 } @_ZNSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %20 = extractvalue { ptr, i32 } %19, 0
  %21 = extractvalue { ptr, i32 } %19, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #15
  store i8 0, ptr %7, align 1, !tbaa !461
  invoke void @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %17, i32 %18, ptr %20, i32 %21, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %22 unwind label %31

22:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %33

23:                                               ; preds = %42
  %24 = getelementptr inbounds { ptr, i64 }, ptr %10, i64 0, i32 1
  br label %85

25:                                               ; preds = %2
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  br label %125

27:                                               ; preds = %11
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #15
  br label %123

29:                                               ; preds = %12
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #15
  br label %121

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #15
  br label %121

33:                                               ; preds = %22, %42
  %34 = phi i32 [ 0, %22 ], [ %43, %42 ]
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %8) #15
  invoke void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %8, ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
          to label %35 unwind label %45

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %9) #15
  invoke void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %9) #14
          to label %36 unwind label %47

36:                                               ; preds = %35
  invoke void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120) %9, ptr noundef nonnull align 8 dereferenceable(8388) %8, i1 noundef zeroext false) #14
          to label %37 unwind label %47

37:                                               ; preds = %36, %56
  %38 = phi i32 [ %57, %56 ], [ 0, %36 ]
  %39 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
          to label %40 unwind label %49

40:                                               ; preds = %37
  %41 = icmp slt i32 %38, %39
  br i1 %41, label %51, label %42, !prof !463

42:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %8) #16
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %8) #15
  %43 = add nuw nsw i32 %34, 1
  %44 = icmp eq i32 %43, 256
  br i1 %44, label %23, label %33, !prof !464, !llvm.loop !465

45:                                               ; preds = %33
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %83

47:                                               ; preds = %36, %35
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %81

49:                                               ; preds = %37
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %81

51:                                               ; preds = %40, %79
  %52 = phi i32 [ %80, %79 ], [ 0, %40 ]
  %53 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
          to label %54 unwind label %58

54:                                               ; preds = %51
  %55 = icmp slt i32 %52, %53
  br i1 %55, label %60, label %56, !prof !466

56:                                               ; preds = %54
  %57 = add nuw nsw i32 %38, 1
  br label %37, !llvm.loop !467

58:                                               ; preds = %51
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %81

60:                                               ; preds = %54
  %61 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %38, i32 noundef %52) #14
          to label %62 unwind label %73

62:                                               ; preds = %60
  %63 = invoke noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %61) #14
          to label %64 unwind label %75

64:                                               ; preds = %62
  %65 = invoke noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %8, i32 noundef %61) #14
          to label %66 unwind label %77

66:                                               ; preds = %64
  %67 = icmp eq i32 %63, %65
  br i1 %67, label %68, label %79, !prof !468

68:                                               ; preds = %66
  %69 = sext i32 %61 to i64
  %70 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %69) #16
  %71 = load i32, ptr %70, align 4, !tbaa !331
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr %70, align 4, !tbaa !331
  br label %79

73:                                               ; preds = %60
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %81

75:                                               ; preds = %62
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %81

77:                                               ; preds = %64
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %81

79:                                               ; preds = %68, %66
  %80 = add nuw nsw i32 %52, 1
  br label %51, !llvm.loop !469

81:                                               ; preds = %49, %73, %77, %75, %58, %47
  %82 = phi { ptr, i32 } [ %48, %47 ], [ %50, %49 ], [ %59, %58 ], [ %74, %73 ], [ %78, %77 ], [ %76, %75 ]
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %9) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %8) #16
  br label %83

83:                                               ; preds = %81, %45
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %46, %45 ]
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %8) #15
  br label %121

85:                                               ; preds = %23, %97
  %86 = phi i32 [ %98, %97 ], [ 0, %23 ]
  %87 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
          to label %88 unwind label %90

88:                                               ; preds = %85
  %89 = icmp slt i32 %86, %87
  br i1 %89, label %92, label %120, !prof !470

90:                                               ; preds = %85
  %91 = landingpad { ptr, i32 }
          cleanup
  br label %121

92:                                               ; preds = %88, %118
  %93 = phi i32 [ %119, %118 ], [ 0, %88 ]
  %94 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
          to label %95 unwind label %99

95:                                               ; preds = %92
  %96 = icmp slt i32 %93, %94
  br i1 %96, label %101, label %97, !prof !471

97:                                               ; preds = %95
  %98 = add nuw nsw i32 %86, 1
  br label %85, !llvm.loop !472

99:                                               ; preds = %92
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %121

101:                                              ; preds = %95
  %102 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %1, i32 noundef %86, i32 noundef %93) #14
          to label %103 unwind label %114

103:                                              ; preds = %101
  %104 = sext i32 %102 to i64
  %105 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %104) #16
  %106 = load i32, ptr %105, align 4, !tbaa !331
  %107 = icmp slt i32 %106, 51
  br i1 %107, label %108, label %118, !prof !473

108:                                              ; preds = %103
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  %109 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %104) #14
          to label %110 unwind label %116

110:                                              ; preds = %108
  %111 = extractvalue { ptr, i64 } %109, 0
  store ptr %111, ptr %10, align 8
  %112 = extractvalue { ptr, i64 } %109, 1
  store i64 %112, ptr %24, align 8
  %113 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %10, i1 noundef zeroext true) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %118

114:                                              ; preds = %101
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %121

116:                                              ; preds = %108
  %117 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %121

118:                                              ; preds = %110, %103
  %119 = add nuw nsw i32 %93, 1
  br label %92, !llvm.loop !474

120:                                              ; preds = %88
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void

121:                                              ; preds = %90, %114, %116, %99, %83, %31, %29
  %122 = phi { ptr, i32 } [ %84, %83 ], [ %32, %31 ], [ %30, %29 ], [ %91, %90 ], [ %100, %99 ], [ %117, %116 ], [ %115, %114 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  br label %123

123:                                              ; preds = %121, %27
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %28, %27 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #16
  br label %125

125:                                              ; preds = %123, %25
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %26, %25 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  resume { ptr, i32 } %126
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !377 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !460 {
  %4 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  invoke void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  ret void

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !475 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !476 {
  tail call void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 !prof !476 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #15
  store i8 0, ptr %4, align 1, !tbaa !461
  call void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %2) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !476 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !477 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat !prof !476 {
  tail call void @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !478 {
  %2 = alloca %"struct.std::_Bit_iterator", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !479
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %2, ptr noundef %3, i32 noundef 0) #14
  %4 = load ptr, ptr %2, align 8
  %5 = insertvalue { ptr, i32 } poison, ptr %4, 0
  %6 = getelementptr inbounds { ptr, i32 }, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8
  %8 = insertvalue { ptr, i32 } %5, i32 %7, 1
  ret { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZNSt6vectorIbSaIbEE3endEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !476 {
  %2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %3, 0
  %7 = insertvalue { ptr, i32 } %6, i32 %5, 1
  ret { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #14
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN7PlayoutC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN7Playout3runER9FastStateb(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8388), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !481 {
  %3 = load ptr, ptr %0, align 8, !tbaa !368
  %4 = getelementptr inbounds i32, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !482 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = tail call { ptr, i32 } @_ZNSt6vectorIbSaIbEE5beginEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt14_Bit_referenceaSEb(ptr noundef nonnull align 8 dereferenceable(16) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !483 {
  %3 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !484
  br i1 %1, label %5, label %9, !prof !486

5:                                                ; preds = %2
  %6 = load ptr, ptr %0, align 8, !tbaa !487
  %7 = load i64, ptr %6, align 8, !tbaa !388
  %8 = or i64 %7, %4
  store i64 %8, ptr %6, align 8, !tbaa !388
  br label %14

9:                                                ; preds = %2
  %10 = xor i64 %4, -1
  %11 = load ptr, ptr %0, align 8, !tbaa !487
  %12 = load i64, ptr %11, align 8, !tbaa !388
  %13 = and i64 %12, %10
  store i64 %13, ptr %11, align 8, !tbaa !388
  br label %14

14:                                               ; preds = %9, %5
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !476 {
  invoke void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %3 = alloca %"class.std::allocator", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  %4 = call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %5 = icmp ult i64 %4, %0
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  br i1 %5, label %6, label %7, !prof !488

6:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #17
  unreachable

7:                                                ; preds = %2
  ret i64 %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !489 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !460 {
  %3 = load ptr, ptr %0, align 8, !tbaa !368
  %4 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %5 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %3, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !369
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !490 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !490 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !491 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !489 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #14
  store ptr %3, ptr %0, align 8, !tbaa !368
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !369
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !370
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !492 {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !492 {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !492 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !493

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIiJEEvPT_DpOT0_(ptr noundef %0) #14
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %0) #14
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIiJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !492 {
  store i32 0, ptr %0, align 4, !tbaa !331
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !492 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !400
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #14
  call void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %6 = call noundef ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !492 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !493

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #3 comdat !prof !494 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !492 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !492 {
  tail call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat !prof !495 {
  %4 = load i32, ptr %2, align 4, !tbaa !331
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !496

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store i32 %4, ptr %7, align 4, !tbaa !331
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !497, !llvm.loop !498

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIbEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !476 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !476 {
  tail call void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
  invoke void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #14
          to label %5 unwind label %8

5:                                                ; preds = %4
  %6 = load i8, ptr %2, align 1, !tbaa !461, !range !499, !noundef !500
  %7 = icmp ne i8 %6, 0
  tail call void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %7) #16
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !476 {
  %3 = alloca %"class.std::allocator.19", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  call void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  call void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE13_M_initializeEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !476 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %15, label %5, !prof !501

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) #14
  %7 = tail call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %1) #14
  %8 = getelementptr inbounds i64, ptr %6, i64 %7
  %9 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !502
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  call void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef %6, i32 noundef 0) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 8 dereferenceable(12) %3, i64 12, i1 false)
  %10 = call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #14
  %11 = extractvalue { ptr, i32 } %10, 0
  %12 = extractvalue { ptr, i32 } %10, 1
  %13 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8
  %14 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1, i32 0, i32 1
  store i32 %12, ptr %14, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %15

15:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !476 {
  %3 = load ptr, ptr %0, align 8, !tbaa !479
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !501

5:                                                ; preds = %2
  %6 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %7 = ptrtoint ptr %6 to i64
  %8 = ptrtoint ptr %3 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  tail call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %3, i64 noundef %10, i1 noundef zeroext %1) #16
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaImEC2IbEERKSaIT_E(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !476 {
  tail call void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !476 {
  tail call void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !476 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaImEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !476 {
  tail call void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #3 comdat align 2 !prof !476 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #0 comdat align 2 !prof !505 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef null, i32 noundef 0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !506 {
  store ptr %1, ptr %0, align 8, !tbaa !479
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  store i32 %2, ptr %4, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !476 {
  %3 = tail call noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %1) #14
  %4 = tail call noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %3) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm(i64 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !508 {
  %2 = add i64 %0, 63
  %3 = lshr i64 %2, 6
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bit_iteratorC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 !prof !509 {
  tail call void @_ZNSt18_Bit_iterator_baseC2EPmj(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1, i32 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !510 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %4 = call noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %3, i64 noundef %1) #14
  %5 = load ptr, ptr %3, align 8
  %6 = insertvalue { ptr, i32 } poison, ptr %5, 0
  %7 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = insertvalue { ptr, i32 } %6, i32 %8, 1
  ret { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !476 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorImE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !476 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !395

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #19
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorImE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !476 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(12) ptr @_ZNSt13_Bit_iteratorpLEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !510 {
  tail call void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #14
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt18_Bit_iterator_base7_M_incrEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !510 {
  %3 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !507
  %5 = zext i32 %4 to i64
  %6 = add nsw i64 %5, %1
  %7 = sdiv i64 %6, 64
  %8 = load ptr, ptr %0, align 8, !tbaa !479
  %9 = getelementptr inbounds i64, ptr %8, i64 %7
  %10 = srem i64 %6, 64
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15, !prof !511

12:                                               ; preds = %2
  %13 = add nsw i64 %10, 64
  %14 = getelementptr inbounds i64, ptr %9, i64 -1
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %14, %12 ], [ %9, %2 ]
  %17 = phi i64 [ %13, %12 ], [ %10, %2 ]
  store ptr %16, ptr %0, align 8, !tbaa !479
  %18 = trunc i64 %17 to i32
  store i32 %18, ptr %3, align 8, !tbaa !507
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt16__fill_bvector_nPmmb(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat !prof !508 {
  %4 = sext i1 %2 to i8
  %5 = shl i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 %4, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !512 {
  %2 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !502
  ret ptr %3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !476 {
  %2 = load ptr, ptr %0, align 8, !tbaa !479
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4, !prof !501

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !479
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  %11 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !502
  %13 = sub nsw i64 0, %10
  %14 = getelementptr inbounds i64, ptr %12, i64 %13
  tail call void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %14, i64 noundef %10) #14
  tail call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) #16
  br label %15

15:                                               ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !508 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !476 {
  tail call void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !476 {
  %2 = alloca %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #15
  call void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %2) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorImE10deallocateEPmm(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !476 {
  tail call void @_ZdlPv(ptr noundef %1) #20
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !508 {
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #14
          to label %2 unwind label %6

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 1
  invoke void @_ZNSt13_Bit_iteratorC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %3) #14
          to label %4 unwind label %6

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Bvector_base<std::allocator<bool>>::_Bvector_impl_data", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !502
  ret void

6:                                                ; preds = %2, %1
  %7 = landingpad { ptr, i32 }
          catch ptr null
  %8 = extractvalue { ptr, i32 } %7, 0
  tail call void @__clang_call_terminate(ptr %8) #18
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !477 {
  tail call void @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat !prof !477 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !400
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !400
  call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat !prof !476 {
  tail call void @_ZSt9__fill_a1St13_Bit_iteratorS_RKb(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1St13_Bit_iteratorS_RKb(ptr %0, i32 %1, ptr %2, i32 %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #3 comdat !prof !476 {
  %6 = icmp eq ptr %0, %2
  br i1 %6, label %25, label %7, !prof !501

7:                                                ; preds = %5
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %13, label %9, !prof !513

9:                                                ; preds = %7
  %10 = getelementptr inbounds i64, ptr %0, i64 1
  %11 = load i8, ptr %4, align 1, !tbaa !461, !range !499, !noundef !500
  %12 = icmp ne i8 %11, 0
  tail call void @_ZSt14__fill_bvectorPmjjb(ptr noundef %0, i32 noundef %1, i32 noundef 64, i1 noundef zeroext %12) #16
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi ptr [ %10, %9 ], [ %0, %7 ]
  %15 = ptrtoint ptr %2 to i64
  %16 = ptrtoint ptr %14 to i64
  %17 = sub i64 %15, %16
  %18 = ashr exact i64 %17, 3
  %19 = load i8, ptr %4, align 1, !tbaa !461, !range !499, !noundef !500
  %20 = icmp ne i8 %19, 0
  tail call void @_ZSt16__fill_bvector_nPmmb(ptr noundef %14, i64 noundef %18, i1 noundef zeroext %20) #16
  %21 = icmp eq i32 %3, 0
  br i1 %21, label %30, label %22, !prof !501

22:                                               ; preds = %13
  %23 = load i8, ptr %4, align 1, !tbaa !461, !range !499, !noundef !500
  %24 = icmp ne i8 %23, 0
  tail call void @_ZSt14__fill_bvectorPmjjb(ptr noundef %2, i32 noundef 0, i32 noundef %3, i1 noundef zeroext %24) #16
  br label %30

25:                                               ; preds = %5
  %26 = icmp eq i32 %1, %3
  br i1 %26, label %30, label %27

27:                                               ; preds = %25
  %28 = load i8, ptr %4, align 1, !tbaa !461, !range !499, !noundef !500
  %29 = icmp ne i8 %28, 0
  tail call void @_ZSt14__fill_bvectorPmjjb(ptr noundef %0, i32 noundef %1, i32 noundef %3, i1 noundef zeroext %29) #16
  br label %30

30:                                               ; preds = %13, %22, %25, %27
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt14__fill_bvectorPmjjb(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #3 comdat !prof !476 {
  %5 = zext nneg i32 %1 to i64
  %6 = shl nsw i64 -1, %5
  %7 = sub i32 64, %2
  %8 = zext nneg i32 %7 to i64
  %9 = lshr i64 -1, %8
  %10 = and i64 %9, %6
  br i1 %3, label %11, label %14, !prof !501

11:                                               ; preds = %4
  %12 = load i64, ptr %0, align 8, !tbaa !388
  %13 = or i64 %12, %10
  br label %18

14:                                               ; preds = %4
  %15 = xor i64 %10, -1
  %16 = load i64, ptr %0, align 8, !tbaa !388
  %17 = and i64 %16, %15
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i64 [ %17, %14 ], [ %13, %11 ]
  store i64 %19, ptr %0, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #14
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
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !514
  store i32 %7, ptr %5, align 8, !tbaa !514
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !515 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #15
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #14
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #16
  %9 = load ptr, ptr %0, align 8, !tbaa !368
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #14
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !369
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #15
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !515 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !515 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !516 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !516 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 !prof !515 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !515 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !515 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !515 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #14
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #14
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #14
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !515 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !400
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #14
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #3 comdat !prof !517 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #3 comdat !prof !515 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !516 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #3 comdat !prof !517 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.26", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #16
  %4 = load ptr, ptr %3, align 8, !tbaa !400
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !516 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !516 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !518

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !519 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !517 {
  %3 = load ptr, ptr %1, align 8, !tbaa !400
  store ptr %3, ptr %0, align 8, !tbaa !520
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #3 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratorixEl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !482 {
  %3 = alloca %"struct.std::_Bit_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %4 = tail call { ptr, i32 } @_ZStplRKSt13_Bit_iteratorl(ptr noundef nonnull align 8 dereferenceable(12) %0, i64 noundef %1) #14
  %5 = extractvalue { ptr, i32 } %4, 0
  store ptr %5, ptr %3, align 8
  %6 = getelementptr inbounds { ptr, i32 }, ptr %3, i64 0, i32 1
  %7 = extractvalue { ptr, i32 } %4, 1
  store i32 %7, ptr %6, align 8
  %8 = call { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret { ptr, i64 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, i64 } @_ZNKSt13_Bit_iteratordeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 !prof !522 {
  %2 = alloca %"struct.std::_Bit_reference", align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !479
  %4 = getelementptr inbounds %"struct.std::_Bit_iterator_base", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !507
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw i64 1, %6
  call void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i64 noundef %7) #14
  %8 = load ptr, ptr %2, align 8
  %9 = insertvalue { ptr, i64 } poison, ptr %8, 0
  %10 = getelementptr inbounds { ptr, i64 }, ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = insertvalue { ptr, i64 } %9, i64 %11, 1
  ret { ptr, i64 } %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt14_Bit_referenceC2EPmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #3 comdat align 2 !prof !523 {
  store ptr %1, ptr %0, align 8, !tbaa !487
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  store i64 %2, ptr %4, align 8, !tbaa !484
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN9FastState15final_score_mapEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !326 {
  %3 = alloca %class.FastState, align 8
  %4 = alloca %"class.std::vector.18", align 8
  %5 = alloca %"struct.std::_Bit_reference", align 8
  %6 = alloca %"class.std::vector.18", align 8
  %7 = alloca %"class.std::vector.18", align 8
  %8 = alloca i32, align 4
  %9 = alloca %"struct.std::_Bit_reference", align 8
  %10 = alloca %"struct.std::_Bit_reference", align 8
  %11 = alloca %"struct.std::_Bit_reference", align 8
  %12 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %3) #15
  call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %3, ptr noundef nonnull align 8 dereferenceable(8388) %1) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #15
  invoke void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8388) %3) #14
          to label %13 unwind label %21

13:                                               ; preds = %2
  %14 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %30
  %16 = phi i32 [ %31, %30 ], [ 0, %13 ]
  %17 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3) #14
          to label %18 unwind label %23

18:                                               ; preds = %15
  %19 = icmp slt i32 %16, %17
  br i1 %19, label %25, label %20

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #15
  invoke void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 1) #14
          to label %50 unwind label %65

21:                                               ; preds = %2
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %142

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %140

25:                                               ; preds = %18, %48
  %26 = phi i32 [ %49, %48 ], [ 0, %18 ]
  %27 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3) #14
          to label %28 unwind label %32

28:                                               ; preds = %25
  %29 = icmp slt i32 %26, %27
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = add nuw nsw i32 %16, 1
  br label %15, !llvm.loop !524

32:                                               ; preds = %25
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %140

34:                                               ; preds = %28
  %35 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef %16, i32 noundef %26) #14
          to label %36 unwind label %44

36:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %37 = sext i32 %35 to i64
  %38 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef %37) #14
          to label %39 unwind label %46

39:                                               ; preds = %36
  %40 = extractvalue { ptr, i64 } %38, 0
  store ptr %40, ptr %5, align 8
  %41 = extractvalue { ptr, i64 } %38, 1
  store i64 %41, ptr %14, align 8
  %42 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  invoke void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef %35, i32 noundef 2) #14
          to label %48 unwind label %44

44:                                               ; preds = %43, %34
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %140

46:                                               ; preds = %36
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %140

48:                                               ; preds = %43, %39
  %49 = add nuw nsw i32 %26, 1
  br label %25, !llvm.loop !525

50:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #15
  invoke void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef 0) #14
          to label %51 unwind label %67

51:                                               ; preds = %50
  call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZNSt6vectorIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 441) #14
          to label %52 unwind label %69

52:                                               ; preds = %51
  %53 = call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %54 = call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #15
  store i32 2, ptr %8, align 4, !tbaa !526
  invoke void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN9FastBoard8square_tEEvT_S9_RKT0_(ptr %53, ptr %54, ptr noundef nonnull align 4 dereferenceable(4) %8) #14
          to label %55 unwind label %71

55:                                               ; preds = %52
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  %56 = getelementptr inbounds { ptr, i64 }, ptr %9, i64 0, i32 1
  %57 = getelementptr inbounds { ptr, i64 }, ptr %10, i64 0, i32 1
  %58 = getelementptr inbounds { ptr, i64 }, ptr %11, i64 0, i32 1
  %59 = getelementptr inbounds { ptr, i64 }, ptr %12, i64 0, i32 1
  br label %60

60:                                               ; preds = %80, %55
  %61 = phi i32 [ 0, %55 ], [ %81, %80 ]
  %62 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3) #14
          to label %63 unwind label %73

63:                                               ; preds = %60
  %64 = icmp slt i32 %61, %62
  br i1 %64, label %75, label %133

65:                                               ; preds = %20
  %66 = landingpad { ptr, i32 }
          cleanup
  br label %138

67:                                               ; preds = %50
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %136

69:                                               ; preds = %51
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %134

71:                                               ; preds = %52
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #15
  br label %134

73:                                               ; preds = %60
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %134

75:                                               ; preds = %63, %131
  %76 = phi i32 [ %132, %131 ], [ 0, %63 ]
  %77 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %3) #14
          to label %78 unwind label %82

78:                                               ; preds = %75
  %79 = icmp slt i32 %76, %77
  br i1 %79, label %84, label %80

80:                                               ; preds = %78
  %81 = add nuw nsw i32 %61, 1
  br label %60, !llvm.loop !528

82:                                               ; preds = %75
  %83 = landingpad { ptr, i32 }
          cleanup
  br label %134

84:                                               ; preds = %78
  %85 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %3, i32 noundef %61, i32 noundef %76) #14
          to label %86 unwind label %101

86:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  %87 = sext i32 %85 to i64
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  %88 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %87) #14
          to label %89 unwind label %103

89:                                               ; preds = %86
  %90 = extractvalue { ptr, i64 } %88, 0
  store ptr %90, ptr %9, align 8
  %91 = extractvalue { ptr, i64 } %88, 1
  store i64 %91, ptr %56, align 8
  %92 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %9) #16
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %87) #14
          to label %95 unwind label %105

95:                                               ; preds = %93
  %96 = extractvalue { ptr, i64 } %94, 0
  store ptr %96, ptr %10, align 8
  %97 = extractvalue { ptr, i64 } %94, 1
  store i64 %97, ptr %57, align 8
  %98 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br i1 %98, label %110, label %99

99:                                               ; preds = %95
  %100 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %87) #16
  store i32 1, ptr %100, align 4, !tbaa !331
  br label %131

101:                                              ; preds = %84
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %134

103:                                              ; preds = %86
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %107

105:                                              ; preds = %93
  %106 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %134

109:                                              ; preds = %89
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %110

110:                                              ; preds = %109, %95
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #15
  %111 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %7, i64 noundef %87) #14
          to label %112 unwind label %124

112:                                              ; preds = %110
  %113 = extractvalue { ptr, i64 } %111, 0
  store ptr %113, ptr %11, align 8
  %114 = extractvalue { ptr, i64 } %111, 1
  store i64 %114, ptr %58, align 8
  %115 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %11) #16
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %6, i64 noundef %87) #14
          to label %118 unwind label %126

118:                                              ; preds = %116
  %119 = extractvalue { ptr, i64 } %117, 0
  store ptr %119, ptr %12, align 8
  %120 = extractvalue { ptr, i64 } %117, 1
  store i64 %120, ptr %59, align 8
  %121 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %12) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br i1 %121, label %131, label %122

122:                                              ; preds = %118
  %123 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %87) #16
  store i32 0, ptr %123, align 4, !tbaa !331
  br label %131

124:                                              ; preds = %110
  %125 = landingpad { ptr, i32 }
          cleanup
  br label %128

126:                                              ; preds = %116
  %127 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi { ptr, i32 } [ %127, %126 ], [ %125, %124 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %134

130:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #15
  br label %131

131:                                              ; preds = %118, %122, %130, %99
  %132 = add nuw nsw i32 %76, 1
  br label %75, !llvm.loop !529

133:                                              ; preds = %63
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #15
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %3) #16
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #15
  ret void

134:                                              ; preds = %73, %101, %107, %128, %82, %71, %69
  %135 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ], [ %74, %73 ], [ %83, %82 ], [ %129, %128 ], [ %108, %107 ], [ %102, %101 ]
  call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #16
  br label %136

136:                                              ; preds = %134, %67
  %137 = phi { ptr, i32 } [ %135, %134 ], [ %68, %67 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #15
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #16
  br label %138

138:                                              ; preds = %136, %65
  %139 = phi { ptr, i32 } [ %137, %136 ], [ %66, %65 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #15
  br label %140

140:                                              ; preds = %23, %44, %46, %32, %138
  %141 = phi { ptr, i32 } [ %139, %138 ], [ %24, %23 ], [ %33, %32 ], [ %45, %44 ], [ %47, %46 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #16
  br label %142

142:                                              ; preds = %140, %21
  %143 = phi { ptr, i32 } [ %141, %140 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %3) #16
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %3) #15
  resume { ptr, i32 } %143
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !530 {
  %2 = load ptr, ptr %0, align 8, !tbaa !487
  %3 = load i64, ptr %2, align 8, !tbaa !388
  %4 = getelementptr inbounds %"struct.std::_Bit_reference", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !484
  %6 = and i64 %5, %3
  %7 = icmp ne i64 %6, 0
  ret i1 %7
}

; Function Attrs: optsize
declare void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN9FastBoard16calc_reach_colorEi(ptr dead_on_unwind writable sret(%"class.std::vector.18") align 8, ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !531 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8, !prof !532

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !368
  %12 = getelementptr inbounds i32, ptr %11, i64 %1
  tail call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN9FastBoard8square_tEEvT_S9_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !326 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN9FastBoard8square_tEEvT_S9_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !531 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4, !prof !533

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !370
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !369
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 2
  %14 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20, !prof !532

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !369
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !369
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !368
  %26 = load ptr, ptr %8, align 8, !tbaa !369
  %27 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str.7) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds i32, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %40 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #15
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_rethrow() #21
          to label %54 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %51

39:                                               ; preds = %37
  resume { ptr, i32 } %38

40:                                               ; preds = %24
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %42 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %41) #16
  %43 = load ptr, ptr %6, align 8, !tbaa !370
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #14
  store ptr %28, ptr %0, align 8, !tbaa !368
  %48 = getelementptr inbounds i32, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !369
  %49 = getelementptr inbounds i32, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !370
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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !534 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !369
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !535

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !369
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

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEN9FastBoard8square_tEEvT_S9_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !326 {
  tail call void @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEN9FastBoard8square_tEEvN9__gnu_cxx17__normal_iteratorIT_T0_EESA_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEN9FastBoard8square_tEEvN9__gnu_cxx17__normal_iteratorIT_T0_EESA_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !326 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  %7 = load ptr, ptr %6, align 8, !tbaa !400
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %9 = load ptr, ptr %8, align 8, !tbaa !400
  call void @_ZSt9__fill_a1IPiN9FastBoard8square_tEEN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiN9FastBoard8square_tEEN9__gnu_cxx11__enable_ifIXntsr11__is_scalarIT0_EE7__valueEvE6__typeET_S8_RKS5_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat !prof !326 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 4, !tbaa !526
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi ptr [ %0, %5 ], [ %9, %7 ]
  store i32 %6, ptr %8, align 4, !tbaa !331
  %9 = getelementptr inbounds i32, ptr %8, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %7, !llvm.loop !536

11:                                               ; preds = %7, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef float @_ZN9FastState11final_scoreEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !460 {
  %2 = alloca %class.FastState, align 8
  %3 = alloca %"class.std::vector.18", align 8
  %4 = alloca %"struct.std::_Bit_reference", align 8
  call void @llvm.lifetime.start.p0(i64 8392, ptr nonnull %2) #15
  call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %2, ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #15
  invoke void @_ZN9FastState9mark_deadEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.18") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8388) %2) #14
          to label %5 unwind label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds { ptr, i64 }, ptr %4, i64 0, i32 1
  br label %7

7:                                                ; preds = %5, %27
  %8 = phi i32 [ %28, %27 ], [ 0, %5 ]
  %9 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %2) #14
          to label %10 unwind label %20

10:                                               ; preds = %7
  %11 = icmp slt i32 %8, %9
  br i1 %11, label %22, label %12, !prof !470

12:                                               ; preds = %10
  %13 = call noundef float @_ZN9FastState8get_komiEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %14 = call noundef i32 @_ZN9FastState12get_handicapEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #14
  %15 = sitofp i32 %14 to float
  %16 = fadd float %13, %15
  %17 = invoke noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052) %2, float noundef %16) #14
          to label %47 unwind label %48

18:                                               ; preds = %1
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %52

20:                                               ; preds = %7
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %50

22:                                               ; preds = %10, %45
  %23 = phi i32 [ %46, %45 ], [ 0, %10 ]
  %24 = invoke noundef i32 @_ZN9FastBoard13get_boardsizeEv(ptr noundef nonnull align 8 dereferenceable(8052) %2) #14
          to label %25 unwind label %29

25:                                               ; preds = %22
  %26 = icmp slt i32 %23, %24
  br i1 %26, label %31, label %27, !prof !471

27:                                               ; preds = %25
  %28 = add nuw nsw i32 %8, 1
  br label %7, !llvm.loop !537

29:                                               ; preds = %22
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %50

31:                                               ; preds = %25
  %32 = invoke noundef i32 @_ZN9FastBoard10get_vertexEii(ptr noundef nonnull align 8 dereferenceable(8052) %2, i32 noundef %8, i32 noundef %23) #14
          to label %33 unwind label %41

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %34 = sext i32 %32 to i64
  %35 = invoke { ptr, i64 } @_ZNSt6vectorIbSaIbEEixEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %34) #14
          to label %36 unwind label %43

36:                                               ; preds = %33
  %37 = extractvalue { ptr, i64 } %35, 0
  store ptr %37, ptr %4, align 8
  %38 = extractvalue { ptr, i64 } %35, 1
  store i64 %38, ptr %6, align 8
  %39 = call noundef zeroext i1 @_ZNKSt14_Bit_referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br i1 %39, label %40, label %45, !prof !473

40:                                               ; preds = %36
  invoke void @_ZN9FastBoard10set_squareEiNS_8square_tE(ptr noundef nonnull align 8 dereferenceable(8052) %2, i32 noundef %32, i32 noundef 2) #14
          to label %45 unwind label %41

41:                                               ; preds = %40, %31
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %50

43:                                               ; preds = %33
  %44 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %50

45:                                               ; preds = %40, %36
  %46 = add nuw nsw i32 %23, 1
  br label %22, !llvm.loop !538

47:                                               ; preds = %12
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %2) #16
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %2) #15
  ret float %17

48:                                               ; preds = %12
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %50

50:                                               ; preds = %20, %41, %43, %29, %48
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %21, %20 ], [ %30, %29 ], [ %42, %41 ], [ %44, %43 ]
  call void @_ZNSt13_Bvector_baseISaIbEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %3) #16
  br label %52

52:                                               ; preds = %50, %18
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %19, %18 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #15
  call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %2) #16
  call void @llvm.lifetime.end.p0(i64 8392, ptr nonnull %2) #15
  resume { ptr, i32 } %53
}

; Function Attrs: optsize
declare noundef float @_ZN9FastBoard10area_scoreEf(ptr noundef nonnull align 8 dereferenceable(8052), float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef float @_ZN9FastState8get_komiEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !460 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %3 = load float, ptr %2, align 8, !tbaa !302
  ret float %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState12get_handicapEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !477 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !324
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN9FastState12set_handicapEi(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8388) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !326 {
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 4, !tbaa !324
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN9FastState10get_komoveEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8388) %0) local_unnamed_addr #11 align 2 !prof !326 {
  %2 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !335
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { nounwind optsize }
attributes #17 = { noreturn optsize }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin optsize allocsize(0) }
attributes #20 = { builtin nounwind optsize }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!300}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299}
!36 = !{ptr @_ZN9FastState9init_gameEif, ptr @_ZN9FullBoard11reset_boardEi, i64 29}
!37 = !{ptr @_ZN9FastState16play_random_moveEv, ptr @_ZN9FastState16play_random_moveEi, i64 818055991}
!38 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard10get_squareEi, i64 796524193}
!39 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard19add_global_capturesEiRN5boost5arrayIiLm24EEERi, i64 785340379}
!40 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard24save_critical_neighboursEiiRN5boost5arrayIiLm24EEERi, i64 785340379}
!41 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard17add_pattern_movesEiiRN5boost5arrayIiLm24EEERi, i64 785340379}
!42 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN7Matcher11get_MatcherEv, i64 818055990}
!43 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN5boost5arrayIiLm24EEixEm, i64 3325501320}
!44 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN6Random7get_RngEv, i64 2301130916}
!45 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN6Random7randintEt, i64 2301130916}
!46 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard24get_pattern_fast_augmentEi, i64 3021571193}
!47 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN7Matcher7matchesEii, i64 3021571193}
!48 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard15nbr_criticalityEii, i64 1634510139}
!49 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZNK5boost5arrayIiLm9EEixEm, i64 3269020278}
!50 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard13get_extra_dirEi, i64 18391060258}
!51 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, i64 1879523022}
!52 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN5boost5arrayISt4pairIiiELm24EEixEm, i64 4197292750}
!53 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZNSt4pairIiiEaSEOS0_, i64 1879523022}
!54 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastState14play_move_fastEi, i64 818055992}
!55 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastState15walk_empty_listEiib, i64 1390617386}
!56 = !{ptr @_ZN9FastState16play_random_moveEi, ptr @_ZN9FastBoard10self_atariEii, i64 1387061054}
!57 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!58 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_, i64 67024124}
!59 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 10239256}
!60 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backERKi, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 10239256}
!61 = !{ptr @_ZNSt6vectorIiSaIiEE9push_backEOi, ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, i64 170411}
!62 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!63 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!64 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!65 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!66 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!67 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!68 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!69 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20504886}
!70 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 20504886}
!71 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!72 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, i64 20504883}
!73 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!74 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, i64 20504893}
!75 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 20504893}
!76 = !{ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, i64 20504893}
!77 = !{ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 20504893}
!78 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!79 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!80 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!81 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!82 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!83 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 61514649}
!84 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, i64 20504883}
!85 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!86 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
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
!97 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!98 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 20504884}
!99 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 41009765}
!100 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!101 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 10252441}
!102 = !{ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 20504882}
!103 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!104 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 157224}
!105 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 13187}
!106 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, i64 13187}
!107 = !{ptr @_ZNSt6vectorIiSaIiEE12emplace_backIJiEEERiDpOT_, ptr @_ZNSt6vectorIiSaIiEE4backEv, i64 170411}
!108 = !{ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIiE9constructIiJiEEEvPT_DpOT0_, i64 170411}
!109 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, i64 13186}
!110 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 13186}
!111 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 13186}
!112 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 13186}
!113 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIiEE9constructIiJiEEEvRS0_PT_DpOT0_, i64 13186}
!114 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 26372}
!115 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 26372}
!116 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, i64 26372}
!117 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 13186}
!118 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 170411}
!119 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, i64 170411}
!120 = !{ptr @_ZNSt6vectorIiSaIiEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv, i64 170411}
!121 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 170411}
!122 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!123 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!124 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!125 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!126 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!127 = !{ptr @_ZN9FastState8try_moveEiib, ptr @_ZN9FastBoard11no_eye_fillEi, i64 4728307444}
!128 = !{ptr @_ZN9FastState8try_moveEiib, ptr @_ZN9FastBoard15fast_ss_suicideEii, i64 3424467921}
!129 = !{ptr @_ZN9FastState8try_moveEiib, ptr @_ZN9FastBoard10self_atariEii, i64 1}
!130 = !{ptr @_ZN9FastState15walk_empty_listEiib, ptr @_ZN6Random7get_RngEv, i64 2056696871}
!131 = !{ptr @_ZN9FastState15walk_empty_listEiib, ptr @_ZN6Random7randintEt, i64 2056696871}
!132 = !{ptr @_ZN9FastState15walk_empty_listEiib, ptr @_ZN5boost5arrayItLm441EEixEm, i64 57889587962}
!133 = !{ptr @_ZN9FastState15walk_empty_listEiib, ptr @_ZN9FastState8try_moveEiib, i64 57889587962}
!134 = !{ptr @_ZSt9make_pairIRiS0_ESt4pairINSt25__strip_reference_wrapperINSt5decayIT_E4typeEE6__typeENS2_INS3_IT0_E4typeEE6__typeEEOS4_OS9_, ptr @_ZNSt4pairIiiEC2IRiS2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS4_S5_EEEbE4typeELb1EEEOS4_OS5_, i64 4178409236}
!135 = !{ptr @_ZN9FastState14play_move_fastEi, ptr @_ZN9FastState16increment_passesEv, i64 26393308}
!136 = !{ptr @_ZN9FastState14play_move_fastEi, ptr @_ZN9FastBoard17update_board_fastEii, i64 791662683}
!137 = !{ptr @_ZN9FastState14play_move_fastEi, ptr @_ZN9FastState10set_passesEi, i64 791662683}
!138 = !{ptr @_ZN9FastState9play_passEv, ptr @_ZN9FastState10get_passesEv, i64 3219802}
!139 = !{ptr @_ZN9FastState9play_passEv, ptr @_ZN5boost5arrayIyLm5EEixEm, i64 3219802}
!140 = !{ptr @_ZN9FastState9play_passEv, ptr @_ZN9FastState16increment_passesEv, i64 1609901}
!141 = !{ptr @_ZN9FastState9play_moveEii, ptr @_ZN9FullBoard12update_boardEii, i64 30971612}
!142 = !{ptr @_ZN9FastState9play_moveEii, ptr @_ZN9FastState10get_passesEv, i64 30971612}
!143 = !{ptr @_ZN9FastState9play_moveEii, ptr @_ZN5boost5arrayIyLm5EEixEm, i64 2397138}
!144 = !{ptr @_ZN9FastState9play_moveEii, ptr @_ZN9FastState10set_passesEi, i64 1198569}
!145 = !{ptr @_ZN9FastState9play_moveEii, ptr @_ZN9FastState9play_passEv, i64 2}
!146 = !{ptr @_ZN9FastState17estimate_mc_scoreEv, ptr @_ZN9FastBoard17estimate_mc_scoreEf, i64 801480813}
!147 = !{ptr @_ZN9FastState18calculate_mc_scoreEv, ptr @_ZN9FastBoard14final_mc_scoreEf, i64 6098317}
!148 = !{ptr @_ZN9FastState21percentual_area_scoreEv, ptr @_ZN9FastBoard21percentual_area_scoreEf, i64 31495}
!149 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN9FastBoard13get_prisonersEi, i64 1940}
!150 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN5Utils8myprintfEPKcz, i64 2910}
!151 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN9FastBoard13black_to_moveEv, i64 970}
!152 = !{ptr @_ZN9FastState13display_stateEv, ptr @_ZN9FullBoard13display_boardEi, i64 970}
!153 = !{ptr @_ZN9FastState12move_to_textB5cxx11Ei, ptr @_ZN9FastBoard12move_to_textB5cxx11Ei, i64 40412}
!154 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSaIiEC2Ev, i64 7}
!155 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, i64 7}
!156 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!157 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSaIbEC2Ev, i64 7}
!158 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIbSaIbEEC2EmRKS0_, i64 7}
!159 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt15__new_allocatorIbED2Ev, i64 7}
!160 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 7}
!161 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 7}
!162 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, i64 7}
!163 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 7}
!164 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIbSaIbEE3endEv, i64 7}
!165 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_, i64 7}
!166 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastStateC2ERKS_, i64 1461}
!167 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN7PlayoutC1Ev, i64 1461}
!168 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN7Playout3runER9FastStateb, i64 1461}
!169 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastBoard13get_boardsizeEv, i64 146580}
!170 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastStateD2Ev, i64 1461}
!171 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastBoard10get_vertexEii, i64 118726}
!172 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZN9FastBoard10get_squareEi, i64 236526}
!173 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIiSaIiEEixEm, i64 69961}
!174 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIbSaIbEEixEm, i64 67}
!175 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt14_Bit_referenceaSEb, i64 67}
!176 = !{ptr @_ZN9FastState9mark_deadEv, ptr @_ZNSt6vectorIiSaIiEED2Ev, i64 7}
!177 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!178 = !{ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, i64 7}
!179 = !{ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7}
!180 = !{ptr @_ZNSt6vectorIiSaIiEEC2EmRKS0_, ptr @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, i64 7}
!181 = !{ptr @_ZNSaIbEC2Ev, ptr @_ZNSt15__new_allocatorIbEC2Ev, i64 126015}
!182 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKS0_, ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, i64 126015}
!183 = !{ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, i64 977}
!184 = !{ptr @_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_, ptr @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_, i64 126015}
!185 = !{ptr @_ZNSt6vectorIbSaIbEE5beginEv, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 14973351}
!186 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNSt6vectorIbSaIbEE5beginEv, i64 14717977}
!187 = !{ptr @_ZNSt6vectorIbSaIbEEixEm, ptr @_ZNKSt13_Bit_iteratorixEl, i64 14717977}
!188 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, i64 126015}
!189 = !{ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!190 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7}
!191 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 7}
!192 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!193 = !{ptr @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!194 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!195 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!196 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!197 = !{ptr @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7}
!198 = !{ptr @_ZNSt6vectorIiSaIiEE21_M_default_initializeEm, ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, i64 7}
!199 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!200 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!201 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!202 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!203 = !{ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_, i64 8}
!204 = !{ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_, ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, i64 8}
!205 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, ptr @_ZSt10_ConstructIiJEEvPT_DpOT0_, i64 7}
!206 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, i64 7}
!207 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 8}
!208 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 8}
!209 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, i64 8}
!210 = !{ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, i64 7}
!211 = !{ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 8}
!212 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, i64 126015}
!213 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, i64 126015}
!214 = !{ptr @_ZNSt6vectorIbSaIbEEC2EmRKbRKS0_, ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, i64 126015}
!215 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSaImEC2IbEERKSaIT_E, i64 126015}
!216 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, i64 126015}
!217 = !{ptr @_ZNSt13_Bvector_baseISaIbEEC2ERKS0_, ptr @_ZNSt15__new_allocatorImED2Ev, i64 126015}
!218 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, i64 126014}
!219 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, i64 126014}
!220 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZNSt13_Bit_iteratorC2EPmj, i64 126014}
!221 = !{ptr @_ZNSt6vectorIbSaIbEE13_M_initializeEm, ptr @_ZStplRKSt13_Bit_iteratorl, i64 126014}
!222 = !{ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!223 = !{ptr @_ZNSt6vectorIbSaIbEE19_M_initialize_valueEb, ptr @_ZSt16__fill_bvector_nPmmb, i64 126014}
!224 = !{ptr @_ZNSaImEC2IbEERKSaIT_E, ptr @_ZNSt15__new_allocatorImEC2Ev, i64 126015}
!225 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, ptr @_ZNSaImEC2ERKS_, i64 126015}
!226 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_Bvector_implC2ERKSaImE, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!227 = !{ptr @_ZNSaImEC2ERKS_, ptr @_ZNSt15__new_allocatorImEC2ERKS0_, i64 126015}
!228 = !{ptr @_ZNSt13_Bit_iteratorC2Ev, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 504060}
!229 = !{ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, ptr @_ZNSt13_Bvector_baseISaIbEE8_S_nwordEm, i64 126015}
!230 = !{ptr @_ZNSt13_Bvector_baseISaIbEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m, i64 126015}
!231 = !{ptr @_ZNSt13_Bit_iteratorC2EPmj, ptr @_ZNSt18_Bit_iterator_baseC2EPmj, i64 15228725}
!232 = !{ptr @_ZStplRKSt13_Bit_iteratorl, ptr @_ZNSt13_Bit_iteratorpLEl, i64 14843992}
!233 = !{ptr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, i64 126015}
!234 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorImE11_M_max_sizeEv, i64 126015}
!235 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 31}
!236 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 31}
!237 = !{ptr @_ZNSt15__new_allocatorImE8allocateEmPKv, ptr @_Znwm, i64 125952}
!238 = !{ptr @_ZNSt13_Bit_iteratorpLEl, ptr @_ZNSt18_Bit_iterator_base7_M_incrEl, i64 14843992}
!239 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNKSt13_Bvector_baseISaIbEE13_Bvector_impl11_M_end_addrEv, i64 126014}
!240 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, i64 126014}
!241 = !{ptr @_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, i64 126014}
!242 = !{ptr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm, ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, i64 126015}
!243 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_data8_M_resetEv, ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, i64 126015}
!244 = !{ptr @_ZNSt15__new_allocatorImE10deallocateEPmm, ptr @_ZdlPv, i64 126015}
!245 = !{ptr @_ZNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataC2Ev, ptr @_ZNSt13_Bit_iteratorC2Ev, i64 504060}
!246 = !{ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, ptr @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, i64 977}
!247 = !{ptr @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 1954}
!248 = !{ptr @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 977}
!249 = !{ptr @_ZSt8__fill_aISt13_Bit_iteratorbEvT_S1_RKT0_, ptr @_ZSt9__fill_a1St13_Bit_iteratorS_RKb, i64 126015}
!250 = !{ptr @_ZSt9__fill_a1St13_Bit_iteratorS_RKb, ptr @_ZSt14__fill_bvectorPmjjb, i64 126014}
!251 = !{ptr @_ZSt9__fill_a1St13_Bit_iteratorS_RKb, ptr @_ZSt16__fill_bvector_nPmmb, i64 126014}
!252 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!253 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!254 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!255 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!256 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!257 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!258 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!259 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!260 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!261 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!262 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!263 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!264 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!265 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!266 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!267 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!268 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!269 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!270 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!271 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!272 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!273 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!274 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!275 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!276 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!277 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!278 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZStplRKSt13_Bit_iteratorl, i64 14717977}
!279 = !{ptr @_ZNKSt13_Bit_iteratorixEl, ptr @_ZNKSt13_Bit_iteratordeEv, i64 14717977}
!280 = !{ptr @_ZNKSt13_Bit_iteratordeEv, ptr @_ZNSt14_Bit_referenceC2EPmm, i64 22091440}
!281 = !{ptr @_ZNSt6vectorIiSaIiEE6resizeEm, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 2}
!282 = !{ptr @_ZNSt6vectorIiSaIiEE6resizeEm, ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, i64 1}
!283 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 1}
!284 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 2}
!285 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 60083239}
!286 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 60083239}
!287 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @__clang_call_terminate, i64 57}
!288 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastStateC2ERKS_, i64 7}
!289 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastState9mark_deadEv, i64 7}
!290 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard13get_boardsizeEv, i64 616}
!291 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastState8get_komiEv, i64 7}
!292 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastState12get_handicapEv, i64 7}
!293 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard10area_scoreEf, i64 7}
!294 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard10get_vertexEii, i64 497}
!295 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZNSt6vectorIbSaIbEEixEm, i64 497}
!296 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZNKSt14_Bit_referencecvbEv, i64 497}
!297 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastBoard10set_squareEiNS_8square_tE, i64 72}
!298 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZNSt13_Bvector_baseISaIbEED2Ev, i64 7}
!299 = !{ptr @_ZN9FastState11final_scoreEv, ptr @_ZN9FastStateD2Ev, i64 7}
!300 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!301 = !{!"function_entry_count", i64 29}
!302 = !{!303, !321, i64 8072}
!303 = !{!"_ZTS9FastState", !304, i64 0, !321, i64 8072, !309, i64 8076, !309, i64 8080, !309, i64 8084, !309, i64 8088, !309, i64 8092, !309, i64 8096, !322, i64 8100, !323, i64 8196}
!304 = !{!"_ZTS9FullBoard", !305, i64 0, !320, i64 8056, !320, i64 8064}
!305 = !{!"_ZTS9FastBoard", !306, i64 0, !306, i64 882, !309, i64 1764, !309, i64 1768, !309, i64 1772, !310, i64 1776, !311, i64 3540, !311, i64 4424, !311, i64 5308, !311, i64 6192, !306, i64 7076, !312, i64 7960, !313, i64 7976, !314, i64 8008, !314, i64 8016, !315, i64 8024, !309, i64 8048}
!306 = !{!"_ZTSN5boost5arrayItLm441EEE", !307, i64 0}
!307 = !{!"omnipotent char", !308, i64 0}
!308 = !{!"Simple C++ TBAA"}
!309 = !{!"int", !307, i64 0}
!310 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !307, i64 0}
!311 = !{!"_ZTSN5boost5arrayItLm442EEE", !307, i64 0}
!312 = !{!"_ZTSN5boost5arrayIiLm4EEE", !307, i64 0}
!313 = !{!"_ZTSN5boost5arrayIiLm8EEE", !307, i64 0}
!314 = !{!"_ZTSN5boost5arrayIiLm2EEE", !307, i64 0}
!315 = !{!"_ZTSSt6vectorIiSaIiEE", !316, i64 0}
!316 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !317, i64 0}
!317 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !318, i64 0}
!318 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !319, i64 0, !319, i64 8, !319, i64 16}
!319 = !{!"any pointer", !307, i64 0}
!320 = !{!"long long", !307, i64 0}
!321 = !{!"float", !307, i64 0}
!322 = !{!"_ZTSN5boost5arrayIiLm24EEE", !307, i64 0}
!323 = !{!"_ZTSN5boost5arrayISt4pairIiiELm24EEE", !307, i64 0}
!324 = !{!303, !309, i64 8076}
!325 = !{!303, !309, i64 8080}
!326 = !{!"function_entry_count", i64 0}
!327 = !{!303, !309, i64 8092}
!328 = !{!303, !309, i64 8096}
!329 = !{!"function_entry_count", i64 818055991}
!330 = !{!305, !309, i64 1768}
!331 = !{!309, !309, i64 0}
!332 = !{!"branch_weights", i32 -1931453906, i32 63890956}
!333 = !{!"branch_weights", i32 785340382, i32 11183815}
!334 = !{!"branch_weights", i32 785340381, i32 1}
!335 = !{!303, !309, i64 8084}
!336 = !{!"branch_weights", i32 885875340, i32 785340381}
!337 = distinct !{!337, !338}
!338 = !{!"llvm.loop.mustprogress"}
!339 = !{!"branch_weights", i32 1541548374, i32 605935274}
!340 = !{!"branch_weights", i32 563748266, i32 1}
!341 = !{!"branch_weights", i32 263811303, i32 1}
!342 = !{!"branch_weights", i32 19775468, i32 1634510144}
!343 = !{!"branch_weights", i32 67467919, i32 -444558619}
!344 = distinct !{!344, !338}
!345 = !{!"branch_weights", i32 134935838, i32 1499574307}
!346 = !{!"branch_weights", i32 492461970, i32 1142048175}
!347 = !{!"branch_weights", i32 1090537345, i32 563748266}
!348 = distinct !{!348, !338}
!349 = !{!"branch_weights", i32 263811303, i32 127436727}
!350 = distinct !{!350, !338}
!351 = !{!352, !309, i64 4}
!352 = !{!"_ZTSSt4pairIiiE", !309, i64 0, !309, i64 4}
!353 = !{!"branch_weights", i32 299936964, i32 91311067}
!354 = !{!352, !309, i64 0}
!355 = !{!305, !309, i64 1764}
!356 = !{!"branch_weights", i32 5259748, i32 2051437125}
!357 = !{!"branch_weights", i32 481959048, i32 1569478078}
!358 = !{!"branch_weights", i32 1538577844, i32 512859282}
!359 = distinct !{!359, !338}
!360 = !{!"branch_weights", i32 21133560, i32 1}
!361 = !{!"branch_weights", i32 21133560, i32 1292656420}
!362 = distinct !{!362, !338}
!363 = !{!"branch_weights", i32 491725722, i32 822064259}
!364 = !{!365, !365, i64 0}
!365 = !{!"short", !307, i64 0}
!366 = distinct !{!366, !338}
!367 = !{!"function_entry_count", i64 202367}
!368 = !{!318, !319, i64 0}
!369 = !{!318, !319, i64 8}
!370 = !{!318, !319, i64 16}
!371 = !{!"function_entry_count", i64 32030604394}
!372 = !{!"function_entry_count", i64 77263380}
!373 = !{!"branch_weights", i32 10239256, i32 67024126}
!374 = !{!"function_entry_count", i64 170411}
!375 = !{!"function_entry_count", i64 9372256}
!376 = !{!"function_entry_count", i64 7991268}
!377 = !{!"function_entry_count", i64 202374}
!378 = !{!"function_entry_count", i64 20504886}
!379 = !{!"function_entry_count", i64 447}
!380 = !{!"function_entry_count", i64 899000483}
!381 = !{!"function_entry_count", i64 18041313}
!382 = !{!"branch_weights", i32 7788865, i32 10252450}
!383 = !{!"function_entry_count", i64 20504883}
!384 = !{!"function_entry_count", i64 97749716}
!385 = !{!"function_entry_count", i64 19624698}
!386 = !{!"branch_weights", i32 9372251, i32 10252449}
!387 = !{!"function_entry_count", i64 20504893}
!388 = !{!389, !389, i64 0}
!389 = !{!"long", !307, i64 0}
!390 = !{!"function_entry_count", i64 28293760}
!391 = !{!"function_entry_count", i64 46063954}
!392 = !{!"branch_weights", i32 1, i32 46063955}
!393 = !{!"function_entry_count", i64 30757342}
!394 = !{!"function_entry_count", i64 10252449}
!395 = !{!"branch_weights", i32 1, i32 2000}
!396 = !{!"branch_weights", i32 4082007, i32 16422878}
!397 = !{!"function_entry_count", i64 69303513}
!398 = !{!"function_entry_count", i64 10252448}
!399 = !{!"function_entry_count", i64 10239255}
!400 = !{!319, !319, i64 0}
!401 = !{!"function_entry_count", i64 22957086}
!402 = !{!"function_entry_count", i64 10252442}
!403 = !{!"branch_weights", i32 1, i32 10252443}
!404 = !{!"function_entry_count", i64 10252441}
!405 = !{!"function_entry_count", i64 10455771}
!406 = !{!"function_entry_count", i64 53747328}
!407 = !{!"function_entry_count", i64 23031751}
!408 = !{!"branch_weights", i32 6217633, i32 16814120}
!409 = !{!"function_entry_count", i64 33583715}
!410 = !{!411, !319, i64 0}
!411 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !319, i64 0}
!412 = !{!"branch_weights", i32 13187, i32 157226}
!413 = !{!"function_entry_count", i64 13186}
!414 = !{!"function_entry_count", i64 69455494}
!415 = !{!"function_entry_count", i64 4731748263}
!416 = !{!"branch_weights", i32 1720410, i32 -1930813573}
!417 = !{!"branch_weights", i32 -870499374, i32 1303839524}
!418 = !{!"branch_weights", i32 2051437125, i32 1373030798}
!419 = !{!"branch_weights", i32 2051437125, i32 1}
!420 = !{!"function_entry_count", i64 2056696871}
!421 = !{!"branch_weights", i32 1028336370, i32 1028360503}
!422 = !{!"branch_weights", i32 1, i32 47030732}
!423 = !{!"branch_weights", i32 19738820, i32 1}
!424 = !{!"branch_weights", i32 -2059136631, i32 19738820}
!425 = distinct !{!425, !338}
!426 = !{!"branch_weights", i32 2630743, i32 1}
!427 = !{!"branch_weights", i32 2630743, i32 107644221}
!428 = distinct !{!428, !338}
!429 = !{!"branch_weights", i32 47030732, i32 -2113642123}
!430 = distinct !{!430, !338}
!431 = !{!"branch_weights", i32 137547913, i32 2629005}
!432 = distinct !{!432, !338}
!433 = !{!"function_entry_count", i64 4996717050}
!434 = !{!"function_entry_count", i64 3269020286}
!435 = !{!"function_entry_count", i64 4178409236}
!436 = !{!"function_entry_count", i64 5040599785}
!437 = !{!"function_entry_count", i64 2543899333}
!438 = !{!"branch_weights", i32 26393308, i32 791662685}
!439 = !{!303, !309, i64 8088}
!440 = !{!"function_entry_count", i64 28003208}
!441 = !{!"branch_weights", i32 1, i32 28003209}
!442 = !{!"function_entry_count", i64 792861252}
!443 = !{!"function_entry_count", i64 1609901}
!444 = !{!303, !320, i64 8056}
!445 = !{!320, !320, i64 0}
!446 = !{!"function_entry_count", i64 5616943}
!447 = !{!"function_entry_count", i64 853648851}
!448 = !{!"function_entry_count", i64 30971614}
!449 = !{!"branch_weights", i32 -635753522, i32 236}
!450 = !{!"branch_weights", i32 30971615, i32 1}
!451 = !{!"branch_weights", i32 1198569, i32 29773047}
!452 = !{!"function_entry_count", i64 812864164}
!453 = !{!"function_entry_count", i64 801480813}
!454 = !{!"function_entry_count", i64 6098317}
!455 = !{!"function_entry_count", i64 31495}
!456 = !{!"function_entry_count", i64 970}
!457 = !{!"function_entry_count", i64 226835838}
!458 = !{!"branch_weights", i32 485, i32 487}
!459 = !{!"function_entry_count", i64 40412}
!460 = !{!"function_entry_count", i64 7}
!461 = !{!462, !462, i64 0}
!462 = !{!"bool", !307, i64 0}
!463 = !{!"branch_weights", i32 16129, i32 1793}
!464 = !{!"branch_weights", i32 8, i32 1785}
!465 = distinct !{!465, !338}
!466 = !{!"branch_weights", i32 145153, i32 16129}
!467 = distinct !{!467, !338}
!468 = !{!"branch_weights", i32 85301, i32 59853}
!469 = distinct !{!469, !338}
!470 = !{!"branch_weights", i32 64, i32 8}
!471 = !{!"branch_weights", i32 568, i32 64}
!472 = distinct !{!472, !338}
!473 = !{!"branch_weights", i32 83, i32 486}
!474 = distinct !{!474, !338}
!475 = !{!"function_entry_count", i64 17161144}
!476 = !{!"function_entry_count", i64 126015}
!477 = !{!"function_entry_count", i64 977}
!478 = !{!"function_entry_count", i64 14973351}
!479 = !{!480, !319, i64 0}
!480 = !{!"_ZTSSt18_Bit_iterator_base", !319, i64 0, !309, i64 8}
!481 = !{!"function_entry_count", i64 643347597}
!482 = !{!"function_entry_count", i64 14717977}
!483 = !{!"function_entry_count", i64 14152662}
!484 = !{!485, !389, i64 8}
!485 = !{!"_ZTSSt14_Bit_reference", !319, i64 0, !389, i64 8}
!486 = !{!"branch_weights", i32 8066000, i32 6086664}
!487 = !{!485, !319, i64 0}
!488 = !{!"branch_weights", i32 1, i32 8}
!489 = !{!"function_entry_count", i64 7788871}
!490 = !{!"function_entry_count", i64 16958771}
!491 = !{!"function_entry_count", i64 7788881}
!492 = !{!"function_entry_count", i64 8}
!493 = !{!"branch_weights", i32 1, i32 9}
!494 = !{!"function_entry_count", i64 10}
!495 = !{!"function_entry_count", i64 985}
!496 = !{!"branch_weights", i32 1, i32 985}
!497 = !{!"branch_weights", i32 985, i32 433393}
!498 = distinct !{!498, !338}
!499 = !{i8 0, i8 2}
!500 = !{}
!501 = !{!"branch_weights", i32 1, i32 126016}
!502 = !{!503, !319, i64 32}
!503 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !504, i64 0, !504, i64 16, !319, i64 32}
!504 = !{!"_ZTSSt13_Bit_iterator", !480, i64 0}
!505 = !{!"function_entry_count", i64 504060}
!506 = !{!"function_entry_count", i64 17543811}
!507 = !{!480, !309, i64 8}
!508 = !{!"function_entry_count", i64 252030}
!509 = !{!"function_entry_count", i64 15228725}
!510 = !{!"function_entry_count", i64 14843992}
!511 = !{!"branch_weights", i32 1, i32 14843993}
!512 = !{!"function_entry_count", i64 381389}
!513 = !{!"branch_weights", i32 126016, i32 1}
!514 = !{!305, !309, i64 8048}
!515 = !{!"function_entry_count", i64 7788864}
!516 = !{!"function_entry_count", i64 7789311}
!517 = !{!"function_entry_count", i64 15578622}
!518 = !{!"branch_weights", i32 7789312, i32 1}
!519 = !{!"function_entry_count", i64 28111432}
!520 = !{!521, !319, i64 0}
!521 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !319, i64 0}
!522 = !{!"function_entry_count", i64 22091440}
!523 = !{!"function_entry_count", i64 47211283}
!524 = distinct !{!524, !338}
!525 = distinct !{!525, !338}
!526 = !{!527, !527, i64 0}
!527 = !{!"_ZTSN9FastBoard8square_tE", !307, i64 0}
!528 = distinct !{!528, !338}
!529 = distinct !{!529, !338}
!530 = !{!"function_entry_count", i64 33058621}
!531 = !{!"function_entry_count", i64 1}
!532 = !{!"branch_weights", i32 2, i32 1}
!533 = !{!"branch_weights", i32 1, i32 2}
!534 = !{!"function_entry_count", i64 785340381}
!535 = !{!"branch_weights", i32 725257144, i32 60083239}
!536 = distinct !{!536, !338}
!537 = distinct !{!537, !338}
!538 = distinct !{!538, !338}
