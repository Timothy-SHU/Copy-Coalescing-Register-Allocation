; ModuleID = 'liblzma/common/index_decoder.c'
source_filename = "liblzma/common/index_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i64, ptr, ptr, i64, i64, i64, i64, i32 }

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_decoder(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 !prof !34 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  %11 = tail call i32 @index_decoder_init(ptr noundef %8, ptr noundef %10, ptr noundef %1, i64 noundef %2), !range !43
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef %0) #3
  br label %14

14:                                               ; preds = %6, %13
  %15 = phi i32 [ %11, %13 ], [ %4, %6 ]
  br i1 %12, label %16, label %20

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8, !tbaa !35
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3
  store i8 1, ptr %18, align 8, !tbaa !44
  %19 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3, i64 3
  store i8 1, ptr %19, align 1, !tbaa !44
  br label %20

20:                                               ; preds = %3, %14, %16
  %21 = phi i32 [ %4, %3 ], [ %15, %14 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @index_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 !prof !34 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !46
  %7 = icmp eq i64 %6, ptrtoint (ptr @index_decoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #3
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @index_decoder_init to i64), ptr %5, align 8, !tbaa !46
  %10 = icmp eq ptr %2, null
  %11 = icmp eq i64 %3, 0
  %12 = or i1 %10, %11
  br i1 %12, label %38, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !48
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 72, ptr noundef %1) #3
  store ptr %17, ptr %0, align 8, !tbaa !48
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @index_decode, ptr %20, align 8, !tbaa !49
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @index_decoder_end, ptr %21, align 8, !tbaa !50
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @index_decoder_memconfig, ptr %22, align 8, !tbaa !51
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !52
  br label %27

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %14, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  tail call void @lzma_index_end(ptr noundef %26, ptr noundef %1) #3
  br label %27

27:                                               ; preds = %24, %19
  %28 = load ptr, ptr %0, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 3
  store ptr %2, ptr %29, align 8, !tbaa !54
  store ptr null, ptr %2, align 8, !tbaa !55
  %30 = tail call ptr @lzma_index_init(ptr noundef %1) #3
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 2
  store ptr %30, ptr %31, align 8, !tbaa !52
  %32 = icmp eq ptr %30, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  store i32 0, ptr %28, align 8, !tbaa !56
  %34 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 1
  store i64 %3, ptr %34, align 8, !tbaa !57
  %35 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 4
  store i64 0, ptr %35, align 8, !tbaa !58
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 7
  store i64 0, ptr %36, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.lzma_coder_s, ptr %28, i64 0, i32 8
  store i32 0, ptr %37, align 8, !tbaa !60
  br label %38

38:                                               ; preds = %33, %27, %16, %9
  %39 = phi i32 [ 11, %9 ], [ 5, %16 ], [ 0, %33 ], [ 5, %27 ]
  ret i32 %39
}

declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_index_buffer_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 !prof !34 {
  %7 = alloca %struct.lzma_coder_s, align 8
  %8 = icmp eq ptr %0, null
  %9 = icmp eq ptr %1, null
  %10 = or i1 %8, %9
  %11 = icmp eq ptr %3, null
  %12 = or i1 %10, %11
  %13 = icmp eq ptr %4, null
  %14 = or i1 %12, %13
  br i1 %14, label %44, label %15

15:                                               ; preds = %6
  %16 = load i64, ptr %4, align 8, !tbaa !61
  %17 = icmp ugt i64 %16, %5
  br i1 %17, label %44, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #3
  %19 = load i64, ptr %1, align 8, !tbaa !61
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 3
  store ptr %0, ptr %20, align 8, !tbaa !54
  store ptr null, ptr %0, align 8, !tbaa !55
  %21 = tail call ptr @lzma_index_init(ptr noundef %2) #3
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !52
  %23 = icmp eq ptr %21, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %18
  store i32 0, ptr %7, align 8, !tbaa !56
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 1
  store i64 %19, ptr %25, align 8, !tbaa !57
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 4
  store i64 0, ptr %26, align 8, !tbaa !58
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 7
  store i64 0, ptr %27, align 8, !tbaa !59
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 8
  store i32 0, ptr %28, align 8, !tbaa !60
  br label %29

29:                                               ; preds = %18, %24
  %30 = phi i32 [ 0, %24 ], [ 5, %18 ]
  br i1 %23, label %42, label %31

31:                                               ; preds = %29
  %32 = load i64, ptr %4, align 8, !tbaa !61
  %33 = call i32 @index_decode(ptr noundef nonnull %7, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %5, ptr poison, ptr poison, i64 poison, i32 poison)
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %42, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %22, align 8, !tbaa !52
  call void @lzma_index_end(ptr noundef %36, ptr noundef %2) #3
  store i64 %32, ptr %4, align 8, !tbaa !61
  switch i32 %33, label %41 [
    i32 0, label %42
    i32 6, label %37
  ]

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 4
  %39 = load i64, ptr %38, align 8, !tbaa !58
  %40 = call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %39) #3
  store i64 %40, ptr %1, align 8, !tbaa !61
  br label %42

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %37, %31, %41, %35, %29
  %43 = phi i32 [ %30, %29 ], [ 6, %37 ], [ 0, %31 ], [ 9, %35 ], [ %33, %41 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #3
  br label %44

44:                                               ; preds = %6, %15, %42
  %45 = phi i32 [ %43, %42 ], [ 11, %15 ], [ 11, %6 ]
  ret i32 %45
}

; Function Attrs: cold nounwind uwtable
define internal i32 @index_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias nocapture readnone %5, ptr noalias nocapture readnone %6, i64 %7, i32 %8) #0 !prof !34 {
  %10 = load i64, ptr %3, align 8, !tbaa !61
  %11 = icmp ult i64 %10, %4
  br i1 %11, label %12, label %137

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  br label %24

24:                                               ; preds = %12, %132
  %25 = phi i64 [ %10, %12 ], [ %135, %132 ]
  %26 = phi i32 [ undef, %12 ], [ %134, %132 ]
  %27 = phi i32 [ 0, %12 ], [ %133, %132 ]
  %28 = load i32, ptr %0, align 8, !tbaa !56
  switch i32 %28, label %145 [
    i32 0, label %29
    i32 1, label %34
    i32 2, label %38
    i32 3, label %49
    i32 4, label %49
    i32 5, label %82
    i32 6, label %86
    i32 7, label %103
  ]

29:                                               ; preds = %24
  %30 = add i64 %25, 1
  store i64 %30, ptr %3, align 8, !tbaa !61
  %31 = getelementptr inbounds i8, ptr %2, i64 %25
  %32 = load i8, ptr %31, align 1, !tbaa !62
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %129, label %145

34:                                               ; preds = %24
  %35 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %19, ptr noundef nonnull %20, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #3
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %137

37:                                               ; preds = %34
  store i64 0, ptr %20, align 8, !tbaa !59
  store i32 2, ptr %0, align 8, !tbaa !56
  br label %38

38:                                               ; preds = %24, %37
  %39 = load i64, ptr %21, align 8, !tbaa !58
  %40 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %39) #3
  %41 = load i64, ptr %22, align 8, !tbaa !57
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %137, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %23, align 8, !tbaa !52
  %45 = load i64, ptr %21, align 8, !tbaa !58
  tail call void @lzma_index_prealloc(ptr noundef %44, i64 noundef %45) #3
  %46 = load i64, ptr %21, align 8, !tbaa !58
  %47 = icmp eq i64 %46, 0
  %48 = select i1 %47, i32 5, i32 3
  br label %129

49:                                               ; preds = %24, %24
  %50 = icmp eq i32 %28, 3
  %51 = select i1 %50, ptr %16, ptr %17
  %52 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %51, ptr noundef nonnull %18, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #3
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  store i64 0, ptr %18, align 8, !tbaa !59
  %55 = load i32, ptr %0, align 8, !tbaa !56
  %56 = icmp eq i32 %55, 3
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load i64, ptr %16, align 8, !tbaa !63
  %59 = add i64 %58, -9223372036854775805
  %60 = icmp ult i64 %59, -9223372036854775800
  br i1 %60, label %78, label %75

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !52
  %64 = load i64, ptr %16, align 8, !tbaa !63
  %65 = load i64, ptr %17, align 8, !tbaa !64
  %66 = tail call i32 @lzma_index_append(ptr noundef %63, ptr noundef %1, i64 noundef %64, i64 noundef %65) #3
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i32 %26, i32 %66
  br i1 %67, label %69, label %78

69:                                               ; preds = %61
  %70 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %71 = load i64, ptr %70, align 8, !tbaa !58
  %72 = add i64 %71, -1
  store i64 %72, ptr %70, align 8, !tbaa !58
  %73 = icmp eq i64 %72, 0
  %74 = select i1 %73, i32 5, i32 3
  br label %75

75:                                               ; preds = %57, %69
  %76 = phi i32 [ %74, %69 ], [ 4, %57 ]
  %77 = phi i32 [ %68, %69 ], [ %26, %57 ]
  store i32 %76, ptr %0, align 8, !tbaa !56
  br label %78

78:                                               ; preds = %57, %49, %61, %75
  %79 = phi i32 [ 4, %75 ], [ 1, %61 ], [ 5, %49 ], [ 1, %57 ]
  %80 = phi i32 [ 0, %75 ], [ 0, %61 ], [ %52, %49 ], [ 0, %57 ]
  %81 = phi i32 [ %77, %75 ], [ %68, %61 ], [ %26, %49 ], [ 9, %57 ]
  switch i32 %79, label %145 [
    i32 4, label %132
    i32 5, label %137
  ]

82:                                               ; preds = %24
  %83 = load ptr, ptr %13, align 8, !tbaa !52
  %84 = tail call i32 @lzma_index_padding_size(ptr noundef %83) #3
  %85 = zext i32 %84 to i64
  store i64 %85, ptr %14, align 8, !tbaa !59
  store i32 6, ptr %0, align 8, !tbaa !56
  br label %86

86:                                               ; preds = %24, %82
  %87 = load i64, ptr %15, align 8, !tbaa !59
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = add i64 %87, -1
  store i64 %90, ptr %15, align 8, !tbaa !59
  %91 = load i64, ptr %3, align 8, !tbaa !61
  %92 = add i64 %91, 1
  store i64 %92, ptr %3, align 8, !tbaa !61
  %93 = getelementptr inbounds i8, ptr %2, i64 %91
  %94 = load i8, ptr %93, align 1, !tbaa !62
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %132, label %145

96:                                               ; preds = %86
  %97 = getelementptr inbounds i8, ptr %2, i64 %10
  %98 = load i64, ptr %3, align 8, !tbaa !61
  %99 = sub i64 %98, %10
  %100 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %101 = load i32, ptr %100, align 8, !tbaa !60
  %102 = tail call i32 @lzma_crc32(ptr noundef %97, i64 noundef %99, i32 noundef %101) #3
  store i32 %102, ptr %100, align 8, !tbaa !60
  store i32 7, ptr %0, align 8, !tbaa !56
  br label %103

103:                                              ; preds = %24, %96
  %104 = load i64, ptr %3, align 8, !tbaa !61
  %105 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %106 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  br label %107

107:                                              ; preds = %121, %103
  %108 = phi i64 [ %116, %121 ], [ %104, %103 ]
  %109 = icmp eq i64 %108, %4
  br i1 %109, label %145, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %105, align 8, !tbaa !60
  %112 = load i64, ptr %106, align 8, !tbaa !59
  %113 = trunc i64 %112 to i32
  %114 = shl i32 %113, 3
  %115 = lshr i32 %111, %114
  %116 = add i64 %108, 1
  store i64 %116, ptr %3, align 8, !tbaa !61
  %117 = getelementptr inbounds i8, ptr %2, i64 %108
  %118 = load i8, ptr %117, align 1, !tbaa !62
  %119 = trunc i32 %115 to i8
  %120 = icmp eq i8 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %110
  %122 = add i64 %112, 1
  store i64 %122, ptr %106, align 8, !tbaa !59
  %123 = icmp ult i64 %122, 4
  br i1 %123, label %107, label %124, !llvm.loop !65

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !52
  %127 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %128 = load ptr, ptr %127, align 8, !tbaa !54
  store ptr %126, ptr %128, align 8, !tbaa !55
  store ptr null, ptr %125, align 8, !tbaa !52
  br label %145

129:                                              ; preds = %29, %43
  %130 = phi i32 [ %48, %43 ], [ 1, %29 ]
  %131 = phi i32 [ 0, %43 ], [ %27, %29 ]
  store i32 %130, ptr %0, align 8, !tbaa !56
  br label %132

132:                                              ; preds = %129, %89, %78
  %133 = phi i32 [ %27, %89 ], [ %80, %78 ], [ %131, %129 ]
  %134 = phi i32 [ %26, %89 ], [ %81, %78 ], [ %26, %129 ]
  %135 = load i64, ptr %3, align 8, !tbaa !61
  %136 = icmp ult i64 %135, %4
  br i1 %136, label %24, label %137, !llvm.loop !68

137:                                              ; preds = %34, %132, %38, %78, %9
  %138 = phi i32 [ 0, %9 ], [ %35, %34 ], [ %133, %132 ], [ 6, %38 ], [ %80, %78 ]
  %139 = getelementptr inbounds i8, ptr %2, i64 %10
  %140 = load i64, ptr %3, align 8, !tbaa !61
  %141 = sub i64 %140, %10
  %142 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %143 = load i32, ptr %142, align 8, !tbaa !60
  %144 = tail call i32 @lzma_crc32(ptr noundef %139, i64 noundef %141, i32 noundef %143) #3
  store i32 %144, ptr %142, align 8, !tbaa !60
  br label %145

145:                                              ; preds = %89, %24, %29, %78, %110, %107, %137, %124
  %146 = phi i32 [ 1, %124 ], [ %138, %137 ], [ 0, %107 ], [ 9, %110 ], [ %81, %78 ], [ 9, %29 ], [ 11, %24 ], [ 9, %89 ]
  ret i32 %146
}

declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @lzma_index_memusage(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind uwtable
define internal void @index_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !34 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !52
  tail call void @lzma_index_end(ptr noundef %4, ptr noundef %1) #3
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @index_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #0 !prof !34 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !58
  %7 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %6) #3
  store i64 %7, ptr %1, align 8, !tbaa !61
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !57
  store i64 %9, ptr %2, align 8, !tbaa !61
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !61
  %13 = icmp ugt i64 %12, %3
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i64 %3, ptr %8, align 8, !tbaa !57
  br label %15

15:                                               ; preds = %4, %14, %11
  %16 = phi i32 [ 6, %11 ], [ 0, %14 ], [ 0, %4 ]
  ret i32 %16
}

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lzma_index_prealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #2

declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !37, i64 56}
!36 = !{!"", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !37, i64 48, !37, i64 56, !37, i64 64, !37, i64 72, !37, i64 80, !37, i64 88, !40, i64 96, !40, i64 104, !40, i64 112, !40, i64 120, !41, i64 128, !41, i64 132}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"long", !38, i64 0}
!41 = !{!"int", !38, i64 0}
!42 = !{!36, !37, i64 48}
!43 = !{i32 0, i32 12}
!44 = !{!45, !45, i64 0}
!45 = !{!"_Bool", !38, i64 0}
!46 = !{!47, !40, i64 16}
!47 = !{!"lzma_next_coder_s", !37, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 32, !37, i64 40, !37, i64 48, !37, i64 56}
!48 = !{!47, !37, i64 0}
!49 = !{!47, !37, i64 24}
!50 = !{!47, !37, i64 32}
!51 = !{!47, !37, i64 48}
!52 = !{!53, !37, i64 16}
!53 = !{!"lzma_coder_s", !41, i64 0, !40, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !41, i64 64}
!54 = !{!53, !37, i64 24}
!55 = !{!37, !37, i64 0}
!56 = !{!53, !41, i64 0}
!57 = !{!53, !40, i64 8}
!58 = !{!53, !40, i64 32}
!59 = !{!53, !40, i64 56}
!60 = !{!53, !41, i64 64}
!61 = !{!40, !40, i64 0}
!62 = !{!38, !38, i64 0}
!63 = !{!53, !40, i64 40}
!64 = !{!53, !40, i64 48}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = distinct !{!68, !66, !67}
