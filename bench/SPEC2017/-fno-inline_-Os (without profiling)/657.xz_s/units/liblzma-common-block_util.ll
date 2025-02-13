; ModuleID = 'liblzma/common/block_util.c'
source_filename = "liblzma/common/block_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_block_compressed_size(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0) #3, !range !6
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = tail call i32 @lzma_check_size(i32 noundef %9) #4
  %11 = add i32 %10, %7
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %12, %1
  br i1 %13, label %14, label %22

14:                                               ; preds = %5
  %15 = sub i64 %1, %12
  %16 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %17 = load i64, ptr %16, align 8, !tbaa !15
  %18 = icmp eq i64 %17, -1
  %19 = icmp eq i64 %17, %15
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  store i64 %15, ptr %16, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %5, %14, %21, %2
  %23 = phi i32 [ 11, %2 ], [ 9, %5 ], [ 0, %21 ], [ 9, %14 ]
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_block_unpadded_size(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %36, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %36

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = add i32 %8, -8
  %10 = icmp ult i32 %9, 1017
  %11 = and i32 %8, 3
  %12 = icmp eq i32 %11, 0
  %13 = and i1 %10, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !15
  %17 = icmp slt i64 %16, -1
  %18 = icmp eq i64 %16, 0
  %19 = or i1 %17, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %14
  %21 = icmp eq i64 %16, -1
  %22 = getelementptr inbounds %struct.lzma_block, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !14
  %24 = icmp ugt i32 %23, 15
  %25 = or i1 %21, %24
  %26 = xor i1 %24, true
  %27 = sext i1 %26 to i64
  br i1 %25, label %36, label %28

28:                                               ; preds = %20
  %29 = zext nneg i32 %8 to i64
  %30 = add nuw i64 %16, %29
  %31 = tail call i32 @lzma_check_size(i32 noundef %23) #4
  %32 = zext i32 %31 to i64
  %33 = add nuw i64 %30, %32
  %34 = icmp ugt i64 %33, 9223372036854775804
  %35 = select i1 %34, i64 0, i64 %33
  br label %36

36:                                               ; preds = %20, %1, %3, %6, %14, %28
  %37 = phi i64 [ %35, %28 ], [ 0, %14 ], [ %27, %20 ], [ 0, %6 ], [ 0, %3 ], [ 0, %1 ]
  ret i64 %37
}

; Function Attrs: optsize
declare i32 @lzma_check_size(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @lzma_block_total_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i64 @lzma_block_unpadded_size(ptr noundef %0) #3, !range !6
  %3 = icmp eq i64 %2, -1
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i64 @vli_ceil4(i64 noundef %2) #3, !range !17
  br label %6

6:                                                ; preds = %4, %1
  %7 = phi i64 [ %5, %4 ], [ -1, %1 ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @vli_ceil4(i64 noundef %0) unnamed_addr #2 {
  %2 = add nuw nsw i64 %0, 3
  %3 = and i64 %2, -4
  ret i64 %3
}

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize }
attributes #4 = { nounwind optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{i64 -1, i64 9223372036854775805}
!7 = !{!8, !9, i64 4}
!8 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !12, i64 16, !12, i64 24, !13, i64 32, !10, i64 40, !13, i64 104, !13, i64 112, !13, i64 120, !9, i64 128, !9, i64 132, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !10, i64 200, !10, i64 201, !10, i64 202, !10, i64 203, !10, i64 204, !10, i64 205, !10, i64 206, !10, i64 207}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"long", !10, i64 0}
!13 = !{!"any pointer", !10, i64 0}
!14 = !{!8, !9, i64 8}
!15 = !{!8, !12, i64 16}
!16 = !{!8, !9, i64 0}
!17 = !{i64 0, i64 9223372036854775805}
