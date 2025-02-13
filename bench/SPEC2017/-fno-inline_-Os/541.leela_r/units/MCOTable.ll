; ModuleID = 'MCOTable.cpp'
source_filename = "MCOTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.MCOwnerTable = type { %"class.std::vector", i32, %"class.SMP::Mutex" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.SMP::Mutex" = type { i64 }
%"class.SMP::Lock" = type { ptr }
%"class.std::bitset<441>::reference" = type { ptr, i64 }
%"class.__gnu_cxx::__normal_iterator" = type { ptr }

$_ZNSt6vectorIiSaIiEEC2Ev = comdat any

$_ZNSt6vectorIiSaIiEE6resizeEm = comdat any

$_ZNSt6vectorIiSaIiEED2Ev = comdat any

$_ZNKSt6bitsetILm441EE4sizeEv = comdat any

$_ZNSt6bitsetILm441EEixEm = comdat any

$_ZNKSt6bitsetILm441EE9referencecvbEv = comdat any

$_ZNSt6bitsetILm441EE9referenceD2Ev = comdat any

$_ZNSt6vectorIiSaIiEEixEm = comdat any

$_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_ = comdat any

$_ZNSt6vectorIiSaIiEE5beginEv = comdat any

$_ZNSt6vectorIiSaIiEE3endEv = comdat any

$_ZNSt12_Vector_baseIiSaIiEEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev = comdat any

$_ZNSaIiEC2Ev = comdat any

$_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorIiEC2Ev = comdat any

$_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12_Vector_baseIiSaIiEED2Ev = comdat any

$_ZSt8_DestroyIPiEvT_S1_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_ = comdat any

$_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim = comdat any

$_ZNSt15__new_allocatorIiED2Ev = comdat any

$_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim = comdat any

$_ZNSt15__new_allocatorIiE10deallocateEPim = comdat any

$_ZNKSt6vectorIiSaIiEE4sizeEv = comdat any

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi = comdat any

$_ZNKSt6vectorIiSaIiEE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E = comdat any

$_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm = comdat any

$_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_ = comdat any

$_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_ = comdat any

$_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorIiE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorIiE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIPimET_S1_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_ = comdat any

$_ZSt10_ConstructIiJEEvPT_DpOT0_ = comdat any

$_ZSt6fill_nIPimiET_S1_T0_RKT1_ = comdat any

$_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag = comdat any

$_ZSt17__size_to_integerm = comdat any

$_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_ = comdat any

$_ZSt8__fill_aIPiiEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaIiEE8allocateERS0_m = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

$_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_ = comdat any

$_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZNSt6bitsetILm441EE9referenceC2ERS0_m = comdat any

$_ZNSt12_Base_bitsetILm7EE10_M_getwordEm = comdat any

$_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm = comdat any

$_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm = comdat any

$_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm = comdat any

$_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_ = comdat any

$_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_ = comdat any

$_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_ = comdat any

$_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv = comdat any

@_ZN12MCOwnerTable12s_mcowntableE = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN12MCOwnerTableC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12MCOwnerTableC2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !116 {
  %1 = load ptr, ptr @_ZN12MCOwnerTable12s_mcowntableE, align 8, !tbaa !117
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8, !prof !121

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #12
  invoke void @_ZN12MCOwnerTableC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #13
          to label %5 unwind label %6

5:                                                ; preds = %3
  store ptr %4, ptr @_ZN12MCOwnerTable12s_mcowntableE, align 8, !tbaa !117
  br label %8

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %4) #14
  resume { ptr, i32 } %7

8:                                                ; preds = %5, %0
  %9 = phi ptr [ %4, %5 ], [ %1, %0 ]
  ret ptr %9
}

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12MCOwnerTableC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  tail call void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %2 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 2
  invoke void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
          to label %3 unwind label %5

3:                                                ; preds = %1
  invoke void @_ZNSt6vectorIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 441) #13
          to label %4 unwind label %5

4:                                                ; preds = %3
  ret void

5:                                                ; preds = %3, %1
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !123 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !122 {
  %3 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br i1 %4, label %6, label %8, !prof !124

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #13
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !125
  %12 = getelementptr inbounds i32, ptr %11, i64 %1
  tail call void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #15
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #13
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !129 {
  %3 = alloca %"class.SMP::Lock", align 8
  %4 = alloca %"class.std::bitset<441>::reference", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %5 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 2
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  %6 = call noundef i64 @_ZNKSt6bitsetILm441EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12, !prof !130

8:                                                ; preds = %20, %2
  %9 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !131
  %11 = add nsw i32 %10, 1
  store i32 %11, ptr %9, align 8, !tbaa !131
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret void

12:                                               ; preds = %2, %20
  %13 = phi i64 [ %22, %20 ], [ 0, %2 ]
  %14 = phi i32 [ %21, %20 ], [ 0, %2 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  call void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind nonnull writable sret(%"class.std::bitset<441>::reference") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %13) #13
  %15 = call noundef zeroext i1 @_ZNKSt6bitsetILm441EE9referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  br i1 %15, label %16, label %20, !prof !139

16:                                               ; preds = %12
  %17 = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %13) #15
  %18 = load i32, ptr %17, align 4, !tbaa !140
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %17, align 4, !tbaa !140
  br label %20

20:                                               ; preds = %12, %16
  %21 = add i32 %14, 1
  %22 = zext i32 %21 to i64
  %23 = call noundef i64 @_ZNKSt6bitsetILm441EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #15
  %24 = icmp ugt i64 %23, %22
  br i1 %24, label %12, label %8, !prof !141, !llvm.loop !142
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6bitsetILm441EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 !prof !144 {
  ret i64 441
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EEixEm(ptr dead_on_unwind noalias writable sret(%"class.std::bitset<441>::reference") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !145 {
  tail call void @_ZNSt6bitsetILm441EE9referenceC2ERS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNKSt6bitsetILm441EE9referencecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #3 comdat align 2 !prof !146 {
  %2 = load ptr, ptr %0, align 8, !tbaa !147
  %3 = load i64, ptr %2, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.std::bitset<441>::reference", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !150
  %6 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm(i64 noundef %5) #15
  %7 = and i64 %6, %3
  %8 = icmp ne i64 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EE9referenceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 !prof !145 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !151 {
  %3 = load ptr, ptr %0, align 8, !tbaa !125
  %4 = getelementptr inbounds i32, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: nounwind optsize
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef float @_ZN12MCOwnerTable9get_scoreEii(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 align 2 !prof !152 {
  %4 = sext i32 %2 to i64
  %5 = tail call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIiSaIiEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %4) #15
  %6 = load i32, ptr %5, align 4, !tbaa !140
  %7 = sitofp i32 %6 to float
  %8 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !131
  %10 = sitofp i32 %9 to float
  %11 = fdiv float %7, %10
  %12 = icmp eq i32 %1, 0
  %13 = fsub float 1.000000e+00, %11
  %14 = select i1 %12, float %11, float %13
  ret float %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN12MCOwnerTable5clearEv() local_unnamed_addr #0 align 2 !prof !153 {
  %1 = alloca i32, align 4
  %2 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv() #13
  %3 = tail call ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #15
  %4 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv() #13
  %5 = tail call ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #17
  store i32 0, ptr %1, align 4, !tbaa !140
  call void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %3, ptr %5, ptr noundef nonnull align 4 dereferenceable(4) %1) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #17
  %6 = call noundef ptr @_ZN12MCOwnerTable7get_MCOEv() #13
  %7 = getelementptr inbounds %class.MCOwnerTable, ptr %6, i64 0, i32 1
  store i32 0, ptr %7, align 8, !tbaa !131
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !154 {
  tail call void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE5beginEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !155 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #15
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorIiSaIiEE3endEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !156 {
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  call void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  %4 = load ptr, ptr %2, align 8
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN12MCOwnerTable9is_primedEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(40) %0) local_unnamed_addr #0 align 2 !prof !152 {
  %2 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv() #13
  %3 = getelementptr inbounds %class.MCOwnerTable, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !131
  %5 = icmp sgt i32 %4, 31
  ret i1 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !123 {
  tail call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !123 {
  tail call void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  tail call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !157 {
  tail call void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !158 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !157 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !159 {
  tail call void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !160 {
  ret ptr %0
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !127 {
  %2 = load ptr, ptr %0, align 8, !tbaa !125
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !161
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #13
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPiEvT_S1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !159 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !159 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !163

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #13
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !164 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !165 {
  tail call void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorIiE10deallocateEPim(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !165 {
  tail call void @_ZdlPv(ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !166 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !128
  %4 = load ptr, ptr %0, align 8, !tbaa !125
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 2
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4, !prof !167

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %6 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !161
  %8 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !128
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 2
  %14 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20, !prof !124

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !128
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #13
  store ptr %23, ptr %8, align 8, !tbaa !128
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !125
  %26 = load ptr, ptr %8, align 8, !tbaa !128
  %27 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str) #13
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #13
  %29 = getelementptr inbounds i32, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #13
          to label %40 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #17
  invoke void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #13
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_rethrow() #18
          to label %54 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %51

39:                                               ; preds = %37
  resume { ptr, i32 } %38

40:                                               ; preds = %24
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %42 = tail call noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %41) #15
  %43 = load ptr, ptr %6, align 8, !tbaa !161
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 2
  tail call void @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #13
  store ptr %28, ptr %0, align 8, !tbaa !125
  %48 = getelementptr inbounds i32, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !128
  %49 = getelementptr inbounds i32, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !161
  br label %50

50:                                               ; preds = %20, %40, %2
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #16
  unreachable

54:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !168 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !128
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6, !prof !169

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  invoke void @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #13
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !128
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !170 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %3 = tail call noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %2) #15
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !171 {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_(ptr noundef %0, i64 noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !172 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !149
  %6 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %7 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !173

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #19
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  %13 = tail call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  store i64 %13, ptr %5, align 8, !tbaa !149
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %15 = load i64, ptr %14, align 8, !tbaa !149
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %17 = call noundef i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !173

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !173

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorIiSaIiEE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #15
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !174 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !175

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #13
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 !prof !176 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !177 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #17
  store i64 2305843009213693951, ptr %2, align 8, !tbaa !149
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  store i64 %4, ptr %3, align 8, !tbaa !149
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  %6 = load i64, ptr %5, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #17
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !178 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !177 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !179 {
  %3 = load i64, ptr %1, align 8, !tbaa !149
  %4 = load i64, ptr %0, align 8, !tbaa !149
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !180
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !177 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !181 {
  ret i64 2305843009213693951
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !171 {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(ptr noundef %0, i64 noundef %1) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !171 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !182

4:                                                ; preds = %2
  tail call void @_ZSt10_ConstructIiJEEvPT_DpOT0_(ptr noundef %0) #13
  %5 = getelementptr inbounds i32, ptr %0, i64 1
  %6 = add i64 %1, -1
  %7 = tail call noundef ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr noundef nonnull %5, i64 noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %0) #13
  br label %8

8:                                                ; preds = %4, %2
  %9 = phi ptr [ %7, %4 ], [ %0, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructIiJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !171 {
  store i32 0, ptr %0, align 4, !tbaa !140
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !171 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !117
  %5 = tail call noundef i64 @_ZSt17__size_to_integerm(i64 noundef %1) #13
  call void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  %6 = call noundef ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !171 {
  %4 = icmp eq i64 %1, 0
  br i1 %4, label %7, label %5, !prof !182

5:                                                ; preds = %3
  %6 = getelementptr inbounds i32, ptr %0, i64 %1
  tail call void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi ptr [ %6, %5 ], [ %0, %3 ]
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt17__size_to_integerm(i64 noundef %0) local_unnamed_addr #3 comdat !prof !183 {
  ret i64 %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat !prof !171 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPiiEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !171 {
  tail call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat !prof !184 {
  %4 = load i32, ptr %2, align 4, !tbaa !140
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %10, label %6, !prof !185

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  store i32 %4, ptr %7, align 4, !tbaa !140
  %8 = getelementptr inbounds i32, ptr %7, i64 1
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %6, !prof !186, !llvm.loop !187

10:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !188 {
  %3 = load i64, ptr %0, align 8, !tbaa !149
  %4 = load i64, ptr %1, align 8, !tbaa !149
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !189
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !190 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !190 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !191

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 4611686018427387903
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #19
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #19
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 2
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #12
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !176 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #15
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #15
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #15
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #15
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !176 {
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %10, !prof !192

9:                                                ; preds = %4
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %2, ptr align 4 %0, i64 %7, i1 false)
  br label %10

10:                                               ; preds = %9, %4
  %11 = getelementptr inbounds i8, ptr %2, i64 %7
  ret ptr %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !193 {
  ret ptr %0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6bitsetILm441EE9referenceC2ERS0_m(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #3 comdat align 2 !prof !145 {
  %4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm(ptr noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %2) #15
  store ptr %4, ptr %0, align 8, !tbaa !147
  %5 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm(i64 noundef %2) #15
  %6 = getelementptr inbounds %"class.std::bitset<441>::reference", ptr %0, i64 0, i32 1
  store i64 %5, ptr %6, align 8, !tbaa !150
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !145 {
  %3 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm(i64 noundef %1) #15
  %4 = getelementptr inbounds [7 x i64], ptr %0, i64 0, i64 %3
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm(i64 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !194 {
  %2 = and i64 %0, 63
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm(i64 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !145 {
  %2 = lshr i64 %0, 6
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm(i64 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !145 {
  %2 = tail call noundef i64 @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm(i64 noundef %0) #15
  %3 = shl nuw i64 1, %2
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !195 {
  %3 = load ptr, ptr %1, align 8, !tbaa !117
  store ptr %3, ptr %0, align 8, !tbaa !196
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 comdat !prof !154 {
  tail call void @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_(ptr %0, ptr %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat !prof !154 {
  %4 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  %5 = alloca %"class.__gnu_cxx::__normal_iterator", align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #15
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #15
  %9 = load ptr, ptr %8, align 8, !tbaa !117
  call void @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_(ptr noundef %7, ptr noundef %9, ptr noundef nonnull align 4 dereferenceable(4) %2) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 comdat align 2 !prof !198 {
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { builtin optsize allocsize(0) }
attributes #13 = { optsize }
attributes #14 = { builtin nounwind optsize }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!115}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114}
!35 = !{ptr @_ZN12MCOwnerTable7get_MCOEv, ptr @_Znwm, i64 2}
!36 = !{ptr @_ZN12MCOwnerTable7get_MCOEv, ptr @_ZN12MCOwnerTableC2Ev, i64 2}
!37 = !{ptr @_ZN12MCOwnerTableC2Ev, ptr @_ZNSt6vectorIiSaIiEEC2Ev, i64 1}
!38 = !{ptr @_ZN12MCOwnerTableC2Ev, ptr @_ZN3SMP5MutexC1Ev, i64 1}
!39 = !{ptr @_ZN12MCOwnerTableC2Ev, ptr @_ZNSt6vectorIiSaIiEE6resizeEm, i64 1}
!40 = !{ptr @_ZNSt6vectorIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, i64 202367}
!41 = !{ptr @_ZNSt6vectorIiSaIiEE6resizeEm, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 2}
!42 = !{ptr @_ZNSt6vectorIiSaIiEE6resizeEm, ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, i64 1}
!43 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 9372256}
!44 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 9372256}
!45 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, i64 9372247}
!46 = !{ptr @_ZNSt6vectorIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!47 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 6098317}
!48 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZNKSt6bitsetILm441EE4sizeEv, i64 2695455912}
!49 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZN3SMP4LockD1Ev, i64 6098317}
!50 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZNSt6bitsetILm441EEixEm, i64 2689357595}
!51 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZNKSt6bitsetILm441EE9referencecvbEv, i64 2689357595}
!52 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZNSt6bitsetILm441EE9referenceD2Ev, i64 2689357595}
!53 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZNSt6vectorIiSaIiEEixEm, i64 578401115}
!54 = !{ptr @_ZNSt6bitsetILm441EEixEm, ptr @_ZNSt6bitsetILm441EE9referenceC2ERS0_m, i64 5564211925}
!55 = !{ptr @_ZNKSt6bitsetILm441EE9referencecvbEv, ptr @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm, i64 4812897662}
!56 = !{ptr @_ZN12MCOwnerTable5clearEv, ptr @_ZN12MCOwnerTable7get_MCOEv, i64 2910}
!57 = !{ptr @_ZN12MCOwnerTable5clearEv, ptr @_ZNSt6vectorIiSaIiEE5beginEv, i64 970}
!58 = !{ptr @_ZN12MCOwnerTable5clearEv, ptr @_ZNSt6vectorIiSaIiEE3endEv, i64 970}
!59 = !{ptr @_ZN12MCOwnerTable5clearEv, ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, i64 970}
!60 = !{ptr @_ZSt4fillIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, i64 977}
!61 = !{ptr @_ZNSt6vectorIiSaIiEE5beginEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 10455771}
!62 = !{ptr @_ZNSt6vectorIiSaIiEE3endEv, ptr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC2ERKS1_, i64 22957086}
!63 = !{ptr @_ZNSt12_Vector_baseIiSaIiEEC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, i64 202367}
!64 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSaIiEC2Ev, i64 202367}
!65 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC2Ev, i64 202367}
!66 = !{ptr @_ZNSaIiEC2Ev, ptr @_ZNSt15__new_allocatorIiEC2Ev, i64 202374}
!67 = !{ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, ptr @_ZSt8_DestroyIPiEvT_S1_, i64 69455494}
!68 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, i64 9372256}
!69 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @_ZNSt15__new_allocatorIiED2Ev, i64 9372247}
!70 = !{ptr @_ZNSt12_Vector_baseIiSaIiEED2Ev, ptr @__clang_call_terminate, i64 9}
!71 = !{ptr @_ZSt8_DestroyIPiEvT_S1_, ptr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_, i64 69455494}
!72 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim, ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, i64 10252448}
!73 = !{ptr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim, ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, i64 10252448}
!74 = !{ptr @_ZNSt15__new_allocatorIiE10deallocateEPim, ptr @_ZdlPv, i64 10252448}
!75 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 1}
!76 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 2}
!77 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 60083239}
!78 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E, i64 60083239}
!79 = !{ptr @_ZNSt6vectorIiSaIiEE15_M_erase_at_endEPi, ptr @__clang_call_terminate, i64 57}
!80 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv, i64 20504886}
!81 = !{ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, i64 20504886}
!82 = !{ptr @_ZSt27__uninitialized_default_n_aIPimiET_S1_T0_RSaIT1_E, ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_, i64 8}
!83 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE8max_sizeEv, i64 20504884}
!84 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorIiSaIiEE4sizeEv, i64 41009765}
!85 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt20__throw_length_errorPKc, i64 1}
!86 = !{ptr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 10252441}
!87 = !{ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, i64 10252449}
!88 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_, ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, i64 20504883}
!89 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, i64 20504893}
!90 = !{ptr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_, ptr @_ZSt3minImERKT_S2_S2_, i64 20504893}
!91 = !{ptr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_, ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, i64 20504893}
!92 = !{ptr @_ZNKSt15__new_allocatorIiE8max_sizeEv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 20504893}
!93 = !{ptr @_ZSt25__uninitialized_default_nIPimET_S1_T0_, ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, i64 8}
!94 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, ptr @_ZSt10_ConstructIiJEEvPT_DpOT0_, i64 7}
!95 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb1EE18__uninit_default_nIPimEET_S3_T0_, ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, i64 7}
!96 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt17__size_to_integerm, i64 8}
!97 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt19__iterator_categoryIPiENSt15iterator_traitsIT_E17iterator_categoryERKS2_, i64 8}
!98 = !{ptr @_ZSt6fill_nIPimiET_S1_T0_RKT1_, ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, i64 8}
!99 = !{ptr @_ZSt10__fill_n_aIPimiET_S1_T0_RKT1_St26random_access_iterator_tag, ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, i64 7}
!100 = !{ptr @_ZSt8__fill_aIPiiEvT_S1_RKT0_, ptr @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 8}
!101 = !{ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 10252449}
!102 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorIiE11_M_max_sizeEv, i64 10252449}
!103 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt28__throw_bad_array_new_lengthv, i64 2562}
!104 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_ZSt17__throw_bad_allocv, i64 2562}
!105 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10247325}
!106 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt12__niter_baseIPiET_S1_, i64 61514649}
!107 = !{ptr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_, ptr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E, i64 20504883}
!108 = !{ptr @_ZNSt6bitsetILm441EE9referenceC2ERS0_m, ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm, i64 5564211925}
!109 = !{ptr @_ZNSt6bitsetILm441EE9referenceC2ERS0_m, ptr @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm, i64 5564211925}
!110 = !{ptr @_ZNSt12_Base_bitsetILm7EE10_M_getwordEm, ptr @_ZNSt12_Base_bitsetILm7EE12_S_whichwordEm, i64 5564211925}
!111 = !{ptr @_ZNSt12_Base_bitsetILm7EE10_S_maskbitEm, ptr @_ZNSt12_Base_bitsetILm7EE11_S_whichbitEm, i64 5564211925}
!112 = !{ptr @_ZSt8__fill_aIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiEvT_S7_RKT0_, ptr @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, i64 977}
!113 = !{ptr @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv, i64 1954}
!114 = !{ptr @_ZSt9__fill_a1IPiSt6vectorIiSaIiEEiEvN9__gnu_cxx17__normal_iteratorIT_T0_EES8_RKT1_, ptr @_ZSt9__fill_a1IPiiEN9__gnu_cxx11__enable_ifIXsr11__is_scalarIT0_EE7__valueEvE6__typeET_S6_RKS3_, i64 977}
!115 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!116 = !{!"function_entry_count", i64 6101227}
!117 = !{!118, !118, i64 0}
!118 = !{!"any pointer", !119, i64 0}
!119 = !{!"omnipotent char", !120, i64 0}
!120 = !{!"Simple C++ TBAA"}
!121 = !{!"branch_weights", i32 2, i32 6101227}
!122 = !{!"function_entry_count", i64 1}
!123 = !{!"function_entry_count", i64 202367}
!124 = !{!"branch_weights", i32 2, i32 1}
!125 = !{!126, !118, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!127 = !{!"function_entry_count", i64 9372256}
!128 = !{!126, !118, i64 8}
!129 = !{!"function_entry_count", i64 6098317}
!130 = !{!"branch_weights", i32 1, i32 6098317}
!131 = !{!132, !136, i64 24}
!132 = !{!"_ZTS12MCOwnerTable", !133, i64 0, !136, i64 24, !137, i64 32}
!133 = !{!"_ZTSSt6vectorIiSaIiEE", !134, i64 0}
!134 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !135, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !126, i64 0}
!136 = !{!"int", !119, i64 0}
!137 = !{!"_ZTSN3SMP5MutexE", !138, i64 0}
!138 = !{!"long", !119, i64 0}
!139 = !{!"branch_weights", i32 578401158, i32 2110956641}
!140 = !{!136, !136, i64 0}
!141 = !{!"branch_weights", i32 -1611707815, i32 6098317}
!142 = distinct !{!142, !143}
!143 = !{!"llvm.loop.mustprogress"}
!144 = !{!"function_entry_count", i64 2695456114}
!145 = !{!"function_entry_count", i64 5564211925}
!146 = !{!"function_entry_count", i64 4812897662}
!147 = !{!148, !118, i64 0}
!148 = !{!"_ZTSNSt6bitsetILm441EE9referenceE", !118, i64 0, !138, i64 8}
!149 = !{!138, !138, i64 0}
!150 = !{!148, !138, i64 8}
!151 = !{!"function_entry_count", i64 643347597}
!152 = !{!"function_entry_count", i64 0}
!153 = !{!"function_entry_count", i64 970}
!154 = !{!"function_entry_count", i64 977}
!155 = !{!"function_entry_count", i64 10455771}
!156 = !{!"function_entry_count", i64 22957086}
!157 = !{!"function_entry_count", i64 202374}
!158 = !{!"function_entry_count", i64 7991268}
!159 = !{!"function_entry_count", i64 69455494}
!160 = !{!"function_entry_count", i64 97749716}
!161 = !{!126, !118, i64 16}
!162 = !{!"function_entry_count", i64 19624698}
!163 = !{!"branch_weights", i32 9372251, i32 10252449}
!164 = !{!"function_entry_count", i64 17161144}
!165 = !{!"function_entry_count", i64 10252448}
!166 = !{!"function_entry_count", i64 899000483}
!167 = !{!"branch_weights", i32 1, i32 2}
!168 = !{!"function_entry_count", i64 785340381}
!169 = !{!"branch_weights", i32 725257144, i32 60083239}
!170 = !{!"function_entry_count", i64 20504886}
!171 = !{!"function_entry_count", i64 8}
!172 = !{!"function_entry_count", i64 10252442}
!173 = !{!"branch_weights", i32 1, i32 10252443}
!174 = !{!"function_entry_count", i64 18041313}
!175 = !{!"branch_weights", i32 7788865, i32 10252450}
!176 = !{!"function_entry_count", i64 20504883}
!177 = !{!"function_entry_count", i64 20504893}
!178 = !{!"function_entry_count", i64 28293760}
!179 = !{!"function_entry_count", i64 46063954}
!180 = !{!"branch_weights", i32 1, i32 46063955}
!181 = !{!"function_entry_count", i64 30757342}
!182 = !{!"branch_weights", i32 1, i32 9}
!183 = !{!"function_entry_count", i64 10}
!184 = !{!"function_entry_count", i64 985}
!185 = !{!"branch_weights", i32 1, i32 985}
!186 = !{!"branch_weights", i32 985, i32 433393}
!187 = distinct !{!187, !143}
!188 = !{!"function_entry_count", i64 23031751}
!189 = !{!"branch_weights", i32 6217633, i32 16814120}
!190 = !{!"function_entry_count", i64 10252449}
!191 = !{!"branch_weights", i32 1, i32 2000}
!192 = !{!"branch_weights", i32 4082007, i32 16422878}
!193 = !{!"function_entry_count", i64 69303513}
!194 = !{!"function_entry_count", i64 11128423850}
!195 = !{!"function_entry_count", i64 33583715}
!196 = !{!197, !118, i64 0}
!197 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEE", !118, i64 0}
!198 = !{!"function_entry_count", i64 53747328}
