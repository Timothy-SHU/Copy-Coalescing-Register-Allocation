; ModuleID = 'pbla.c'
source_filename = "pbla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @primal_iminus(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 !prof !34 {
  %6 = icmp eq ptr %2, %3
  br i1 %6, label %75, label %7, !prof !35

7:                                                ; preds = %5, %70
  %8 = phi ptr [ %73, %70 ], [ null, %5 ]
  %9 = phi ptr [ %72, %70 ], [ %2, %5 ]
  %10 = phi ptr [ %71, %70 ], [ %3, %5 ]
  %11 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !36
  %13 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 11
  %14 = load i64, ptr %13, align 8, !tbaa !36
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %43, !prof !43

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !44
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20, !prof !45

20:                                               ; preds = %16
  %21 = load i64, ptr %0, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 10
  %23 = load i64, ptr %22, align 8, !tbaa !47
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %37, label %39, !prof !48

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = getelementptr inbounds %struct.node, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31, !prof !50

31:                                               ; preds = %25
  %32 = load i64, ptr %0, align 8, !tbaa !46
  %33 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !47
  %35 = sub nsw i64 1, %34
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %39, !prof !51

37:                                               ; preds = %31, %20
  %38 = phi i64 [ %23, %20 ], [ %35, %31 ]
  store i64 %38, ptr %0, align 8, !tbaa !46
  store i64 0, ptr %1, align 8, !tbaa !46
  br label %39

39:                                               ; preds = %37, %25, %31, %20
  %40 = phi ptr [ %8, %20 ], [ %8, %31 ], [ %8, %25 ], [ %9, %37 ]
  %41 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !49
  br label %70

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !52

47:                                               ; preds = %43
  %48 = load i64, ptr %0, align 8, !tbaa !46
  %49 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 10
  %50 = load i64, ptr %49, align 8, !tbaa !47
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %66, label %64, !prof !53

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !49
  %55 = getelementptr inbounds %struct.node, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !49
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58, !prof !54

58:                                               ; preds = %52
  %59 = load i64, ptr %0, align 8, !tbaa !46
  %60 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 10
  %61 = load i64, ptr %60, align 8, !tbaa !47
  %62 = sub nsw i64 1, %61
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %66, label %64, !prof !55

64:                                               ; preds = %58, %47
  %65 = phi i64 [ %50, %47 ], [ %62, %58 ]
  store i64 %65, ptr %0, align 8, !tbaa !46
  store i64 1, ptr %1, align 8, !tbaa !46
  br label %66

66:                                               ; preds = %64, %52, %58, %47
  %67 = phi ptr [ %8, %58 ], [ %8, %52 ], [ %8, %47 ], [ %10, %64 ]
  %68 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !49
  br label %70

70:                                               ; preds = %66, %39
  %71 = phi ptr [ %10, %39 ], [ %69, %66 ]
  %72 = phi ptr [ %42, %39 ], [ %9, %66 ]
  %73 = phi ptr [ %40, %39 ], [ %67, %66 ]
  %74 = icmp eq ptr %72, %71
  br i1 %74, label %75, label %7, !prof !56, !llvm.loop !57

75:                                               ; preds = %70, %5
  %76 = phi ptr [ %2, %5 ], [ %72, %70 ]
  %77 = phi ptr [ null, %5 ], [ %73, %70 ]
  store ptr %76, ptr %4, align 8, !tbaa !60
  ret ptr %77
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!34 = !{!"function_entry_count", i64 1977246}
!35 = !{!"branch_weights", i32 1, i32 1977245}
!36 = !{!37, !38, i64 88}
!37 = !{!"node", !38, i64 0, !41, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !38, i64 80, !38, i64 88, !41, i64 96, !41, i64 100}
!38 = !{!"long", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"int", !39, i64 0}
!42 = !{!"any pointer", !39, i64 0}
!43 = !{!"branch_weights", i32 112546588, i32 120016093}
!44 = !{!37, !41, i64 8}
!45 = !{!"branch_weights", i32 55379793, i32 57166795}
!46 = !{!38, !38, i64 0}
!47 = !{!37, !38, i64 80}
!48 = !{!"branch_weights", i32 1946693, i32 55220102}
!49 = !{!37, !42, i64 24}
!50 = !{!"branch_weights", i32 0, i32 55379793}
!51 = !{!"branch_weights", i32 14041, i32 55365752}
!52 = !{!"branch_weights", i32 59961934, i32 60054159}
!53 = !{!"branch_weights", i32 59274592, i32 687342}
!54 = !{!"branch_weights", i32 30149, i32 60024010}
!55 = !{!"branch_weights", i32 59290385, i32 733625}
!56 = !{!"branch_weights", i32 1977245, i32 230585436}
!57 = distinct !{!57, !58, !59}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!42, !42, i64 0}
