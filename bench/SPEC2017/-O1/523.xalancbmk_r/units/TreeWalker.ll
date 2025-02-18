; ModuleID = 'TreeWalker.cpp'
source_filename = "TreeWalker.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTVN11xalanc_1_1010TreeWalkerE = dso_local unnamed_addr constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1010TreeWalkerE, ptr @_ZN11xalanc_1_1010TreeWalkerD2Ev, ptr @_ZN11xalanc_1_1010TreeWalkerD0Ev, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010TreeWalkerE = dso_local constant [28 x i8] c"N11xalanc_1_1010TreeWalkerE\00", align 1
@_ZTIN11xalanc_1_1010TreeWalkerE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010TreeWalkerE }, align 8

@_ZN11xalanc_1_1010TreeWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1010TreeWalkerD2Ev

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1010TreeWalkerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [10 x ptr] }, ptr @_ZTVN11xalanc_1_1010TreeWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1010TreeWalkerD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !34 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1010TreeWalkerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !34 {
  tail call void @llvm.trap() #5
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2, %41
  %5 = phi ptr [ %43, %41 ], [ %1, %2 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
  %10 = zext i1 %9 to i8
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %4, %38
  %17 = phi i8 [ %26, %38 ], [ %10, %4 ]
  %18 = phi ptr [ %39, %38 ], [ %5, %4 ]
  %19 = and i8 %17, 1
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 6
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18)
  %25 = zext i1 %24 to i8
  %26 = select i1 %20, i8 %25, i8 %17
  %27 = load ptr, ptr %18, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load ptr, ptr %18, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %16
  %39 = phi ptr [ %36, %32 ], [ %18, %16 ]
  %40 = icmp eq ptr %30, null
  br i1 %40, label %16, label %41, !llvm.loop !38

41:                                               ; preds = %38, %32, %4
  %42 = phi i8 [ %10, %4 ], [ %26, %32 ], [ %26, %38 ]
  %43 = phi ptr [ %14, %4 ], [ %30, %38 ], [ null, %32 ]
  %44 = icmp ne ptr %43, null
  %45 = and i8 %42, 1
  %46 = icmp eq i8 %45, 0
  %47 = and i1 %44, %46
  br i1 %47, label %4, label %48, !llvm.loop !41

48:                                               ; preds = %41, %2
  %49 = phi ptr [ %1, %2 ], [ %43, %41 ]
  ret ptr %49
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %48, label %4

4:                                                ; preds = %2, %41
  %5 = phi ptr [ %43, %41 ], [ %1, %2 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
  %10 = zext i1 %9 to i8
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %4, %38
  %17 = phi i8 [ %26, %38 ], [ %10, %4 ]
  %18 = phi ptr [ %39, %38 ], [ %5, %4 ]
  %19 = and i8 %17, 1
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 7
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %18)
  %25 = zext i1 %24 to i8
  %26 = select i1 %20, i8 %25, i8 %17
  %27 = load ptr, ptr %18, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load ptr, ptr %18, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18)
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32, %16
  %39 = phi ptr [ %36, %32 ], [ %18, %16 ]
  %40 = icmp eq ptr %30, null
  br i1 %40, label %16, label %41, !llvm.loop !42

41:                                               ; preds = %38, %32, %4
  %42 = phi i8 [ %10, %4 ], [ %26, %32 ], [ %26, %38 ]
  %43 = phi ptr [ %14, %4 ], [ %30, %38 ], [ null, %32 ]
  %44 = icmp ne ptr %43, null
  %45 = and i8 %42, 1
  %46 = icmp eq i8 %45, 0
  %47 = and i1 %44, %46
  br i1 %47, label %4, label %48, !llvm.loop !43

48:                                               ; preds = %41, %2
  %49 = phi ptr [ %1, %2 ], [ %43, %41 ]
  ret ptr %49
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 align 2 !prof !34 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %49, label %5

5:                                                ; preds = %3, %42
  %6 = phi ptr [ %44, %42 ], [ %1, %3 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6)
  %11 = zext i1 %10 to i8
  %12 = load ptr, ptr %6, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %5, %39
  %18 = phi i8 [ %27, %39 ], [ %11, %5 ]
  %19 = phi ptr [ %40, %39 ], [ %6, %5 ]
  %20 = and i8 %18, 1
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
  %26 = zext i1 %25 to i8
  %27 = select i1 %21, i8 %26, i8 %18
  %28 = load ptr, ptr %19, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load ptr, ptr %19, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %17
  %40 = phi ptr [ %37, %33 ], [ %19, %17 ]
  %41 = icmp eq ptr %31, null
  br i1 %41, label %17, label %42, !llvm.loop !44

42:                                               ; preds = %39, %33, %5
  %43 = phi i8 [ %11, %5 ], [ %27, %33 ], [ %27, %39 ]
  %44 = phi ptr [ %15, %5 ], [ %31, %39 ], [ %37, %33 ]
  %45 = icmp ne ptr %44, %2
  %46 = and i8 %43, 1
  %47 = icmp eq i8 %46, 0
  %48 = and i1 %45, %47
  br i1 %48, label %5, label %49, !llvm.loop !45

49:                                               ; preds = %42, %3
  %50 = phi ptr [ %1, %3 ], [ %44, %42 ]
  ret ptr %50
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 align 2 !prof !34 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %49, label %5

5:                                                ; preds = %3, %42
  %6 = phi ptr [ %44, %42 ], [ %1, %3 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6)
  %11 = zext i1 %10 to i8
  %12 = load ptr, ptr %6, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %5, %39
  %18 = phi i8 [ %27, %39 ], [ %11, %5 ]
  %19 = phi ptr [ %40, %39 ], [ %6, %5 ]
  %20 = and i8 %18, 1
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 7
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19)
  %26 = zext i1 %25 to i8
  %27 = select i1 %21, i8 %26, i8 %18
  %28 = load ptr, ptr %19, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load ptr, ptr %19, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %42, label %39

39:                                               ; preds = %33, %17
  %40 = phi ptr [ %37, %33 ], [ %19, %17 ]
  %41 = icmp eq ptr %31, null
  br i1 %41, label %17, label %42, !llvm.loop !46

42:                                               ; preds = %39, %33, %5
  %43 = phi i8 [ %11, %5 ], [ %27, %33 ], [ %27, %39 ]
  %44 = phi ptr [ %15, %5 ], [ %31, %39 ], [ %37, %33 ]
  %45 = icmp ne ptr %44, %2
  %46 = and i8 %43, 1
  %47 = icmp eq i8 %46, 0
  %48 = and i1 %45, %47
  br i1 %48, label %5, label %49, !llvm.loop !47

49:                                               ; preds = %42, %3
  %50 = phi ptr [ %1, %3 ], [ %44, %42 ]
  ret ptr %50
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12, ptr noundef nonnull %1)
  br label %16

16:                                               ; preds = %14, %4
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12, ptr noundef nonnull %1)
  br label %16

16:                                               ; preds = %14, %4
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 7
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 291165203993}
!8 = !{!"MaxCount", i64 30012997636}
!9 = !{!"MaxInternalCount", i64 22313335011}
!10 = !{!"MaxFunctionCount", i64 30012997636}
!11 = !{!"NumCounts", i64 82185}
!12 = !{!"NumFunctions", i64 15169}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 30012997636, i32 1}
!18 = !{i32 100000, i64 30012997636, i32 1}
!19 = !{i32 200000, i64 28750937236, i32 2}
!20 = !{i32 300000, i64 22313335011, i32 4}
!21 = !{i32 400000, i64 22313318476, i32 5}
!22 = !{i32 500000, i64 22291044611, i32 6}
!23 = !{i32 600000, i64 16685493830, i32 8}
!24 = !{i32 700000, i64 11836361228, i32 10}
!25 = !{i32 800000, i64 1835010489, i32 17}
!26 = !{i32 900000, i64 917973775, i32 41}
!27 = !{i32 950000, i64 89504425, i32 134}
!28 = !{i32 990000, i64 22419101, i32 349}
!29 = !{i32 999000, i64 832910, i32 928}
!30 = !{i32 999900, i64 93159, i32 1814}
!31 = !{i32 999990, i64 19206, i32 2310}
!32 = !{i32 999999, i64 550, i32 2997}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !39, !40}
!42 = distinct !{!42, !39, !40}
!43 = distinct !{!43, !39, !40}
!44 = distinct !{!44, !39, !40}
!45 = distinct !{!45, !39, !40}
!46 = distinct !{!46, !39, !40}
!47 = distinct !{!47, !39, !40}
