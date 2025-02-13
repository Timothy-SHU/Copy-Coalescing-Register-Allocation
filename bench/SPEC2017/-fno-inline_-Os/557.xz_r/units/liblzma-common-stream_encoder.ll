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
define dso_local i32 @lzma_stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !53 {
  %5 = alloca %struct.lzma_stream_flags, align 8
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !54
  %8 = icmp eq i64 %7, ptrtoint (ptr @lzma_stream_encoder_init to i64)
  br i1 %8, label %10, label %9, !prof !60

9:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #4
  br label %10

10:                                               ; preds = %9, %4
  store i64 ptrtoint (ptr @lzma_stream_encoder_init to i64), ptr %6, align 8, !tbaa !54
  %11 = icmp eq ptr %2, null
  br i1 %11, label %56, label %12, !prof !60

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !61
  %14 = icmp eq ptr %13, null
  br i1 %14, label %18, label %15, !prof !62

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %13, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !63
  br label %35

18:                                               ; preds = %12
  %19 = tail call ptr @lzma_alloc(i64 noundef 1472, ptr noundef %1) #4
  store ptr %19, ptr %0, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %56, label %21, !prof !60

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @stream_encode, ptr %22, align 8, !tbaa !68
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @stream_encoder_end, ptr %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @stream_encoder_update, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 4
  store i64 -1, ptr %25, align 8, !tbaa !71
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 2
  store ptr null, ptr %26, align 8, !tbaa.struct !73
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 2, i32 1
  store i64 -1, ptr %27, align 8, !tbaa.struct !76
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %19, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %28, i8 0, i64 48, i1 false)
  %29 = load ptr, ptr %0, align 8, !tbaa !61
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 5
  store ptr null, ptr %30, align 8, !tbaa.struct !73
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 5, i32 1
  store i64 -1, ptr %31, align 8, !tbaa.struct !76
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %29, i64 0, i32 5, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %32, i8 0, i64 48, i1 false)
  %33 = load ptr, ptr %0, align 8, !tbaa !61
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 6
  store ptr null, ptr %34, align 8, !tbaa !63
  br label %35

35:                                               ; preds = %15, %21
  %36 = phi ptr [ null, %21 ], [ %17, %15 ]
  %37 = phi ptr [ %33, %21 ], [ %13, %15 ]
  store i32 0, ptr %37, align 8, !tbaa !77
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %37, i64 0, i32 3
  store i32 0, ptr %38, align 8, !tbaa !78
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %37, i64 0, i32 3, i32 2
  store i32 %3, ptr %39, align 8, !tbaa !79
  tail call void @lzma_index_end(ptr noundef %36, ptr noundef %1) #4
  %40 = tail call ptr @lzma_index_init(ptr noundef %1) #4
  %41 = load ptr, ptr %0, align 8, !tbaa !61
  %42 = getelementptr inbounds %struct.lzma_coder_s, ptr %41, i64 0, i32 6
  store ptr %40, ptr %42, align 8, !tbaa !63
  %43 = icmp eq ptr %40, null
  br i1 %43, label %56, label %44, !prof !60

44:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %45 = getelementptr inbounds %struct.lzma_stream_flags, ptr %5, i64 0, i32 2
  store i32 %3, ptr %45, align 8, !tbaa !80
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %41, i64 0, i32 9
  %47 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %5, ptr noundef nonnull %46) #4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load ptr, ptr %0, align 8, !tbaa !61
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %50, i64 0, i32 7
  store i64 0, ptr %51, align 8, !tbaa !82
  %52 = getelementptr inbounds %struct.lzma_coder_s, ptr %50, i64 0, i32 8
  store i64 12, ptr %52, align 8, !tbaa !83
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
define internal i32 @stream_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !84 !PGOFuncName !85 {
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = load i64, ptr %6, align 8, !tbaa !75
  %12 = icmp ult i64 %11, %7
  br i1 %12, label %13, label %110, !prof !86

13:                                               ; preds = %9
  %14 = load i32, ptr %0, align 8, !tbaa !77
  br label %15

15:                                               ; preds = %13, %106
  %16 = phi i32 [ %14, %13 ], [ %107, %106 ]
  switch i32 %16, label %110 [
    i32 0, label %17
    i32 2, label %17
    i32 5, label %17
    i32 1, label %31
    i32 3, label %63
    i32 4, label %85
  ], !prof !87

17:                                               ; preds = %15, %15, %15
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %19, align 8, !tbaa !83
  %22 = call i64 @lzma_bufcpy(ptr noundef nonnull %18, ptr noundef nonnull %20, i64 noundef %21, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #4
  %23 = load i64, ptr %20, align 8, !tbaa !82
  %24 = load i64, ptr %19, align 8, !tbaa !83
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %110, label %26, !prof !88

26:                                               ; preds = %17
  %27 = load i32, ptr %0, align 8, !tbaa !77
  %28 = icmp eq i32 %27, 5
  br i1 %28, label %110, label %29, !prof !89

29:                                               ; preds = %26
  store i64 0, ptr %20, align 8, !tbaa !82
  %30 = add i32 %27, 1
  store i32 %30, ptr %0, align 8, !tbaa !77
  br label %106

31:                                               ; preds = %15
  %32 = load i64, ptr %3, align 8, !tbaa !75
  %33 = icmp eq i64 %32, %4
  br i1 %33, label %34, label %46, !prof !90

34:                                               ; preds = %31
  %35 = icmp eq i32 %8, 3
  br i1 %35, label %39, label %36, !prof !62

36:                                               ; preds = %34
  %37 = icmp ne i32 %8, 0
  %38 = zext i1 %37 to i32
  br label %110

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %41 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !63
  %43 = call i32 @lzma_index_encoder_init(ptr noundef nonnull %40, ptr noundef %1, ptr noundef %42) #4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %110

45:                                               ; preds = %39
  store i32 4, ptr %0, align 8, !tbaa !77
  br label %106

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %48 = load i8, ptr %47, align 4, !tbaa !91, !range !92, !noundef !93
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %53, !prof !60

50:                                               ; preds = %46
  %51 = call fastcc i32 @block_encoder_init(ptr noundef nonnull %0, ptr noundef %1) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %110

53:                                               ; preds = %50, %46
  %54 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i8 0, ptr %47, align 4, !tbaa !91
  %56 = call i32 @lzma_block_header_encode(ptr noundef nonnull %55, ptr noundef nonnull %54) #4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %110, !prof !62

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %60 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !94
  %62 = zext i32 %61 to i64
  store i64 %62, ptr %59, align 8, !tbaa !83
  store i32 2, ptr %0, align 8, !tbaa !77
  br label %106

63:                                               ; preds = %15
  %64 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %65 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %66 = zext i32 %8 to i64
  %67 = getelementptr inbounds [4 x i32], ptr @stream_encode.convert, i64 0, i64 %66
  %68 = load ptr, ptr %65, align 8, !tbaa !95
  %69 = load ptr, ptr %64, align 8, !tbaa !96
  %70 = load i32, ptr %67, align 4, !tbaa !97
  %71 = call i32 %68(ptr noundef %69, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %70) #4
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %110, !prof !98

73:                                               ; preds = %63
  %74 = icmp eq i32 %8, 1
  br i1 %74, label %110, label %75, !prof !60

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %77 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %78 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 4
  %79 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %77) #4
  %80 = load ptr, ptr %76, align 8, !tbaa !63
  %81 = load i64, ptr %78, align 8, !tbaa !99
  %82 = call i32 @lzma_index_append(ptr noundef %80, ptr noundef %1, i64 noundef %79, i64 noundef %81) #4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %75
  store i32 1, ptr %0, align 8, !tbaa !77
  br label %106

85:                                               ; preds = %15
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !100
  %89 = load ptr, ptr %86, align 8, !tbaa !101
  %90 = call i32 %88(ptr noundef %89, ptr noundef %1, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0) #4
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %92, label %110, !prof !62

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  %94 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %95 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  %96 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %98 = load ptr, ptr %94, align 8, !tbaa !63
  %99 = call i64 @lzma_index_size(ptr noundef %98) #4
  store i64 %99, ptr %93, align 8, !tbaa !102
  %100 = load i32, ptr %96, align 8, !tbaa !79
  store i32 %100, ptr %95, align 8, !tbaa !80
  %101 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %10, ptr noundef nonnull %97) #4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %105, !prof !62

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 12, ptr %104, align 8, !tbaa !83
  store i32 5, ptr %0, align 8, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %106

105:                                              ; preds = %92
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %110

106:                                              ; preds = %103, %84, %58, %45, %29
  %107 = phi i32 [ 5, %103 ], [ 1, %84 ], [ 2, %58 ], [ 4, %45 ], [ %30, %29 ]
  %108 = load i64, ptr %6, align 8, !tbaa !75
  %109 = icmp ult i64 %108, %7
  br i1 %109, label %15, label %110, !prof !103, !llvm.loop !104

110:                                              ; preds = %50, %39, %17, %26, %53, %15, %106, %73, %63, %75, %85, %9, %105, %36
  %111 = phi i32 [ 11, %105 ], [ %38, %36 ], [ 0, %9 ], [ %51, %50 ], [ %43, %39 ], [ 0, %17 ], [ 1, %26 ], [ 11, %53 ], [ 11, %15 ], [ 0, %106 ], [ 1, %73 ], [ %71, %63 ], [ %82, %75 ], [ %90, %85 ]
  ret i32 %111
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stream_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !53 !PGOFuncName !106 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #4
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  tail call void @lzma_next_end(ptr noundef nonnull %4, ptr noundef %1) #4
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  tail call void @lzma_index_end(ptr noundef %6, ptr noundef %1) #4
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 0
  %8 = load i64, ptr %7, align 8, !tbaa !71
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %11, !prof !107

10:                                               ; preds = %11, %2
  tail call void @lzma_free(ptr noundef nonnull %0, ptr noundef %1) #4
  ret void

11:                                               ; preds = %2, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !108
  tail call void @lzma_free(ptr noundef %14, ptr noundef %1) #4
  %15 = add i64 %12, 1
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !71
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %10, label %11, !prof !86, !llvm.loop !109
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @stream_encoder_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !53 !PGOFuncName !110 {
  %5 = load i32, ptr %0, align 8, !tbaa !77
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %14, !prof !62

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 0, ptr %8, align 4, !tbaa !91
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 5
  store ptr %2, ptr %9, align 8, !tbaa !111
  %10 = tail call fastcc i32 @block_encoder_init(ptr noundef nonnull %0, ptr noundef %1) #6
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store ptr %11, ptr %9, align 8, !tbaa !111
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %13, label %37, !prof !62

13:                                               ; preds = %7
  store i8 1, ptr %8, align 4, !tbaa !91
  br label %23

14:                                               ; preds = %4
  %15 = icmp ult i32 %5, 4
  br i1 %15, label %16, label %37

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !112
  %20 = load ptr, ptr %17, align 8, !tbaa !96
  %21 = tail call i32 %19(ptr noundef %20, ptr noundef %1, ptr noundef %2, ptr noundef %3) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13, %16
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 0
  %25 = load i64, ptr %24, align 8, !tbaa !71
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %29, !prof !113

27:                                               ; preds = %29, %23
  %28 = tail call i32 @lzma_filters_copy(ptr noundef %2, ptr noundef nonnull %24, ptr noundef %1) #4
  br label %37

29:                                               ; preds = %23, %29
  %30 = phi i64 [ %33, %29 ], [ 0, %23 ]
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %30, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !108
  tail call void @lzma_free(ptr noundef %32, ptr noundef %1) #4
  %33 = add i64 %30, 1
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !71
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %27, label %29, !prof !114, !llvm.loop !115

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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !53 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !118
  %11 = tail call i32 @lzma_stream_encoder_init(ptr noundef %8, ptr noundef %10, ptr noundef %1, i32 noundef %2) #6
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !62

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef nonnull %0) #4
  br label %17

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !116
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

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @block_encoder_init(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !53 !PGOFuncName !119 {
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

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind }
attributes #6 = { optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!52}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 42596457582}
!4 = !{!"MaxCount", i64 3509320374}
!5 = !{!"MaxInternalCount", i64 1880543368}
!6 = !{!"MaxFunctionCount", i64 3509320374}
!7 = !{!"NumCounts", i64 1899}
!8 = !{!"NumFunctions", i64 428}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 3509320374, i32 1}
!14 = !{i32 100000, i64 3323890816, i32 2}
!15 = !{i32 200000, i64 2354835913, i32 3}
!16 = !{i32 300000, i64 1717654358, i32 5}
!17 = !{i32 400000, i64 1697273389, i32 8}
!18 = !{i32 500000, i64 1349259993, i32 11}
!19 = !{i32 600000, i64 759326020, i32 16}
!20 = !{i32 700000, i64 575792475, i32 22}
!21 = !{i32 800000, i64 285720408, i32 36}
!22 = !{i32 900000, i64 154264530, i32 55}
!23 = !{i32 950000, i64 86561411, i32 73}
!24 = !{i32 990000, i64 20049460, i32 113}
!25 = !{i32 999000, i64 3293392, i32 158}
!26 = !{i32 999900, i64 80863, i32 231}
!27 = !{i32 999990, i64 33328, i32 274}
!28 = !{i32 999999, i64 3584, i32 298}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51}
!35 = !{ptr @lzma_stream_encoder_init, ptr @lzma_next_end, i64 1}
!36 = !{ptr @lzma_stream_encoder_init, ptr @lzma_index_end, i64 1}
!37 = !{ptr @lzma_stream_encoder_init, ptr @lzma_index_init, i64 1}
!38 = !{ptr @stream_encode, ptr @lzma_bufcpy, i64 6}
!39 = !{ptr @stream_encode, ptr @lzma_index_encoder_init, i64 1}
!40 = !{ptr @stream_encode, ptr @lzma_block_header_encode, i64 1}
!41 = !{ptr @stream_encode, ptr @lzma_block_unpadded_size, i64 1}
!42 = !{ptr @stream_encode, ptr @lzma_index_append, i64 1}
!43 = !{ptr @stream_encode, ptr @lzma_index_size, i64 1}
!44 = !{ptr @stream_encode, ptr @lzma_stream_footer_encode, i64 1}
!45 = !{ptr @stream_encoder_end, ptr @lzma_next_end, i64 2}
!46 = !{ptr @stream_encoder_end, ptr @lzma_index_end, i64 1}
!47 = !{ptr @stream_encoder_end, ptr @lzma_free, i64 2}
!48 = !{ptr @stream_encoder_update, ptr @block_encoder_init, i64 1}
!49 = !{ptr @stream_encoder_update, ptr @lzma_filters_copy, i64 1}
!50 = !{ptr @lzma_stream_encoder, ptr @lzma_strm_init, i64 1}
!51 = !{ptr @block_encoder_init, ptr @lzma_block_header_size, i64 1}
!52 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!53 = !{!"function_entry_count", i64 1}
!54 = !{!55, !59, i64 16}
!55 = !{!"lzma_next_coder_s", !56, i64 0, !59, i64 8, !59, i64 16, !56, i64 24, !56, i64 32, !56, i64 40, !56, i64 48, !56, i64 56}
!56 = !{!"any pointer", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!"long", !57, i64 0}
!60 = !{!"branch_weights", i32 1, i32 2}
!61 = !{!55, !56, i64 0}
!62 = !{!"branch_weights", i32 2, i32 1}
!63 = !{!64, !56, i64 424}
!64 = !{!"lzma_coder_s", !65, i64 0, !66, i64 4, !55, i64 8, !67, i64 72, !57, i64 280, !55, i64 360, !56, i64 424, !59, i64 432, !59, i64 440, !57, i64 448}
!65 = !{!"int", !57, i64 0}
!66 = !{!"_Bool", !57, i64 0}
!67 = !{!"", !65, i64 0, !65, i64 4, !65, i64 8, !59, i64 16, !59, i64 24, !56, i64 32, !57, i64 40, !56, i64 104, !56, i64 112, !56, i64 120, !65, i64 128, !65, i64 132, !59, i64 136, !59, i64 144, !59, i64 152, !59, i64 160, !59, i64 168, !59, i64 176, !65, i64 184, !65, i64 188, !65, i64 192, !65, i64 196, !57, i64 200, !57, i64 201, !57, i64 202, !57, i64 203, !57, i64 204, !57, i64 205, !57, i64 206, !57, i64 207}
!68 = !{!55, !56, i64 24}
!69 = !{!55, !56, i64 32}
!70 = !{!55, !56, i64 56}
!71 = !{!72, !59, i64 0}
!72 = !{!"", !59, i64 0, !56, i64 8}
!73 = !{i64 0, i64 8, !74, i64 8, i64 8, !75, i64 16, i64 8, !75, i64 24, i64 8, !74, i64 32, i64 8, !74, i64 40, i64 8, !74, i64 48, i64 8, !74, i64 56, i64 8, !74}
!74 = !{!56, !56, i64 0}
!75 = !{!59, !59, i64 0}
!76 = !{i64 0, i64 8, !75, i64 8, i64 8, !75, i64 16, i64 8, !74, i64 24, i64 8, !74, i64 32, i64 8, !74, i64 40, i64 8, !74, i64 48, i64 8, !74}
!77 = !{!64, !65, i64 0}
!78 = !{!64, !65, i64 72}
!79 = !{!64, !65, i64 80}
!80 = !{!81, !65, i64 16}
!81 = !{!"", !65, i64 0, !59, i64 8, !65, i64 16, !65, i64 20, !65, i64 24, !65, i64 28, !65, i64 32, !57, i64 36, !57, i64 37, !57, i64 38, !57, i64 39, !57, i64 40, !57, i64 41, !57, i64 42, !57, i64 43, !65, i64 44, !65, i64 48}
!82 = !{!64, !59, i64 432}
!83 = !{!64, !59, i64 440}
!84 = !{!"function_entry_count", i64 36316}
!85 = !{!"stream_encoder.c:stream_encode"}
!86 = !{!"branch_weights", i32 127, i32 1}
!87 = !{!"branch_weights", i32 1, i32 2, i32 2, i32 2, i32 3, i32 36317, i32 2}
!88 = !{!"branch_weights", i32 1, i32 4}
!89 = !{!"branch_weights", i32 2, i32 3}
!90 = !{!"branch_weights", i32 2, i32 2}
!91 = !{!64, !66, i64 4}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!64, !65, i64 76}
!95 = !{!64, !56, i64 32}
!96 = !{!64, !56, i64 8}
!97 = !{!65, !65, i64 0}
!98 = !{!"branch_weights", i32 2, i32 36316}
!99 = !{!64, !59, i64 96}
!100 = !{!64, !56, i64 384}
!101 = !{!64, !56, i64 360}
!102 = !{!81, !59, i64 8}
!103 = !{!"branch_weights", i32 4649217, i32 127}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"stream_encoder.c:stream_encoder_end"}
!107 = !{!"branch_weights", i32 1, i32 127}
!108 = !{!72, !56, i64 8}
!109 = distinct !{!109, !105}
!110 = !{!"stream_encoder.c:stream_encoder_update"}
!111 = !{!64, !56, i64 104}
!112 = !{!64, !56, i64 64}
!113 = !{!"branch_weights", i32 1, i32 1}
!114 = !{!"branch_weights", i32 1, i32 0}
!115 = distinct !{!115, !105}
!116 = !{!117, !56, i64 56}
!117 = !{!"", !56, i64 0, !59, i64 8, !59, i64 16, !56, i64 24, !59, i64 32, !59, i64 40, !56, i64 48, !56, i64 56, !56, i64 64, !56, i64 72, !56, i64 80, !56, i64 88, !59, i64 96, !59, i64 104, !59, i64 112, !59, i64 120, !65, i64 128, !65, i64 132}
!118 = !{!117, !56, i64 48}
!119 = !{!"stream_encoder.c:block_encoder_init"}
