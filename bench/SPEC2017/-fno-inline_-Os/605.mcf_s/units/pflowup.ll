; ModuleID = 'pflowup.c'
source_filename = "pflowup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @primal_update_flow(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 !prof !35 {
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %7, %3
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %27, label %17

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %15, %7 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !36
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 10
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %5, label %7, !llvm.loop !44

17:                                               ; preds = %5, %17
  %18 = phi ptr [ %25, %17 ], [ %1, %5 ]
  %19 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !36
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 10
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %17, !llvm.loop !46

27:                                               ; preds = %17, %5
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 142077978206}
!4 = !{!"MaxCount", i64 28590381975}
!5 = !{!"MaxInternalCount", i64 14978154134}
!6 = !{!"MaxFunctionCount", i64 28590381975}
!7 = !{!"NumCounts", i64 220}
!8 = !{!"NumFunctions", i64 31}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 28590381975, i32 1}
!14 = !{i32 100000, i64 28590381975, i32 1}
!15 = !{i32 200000, i64 28590381975, i32 1}
!16 = !{i32 300000, i64 17552692142, i32 2}
!17 = !{i32 400000, i64 14978154134, i32 3}
!18 = !{i32 500000, i64 12636872640, i32 4}
!19 = !{i32 600000, i64 11748475564, i32 5}
!20 = !{i32 700000, i64 9740370976, i32 7}
!21 = !{i32 800000, i64 2641604201, i32 10}
!22 = !{i32 900000, i64 1154233495, i32 16}
!23 = !{i32 950000, i64 353949924, i32 30}
!24 = !{i32 990000, i64 202655375, i32 46}
!25 = !{i32 999000, i64 28900000, i32 57}
!26 = !{i32 999900, i64 1101517, i32 82}
!27 = !{i32 999990, i64 864162, i32 94}
!28 = !{i32 999999, i64 50268, i32 104}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !41, i64 8}
!37 = !{!"node", !38, i64 0, !41, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !38, i64 80, !38, i64 88, !41, i64 96, !41, i64 100}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"any pointer", !39, i64 0}
!43 = !{!37, !42, i64 24}
!44 = distinct !{!44, !45}
!45 = !{!"llvm.loop.mustprogress"}
!46 = distinct !{!46, !45}
