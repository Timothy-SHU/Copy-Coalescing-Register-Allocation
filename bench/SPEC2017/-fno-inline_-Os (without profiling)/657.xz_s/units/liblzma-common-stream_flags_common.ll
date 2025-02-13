; ModuleID = 'liblzma/common/stream_flags_common.c'
source_filename = "liblzma/common/stream_flags_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }

@lzma_header_magic = dso_local local_unnamed_addr constant [6 x i8] c"\FD7zXZ\00", align 1
@lzma_footer_magic = dso_local local_unnamed_addr constant [2 x i8] c"YZ", align 1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @lzma_stream_flags_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 8, !tbaa !6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %33

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 8, !tbaa !6
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %33

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !12
  %11 = icmp ugt i32 %10, 15
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.lzma_stream_flags, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !12
  %15 = icmp ugt i32 %14, 15
  br i1 %15, label %33, label %16

16:                                               ; preds = %12
  %17 = icmp eq i32 %10, %14
  br i1 %17, label %18, label %33

18:                                               ; preds = %16
  %19 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !13
  %21 = icmp eq i64 %20, -1
  br i1 %21, label %32, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.lzma_stream_flags, ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !13
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc zeroext i1 @is_backward_size_valid(ptr noundef nonnull %0) #1
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = tail call fastcc zeroext i1 @is_backward_size_valid(ptr noundef nonnull %1) #1
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = icmp eq i64 %20, %24
  br i1 %31, label %32, label %33

32:                                               ; preds = %30, %22, %18
  br label %33

33:                                               ; preds = %30, %26, %28, %16, %8, %12, %2, %5, %32
  %34 = phi i32 [ 0, %32 ], [ 8, %5 ], [ 8, %2 ], [ 11, %12 ], [ 11, %8 ], [ 9, %16 ], [ 11, %28 ], [ 11, %26 ], [ 9, %30 ]
  ret i32 %34
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i1 @is_backward_size_valid(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lzma_stream_flags, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !13
  %4 = add i64 %3, -4
  %5 = icmp ult i64 %4, 17179869181
  %6 = and i64 %3, 3
  %7 = icmp eq i64 %6, 0
  %8 = and i1 %5, %7
  ret i1 %8
}

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !11, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !8, i64 44, !8, i64 48}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!7, !8, i64 16}
!13 = !{!7, !11, i64 8}
