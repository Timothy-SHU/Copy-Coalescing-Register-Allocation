; ModuleID = 'XUtil.cpp'
source_filename = "XUtil.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil20getFirstChildElementEPKNS_7DOMNodeE(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !38 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 7
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7, !prof !42

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %18, %14 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #2
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %20, label %14, !prof !43

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %8) #2
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !44, !llvm.loop !45

20:                                               ; preds = %7, %14, %1
  %21 = phi ptr [ null, %1 ], [ null, %14 ], [ %8, %7 ]
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil22getFirstChildElementNSEPKNS_7DOMNodeEPPKtS5_j(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !47 {
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0) #2
  %9 = icmp eq ptr %8, null
  br i1 %9, label %46, label %10, !prof !48

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  br label %12

12:                                               ; preds = %10, %40
  %13 = phi ptr [ %8, %10 ], [ %44, %40 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !39
  %15 = getelementptr inbounds ptr, ptr %14, i64 4
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef signext i16 %16(ptr noundef nonnull align 8 dereferenceable(8) %13) #2
  %18 = icmp ne i16 %17, 1
  %19 = or i1 %18, %11
  br i1 %19, label %40, label %20, !prof !49

20:                                               ; preds = %12
  %21 = zext i32 %3 to i64
  br label %22

22:                                               ; preds = %20, %37
  %23 = phi i64 [ %38, %37 ], [ 0, %20 ]
  %24 = load ptr, ptr %13, align 8, !tbaa !39
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %13) #2
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %27, ptr noundef %2) #2
  br i1 %28, label %29, label %37, !prof !50

29:                                               ; preds = %22
  %30 = load ptr, ptr %13, align 8, !tbaa !39
  %31 = getelementptr inbounds ptr, ptr %30, i64 24
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %13) #2
  %34 = getelementptr inbounds ptr, ptr %1, i64 %23
  %35 = load ptr, ptr %34, align 8, !tbaa !51
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %33, ptr noundef %35) #2
  br i1 %36, label %46, label %37, !prof !54

37:                                               ; preds = %22, %29
  %38 = add nuw nsw i64 %23, 1
  %39 = icmp eq i64 %38, %21
  br i1 %39, label %40, label %22, !prof !55, !llvm.loop !56

40:                                               ; preds = %37, %12
  %41 = load ptr, ptr %13, align 8, !tbaa !39
  %42 = getelementptr inbounds ptr, ptr %41, i64 10
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %13) #2
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %12, !prof !57, !llvm.loop !58

46:                                               ; preds = %40, %29, %4
  %47 = phi ptr [ null, %4 ], [ %13, %29 ], [ null, %40 ]
  ret ptr %47
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !59 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !60

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !61
  %8 = load i16, ptr %1, align 2, !tbaa !61
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !63

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !64

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !61
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !65

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !66

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !61
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !67

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !68

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !61
  %28 = load i16, ptr %26, align 2, !tbaa !61
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !69, !llvm.loop !70

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil21getNextSiblingElementEPKNS_7DOMNodeE(ptr noundef %0) local_unnamed_addr #0 align 2 !prof !71 {
  %2 = load ptr, ptr %0, align 8, !tbaa !39
  %3 = getelementptr inbounds ptr, ptr %2, i64 10
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0) #2
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %7, !prof !72

7:                                                ; preds = %1, %14
  %8 = phi ptr [ %18, %14 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 8, !tbaa !39
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef signext i16 %11(ptr noundef nonnull align 8 dereferenceable(8) %8) #2
  %13 = icmp eq i16 %12, 1
  br i1 %13, label %20, label %14, !prof !73

14:                                               ; preds = %7
  %15 = load ptr, ptr %8, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 10
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %8) #2
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %7, !prof !74, !llvm.loop !75

20:                                               ; preds = %7, %14, %1
  %21 = phi ptr [ null, %1 ], [ null, %14 ], [ %8, %7 ]
  ret ptr %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_75XUtil23getNextSiblingElementNSEPKNS_7DOMNodeEPPKtS5_j(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 !prof !76 {
  %5 = load ptr, ptr %0, align 8, !tbaa !39
  %6 = getelementptr inbounds ptr, ptr %5, i64 10
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0) #2
  %9 = icmp eq ptr %8, null
  br i1 %9, label %45, label %10, !prof !77

10:                                               ; preds = %4
  %11 = icmp eq i32 %3, 0
  %12 = zext i32 %3 to i64
  br label %13

13:                                               ; preds = %10, %39
  %14 = phi ptr [ %8, %10 ], [ %43, %39 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef signext i16 %17(ptr noundef nonnull align 8 dereferenceable(8) %14) #2
  %19 = icmp ne i16 %18, 1
  %20 = or i1 %19, %11
  br i1 %20, label %39, label %21, !prof !78

21:                                               ; preds = %13, %36
  %22 = phi i64 [ %37, %36 ], [ 0, %13 ]
  %23 = load ptr, ptr %14, align 8, !tbaa !39
  %24 = getelementptr inbounds ptr, ptr %23, i64 22
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %14) #2
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %26, ptr noundef %2) #2
  br i1 %27, label %28, label %36, !prof !79

28:                                               ; preds = %21
  %29 = load ptr, ptr %14, align 8, !tbaa !39
  %30 = getelementptr inbounds ptr, ptr %29, i64 24
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %14) #2
  %33 = getelementptr inbounds ptr, ptr %1, i64 %22
  %34 = load ptr, ptr %33, align 8, !tbaa !51
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %32, ptr noundef %34) #2
  br i1 %35, label %45, label %36, !prof !80

36:                                               ; preds = %21, %28
  %37 = add nuw nsw i64 %22, 1
  %38 = icmp eq i64 %37, %12
  br i1 %38, label %39, label %21, !prof !81, !llvm.loop !82

39:                                               ; preds = %36, %13
  %40 = load ptr, ptr %14, align 8, !tbaa !39
  %41 = getelementptr inbounds ptr, ptr %40, i64 10
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %14) #2
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !prof !83, !llvm.loop !84

45:                                               ; preds = %39, %28, %4
  %46 = phi ptr [ null, %4 ], [ %14, %28 ], [ null, %39 ]
  ret ptr %46
}

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_75XUtil22getFirstChildElementNSEPKNS_7DOMNodeEPPKtS5_j, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 71}
!36 = !{ptr @_ZN11xercesc_2_75XUtil23getNextSiblingElementNSEPKNS_7DOMNodeEPPKtS5_j, ptr @_ZN11xercesc_2_79XMLString6equalsEPKtS2_, i64 87}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 640}
!39 = !{!40, !40, i64 0}
!40 = !{!"vtable pointer", !41, i64 0}
!41 = !{!"Simple C++ TBAA"}
!42 = !{!"branch_weights", i32 224, i32 209}
!43 = !{!"branch_weights", i32 209, i32 1}
!44 = !{!"branch_weights", i32 209, i32 0}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"function_entry_count", i64 79}
!48 = !{!"branch_weights", i32 65, i32 14}
!49 = !{!"branch_weights", i32 222, i32 2898}
!50 = !{!"branch_weights", i32 39, i32 1}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !53, i64 0}
!53 = !{!"omnipotent char", !41, i64 0}
!54 = !{!"branch_weights", i32 2, i32 38}
!55 = !{!"branch_weights", i32 207, i32 417}
!56 = distinct !{!56, !46}
!57 = !{!"branch_weights", i32 14, i32 0}
!58 = distinct !{!58, !46}
!59 = !{!"function_entry_count", i64 1231717351}
!60 = !{!"branch_weights", i32 621, i32 -1469098093}
!61 = !{!62, !62, i64 0}
!62 = !{!"short", !53, i64 0}
!63 = !{!"branch_weights", i32 408901017, i32 1}
!64 = !{!"branch_weights", i32 267, i32 4}
!65 = !{!"branch_weights", i32 1, i32 4}
!66 = !{!"branch_weights", i32 156, i32 112}
!67 = !{!"branch_weights", i32 1, i32 112}
!68 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!69 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!70 = distinct !{!70, !46}
!71 = !{!"function_entry_count", i64 797}
!72 = !{!"branch_weights", i32 1, i32 134}
!73 = !{!"branch_weights", i32 664, i32 1}
!74 = !{!"branch_weights", i32 134, i32 530}
!75 = distinct !{!75, !46}
!76 = !{!"function_entry_count", i64 16}
!77 = !{!"branch_weights", i32 1, i32 127}
!78 = !{!"branch_weights", i32 144, i32 2032}
!79 = !{!"branch_weights", i32 43, i32 1}
!80 = !{!"branch_weights", i32 16, i32 28}
!81 = !{!"branch_weights", i32 127, i32 5377}
!82 = distinct !{!82, !46}
!83 = !{!"branch_weights", i32 127, i32 897}
!84 = distinct !{!84, !46}
