; ModuleID = 'run.c'
source_filename = "run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }

@PL_op = external local_unnamed_addr global ptr, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @Perl_runops_standard() local_unnamed_addr #0 !prof !35 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !36
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi ptr [ %1, %0 ], [ %6, %2 ]
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = tail call ptr %5() #1
  store ptr %6, ptr @PL_op, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %2, !prof !44, !llvm.loop !45

8:                                                ; preds = %2
  %9 = load i32, ptr @PL_sig_pending, align 4, !tbaa !47
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !48

11:                                               ; preds = %8
  %12 = load ptr, ptr @PL_signalhook, align 8, !tbaa !36
  tail call void %12() #1
  br label %13

13:                                               ; preds = %8, %11
  store i8 0, ptr @PL_tainted, align 1, !tbaa !49
  ret i32 0
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491972207}
!4 = !{!"MaxCount", i64 4342352624}
!5 = !{!"MaxInternalCount", i64 4342352624}
!6 = !{!"MaxFunctionCount", i64 3033009960}
!7 = !{!"NumCounts", i64 40262}
!8 = !{!"NumFunctions", i64 2170}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 4342352624, i32 1}
!14 = !{i32 100000, i64 3033009960, i32 2}
!15 = !{i32 200000, i64 2317897115, i32 3}
!16 = !{i32 300000, i64 528717179, i32 7}
!17 = !{i32 400000, i64 462639867, i32 16}
!18 = !{i32 500000, i64 457545339, i32 26}
!19 = !{i32 600000, i64 423510107, i32 35}
!20 = !{i32 700000, i64 420555191, i32 45}
!21 = !{i32 800000, i64 220071415, i32 59}
!22 = !{i32 900000, i64 40456743, i32 99}
!23 = !{i32 950000, i64 21523500, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 64, i32 4611}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 707767}
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!41, !37, i64 16}
!41 = !{!"op", !37, i64 0, !37, i64 8, !37, i64 16, !42, i64 24, !43, i64 32, !43, i64 33, !43, i64 33, !43, i64 33, !43, i64 33, !43, i64 33, !43, i64 33, !43, i64 33, !38, i64 34, !38, i64 35}
!42 = !{!"long", !38, i64 0}
!43 = !{!"int", !38, i64 0}
!44 = !{!"branch_weights", i32 353884, i32 -2123790983}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!43, !43, i64 0}
!48 = !{!"branch_weights", i32 707768, i32 1}
!49 = !{!50, !50, i64 0}
!50 = !{!"_Bool", !38, i64 0}
