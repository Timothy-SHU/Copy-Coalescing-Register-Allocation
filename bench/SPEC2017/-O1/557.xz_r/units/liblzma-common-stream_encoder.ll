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

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_stream_encoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !prof !57 {
  %5 = alloca %struct.lzma_stream_flags, align 8
  %6 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !58
  %8 = icmp eq i64 %7, ptrtoint (ptr @lzma_stream_encoder_init to i64)
  br i1 %8, label %10, label %9, !prof !64

9:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #5
  br label %10

10:                                               ; preds = %9, %4
  store i64 ptrtoint (ptr @lzma_stream_encoder_init to i64), ptr %6, align 8, !tbaa !58
  %11 = icmp eq ptr %2, null
  br i1 %11, label %54, label %12, !prof !64

12:                                               ; preds = %10
  %13 = load ptr, ptr %0, align 8, !tbaa !65
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %32, !prof !66

15:                                               ; preds = %12
  %16 = tail call ptr @lzma_alloc(i64 noundef 1472, ptr noundef %1) #5
  store ptr %16, ptr %0, align 8, !tbaa !65
  %17 = icmp eq ptr %16, null
  br i1 %17, label %54, label %18, !prof !64

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @stream_encode, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @stream_encoder_end, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 7
  store ptr @stream_encoder_update, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 4
  store i64 -1, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa.struct !72
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2, i32 1
  store i64 -1, ptr %24, align 8, !tbaa.struct !75
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %16, i64 0, i32 2, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %25, i8 0, i64 48, i1 false)
  %26 = load ptr, ptr %0, align 8, !tbaa !65
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 5
  store ptr null, ptr %27, align 8, !tbaa.struct !72
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 5, i32 1
  store i64 -1, ptr %28, align 8, !tbaa.struct !75
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %26, i64 0, i32 5, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %29, i8 0, i64 48, i1 false)
  %30 = load ptr, ptr %0, align 8, !tbaa !65
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 6
  store ptr null, ptr %31, align 8, !tbaa !76
  br label %32

32:                                               ; preds = %18, %12
  %33 = load ptr, ptr %0, align 8, !tbaa !65
  store i32 0, ptr %33, align 8, !tbaa !81
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 3
  store i32 0, ptr %34, align 8, !tbaa !82
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 3, i32 2
  store i32 %3, ptr %35, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %33, i64 0, i32 6
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  tail call void @lzma_index_end(ptr noundef %37, ptr noundef %1) #5
  %38 = tail call ptr @lzma_index_init(ptr noundef %1) #5
  %39 = load ptr, ptr %0, align 8, !tbaa !65
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %39, i64 0, i32 6
  store ptr %38, ptr %40, align 8, !tbaa !76
  %41 = icmp eq ptr %38, null
  br i1 %41, label %54, label %42, !prof !64

42:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %43 = getelementptr inbounds %struct.lzma_stream_flags, ptr %5, i64 0, i32 2
  store i32 %3, ptr %43, align 8, !tbaa !84
  %44 = getelementptr inbounds %struct.lzma_coder_s, ptr %39, i64 0, i32 9
  %45 = call i32 @lzma_stream_header_encode(ptr noundef nonnull %5, ptr noundef nonnull %44) #5
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %52, !prof !66

47:                                               ; preds = %42
  %48 = load ptr, ptr %0, align 8, !tbaa !65
  %49 = getelementptr inbounds %struct.lzma_coder_s, ptr %48, i64 0, i32 7
  store i64 0, ptr %49, align 8, !tbaa !86
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %48, i64 0, i32 8
  store i64 12, ptr %50, align 8, !tbaa !87
  %51 = call i32 @stream_encoder_update(ptr noundef %48, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null)
  br label %52

52:                                               ; preds = %42, %47
  %53 = phi i32 [ %51, %47 ], [ %45, %42 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #5
  br label %54

54:                                               ; preds = %32, %15, %10, %52
  %55 = phi i32 [ %53, %52 ], [ 11, %10 ], [ 5, %15 ], [ 5, %32 ]
  ret i32 %55
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_encode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #2 !prof !88 !PGOFuncName !89 {
  %10 = alloca %struct.lzma_stream_flags, align 8
  %11 = load i64, ptr %6, align 8, !tbaa !74
  %12 = icmp ult i64 %11, %7
  br i1 %12, label %13, label %132, !prof !66

13:                                               ; preds = %9, %128
  %14 = phi i32 [ %129, %128 ], [ undef, %9 ]
  %15 = load i32, ptr %0, align 8, !tbaa !81
  switch i32 %15, label %132 [
    i32 0, label %16
    i32 2, label %16
    i32 5, label %16
    i32 1, label %30
    i32 3, label %72
    i32 4, label %98
  ], !prof !90

16:                                               ; preds = %13, %13, %13
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %20 = load i64, ptr %19, align 8, !tbaa !87
  %21 = call i64 @lzma_bufcpy(ptr noundef nonnull %17, ptr noundef nonnull %18, i64 noundef %20, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7) #5
  %22 = load i64, ptr %18, align 8, !tbaa !86
  %23 = load i64, ptr %19, align 8, !tbaa !87
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %132, label %25, !prof !91

25:                                               ; preds = %16
  %26 = load i32, ptr %0, align 8, !tbaa !81
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %132, label %28, !prof !92

28:                                               ; preds = %25
  store i64 0, ptr %18, align 8, !tbaa !86
  %29 = add i32 %26, 1
  br label %125

30:                                               ; preds = %13
  %31 = load i64, ptr %3, align 8, !tbaa !74
  %32 = icmp eq i64 %31, %4
  br i1 %32, label %33, label %45, !prof !93

33:                                               ; preds = %30
  %34 = icmp eq i32 %8, 3
  br i1 %34, label %38, label %35, !prof !66

35:                                               ; preds = %33
  %36 = icmp ne i32 %8, 0
  %37 = zext i1 %36 to i32
  br label %132

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !76
  %42 = call i32 @lzma_index_encoder_init(ptr noundef nonnull %39, ptr noundef %1, ptr noundef %41) #5
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 %14, i32 %42, !prof !66
  br i1 %43, label %125, label %132, !prof !66

45:                                               ; preds = %30
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %47 = load i8, ptr %46, align 4, !tbaa !94, !range !95, !noundef !96
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %61, !prof !64

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 -1, i64 16, i1 false)
  %52 = call i32 @lzma_block_header_size(ptr noundef nonnull %50) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %56 = call i32 @lzma_block_encoder_init(ptr noundef nonnull %55, ptr noundef %1, ptr noundef nonnull %50) #5
  br label %57

57:                                               ; preds = %49, %54
  %58 = phi i32 [ %56, %54 ], [ %52, %49 ]
  %59 = icmp eq i32 %58, 0
  %60 = select i1 %59, i32 %14, i32 %58
  br i1 %59, label %61, label %132

61:                                               ; preds = %57, %45
  %62 = phi i32 [ %14, %45 ], [ %60, %57 ]
  %63 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %64 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  store i8 0, ptr %46, align 4, !tbaa !94
  %65 = call i32 @lzma_block_header_encode(ptr noundef nonnull %63, ptr noundef nonnull %64) #5
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %132, !prof !66

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 1
  %69 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %70 = load i32, ptr %68, align 4, !tbaa !97
  %71 = zext i32 %70 to i64
  store i64 %71, ptr %69, align 8, !tbaa !87
  br label %125

72:                                               ; preds = %13
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 3
  %75 = zext i32 %8 to i64
  %76 = getelementptr inbounds [4 x i32], ptr @stream_encode.convert, i64 0, i64 %75
  %77 = icmp eq i32 %8, 1
  %78 = load ptr, ptr %74, align 8, !tbaa !98
  %79 = load ptr, ptr %73, align 8, !tbaa !99
  %80 = load i32, ptr %76, align 4, !tbaa !100
  %81 = call i32 %78(ptr noundef %79, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef %80) #5, !prof !101
  %82 = icmp ne i32 %81, 1
  %83 = or i1 %77, %82
  br i1 %83, label %95, label %84, !prof !102

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %87 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 4
  %88 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %85) #5
  %89 = load ptr, ptr %86, align 8, !tbaa !76
  %90 = load i64, ptr %87, align 8, !tbaa !103
  %91 = call i32 @lzma_index_append(ptr noundef %89, ptr noundef %1, i64 noundef %88, i64 noundef %90) #5
  %92 = icmp eq i32 %91, 0
  %93 = select i1 %92, i32 %14, i32 %91, !prof !66
  br i1 %92, label %94, label %95, !prof !66

94:                                               ; preds = %84
  store i32 1, ptr %0, align 8, !tbaa !81
  br label %95

95:                                               ; preds = %94, %84, %72
  %96 = phi i1 [ false, %72 ], [ true, %94 ], [ false, %84 ]
  %97 = phi i32 [ %81, %72 ], [ %93, %94 ], [ %93, %84 ]
  br i1 %96, label %128, label %132, !prof !104

98:                                               ; preds = %13
  %99 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %100 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !105
  %102 = load ptr, ptr %99, align 8, !tbaa !106
  %103 = call i32 %101(ptr noundef %102, ptr noundef %1, ptr noundef null, ptr noundef null, i64 noundef 0, ptr noundef %5, ptr noundef nonnull %6, i64 noundef %7, i32 noundef 0) #5, !prof !107
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %121, !prof !66

105:                                              ; preds = %98
  %106 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 1
  %107 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %108 = getelementptr inbounds %struct.lzma_stream_flags, ptr %10, i64 0, i32 2
  %109 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %110 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 56, i1 false)
  %111 = load ptr, ptr %107, align 8, !tbaa !76
  %112 = call i64 @lzma_index_size(ptr noundef %111) #5
  store i64 %112, ptr %106, align 8, !tbaa !108
  %113 = load i32, ptr %109, align 8, !tbaa !83
  store i32 %113, ptr %108, align 8, !tbaa !84
  %114 = call i32 @lzma_stream_footer_encode(ptr noundef nonnull %10, ptr noundef nonnull %110) #5
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118, !prof !66

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i64 12, ptr %117, align 8, !tbaa !87
  store i32 5, ptr %0, align 8, !tbaa !81
  br label %118

118:                                              ; preds = %105, %116
  %119 = phi i32 [ 4, %116 ], [ 1, %105 ]
  %120 = phi i32 [ %14, %116 ], [ 11, %105 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #5
  br label %121

121:                                              ; preds = %98, %118
  %122 = phi i32 [ %119, %118 ], [ 1, %98 ]
  %123 = phi i32 [ %120, %118 ], [ %103, %98 ]
  %124 = icmp eq i32 %122, 4
  br i1 %124, label %128, label %132, !prof !66

125:                                              ; preds = %38, %28, %67
  %126 = phi i32 [ 2, %67 ], [ %29, %28 ], [ 4, %38 ]
  %127 = phi i32 [ %62, %67 ], [ %14, %28 ], [ %44, %38 ]
  store i32 %126, ptr %0, align 8, !tbaa !81
  br label %128

128:                                              ; preds = %125, %95, %121
  %129 = phi i32 [ %123, %121 ], [ %97, %95 ], [ %127, %125 ]
  %130 = load i64, ptr %6, align 8, !tbaa !74
  %131 = icmp ult i64 %130, %7
  br i1 %131, label %13, label %132, !prof !109, !llvm.loop !110

132:                                              ; preds = %121, %38, %16, %25, %61, %128, %13, %57, %95, %9, %35
  %133 = phi i32 [ %37, %35 ], [ 0, %9 ], [ %97, %95 ], [ %60, %57 ], [ 11, %13 ], [ 0, %128 ], [ 11, %61 ], [ 1, %25 ], [ 0, %16 ], [ %44, %38 ], [ %123, %121 ]
  ret i32 %133
}

; Function Attrs: cold nounwind uwtable
define internal void @stream_encoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !57 !PGOFuncName !113 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #5
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  tail call void @lzma_next_end(ptr noundef nonnull %4, ptr noundef %1) #5
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !76
  tail call void @lzma_index_end(ptr noundef %6, ptr noundef %1) #5
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 0
  %8 = load i64, ptr %7, align 8, !tbaa !70
  %9 = icmp eq i64 %8, -1
  br i1 %9, label %10, label %11, !prof !114

10:                                               ; preds = %11, %2
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #5
  ret void

11:                                               ; preds = %2, %11
  %12 = phi i64 [ %15, %11 ], [ 0, %2 ]
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %12, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !115
  tail call void @lzma_free(ptr noundef %14, ptr noundef %1) #5
  %15 = add i64 %12, 1
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %15
  %17 = load i64, ptr %16, align 8, !tbaa !70
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %10, label %11, !prof !116, !llvm.loop !117
}

; Function Attrs: cold nounwind uwtable
define internal i32 @stream_encoder_update(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !57 !PGOFuncName !118 {
  %5 = load i32, ptr %0, align 8, !tbaa !81
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %7, label %22, !prof !66

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i8 0, ptr %8, align 4, !tbaa !94
  %9 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 5
  store ptr %2, ptr %9, align 8, !tbaa !119
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %11, i8 -1, i64 16, i1 false)
  %12 = tail call i32 @lzma_block_header_size(ptr noundef nonnull %10) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17, !prof !66

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %16 = tail call i32 @lzma_block_encoder_init(ptr noundef nonnull %15, ptr noundef %1, ptr noundef nonnull %10) #5
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi i32 [ %16, %14 ], [ %12, %7 ]
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store ptr %19, ptr %9, align 8, !tbaa !119
  %20 = icmp eq i32 %18, 0
  br i1 %20, label %21, label %46, !prof !66

21:                                               ; preds = %17
  store i8 1, ptr %8, align 4, !tbaa !94
  br label %31

22:                                               ; preds = %4
  %23 = icmp ult i32 %5, 4
  br i1 %23, label %24, label %46

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !120
  %28 = load ptr, ptr %25, align 8, !tbaa !99
  %29 = tail call i32 %27(ptr noundef %28, ptr noundef %1, ptr noundef %2, ptr noundef %3) #5
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %21, %24
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 0
  %33 = load i64, ptr %32, align 8, !tbaa !70
  %34 = icmp eq i64 %33, -1
  br i1 %34, label %35, label %38, !prof !66

35:                                               ; preds = %38, %31
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %37 = tail call i32 @lzma_filters_copy(ptr noundef %2, ptr noundef nonnull %36, ptr noundef %1) #5
  br label %46

38:                                               ; preds = %31, %38
  %39 = phi i64 [ %42, %38 ], [ 0, %31 ]
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %39, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !115
  tail call void @lzma_free(ptr noundef %41, ptr noundef %1) #5
  %42 = add i64 %39, 1
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !70
  %45 = icmp eq i64 %44, -1
  br i1 %45, label %35, label %38, !prof !66, !llvm.loop !121

46:                                               ; preds = %17, %22, %24, %35
  %47 = phi i32 [ %37, %35 ], [ %29, %24 ], [ 11, %22 ], [ %18, %17 ]
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i32 @lzma_stream_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_stream_encoder(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !57 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #5
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %19, !prof !66

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = tail call i32 @lzma_stream_encoder_init(ptr noundef %8, ptr noundef %10, ptr noundef %1, i32 noundef %2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !66

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef %0) #5
  br label %14

14:                                               ; preds = %6, %13
  %15 = phi i32 [ %11, %13 ], [ %4, %6 ]
  br i1 %12, label %16, label %19, !prof !66

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3
  store i32 16843009, ptr %18, align 8
  br label %19

19:                                               ; preds = %3, %14, %16
  %20 = phi i32 [ %4, %3 ], [ %15, %14 ], [ 0, %16 ]
  ret i32 %20
}

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_index_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @lzma_index_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_footer_encode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_encoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_filters_copy(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!56}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!35 = !{ptr @lzma_stream_encoder_init, ptr @lzma_next_end, i64 1}
!36 = !{ptr @lzma_stream_encoder_init, ptr @lzma_alloc, i64 1}
!37 = !{ptr @lzma_stream_encoder_init, ptr @lzma_index_end, i64 1}
!38 = !{ptr @lzma_stream_encoder_init, ptr @lzma_index_init, i64 1}
!39 = !{ptr @lzma_stream_encoder_init, ptr @lzma_stream_header_encode, i64 1}
!40 = !{ptr @lzma_stream_encoder_init, ptr @stream_encoder_update, i64 1}
!41 = !{ptr @stream_encode, ptr @lzma_bufcpy, i64 3}
!42 = !{ptr @stream_encode, ptr @lzma_index_encoder_init, i64 1}
!43 = !{ptr @stream_encode, ptr @lzma_block_header_encode, i64 1}
!44 = !{ptr @stream_encode, ptr @lzma_block_unpadded_size, i64 1}
!45 = !{ptr @stream_encode, ptr @lzma_index_append, i64 1}
!46 = !{ptr @stream_encode, ptr @lzma_index_size, i64 1}
!47 = !{ptr @stream_encode, ptr @lzma_stream_footer_encode, i64 1}
!48 = !{ptr @stream_encoder_end, ptr @lzma_next_end, i64 2}
!49 = !{ptr @stream_encoder_end, ptr @lzma_index_end, i64 1}
!50 = !{ptr @stream_encoder_end, ptr @lzma_free, i64 2}
!51 = !{ptr @stream_encoder_update, ptr @lzma_block_header_size, i64 1}
!52 = !{ptr @stream_encoder_update, ptr @lzma_block_encoder_init, i64 1}
!53 = !{ptr @stream_encoder_update, ptr @lzma_filters_copy, i64 1}
!54 = !{ptr @lzma_stream_encoder, ptr @lzma_strm_init, i64 1}
!55 = !{ptr @lzma_stream_encoder, ptr @lzma_stream_encoder_init, i64 1}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 1}
!58 = !{!59, !63, i64 16}
!59 = !{!"lzma_next_coder_s", !60, i64 0, !63, i64 8, !63, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!"long", !61, i64 0}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = !{!59, !60, i64 0}
!66 = !{!"branch_weights", i32 1, i32 0}
!67 = !{!59, !60, i64 24}
!68 = !{!59, !60, i64 32}
!69 = !{!59, !60, i64 56}
!70 = !{!71, !63, i64 0}
!71 = !{!"", !63, i64 0, !60, i64 8}
!72 = !{i64 0, i64 8, !73, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !73, i64 32, i64 8, !73, i64 40, i64 8, !73, i64 48, i64 8, !73, i64 56, i64 8, !73}
!73 = !{!60, !60, i64 0}
!74 = !{!63, !63, i64 0}
!75 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !73, i64 24, i64 8, !73, i64 32, i64 8, !73, i64 40, i64 8, !73, i64 48, i64 8, !73}
!76 = !{!77, !60, i64 424}
!77 = !{!"lzma_coder_s", !78, i64 0, !79, i64 4, !59, i64 8, !80, i64 72, !61, i64 280, !59, i64 360, !60, i64 424, !63, i64 432, !63, i64 440, !61, i64 448}
!78 = !{!"int", !61, i64 0}
!79 = !{!"_Bool", !61, i64 0}
!80 = !{!"", !78, i64 0, !78, i64 4, !78, i64 8, !63, i64 16, !63, i64 24, !60, i64 32, !61, i64 40, !60, i64 104, !60, i64 112, !60, i64 120, !78, i64 128, !78, i64 132, !63, i64 136, !63, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !78, i64 184, !78, i64 188, !78, i64 192, !78, i64 196, !61, i64 200, !61, i64 201, !61, i64 202, !61, i64 203, !61, i64 204, !61, i64 205, !61, i64 206, !61, i64 207}
!81 = !{!77, !78, i64 0}
!82 = !{!77, !78, i64 72}
!83 = !{!77, !78, i64 80}
!84 = !{!85, !78, i64 16}
!85 = !{!"", !78, i64 0, !63, i64 8, !78, i64 16, !78, i64 20, !78, i64 24, !78, i64 28, !78, i64 32, !61, i64 36, !61, i64 37, !61, i64 38, !61, i64 39, !61, i64 40, !61, i64 41, !61, i64 42, !61, i64 43, !78, i64 44, !78, i64 48}
!86 = !{!77, !63, i64 432}
!87 = !{!77, !63, i64 440}
!88 = !{!"function_entry_count", i64 36316}
!89 = !{!"liblzma/common/stream_encoder.c;stream_encode"}
!90 = !{!"branch_weights", i32 0, i32 1, i32 1, i32 1, i32 2, i32 36316, i32 1}
!91 = !{!"branch_weights", i32 0, i32 3}
!92 = !{!"branch_weights", i32 1, i32 2}
!93 = !{!"branch_weights", i32 1, i32 1}
!94 = !{!77, !79, i64 4}
!95 = !{i8 0, i8 2}
!96 = !{}
!97 = !{!77, !78, i64 76}
!98 = !{!77, !60, i64 32}
!99 = !{!77, !60, i64 8}
!100 = !{!78, !78, i64 0}
!101 = !{!"VP", i32 0, i64 36316, i64 5087597137710465305, i64 36316}
!102 = !{!"branch_weights", i32 36315, i32 1}
!103 = !{!77, !63, i64 96}
!104 = !{!"branch_weights", i32 1, i32 36315}
!105 = !{!77, !60, i64 384}
!106 = !{!77, !60, i64 360}
!107 = !{!"VP", i32 0, i64 1, i64 8603140937193321832, i64 1}
!108 = !{!85, !63, i64 8}
!109 = !{!"branch_weights", i32 36322, i32 0}
!110 = distinct !{!110, !111, !112}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!"llvm.loop.unroll.disable"}
!113 = !{!"liblzma/common/stream_encoder.c;stream_encoder_end"}
!114 = !{!"branch_weights", i32 1, i32 127}
!115 = !{!71, !60, i64 8}
!116 = !{!"branch_weights", i32 127, i32 1}
!117 = distinct !{!117, !111, !112}
!118 = !{!"liblzma/common/stream_encoder.c;stream_encoder_update"}
!119 = !{!77, !60, i64 104}
!120 = !{!77, !60, i64 64}
!121 = distinct !{!121, !111, !112}
!122 = !{!123, !60, i64 56}
!123 = !{!"", !60, i64 0, !63, i64 8, !63, i64 16, !60, i64 24, !63, i64 32, !63, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !78, i64 128, !78, i64 132}
!124 = !{!123, !60, i64 48}
