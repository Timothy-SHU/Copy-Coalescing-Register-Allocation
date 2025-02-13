; ModuleID = 'ldecod_src/blk_prediction.c'
source_filename = "ldecod_src/blk_prediction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @compute_residue(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = icmp sgt i32 %6, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %7
  %10 = sext i32 %4 to i64
  %11 = sext i32 %3 to i64
  %12 = icmp sgt i32 %5, 0
  %13 = zext nneg i32 %6 to i64
  br label %14

14:                                               ; preds = %9, %41
  %15 = phi i64 [ 0, %9 ], [ %42, %41 ]
  br i1 %12, label %16, label %41

16:                                               ; preds = %14
  %17 = getelementptr inbounds ptr, ptr %2, i64 %15
  %18 = load ptr, ptr %17, align 8, !tbaa !6
  %19 = getelementptr inbounds i32, ptr %18, i64 %11
  %20 = getelementptr inbounds ptr, ptr %1, i64 %15
  %21 = load ptr, ptr %20, align 8, !tbaa !6
  %22 = getelementptr inbounds i16, ptr %21, i64 %11
  %23 = getelementptr inbounds ptr, ptr %0, i64 %15
  %24 = load ptr, ptr %23, align 8, !tbaa !6
  %25 = getelementptr inbounds i16, ptr %24, i64 %10
  br label %26

26:                                               ; preds = %16, %26
  %27 = phi i32 [ %39, %26 ], [ 0, %16 ]
  %28 = phi ptr [ %38, %26 ], [ %19, %16 ]
  %29 = phi ptr [ %34, %26 ], [ %22, %16 ]
  %30 = phi ptr [ %31, %26 ], [ %25, %16 ]
  %31 = getelementptr inbounds i16, ptr %30, i64 1
  %32 = load i16, ptr %30, align 2, !tbaa !10
  %33 = zext i16 %32 to i32
  %34 = getelementptr inbounds i16, ptr %29, i64 1
  %35 = load i16, ptr %29, align 2, !tbaa !10
  %36 = zext i16 %35 to i32
  %37 = sub nsw i32 %33, %36
  %38 = getelementptr inbounds i32, ptr %28, i64 1
  store i32 %37, ptr %28, align 4, !tbaa !12
  %39 = add nuw nsw i32 %27, 1
  %40 = icmp eq i32 %39, %5
  br i1 %40, label %41, label %26, !llvm.loop !14

41:                                               ; preds = %26, %14
  %42 = add nuw nsw i64 %15, 1
  %43 = icmp eq i64 %42, %13
  br i1 %43, label %44, label %14, !llvm.loop !16

44:                                               ; preds = %41, %7
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @sample_reconstruct(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %9
  %12 = sext i32 %4 to i64
  %13 = sext i32 %3 to i64
  %14 = icmp sgt i32 %5, 0
  %15 = zext nneg i32 %6 to i64
  br label %16

16:                                               ; preds = %11, %45
  %17 = phi i64 [ 0, %11 ], [ %46, %45 ]
  br i1 %14, label %18, label %45

18:                                               ; preds = %16
  %19 = getelementptr inbounds ptr, ptr %2, i64 %17
  %20 = load ptr, ptr %19, align 8, !tbaa !6
  %21 = getelementptr inbounds i32, ptr %20, i64 %13
  %22 = getelementptr inbounds ptr, ptr %1, i64 %17
  %23 = load ptr, ptr %22, align 8, !tbaa !6
  %24 = getelementptr inbounds i16, ptr %23, i64 %13
  %25 = getelementptr inbounds ptr, ptr %0, i64 %17
  %26 = load ptr, ptr %25, align 8, !tbaa !6
  %27 = getelementptr inbounds i16, ptr %26, i64 %12
  br label %28

28:                                               ; preds = %18, %28
  %29 = phi i32 [ %43, %28 ], [ 0, %18 ]
  %30 = phi ptr [ %33, %28 ], [ %21, %18 ]
  %31 = phi ptr [ %36, %28 ], [ %24, %18 ]
  %32 = phi ptr [ %42, %28 ], [ %27, %18 ]
  %33 = getelementptr inbounds i32, ptr %30, i64 1
  %34 = load i32, ptr %30, align 4, !tbaa !12
  %35 = tail call fastcc i32 @rshift_rnd_sf(i32 noundef %34, i32 noundef %8) #3
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = load i16, ptr %31, align 2, !tbaa !10
  %38 = zext i16 %37 to i32
  %39 = add nsw i32 %35, %38
  %40 = tail call fastcc i32 @iClip1(i32 noundef %7, i32 noundef %39) #3
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds i16, ptr %32, i64 1
  store i16 %41, ptr %32, align 2, !tbaa !10
  %43 = add nuw nsw i32 %29, 1
  %44 = icmp eq i32 %43, %5
  br i1 %44, label %45, label %28, !llvm.loop !17

45:                                               ; preds = %28, %16
  %46 = add nuw nsw i64 %17, 1
  %47 = icmp eq i64 %46, %15
  br i1 %47, label %48, label %16, !llvm.loop !18

48:                                               ; preds = %45, %9
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @iClip1(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call fastcc i32 @imax(i32 noundef %1) #3
  %4 = tail call fastcc i32 @imin(i32 noundef %3, i32 noundef %0) #3
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @rshift_rnd_sf(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = add nsw i32 %1, -1
  %4 = shl nuw i32 1, %3
  %5 = add nsw i32 %4, %0
  %6 = ashr i32 %5, %1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imax(i32 noundef %0) unnamed_addr #1 {
  %2 = tail call i32 @llvm.smax.i32(i32 %0, i32 0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #1 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
