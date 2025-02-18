; ModuleID = 'caretx.c'
source_filename = "caretx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gv = type { ptr, i32, i32, %union.anon }
%union.anon = type { ptr }

@.str = private unnamed_addr constant [2 x i8] c"\18\00", align 1
@PL_origargv = external local_unnamed_addr global ptr, align 8

; Function Attrs: cold nounwind uwtable
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

declare ptr @Perl_gv_fetchpvn_flags(ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Perl_sv_setpv(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 53336217263}
!8 = !{!"MaxCount", i64 1126593358}
!9 = !{!"MaxInternalCount", i64 1126593358}
!10 = !{!"MaxFunctionCount", i64 465576726}
!11 = !{!"NumCounts", i64 53216}
!12 = !{!"NumFunctions", i64 2490}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 1126593358, i32 1}
!18 = !{i32 100000, i64 852534058, i32 6}
!19 = !{i32 200000, i64 504831111, i32 16}
!20 = !{i32 300000, i64 482068791, i32 26}
!21 = !{i32 400000, i64 459921484, i32 39}
!22 = !{i32 500000, i64 444801476, i32 50}
!23 = !{i32 600000, i64 426267029, i32 64}
!24 = !{i32 700000, i64 422040304, i32 74}
!25 = !{i32 800000, i64 220037356, i32 89}
!26 = !{i32 900000, i64 39885265, i32 162}
!27 = !{i32 950000, i64 20973884, i32 262}
!28 = !{i32 990000, i64 1545742, i32 632}
!29 = !{i32 999000, i64 97988, i32 1692}
!30 = !{i32 999900, i64 9981, i32 2885}
!31 = !{i32 999990, i64 671, i32 4392}
!32 = !{i32 999999, i64 57, i32 6648}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36}
!35 = !{ptr @Perl_set_caret_X, ptr @Perl_gv_fetchpvn_flags, i64 1}
!36 = !{ptr @Perl_set_caret_X, ptr @Perl_sv_setpv, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 1}
!39 = !{!"branch_weights", i32 0, i32 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!44, !45, i64 0}
!44 = !{!"gp", !45, i64 0, !45, i64 8, !45, i64 16, !46, i64 24, !46, i64 28, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !46, i64 64, !46, i64 67, !45, i64 72}
!45 = !{!"any pointer", !41, i64 0}
!46 = !{!"int", !41, i64 0}
!47 = !{!45, !45, i64 0}
