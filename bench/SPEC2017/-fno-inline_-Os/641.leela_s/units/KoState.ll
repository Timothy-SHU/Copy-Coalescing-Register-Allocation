; ModuleID = 'KoState.cpp'
source_filename = "KoState.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.KoState = type { %class.FastState.base, %"class.std::vector.7", %"class.std::vector.7" }
%class.FastState.base = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6" }>
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
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }
%class.FastBoard = type <{ %"class.boost::array", %"class.boost::array", i32, i32, i32, %"class.boost::array.0", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array.1", %"class.boost::array", [2 x i8], %"class.boost::array.2", %"class.boost::array.3", %"class.boost::array.4", %"class.boost::array.4", %"class.std::vector", i32, [4 x i8] }>
%"class.std::reverse_iterator" = type { %"class.__gnu_cxx::__normal_iterator.13" }
%"class.__gnu_cxx::__normal_iterator.13" = type { ptr }
%"class.std::reverse_iterator.14" = type { %"class.__gnu_cxx::__normal_iterator" }
%class.FastState = type <{ %class.FullBoard, float, i32, i32, i32, i32, i32, i32, %"class.boost::array.5", %"class.boost::array.6", [4 x i8] }>
%"class.std::allocator.9" = type { i8 }
%"class.std::allocator" = type { i8 }
%"class.__gnu_cxx::__normal_iterator.12" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }

$_ZNSt6vectorIySaIyEE5clearEv = comdat any

$_ZNSt6vectorIySaIyEE9push_backEOy = comdat any

$_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy = comdat any

$_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZSt8_DestroyIPyEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_ = comdat any

$_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_ = comdat any

$_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_ = comdat any

$_ZNSt6vectorIySaIyEE3endEv = comdat any

$_ZNSt6vectorIySaIyEE4backEv = comdat any

$_ZNSt15__new_allocatorIyE9constructIyJyEEEvPT_DpOT0_ = comdat any

$_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc = comdat any

$_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_ = comdat any

$_ZNSt6vectorIySaIyEE5beginEv = comdat any

$_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm = comdat any

$_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv = comdat any

$_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym = comdat any

$_ZNKSt6vectorIySaIyEE8max_sizeEv = comdat any

$_ZNKSt6vectorIySaIyEE4sizeEv = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIyE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIyE11_M_max_sizeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_ = comdat any

$_ZNSt16allocator_traitsISaIyEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIyE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IyyENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPyET_S1_ = comdat any

$_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym = comdat any

$_ZNSt15__new_allocatorIyE10deallocateEPym = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEmiEl = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEdeEv = comdat any

$_ZN7KoStateC2ERKS_ = comdat any

$_ZN7KoStateD2Ev = comdat any

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

$_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_ = comdat any

$_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_ = comdat any

$_ZNSt15__new_allocatorIyED2Ev = comdat any

$_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E = comdat any

$_ZNKSt6vectorIySaIyEE5beginEv = comdat any

$_ZNKSt6vectorIySaIyEE3endEv = comdat any

$_ZNSt12_Vector_baseIySaIyEED2Ev = comdat any

$_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_ = comdat any

$_ZNSaIyEC2ERKS_ = comdat any

$_ZNSt15__new_allocatorIyEC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_ = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm = comdat any

$_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev = comdat any

$_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_ = comdat any

$_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_ = comdat any

$_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_ = comdat any

$_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_ = comdat any

$_ZSt12__niter_wrapIPyET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE = comdat any

$_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_ = comdat any

$_ZN9FastBoardD2Ev = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt6vectorIySaIyEE6rbeginEv = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E = comdat any

$_ZNSt6vectorIySaIyEE4rendEv = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2Ev = comdat any

$_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_ = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_ = comdat any

$_ZStneIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_ = comdat any

$_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEC2ES6_ = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2IPyvEERKNS0_IT_S5_EE = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2Ev = comdat any

$_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKyEENS0_16_Iter_equals_valIT_EERS4_ = comdat any

$_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_ = comdat any

$_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_ = comdat any

$_ZN9__gnu_cxxmiIPKySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_ = comdat any

$_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv = comdat any

$_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEdeEv = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEmmEv = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEdeEv = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEC2ERS2_ = comdat any

$_ZSteqIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_ = comdat any

$_ZN9__gnu_cxxeqIPKySt6vectorIySaIyEEEEbRKNS_17__normal_iteratorIT_T0_EESB_ = comdat any

$_ZNSt6vectorIySaIyEE9push_backERKy = comdat any

$_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_ = comdat any

$_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_ = comdat any

$_ZNSt15__new_allocatorIyE9constructIyJRKyEEEvPT_DpOT0_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7KoState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, float noundef %2) local_unnamed_addr #0 align 2 !prof !238 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  tail call void @_ZN9FastState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, float noundef %2) #10
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #11
  %7 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %8 = tail call noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) #10
  store i64 %8, ptr %4, align 8, !tbaa !239
  call void @_ZNSt6vectorIySaIyEE9push_backEOy(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %9 = call noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) #10
  store i64 %9, ptr %5, align 8, !tbaa !239
  call void @_ZNSt6vectorIySaIyEE9push_backEOy(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastState9init_gameEif(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef, float noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !243 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  tail call void @_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE9push_backEOy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !243 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !243 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !248

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #10
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !247
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !249 {
  tail call void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !250 {
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPyEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !249 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !249 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !243 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !248

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %9 = load ptr, ptr %3, align 8, !tbaa !247
  %10 = getelementptr inbounds i64, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !247
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  tail call void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br label %13

13:                                               ; preds = %11, %8
  %14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIySaIyEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !243 {
  tail call void @_ZNSt15__new_allocatorIyE9constructIyJyEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !252 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !244
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %10 = tail call ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %12 = call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #10
  %13 = getelementptr inbounds i64, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %15 = load ptr, ptr %14, align 8, !tbaa !253
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %17 = call noundef ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #11
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %20 = load ptr, ptr %19, align 8, !tbaa !253
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %22 = call noundef ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #11
  %23 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !251
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #10
  store ptr %12, ptr %0, align 8, !tbaa !244
  store ptr %22, ptr %8, align 8, !tbaa !247
  %29 = getelementptr inbounds i64, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !254 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6vectorIySaIyEE4backEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !243 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = tail call ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  store ptr %4, ptr %3, align 8
  %5 = call ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1) #11
  store ptr %5, ptr %2, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE9constructIyJyEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !243 {
  %4 = load i64, ptr %2, align 8, !tbaa !239
  store i64 %4, ptr %1, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !255 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !256
  %6 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %7 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !258

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #14
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %13 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  store i64 %13, ptr %5, align 8, !tbaa !256
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  %15 = load i64, ptr %14, align 8, !tbaa !256
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %17 = call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !258

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIySaIyEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !258

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIySaIyEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !255 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !253
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !253
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !259 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !260 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !261

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #10
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat align 2 !prof !262 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !263 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !264 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !265

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !262 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %3 = tail call noundef i64 @_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !266 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !247
  %4 = load ptr, ptr %0, align 8, !tbaa !244
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  ret i64 %8
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !267 {
  %3 = load i64, ptr %0, align 8, !tbaa !256
  %4 = load i64, ptr %1, align 8, !tbaa !256
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !268
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !262 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 1152921504606846975, ptr %2, align 8, !tbaa !256
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  store i64 %4, ptr %3, align 8, !tbaa !256
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %6 = load i64, ptr %5, align 8, !tbaa !256
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !269 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !262 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !270 {
  %3 = load i64, ptr %1, align 8, !tbaa !256
  %4 = load i64, ptr %0, align 8, !tbaa !256
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !271
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !262 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !272 {
  ret i64 1152921504606846975
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !273 {
  %3 = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %3, ptr %0, align 8, !tbaa !274
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !276 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !276 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !277

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 2305843009213693951
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 3
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #15
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #5

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #5

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !262 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IyyENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IyyENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #2 comdat !prof !262 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !278

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !279 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !276 {
  tail call void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE10deallocateEPym(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !276 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEmiEl(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !243 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %5 = load ptr, ptr %0, align 8, !tbaa !274
  %6 = sub i64 0, %1
  %7 = getelementptr inbounds i64, ptr %5, i64 %6
  store ptr %7, ptr %4, align 8, !tbaa !253
  call void @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  %8 = load ptr, ptr %3, align 8
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !243 {
  %2 = load ptr, ptr %0, align 8, !tbaa !274
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN7KoState10legal_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !280 {
  %3 = alloca %class.KoState, align 8
  %4 = tail call noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1) #10
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052) %0) #10
  %8 = tail call noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052) %0, i32 noundef %1, i32 noundef %7) #10
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8440, ptr nonnull %3) #12
  call void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %3, ptr noundef nonnull align 8 dereferenceable(8440) %0) #10
  invoke void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %3, i32 noundef %1) #10
          to label %10 unwind label %12

10:                                               ; preds = %9
  %11 = invoke noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %3) #10
          to label %14 unwind label %12

12:                                               ; preds = %10, %9
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %3) #11
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #12
  resume { ptr, i32 } %13

14:                                               ; preds = %10
  %15 = xor i1 %11, true
  call void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %3) #11
  call void @llvm.lifetime.end.p0(i64 8440, ptr nonnull %3) #12
  br label %16

16:                                               ; preds = %6, %2, %14
  %17 = phi i1 [ %15, %14 ], [ false, %2 ], [ false, %6 ]
  ret i1 %17
}

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard10get_squareEi(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN9FastBoard10is_suicideEii(ptr noundef nonnull align 8 dereferenceable(8052), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare noundef i32 @_ZN9FastBoard11get_to_moveEv(ptr noundef nonnull align 8 dereferenceable(8052)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8440) %0, ptr noundef nonnull align 8 dereferenceable(8440) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
  tail call void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) #10
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 1
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #10
          to label %5 unwind label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %class.KoState, ptr %1, i64 0, i32 2
  invoke void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) #10
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
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi { ptr, i32 } [ %12, %11 ], [ %10, %9 ]
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #11
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7KoState9play_moveEi(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1) local_unnamed_addr #0 align 2 !prof !281 {
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !282
  tail call void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %4, i32 noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN7KoState7superkoEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) local_unnamed_addr #0 align 2 !prof !281 {
  %2 = alloca %"class.std::reverse_iterator", align 8
  %3 = alloca %"class.std::reverse_iterator.14", align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator.14", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator", align 8
  %8 = alloca %"class.std::reverse_iterator", align 8
  %9 = alloca %"class.std::reverse_iterator", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %10 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  call void @_ZNSt6vectorIySaIyEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.14") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %10) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  call void @_ZNSt6vectorIySaIyEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %10) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  %11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %12 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  call void @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull align 8 dereferenceable(8) %12) #10
  %13 = load i64, ptr %7, align 8
  store i64 %13, ptr %6, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  %14 = call noundef zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i1 %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN7KoStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8440) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %3 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #11
  tail call void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8388) %0, ptr noundef nonnull align 8 dereferenceable(8388) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) #10
  %3 = getelementptr inbounds %class.FastState, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FastState, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(316) %3, ptr noundef nonnull align 8 dereferenceable(316) %4, i64 316, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  %3 = alloca %"class.std::allocator.9", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator.9") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  invoke void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #10
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %7 = call ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %8 = call ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %9 = load ptr, ptr %0, align 8, !tbaa !244
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #10
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !247
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  invoke void @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastStateD2Ev(ptr noundef nonnull align 8 dereferenceable(8388) %0) unnamed_addr #2 comdat align 2 {
  tail call void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8072) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FullBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8072) %0, ptr noundef nonnull align 8 dereferenceable(8072) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) #10
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.FullBoard, ptr %1, i64 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardC2ERKS_(ptr noundef nonnull align 8 dereferenceable(8052) %0, ptr noundef nonnull align 8 dereferenceable(8052) %1) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(8024) %0, ptr noundef nonnull align 8 dereferenceable(8024) %1, i64 8024, i1 false)
  %3 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  %4 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #10
  %5 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 17
  %6 = getelementptr inbounds %class.FastBoard, ptr %1, i64 0, i32 17
  %7 = load i32, ptr %6, align 8, !tbaa !297
  store i32 %7, ptr %5, align 8, !tbaa !297
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = alloca %"class.std::allocator", align 1
  %4 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #12
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  call void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind nonnull writable sret(%"class.std::allocator") align 1 %3, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
  invoke void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %3) #10
          to label %6 unwind label %14

6:                                                ; preds = %2
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  %7 = call ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %8 = call ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %9 = load ptr, ptr %0, align 8, !tbaa !299
  %10 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %11 = invoke noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %7, ptr %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %10) #10
          to label %12 unwind label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !300
  ret void

14:                                               ; preds = %2
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #12
  br label %18

16:                                               ; preds = %6
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !301 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !300
  %4 = load ptr, ptr %0, align 8, !tbaa !299
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !298 {
  tail call void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !302 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !303 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  invoke void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #10
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !304 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !298 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !305 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !305 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !306 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !308
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #10
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !298 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !309 {
  tail call void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !309 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !310 {
  tail call void @_ZNSaIiEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !303 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #10
  store ptr %3, ptr %0, align 8, !tbaa !299
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !300
  %5 = getelementptr inbounds i32, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !311 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !312 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !313

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #10
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !314 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #10
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !314 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #11
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !277

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #14
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #15
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #2 comdat align 2 !prof !315 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !298 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !298 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !298 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) #10
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !298 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !253
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !316 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !298 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !305 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !316 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.12", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !253
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #2 comdat !prof !317 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !305 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !305 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !318

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !319 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !316 {
  %3 = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %3, ptr %0, align 8, !tbaa !320
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !322 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !323

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #10
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !324 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !324 {
  tail call void @_ZdlPv(ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 !prof !295 {
  tail call void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !295 {
  tail call void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %2) #11
  invoke void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #10
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #2 comdat align 2 !prof !325 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E(ptr %0, ptr %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #0 comdat !prof !326 {
  %5 = tail call noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #10
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !326 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #2 comdat align 2 !prof !326 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #11
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !296 {
  %2 = load ptr, ptr %0, align 8, !tbaa !244
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !251
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 3
  invoke void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #10
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIyED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_(ptr dead_on_unwind noalias writable sret(%"class.std::allocator.9") align 1 %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #2 comdat align 2 !prof !295 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !327 {
  tail call void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyEC2ERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !327 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 !prof !328 {
  tail call void @_ZNSaIyEC2ERKS_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #11
  tail call void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !295 {
  %3 = tail call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) #10
  store ptr %3, ptr %0, align 8, !tbaa !244
  %4 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !247
  %5 = getelementptr inbounds i64, ptr %3, i64 %1
  %6 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 !prof !329 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !326 {
  %4 = tail call noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !326 {
  %4 = tail call noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !326 {
  %4 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) #10
  %5 = tail call ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %1) #10
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %4, ptr %5, ptr noundef %2) #10
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !326 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !253
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) #11
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %1) #11
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPyET_S1_(ptr noundef %2) #11
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #10
  %9 = call noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #10
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_(ptr %0) local_unnamed_addr #2 comdat !prof !330 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat !prof !326 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !326 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE(ptr %0) local_unnamed_addr #2 comdat !prof !330 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  store ptr %0, ptr %2, align 8
  %3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !253
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !326 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #10
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !326 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !331

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !332 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !330 {
  %3 = load ptr, ptr %1, align 8, !tbaa !253
  store ptr %3, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9FastBoardD2Ev(ptr noundef nonnull align 8 dereferenceable(8052) %0) unnamed_addr #2 comdat align 2 {
  %2 = getelementptr inbounds %class.FastBoard, ptr %0, i64 0, i32 16
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !307 {
  %2 = load ptr, ptr %0, align 8, !tbaa !299
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !300
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #10
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !335 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !335 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !335 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE6rbeginEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 !prof !281 {
  %3 = tail call ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  tail call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !336 {
  tail call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2IPyvEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE4rendEv(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.14") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #2 comdat align 2 !prof !281 {
  %3 = tail call ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  tail call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %3) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !281 {
  tail call void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat !prof !281 {
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %7 = call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKyEENS0_16_Iter_equals_valIT_EERS4_(ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !337 {
  %2 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !338 {
  %3 = load i64, ptr %1, align 8, !tbaa !253
  store i64 %3, ptr %0, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat !prof !281 {
  %3 = tail call noundef zeroext i1 @_ZSteqIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %4 = xor i1 %3, true
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEC2ES6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1) unnamed_addr #2 comdat align 2 !prof !336 {
  store ptr %1, ptr %0, align 8, !tbaa.struct !339
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2IPyvEERKNS0_IT_S5_EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !336 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !253
  store ptr %4, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !281 {
  store ptr null, ptr %0, align 8, !tbaa !333
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat !prof !281 {
  %5 = alloca %"class.std::reverse_iterator", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  call void @_ZSt19__iterator_categoryISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKyEENS0_16_Iter_equals_valIT_EERS4_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !281 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #10
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef %1, ptr noundef %2, ptr %3) local_unnamed_addr #0 comdat !prof !281 {
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator", align 8
  %8 = alloca %"class.std::reverse_iterator", align 8
  %9 = alloca %"class.std::reverse_iterator", align 8
  %10 = alloca %"class.std::reverse_iterator", align 8
  %11 = alloca %"class.std::reverse_iterator", align 8
  %12 = alloca %"class.std::reverse_iterator", align 8
  store ptr %3, ptr %5, align 8
  %13 = tail call noundef i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %14 = ashr i64 %13, 2
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %32, !prof !340

16:                                               ; preds = %4, %28
  %17 = phi i64 [ %30, %28 ], [ %14, %4 ]
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %18 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %6) #10
  br i1 %18, label %46, label %19, !prof !341

19:                                               ; preds = %16
  %20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %21 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %7) #10
  br i1 %21, label %46, label %22, !prof !342

22:                                               ; preds = %19
  %23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %24 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %8) #10
  br i1 %24, label %46, label %25, !prof !343

25:                                               ; preds = %22
  %26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %27 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %9) #10
  br i1 %27, label %46, label %28, !prof !344

28:                                               ; preds = %25
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %30 = add nsw i64 %17, -1
  %31 = icmp sgt i64 %17, 1
  br i1 %31, label %16, label %32, !prof !345, !llvm.loop !346

32:                                               ; preds = %28, %4
  %33 = call noundef i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %42
  ], !prof !348

34:                                               ; preds = %32
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %10) #10
  br i1 %35, label %46, label %36, !prof !349

36:                                               ; preds = %34
  %37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br label %38

38:                                               ; preds = %32, %36
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %39 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %11) #10
  br i1 %39, label %46, label %40, !prof !350

40:                                               ; preds = %38
  %41 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br label %42

42:                                               ; preds = %32, %40
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %43 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %12) #10
  br i1 %43, label %46, label %44, !prof !351

44:                                               ; preds = %42
  %45 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br label %46

46:                                               ; preds = %25, %22, %19, %16, %32, %44, %42, %38, %34
  %47 = phi ptr [ %1, %34 ], [ %1, %38 ], [ %1, %42 ], [ %2, %44 ], [ %2, %32 ], [ %1, %16 ], [ %1, %19 ], [ %1, %22 ], [ %1, %25 ]
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %47) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat !prof !281 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !352 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr %6, ptr %4, align 8
  %7 = call noundef i64 @_ZN9__gnu_cxxmiIPKySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i64 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !353 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  %4 = load i64, ptr %3, align 8, !tbaa !239
  %5 = load ptr, ptr %0, align 8, !tbaa !354
  %6 = load i64, ptr %5, align 8, !tbaa !239
  %7 = icmp eq i64 %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN9__gnu_cxxmiIPKySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !352 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !253
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !253
  %7 = ptrtoint ptr %4 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 3
  ret i64 %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !356 {
  %2 = load ptr, ptr %0, align 8, !tbaa.struct !339
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !353 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %3 = load i64, ptr %0, align 8, !tbaa !253
  store i64 %3, ptr %2, align 8, !tbaa !253
  %4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEmmEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !357 {
  %2 = load ptr, ptr %0, align 8, !tbaa !333
  %3 = getelementptr inbounds i64, ptr %2, i64 -1
  store ptr %3, ptr %0, align 8, !tbaa !333
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 comdat align 2 !prof !353 {
  %2 = load ptr, ptr %0, align 8, !tbaa !333
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEC2ERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !281 {
  store ptr %1, ptr %0, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZSteqIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !281 {
  %3 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  %4 = alloca %"class.__gnu_cxx::__normal_iterator.13", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %5 = tail call ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr %5, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  %6 = tail call ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr %6, ptr %4, align 8
  %7 = call noundef zeroext i1 @_ZN9__gnu_cxxeqIPKySt6vectorIySaIyEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxxeqIPKySt6vectorIySaIyEEEEbRKNS_17__normal_iteratorIT_T0_EESB_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat !prof !281 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %4 = load ptr, ptr %3, align 8, !tbaa !253
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %6 = load ptr, ptr %5, align 8, !tbaa !253
  %7 = icmp eq ptr %4, %6
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN7KoState7superkoEy(ptr noundef nonnull align 8 dereferenceable(8440) %0, i64 noundef %1) local_unnamed_addr #0 align 2 !prof !280 {
  %3 = alloca i64, align 8
  %4 = alloca %"class.std::reverse_iterator", align 8
  %5 = alloca %"class.std::reverse_iterator.14", align 8
  %6 = alloca %"class.std::reverse_iterator", align 8
  %7 = alloca %"class.std::reverse_iterator.14", align 8
  %8 = alloca %"class.std::reverse_iterator", align 8
  %9 = alloca %"class.std::reverse_iterator", align 8
  %10 = alloca %"class.std::reverse_iterator", align 8
  %11 = alloca %"class.std::reverse_iterator", align 8
  store i64 %1, ptr %3, align 8, !tbaa !239
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %12 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  call void @_ZNSt6vectorIySaIyEE6rbeginEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.14") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %12) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  call void @_ZNSt6vectorIySaIyEE4rendEv(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.14") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %12) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #12
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  call void @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %6) #11
  call void @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %13 = load i64, ptr %9, align 8
  store i64 %13, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #12
  %14 = call noundef zeroext i1 @_ZStneIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  ret i1 %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7KoState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) local_unnamed_addr #0 align 2 !prof !280 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  tail call void @_ZN9FastState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #10
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #11
  %5 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  %6 = tail call noundef i64 @_ZN9FullBoard12calc_ko_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) #10
  store i64 %6, ptr %2, align 8, !tbaa !239
  call void @_ZNSt6vectorIySaIyEE9push_backEOy(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %2) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  %7 = call noundef i64 @_ZN9FullBoard9calc_hashEv(ptr noundef nonnull align 8 dereferenceable(8072) %0) #10
  store i64 %7, ptr %3, align 8, !tbaa !239
  call void @_ZNSt6vectorIySaIyEE9push_backEOy(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastState10reset_gameEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) local_unnamed_addr #0 align 2 !prof !358 {
  tail call void @_ZN9FastState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8388) %0) #10
  %2 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEE9push_backERKy(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #10
  %4 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEE9push_backERKy(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8388)) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE9push_backERKy(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !359 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !247
  %5 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !251
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %11, label %8, !prof !360

8:                                                ; preds = %2
  tail call void @_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  %9 = load ptr, ptr %3, align 8, !tbaa !247
  %10 = getelementptr inbounds i64, ptr %9, i64 1
  store ptr %10, ptr %3, align 8, !tbaa !247
  br label %13

11:                                               ; preds = %2
  %12 = tail call ptr @_ZNSt6vectorIySaIyEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  tail call void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %12, ptr noundef nonnull align 8 dereferenceable(8) %1) #10
  br label %13

13:                                               ; preds = %11, %8
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !359 {
  tail call void @_ZNSt15__new_allocatorIyE9constructIyJRKyEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !361 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %1, ptr %4, align 8
  %6 = tail call noundef i64 @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1, ptr noundef nonnull @.str) #10
  %7 = load ptr, ptr %0, align 8, !tbaa !244
  %8 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !247
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #12
  %10 = tail call ptr @_ZNSt6vectorIySaIyEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  store ptr %10, ptr %5, align 8
  %11 = call noundef i64 @_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #12
  %12 = call noundef ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %6) #10
  %13 = getelementptr inbounds i64, ptr %12, i64 %11
  call void @_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %13, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %15 = load ptr, ptr %14, align 8, !tbaa !253
  %16 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %17 = call noundef ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_(ptr noundef %7, ptr noundef %15, ptr noundef %12, ptr noundef nonnull align 1 dereferenceable(1) %16) #11
  %18 = getelementptr inbounds i64, ptr %17, i64 1
  %19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #11
  %20 = load ptr, ptr %19, align 8, !tbaa !253
  %21 = call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  %22 = call noundef ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_(ptr noundef %20, ptr noundef %9, ptr noundef nonnull %18, ptr noundef nonnull align 1 dereferenceable(1) %21) #11
  %23 = getelementptr inbounds %"struct.std::_Vector_base<unsigned long long, std::allocator<unsigned long long>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !251
  %25 = ptrtoint ptr %24 to i64
  %26 = ptrtoint ptr %7 to i64
  %27 = sub i64 %25, %26
  %28 = ashr exact i64 %27, 3
  call void @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %7, i64 noundef %28) #10
  store ptr %12, ptr %0, align 8, !tbaa !244
  store ptr %22, ptr %8, align 8, !tbaa !247
  %29 = getelementptr inbounds i64, ptr %12, i64 %6
  store ptr %29, ptr %23, align 8, !tbaa !251
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIyE9constructIyJRKyEEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #2 comdat align 2 !prof !359 {
  %4 = load i64, ptr %2, align 8, !tbaa !239
  store i64 %4, ptr %1, align 8, !tbaa !239
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN7KoState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8440) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !362 {
  %4 = icmp ult i32 %2, -2
  br i1 %4, label %5, label %10, !prof !363

5:                                                ; preds = %3
  tail call void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388) %0, i32 noundef %1, i32 noundef %2) #10
  %6 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 2
  tail call void @_ZNSt6vectorIySaIyEE9push_backERKy(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #10
  %8 = getelementptr inbounds %class.KoState, ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %class.FullBoard, ptr %0, i64 0, i32 1
  tail call void @_ZNSt6vectorIySaIyEE9push_backERKy(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(8) %9) #10
  br label %11

10:                                               ; preds = %3
  tail call void @_ZN7KoState9play_passEv(ptr noundef nonnull align 8 dereferenceable(8440) %0) #10
  br label %11

11:                                               ; preds = %10, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN9FastState9play_moveEii(ptr noundef nonnull align 8 dereferenceable(8388), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn optsize }
attributes #15 = { builtin optsize allocsize(0) }
attributes #16 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!237}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236}
!36 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZN9FastState9init_gameEif, i64 29}
!37 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZNSt6vectorIySaIyEE5clearEv, i64 58}
!38 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZN9FullBoard12calc_ko_hashEv, i64 29}
!39 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZNSt6vectorIySaIyEE9push_backEOy, i64 58}
!40 = !{ptr @_ZN7KoState9init_gameEif, ptr @_ZN9FullBoard9calc_hashEv, i64 29}
!41 = !{ptr @_ZNSt6vectorIySaIyEE5clearEv, ptr @_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy, i64 58}
!42 = !{ptr @_ZNSt6vectorIySaIyEE9push_backEOy, ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_, i64 58}
!43 = !{ptr @_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 38}
!44 = !{ptr @_ZNSt6vectorIySaIyEE15_M_erase_at_endEPy, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 38}
!45 = !{ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPyEvT_S1_, i64 18213858}
!46 = !{ptr @_ZSt8_DestroyIPyEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPyEEvT_S3_, i64 18213858}
!47 = !{ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_, ptr @_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_, i64 38}
!48 = !{ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_, ptr @_ZNSt6vectorIySaIyEE3endEv, i64 20}
!49 = !{ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_, ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, i64 20}
!50 = !{ptr @_ZNSt6vectorIySaIyEE12emplace_backIJyEEERyDpOT_, ptr @_ZNSt6vectorIySaIyEE4backEv, i64 58}
!51 = !{ptr @_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIyE9constructIyJyEEEvPT_DpOT0_, i64 58}
!52 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, i64 20}
!53 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt6vectorIySaIyEE5beginEv, i64 20}
!54 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 20}
!55 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 20}
!56 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIyEE9constructIyJyEEEvRS0_PT_DpOT0_, i64 20}
!57 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv, i64 40}
!58 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 40}
!59 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_, i64 40}
!60 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 20}
!61 = !{ptr @_ZNSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 43356859}
!62 = !{ptr @_ZNSt6vectorIySaIyEE4backEv, ptr @_ZNSt6vectorIySaIyEE3endEv, i64 58}
!63 = !{ptr @_ZNSt6vectorIySaIyEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEmiEl, i64 58}
!64 = !{ptr @_ZNSt6vectorIySaIyEE4backEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEdeEv, i64 58}
!65 = !{ptr @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIySaIyEE8max_sizeEv, i64 24849040}
!66 = !{ptr @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 49698077}
!67 = !{ptr @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!68 = !{ptr @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 12424519}
!69 = !{ptr @_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv, i64 24849040}
!70 = !{ptr @_ZNSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 43356801}
!71 = !{ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, i64 27873635}
!72 = !{ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_, ptr @_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_, i64 24849040}
!73 = !{ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, i64 27873635}
!74 = !{ptr @_ZNKSt6vectorIySaIyEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 24849040}
!75 = !{ptr @_ZNKSt6vectorIySaIyEE8max_sizeEv, ptr @_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_, i64 24849040}
!76 = !{ptr @_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_, i64 24849040}
!77 = !{ptr @_ZNSt6vectorIySaIyEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 24849040}
!78 = !{ptr @_ZNSt16allocator_traitsISaIyEE8max_sizeERKS0_, ptr @_ZNKSt15__new_allocatorIyE8max_sizeEv, i64 24849040}
!79 = !{ptr @_ZNKSt15__new_allocatorIyE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 24849040}
!80 = !{ptr @_ZNSt16allocator_traitsISaIyEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, i64 27873636}
!81 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIyE11_M_max_sizeEv, i64 27873636}
!82 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 6965}
!83 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 6965}
!84 = !{ptr @_ZNSt15__new_allocatorIyE8allocateEmPKv, ptr @_Znwm, i64 27859706}
!85 = !{ptr @_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 74547120}
!86 = !{ptr @_ZSt12__relocate_aIPyS0_SaIyEET0_T_S3_S2_RT1_, ptr @_ZSt14__relocate_a_1IyyENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, i64 24849040}
!87 = !{ptr @_ZNSt16allocator_traitsISaIyEE10deallocateERS0_Pym, ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, i64 27873636}
!88 = !{ptr @_ZNSt15__new_allocatorIyE10deallocateEPym, ptr @_ZdlPv, i64 27873636}
!89 = !{ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEmiEl, ptr @_ZN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEC2ERKS1_, i64 58}
!90 = !{ptr @_ZN7KoState9play_moveEi, ptr @_ZN7KoState9play_moveEii, i64 30932281}
!91 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZNSt6vectorIySaIyEE6rbeginEv, i64 30932281}
!92 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E, i64 61864562}
!93 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZNSt6vectorIySaIyEE4rendEv, i64 30932281}
!94 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2Ev, i64 30932281}
!95 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv, i64 30932281}
!96 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_, i64 61864562}
!97 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_, i64 30932281}
!98 = !{ptr @_ZN7KoState7superkoEv, ptr @_ZStneIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_, i64 30932281}
!99 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE4sizeEv, i64 15449970}
!100 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449970}
!101 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, i64 15449970}
!102 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, i64 15449970}
!103 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15449970}
!104 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE5beginEv, i64 15449955}
!105 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNKSt6vectorIySaIyEE3endEv, i64 15449955}
!106 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 15449955}
!107 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, i64 15449955}
!108 = !{ptr @_ZNSt6vectorIySaIyEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 15}
!109 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 18212926}
!110 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZSt8_DestroyIPyyEvT_S1_RSaIT0_E, i64 18212926}
!111 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, i64 18212909}
!112 = !{ptr @_ZNSt6vectorIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!113 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 7788864}
!114 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788864}
!115 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, i64 7788864}
!116 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, i64 7788864}
!117 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7788864}
!118 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE5beginEv, i64 7788857}
!119 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNKSt6vectorIiSaIiEE3endEv, i64 7788857}
!120 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 7788857}
!121 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, i64 7788857}
!122 = !{ptr @_ZNSt6vectorIiSaIiEEC2ERKS1_, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 7}
!123 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIiEiE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, i64 7788864}
!124 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, i64 7788871}
!125 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, i64 7788871}
!126 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 7}
!127 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiiET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!128 = !{ptr @_ZNKSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!129 = !{ptr @_ZNKSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEC2ERKS2_, i64 7789311}
!130 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!131 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!132 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!133 = !{ptr @_ZNSt16allocator_traitsISaIiEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788864}
!134 = !{ptr @_ZNSaIiEC2ERKS_, ptr @_ZNSt15__new_allocatorIiEC2ERKS0_, i64 16958771}
!135 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSaIiEC2ERKS_, i64 7788881}
!136 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 7788881}
!137 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, i64 7788871}
!138 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!139 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!140 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!141 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!142 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!143 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!144 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, i64 7788864}
!145 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, i64 7788864}
!146 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEET_S8_, i64 15577728}
!147 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, i64 7788864}
!148 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 15577728}
!149 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 7788864}
!150 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, i64 7788864}
!151 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEEPiET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_, i64 7788864}
!152 = !{ptr @_ZSt14__copy_move_a1ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, i64 7789311}
!153 = !{ptr @_ZSt12__niter_baseIPKiSt6vectorIiSaIiEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEE4baseEv, i64 15578622}
!154 = !{ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_, i64 7789311}
!155 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!156 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!157 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!158 = !{ptr @_ZN9__gnu_cxx14__alloc_traitsISaIyEyE17_S_select_on_copyERKS1_, ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, i64 15449970}
!159 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, i64 15449970}
!160 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, i64 15449970}
!161 = !{ptr @_ZNSt12_Vector_baseIySaIyEEC2EmRKS0_, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 15}
!162 = !{ptr @_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyyET0_T_SA_S9_RSaIT1_E, ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!163 = !{ptr @_ZNKSt6vectorIySaIyEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!164 = !{ptr @_ZNKSt6vectorIySaIyEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2ERKS2_, i64 15450864}
!165 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 18212926}
!166 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @_ZNSt15__new_allocatorIyED2Ev, i64 18212909}
!167 = !{ptr @_ZNSt12_Vector_baseIySaIyEED2Ev, ptr @__clang_call_terminate, i64 17}
!168 = !{ptr @_ZNSt16allocator_traitsISaIyEE37select_on_container_copy_constructionERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449970}
!169 = !{ptr @_ZNSaIyEC2ERKS_, ptr @_ZNSt15__new_allocatorIyEC2ERKS0_, i64 33661998}
!170 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSaIyEC2ERKS_, i64 15449990}
!171 = !{ptr @_ZNSt12_Vector_baseIySaIyEE12_Vector_implC2ERKS0_, ptr @_ZNSt12_Vector_baseIySaIyEE17_Vector_impl_dataC2Ev, i64 15449990}
!172 = !{ptr @_ZNSt12_Vector_baseIySaIyEE17_M_create_storageEm, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 15449970}
!173 = !{ptr @_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, i64 15450864}
!174 = !{ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyEET0_T_SC_SB_, ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, i64 15450864}
!175 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt12__miter_baseIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEET_S8_, i64 30901728}
!176 = !{ptr @_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET0_T_SA_S9_, ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, i64 15450864}
!177 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, i64 30901728}
!178 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_baseIPyET_S1_, i64 15450864}
!179 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!180 = !{ptr @_ZSt13__copy_move_aILb0EN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEPyET1_T0_SA_S9_, ptr @_ZSt12__niter_wrapIPyET_RKS1_S1_, i64 15450864}
!181 = !{ptr @_ZSt14__copy_move_a1ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, i64 15450864}
!182 = !{ptr @_ZSt12__niter_baseIPKySt6vectorIySaIyEEET_N9__gnu_cxx17__normal_iteratorIS5_T0_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 30901728}
!183 = !{ptr @_ZSt14__copy_move_a2ILb0EPKyPyET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIyEEPT_PKS3_S6_S4_, i64 15450864}
!184 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!185 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!186 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!187 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!188 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!189 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!190 = !{ptr @_ZNSt6vectorIySaIyEE6rbeginEv, ptr @_ZNSt6vectorIySaIyEE3endEv, i64 30932281}
!191 = !{ptr @_ZNSt6vectorIySaIyEE6rbeginEv, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEC2ES6_, i64 30932281}
!192 = !{ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2INS1_IPyS6_EEEERKS_IT_E, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2IPyvEERKNS0_IT_S5_EE, i64 61864562}
!193 = !{ptr @_ZNSt6vectorIySaIyEE4rendEv, ptr @_ZNSt6vectorIySaIyEE5beginEv, i64 30932281}
!194 = !{ptr @_ZNSt6vectorIySaIyEE4rendEv, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEEEC2ES6_, i64 30932281}
!195 = !{ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2Ev, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2Ev, i64 30932281}
!196 = !{ptr @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_, i64 61864562}
!197 = !{ptr @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_, ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKyEENS0_16_Iter_equals_valIT_EERS4_, i64 30932281}
!198 = !{ptr @_ZSt4findISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEyET_SA_SA_RKT0_, ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_, i64 30932281}
!199 = !{ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEmmEv, i64 2400746279}
!200 = !{ptr @_ZStneIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_, ptr @_ZSteqIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_, i64 30932281}
!201 = !{ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEC2IPyvEERKNS0_IT_S5_EE, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv, i64 61864562}
!202 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_, i64 61864562}
!203 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_, ptr @_ZSt19__iterator_categoryISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEENSt15iterator_traitsIT_E17iterator_categoryERKSB_, i64 30932281}
!204 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_, ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag, i64 30932281}
!205 = !{ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKyEENS0_16_Iter_equals_valIT_EERS4_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEC2ERS2_, i64 30932281}
!206 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag, ptr @_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E, i64 61864156}
!207 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEC2ERKS8_, i64 2400747941}
!208 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_, i64 2369815660}
!209 = !{ptr @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEENS1_5__ops16_Iter_equals_valIS3_EEET_SD_SD_T0_St26random_access_iterator_tag, ptr @_ZNSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEppEv, i64 2369815251}
!210 = !{ptr @_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E, ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv, i64 123728320}
!211 = !{ptr @_ZStmiIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEES7_EDTmicldtfp0_4baseEcldtfp_4baseEERKSt16reverse_iteratorIT_ERKS9_IT0_E, ptr @_ZN9__gnu_cxxmiIPKySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, i64 61864160}
!212 = !{ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKyEclISt16reverse_iteratorINS_17__normal_iteratorIPS2_St6vectorIySaIyEEEEEEEbT_, ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEdeEv, i64 2369814400}
!213 = !{ptr @_ZN9__gnu_cxxmiIPKySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS9_SC_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 123728320}
!214 = !{ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEdeEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEmmEv, i64 2369814400}
!215 = !{ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEdeEv, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEdeEv, i64 2369814400}
!216 = !{ptr @_ZSteqIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_, ptr @_ZNKSt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEE4baseEv, i64 61864562}
!217 = !{ptr @_ZSteqIN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEEEbRKSt16reverse_iteratorIT_ESC_, ptr @_ZN9__gnu_cxxeqIPKySt6vectorIySaIyEEEEbRKNS_17__normal_iteratorIT_T0_EESB_, i64 30932281}
!218 = !{ptr @_ZN9__gnu_cxxeqIPKySt6vectorIySaIyEEEEbRKNS_17__normal_iteratorIT_T0_EESB_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEE4baseEv, i64 61864562}
!219 = !{ptr @_ZN7KoState9play_passEv, ptr @_ZN9FastState9play_passEv, i64 1609901}
!220 = !{ptr @_ZN7KoState9play_passEv, ptr @_ZNSt6vectorIySaIyEE9push_backERKy, i64 3219802}
!221 = !{ptr @_ZNSt6vectorIySaIyEE9push_backERKy, ptr @_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_, i64 52738529}
!222 = !{ptr @_ZNSt6vectorIySaIyEE9push_backERKy, ptr @_ZNSt6vectorIySaIyEE3endEv, i64 12424501}
!223 = !{ptr @_ZNSt6vectorIySaIyEE9push_backERKy, ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, i64 12424501}
!224 = !{ptr @_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_, ptr @_ZNSt15__new_allocatorIyE9constructIyJRKyEEEvPT_DpOT0_, i64 65163030}
!225 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNKSt6vectorIySaIyEE12_M_check_lenEmPKc, i64 12424500}
!226 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt6vectorIySaIyEE5beginEv, i64 12424500}
!227 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZN9__gnu_cxxmiIPySt6vectorIySaIyEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_, i64 12424500}
!228 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIySaIyEE11_M_allocateEm, i64 12424500}
!229 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt16allocator_traitsISaIyEE9constructIyJRKyEEEvRS0_PT_DpOT0_, i64 12424500}
!230 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEE4baseEv, i64 24849000}
!231 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIySaIyEE19_M_get_Tp_allocatorEv, i64 24849000}
!232 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt6vectorIySaIyEE11_S_relocateEPyS2_S2_RS0_, i64 24849000}
!233 = !{ptr @_ZNSt6vectorIySaIyEE17_M_realloc_insertIJRKyEEEvN9__gnu_cxx17__normal_iteratorIPyS1_EEDpOT_, ptr @_ZNSt12_Vector_baseIySaIyEE13_M_deallocateEPym, i64 12424500}
!234 = !{ptr @_ZN7KoState9play_moveEii, ptr @_ZN9FastState9play_moveEii, i64 30971612}
!235 = !{ptr @_ZN7KoState9play_moveEii, ptr @_ZNSt6vectorIySaIyEE9push_backERKy, i64 61943224}
!236 = !{ptr @_ZN7KoState9play_moveEii, ptr @_ZN7KoState9play_passEv, i64 2}
!237 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!238 = !{!"function_entry_count", i64 29}
!239 = !{!240, !240, i64 0}
!240 = !{!"long long", !241, i64 0}
!241 = !{!"omnipotent char", !242, i64 0}
!242 = !{!"Simple C++ TBAA"}
!243 = !{!"function_entry_count", i64 58}
!244 = !{!245, !246, i64 0}
!245 = !{!"_ZTSNSt12_Vector_baseIySaIyEE17_Vector_impl_dataE", !246, i64 0, !246, i64 8, !246, i64 16}
!246 = !{!"any pointer", !241, i64 0}
!247 = !{!245, !246, i64 8}
!248 = !{!"branch_weights", i32 21, i32 39}
!249 = !{!"function_entry_count", i64 18213858}
!250 = !{!"function_entry_count", i64 58513802}
!251 = !{!245, !246, i64 16}
!252 = !{!"function_entry_count", i64 20}
!253 = !{!246, !246, i64 0}
!254 = !{!"function_entry_count", i64 43356859}
!255 = !{!"function_entry_count", i64 12424520}
!256 = !{!257, !257, i64 0}
!257 = !{!"long", !241, i64 0}
!258 = !{!"branch_weights", i32 1, i32 12424521}
!259 = !{!"function_entry_count", i64 43356801}
!260 = !{!"function_entry_count", i64 27875384}
!261 = !{!"branch_weights", i32 1749, i32 27873637}
!262 = !{!"function_entry_count", i64 24849040}
!263 = !{!"function_entry_count", i64 111562642}
!264 = !{!"function_entry_count", i64 30638340}
!265 = !{!"branch_weights", i32 2764705, i32 27873637}
!266 = !{!"function_entry_count", i64 65148944}
!267 = !{!"function_entry_count", i64 23031751}
!268 = !{!"branch_weights", i32 6217633, i32 16814120}
!269 = !{!"function_entry_count", i64 40299030}
!270 = !{!"function_entry_count", i64 46063954}
!271 = !{!"branch_weights", i32 1, i32 46063955}
!272 = !{!"function_entry_count", i64 52722676}
!273 = !{!"function_entry_count", i64 86713718}
!274 = !{!275, !246, i64 0}
!275 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPySt6vectorIySaIyEEEE", !246, i64 0}
!276 = !{!"function_entry_count", i64 27873636}
!277 = !{!"branch_weights", i32 1, i32 2000}
!278 = !{!"branch_weights", i32 12424501, i32 12424541}
!279 = !{!"function_entry_count", i64 89997984}
!280 = !{!"function_entry_count", i64 0}
!281 = !{!"function_entry_count", i64 30932281}
!282 = !{!283, !285, i64 1768}
!283 = !{!"_ZTS9FastBoard", !284, i64 0, !284, i64 882, !285, i64 1764, !285, i64 1768, !285, i64 1772, !286, i64 1776, !287, i64 3540, !287, i64 4424, !287, i64 5308, !287, i64 6192, !284, i64 7076, !288, i64 7960, !289, i64 7976, !290, i64 8008, !290, i64 8016, !291, i64 8024, !285, i64 8048}
!284 = !{!"_ZTSN5boost5arrayItLm441EEE", !241, i64 0}
!285 = !{!"int", !241, i64 0}
!286 = !{!"_ZTSN5boost5arrayIN9FastBoard8square_tELm441EEE", !241, i64 0}
!287 = !{!"_ZTSN5boost5arrayItLm442EEE", !241, i64 0}
!288 = !{!"_ZTSN5boost5arrayIiLm4EEE", !241, i64 0}
!289 = !{!"_ZTSN5boost5arrayIiLm8EEE", !241, i64 0}
!290 = !{!"_ZTSN5boost5arrayIiLm2EEE", !241, i64 0}
!291 = !{!"_ZTSSt6vectorIiSaIiEE", !292, i64 0}
!292 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !293, i64 0}
!293 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !294, i64 0}
!294 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !246, i64 0, !246, i64 8, !246, i64 16}
!295 = !{!"function_entry_count", i64 15449970}
!296 = !{!"function_entry_count", i64 18212926}
!297 = !{!283, !285, i64 8048}
!298 = !{!"function_entry_count", i64 7788864}
!299 = !{!294, !246, i64 0}
!300 = !{!294, !246, i64 8}
!301 = !{!"function_entry_count", i64 899000483}
!302 = !{!"function_entry_count", i64 28293760}
!303 = !{!"function_entry_count", i64 7788871}
!304 = !{!"function_entry_count", i64 17161144}
!305 = !{!"function_entry_count", i64 7789311}
!306 = !{!"function_entry_count", i64 97749716}
!307 = !{!"function_entry_count", i64 9372256}
!308 = !{!294, !246, i64 16}
!309 = !{!"function_entry_count", i64 16958771}
!310 = !{!"function_entry_count", i64 7788881}
!311 = !{!"function_entry_count", i64 7991268}
!312 = !{!"function_entry_count", i64 18041313}
!313 = !{!"branch_weights", i32 7788865, i32 10252450}
!314 = !{!"function_entry_count", i64 10252449}
!315 = !{!"function_entry_count", i64 30757342}
!316 = !{!"function_entry_count", i64 15578622}
!317 = !{!"function_entry_count", i64 69303513}
!318 = !{!"branch_weights", i32 7789312, i32 1}
!319 = !{!"function_entry_count", i64 28111432}
!320 = !{!321, !246, i64 0}
!321 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKiSt6vectorIiSaIiEEEE", !246, i64 0}
!322 = !{!"function_entry_count", i64 19624698}
!323 = !{!"branch_weights", i32 9372251, i32 10252449}
!324 = !{!"function_entry_count", i64 10252448}
!325 = !{!"function_entry_count", i64 33662916}
!326 = !{!"function_entry_count", i64 15450864}
!327 = !{!"function_entry_count", i64 33661998}
!328 = !{!"function_entry_count", i64 15449990}
!329 = !{!"function_entry_count", i64 15450948}
!330 = !{!"function_entry_count", i64 30901728}
!331 = !{!"branch_weights", i32 1749, i32 15449117}
!332 = !{!"function_entry_count", i64 216494610}
!333 = !{!334, !246, i64 0}
!334 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPKySt6vectorIySaIyEEEE", !246, i64 0}
!335 = !{!"function_entry_count", i64 69455494}
!336 = !{!"function_entry_count", i64 61864562}
!337 = !{!"function_entry_count", i64 2400746279}
!338 = !{!"function_entry_count", i64 2586340367}
!339 = !{i64 0, i64 8, !253}
!340 = !{!"branch_weights", i32 30931879, i32 1}
!341 = !{!"branch_weights", i32 15, i32 580826941}
!342 = !{!"branch_weights", i32 2, i32 580826940}
!343 = !{!"branch_weights", i32 383, i32 580826558}
!344 = !{!"branch_weights", i32 6, i32 580826553}
!345 = !{!"branch_weights", i32 549895076, i32 30931879}
!346 = distinct !{!346, !347}
!347 = !{!"llvm.loop.mustprogress"}
!348 = !{!"branch_weights", i32 7662729, i32 7796996, i32 7643869, i32 7828290}
!349 = !{!"branch_weights", i32 1, i32 7796996}
!350 = !{!"branch_weights", i32 1, i32 15440864}
!351 = !{!"branch_weights", i32 1, i32 23269153}
!352 = !{!"function_entry_count", i64 61864160}
!353 = !{!"function_entry_count", i64 2369814400}
!354 = !{!355, !246, i64 0}
!355 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKyEE", !246, i64 0}
!356 = !{!"function_entry_count", i64 185592882}
!357 = !{!"function_entry_count", i64 4770560679}
!358 = !{!"function_entry_count", i64 1609901}
!359 = !{!"function_entry_count", i64 65163030}
!360 = !{!"branch_weights", i32 12424501, i32 52738531}
!361 = !{!"function_entry_count", i64 12424500}
!362 = !{!"function_entry_count", i64 30971614}
!363 = !{!"branch_weights", i32 -635753522, i32 236}
