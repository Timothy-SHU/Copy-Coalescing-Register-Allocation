; ModuleID = 'physmem.c'
source_filename = "physmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @physmem_total() local_unnamed_addr #0 !prof !37 {
  %1 = tail call i64 @sysconf(i32 noundef 85) #2
  %2 = tail call i64 @sysconf(i32 noundef 30) #2
  %3 = icmp slt i64 %1, 0
  %4 = icmp slt i64 %2, 0
  %5 = select i1 %3, i1 true, i1 %4
  %6 = sitofp i64 %2 to double
  %7 = sitofp i64 %1 to double
  %8 = fmul double %7, %6
  %9 = select i1 %5, double 0.000000e+00, double %8
  ret double %9
}

; Function Attrs: optsize
declare i64 @sysconf(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @physmem_available() local_unnamed_addr #0 !prof !38 {
  %1 = tail call i64 @sysconf(i32 noundef 86) #2
  %2 = tail call i64 @sysconf(i32 noundef 30) #2
  %3 = icmp slt i64 %1, 0
  %4 = icmp slt i64 %2, 0
  %5 = select i1 %3, i1 true, i1 %4
  %6 = sitofp i64 %2 to double
  %7 = sitofp i64 %1 to double
  %8 = fmul double %7, %6
  br i1 %5, label %9, label %12

9:                                                ; preds = %0
  %10 = tail call double @physmem_total() #3
  %11 = fmul double %10, 2.500000e-01
  br label %12

12:                                               ; preds = %0, %9
  %13 = phi double [ %8, %0 ], [ %11, %9 ]
  ret double %13
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 41384367471}
!4 = !{!"MaxCount", i64 1634498074}
!5 = !{!"MaxInternalCount", i64 547036138}
!6 = !{!"MaxFunctionCount", i64 1634498074}
!7 = !{!"NumCounts", i64 195328}
!8 = !{!"NumFunctions", i64 22513}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1634498074, i32 1}
!14 = !{i32 100000, i64 272534181, i32 9}
!15 = !{i32 200000, i64 109006700, i32 29}
!16 = !{i32 300000, i64 55802042, i32 85}
!17 = !{i32 400000, i64 37542678, i32 177}
!18 = !{i32 500000, i64 23214123, i32 321}
!19 = !{i32 600000, i64 14141732, i32 538}
!20 = !{i32 700000, i64 7343732, i32 948}
!21 = !{i32 800000, i64 3522590, i32 1768}
!22 = !{i32 900000, i64 1189516, i32 3798}
!23 = !{i32 950000, i64 537165, i32 6437}
!24 = !{i32 990000, i64 138704, i32 12217}
!25 = !{i32 999000, i64 22717, i32 17399}
!26 = !{i32 999900, i64 2200, i32 21474}
!27 = !{i32 999990, i64 190, i32 26113}
!28 = !{i32 999999, i64 38, i32 30999}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @physmem_total, ptr @sysconf, i64 6}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 3}
!38 = !{!"function_entry_count", i64 0}
