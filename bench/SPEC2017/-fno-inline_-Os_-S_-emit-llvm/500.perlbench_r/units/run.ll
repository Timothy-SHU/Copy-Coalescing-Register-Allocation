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
define dso_local noundef i32 @Perl_runops_standard() local_unnamed_addr #0 {
  %1 = load ptr, ptr @PL_op, align 8, !tbaa !5
  br label %2

2:                                                ; preds = %2, %0
  %3 = phi ptr [ %1, %0 ], [ %6, %2 ]
  %4 = getelementptr inbounds %struct.op, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !9
  %6 = tail call ptr %5() #1
  store ptr %6, ptr @PL_op, align 8, !tbaa !5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %2, !llvm.loop !13

8:                                                ; preds = %2
  %9 = load i32, ptr @PL_sig_pending, align 4, !tbaa !15
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @PL_signalhook, align 8, !tbaa !5
  tail call void %12() #1
  br label %13

13:                                               ; preds = %8, %11
  store i8 0, ptr @PL_tainted, align 1, !tbaa !16
  ret i32 0
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !6, i64 16}
!10 = !{!"op", !6, i64 0, !6, i64 8, !6, i64 16, !11, i64 24, !12, i64 32, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !12, i64 33, !7, i64 34, !7, i64 35}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!12, !12, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"_Bool", !7, i64 0}
