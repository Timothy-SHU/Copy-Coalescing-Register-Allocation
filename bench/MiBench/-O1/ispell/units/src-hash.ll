; ModuleID = 'src/hash.c'
source_filename = "src/hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hashheader = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [5 x i8], [13 x i8], i8, i8, i8, [228 x i16], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [228 x i8], [128 x i8], [100 x [11 x i8]], [100 x i32], [100 x i32], i16 }

@hashheader = external local_unnamed_addr global %struct.hashheader, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @hash(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %0, i64 4
  br label %4

4:                                                ; preds = %2, %10
  %5 = phi i32 [ 3, %2 ], [ %18, %10 ]
  %6 = phi i64 [ 0, %2 ], [ %17, %10 ]
  %7 = phi ptr [ %0, %2 ], [ %12, %10 ]
  %8 = load i8, ptr %7, align 1, !tbaa !5
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %4
  %11 = shl i64 %6, 8
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  %13 = zext i8 %8 to i64
  %14 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !5
  %16 = zext i8 %15 to i64
  %17 = or disjoint i64 %11, %16
  %18 = add nsw i32 %5, -1
  %19 = icmp eq i32 %5, 0
  br i1 %19, label %20, label %4, !llvm.loop !8

20:                                               ; preds = %10, %4
  %21 = phi ptr [ %3, %10 ], [ %7, %4 ]
  %22 = phi i64 [ %17, %10 ], [ %6, %4 ]
  %23 = load i8, ptr %21, align 1, !tbaa !5
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %20, %25
  %26 = phi i8 [ %39, %25 ], [ %23, %20 ]
  %27 = phi i64 [ %38, %25 ], [ %22, %20 ]
  %28 = phi ptr [ %33, %25 ], [ %21, %20 ]
  %29 = shl i64 %27, 5
  %30 = lshr i64 %27, 27
  %31 = and i64 %30, 31
  %32 = or disjoint i64 %31, %29
  %33 = getelementptr inbounds i8, ptr %28, i64 1
  %34 = zext i8 %26 to i64
  %35 = getelementptr inbounds %struct.hashheader, ptr @hashheader, i64 0, i32 22, i64 %34
  %36 = load i8, ptr %35, align 1, !tbaa !5
  %37 = zext i8 %36 to i64
  %38 = xor i64 %32, %37
  %39 = load i8, ptr %33, align 1, !tbaa !5
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %25, !llvm.loop !10

41:                                               ; preds = %25, %20
  %42 = phi i64 [ %22, %20 ], [ %38, %25 ]
  %43 = sext i32 %1 to i64
  %44 = urem i64 %42, %43
  %45 = trunc i64 %44 to i32
  ret i32 %45
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !9}
