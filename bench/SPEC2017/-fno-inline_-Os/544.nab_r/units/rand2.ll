; ModuleID = 'rand2.c'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@spec_seed = internal unnamed_addr global i32 0, align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @setseed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !41 {
  %2 = load i32, ptr %0, align 4, !tbaa !42
  %3 = icmp slt i32 %2, 0
  %4 = sub nsw i32 0, %2
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, i32 20090120, i32 %2
  %7 = select i1 %3, i32 %4, i32 %6, !prof !46
  store i32 %7, ptr @spec_seed, align 4, !tbaa !42
  tail call void @spec_srand(i32 noundef %7) #5
  ret i32 0
}

; Function Attrs: optsize
declare void @spec_srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rseed() local_unnamed_addr #2 !prof !47 {
  %1 = load i32, ptr @spec_seed, align 4, !tbaa !42
  ret i32 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @gauss(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !48 {
  %3 = tail call fastcc double @gaussa(ptr noundef %0, ptr noundef %1) #6
  ret double %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @gaussa(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !48 !PGOFuncName !49 {
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
  br i1 %12, label %3, label %13, !prof !50, !llvm.loop !51

13:                                               ; preds = %3
  %14 = tail call double @log(double noundef %9) #5
  %15 = fmul double %14, -2.000000e+00
  %16 = fdiv double %15, %9
  %17 = tail call double @sqrt(double noundef %16) #5
  %18 = fmul double %5, %17
  %19 = load double, ptr %1, align 8, !tbaa !53
  %20 = load double, ptr %0, align 8, !tbaa !53
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %18, double %20)
  ret double %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local double @rand2() local_unnamed_addr #0 !prof !47 {
  %1 = tail call fastcc double @rand2a() #6
  ret double %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @rand2a() unnamed_addr #0 !prof !55 !PGOFuncName !56 {
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!40}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 36494405452}
!4 = !{!"MaxCount", i64 7149406114}
!5 = !{!"MaxInternalCount", i64 7149406114}
!6 = !{!"MaxFunctionCount", i64 1283723375}
!7 = !{!"NumCounts", i64 1914}
!8 = !{!"NumFunctions", i64 240}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 7149406114, i32 1}
!14 = !{i32 100000, i64 7149406114, i32 1}
!15 = !{i32 200000, i64 7140152539, i32 2}
!16 = !{i32 300000, i64 7140152539, i32 2}
!17 = !{i32 400000, i64 3344610218, i32 4}
!18 = !{i32 500000, i64 3344610218, i32 4}
!19 = !{i32 600000, i64 2054445201, i32 5}
!20 = !{i32 700000, i64 2041548705, i32 10}
!21 = !{i32 800000, i64 2041548705, i32 10}
!22 = !{i32 900000, i64 2041548705, i32 10}
!23 = !{i32 950000, i64 855650904, i32 12}
!24 = !{i32 990000, i64 428072471, i32 14}
!25 = !{i32 999000, i64 9072759, i32 28}
!26 = !{i32 999900, i64 104986, i32 54}
!27 = !{i32 999990, i64 19030, i32 143}
!28 = !{i32 999999, i64 2509, i32 165}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39}
!35 = !{ptr @setseed, ptr @spec_srand, i64 1}
!36 = !{ptr @gauss, ptr @gaussa, i64 114180}
!37 = !{ptr @gaussa, ptr @rand2a, i64 290504}
!38 = !{ptr @gaussa, ptr @log, i64 114180}
!39 = !{ptr @rand2a, ptr @spec_rand, i64 290502}
!40 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!41 = !{!"function_entry_count", i64 1}
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!"branch_weights", i32 1, i32 2}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!"function_entry_count", i64 114180}
!49 = !{!"rand2.c:gaussa"}
!50 = !{!"branch_weights", i32 31072, i32 114181}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!54, !54, i64 0}
!54 = !{!"double", !44, i64 0}
!55 = !{!"function_entry_count", i64 290502}
!56 = !{!"rand2.c:rand2a"}
