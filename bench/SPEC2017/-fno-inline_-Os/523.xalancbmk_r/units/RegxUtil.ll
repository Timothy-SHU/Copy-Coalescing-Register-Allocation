; ModuleID = 'RegxUtil.cpp'
source_filename = "RegxUtil.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_ = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !37 {
  %3 = load ptr, ptr %1, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 6) #4
  %7 = getelementptr inbounds i16, ptr %6, i64 1
  tail call void @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_(i32 noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %6, ptr noundef nonnull align 2 dereferenceable(2) %7) #4
  %8 = getelementptr inbounds i16, ptr %6, i64 2
  store i16 0, ptr %8, align 2, !tbaa !41
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiRtS1_(i32 noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 comdat align 2 !prof !37 {
  %4 = add i32 %0, 67043328
  %5 = lshr i32 %4, 10
  %6 = trunc i32 %5 to i16
  %7 = add i16 %6, -10240
  store i16 %7, ptr %1, align 2, !tbaa !41
  %8 = trunc i32 %0 to i16
  %9 = and i16 %8, 1023
  %10 = or disjoint i16 %9, -9216
  store i16 %10, ptr %2, align 2, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78RegxUtil20stripExtendedCommentEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !37 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef nonnull %1) #4
  br label %8

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %0) #4
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %5, %4 ], [ %7, %6 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  %12 = load i16, ptr %0, align 2, !tbaa !41
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %42, label %14

14:                                               ; preds = %11, %37
  %15 = phi i16 [ %40, %37 ], [ %12, %11 ]
  %16 = phi ptr [ %39, %37 ], [ %9, %11 ]
  %17 = phi ptr [ %38, %37 ], [ %0, %11 ]
  %18 = getelementptr inbounds i16, ptr %17, i64 1
  switch i16 %15, label %35 [
    i16 32, label %37
    i16 13, label %37
    i16 12, label %37
    i16 10, label %37
    i16 9, label %37
    i16 35, label %19
    i16 92, label %25
  ]

19:                                               ; preds = %14, %23
  %20 = phi ptr [ %24, %23 ], [ %18, %14 ]
  %21 = load i16, ptr %20, align 2, !tbaa !41
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %42, label %23, !llvm.loop !44

23:                                               ; preds = %19
  %24 = getelementptr inbounds i16, ptr %20, i64 1
  switch i16 %21, label %19 [
    i16 13, label %37
    i16 10, label %37
  ], !llvm.loop !44

25:                                               ; preds = %14
  %26 = load i16, ptr %18, align 2, !tbaa !41
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds i16, ptr %17, i64 2
  switch i16 %26, label %32 [
    i16 35, label %30
    i16 32, label %30
    i16 13, label %30
    i16 12, label %30
    i16 10, label %30
    i16 9, label %30
  ]

30:                                               ; preds = %28, %28, %28, %28, %28, %28
  %31 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %26, ptr %16, align 2, !tbaa !41
  br label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 92, ptr %16, align 2, !tbaa !41
  %34 = getelementptr inbounds i16, ptr %16, i64 2
  store i16 %26, ptr %33, align 2, !tbaa !41
  br label %37

35:                                               ; preds = %14, %25
  %36 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %15, ptr %16, align 2, !tbaa !41
  br label %37

37:                                               ; preds = %23, %23, %35, %32, %30, %14, %14, %14, %14, %14
  %38 = phi ptr [ %18, %35 ], [ %29, %32 ], [ %29, %30 ], [ %18, %14 ], [ %18, %14 ], [ %18, %14 ], [ %18, %14 ], [ %18, %14 ], [ %24, %23 ], [ %24, %23 ]
  %39 = phi ptr [ %36, %35 ], [ %34, %32 ], [ %31, %30 ], [ %16, %14 ], [ %16, %14 ], [ %16, %14 ], [ %16, %14 ], [ %16, %14 ], [ %16, %23 ], [ %16, %23 ]
  %40 = load i16, ptr %38, align 2, !tbaa !41
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %14

42:                                               ; preds = %37, %19, %11
  %43 = phi ptr [ %9, %11 ], [ %16, %19 ], [ %39, %37 ]
  store i16 0, ptr %43, align 2, !tbaa !41
  br label %44

44:                                               ; preds = %42, %8
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !46 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !47

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #4
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #1 comdat align 2 !prof !48 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !49

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !41
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !50

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !41
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !51, !llvm.loop !52

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !43, i64 0}
!43 = !{!"omnipotent char", !40, i64 0}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"function_entry_count", i64 558789}
!47 = !{!"branch_weights", i32 158605, i32 400186}
!48 = !{!"function_entry_count", i64 2453164456}
!49 = !{!"branch_weights", i32 1, i32 -1841802839}
!50 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!51 = !{!"branch_weights", i32 408669070, i32 -279908794}
!52 = distinct !{!52, !45}
