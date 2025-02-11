; ModuleID = 'board.cpp'
source_filename = "board.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.state_t = type { i32, [64 x i32], i64, i64, i64, [13 x i64], i32, i32, [13 x i32], i32, i32, i32, i32, i32, i32, i32, i64, i64, [64 x %struct.move_x], [64 x i32], [64 x i32], [64 x %struct.anon], i64, i64, i32, [64 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i64] }
%struct.move_x = type { i32, i32, i32, i32, i64, i64 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.gamestate_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1000 x i32], [1000 x %struct.move_x], i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@material = external local_unnamed_addr constant [14 x i32], align 16

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4ranki(i32 noundef %0) local_unnamed_addr #0 {
  %2 = ashr i32 %0, 3
  %3 = sub nsw i32 8, %2
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z4filei(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 7
  %3 = add nuw nsw i32 %2, 1
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8sum_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_Z4filei(i32 noundef %0) #6, !range !6
  %4 = tail call noundef i32 @_Z4filei(i32 noundef %1) #6, !range !6
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = tail call noundef i32 @_Z4ranki(i32 noundef %0) #6, !range !7
  %8 = tail call noundef i32 @_Z4ranki(i32 noundef %1) #6, !range !7
  %9 = sub nsw i32 %7, %8
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = add nuw nsw i32 %10, %6
  ret i32 %11
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_Z4filei(i32 noundef %0) #6, !range !6
  %4 = tail call noundef i32 @_Z4filei(i32 noundef %1) #6, !range !6
  %5 = sub nsw i32 %3, %4
  %6 = tail call i32 @llvm.abs.i32(i32 %5, i1 true)
  %7 = tail call noundef i32 @_Z4ranki(i32 noundef %0) #6, !range !7
  %8 = tail call noundef i32 @_Z4ranki(i32 noundef %1) #6, !range !7
  %9 = sub nsw i32 %7, %8
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 true)
  %11 = tail call i32 @llvm.umax.i32(i32 %6, i32 %10)
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_Z16taxicab_dist_bitii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call noundef i32 @_Z12taxicab_distii(i32 noundef %0, i32 noundef %1) #6, !range !8
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_Z11check_phaseP11gamestate_tP7state_t(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #7
  %4 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !9
  store i64 %5, ptr %3, align 8, !tbaa !15
  %6 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 1
  %7 = icmp eq i64 %5, 0
  br i1 %7, label %60, label %8

8:                                                ; preds = %2, %35
  %9 = phi i32 [ %38, %35 ], [ 0, %2 ]
  %10 = phi i32 [ %37, %35 ], [ 0, %2 ]
  %11 = phi i32 [ %36, %35 ], [ 0, %2 ]
  %12 = call noundef i32 @_Z15FindFirstRemovePy(ptr noundef nonnull %3) #6
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, ptr %6, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !16
  switch i32 %15, label %16 [
    i32 1, label %35
    i32 2, label %35
    i32 13, label %35
    i32 5, label %31
    i32 6, label %31
  ]

16:                                               ; preds = %8
  %17 = and i32 %15, -2147483647
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = zext nneg i32 %15 to i64
  %21 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !16
  %23 = call i32 @llvm.abs.i32(i32 %22, i1 true)
  %24 = add nsw i32 %23, %9
  br label %31

25:                                               ; preds = %16
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds [14 x i32], ptr @material, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = call i32 @llvm.abs.i32(i32 %28, i1 true)
  %30 = add nsw i32 %29, %11
  br label %31

31:                                               ; preds = %8, %8, %19, %25
  %32 = phi i32 [ %11, %19 ], [ %30, %25 ], [ %11, %8 ], [ %11, %8 ]
  %33 = phi i32 [ %24, %19 ], [ %9, %25 ], [ %9, %8 ], [ %9, %8 ]
  %34 = add nsw i32 %10, 1
  br label %35

35:                                               ; preds = %8, %8, %8, %31
  %36 = phi i32 [ %32, %31 ], [ %11, %8 ], [ %11, %8 ], [ %11, %8 ]
  %37 = phi i32 [ %34, %31 ], [ %10, %8 ], [ %10, %8 ], [ %10, %8 ]
  %38 = phi i32 [ %33, %31 ], [ %9, %8 ], [ %9, %8 ], [ %9, %8 ]
  %39 = load i64, ptr %3, align 8, !tbaa !15
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %8, !llvm.loop !17

41:                                               ; preds = %35
  %42 = icmp sgt i32 %37, 11
  %43 = icmp slt i32 %38, 1701
  %44 = icmp slt i32 %36, 1701
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %42, label %46, label %58

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 12
  %48 = load i32, ptr %47, align 8, !tbaa !19
  %49 = icmp eq i32 %48, 60
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 13
  %52 = load i32, ptr %51, align 4, !tbaa !20
  %53 = icmp eq i32 %52, 4
  br i1 %53, label %54, label %58

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds %struct.state_t, ptr %1, i64 0, i32 9
  %56 = load i32, ptr %55, align 4, !tbaa !21
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %54, %50, %41
  %59 = select i1 %45, i32 2, i32 1
  br label %60

60:                                               ; preds = %58, %2, %54
  %61 = phi i32 [ 0, %54 ], [ 2, %2 ], [ %59, %58 ]
  %62 = getelementptr inbounds %struct.gamestate_t, ptr %0, i64 0, i32 1
  store i32 %61, ptr %62, align 4, !tbaa !22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #7
  ret void
}

; Function Attrs: optsize
declare noundef i32 @_Z15FindFirstRemovePy(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i32 1, i32 9}
!7 = !{i32 -268435447, i32 268435465}
!8 = !{i32 0, i32 536870912}
!9 = !{!10, !14, i64 264}
!10 = !{!"_ZTS7state_t", !11, i64 0, !12, i64 4, !14, i64 264, !14, i64 272, !14, i64 280, !12, i64 288, !11, i64 392, !11, i64 396, !12, i64 400, !11, i64 452, !11, i64 456, !11, i64 460, !11, i64 464, !11, i64 468, !11, i64 472, !11, i64 476, !14, i64 480, !14, i64 488, !12, i64 496, !12, i64 2544, !12, i64 2800, !12, i64 3056, !14, i64 4080, !14, i64 4088, !11, i64 4096, !12, i64 4100, !11, i64 4356, !11, i64 4360, !11, i64 4364, !11, i64 4368, !11, i64 4372, !11, i64 4376, !11, i64 4380, !11, i64 4384, !11, i64 4388, !11, i64 4392, !12, i64 4400}
!11 = !{!"int", !12, i64 0}
!12 = !{!"omnipotent char", !13, i64 0}
!13 = !{!"Simple C++ TBAA"}
!14 = !{!"long long", !12, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!11, !11, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!10, !11, i64 464}
!20 = !{!10, !11, i64 468}
!21 = !{!10, !11, i64 452}
!22 = !{!23, !11, i64 4}
!23 = !{!"_ZTS11gamestate_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !12, i64 64, !12, i64 4064, !14, i64 36064, !11, i64 36072, !11, i64 36076, !11, i64 36080, !11, i64 36084, !11, i64 36088, !11, i64 36092, !11, i64 36096, !11, i64 36100}
