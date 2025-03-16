; ModuleID = 'shc.c'
source_filename = "shc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stream_hc_state_s = type { ptr, ptr, ptr, i32, i32, i32 }

@byte_reverse_bits = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @hc_put_code_proc(i32 noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq i32 %0, 0
  %5 = lshr i32 %2, 24
  br i1 %4, label %27, label %6

6:                                                ; preds = %3
  %7 = zext nneg i32 %5 to i64
  %8 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !5
  %10 = getelementptr inbounds i8, ptr %1, i64 -3
  store i8 %9, ptr %10, align 1, !tbaa !5
  %11 = lshr i32 %2, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %1, i64 -2
  store i8 %15, ptr %16, align 1, !tbaa !5
  %17 = lshr i32 %2, 8
  %18 = and i32 %17, 255
  %19 = zext nneg i32 %18 to i64
  %20 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !5
  %22 = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 %21, ptr %22, align 1, !tbaa !5
  %23 = and i32 %2, 255
  %24 = zext nneg i32 %23 to i64
  %25 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !5
  br label %37

27:                                               ; preds = %3
  %28 = trunc i32 %5 to i8
  %29 = getelementptr inbounds i8, ptr %1, i64 -3
  store i8 %28, ptr %29, align 1, !tbaa !5
  %30 = lshr i32 %2, 16
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds i8, ptr %1, i64 -2
  store i8 %31, ptr %32, align 1, !tbaa !5
  %33 = lshr i32 %2, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, ptr %1, i64 -1
  store i8 %34, ptr %35, align 1, !tbaa !5
  %36 = trunc i32 %2 to i8
  br label %37

37:                                               ; preds = %27, %6
  %38 = phi i8 [ %36, %27 ], [ %26, %6 ]
  store i8 %38, ptr %1, align 1, !tbaa !5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @hc_put_last_bits_proc(ptr nocapture noundef %0, ptr noundef writeonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = icmp slt i32 %3, 32
  br i1 %5, label %6, label %26

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 3
  br label %8

8:                                                ; preds = %6, %20
  %9 = phi i32 [ %3, %6 ], [ %24, %20 ]
  %10 = phi i32 [ %2, %6 ], [ %23, %20 ]
  %11 = phi ptr [ %1, %6 ], [ %22, %20 ]
  %12 = lshr i32 %10, 24
  %13 = trunc i32 %12 to i8
  %14 = load i32, ptr %7, align 8, !tbaa !8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %8
  %17 = zext nneg i32 %12 to i64
  %18 = getelementptr inbounds [256 x i8], ptr @byte_reverse_bits, i64 0, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !5
  br label %20

20:                                               ; preds = %16, %8
  %21 = phi i8 [ %19, %16 ], [ %13, %8 ]
  %22 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 %21, ptr %22, align 1, !tbaa !5
  %23 = shl i32 %10, 8
  %24 = add nsw i32 %9, 8
  %25 = icmp slt i32 %9, 24
  br i1 %25, label %8, label %26, !llvm.loop !12

26:                                               ; preds = %20, %4
  %27 = phi ptr [ %1, %4 ], [ %22, %20 ]
  %28 = phi i32 [ %2, %4 ], [ %23, %20 ]
  %29 = phi i32 [ %3, %4 ], [ %24, %20 ]
  %30 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 4
  store i32 %28, ptr %30, align 4, !tbaa !14
  %31 = getelementptr inbounds %struct.stream_hc_state_s, ptr %0, i64 0, i32 5
  store i32 %29, ptr %31, align 8, !tbaa !15
  ret ptr %27
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 24}
!9 = !{!"stream_hc_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!9, !11, i64 28}
!15 = !{!9, !11, i64 32}
