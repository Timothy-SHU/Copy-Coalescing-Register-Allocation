; ModuleID = 'caretx.c'
source_filename = "caretx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }

@.str = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@PL_origargv = external local_unnamed_addr global ptr, align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @Perl_set_caret_X() local_unnamed_addr #0 !prof !38 {
  %1 = tail call ptr @Perl_gv_fetchpvn_flags(ptr noundef nonnull @.str, i64 noundef 1, i32 noundef 129, i32 noundef 3) #2
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3, !prof !39

3:                                                ; preds = %0
  %4 = getelementptr inbounds %struct.gv, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !40
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  %7 = load ptr, ptr @PL_origargv, align 8, !tbaa !47
  %8 = load ptr, ptr %7, align 8, !tbaa !47
  tail call void @Perl_sv_setpv(ptr noundef %6, ptr noundef %8) #2
  br label %9

9:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: optsize
declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 43491971510}
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
!23 = !{i32 950000, i64 21523442, i32 170}
!24 = !{i32 990000, i64 1957094, i32 384}
!25 = !{i32 999000, i64 104162, i32 1106}
!26 = !{i32 999900, i64 11423, i32 2014}
!27 = !{i32 999990, i64 757, i32 3020}
!28 = !{i32 999999, i64 63, i32 4652}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @Perl_set_caret_X, ptr @Perl_gv_fetchpvn_flags, i64 1}
!36 = !{ptr @Perl_set_caret_X, ptr @Perl_sv_setpv, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"branch_weights", i32 1, i32 2}
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !45, i64 0}
!44 = !{!"gp", !45, i64 0, !45, i64 8, !45, i64 16, !46, i64 24, !46, i64 28, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !46, i64 64, !46, i64 67, !45, i64 72}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!"int", !41, i64 0}
!47 = !{!45, !45, i64 0}
