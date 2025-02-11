; ModuleID = 'pflowup.c'
source_filename = "pflowup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @primal_update_flow(ptr noundef %0, ptr noundef %1, ptr noundef readnone %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, %2
  br i1 %4, label %5, label %7

5:                                                ; preds = %7, %3
  %6 = icmp eq ptr %1, %2
  br i1 %6, label %27, label %17

7:                                                ; preds = %3, %7
  %8 = phi ptr [ %15, %7 ], [ %0, %3 ]
  %9 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !6
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 10
  store i64 %12, ptr %13, align 8
  %14 = getelementptr inbounds %struct.node, ptr %8, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !13
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %5, label %7, !llvm.loop !14

17:                                               ; preds = %5, %17
  %18 = phi ptr [ %25, %17 ], [ %1, %5 ]
  %19 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !6
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 10
  store i64 %22, ptr %23, align 8
  %24 = getelementptr inbounds %struct.node, ptr %18, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !13
  %26 = icmp eq ptr %25, %2
  br i1 %26, label %27, label %17, !llvm.loop !16

27:                                               ; preds = %17, %5
  ret void
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 8}
!7 = !{!"node", !8, i64 0, !11, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 100}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"int", !9, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!7, !12, i64 24}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
