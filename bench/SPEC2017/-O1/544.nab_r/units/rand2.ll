; ModuleID = 'rand2.c'
source_filename = "rand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@spec_seed = internal unnamed_addr global i32 0, align 4

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @setseed(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !39 {
  %2 = load i32, ptr %0, align 4, !tbaa !40
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %6, !prof !44

4:                                                ; preds = %1
  %5 = sub nsw i32 0, %2
  br label %9

6:                                                ; preds = %1
  %7 = icmp eq i32 %2, 0
  %8 = select i1 %7, i32 20090120, i32 %2, !prof !44
  br label %9

9:                                                ; preds = %6, %4
  %10 = phi i32 [ %5, %4 ], [ %8, %6 ]
  store i32 %10, ptr @spec_seed, align 4, !tbaa !40
  tail call void @spec_srand(i32 noundef %10) #6
  ret i32 0
}

declare void @spec_srand(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local i32 @rseed() local_unnamed_addr #2 !prof !45 {
  %1 = load i32, ptr @spec_seed, align 4, !tbaa !40
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define dso_local double @gauss(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 !prof !46 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = tail call double @spec_rand() #6
  %5 = tail call double @llvm.fmuladd.f64(double %4, double 2.000000e+00, double -1.000000e+00)
  %6 = tail call double @spec_rand() #6
  %7 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double -1.000000e+00)
  %8 = fmul double %7, %7
  %9 = tail call double @llvm.fmuladd.f64(double %5, double %5, double %8)
  %10 = fcmp oge double %9, 1.000000e+00
  %11 = fcmp oeq double %9, 0.000000e+00
  %12 = or i1 %10, %11
  br i1 %12, label %3, label %13, !prof !47, !llvm.loop !48

13:                                               ; preds = %3
  %14 = tail call double @log(double noundef %9) #6
  %15 = fmul double %14, -2.000000e+00
  %16 = fdiv double %15, %9
  %17 = tail call double @sqrt(double noundef %16) #6
  %18 = fmul double %5, %17
  %19 = load double, ptr %1, align 8, !tbaa !51
  %20 = load double, ptr %0, align 8, !tbaa !51
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %18, double %20)
  ret double %21
}

; Function Attrs: cold nounwind uwtable
define dso_local double @rand2() local_unnamed_addr #0 !prof !45 {
  %1 = tail call double @spec_rand() #6
  ret double %1
}

declare double @spec_rand() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #5

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 71759502456}
!8 = !{!"MaxCount", i64 6437746295}
!9 = !{!"MaxInternalCount", i64 6437746295}
!10 = !{!"MaxFunctionCount", i64 4086992896}
!11 = !{!"NumCounts", i64 3105}
!12 = !{!"NumFunctions", i64 247}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6437746295, i32 1}
!18 = !{i32 100000, i64 6429262894, i32 2}
!19 = !{i32 200000, i64 6273947450, i32 3}
!20 = !{i32 300000, i64 4086992896, i32 5}
!21 = !{i32 400000, i64 4086990118, i32 7}
!22 = !{i32 500000, i64 3500958832, i32 9}
!23 = !{i32 600000, i64 2110410321, i32 10}
!24 = !{i32 700000, i64 2043496448, i32 13}
!25 = !{i32 800000, i64 2030599974, i32 17}
!26 = !{i32 900000, i64 778157900, i32 22}
!27 = !{i32 950000, i64 477845251, i32 29}
!28 = !{i32 990000, i64 428072471, i32 35}
!29 = !{i32 999000, i64 4254510, i32 72}
!30 = !{i32 999900, i64 290502, i32 105}
!31 = !{i32 999990, i64 19030, i32 222}
!32 = !{i32 999999, i64 3606, i32 249}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @setseed, ptr @spec_srand, i64 1}
!36 = !{ptr @gauss, ptr @spec_rand, i64 290502}
!37 = !{ptr @gauss, ptr @log, i64 114180}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!"branch_weights", i32 0, i32 1}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!"function_entry_count", i64 114180}
!47 = !{!"branch_weights", i32 31071, i32 114180}
!48 = distinct !{!48, !49, !50}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !42, i64 0}
