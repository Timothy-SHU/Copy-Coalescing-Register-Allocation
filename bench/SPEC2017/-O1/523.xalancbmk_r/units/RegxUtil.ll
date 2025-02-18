; ModuleID = 'RegxUtil.cpp'
source_filename = "RegxUtil.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78RegxUtil21decomposeToSurrogatesEiPNS_13MemoryManagerE(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = load ptr, ptr %1, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 6)
  %7 = getelementptr inbounds i16, ptr %6, i64 1
  %8 = add i32 %0, 67043328
  %9 = lshr i32 %8, 10
  %10 = trunc i32 %9 to i16
  %11 = add i16 %10, -10240
  store i16 %11, ptr %6, align 2, !tbaa !38
  %12 = trunc i32 %0 to i16
  %13 = and i16 %12, 1023
  %14 = or disjoint i16 %13, -9216
  store i16 %14, ptr %7, align 2, !tbaa !38
  %15 = getelementptr inbounds i16, ptr %6, i64 2
  store i16 0, ptr %15, align 2, !tbaa !38
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_78RegxUtil20stripExtendedCommentEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %26, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = load i16, ptr %0, align 2, !tbaa !38
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %11, %9 ], [ %0, %6 ]
  %11 = getelementptr inbounds i16, ptr %10, i64 1
  %12 = load i16, ptr %11, align 2, !tbaa !38
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %9, !llvm.loop !41

14:                                               ; preds = %9
  %15 = ptrtoint ptr %11 to i64
  %16 = ptrtoint ptr %0 to i64
  %17 = sub i64 %15, %16
  %18 = add i64 %17, 2
  %19 = and i64 %18, 8589934590
  br label %20

20:                                               ; preds = %14, %6
  %21 = phi i64 [ %19, %14 ], [ 2, %6 ]
  %22 = load ptr, ptr %1, align 8, !tbaa !35
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %21)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %25, ptr nonnull align 2 %0, i64 %21, i1 false)
  br label %28

26:                                               ; preds = %2
  %27 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef %0)
  br label %28

28:                                               ; preds = %20, %4, %26
  %29 = phi ptr [ %27, %26 ], [ %25, %20 ], [ null, %4 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %64, label %31

31:                                               ; preds = %28
  %32 = load i16, ptr %0, align 2, !tbaa !38
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %31, %57
  %35 = phi i16 [ %60, %57 ], [ %32, %31 ]
  %36 = phi ptr [ %59, %57 ], [ %29, %31 ]
  %37 = phi ptr [ %58, %57 ], [ %0, %31 ]
  %38 = getelementptr inbounds i16, ptr %37, i64 1
  switch i16 %35, label %55 [
    i16 32, label %57
    i16 13, label %57
    i16 12, label %57
    i16 10, label %57
    i16 9, label %57
    i16 35, label %39
    i16 92, label %45
  ]

39:                                               ; preds = %34, %43
  %40 = phi ptr [ %44, %43 ], [ %38, %34 ]
  %41 = load i16, ptr %40, align 2, !tbaa !38
  %42 = icmp eq i16 %41, 0
  br i1 %42, label %57, label %43, !llvm.loop !44

43:                                               ; preds = %39
  %44 = getelementptr inbounds i16, ptr %40, i64 1
  switch i16 %41, label %39 [
    i16 13, label %57
    i16 10, label %57
  ], !llvm.loop !44

45:                                               ; preds = %34
  %46 = load i16, ptr %38, align 2, !tbaa !38
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds i16, ptr %37, i64 2
  switch i16 %46, label %52 [
    i16 35, label %50
    i16 32, label %50
    i16 13, label %50
    i16 12, label %50
    i16 10, label %50
    i16 9, label %50
  ]

50:                                               ; preds = %48, %48, %48, %48, %48, %48
  %51 = getelementptr inbounds i16, ptr %36, i64 1
  store i16 %46, ptr %36, align 2, !tbaa !38
  br label %57

52:                                               ; preds = %48
  %53 = getelementptr inbounds i16, ptr %36, i64 1
  store i16 92, ptr %36, align 2, !tbaa !38
  %54 = getelementptr inbounds i16, ptr %36, i64 2
  store i16 %46, ptr %53, align 2, !tbaa !38
  br label %57

55:                                               ; preds = %34, %45
  %56 = getelementptr inbounds i16, ptr %36, i64 1
  store i16 %35, ptr %36, align 2, !tbaa !38
  br label %57

57:                                               ; preds = %43, %43, %39, %34, %34, %34, %34, %55, %52, %50, %34
  %58 = phi ptr [ %38, %34 ], [ %49, %50 ], [ %49, %52 ], [ %38, %55 ], [ %38, %34 ], [ %38, %34 ], [ %38, %34 ], [ %38, %34 ], [ %40, %39 ], [ %44, %43 ], [ %44, %43 ]
  %59 = phi ptr [ %36, %34 ], [ %51, %50 ], [ %54, %52 ], [ %56, %55 ], [ %36, %34 ], [ %36, %34 ], [ %36, %34 ], [ %36, %34 ], [ %36, %39 ], [ %36, %43 ], [ %36, %43 ]
  %60 = load i16, ptr %58, align 2, !tbaa !38
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %62, label %34

62:                                               ; preds = %57, %31
  %63 = phi ptr [ %29, %31 ], [ %59, %57 ]
  store i16 0, ptr %63, align 2, !tbaa !38
  br label %64

64:                                               ; preds = %62, %28
  ret ptr %29
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKt(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"short", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = distinct !{!41, !42, !43}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !42, !43}
