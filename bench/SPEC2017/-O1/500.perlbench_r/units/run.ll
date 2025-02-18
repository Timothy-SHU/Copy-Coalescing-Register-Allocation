; ModuleID = 'run.c'
source_filename = "run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.op = type { ptr, ptr, ptr, i64, i16, i8, i8 }

@PL_op = external local_unnamed_addr global ptr, align 8
@PL_sig_pending = external local_unnamed_addr global i32, align 4
@PL_signalhook = external local_unnamed_addr global ptr, align 8
@PL_tainted = external local_unnamed_addr global i8, align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @Perl_runops_standard() local_unnamed_addr #0 !prof !34 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !35
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi ptr [ %1, %0 ], [ %6, %2 ]
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !39
  %6 = tail call ptr %5() #1, !prof !43
  store ptr %6, ptr @PL_op, align 8, !tbaa !35
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %2, !prof !44, !llvm.loop !45

8:                                                ; preds = %2
  %9 = load i32, ptr @PL_sig_pending, align 4, !tbaa !48
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11, !prof !49

11:                                               ; preds = %8
  %12 = load ptr, ptr @PL_signalhook, align 8, !tbaa !35
  tail call void %12() #1
  br label %13

13:                                               ; preds = %8, %11
  store i8 0, ptr @PL_tainted, align 1, !tbaa !50
  ret i32 0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 707719}
!35 = !{!36, !36, i64 0}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!40, !36, i64 16}
!40 = !{!"op", !36, i64 0, !36, i64 8, !36, i64 16, !41, i64 24, !42, i64 32, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !42, i64 33, !37, i64 34, !37, i64 35}
!41 = !{!"long", !37, i64 0}
!42 = !{!"int", !37, i64 0}
!43 = !{!"VP", i32 0, i64 2258864501, i64 -1654927252762001223, i64 528717179, i64 7685338374546266569, i64 442530218, i64 7272372677054647763, i64 424923026}
!44 = !{!"branch_weights", i32 707719, i32 1200758}
!45 = distinct !{!45, !46, !47}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = !{!42, !42, i64 0}
!49 = !{!"branch_weights", i32 707719, i32 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"_Bool", !37, i64 0}
