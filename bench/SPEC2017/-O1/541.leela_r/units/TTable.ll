; ModuleID = 'TTable.cpp'
source_filename = "TTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.TTable = type { %"class.std::vector", %"class.SMP::Mutex" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl" }
%"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl" = type { %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data" }
%"class.SMP::Mutex" = type { i64 }
%class.TTEntry = type { i64, float, i32 }
%"class.SMP::Lock" = type { ptr }

$_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv = comdat any

@_ZN6TTable8s_ttableE = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN6TTableC1Ei = dso_local unnamed_addr alias void (ptr, i32), ptr @_ZN6TTableC2Ei
@_ZN7TTEntryC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN7TTEntryC2Ev

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef ptr @_ZN6TTable6get_TTEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !51 {
  %1 = load ptr, ptr @_ZN6TTable8s_ttableE, align 8, !tbaa !52
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8, !prof !56

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #14
  invoke void @_ZN6TTableC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %4, i32 noundef 200000)
          to label %5 unwind label %6, !prof !57

5:                                                ; preds = %3
  store ptr %4, ptr @_ZN6TTable8s_ttableE, align 8, !tbaa !52
  br label %8

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %4) #15
  resume { ptr, i32 } %7

8:                                                ; preds = %5, %0
  %9 = load ptr, ptr @_ZN6TTable8s_ttableE, align 8, !tbaa !52
  ret ptr %9
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN6TTableC2Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %class.TTable, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %5 unwind label %23, !prof !57

5:                                                ; preds = %2
  %6 = sext i32 %1 to i64
  %7 = load ptr, ptr %3, align 8, !tbaa !59
  %8 = load ptr, ptr %0, align 8, !tbaa !61
  %9 = ptrtoint ptr %7 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = ashr exact i64 %11, 4
  %13 = icmp ult i64 %12, %6
  br i1 %13, label %14, label %16, !prof !57

14:                                               ; preds = %5
  %15 = sub nsw i64 %6, %12
  invoke void @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %15)
          to label %22 unwind label %23, !prof !57

16:                                               ; preds = %5
  %17 = icmp ugt i64 %12, %6
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = getelementptr inbounds %class.TTEntry, ptr %8, i64 %6
  %20 = icmp eq ptr %7, %19
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store ptr %19, ptr %3, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %21, %18, %16, %14
  ret void

23:                                               ; preds = %14, %2
  %24 = landingpad { ptr, i32 }
          cleanup
  %25 = load ptr, ptr %0, align 8, !tbaa !61
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void @_ZdlPv(ptr noundef %25) #15
  br label %28

28:                                               ; preds = %23, %27
  resume { ptr, i32 } %24
}

declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6TTable6updateEyPK7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %0, align 8, !tbaa !61
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = and i64 %1, 4294967295
  %13 = urem i64 %12, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %14 = getelementptr inbounds %class.TTable, ptr %0, i64 0, i32 1
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = load ptr, ptr %0, align 8, !tbaa !61
  %16 = getelementptr inbounds %class.TTEntry, ptr %15, i64 %13
  store i64 %1, ptr %16, align 8, !tbaa !63
  %17 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %18 unwind label %26, !prof !68

18:                                               ; preds = %3
  %19 = load ptr, ptr %0, align 8, !tbaa !61
  %20 = getelementptr inbounds %class.TTEntry, ptr %19, i64 %13, i32 2
  store i32 %17, ptr %20, align 4, !tbaa !69
  %21 = invoke noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %22 unwind label %26, !prof !68

22:                                               ; preds = %18
  %23 = sitofp i32 %21 to float
  %24 = load ptr, ptr %0, align 8, !tbaa !61
  %25 = getelementptr inbounds %class.TTEntry, ptr %24, i64 %13, i32 1
  store float %23, ptr %25, align 8, !tbaa !70
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void

26:                                               ; preds = %18, %3
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

declare noundef i32 @_ZNK7UCTNode13get_blackwinsEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN6TTable4syncEyP7UCTNode(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %4 = alloca %"class.SMP::Lock", align 8
  %5 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %0, align 8, !tbaa !61
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = and i64 %1, 4294967295
  %13 = urem i64 %12, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %14 = getelementptr inbounds %class.TTable, ptr %0, i64 0, i32 1
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %14)
  %15 = load ptr, ptr %0, align 8, !tbaa !61
  %16 = getelementptr inbounds %class.TTEntry, ptr %15, i64 %13
  %17 = load i64, ptr %16, align 8, !tbaa !63
  %18 = icmp eq i64 %17, %1
  br i1 %18, label %19, label %36, !prof !71

19:                                               ; preds = %3
  %20 = getelementptr inbounds %class.TTEntry, ptr %15, i64 %13, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !69
  %22 = invoke noundef i32 @_ZNK7UCTNode10get_visitsEv(ptr noundef nonnull align 8 dereferenceable(56) %2)
          to label %23 unwind label %34, !prof !72

23:                                               ; preds = %19
  %24 = icmp sgt i32 %21, %22
  br i1 %24, label %25, label %36, !prof !73

25:                                               ; preds = %23
  %26 = load ptr, ptr %0, align 8, !tbaa !61
  %27 = getelementptr inbounds %class.TTEntry, ptr %26, i64 %13, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !69
  invoke void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %28)
          to label %29 unwind label %34, !prof !74

29:                                               ; preds = %25
  %30 = load ptr, ptr %0, align 8, !tbaa !61
  %31 = getelementptr inbounds %class.TTEntry, ptr %30, i64 %13, i32 1
  %32 = load float, ptr %31, align 8, !tbaa !70
  %33 = fptosi float %32 to i32
  invoke void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef %33)
          to label %36 unwind label %34, !prof !74

34:                                               ; preds = %29, %25, %19
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  resume { ptr, i32 } %35

36:                                               ; preds = %23, %29, %3
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret void
}

declare void @_ZN7UCTNode10set_visitsEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #4

declare void @_ZN7UCTNode13set_blackwinsEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN7TTEntryC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0) unnamed_addr #8 align 2 !prof !75 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %54, label %4, !prof !76

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = load ptr, ptr %0, align 8, !tbaa !61
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 4
  %12 = getelementptr inbounds %"struct.std::_Vector_base<TTEntry, std::allocator<TTEntry>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !77
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 4
  %17 = icmp ult i64 %11, 576460752303423488
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 576460752303423487
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %25, label %21, !prof !57

21:                                               ; preds = %4
  %22 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %22, i1 false), !tbaa !78
  %23 = shl nuw i64 %1, 4
  %24 = getelementptr i8, ptr %6, i64 %23
  store ptr %24, ptr %5, align 8, !tbaa !59
  br label %54

25:                                               ; preds = %4
  %26 = icmp ult i64 %18, %1
  br i1 %26, label %27, label %28, !prof !76

27:                                               ; preds = %25
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #17
  unreachable

28:                                               ; preds = %25
  %29 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %30 = add i64 %29, %11
  %31 = icmp ult i64 %30, %11
  %32 = tail call i64 @llvm.umin.i64(i64 %30, i64 576460752303423487)
  %33 = select i1 %31, i64 576460752303423487, i64 %32, !prof !76
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35, !prof !76

35:                                               ; preds = %28
  %36 = tail call noundef ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %33, ptr noundef null)
  br label %37

37:                                               ; preds = %28, %35
  %38 = phi ptr [ %36, %35 ], [ null, %28 ]
  %39 = getelementptr %class.TTEntry, ptr %38, i64 %11
  %40 = shl nuw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 %40, i1 false), !tbaa !78
  %41 = icmp eq ptr %7, %6
  br i1 %41, label %48, label %42, !prof !57

42:                                               ; preds = %37, %42
  %43 = phi ptr [ %46, %42 ], [ %38, %37 ]
  %44 = phi ptr [ %45, %42 ], [ %7, %37 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull align 8 dereferenceable(16) %44, i64 16, i1 false), !tbaa.struct !79, !alias.scope !83
  %45 = getelementptr inbounds %class.TTEntry, ptr %44, i64 1
  %46 = getelementptr inbounds %class.TTEntry, ptr %43, i64 1
  %47 = icmp eq ptr %45, %6
  br i1 %47, label %48, label %42, !prof !57, !llvm.loop !87

48:                                               ; preds = %42, %37
  %49 = icmp eq ptr %7, null
  br i1 %49, label %51, label %50, !prof !57

50:                                               ; preds = %48
  tail call void @_ZdlPv(ptr noundef %7) #15
  br label %51

51:                                               ; preds = %48, %50
  store ptr %38, ptr %0, align 8, !tbaa !61
  %52 = getelementptr inbounds %class.TTEntry, ptr %39, i64 %1
  store ptr %52, ptr %5, align 8, !tbaa !59
  %53 = getelementptr inbounds %class.TTEntry, ptr %38, i64 %33
  store ptr %53, ptr %12, align 8, !tbaa !77
  br label %54

54:                                               ; preds = %21, %51, %2
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !58 {
  %4 = icmp ugt i64 %1, 576460752303423487
  br i1 %4, label %5, label %9, !prof !76

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 1152921504606846975
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #17
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #17
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 4
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #14
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

attributes #0 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }
attributes #17 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!50}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 256142274181}
!8 = !{!"MaxCount", i64 7844141798}
!9 = !{!"MaxInternalCount", i64 7547852578}
!10 = !{!"MaxFunctionCount", i64 7844141798}
!11 = !{!"NumCounts", i64 2880}
!12 = !{!"NumFunctions", i64 415}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 7844141798, i32 1}
!18 = !{i32 100000, i64 6538040572, i32 4}
!19 = !{i32 200000, i64 5601060928, i32 8}
!20 = !{i32 300000, i64 4731748263, i32 13}
!21 = !{i32 400000, i64 3429140892, i32 19}
!22 = !{i32 500000, i64 2689357797, i32 28}
!23 = !{i32 600000, i64 2030175252, i32 39}
!24 = !{i32 700000, i64 1513066108, i32 53}
!25 = !{i32 800000, i64 981329770, i32 73}
!26 = !{i32 900000, i64 723674647, i32 104}
!27 = !{i32 950000, i64 415336410, i32 129}
!28 = !{i32 990000, i64 64860573, i32 187}
!29 = !{i32 999000, i64 6034043, i32 304}
!30 = !{i32 999900, i64 678637, i32 400}
!31 = !{i32 999990, i64 50119, i32 498}
!32 = !{i32 999999, i64 5214, i32 613}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!35 = !{ptr @_ZN6TTable6get_TTEv, ptr @_Znwm, i64 1}
!36 = !{ptr @_ZN6TTable6get_TTEv, ptr @_ZN6TTableC2Ei, i64 1}
!37 = !{ptr @_ZN6TTableC2Ei, ptr @_ZN3SMP5MutexC1Ev, i64 1}
!38 = !{ptr @_ZN6TTableC2Ei, ptr @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm, i64 1}
!39 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!40 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 38472780}
!41 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZNK7UCTNode13get_blackwinsEv, i64 38472780}
!42 = !{ptr @_ZN6TTable6updateEyPK7UCTNode, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!43 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 38472780}
!44 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZNK7UCTNode10get_visitsEv, i64 35928075}
!45 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN7UCTNode10set_visitsEi, i64 561583}
!46 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN7UCTNode13set_blackwinsEi, i64 561583}
!47 = !{ptr @_ZN6TTable4syncEyP7UCTNode, ptr @_ZN3SMP4LockD1Ev, i64 38472780}
!48 = !{ptr @_ZNSt6vectorI7TTEntrySaIS0_EE17_M_default_appendEm, ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv, i64 1}
!49 = !{ptr @_ZNSt15__new_allocatorI7TTEntryE8allocateEmPKv, ptr @_Znwm, i64 1}
!50 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!51 = !{!"function_entry_count", i64 76945560}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C++ TBAA"}
!56 = !{!"branch_weights", i32 1, i32 76945559}
!57 = !{!"branch_weights", i32 1, i32 0}
!58 = !{!"function_entry_count", i64 1}
!59 = !{!60, !53, i64 8}
!60 = !{!"_ZTSNSt12_Vector_baseI7TTEntrySaIS0_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!61 = !{!60, !53, i64 0}
!62 = !{!"function_entry_count", i64 38472780}
!63 = !{!64, !65, i64 0}
!64 = !{!"_ZTS7TTEntry", !65, i64 0, !66, i64 8, !67, i64 12}
!65 = !{!"long long", !54, i64 0}
!66 = !{!"float", !54, i64 0}
!67 = !{!"int", !54, i64 0}
!68 = !{!"branch_weights", i32 38472780, i32 0}
!69 = !{!64, !67, i64 12}
!70 = !{!64, !66, i64 8}
!71 = !{!"branch_weights", i32 35928075, i32 2544705}
!72 = !{!"branch_weights", i32 35928075, i32 0}
!73 = !{!"branch_weights", i32 561583, i32 35366492}
!74 = !{!"branch_weights", i32 561583, i32 0}
!75 = !{!"function_entry_count", i64 0}
!76 = !{!"branch_weights", i32 0, i32 1}
!77 = !{!60, !53, i64 16}
!78 = !{!54, !54, i64 0}
!79 = !{i64 0, i64 8, !80, i64 8, i64 4, !81, i64 12, i64 4, !82}
!80 = !{!65, !65, i64 0}
!81 = !{!66, !66, i64 0}
!82 = !{!67, !67, i64 0}
!83 = !{!84, !86}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_"}
!86 = distinct !{!86, !85, !"_ZSt19__relocate_object_aI7TTEntryS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!87 = distinct !{!87, !88, !89}
!88 = !{!"llvm.loop.mustprogress"}
!89 = !{!"llvm.loop.unroll.disable"}
