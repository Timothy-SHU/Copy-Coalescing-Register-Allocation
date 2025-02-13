; ModuleID = 'physmem.c'
source_filename = "physmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @physmem_total() local_unnamed_addr #0 {
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
define dso_local double @physmem_available() local_unnamed_addr #0 {
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

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
