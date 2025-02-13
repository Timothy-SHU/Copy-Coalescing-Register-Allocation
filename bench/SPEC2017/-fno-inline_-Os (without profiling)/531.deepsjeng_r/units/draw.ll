; ModuleID = 'draw.cpp'
source_filename = "draw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z7is_drawP11gamestate_tP7state_t(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 15
  %4 = load i32, ptr %3, align 4, !tbaa !5
  %5 = icmp sgt i32 %4, 3
  br i1 %5, label %6, label %64

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 14
  %8 = load i32, ptr %7, align 8, !tbaa !11
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %34

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %12 = load i32, ptr %11, align 4, !tbaa !12
  %13 = add nsw i32 %12, %8
  %14 = xor i32 %4, -1
  %15 = add i32 %13, %14
  %16 = add nsw i32 %13, -3
  %17 = icmp sgt i32 %13, 2
  %18 = icmp sge i32 %16, %15
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %22 = load i64, ptr %21, align 8, !tbaa !14
  br label %28

23:                                               ; preds = %28
  %24 = add nsw i32 %29, -2
  %25 = icmp sgt i32 %29, 1
  %26 = icmp sge i32 %24, %15
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %34, !llvm.loop !15

28:                                               ; preds = %20, %23
  %29 = phi i32 [ %16, %20 ], [ %24, %23 ]
  %30 = zext nneg i32 %29 to i64
  %31 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !17
  %33 = icmp eq i64 %22, %32
  br i1 %33, label %64, label %23

34:                                               ; preds = %23, %10, %6
  %35 = icmp sgt i32 %4, 5
  %36 = icmp slt i32 %8, 2
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %64

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 15
  %40 = load i32, ptr %39, align 4, !tbaa !12
  %41 = add nsw i32 %40, %8
  %42 = sub nsw i32 %41, %4
  %43 = icmp sgt i32 %41, -1
  br i1 %43, label %44, label %64

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 16
  %46 = load i64, ptr %45, align 8, !tbaa !14
  %47 = zext nneg i32 %41 to i64
  br label %48

48:                                               ; preds = %44, %56
  %49 = phi i64 [ %47, %44 ], [ %58, %56 ]
  %50 = phi i32 [ 0, %44 ], [ %57, %56 ]
  %51 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 36, i64 %49
  %52 = load i64, ptr %51, align 8, !tbaa !17
  %53 = icmp eq i64 %46, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = icmp sgt i32 %50, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %48, %54
  %57 = phi i32 [ 1, %54 ], [ %50, %48 ]
  %58 = add nsw i64 %49, -2
  %59 = trunc i64 %58 to i32
  %60 = trunc i64 %49 to i32
  %61 = icmp sgt i32 %60, 1
  %62 = icmp sle i32 %42, %59
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %48, label %64, !llvm.loop !18

64:                                               ; preds = %28, %54, %56, %38, %2, %34
  %65 = phi i32 [ 0, %34 ], [ 0, %2 ], [ 0, %38 ], [ 1, %54 ], [ 0, %56 ], [ 1, %28 ]
  ret i32 %65
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z21insufficient_materialP7state_t(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 1
  %3 = load i32, ptr %2, align 4, !tbaa !19
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %52

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 2
  %7 = load i32, ptr %6, align 4, !tbaa !19
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 7
  %11 = load i32, ptr %10, align 4, !tbaa !19
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 8
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 9
  %19 = load i32, ptr %18, align 4, !tbaa !19
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 10
  %23 = load i32, ptr %22, align 4, !tbaa !19
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 12
  %27 = load i32, ptr %26, align 4, !tbaa !19
  %28 = icmp slt i32 %27, 2
  %29 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 11
  %30 = load i32, ptr %29, align 4, !tbaa !19
  %31 = icmp slt i32 %30, 2
  %32 = select i1 %28, i1 %31, i1 false
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa !19
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %39 = load i32, ptr %38, align 4, !tbaa !19
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %25, %37, %33
  %42 = or i32 %30, %27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 3
  %46 = load i32, ptr %45, align 4, !tbaa !19
  %47 = icmp slt i32 %46, 3
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.state_t, ptr %0, i64 0, i32 8, i64 4
  %50 = load i32, ptr %49, align 4, !tbaa !19
  %51 = icmp slt i32 %50, 3
  br i1 %51, label %53, label %52

52:                                               ; preds = %41, %44, %48, %21, %17, %13, %9, %5, %1
  br label %53

53:                                               ; preds = %48, %37, %52
  %54 = phi i32 [ 0, %52 ], [ 1, %37 ], [ 1, %48 ]
  ret i32 %54
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 476}
!6 = !{!"_ZTS7state_t", !7, i64 0, !8, i64 4, !10, i64 264, !10, i64 272, !10, i64 280, !8, i64 288, !7, i64 392, !7, i64 396, !8, i64 400, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !10, i64 480, !10, i64 488, !8, i64 496, !8, i64 2544, !8, i64 2800, !8, i64 3056, !10, i64 4080, !10, i64 4088, !7, i64 4096, !8, i64 4100, !7, i64 4356, !7, i64 4360, !7, i64 4364, !7, i64 4368, !7, i64 4372, !7, i64 4376, !7, i64 4380, !7, i64 4384, !7, i64 4388, !7, i64 4392, !8, i64 4400}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"long long", !8, i64 0}
!11 = !{!6, !7, i64 472}
!12 = !{!13, !7, i64 60}
!13 = !{!"_ZTS11gamestate_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !8, i64 64, !8, i64 4064, !10, i64 36064, !7, i64 36072, !7, i64 36076, !7, i64 36080, !7, i64 36084, !7, i64 36088, !7, i64 36092, !7, i64 36096, !7, i64 36100}
!14 = !{!6, !10, i64 480}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!10, !10, i64 0}
!18 = distinct !{!18, !16}
!19 = !{!7, !7, i64 0}
