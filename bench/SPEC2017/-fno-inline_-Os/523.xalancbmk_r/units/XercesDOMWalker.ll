; ModuleID = 'XercesDOMWalker.cpp'
source_filename = "XercesDOMWalker.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZTVN11xalanc_1_1015XercesDOMWalkerE = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1015XercesDOMWalkerE, ptr @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev, ptr @_ZN11xalanc_1_1015XercesDOMWalkerD0Ev, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE, ptr @__cxa_pure_virtual, ptr @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1015XercesDOMWalkerE = dso_local constant [33 x i8] c"N11xalanc_1_1015XercesDOMWalkerE\00", align 1
@_ZTIN11xalanc_1_1015XercesDOMWalkerE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1015XercesDOMWalkerE }, align 8

@_ZN11xalanc_1_1015XercesDOMWalkerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1015XercesDOMWalkerC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [8 x ptr] }, ptr @_ZTVN11xalanc_1_1015XercesDOMWalkerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1015XercesDOMWalkerD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1015XercesDOMWalkerD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 {
  tail call void @llvm.trap() #5
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2, %38
  %5 = phi ptr [ %39, %38 ], [ %1, %2 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #6
  %10 = zext i1 %9 to i8
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %4, %32
  %17 = phi i8 [ %26, %32 ], [ %10, %4 ]
  %18 = phi ptr [ %36, %32 ], [ %5, %4 ]
  %19 = and i8 %17, 1
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %18) #6
  %25 = zext i1 %24 to i8
  %26 = select i1 %20, i8 %25, i8 %17
  %27 = load ptr, ptr %18, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load ptr, ptr %18, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %16, !llvm.loop !38

38:                                               ; preds = %16, %4
  %39 = phi ptr [ %14, %4 ], [ %30, %16 ]
  %40 = phi i8 [ %10, %4 ], [ %26, %16 ]
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %4, label %43, !llvm.loop !40

43:                                               ; preds = %38, %32, %2
  %44 = phi ptr [ null, %2 ], [ null, %32 ], [ %39, %38 ]
  ret ptr %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %2, %38
  %5 = phi ptr [ %39, %38 ], [ %1, %2 ]
  %6 = load ptr, ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #6
  %10 = zext i1 %9 to i8
  %11 = load ptr, ptr %5, align 8, !tbaa !35
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %5) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %4, %32
  %17 = phi i8 [ %26, %32 ], [ %10, %4 ]
  %18 = phi ptr [ %36, %32 ], [ %5, %4 ]
  %19 = and i8 %17, 1
  %20 = icmp eq i8 %19, 0
  %21 = load ptr, ptr %0, align 8, !tbaa !35
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %18) #6
  %25 = zext i1 %24 to i8
  %26 = select i1 %20, i8 %25, i8 %17
  %27 = load ptr, ptr %18, align 8, !tbaa !35
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %18) #6
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %16
  %33 = load ptr, ptr %18, align 8, !tbaa !35
  %34 = getelementptr inbounds ptr, ptr %33, i64 5
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18) #6
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %16, !llvm.loop !41

38:                                               ; preds = %16, %4
  %39 = phi ptr [ %14, %4 ], [ %30, %16 ]
  %40 = phi i8 [ %10, %4 ], [ %26, %16 ]
  %41 = and i8 %40, 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %4, label %43, !llvm.loop !42

43:                                               ; preds = %38, %32, %2
  %44 = phi ptr [ null, %2 ], [ null, %32 ], [ %39, %38 ]
  ret ptr %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 align 2 !prof !34 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %46, label %5

5:                                                ; preds = %3, %39
  %6 = phi ptr [ %41, %39 ], [ %1, %3 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #6
  %11 = zext i1 %10 to i8
  %12 = load ptr, ptr %6, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %5, %33
  %18 = phi i8 [ %27, %33 ], [ %11, %5 ]
  %19 = phi ptr [ %37, %33 ], [ %6, %5 ]
  %20 = and i8 %18, 1
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19) #6
  %26 = zext i1 %25 to i8
  %27 = select i1 %21, i8 %26, i8 %18
  %28 = load ptr, ptr %19, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %19) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load ptr, ptr %19, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %19) #6
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %46, label %17, !llvm.loop !43

39:                                               ; preds = %17, %5
  %40 = phi i8 [ %11, %5 ], [ %27, %17 ]
  %41 = phi ptr [ %15, %5 ], [ %31, %17 ]
  %42 = icmp ne ptr %41, %2
  %43 = and i8 %40, 1
  %44 = icmp eq i8 %43, 0
  %45 = and i1 %42, %44
  br i1 %45, label %5, label %46, !llvm.loop !44

46:                                               ; preds = %39, %33, %3
  %47 = phi ptr [ %1, %3 ], [ %2, %33 ], [ %41, %39 ]
  ret ptr %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPN11xercesc_2_77DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #4 align 2 !prof !34 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %46, label %5

5:                                                ; preds = %3, %39
  %6 = phi ptr [ %41, %39 ], [ %1, %3 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %6) #6
  %11 = zext i1 %10 to i8
  %12 = load ptr, ptr %6, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 7
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %6) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %5, %33
  %18 = phi i8 [ %27, %33 ], [ %11, %5 ]
  %19 = phi ptr [ %37, %33 ], [ %6, %5 ]
  %20 = and i8 %18, 1
  %21 = icmp eq i8 %20, 0
  %22 = load ptr, ptr %0, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 5
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19) #6
  %26 = zext i1 %25 to i8
  %27 = select i1 %21, i8 %26, i8 %18
  %28 = load ptr, ptr %19, align 8, !tbaa !35
  %29 = getelementptr inbounds ptr, ptr %28, i64 10
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %19) #6
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load ptr, ptr %19, align 8, !tbaa !35
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %19) #6
  %38 = icmp eq ptr %37, %2
  br i1 %38, label %46, label %17, !llvm.loop !45

39:                                               ; preds = %17, %5
  %40 = phi i8 [ %11, %5 ], [ %27, %17 ]
  %41 = phi ptr [ %15, %5 ], [ %31, %17 ]
  %42 = icmp ne ptr %41, %2
  %43 = and i8 %40, 1
  %44 = icmp eq i8 %43, 0
  %45 = and i1 %42, %44
  br i1 %45, label %5, label %46, !llvm.loop !46

46:                                               ; preds = %39, %33, %3
  %47 = phi ptr [ %1, %3 ], [ %2, %33 ], [ %41, %39 ]
  ret ptr %47
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XercesDOMWalker15traverseSubtreeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #6
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPKN11xercesc_2_77DOMNodeES4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12, ptr noundef nonnull %1) #6
  br label %16

16:                                               ; preds = %14, %4
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #6
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1015XercesDOMWalker15traverseSubtreeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #6
  %9 = load ptr, ptr %1, align 8, !tbaa !35
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1) #6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %4
  %15 = tail call noundef ptr @_ZN11xalanc_1_1015XercesDOMWalker8traverseEPN11xercesc_2_77DOMNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12, ptr noundef nonnull %1) #6
  br label %16

16:                                               ; preds = %14, %4
  %17 = load ptr, ptr %0, align 8, !tbaa !35
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #6
  br label %21

21:                                               ; preds = %16, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker9startNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #6
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1015XercesDOMWalker7endNodeEPN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !34 {
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef zeroext i1 %5(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) #6
  ret i1 %6
}

declare void @__cxa_pure_virtual() unnamed_addr

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline noreturn nounwind optsize memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.mustprogress"}
!40 = distinct !{!40, !39}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !39}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !39}
!46 = distinct !{!46, !39}
