; ModuleID = 'rand2.c'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@spec_seed = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @setseed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr %0, align 4, !tbaa !5
  %3 = icmp slt i32 %2, 0
  %4 = sub nsw i32 0, %2
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 20090120, i32 %2
  %7 = select i1 %3, i32 %4, i32 %6
  store i32 %7, ptr @spec_seed, align 4, !tbaa !5
  tail call void @spec_srand(i32 noundef %7) #5
  ret i32 0
}

; Function Attrs: optsize
declare void @spec_srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rseed() local_unnamed_addr #2 {
  %1 = load i32, ptr @spec_seed, align 4, !tbaa !5
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @gauss(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call fastcc double @gaussa(ptr noundef %0, ptr noundef %1) #6
  ret double %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @gaussa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call fastcc double @rand2a() #6
  %5 = tail call double @llvm.fmuladd.f64(double %4, double 2.000000e+00, double -1.000000e+00)
  %6 = tail call fastcc double @rand2a() #6
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double -1.000000e+00)
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = fcmp oge double %9, 1.000000e+00
  %11 = fcmp oeq double %9, 0.000000e+00
  %12 = or i1 %10, %11
  br i1 %12, label %3, label %13, !llvm.loop !9

13:                                               ; preds = %3
  %14 = tail call double @log(double noundef %9) #5
  %15 = fmul double %14, -2.000000e+00
  %16 = fdiv double %15, %9
  %17 = tail call double @sqrt(double noundef %16) #5
  %18 = fmul double %5, %17
  %19 = load double, ptr %1, align 8, !tbaa !11
  %20 = load double, ptr %0, align 8, !tbaa !11
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %18, double %20)
  ret double %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @rand2() local_unnamed_addr #0 {
  %1 = tail call fastcc double @rand2a() #6
  ret double %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @rand2a() unnamed_addr #0 {
  %1 = tail call double @spec_rand() #5
  ret double %1
}

; Function Attrs: optsize
declare double @spec_rand() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #4

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !7, i64 0}
