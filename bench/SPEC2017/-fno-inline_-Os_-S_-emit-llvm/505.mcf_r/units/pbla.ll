; ModuleID = 'pbla.c'
source_filename = "pbla.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.node = type { i64, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32 }

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @primal_iminus(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2, ptr noundef readonly %3, ptr nocapture noundef writeonly %4) local_unnamed_addr #0 {
  %6 = icmp eq ptr %2, %3
  br i1 %6, label %75, label %7

7:                                                ; preds = %5, %70
  %8 = phi ptr [ %73, %70 ], [ null, %5 ]
  %9 = phi ptr [ %72, %70 ], [ %2, %5 ]
  %10 = phi ptr [ %71, %70 ], [ %3, %5 ]
  %11 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 11
  %12 = load i64, ptr %11, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 11
  %14 = load i64, ptr %13, align 8, !tbaa !5
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %43

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %0, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 10
  %23 = load i64, ptr %22, align 8, !tbaa !14
  %24 = icmp sgt i64 %21, %23
  br i1 %24, label %37, label %39

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !15
  %28 = getelementptr inbounds %struct.node, ptr %27, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !15
  %30 = icmp eq ptr %29, null
  br i1 %30, label %39, label %31

31:                                               ; preds = %25
  %32 = load i64, ptr %0, align 8, !tbaa !13
  %33 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 10
  %34 = load i64, ptr %33, align 8, !tbaa !14
  %35 = sub nsw i64 1, %34
  %36 = icmp sgt i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31, %20
  %38 = phi i64 [ %23, %20 ], [ %35, %31 ]
  store i64 %38, ptr %0, align 8, !tbaa !13
  store i64 0, ptr %1, align 8, !tbaa !13
  br label %39

39:                                               ; preds = %37, %25, %31, %20
  %40 = phi ptr [ %8, %20 ], [ %8, %31 ], [ %8, %25 ], [ %9, %37 ]
  %41 = getelementptr inbounds %struct.node, ptr %9, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !15
  br label %70

43:                                               ; preds = %7
  %44 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !12
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, ptr %0, align 8, !tbaa !13
  %49 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 10
  %50 = load i64, ptr %49, align 8, !tbaa !14
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %66, label %64

52:                                               ; preds = %43
  %53 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !15
  %55 = getelementptr inbounds %struct.node, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !15
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %52
  %59 = load i64, ptr %0, align 8, !tbaa !13
  %60 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 10
  %61 = load i64, ptr %60, align 8, !tbaa !14
  %62 = sub nsw i64 1, %61
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %58, %47
  %65 = phi i64 [ %50, %47 ], [ %62, %58 ]
  store i64 %65, ptr %0, align 8, !tbaa !13
  store i64 1, ptr %1, align 8, !tbaa !13
  br label %66

66:                                               ; preds = %64, %52, %58, %47
  %67 = phi ptr [ %8, %58 ], [ %8, %52 ], [ %8, %47 ], [ %10, %64 ]
  %68 = getelementptr inbounds %struct.node, ptr %10, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !15
  br label %70

70:                                               ; preds = %66, %39
  %71 = phi ptr [ %10, %39 ], [ %69, %66 ]
  %72 = phi ptr [ %42, %39 ], [ %9, %66 ]
  %73 = phi ptr [ %40, %39 ], [ %67, %66 ]
  %74 = icmp eq ptr %72, %71
  br i1 %74, label %75, label %7, !llvm.loop !16

75:                                               ; preds = %70, %5
  %76 = phi ptr [ %2, %5 ], [ %71, %70 ]
  %77 = phi ptr [ null, %5 ], [ %73, %70 ]
  store ptr %76, ptr %4, align 8, !tbaa !18
  ret ptr %77
}

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 88}
!6 = !{!"node", !7, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 100}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!6, !10, i64 8}
!13 = !{!7, !7, i64 0}
!14 = !{!6, !7, i64 80}
!15 = !{!6, !11, i64 24}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!11, !11, i64 0}
