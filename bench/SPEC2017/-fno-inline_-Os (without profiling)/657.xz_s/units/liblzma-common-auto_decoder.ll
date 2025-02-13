; ModuleID = 'liblzma/common/auto_decoder.c'
source_filename = "liblzma/common/auto_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { %struct.lzma_next_coder_s, i64, i32, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_auto_decoder(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !13
  %11 = tail call i32 @auto_decoder_init(ptr noundef %8, ptr noundef %10, i64 noundef %1, i32 noundef %2) #4, !range !14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef nonnull %0) #3
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !15
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3, i64 3
  store i8 1, ptr %17, align 1, !tbaa !15
  br label %18

18:                                               ; preds = %13, %3, %14
  %19 = phi i32 [ %4, %3 ], [ %11, %13 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @auto_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !17
  %7 = icmp eq i64 %6, ptrtoint (ptr @auto_decoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @auto_decoder_init to i64), ptr %5, align 8, !tbaa !17
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %3, 16
  br i1 %12, label %13, label %32

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !19
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 80, ptr noundef %1) #3
  store ptr %17, ptr %0, align 8, !tbaa !19
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @auto_decode, ptr %20, align 8, !tbaa !20
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @auto_decoder_end, ptr %21, align 8, !tbaa !21
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  store ptr @auto_decoder_get_check, ptr %22, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @auto_decoder_memconfig, ptr %23, align 8, !tbaa !23
  store ptr null, ptr %17, align 8, !tbaa.struct !24
  %24 = getelementptr inbounds i8, ptr %17, i64 8
  store i64 -1, ptr %24, align 8, !tbaa.struct !27
  %25 = getelementptr inbounds i8, ptr %17, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %25, i8 0, i64 48, i1 false)
  %26 = load ptr, ptr %0, align 8, !tbaa !19
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi ptr [ %26, %19 ], [ %14, %13 ]
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 1
  store i64 %2, ptr %29, align 8, !tbaa !28
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 2
  store i32 %3, ptr %30, align 8, !tbaa !30
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 3
  store i32 0, ptr %31, align 4, !tbaa !31
  br label %32

32:                                               ; preds = %16, %11, %9, %27
  %33 = phi i32 [ 0, %27 ], [ 11, %9 ], [ 8, %11 ], [ 5, %16 ]
  ret i32 %33
}

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @auto_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !31
  switch i32 %11, label %55 [
    i32 0, label %12
    i32 1, label %37
    i32 2, label %49
  ]

12:                                               ; preds = %9
  %13 = load i64, ptr %3, align 8, !tbaa !26
  %14 = icmp ult i64 %13, %4
  br i1 %14, label %15, label %55

15:                                               ; preds = %12
  store i32 1, ptr %10, align 4, !tbaa !31
  %16 = getelementptr inbounds i8, ptr %2, i64 %13
  %17 = load i8, ptr %16, align 1, !tbaa !32
  %18 = icmp eq i8 %17, -3
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !28
  br i1 %18, label %21, label %26

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !30
  %24 = tail call i32 @lzma_stream_decoder_init(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %20, i32 noundef %23) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %37, label %55

26:                                               ; preds = %15
  %27 = tail call i32 @lzma_alone_decoder_init(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %20, i1 noundef zeroext true) #3
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !30
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = and i32 %31, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %21, %34, %9
  %38 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  %40 = load ptr, ptr %0, align 8, !tbaa !34
  %41 = tail call i32 %39(ptr noundef %40, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #3
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %55

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %45 = load i32, ptr %44, align 8, !tbaa !30
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  store i32 2, ptr %10, align 4, !tbaa !31
  br label %49

49:                                               ; preds = %48, %9
  %50 = load i64, ptr %3, align 8, !tbaa !26
  %51 = icmp ult i64 %50, %4
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %8, 3
  %54 = zext i1 %53 to i32
  br label %55

55:                                               ; preds = %37, %43, %9, %49, %34, %29, %12, %21, %26, %52
  %56 = phi i32 [ %54, %52 ], [ %24, %21 ], [ %27, %26 ], [ 0, %12 ], [ 2, %29 ], [ 4, %34 ], [ 9, %49 ], [ 11, %9 ], [ 1, %43 ], [ %41, %37 ]
  ret i32 %56
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @auto_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #3
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @auto_decoder_get_check(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !34
  %7 = tail call i32 %3(ptr noundef %6) #3
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @auto_decoder_memconfig(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !36
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %0, align 8, !tbaa !34
  %10 = tail call i32 %6(ptr noundef %9, ptr noundef %1, ptr noundef %2, i64 noundef %3) #3
  br label %14

11:                                               ; preds = %4
  store i64 32768, ptr %1, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !28
  store i64 %13, ptr %2, align 8, !tbaa !26
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ 0, %11 ]
  %16 = icmp eq i32 %15, 0
  %17 = icmp ne i64 %3, 0
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i64 %3, ptr %20, align 8, !tbaa !28
  br label %21

21:                                               ; preds = %19, %14
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare i32 @lzma_stream_decoder_init(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_alone_decoder_init(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 56}
!7 = !{!"", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !12, i64 128, !12, i64 132}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!7, !8, i64 48}
!14 = !{i32 0, i32 12}
!15 = !{!16, !16, i64 0}
!16 = !{!"_Bool", !9, i64 0}
!17 = !{!18, !11, i64 16}
!18 = !{!"lzma_next_coder_s", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!19 = !{!18, !8, i64 0}
!20 = !{!18, !8, i64 24}
!21 = !{!18, !8, i64 32}
!22 = !{!18, !8, i64 40}
!23 = !{!18, !8, i64 48}
!24 = !{i64 0, i64 8, !25, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !25, i64 32, i64 8, !25, i64 40, i64 8, !25, i64 48, i64 8, !25, i64 56, i64 8, !25}
!25 = !{!8, !8, i64 0}
!26 = !{!11, !11, i64 0}
!27 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !25, i64 24, i64 8, !25, i64 32, i64 8, !25, i64 40, i64 8, !25, i64 48, i64 8, !25}
!28 = !{!29, !11, i64 64}
!29 = !{!"lzma_coder_s", !18, i64 0, !11, i64 64, !12, i64 72, !12, i64 76}
!30 = !{!29, !12, i64 72}
!31 = !{!29, !12, i64 76}
!32 = !{!9, !9, i64 0}
!33 = !{!29, !8, i64 24}
!34 = !{!29, !8, i64 0}
!35 = !{!29, !8, i64 40}
!36 = !{!29, !8, i64 48}
