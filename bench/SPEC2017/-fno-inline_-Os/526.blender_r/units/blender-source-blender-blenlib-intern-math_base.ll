; ModuleID = 'blender/source/blender/blenlib/intern/math_base.c'
source_filename = "blender/source/blender/blenlib/intern/math_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define dso_local double @double_round(double noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = sitofp i32 %1 to double
  %6 = tail call double @pow(double noundef 1.000000e+01, double noundef %5) #3
  %7 = fmul double %6, %0
  %8 = tail call double @llvm.fabs.f64(double %7)
  %9 = fcmp ueq double %8, 0x7FF0000000000000
  br i1 %9, label %31, label %15

10:                                               ; preds = %2
  %11 = sub nsw i32 0, %1
  %12 = sitofp i32 %11 to double
  %13 = tail call double @pow(double noundef 1.000000e+01, double noundef %12) #3
  %14 = fdiv double %0, %13
  br label %15

15:                                               ; preds = %4, %10
  %16 = phi double [ %6, %4 ], [ %13, %10 ]
  %17 = phi double [ %7, %4 ], [ %14, %10 ]
  %18 = tail call double @llvm.round.f64(double %17)
  %19 = fsub double %17, %18
  %20 = tail call double @llvm.fabs.f64(double %19)
  %21 = fcmp oeq double %20, 5.000000e-01
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = fmul double %17, 5.000000e-01
  %24 = tail call double @llvm.round.f64(double %23)
  %25 = fmul double %24, 2.000000e+00
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi double [ %25, %22 ], [ %18, %15 ]
  %28 = fdiv double %27, %16
  %29 = fmul double %16, %27
  %30 = select i1 %3, double %28, double %29
  br label %31

31:                                               ; preds = %4, %26
  %32 = phi double [ %30, %26 ], [ %0, %4 ]
  ret double %32
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

attributes #0 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 6524701}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 3}
!14 = !{i32 100000, i64 1843200, i32 3}
!15 = !{i32 200000, i64 1843200, i32 3}
!16 = !{i32 300000, i64 1843200, i32 3}
!17 = !{i32 400000, i64 1843200, i32 3}
!18 = !{i32 500000, i64 1843200, i32 3}
!19 = !{i32 600000, i64 1843200, i32 3}
!20 = !{i32 700000, i64 1843200, i32 3}
!21 = !{i32 800000, i64 1843200, i32 3}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 1440, i32 8}
!27 = !{i32 999990, i64 1440, i32 8}
!28 = !{i32 999999, i64 1, i32 37}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
