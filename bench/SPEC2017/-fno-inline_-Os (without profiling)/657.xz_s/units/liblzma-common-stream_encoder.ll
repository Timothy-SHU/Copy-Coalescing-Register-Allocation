; ModuleID = 'liblzma/common/stream_encoder.c'
source_filename = "liblzma/common/stream_encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i8, %struct.lzma_next_coder_s, %struct.lzma_block, [5 x %struct.lzma_filter], %struct.lzma_next_coder_s, ptr, i64, i64, [1024 x i8] }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

@stream_encode.convert = internal unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 3, i32 3], align 16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca %struct.lzma_stream_flags, align 8
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !6
  %8 = icmp eq i64 %7, ptrtoint (ptr @lzma_stream_encoder_init to i64)
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #4
  br label %10

10:                                               ; preds = %9, %4
  store i64 ptrtoint (ptr @lzma_stream_encoder_init to i64), ptr %6, align 8, !tbaa !6
  %11 = icmp eq ptr %2, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !13
  br label %35

18:                                               ; preds = %12
  %19 = tail call ptr @lzma_alloc(i64 noundef 1472, ptr noundef %1) #4
  store ptr %19, ptr %0, align 8, !tbaa !12
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @stream_encode, ptr %22, align 8, !tbaa !18
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @stream_encoder_end, ptr %23, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @stream_encoder_update, ptr %24, align 8, !tbaa !20
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 4
  store i64 -1, ptr %25, align 8, !tbaa !21
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 2
  store ptr null, ptr %26, align 8, !tbaa.struct !23
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 2, i32 1
  store i64 -1, ptr %27, align 8, !tbaa.struct !26
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i64 48, i1 false)
  %29 = load ptr, ptr %0, align 8, !tbaa !12
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 5
  store ptr null, ptr %30, align 8, !tbaa.struct !23
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 5, i32 1
  store i64 -1, ptr %31, align 8, !tbaa.struct !26
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 5, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %32, i8 0, i64 48, i1 false)
  %33 = load ptr, ptr %0, align 8, !tbaa !12
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 6
  store ptr null, ptr %34, align 8, !tbaa !13
  br label %35

35:                                               ; preds = %15, %21
  %36 = phi ptr [ null, %21 ], [ %17, %15 ]
  %37 = phi ptr [ %33, %21 ], [ %13, %15 ]
  store i32 0, ptr %37, align 8, !tbaa !27
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %37, i64 0, i32 3
  store i32 0, ptr %38, align 8, !tbaa !28
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %37, i64 0, i32 3, i32 2
  store i32 %3, ptr %39, align 8, !tbaa !29
  tail call void @lzma_index_end(ptr noundef %36, ptr noundef %1) #4
  %40 = tail call ptr @lzma_index_init(ptr noundef %1) #4
  %41 = load ptr, ptr %0, align 8, !tbaa !12
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %41, i64 0, i32 6
  store ptr %40, ptr %42, align 8, !tbaa !13
  %43 = icmp eq ptr %40, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %45 = getelementptr inbounds %struct.lzma_stream_flags, ptr %5, i64 0, i32 2
  store i32 %3, ptr %45, align 8, !tbaa !30
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %41, i64 0, i32 9
  %47 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %5, ptr noundef nonnull %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 8, !tbaa !12
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %50, i64 0, i32 7
  store i64 0, ptr %51, align 8, !tbaa !32
  %52 = getelementptr inbounds %struct.lzma_coder_s, ptr %50, i64 0, i32 8
  store i64 12, ptr %52, align 8, !tbaa !33
  %53 = call i32 @stream_encoder_update(ptr noundef %50, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null) #6
  br label %54

54:                                               ; preds = %44, %49
  %55 = phi i32 [ %53, %49 ], [ %47, %44 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  br label %56

56:                                               ; preds = %35, %18, %10, %54
  %57 = phi i32 [ %55, %54 ], [ 11, %10 ], [ 5, %18 ], [ 5, %35 ]
  ret i32 %57
}

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @stream_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = load i64, ptr %6, align 8, !tbaa !25
  %12 = icmp ult i64 %11, %7
  br i1 %12, label %13, label %102

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 3
  %16 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %24 = zext i32 %8 to i64
  %25 = getelementptr inbounds [4 x i32], ptr @stream_encode.convert, i64 0, i64 %24
  %26 = icmp eq i32 %8, 1
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 4
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 1
  %31 = icmp eq i32 %8, 3
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %33 = load i32, ptr %0, align 8, !tbaa !27
  br label %34

34:                                               ; preds = %13, %98
  %35 = phi i32 [ %33, %13 ], [ %99, %98 ]
  switch i32 %35, label %102 [
    i32 0, label %36
    i32 2, label %36
    i32 5, label %36
    i32 1, label %47
    i32 3, label %71
    i32 4, label %85
  ]

36:                                               ; preds = %34, %34, %34
  %37 = load i64, ptr %21, align 8, !tbaa !33
  %38 = call i64 @lzma_bufcpy(ptr noundef nonnull %20, ptr noundef nonnull %32, i64 noundef %37, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #4
  %39 = load i64, ptr %32, align 8, !tbaa !32
  %40 = load i64, ptr %21, align 8, !tbaa !33
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %102, label %42

42:                                               ; preds = %36
  %43 = load i32, ptr %0, align 8, !tbaa !27
  %44 = icmp eq i32 %43, 5
  br i1 %44, label %102, label %45

45:                                               ; preds = %42
  store i64 0, ptr %32, align 8, !tbaa !32
  %46 = add i32 %43, 1
  store i32 %46, ptr %0, align 8, !tbaa !27
  br label %98

47:                                               ; preds = %34
  %48 = load i64, ptr %3, align 8, !tbaa !25
  %49 = icmp eq i64 %48, %4
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  br i1 %31, label %54, label %51

51:                                               ; preds = %50
  %52 = icmp ne i32 %8, 0
  %53 = zext i1 %52 to i32
  br label %102

54:                                               ; preds = %50
  %55 = load ptr, ptr %17, align 8, !tbaa !13
  %56 = call i32 @lzma_index_encoder_init(ptr noundef nonnull %14, ptr noundef %1, ptr noundef %55) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %54
  store i32 4, ptr %0, align 8, !tbaa !27
  br label %98

59:                                               ; preds = %47
  %60 = load i8, ptr %29, align 4, !tbaa !34, !range !35, !noundef !36
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = call fastcc i32 @block_encoder_init(ptr noundef nonnull %0, ptr noundef %1) #6
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %102

65:                                               ; preds = %62, %59
  store i8 0, ptr %29, align 4, !tbaa !34
  %66 = call i32 @lzma_block_header_encode(ptr noundef nonnull %27, ptr noundef nonnull %20) #4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %102

68:                                               ; preds = %65
  %69 = load i32, ptr %30, align 4, !tbaa !37
  %70 = zext i32 %69 to i64
  store i64 %70, ptr %21, align 8, !tbaa !33
  store i32 2, ptr %0, align 8, !tbaa !27
  br label %98

71:                                               ; preds = %34
  %72 = load ptr, ptr %23, align 8, !tbaa !38
  %73 = load ptr, ptr %22, align 8, !tbaa !39
  %74 = load i32, ptr %25, align 4, !tbaa !40
  %75 = call i32 %72(ptr noundef %73, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %74) #4
  %76 = icmp ne i32 %75, 1
  %77 = or i1 %26, %76
  br i1 %77, label %102, label %78

78:                                               ; preds = %71
  %79 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %27) #4
  %80 = load ptr, ptr %17, align 8, !tbaa !13
  %81 = load i64, ptr %28, align 8, !tbaa !41
  %82 = call i32 @lzma_index_append(ptr noundef %80, ptr noundef %1, i64 noundef %79, i64 noundef %81) #4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %78
  store i32 1, ptr %0, align 8, !tbaa !27
  br label %98

85:                                               ; preds = %34
  %86 = load ptr, ptr %15, align 8, !tbaa !42
  %87 = load ptr, ptr %14, align 8, !tbaa !43
  %88 = call i32 %86(ptr noundef %87, ptr noundef %1, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0) #4
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %91 = load ptr, ptr %17, align 8, !tbaa !13
  %92 = call i64 @lzma_index_size(ptr noundef %91) #4
  store i64 %92, ptr %16, align 8, !tbaa !44
  %93 = load i32, ptr %19, align 8, !tbaa !29
  store i32 %93, ptr %18, align 8, !tbaa !30
  %94 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %10, ptr noundef nonnull %20) #4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i64 12, ptr %21, align 8, !tbaa !33
  store i32 5, ptr %0, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %98

97:                                               ; preds = %90
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %102

98:                                               ; preds = %96, %84, %68, %58, %45
  %99 = phi i32 [ 5, %96 ], [ 1, %84 ], [ 2, %68 ], [ 4, %58 ], [ %46, %45 ]
  %100 = load i64, ptr %6, align 8, !tbaa !25
  %101 = icmp ult i64 %100, %7
  br i1 %101, label %34, label %102, !llvm.loop !45

102:                                              ; preds = %62, %54, %36, %42, %65, %34, %98, %71, %78, %85, %9, %97, %51
  %103 = phi i32 [ 11, %97 ], [ %53, %51 ], [ 0, %9 ], [ %63, %62 ], [ %56, %54 ], [ 0, %36 ], [ 1, %42 ], [ 11, %65 ], [ 11, %34 ], [ 0, %98 ], [ %75, %71 ], [ %82, %78 ], [ %88, %85 ]
  ret i32 %103
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stream_encoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #4
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  tail call void @lzma_next_end(ptr noundef nonnull %4, ptr noundef %1) #4
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  tail call void @lzma_index_end(ptr noundef %6, ptr noundef %1) #4
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 0
  %8 = load i64, ptr %7, align 8, !tbaa !21
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %11, %2
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #4
  ret void

11:                                               ; preds = %2, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !47
  tail call void @lzma_free(ptr noundef %14, ptr noundef %1) #4
  %15 = add i64 %12, 1
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !21
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %10, label %11, !llvm.loop !48
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @stream_encoder_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr %0, align 8, !tbaa !27
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 0, ptr %8, align 4, !tbaa !34
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 5
  store ptr %2, ptr %9, align 8, !tbaa !49
  %10 = tail call fastcc i32 @block_encoder_init(ptr noundef nonnull %0, ptr noundef %1) #6
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store ptr %11, ptr %9, align 8, !tbaa !49
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %7
  store i8 1, ptr %8, align 4, !tbaa !34
  br label %23

14:                                               ; preds = %4
  %15 = icmp ult i32 %5, 4
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !50
  %20 = load ptr, ptr %17, align 8, !tbaa !39
  %21 = tail call i32 %19(ptr noundef %20, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13, %16
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 0
  %25 = load i64, ptr %24, align 8, !tbaa !21
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %29, %23
  %28 = tail call i32 @lzma_filters_copy(ptr noundef %2, ptr noundef nonnull %24, ptr noundef %1) #4
  br label %37

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %23 ]
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %30, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !47
  tail call void @lzma_free(ptr noundef %32, ptr noundef %1) #4
  %33 = add i64 %30, 1
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !21
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %27, label %29, !llvm.loop !51

37:                                               ; preds = %7, %14, %16, %27
  %38 = phi i32 [ %28, %27 ], [ %21, %16 ], [ 11, %14 ], [ %10, %7 ]
  ret i32 %38
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: optsize
declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_encoder_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %5 = tail call i32 @lzma_block_header_size(ptr noundef nonnull %3) #4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %9 = tail call i32 @lzma_block_encoder_init(ptr noundef nonnull %8, ptr noundef %1, ptr noundef nonnull %3) #4
  br label %10

10:                                               ; preds = %2, %7
  %11 = phi i32 [ %9, %7 ], [ %5, %2 ]
  ret i32 %11
}

; Function Attrs: optsize
declare i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_block_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_filters_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call i32 @lzma_stream_encoder_init(ptr noundef %8, ptr noundef %10, ptr noundef %1, i32 noundef %2) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef nonnull %0) #4
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3
  store i32 16843009, ptr %16, align 8
  br label %17

17:                                               ; preds = %13, %3, %14
  %18 = phi i32 [ %4, %3 ], [ %11, %13 ], [ 0, %14 ]
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !11, i64 16}
!7 = !{!"lzma_next_coder_s", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!7, !8, i64 0}
!13 = !{!14, !8, i64 424}
!14 = !{!"lzma_coder_s", !15, i64 0, !16, i64 4, !7, i64 8, !17, i64 72, !9, i64 280, !7, i64 360, !8, i64 424, !11, i64 432, !11, i64 440, !9, i64 448}
!15 = !{!"int", !9, i64 0}
!16 = !{!"_Bool", !9, i64 0}
!17 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !11, i64 16, !11, i64 24, !8, i64 32, !9, i64 40, !8, i64 104, !8, i64 112, !8, i64 120, !15, i64 128, !15, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !15, i64 184, !15, i64 188, !15, i64 192, !15, i64 196, !9, i64 200, !9, i64 201, !9, i64 202, !9, i64 203, !9, i64 204, !9, i64 205, !9, i64 206, !9, i64 207}
!18 = !{!7, !8, i64 24}
!19 = !{!7, !8, i64 32}
!20 = !{!7, !8, i64 56}
!21 = !{!22, !11, i64 0}
!22 = !{!"", !11, i64 0, !8, i64 8}
!23 = !{i64 0, i64 8, !24, i64 8, i64 8, !25, i64 16, i64 8, !25, i64 24, i64 8, !24, i64 32, i64 8, !24, i64 40, i64 8, !24, i64 48, i64 8, !24, i64 56, i64 8, !24}
!24 = !{!8, !8, i64 0}
!25 = !{!11, !11, i64 0}
!26 = !{i64 0, i64 8, !25, i64 8, i64 8, !25, i64 16, i64 8, !24, i64 24, i64 8, !24, i64 32, i64 8, !24, i64 40, i64 8, !24, i64 48, i64 8, !24}
!27 = !{!14, !15, i64 0}
!28 = !{!14, !15, i64 72}
!29 = !{!14, !15, i64 80}
!30 = !{!31, !15, i64 16}
!31 = !{!"", !15, i64 0, !11, i64 8, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !15, i64 32, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !9, i64 40, !9, i64 41, !9, i64 42, !9, i64 43, !15, i64 44, !15, i64 48}
!32 = !{!14, !11, i64 432}
!33 = !{!14, !11, i64 440}
!34 = !{!14, !16, i64 4}
!35 = !{i8 0, i8 2}
!36 = !{}
!37 = !{!14, !15, i64 76}
!38 = !{!14, !8, i64 32}
!39 = !{!14, !8, i64 8}
!40 = !{!15, !15, i64 0}
!41 = !{!14, !11, i64 96}
!42 = !{!14, !8, i64 384}
!43 = !{!14, !8, i64 360}
!44 = !{!31, !11, i64 8}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!22, !8, i64 8}
!48 = distinct !{!48, !46}
!49 = !{!14, !8, i64 104}
!50 = !{!14, !8, i64 64}
!51 = distinct !{!51, !46}
!52 = !{!53, !8, i64 56}
!53 = !{!"", !8, i64 0, !11, i64 8, !11, i64 16, !8, i64 24, !11, i64 32, !11, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !15, i64 128, !15, i64 132}
!54 = !{!53, !8, i64 48}
