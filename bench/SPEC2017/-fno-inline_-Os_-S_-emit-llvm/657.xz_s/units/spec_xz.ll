; ModuleID = 'spec_xz.c'
source_filename = "spec_xz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_filter = type { i64, ptr }
%struct.lzma_options_lzma = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }

@.str.5 = private unnamed_addr constant [25 x i8] c"Memory allocation failed\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Specified preset is not supported\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1
@.str.8 = private unnamed_addr constant [66 x i8] c"Error initializing encoder with preset=%u check=%u: %s (code %u)\0A\00", align 1
@spec_fd = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Decompress write error on %d: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Input not in XZ format\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Unsupported compression options\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Compressed data is corrupt\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"Compressed data is truncated or otherwise corrupt\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"Unknown return code\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"Decompression decoder error: %s (code %u)\0A\00", align 1
@.str.16 = private unnamed_addr constant [58 x i8] c"lzma_stream_decoder reports an unsupported check method: \00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Unsupported decompression flags\00", align 1
@.str.23 = private unnamed_addr constant [42 x i8] c"Error initializing decoder: %s (code %u)\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@str.24 = private unnamed_addr constant [6 x i8] c"CRC64\00", align 1
@str.25 = private unnamed_addr constant [6 x i8] c"CRC32\00", align 1
@str.26 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@str.27 = private unnamed_addr constant [33 x i8] c"unknown!  This shouldn't happen.\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @init_encoder(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [5 x %struct.lzma_filter], align 16
  %6 = alloca %struct.lzma_options_lzma, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #8
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr %6, ptr %1
  %9 = icmp ugt i32 %3, 15
  %10 = select i1 %9, i32 4, i32 %3
  %11 = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %8, i32 noundef %2) #9
  store i64 33, ptr %5, align 16, !tbaa !6
  %12 = getelementptr inbounds %struct.lzma_filter, ptr %5, i64 0, i32 1
  store ptr %8, ptr %12, align 8, !tbaa !12
  %13 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %5, i64 0, i64 1
  store i64 -1, ptr %13, align 16, !tbaa !6
  %14 = call i32 @lzma_stream_encoder(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %10) #9
  switch i32 %14, label %18 [
    i32 0, label %22
    i32 3, label %15
    i32 5, label %19
    i32 8, label %17
  ]

15:                                               ; preds = %4
  %16 = call i32 @lzma_get_check(ptr noundef %0) #9
  br label %19

17:                                               ; preds = %4
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %4, %15, %18, %17
  %20 = phi ptr [ @.str.7, %18 ], [ @.str.6, %17 ], [ @.str.5, %15 ], [ @.str.5, %4 ]
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %2, i32 noundef %10, ptr noundef nonnull %20, i32 noundef %14) #10
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi i1 [ false, %19 ], [ true, %4 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #8
  ret i1 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @uncompressStream(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.lzma_stream, align 8
  %4 = alloca [8192 x i8], align 16
  %5 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #8
  %6 = call fastcc zeroext i1 @init_decoder(ptr noundef nonnull %3) #10
  br i1 %6, label %7, label %57

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lzma_stream, ptr %3, i64 0, i32 1
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %5, ptr %9, align 8, !tbaa !13
  %10 = getelementptr inbounds %struct.lzma_stream, ptr %3, i64 0, i32 4
  store i64 8192, ptr %10, align 8, !tbaa !16
  br label %13

11:                                               ; preds = %47
  %12 = load i64, ptr %8, align 8, !tbaa !17
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i64 [ %12, %11 ], [ 0, %7 ]
  %15 = phi i32 [ %29, %11 ], [ 0, %7 ]
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load ptr, ptr @spec_fd, align 8, !tbaa !18
  %19 = call i32 @spec_mem_feof(ptr noundef %18, i32 noundef 3, i32 noundef %0) #9
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  store ptr %4, ptr %3, align 8, !tbaa !19
  %22 = load ptr, ptr @spec_fd, align 8, !tbaa !18
  %23 = call i64 @spec_mem_fread(ptr noundef %22, i32 noundef 3, ptr noundef nonnull %4, i64 noundef 1, i32 noundef 8192, i32 noundef %0) #9
  store i64 %23, ptr %8, align 8, !tbaa !17
  %24 = load ptr, ptr @spec_fd, align 8, !tbaa !18
  %25 = call i32 @spec_mem_feof(ptr noundef %24, i32 noundef 3, i32 noundef %0) #9
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 %15, i32 3
  br label %28

28:                                               ; preds = %21, %17, %13
  %29 = phi i32 [ %15, %17 ], [ %15, %13 ], [ %27, %21 ]
  %30 = call i32 @lzma_code(ptr noundef nonnull %3, i32 noundef %29) #9
  %31 = load i64, ptr %10, align 8, !tbaa !16
  %32 = icmp eq i64 %31, 0
  %33 = icmp eq i32 %30, 1
  %34 = select i1 %32, i1 true, i1 %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %28
  %36 = sub i64 8192, %31
  %37 = load ptr, ptr @spec_fd, align 8, !tbaa !18
  %38 = trunc i64 %36 to i32
  %39 = call i64 @spec_mem_fwrite(ptr noundef %37, i32 noundef 3, ptr noundef nonnull %5, i64 noundef 1, i32 noundef %38, i32 noundef %1) #9
  %40 = icmp eq i64 %39, %36
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store ptr %5, ptr %9, align 8, !tbaa !13
  store i64 8192, ptr %10, align 8, !tbaa !16
  br label %47

42:                                               ; preds = %35
  %43 = tail call ptr @__errno_location() #11
  %44 = load i32, ptr %43, align 4, !tbaa !20
  %45 = call ptr @strerror(i32 noundef %44) #9
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1, ptr noundef %45) #10
  br label %57

47:                                               ; preds = %41, %28
  switch i32 %30, label %54 [
    i32 0, label %11
    i32 1, label %48
    i32 5, label %49
    i32 7, label %50
    i32 8, label %51
    i32 9, label %52
    i32 10, label %53
  ]

48:                                               ; preds = %47
  call void @lzma_end(ptr noundef nonnull %3) #9
  br label %57

49:                                               ; preds = %47
  br label %54

50:                                               ; preds = %47
  br label %54

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  br label %54

53:                                               ; preds = %47
  br label %54

54:                                               ; preds = %47, %53, %52, %51, %50, %49
  %55 = phi ptr [ @.str.5, %49 ], [ @.str.10, %50 ], [ @.str.11, %51 ], [ @.str.12, %52 ], [ @.str.13, %53 ], [ @.str.14, %47 ]
  %56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %55, i32 noundef %30) #10
  br label %57

57:                                               ; preds = %42, %54, %48, %2
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i1 @init_decoder(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @lzma_stream_decoder(ptr noundef %0, i64 noundef -1, i32 noundef 10) #9
  switch i32 %2, label %17 [
    i32 0, label %21
    i32 3, label %3
    i32 5, label %18
    i32 8, label %16
  ]

3:                                                ; preds = %1
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) #10
  %5 = tail call i32 @lzma_get_check(ptr noundef %0) #9
  switch i32 %5, label %14 [
    i32 0, label %6
    i32 1, label %8
    i32 4, label %10
    i32 10, label %12
  ]

6:                                                ; preds = %3
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.26)
  br label %21

8:                                                ; preds = %3
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.25)
  br label %21

10:                                               ; preds = %3
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.24)
  br label %21

12:                                               ; preds = %3
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %21

14:                                               ; preds = %3
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.27)
  br label %21

16:                                               ; preds = %1
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %1, %17, %16
  %19 = phi ptr [ @.str.14, %17 ], [ @.str.22, %16 ], [ @.str.5, %1 ]
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull %19, i32 noundef %2) #10
  br label %21

21:                                               ; preds = %6, %8, %10, %12, %14, %1, %18
  %22 = phi i1 [ false, %18 ], [ true, %1 ], [ true, %14 ], [ true, %12 ], [ true, %10 ], [ true, %8 ], [ true, %6 ]
  ret i1 %22
}

; Function Attrs: optsize
declare i32 @spec_mem_feof(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @spec_mem_fread(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @spec_mem_fwrite(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #6

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"", !8, i64 0, !11, i64 8}
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!7, !11, i64 8}
!13 = !{!14, !11, i64 24}
!14 = !{!"", !11, i64 0, !8, i64 8, !8, i64 16, !11, i64 24, !8, i64 32, !8, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !15, i64 128, !15, i64 132}
!15 = !{!"int", !9, i64 0}
!16 = !{!14, !8, i64 32}
!17 = !{!14, !8, i64 8}
!18 = !{!11, !11, i64 0}
!19 = !{!14, !11, i64 0}
!20 = !{!15, !15, i64 0}
