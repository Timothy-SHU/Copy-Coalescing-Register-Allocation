; ModuleID = 'MCOTable.cpp'
source_filename = "MCOTable.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%class.MCOwnerTable = type { %"class.std::vector", i32, %"class.SMP::Mutex" }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"class.SMP::Mutex" = type { i64 }
%"class.SMP::Lock" = type { ptr }

$_ZNSt6vectorIiSaIiEE17_M_default_appendEm = comdat any

$_ZNSt15__new_allocatorIiE8allocateEmPKv = comdat any

@_ZN12MCOwnerTable12s_mcowntableE = dso_local local_unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1

@_ZN12MCOwnerTableC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12MCOwnerTableC2Ev

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN12MCOwnerTable7get_MCOEv() local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %1 = load ptr, ptr @_ZN12MCOwnerTable12s_mcowntableE, align 8, !tbaa !46
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %8, !prof !50

3:                                                ; preds = %0
  %4 = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #13
  invoke void @_ZN12MCOwnerTableC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %5 unwind label %6, !prof !51

5:                                                ; preds = %3
  store ptr %4, ptr @_ZN12MCOwnerTable12s_mcowntableE, align 8, !tbaa !46
  br label %8

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef %4) #14
  resume { ptr, i32 } %7

8:                                                ; preds = %5, %0
  %9 = load ptr, ptr @_ZN12MCOwnerTable12s_mcowntableE, align 8, !tbaa !46
  ret ptr %9
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN12MCOwnerTableC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %2 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %4 unwind label %21, !prof !51

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !53
  %6 = load ptr, ptr %0, align 8, !tbaa !55
  %7 = ptrtoint ptr %5 to i64
  %8 = ptrtoint ptr %6 to i64
  %9 = sub i64 %7, %8
  %10 = ashr exact i64 %9, 2
  %11 = icmp ult i64 %10, 441
  br i1 %11, label %12, label %14, !prof !51

12:                                               ; preds = %4
  %13 = sub nsw i64 441, %10
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %13)
          to label %20 unwind label %21, !prof !51

14:                                               ; preds = %4
  %15 = icmp eq i64 %9, 1764
  br i1 %15, label %20, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds i32, ptr %6, i64 441
  %18 = icmp eq ptr %5, %17
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  store ptr %17, ptr %2, align 8, !tbaa !53
  br label %20

20:                                               ; preds = %19, %16, %14, %12
  ret void

21:                                               ; preds = %12, %1
  %22 = landingpad { ptr, i32 }
          cleanup
  %23 = load ptr, ptr %0, align 8, !tbaa !55
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @_ZdlPv(ptr noundef %23) #14
  br label %26

26:                                               ; preds = %21, %25
  resume { ptr, i32 } %22
}

declare void @_ZN3SMP5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !56 {
  %3 = alloca %"class.SMP::Lock", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 2
  call void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = load ptr, ptr %0, align 8
  br label %10

6:                                                ; preds = %23
  %7 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !57
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr %7, align 8, !tbaa !57
  call void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  ret void

10:                                               ; preds = %2, %23
  %11 = phi i64 [ 0, %2 ], [ %24, %23 ]
  %12 = lshr i64 %11, 6
  %13 = getelementptr inbounds [7 x i64], ptr %1, i64 0, i64 %12
  %14 = and i64 %11, 63
  %15 = load i64, ptr %13, align 8, !tbaa !65
  %16 = shl nuw i64 1, %14
  %17 = and i64 %15, %16
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %23, label %19, !prof !66

19:                                               ; preds = %10
  %20 = getelementptr inbounds i32, ptr %5, i64 %11
  %21 = load i32, ptr %20, align 4, !tbaa !67
  %22 = add nsw i32 %21, 1
  store i32 %22, ptr %20, align 4, !tbaa !67
  br label %23

23:                                               ; preds = %10, %19
  %24 = add nuw nsw i64 %11, 1
  %25 = icmp eq i64 %24, 441
  br i1 %25, label %6, label %10, !prof !68, !llvm.loop !69
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN3SMP4LockC1ERNS_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind
declare void @_ZN3SMP4LockD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef float @_ZN12MCOwnerTable9get_scoreEii(ptr nocapture noundef nonnull readonly align 8 dereferenceable(40) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 !prof !72 {
  %4 = sext i32 %2 to i64
  %5 = load ptr, ptr %0, align 8, !tbaa !55
  %6 = getelementptr inbounds i32, ptr %5, i64 %4
  %7 = load i32, ptr %6, align 4, !tbaa !67
  %8 = sitofp i32 %7 to float
  %9 = getelementptr inbounds %class.MCOwnerTable, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !57
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %8, %11
  %13 = icmp eq i32 %1, 0
  %14 = fsub float 1.000000e+00, %12
  %15 = select i1 %13, float %12, float %14
  ret float %15
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12MCOwnerTable5clearEv() local_unnamed_addr #0 align 2 !prof !73 {
  %1 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
  %2 = load ptr, ptr %1, align 8, !tbaa !46
  %3 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
  %4 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !46
  %6 = icmp eq ptr %2, %5
  br i1 %6, label %14, label %7, !prof !74

7:                                                ; preds = %0
  %8 = ptrtoint ptr %5 to i64
  %9 = ptrtoint ptr %2 to i64
  %10 = add i64 %8, -4
  %11 = sub i64 %10, %9
  %12 = and i64 %11, -4
  %13 = add i64 %12, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %2, i8 0, i64 %13, i1 false), !tbaa !67
  br label %14

14:                                               ; preds = %7, %0
  %15 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
  %16 = getelementptr inbounds %class.MCOwnerTable, ptr %15, i64 0, i32 1
  store i32 0, ptr %16, align 8, !tbaa !57
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12MCOwnerTable9is_primedEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(40) %0) local_unnamed_addr #3 align 2 !prof !72 {
  %2 = tail call noundef ptr @_ZN12MCOwnerTable7get_MCOEv()
  %3 = getelementptr inbounds %class.MCOwnerTable, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !57
  %5 = icmp sgt i32 %4, 31
  ret i1 %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !52 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %59, label %4, !prof !75

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = load ptr, ptr %0, align 8, !tbaa !55
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = getelementptr inbounds %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !76
  %14 = ptrtoint ptr %13 to i64
  %15 = sub i64 %14, %8
  %16 = ashr exact i64 %15, 2
  %17 = icmp ult i64 %11, 2305843009213693952
  tail call void @llvm.assume(i1 %17)
  %18 = xor i64 %11, 2305843009213693951
  %19 = icmp ule i64 %16, %18
  tail call void @llvm.assume(i1 %19)
  %20 = icmp ult i64 %16, %1
  br i1 %20, label %30, label %21, !prof !51

21:                                               ; preds = %4
  store i32 0, ptr %6, align 4, !tbaa !67
  %22 = getelementptr i32, ptr %6, i64 1
  %23 = icmp eq i64 %1, 1
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds i32, ptr %6, i64 %1
  %26 = shl i64 %1, 2
  %27 = add i64 %26, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %22, i8 0, i64 %27, i1 false), !tbaa !67
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi ptr [ %22, %21 ], [ %25, %24 ]
  store ptr %29, ptr %5, align 8, !tbaa !53
  br label %59

30:                                               ; preds = %4
  %31 = icmp ult i64 %18, %1
  br i1 %31, label %32, label %33, !prof !75

32:                                               ; preds = %30
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
  unreachable

33:                                               ; preds = %30
  %34 = tail call i64 @llvm.umax.i64(i64 %11, i64 %1)
  %35 = add i64 %34, %11
  %36 = icmp ult i64 %35, %11
  %37 = tail call i64 @llvm.umin.i64(i64 %35, i64 2305843009213693951)
  %38 = select i1 %36, i64 2305843009213693951, i64 %37, !prof !75
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %42, label %40, !prof !75

40:                                               ; preds = %33
  %41 = tail call noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %38, ptr noundef null)
  br label %42

42:                                               ; preds = %33, %40
  %43 = phi ptr [ %41, %40 ], [ null, %33 ]
  %44 = getelementptr inbounds i32, ptr %43, i64 %11
  store i32 0, ptr %44, align 4, !tbaa !67
  %45 = icmp eq i64 %1, 1
  br i1 %45, label %50, label %46, !prof !75

46:                                               ; preds = %42
  %47 = getelementptr i32, ptr %44, i64 1
  %48 = shl i64 %1, 2
  %49 = add i64 %48, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %47, i8 0, i64 %49, i1 false), !tbaa !67
  br label %50

50:                                               ; preds = %46, %42
  %51 = icmp sgt i64 %10, 0
  br i1 %51, label %52, label %53, !prof !75

52:                                               ; preds = %50
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %43, ptr align 4 %7, i64 %10, i1 false)
  br label %53

53:                                               ; preds = %50, %52
  %54 = icmp eq ptr %7, null
  br i1 %54, label %56, label %55, !prof !51

55:                                               ; preds = %53
  tail call void @_ZdlPv(ptr noundef %7) #14
  br label %56

56:                                               ; preds = %53, %55
  store ptr %43, ptr %0, align 8, !tbaa !55
  %57 = getelementptr inbounds i32, ptr %44, i64 %1
  store ptr %57, ptr %5, align 8, !tbaa !53
  %58 = getelementptr inbounds i32, ptr %43, i64 %38
  store ptr %58, ptr %12, align 8, !tbaa !76
  br label %59

59:                                               ; preds = %28, %56, %2
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !77 {
  %4 = icmp ugt i64 %1, 2305843009213693951
  br i1 %4, label %5, label %9, !prof !78

5:                                                ; preds = %3
  %6 = icmp ugt i64 %1, 4611686018427387903
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

8:                                                ; preds = %5
  tail call void @_ZSt17__throw_bad_allocv() #16
  unreachable

9:                                                ; preds = %3
  %10 = shl nuw nsw i64 %1, 2
  %11 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %10) #13
  ret ptr %11
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN12MCOwnerTable7get_MCOEv, ptr @_Znwm, i64 1}
!36 = !{ptr @_ZN12MCOwnerTable7get_MCOEv, ptr @_ZN12MCOwnerTableC2Ev, i64 1}
!37 = !{ptr @_ZN12MCOwnerTableC2Ev, ptr @_ZN3SMP5MutexC1Ev, i64 1}
!38 = !{ptr @_ZN12MCOwnerTableC2Ev, ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, i64 1}
!39 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZN3SMP4LockC1ERNS_5MutexE, i64 6098317}
!40 = !{ptr @_ZN12MCOwnerTable6updateERSt6bitsetILm441EE, ptr @_ZN3SMP4LockD1Ev, i64 6098317}
!41 = !{ptr @_ZN12MCOwnerTable5clearEv, ptr @_ZN12MCOwnerTable7get_MCOEv, i64 2910}
!42 = !{ptr @_ZNSt6vectorIiSaIiEE17_M_default_appendEm, ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, i64 1}
!43 = !{ptr @_ZNSt15__new_allocatorIiE8allocateEmPKv, ptr @_Znwm, i64 10252442}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 6101227}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"branch_weights", i32 1, i32 6101226}
!51 = !{!"branch_weights", i32 1, i32 0}
!52 = !{!"function_entry_count", i64 1}
!53 = !{!54, !47, i64 8}
!54 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !47, i64 0, !47, i64 8, !47, i64 16}
!55 = !{!54, !47, i64 0}
!56 = !{!"function_entry_count", i64 6098317}
!57 = !{!58, !62, i64 24}
!58 = !{!"_ZTS12MCOwnerTable", !59, i64 0, !62, i64 24, !63, i64 32}
!59 = !{!"_ZTSSt6vectorIiSaIiEE", !60, i64 0}
!60 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !61, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !54, i64 0}
!62 = !{!"int", !48, i64 0}
!63 = !{!"_ZTSN3SMP5MutexE", !64, i64 0}
!64 = !{!"long", !48, i64 0}
!65 = !{!64, !64, i64 0}
!66 = !{!"branch_weights", i32 2110956640, i32 578401157}
!67 = !{!62, !62, i64 0}
!68 = !{!"branch_weights", i32 6098317, i32 -1611707816}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"function_entry_count", i64 0}
!73 = !{!"function_entry_count", i64 970}
!74 = !{!"branch_weights", i32 1, i32 969}
!75 = !{!"branch_weights", i32 0, i32 1}
!76 = !{!54, !47, i64 16}
!77 = !{!"function_entry_count", i64 10252442}
!78 = !{!"branch_weights", i32 0, i32 10252442}
