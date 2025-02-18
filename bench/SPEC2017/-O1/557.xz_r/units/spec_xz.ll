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
@.str.16 = private unnamed_addr constant [32 x i8] c"Compress write error on %d: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"File size limits exceeded\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"Compression encoder error: %s (code %u)\0A\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"lzma_stream_decoder reports an unsupported check method: \00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Unsupported decompression flags\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"Error initializing decoder: %s (code %u)\0A\00", align 1
@str = private unnamed_addr constant [7 x i8] c"SHA256\00", align 1
@str.27 = private unnamed_addr constant [6 x i8] c"CRC64\00", align 1
@str.28 = private unnamed_addr constant [6 x i8] c"CRC32\00", align 1
@str.29 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@str.30 = private unnamed_addr constant [33 x i8] c"unknown!  This shouldn't happen.\00", align 1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i1 @init_encoder(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !50 {
  %5 = alloca [5 x %struct.lzma_filter], align 16
  %6 = alloca %struct.lzma_options_lzma, align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #9
  %7 = icmp eq ptr %1, null
  %8 = select i1 %7, ptr %6, ptr %1, !prof !51
  %9 = icmp ugt i32 %3, 15
  %10 = select i1 %9, i32 4, i32 %3, !prof !52
  %11 = call zeroext i8 @lzma_lzma_preset(ptr noundef nonnull %8, i32 noundef %2) #9
  store i64 33, ptr %5, align 16, !tbaa !53
  %12 = getelementptr inbounds %struct.lzma_filter, ptr %5, i64 0, i32 1
  store ptr %8, ptr %12, align 8, !tbaa !59
  %13 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %5, i64 0, i64 1
  store i64 -1, ptr %13, align 16, !tbaa !53
  %14 = call i32 @lzma_stream_encoder(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %10) #9
  switch i32 %14, label %18 [
    i32 0, label %22
    i32 3, label %15
    i32 5, label %19
    i32 8, label %17
  ], !prof !60

15:                                               ; preds = %4
  %16 = call i32 @lzma_get_check(ptr noundef %0) #9
  br label %19

17:                                               ; preds = %4
  br label %19

18:                                               ; preds = %4
  br label %19

19:                                               ; preds = %4, %15, %18, %17
  %20 = phi ptr [ @.str.7, %18 ], [ @.str.6, %17 ], [ @.str.5, %15 ], [ @.str.5, %4 ]
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %2, i32 noundef %10, ptr noundef nonnull %20, i32 noundef %14)
  br label %22

22:                                               ; preds = %4, %19
  %23 = phi i1 [ false, %19 ], [ true, %4 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %5) #9
  ret i1 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i8 @lzma_lzma_preset(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_stream_encoder(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_get_check(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local void @uncompressStream(i32 noundef %0, i32 noundef %1) local_unnamed_addr #4 !prof !61 {
  %3 = alloca %struct.lzma_stream, align 8
  %4 = alloca [8192 x i8], align 16
  %5 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %3) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %3, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #9
  %6 = call i32 @lzma_stream_decoder(ptr noundef nonnull %3, i64 noundef -1, i32 noundef 10) #9
  switch i32 %6, label %15 [
    i32 0, label %22
    i32 3, label %7
    i32 5, label %16
    i32 8, label %14
  ], !prof !62

7:                                                ; preds = %2
  %8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19)
  %9 = call i32 @lzma_get_check(ptr noundef nonnull %3) #9
  switch i32 %9, label %13 [
    i32 0, label %19
    i32 1, label %10
    i32 4, label %11
    i32 10, label %12
  ]

10:                                               ; preds = %7
  br label %19

11:                                               ; preds = %7
  br label %19

12:                                               ; preds = %7
  br label %19

13:                                               ; preds = %7
  br label %19

14:                                               ; preds = %2
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %14, %2
  %17 = phi ptr [ @.str.14, %15 ], [ @.str.25, %14 ], [ @.str.5, %2 ]
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull %17, i32 noundef %6)
  br label %71

19:                                               ; preds = %7, %10, %11, %12, %13
  %20 = phi ptr [ @str.30, %13 ], [ @str, %12 ], [ @str.27, %11 ], [ @str.28, %10 ], [ @str.29, %7 ]
  %21 = call i32 @puts(ptr nonnull dereferenceable(1) %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %struct.lzma_stream, ptr %3, i64 0, i32 1
  %24 = getelementptr inbounds %struct.lzma_stream, ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store ptr %5, ptr %24, align 8, !tbaa !63
  %25 = getelementptr inbounds %struct.lzma_stream, ptr %3, i64 0, i32 4
  store i64 8192, ptr %25, align 8, !tbaa !66
  br label %26

26:                                               ; preds = %61, %22
  %27 = phi i32 [ 0, %22 ], [ %42, %61 ]
  %28 = load i64, ptr %23, align 8, !tbaa !67
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %41, !prof !68

30:                                               ; preds = %26
  %31 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %32 = call i32 @spec_mem_feof(ptr noundef %31, i32 noundef 3, i32 noundef %0) #9
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41, !prof !70

34:                                               ; preds = %30
  store ptr %4, ptr %3, align 8, !tbaa !71
  %35 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %36 = call i64 @spec_mem_fread(ptr noundef %35, i32 noundef 3, ptr noundef nonnull %4, i64 noundef 1, i32 noundef 8192, i32 noundef %0) #9
  store i64 %36, ptr %23, align 8, !tbaa !67
  %37 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %38 = call i32 @spec_mem_feof(ptr noundef %37, i32 noundef 3, i32 noundef %0) #9
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %27, i32 3, !prof !72
  br label %41

41:                                               ; preds = %34, %30, %26
  %42 = phi i32 [ %27, %30 ], [ %27, %26 ], [ %40, %34 ]
  %43 = call i32 @lzma_code(ptr noundef nonnull %3, i32 noundef %42) #9
  %44 = load i64, ptr %25, align 8, !tbaa !66
  %45 = icmp eq i64 %44, 0
  %46 = icmp eq i32 %43, 1
  %47 = select i1 %45, i1 true, i1 %46, !prof !73
  br i1 %47, label %48, label %61, !prof !74

48:                                               ; preds = %41
  %49 = sub i64 8192, %44
  %50 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %51 = trunc i64 %49 to i32
  %52 = call i64 @spec_mem_fwrite(ptr noundef %50, i32 noundef 3, ptr noundef nonnull %5, i64 noundef 1, i32 noundef %51, i32 noundef %1) #9
  %53 = icmp eq i64 %52, %49
  br i1 %53, label %59, label %54, !prof !75

54:                                               ; preds = %48
  %55 = tail call ptr @__errno_location() #10
  %56 = load i32, ptr %55, align 4, !tbaa !76
  %57 = call ptr @strerror(i32 noundef %56) #9
  %58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1, ptr noundef %57)
  br label %60

59:                                               ; preds = %48
  store ptr %5, ptr %24, align 8, !tbaa !63
  store i64 8192, ptr %25, align 8, !tbaa !66
  br label %60

60:                                               ; preds = %59, %54
  br i1 %53, label %61, label %71, !prof !75

61:                                               ; preds = %41, %60
  switch i32 %43, label %63 [
    i32 0, label %26
    i32 1, label %62
    i32 5, label %64
    i32 7, label %65
    i32 8, label %66
    i32 9, label %67
    i32 10, label %68
  ], !prof !77, !llvm.loop !78

62:                                               ; preds = %61
  call void @lzma_end(ptr noundef nonnull %3) #9
  br label %71

63:                                               ; preds = %61
  br label %68

64:                                               ; preds = %61
  br label %68

65:                                               ; preds = %61
  br label %68

66:                                               ; preds = %61
  br label %68

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %61, %67, %66, %65, %64, %63
  %69 = phi ptr [ @.str.14, %63 ], [ @.str.5, %64 ], [ @.str.10, %65 ], [ @.str.11, %66 ], [ @.str.12, %67 ], [ @.str.13, %61 ]
  %70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %69, i32 noundef %43)
  br label %71

71:                                               ; preds = %60, %16, %68, %62
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %3) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @spec_mem_feof(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @spec_mem_fread(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_code(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @spec_mem_fwrite(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @compressStream(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 !prof !50 {
  %4 = alloca %struct.lzma_stream, align 8
  %5 = alloca [8192 x i8], align 16
  %6 = alloca [8192 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %4, i8 0, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %6) #9
  %7 = icmp sgt i32 %2, -1
  %8 = select i1 %7, i32 4, i32 10, !prof !51
  %9 = call zeroext i1 @init_encoder(ptr noundef nonnull %4, ptr noundef null, i32 noundef %2, i32 noundef %8)
  br i1 %9, label %10, label %56, !prof !51

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.lzma_stream, ptr %4, i64 0, i32 1
  %12 = getelementptr inbounds %struct.lzma_stream, ptr %4, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr %6, ptr %12, align 8, !tbaa !63
  %13 = getelementptr inbounds %struct.lzma_stream, ptr %4, i64 0, i32 4
  store i64 8192, ptr %13, align 8, !tbaa !66
  br label %14

14:                                               ; preds = %49, %10
  %15 = phi i32 [ 0, %10 ], [ %30, %49 ]
  %16 = load i64, ptr %11, align 8, !tbaa !67
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29, !prof !80

18:                                               ; preds = %14
  %19 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %20 = call i32 @spec_mem_feof(ptr noundef %19, i32 noundef 3, i32 noundef %0) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %29, !prof !81

22:                                               ; preds = %18
  store ptr %5, ptr %4, align 8, !tbaa !71
  %23 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %24 = call i64 @spec_mem_fread(ptr noundef %23, i32 noundef 3, ptr noundef nonnull %5, i64 noundef 1, i32 noundef 8192, i32 noundef %0) #9
  store i64 %24, ptr %11, align 8, !tbaa !67
  %25 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %26 = call i32 @spec_mem_feof(ptr noundef %25, i32 noundef 3, i32 noundef %0) #9
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 %15, i32 3, !prof !82
  br label %29

29:                                               ; preds = %22, %18, %14
  %30 = phi i32 [ %15, %18 ], [ %15, %14 ], [ %28, %22 ]
  %31 = call i32 @lzma_code(ptr noundef nonnull %4, i32 noundef %30) #9
  %32 = load i64, ptr %13, align 8, !tbaa !66
  %33 = icmp eq i64 %32, 0
  %34 = icmp eq i32 %31, 1
  %35 = select i1 %33, i1 true, i1 %34, !prof !83
  br i1 %35, label %36, label %49, !prof !84

36:                                               ; preds = %29
  %37 = sub i64 8192, %32
  %38 = load ptr, ptr @spec_fd, align 8, !tbaa !69
  %39 = trunc i64 %37 to i32
  %40 = call i64 @spec_mem_fwrite(ptr noundef %38, i32 noundef 3, ptr noundef nonnull %6, i64 noundef 1, i32 noundef %39, i32 noundef %1) #9
  %41 = icmp eq i64 %40, %37
  br i1 %41, label %47, label %42, !prof !85

42:                                               ; preds = %36
  %43 = tail call ptr @__errno_location() #10
  %44 = load i32, ptr %43, align 4, !tbaa !76
  %45 = call ptr @strerror(i32 noundef %44) #9
  %46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %1, ptr noundef %45)
  br label %48

47:                                               ; preds = %36
  store ptr %6, ptr %12, align 8, !tbaa !63
  store i64 8192, ptr %13, align 8, !tbaa !66
  br label %48

48:                                               ; preds = %47, %42
  br i1 %41, label %49, label %56, !prof !85

49:                                               ; preds = %29, %48
  switch i32 %31, label %51 [
    i32 0, label %14
    i32 1, label %50
    i32 5, label %52
    i32 9, label %53
  ], !prof !86, !llvm.loop !87

50:                                               ; preds = %49
  call void @lzma_end(ptr noundef nonnull %4) #9
  br label %56

51:                                               ; preds = %49
  br label %53

52:                                               ; preds = %49
  br label %53

53:                                               ; preds = %49, %52, %51
  %54 = phi ptr [ @.str.14, %51 ], [ @.str.5, %52 ], [ @.str.17, %49 ]
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %54, i32 noundef %31)
  br label %56

56:                                               ; preds = %48, %53, %50, %3
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %4) #9
  ret void
}

declare i32 @lzma_stream_decoder(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #8

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!49}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 47149273342}
!8 = !{!"MaxCount", i64 6329676010}
!9 = !{!"MaxInternalCount", i64 6329676010}
!10 = !{!"MaxFunctionCount", i64 1717654358}
!11 = !{!"NumCounts", i64 2810}
!12 = !{!"NumFunctions", i64 379}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 6329676010, i32 1}
!18 = !{i32 100000, i64 6329676010, i32 1}
!19 = !{i32 200000, i64 5133904873, i32 2}
!20 = !{i32 300000, i64 1880543368, i32 4}
!21 = !{i32 400000, i64 1717654358, i32 6}
!22 = !{i32 500000, i64 1179118894, i32 9}
!23 = !{i32 600000, i64 845267354, i32 14}
!24 = !{i32 700000, i64 611059789, i32 20}
!25 = !{i32 800000, i64 289033984, i32 32}
!26 = !{i32 900000, i64 144512423, i32 55}
!27 = !{i32 950000, i64 47630439, i32 82}
!28 = !{i32 990000, i64 5873050, i32 171}
!29 = !{i32 999000, i64 869247, i32 334}
!30 = !{i32 999900, i64 80863, i32 461}
!31 = !{i32 999990, i64 32025, i32 533}
!32 = !{i32 999999, i64 3325, i32 567}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48}
!35 = !{ptr @init_encoder, ptr @lzma_lzma_preset, i64 1}
!36 = !{ptr @init_encoder, ptr @lzma_stream_encoder, i64 1}
!37 = !{ptr @uncompressStream, ptr @lzma_stream_decoder, i64 2}
!38 = !{ptr @uncompressStream, ptr @spec_mem_feof, i64 11980}
!39 = !{ptr @uncompressStream, ptr @spec_mem_fread, i64 5990}
!40 = !{ptr @uncompressStream, ptr @lzma_code, i64 44544}
!41 = !{ptr @uncompressStream, ptr @spec_mem_fwrite, i64 38562}
!42 = !{ptr @uncompressStream, ptr @lzma_end, i64 2}
!43 = !{ptr @compressStream, ptr @init_encoder, i64 1}
!44 = !{ptr @compressStream, ptr @spec_mem_feof, i64 64003}
!45 = !{ptr @compressStream, ptr @spec_mem_fread, i64 31998}
!46 = !{ptr @compressStream, ptr @lzma_code, i64 36314}
!47 = !{ptr @compressStream, ptr @spec_mem_fwrite, i64 4982}
!48 = !{ptr @compressStream, ptr @lzma_end, i64 1}
!49 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!50 = !{!"function_entry_count", i64 1}
!51 = !{!"branch_weights", i32 1, i32 0}
!52 = !{!"branch_weights", i32 0, i32 1}
!53 = !{!54, !55, i64 0}
!54 = !{!"", !55, i64 0, !58, i64 8}
!55 = !{!"long", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C/C++ TBAA"}
!58 = !{!"any pointer", !56, i64 0}
!59 = !{!54, !58, i64 8}
!60 = !{!"branch_weights", i32 0, i32 1, i32 0, i32 0, i32 0}
!61 = !{!"function_entry_count", i64 2}
!62 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0, i32 0}
!63 = !{!64, !58, i64 24}
!64 = !{!"", !58, i64 0, !55, i64 8, !55, i64 16, !58, i64 24, !55, i64 32, !55, i64 40, !58, i64 48, !58, i64 56, !58, i64 64, !58, i64 72, !58, i64 80, !58, i64 88, !55, i64 96, !55, i64 104, !55, i64 112, !55, i64 120, !65, i64 128, !65, i64 132}
!65 = !{!"int", !56, i64 0}
!66 = !{!64, !55, i64 32}
!67 = !{!64, !55, i64 8}
!68 = !{!"branch_weights", i32 5990, i32 38557}
!69 = !{!58, !58, i64 0}
!70 = !{!"branch_weights", i32 5990, i32 0}
!71 = !{!64, !58, i64 0}
!72 = !{!"branch_weights", i32 5988, i32 2}
!73 = !{!"branch_weights", i32 38564, i32 5983}
!74 = !{!"branch_weights", i32 38565, i32 5982}
!75 = !{!"branch_weights", i32 38565, i32 0}
!76 = !{!65, !65, i64 0}
!77 = !{!"branch_weights", i32 0, i32 44545, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0}
!78 = distinct !{!78, !79}
!79 = !{!"llvm.loop.unroll.disable"}
!80 = !{!"branch_weights", i32 32007, i32 4309}
!81 = !{!"branch_weights", i32 32000, i32 7}
!82 = !{!"branch_weights", i32 31999, i32 1}
!83 = !{!"branch_weights", i32 4981, i32 31335}
!84 = !{!"branch_weights", i32 4982, i32 31334}
!85 = !{!"branch_weights", i32 4982, i32 0}
!86 = !{!"branch_weights", i32 0, i32 36315, i32 1, i32 0, i32 0}
!87 = distinct !{!87, !79}
