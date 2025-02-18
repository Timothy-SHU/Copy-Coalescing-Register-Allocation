; ModuleID = 'pflowup.c'
source_filename = "pflowup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @primal_update_flow(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 !prof !34 {
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %7, %3
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %27, label %17

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %15, %7 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !35
  %11 = icmp eq i32 %10, 0
  %12 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 10
  %13 = zext i1 %11 to i64
  store i64 %13, ptr %12, align 8, !tbaa !42
  %14 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !43
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %5, label %7, !llvm.loop !44

17:                                               ; preds = %5, %17
  %18 = phi ptr [ %25, %17 ], [ %1, %5 ]
  %19 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !35
  %21 = icmp ne i32 %20, 0
  %22 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 10
  %23 = zext i1 %21 to i64
  store i64 %23, ptr %22, align 8, !tbaa !42
  %24 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %17, !llvm.loop !47

27:                                               ; preds = %17, %5
  ret void
}

attributes #0 = { cold nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 135822698359}
!8 = !{!"MaxCount", i64 17199625996}
!9 = !{!"MaxInternalCount", i64 11238593286}
!10 = !{!"MaxFunctionCount", i64 17199625996}
!11 = !{!"NumCounts", i64 388}
!12 = !{!"NumFunctions", i64 38}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 17199625996, i32 1}
!18 = !{i32 100000, i64 17199625996, i32 1}
!19 = !{i32 200000, i64 11238593286, i32 2}
!20 = !{i32 300000, i64 8939527315, i32 4}
!21 = !{i32 400000, i64 8160331559, i32 5}
!22 = !{i32 500000, i64 6848194679, i32 7}
!23 = !{i32 600000, i64 4703930260, i32 10}
!24 = !{i32 700000, i64 3754953164, i32 13}
!25 = !{i32 800000, i64 2790238363, i32 18}
!26 = !{i32 900000, i64 825639170, i32 26}
!27 = !{i32 950000, i64 336885004, i32 38}
!28 = !{i32 990000, i64 90508259, i32 76}
!29 = !{i32 999000, i64 9513862, i32 104}
!30 = !{i32 999900, i64 960032, i32 152}
!31 = !{i32 999990, i64 162202, i32 175}
!32 = !{i32 999999, i64 29993, i32 190}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !40, i64 8}
!36 = !{!"node", !37, i64 0, !40, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 100}
!37 = !{!"long", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!36, !37, i64 80}
!43 = !{!36, !41, i64 24}
!44 = distinct !{!44, !45, !46}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = distinct !{!47, !45, !46}
