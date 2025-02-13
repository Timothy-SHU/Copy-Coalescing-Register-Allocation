; ModuleID = 'TTable.cpp'
source_filename = "TTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.TTable = type { %"class.std::vector", %"class.SMP::Mutex" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data" }
%"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.SMP::Mutex" = type { i64 }
%class.TTEntry = type { i64, float, i32 }
%"class.SMP::Lock" = type { ptr }

$_ZNSt6vectorI7TTEntrySaIS0_EEC2Ev = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EE6resizeEm = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EED2Ev = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EEC2Ev = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EE12_Vector_implC2Ev = comdat any

$_ZNSaI7TTEntryEC2Ev = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataC2Ev = comdat any

$_ZNSt15__new_allocatorI7TTEntryEC2Ev = comdat any

$_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EE15_M_erase_at_endEPS0_ = comdat any

$_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv = comdat any

$_ZSt27__uninitialized_default_n_aIP7TTEntrymS0_ET_S2_T0_RSaIT1_E = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNKSt6vectorI7TTEntrySaIS0_EE12_M_check_lenEmPKc = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EE11_M_allocateEm = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EE13_M_deallocateEPS0_m = comdat any

$__clang_call_terminate = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_ = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EE11_S_max_sizeERKS1_ = comdat any

$_ZNKSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv = comdat any

$_ZNSt16allocator_traitsISaI7TTEntryEE8max_sizeERKS1_ = comdat any

$_ZSt3minImERKT_S2_S2_ = comdat any

$_ZNKSt15__new_allocatorI7TTEntryE8max_sizeEv = comdat any

$_ZNKSt15__new_allocatorI7TTEntryE11_M_max_sizeEv = comdat any

$_ZSt25__uninitialized_default_nIP7TTEntrymET_S2_T0_ = comdat any

$_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7TTEntrymEET_S4_T0_ = comdat any

$_ZSt10_ConstructI7TTEntryJEEvPT_DpOT0_ = comdat any

$_ZSt8_DestroyIP7TTEntryEvT_S2_ = comdat any

$_ZNSt12_Destroy_auxILb1EE9__destroyIP7TTEntryEEvT_S4_ = comdat any

$_ZSt3maxImERKT_S2_S2_ = comdat any

$_ZNSt16allocator_traitsISaI7TTEntryEE8allocateERS1_m = comdat any

$_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv = comdat any

$_ZNSt16allocator_traitsISaI7TTEntryEE10deallocateERS1_PS0_m = comdat any

$_ZNSt15__new_allocatorI7TTEntryE10deallocateEPS0_m = comdat any

$_ZSt12__relocate_aIP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt14__relocate_a_1IP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_ = comdat any

$_ZSt12__niter_baseIP7TTEntryET_S2_ = comdat any

$_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_ = comdat any

$_ZNSt16allocator_traitsISaI7TTEntryEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_ = comdat any

$_ZNSt16allocator_traitsISaI7TTEntryEE7destroyIS0_EEvRS1_PT_ = comdat any

$_ZNSt15__new_allocatorI7TTEntryE9constructIS0_JS0_EEEvPT_DpOT0_ = comdat any

$_ZNSt15__new_allocatorI7TTEntryE7destroyIS0_EEvPT_ = comdat any

$_ZSt8_DestroyIP7TTEntryS0_EvT_S2_RSaIT0_E = comdat any

$_ZNSt12_Vector_baseI7TTEntrySaIS0_EED2Ev = comdat any

$_ZNSt15__new_allocatorI7TTEntryED2Ev = comdat any

$_ZNSt6vectorI7TTEntrySaIS0_EEixEm = comdat any

@_ZN6TTable8s_ttableE = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6TTableC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6TTableC2Ei
@_ZN7TTEntryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7TTEntryC2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull ptr @_ZN6TTable6get_TTEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %1 = load ptr, ptr @_ZN6TTable8s_ttableE, align 8, !tbaa !86
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8, !prof !90

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #13
  invoke void @_ZN6TTableC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 200000) #14
          to label %5 unwind label %6

5:                                                ; preds = %3
  store ptr %4, ptr @_ZN6TTable8s_ttableE, align 8, !tbaa !86
  br label %8

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %4) #15
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
define dso_local void @_ZN6TTableC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  tail call void @_ZNSt6vectorI7TTEntrySaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = getelementptr inbounds %class.TTable, ptr %0, i64 0, i32 1
  invoke void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %4 unwind label %7

4:                                                ; preds = %2
  %5 = sext i32 %1 to i64
  invoke void @_ZNSt6vectorI7TTEntrySaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %4
  ret void

7:                                                ; preds = %4, %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorI7TTEntrySaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7TTEntrySaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: optsize
declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7TTEntrySaIS0_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %3 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %4 = icmp ult i64 %3, %1
  %5 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br i1 %4, label %6, label %8, !prof !92

6:                                                ; preds = %2
  %7 = sub i64 %1, %5
  tail call void @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #14
  br label %13

8:                                                ; preds = %2
  %9 = icmp ugt i64 %5, %1
  br i1 %9, label %10, label %13

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !93
  %12 = getelementptr inbounds %class.TTEntry, ptr %11, i64 %1
  tail call void @_ZNSt6vectorI7TTEntrySaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %12) #16
  br label %13

13:                                               ; preds = %8, %10, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7TTEntrySaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIP7TTEntryS0_EvT_S2_RSaIT0_E(ptr noundef %2, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %5) #14
          to label %6 unwind label %7

6:                                                ; preds = %1
  tail call void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EEC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE12_Vector_implC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @_ZNSaI7TTEntryEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  tail call void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSaI7TTEntryEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @_ZNSt15__new_allocatorI7TTEntryEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataC2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7TTEntryEC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !91 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !97 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !96
  %4 = load ptr, ptr %0, align 8, !tbaa !93
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  ret i64 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %50, label %4, !prof !98

4:                                                ; preds = %2
  %5 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !99
  %8 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = ptrtoint ptr %7 to i64
  %11 = ptrtoint ptr %9 to i64
  %12 = sub i64 %10, %11
  %13 = ashr exact i64 %12, 4
  %14 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %15 = icmp ule i64 %5, %14
  tail call void @llvm.assume(i1 %15)
  %16 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %17 = sub i64 %16, %5
  %18 = icmp ule i64 %13, %17
  tail call void @llvm.assume(i1 %18)
  %19 = icmp ult i64 %13, %1
  br i1 %19, label %24, label %20, !prof !92

20:                                               ; preds = %4
  %21 = load ptr, ptr %8, align 8, !tbaa !96
  %22 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %23 = tail call noundef ptr @_ZSt27__uninitialized_default_n_aIP7TTEntrymS0_ET_S2_T0_RSaIT1_E(ptr noundef %21, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %22) #14
  store ptr %23, ptr %8, align 8, !tbaa !96
  br label %50

24:                                               ; preds = %4
  %25 = load ptr, ptr %0, align 8, !tbaa !93
  %26 = load ptr, ptr %8, align 8, !tbaa !96
  %27 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull @.str) #14
  %28 = tail call noundef ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %27) #14
  %29 = getelementptr inbounds %class.TTEntry, ptr %28, i64 %5
  %30 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %31 = invoke noundef ptr @_ZSt27__uninitialized_default_n_aIP7TTEntrymS0_ET_S2_T0_RSaIT1_E(ptr noundef %29, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %30) #14
          to label %40 unwind label %32

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  %35 = tail call ptr @__cxa_begin_catch(ptr %34) #18
  invoke void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %28, i64 noundef %27) #14
          to label %36 unwind label %37

36:                                               ; preds = %32
  invoke void @__cxa_rethrow() #19
          to label %54 unwind label %37

37:                                               ; preds = %36, %32
  %38 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %39 unwind label %51

39:                                               ; preds = %37
  resume { ptr, i32 } %38

40:                                               ; preds = %24
  %41 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %42 = tail call noundef ptr @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %25, ptr noundef %26, ptr noundef %28, ptr noundef nonnull align 1 dereferenceable(1) %41) #16
  %43 = load ptr, ptr %6, align 8, !tbaa !99
  %44 = ptrtoint ptr %43 to i64
  %45 = ptrtoint ptr %25 to i64
  %46 = sub i64 %44, %45
  %47 = ashr exact i64 %46, 4
  tail call void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %25, i64 noundef %47) #14
  store ptr %28, ptr %0, align 8, !tbaa !93
  %48 = getelementptr inbounds %class.TTEntry, ptr %29, i64 %1
  store ptr %48, ptr %8, align 8, !tbaa !96
  %49 = getelementptr inbounds %class.TTEntry, ptr %28, i64 %27
  store ptr %49, ptr %6, align 8, !tbaa !99
  br label %50

50:                                               ; preds = %20, %40, %2
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  tail call void @__clang_call_terminate(ptr %53) #17
  unreachable

54:                                               ; preds = %36
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7TTEntrySaIS0_EE15_M_erase_at_endEPS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !96
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  invoke void @_ZSt8_DestroyIP7TTEntryS0_EvT_S2_RSaIT0_E(ptr noundef %1, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %7) #14
          to label %8 unwind label %10

8:                                                ; preds = %6
  store ptr %1, ptr %3, align 8, !tbaa !96
  br label %9

9:                                                ; preds = %8, %2
  ret void

10:                                               ; preds = %6
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !100 {
  %2 = tail call noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %3 = tail call noundef i64 @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %2) #16
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__uninitialized_default_n_aIP7TTEntrymS0_ET_S2_T0_RSaIT1_E(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !91 {
  %4 = tail call noundef ptr @_ZSt25__uninitialized_default_nIP7TTEntrymET_S2_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !101 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE12_M_check_lenEmPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !102
  %6 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %7 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %8 = sub i64 %6, %7
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %11, !prof !98

10:                                               ; preds = %3
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef %2) #20
  unreachable

11:                                               ; preds = %3
  %12 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #18
  %13 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  store i64 %13, ptr %5, align 8, !tbaa !102
  %14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
  %15 = load i64, ptr %14, align 8, !tbaa !102
  %16 = add i64 %15, %12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #18
  %17 = call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %22, label %19, !prof !98

19:                                               ; preds = %11
  %20 = call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %21 = icmp ugt i64 %16, %20
  br i1 %21, label %22, label %24, !prof !98

22:                                               ; preds = %19, %11
  %23 = call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i64 [ %23, %22 ], [ %16, %19 ]
  ret i64 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE11_M_allocateEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %6, label %4, !prof !98

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNSt16allocator_traitsISaI7TTEntryEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) #14
  br label %6

6:                                                ; preds = %2, %4
  %7 = phi ptr [ %5, %4 ], [ null, %2 ]
  ret ptr %7
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !92

5:                                                ; preds = %3
  tail call void @_ZNSt16allocator_traitsISaI7TTEntryEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %1, i64 noundef %2) #14
  br label %6

6:                                                ; preds = %5, %3
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat align 2 !prof !91 {
  %5 = tail call noundef ptr @_ZSt12__relocate_aIP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !100 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #18
  store i64 576460752303423487, ptr %2, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #18
  %4 = tail call noundef i64 @_ZNSt16allocator_traitsISaI7TTEntryEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  store i64 %4, ptr %3, align 8, !tbaa !102
  %5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  %6 = load i64, ptr %5, align 8, !tbaa !102
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #18
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 1 dereferenceable(1) ptr @_ZNKSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !100 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt16allocator_traitsISaI7TTEntryEE8max_sizeERKS1_(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !100 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI7TTEntryE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3minImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !104 {
  %3 = load i64, ptr %1, align 8, !tbaa !102
  %4 = load i64, ptr %0, align 8, !tbaa !102
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !105
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7TTEntryE8max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !100 {
  %2 = tail call noundef i64 @_ZNKSt15__new_allocatorI7TTEntryE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  ret i64 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt15__new_allocatorI7TTEntryE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #3 comdat align 2 !prof !106 {
  ret i64 576460752303423487
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt25__uninitialized_default_nIP7TTEntrymET_S2_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat !prof !91 {
  %3 = tail call noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7TTEntrymEET_S4_T0_(ptr noundef %0, i64 noundef %1) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7TTEntrymEET_S4_T0_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %16, label %4, !prof !107

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %0, %2 ]
  %6 = phi i64 [ %8, %7 ], [ %1, %2 ]
  invoke void @_ZSt10_ConstructI7TTEntryJEEvPT_DpOT0_(ptr noundef %5) #14
          to label %7 unwind label %11

7:                                                ; preds = %4
  %8 = add i64 %6, -1
  %9 = getelementptr inbounds %class.TTEntry, ptr %5, i64 1
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %16, label %4, !prof !108, !llvm.loop !109

11:                                               ; preds = %4
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  %14 = tail call ptr @__cxa_begin_catch(ptr %13) #18
  invoke void @_ZSt8_DestroyIP7TTEntryEvT_S2_(ptr noundef %0, ptr noundef %5) #14
          to label %15 unwind label %18

15:                                               ; preds = %11
  invoke void @__cxa_rethrow() #19
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
  tail call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt10_ConstructI7TTEntryJEEvPT_DpOT0_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !111 {
  tail call void @_ZN7TTEntryC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7TTEntryEvT_S2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !95 {
  tail call void @_ZNSt12_Destroy_auxILb1EE9__destroyIP7TTEntryEEvT_S4_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Destroy_auxILb1EE9__destroyIP7TTEntryEEvT_S4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: noreturn optsize
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZSt3maxImERKT_S2_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat !prof !112 {
  %3 = load i64, ptr %0, align 8, !tbaa !102
  %4 = load i64, ptr %1, align 8, !tbaa !102
  %5 = icmp ult i64 %3, %4
  %6 = select i1 %5, ptr %1, ptr %0, !prof !113
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt16allocator_traitsISaI7TTEntryEE8allocateERS1_m(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %3 = tail call noundef ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef null) #14
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !91 {
  %4 = tail call noundef i64 @_ZNKSt15__new_allocatorI7TTEntryE11_M_max_sizeEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #16
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %10, !prof !114

6:                                                ; preds = %3
  %7 = icmp ugt i64 %1, 1152921504606846975
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #20
  unreachable

9:                                                ; preds = %6
  tail call void @_ZSt17__throw_bad_allocv() #20
  unreachable

10:                                               ; preds = %3
  %11 = shl i64 %1, 4
  %12 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %11) #13
  ret ptr %12
}

; Function Attrs: noreturn optsize
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: noreturn optsize
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7TTEntryEE10deallocateERS1_PS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !95 {
  tail call void @_ZNSt15__new_allocatorI7TTEntryE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7TTEntryE10deallocateEPS0_m(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat align 2 !prof !95 {
  tail call void @_ZdlPv(ptr noundef %1) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__relocate_aIP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !91 {
  %5 = tail call noundef ptr @_ZSt12__niter_baseIP7TTEntryET_S2_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIP7TTEntryET_S2_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIP7TTEntryET_S2_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__relocate_a_1IP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__relocate_a_1IP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #3 comdat !prof !91 {
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %12, label %6, !prof !115

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %4 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %4 ]
  tail call void @_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_(ptr noundef %7, ptr noundef %8, ptr noundef nonnull align 1 dereferenceable(1) %3) #16
  %9 = getelementptr inbounds %class.TTEntry, ptr %8, i64 1
  %10 = getelementptr inbounds %class.TTEntry, ptr %7, i64 1
  %11 = icmp eq ptr %9, %1
  br i1 %11, label %12, label %6, !prof !116, !llvm.loop !117

12:                                               ; preds = %6, %4
  %13 = phi ptr [ %2, %4 ], [ %10, %6 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIP7TTEntryET_S2_(ptr noundef %0) local_unnamed_addr #3 comdat !prof !118 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_(ptr noalias noundef %0, ptr noalias noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat !prof !95 {
  tail call void @_ZNSt16allocator_traitsISaI7TTEntryEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #16
  tail call void @_ZNSt16allocator_traitsISaI7TTEntryEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7TTEntryEE9constructIS0_JS0_EEEvRS1_PT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 !prof !95 {
  tail call void @_ZNSt15__new_allocatorI7TTEntryE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt16allocator_traitsISaI7TTEntryEE7destroyIS0_EEvRS1_PT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !95 {
  tail call void @_ZNSt15__new_allocatorI7TTEntryE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7TTEntryE9constructIS0_JS0_EEEvPT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 !prof !95 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !119
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7TTEntryE7destroyIS0_EEvPT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIP7TTEntryS0_EvT_S2_RSaIT0_E(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !95 {
  tail call void @_ZSt8_DestroyIP7TTEntryEvT_S2_(ptr noundef %0, ptr noundef %1) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !95 {
  %2 = load ptr, ptr %0, align 8, !tbaa !93
  %3 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !99
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %2 to i64
  %7 = sub i64 %5, %6
  %8 = ashr exact i64 %7, 4
  invoke void @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE13_M_deallocateEPS0_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2, i64 noundef %8) #14
          to label %9 unwind label %10

9:                                                ; preds = %1
  tail call void @_ZNSt15__new_allocatorI7TTEntryED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt15__new_allocatorI7TTEntryED2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #3 comdat align 2 !prof !95 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = and i64 %1, 4294967295
  %7 = urem i64 %6, %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %8 = getelementptr inbounds %class.TTable, ptr %0, i64 0, i32 1
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  store i64 %1, ptr %9, align 8, !tbaa !127
  %10 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #14
          to label %11 unwind label %19

11:                                               ; preds = %3
  %12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %13 = getelementptr inbounds %class.TTEntry, ptr %12, i64 0, i32 2
  store i32 %10, ptr %13, align 4, !tbaa !129
  %14 = invoke noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #14
          to label %15 unwind label %19

15:                                               ; preds = %11
  %16 = sitofp i32 %14 to float
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %18 = getelementptr inbounds %class.TTEntry, ptr %17, i64 0, i32 1
  store float %16, ptr %18, align 8, !tbaa !130
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void

19:                                               ; preds = %11, %3
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !131 {
  %3 = load ptr, ptr %0, align 8, !tbaa !93
  %4 = getelementptr inbounds %class.TTEntry, ptr %3, i64 %1
  ret ptr %4
}

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #9

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN6TTable4syncEyP7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = tail call noundef i64 @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #16
  %6 = and i64 %1, 4294967295
  %7 = urem i64 %6, %5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %8 = getelementptr inbounds %class.TTable, ptr %0, i64 0, i32 1
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %8) #14
  %9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %10 = load i64, ptr %9, align 8, !tbaa !127
  %11 = icmp eq i64 %10, %1
  br i1 %11, label %12, label %30, !prof !132

12:                                               ; preds = %3
  %13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %14 = getelementptr inbounds %class.TTEntry, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !129
  %16 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %2) #14
          to label %17 unwind label %28

17:                                               ; preds = %12
  %18 = icmp sgt i32 %15, %16
  br i1 %18, label %19, label %30, !prof !133

19:                                               ; preds = %17
  %20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %21 = getelementptr inbounds %class.TTEntry, ptr %20, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !129
  invoke void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %22) #14
          to label %23 unwind label %28

23:                                               ; preds = %19
  %24 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %7) #16
  %25 = getelementptr inbounds %class.TTEntry, ptr %24, i64 0, i32 1
  %26 = load float, ptr %25, align 8, !tbaa !130
  %27 = fptosi float %26 to i32
  invoke void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %27) #14
          to label %30 unwind label %28

28:                                               ; preds = %23, %19, %12
  %29 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  resume { ptr, i32 } %29

30:                                               ; preds = %17, %23, %3
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7TTEntryC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0) unnamed_addr #10 align 2 !prof !111 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { builtin optsize allocsize(0) }
attributes #14 = { optsize }
attributes #15 = { builtin nounwind optsize }
attributes #16 = { nounwind optsize }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { noreturn optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!84}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!36 = !{ptr @_ZN6TTable6get_TTEv, ptr @_Znwm, i64 2}
!37 = !{ptr @_ZN6TTable6get_TTEv, ptr @_ZN6TTableC2Ei, i64 2}
!38 = !{ptr @_ZN6TTableC2Ei, ptr @_ZNSt6vectorI7TTEntrySaIS0_EEC2Ev, i64 1}
!39 = !{ptr @_ZN6TTableC2Ei, ptr @_ZN3SMP5MutexC1Ev, i64 1}
!40 = !{ptr @_ZN6TTableC2Ei, ptr @_ZNSt6vectorI7TTEntrySaIS0_EE6resizeEm, i64 1}
!41 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EEC2Ev, i64 1}
!42 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE6resizeEm, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv, i64 2}
!43 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE6resizeEm, ptr @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm, i64 1}
!44 = !{ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EEC2Ev, ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE12_Vector_implC2Ev, i64 1}
!45 = !{ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE12_Vector_implC2Ev, ptr @_ZNSaI7TTEntryEC2Ev, i64 1}
!46 = !{ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE12_Vector_implC2Ev, ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataC2Ev, i64 1}
!47 = !{ptr @_ZNSaI7TTEntryEC2Ev, ptr @_ZNSt15__new_allocatorI7TTEntryEC2Ev, i64 1}
!48 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv, i64 1}
!49 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv, i64 2}
!50 = !{ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv, ptr @_ZNKSt12_Vector_baseI7TTEntrySaIS0_EE19_M_get_Tp_allocatorEv, i64 4}
!51 = !{ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv, ptr @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_max_sizeERKS1_, i64 4}
!52 = !{ptr @_ZSt27__uninitialized_default_n_aIP7TTEntrymS0_ET_S2_T0_RSaIT1_E, ptr @_ZSt25__uninitialized_default_nIP7TTEntrymET_S2_T0_, i64 1}
!53 = !{ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE8max_sizeEv, i64 1}
!54 = !{ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE12_M_check_lenEmPKc, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv, i64 4}
!55 = !{ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE12_M_check_lenEmPKc, ptr @_ZSt3maxImERKT_S2_S2_, i64 1}
!56 = !{ptr @_ZNSt12_Vector_baseI7TTEntrySaIS0_EE11_M_allocateEm, ptr @_ZNSt16allocator_traitsISaI7TTEntryEE8allocateERS1_m, i64 1}
!57 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_, ptr @_ZSt12__relocate_aIP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_, i64 1}
!58 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_max_sizeERKS1_, ptr @_ZNSt16allocator_traitsISaI7TTEntryEE8max_sizeERKS1_, i64 4}
!59 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE11_S_max_sizeERKS1_, ptr @_ZSt3minImERKT_S2_S2_, i64 4}
!60 = !{ptr @_ZNSt16allocator_traitsISaI7TTEntryEE8max_sizeERKS1_, ptr @_ZNKSt15__new_allocatorI7TTEntryE8max_sizeEv, i64 4}
!61 = !{ptr @_ZNKSt15__new_allocatorI7TTEntryE8max_sizeEv, ptr @_ZNKSt15__new_allocatorI7TTEntryE11_M_max_sizeEv, i64 4}
!62 = !{ptr @_ZSt25__uninitialized_default_nIP7TTEntrymET_S2_T0_, ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7TTEntrymEET_S4_T0_, i64 1}
!63 = !{ptr @_ZNSt27__uninitialized_default_n_1ILb0EE18__uninit_default_nIP7TTEntrymEET_S4_T0_, ptr @_ZSt10_ConstructI7TTEntryJEEvPT_DpOT0_, i64 91231}
!64 = !{ptr @_ZSt10_ConstructI7TTEntryJEEvPT_DpOT0_, ptr @_ZN7TTEntryC2Ev, i64 200000}
!65 = !{ptr @_ZNSt16allocator_traitsISaI7TTEntryEE8allocateERS1_m, ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv, i64 1}
!66 = !{ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv, ptr @_ZNKSt15__new_allocatorI7TTEntryE11_M_max_sizeEv, i64 1}
!67 = !{ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv, ptr @_Znwm, i64 1}
!68 = !{ptr @_ZSt12__relocate_aIP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt12__niter_baseIP7TTEntryET_S2_, i64 3}
!69 = !{ptr @_ZSt12__relocate_aIP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt14__relocate_a_1IP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_, i64 1}
!70 = !{ptr @_ZSt14__relocate_a_1IP7TTEntryS1_SaIS0_EET0_T_S4_S3_RT1_, ptr @_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_, i64 1}
!71 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv, i64 38472780}
!72 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!73 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm, i64 115418230}
!74 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 38472780}
!75 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZNK7UCTNode13get_blackwinsEv, i64 38472743}
!76 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!77 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZNKSt6vectorI7TTEntrySaIS0_EE4sizeEv, i64 38472780}
!78 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!79 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZNSt6vectorI7TTEntrySaIS0_EEixEm, i64 75524020}
!80 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 35928074}
!81 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN7UCTNode10set_visitsEi, i64 561583}
!82 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN7UCTNode13set_blackwinsEi, i64 561583}
!83 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!84 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!85 = !{!"function_entry_count", i64 76945560}
!86 = !{!87, !87, i64 0}
!87 = !{!"any pointer", !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C++ TBAA"}
!90 = !{!"branch_weights", i32 2, i32 76945560}
!91 = !{!"function_entry_count", i64 1}
!92 = !{!"branch_weights", i32 2, i32 1}
!93 = !{!94, !87, i64 0}
!94 = !{!"_ZTSNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!95 = !{!"function_entry_count", i64 0}
!96 = !{!94, !87, i64 8}
!97 = !{!"function_entry_count", i64 76945567}
!98 = !{!"branch_weights", i32 1, i32 2}
!99 = !{!94, !87, i64 16}
!100 = !{!"function_entry_count", i64 4}
!101 = !{!"function_entry_count", i64 2}
!102 = !{!103, !103, i64 0}
!103 = !{!"long", !88, i64 0}
!104 = !{!"function_entry_count", i64 46063954}
!105 = !{!"branch_weights", i32 1, i32 46063955}
!106 = !{!"function_entry_count", i64 5}
!107 = !{!"branch_weights", i32 1, i32 127}
!108 = !{!"branch_weights", i32 127, i32 12799937}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!"function_entry_count", i64 200000}
!112 = !{!"function_entry_count", i64 23031751}
!113 = !{!"branch_weights", i32 6217633, i32 16814120}
!114 = !{!"branch_weights", i32 1, i32 2000}
!115 = !{!"branch_weights", i32 1, i32 1}
!116 = !{!"branch_weights", i32 1, i32 0}
!117 = distinct !{!117, !110}
!118 = !{!"function_entry_count", i64 3}
!119 = !{i64 0, i64 8, !120, i64 8, i64 4, !122, i64 12, i64 4, !124}
!120 = !{!121, !121, i64 0}
!121 = !{!"long long", !88, i64 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !88, i64 0}
!124 = !{!125, !125, i64 0}
!125 = !{!"int", !88, i64 0}
!126 = !{!"function_entry_count", i64 38472780}
!127 = !{!128, !121, i64 0}
!128 = !{!"_ZTS7TTEntry", !121, i64 0, !123, i64 8, !125, i64 12}
!129 = !{!128, !125, i64 12}
!130 = !{!128, !123, i64 8}
!131 = !{!"function_entry_count", i64 190942361}
!132 = !{!"branch_weights", i32 35928076, i32 2544706}
!133 = !{!"branch_weights", i32 561584, i32 35366493}
