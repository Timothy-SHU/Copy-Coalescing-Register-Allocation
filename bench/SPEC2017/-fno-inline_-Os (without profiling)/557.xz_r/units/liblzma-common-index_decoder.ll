; ModuleID = 'liblzma/common/index_decoder.c'
source_filename = "liblzma/common/index_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }
%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, i64, ptr, ptr, i64, i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_decoder(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !12
  %11 = tail call i32 @index_decoder_init(ptr noundef %8, ptr noundef %10, ptr noundef %1, i64 noundef %2) #4, !range !13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef nonnull %0) #3
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !14
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3, i64 3
  store i8 1, ptr %17, align 1, !tbaa !14
  br label %18

18:                                               ; preds = %13, %3, %14
  %19 = phi i32 [ %4, %3 ], [ %11, %13 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @index_decoder_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !16
  %7 = icmp eq i64 %6, ptrtoint (ptr @index_decoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #3
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @index_decoder_init to i64), ptr %5, align 8, !tbaa !16
  %10 = icmp eq ptr %2, null
  %11 = icmp eq i64 %3, 0
  %12 = or i1 %10, %11
  br i1 %12, label %31, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !18
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 72, ptr noundef %1) #3
  store ptr %17, ptr %0, align 8, !tbaa !18
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @index_decode, ptr %20, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @index_decoder_end, ptr %21, align 8, !tbaa !20
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @index_decoder_memconfig, ptr %22, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 2
  store ptr null, ptr %23, align 8, !tbaa !22
  br label %28

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %14, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  tail call void @lzma_index_end(ptr noundef %26, ptr noundef %1) #3
  %27 = load ptr, ptr %0, align 8, !tbaa !18
  br label %28

28:                                               ; preds = %24, %19
  %29 = phi ptr [ %27, %24 ], [ %17, %19 ]
  %30 = tail call fastcc i32 @index_decoder_reset(ptr noundef %29, ptr noundef %1, ptr noundef nonnull %2, i64 noundef %3) #4, !range !24
  br label %31

31:                                               ; preds = %16, %9, %28
  %32 = phi i32 [ %30, %28 ], [ 11, %9 ], [ 5, %16 ]
  ret i32 %32
}

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_index_buffer_decode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.lzma_coder_s, align 8
  %8 = insertelement <4 x ptr> poison, ptr %1, i64 0
  %9 = insertelement <4 x ptr> %8, ptr %0, i64 1
  %10 = insertelement <4 x ptr> %9, ptr %3, i64 2
  %11 = insertelement <4 x ptr> %10, ptr %4, i64 3
  %12 = icmp eq <4 x ptr> %11, zeroinitializer
  %13 = bitcast <4 x i1> %12 to i4
  %14 = icmp eq i4 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %6
  %16 = load i64, ptr %4, align 8, !tbaa !25
  %17 = icmp ugt i64 %16, %5
  br i1 %17, label %36, label %18

18:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #5
  %19 = load i64, ptr %1, align 8, !tbaa !25
  %20 = call fastcc i32 @index_decoder_reset(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %0, i64 noundef %19) #4, !range !24
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i64, ptr %4, align 8, !tbaa !25
  %24 = call i32 @index_decode(ptr noundef nonnull %7, ptr noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i64 noundef %5, ptr poison, ptr poison, i64 poison, i32 poison) #4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  call void @lzma_index_end(ptr noundef %28, ptr noundef %2) #3
  store i64 %23, ptr %4, align 8, !tbaa !25
  switch i32 %24, label %33 [
    i32 0, label %34
    i32 6, label %29
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %7, i64 0, i32 4
  %31 = load i64, ptr %30, align 8, !tbaa !26
  %32 = call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %31) #3
  store i64 %32, ptr %1, align 8, !tbaa !25
  br label %34

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %29, %22, %33, %26, %18
  %35 = phi i32 [ %20, %18 ], [ 6, %29 ], [ 0, %22 ], [ 9, %26 ], [ %24, %33 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #5
  br label %36

36:                                               ; preds = %6, %15, %34
  %37 = phi i32 [ %35, %34 ], [ 11, %15 ], [ 11, %6 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @index_decoder_reset(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store ptr %2, ptr %5, align 8, !tbaa !27
  store ptr null, ptr %2, align 8, !tbaa !28
  %6 = tail call ptr @lzma_index_init(ptr noundef %1) #3
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = icmp eq ptr %6, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  store i32 0, ptr %0, align 8, !tbaa !29
  %10 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  store i64 %3, ptr %10, align 8, !tbaa !30
  %11 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  store i64 0, ptr %11, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  store i64 0, ptr %12, align 8, !tbaa !31
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %13, align 8, !tbaa !32
  br label %14

14:                                               ; preds = %4, %9
  %15 = phi i32 [ 0, %9 ], [ 5, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @index_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias nocapture readnone %5, ptr noalias nocapture readnone %6, i64 %7, i32 %8) #0 {
  %10 = load i64, ptr %3, align 8, !tbaa !25
  %11 = icmp ult i64 %10, %4
  br i1 %11, label %12, label %123

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %0, align 8, !tbaa !29
  br label %20

20:                                               ; preds = %12, %116
  %21 = phi i32 [ %19, %12 ], [ %117, %116 ]
  %22 = phi i64 [ %10, %12 ], [ %118, %116 ]
  switch i32 %21, label %131 [
    i32 0, label %25
    i32 1, label %30
    i32 2, label %34
    i32 3, label %45
    i32 4, label %45
    i32 5, label %68
    i32 6, label %23
    i32 7, label %90
  ]

23:                                               ; preds = %20
  %24 = load i64, ptr %14, align 8, !tbaa !31
  br label %72

25:                                               ; preds = %20
  %26 = add nuw i64 %22, 1
  store i64 %26, ptr %3, align 8, !tbaa !25
  %27 = getelementptr inbounds i8, ptr %2, i64 %22
  %28 = load i8, ptr %27, align 1, !tbaa !33
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %114, label %131

30:                                               ; preds = %20
  %31 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %17, ptr noundef nonnull %14, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #3
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %120

33:                                               ; preds = %30
  store i64 0, ptr %14, align 8, !tbaa !31
  store i32 2, ptr %0, align 8, !tbaa !29
  br label %34

34:                                               ; preds = %20, %33
  %35 = load i64, ptr %17, align 8, !tbaa !26
  %36 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %35) #3
  %37 = load i64, ptr %18, align 8, !tbaa !30
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %120, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %13, align 8, !tbaa !22
  %41 = load i64, ptr %17, align 8, !tbaa !26
  tail call void @lzma_index_prealloc(ptr noundef %40, i64 noundef %41) #3
  %42 = load i64, ptr %17, align 8, !tbaa !26
  %43 = icmp eq i64 %42, 0
  %44 = select i1 %43, i32 5, i32 3
  br label %114

45:                                               ; preds = %20, %20
  %46 = icmp eq i32 %21, 3
  %47 = select i1 %46, ptr %15, ptr %16
  %48 = tail call i32 @lzma_vli_decode(ptr noundef nonnull %47, ptr noundef nonnull %14, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #3
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %120

50:                                               ; preds = %45
  store i64 0, ptr %14, align 8, !tbaa !31
  %51 = load i32, ptr %0, align 8, !tbaa !29
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i64, ptr %15, align 8, !tbaa !34
  %55 = add i64 %54, -9223372036854775805
  %56 = icmp ult i64 %55, -9223372036854775800
  br i1 %56, label %131, label %114

57:                                               ; preds = %50
  %58 = load ptr, ptr %13, align 8, !tbaa !22
  %59 = load i64, ptr %15, align 8, !tbaa !34
  %60 = load i64, ptr %16, align 8, !tbaa !35
  %61 = tail call i32 @lzma_index_append(ptr noundef %58, ptr noundef %1, i64 noundef %59, i64 noundef %60) #3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %131

63:                                               ; preds = %57
  %64 = load i64, ptr %17, align 8, !tbaa !26
  %65 = add i64 %64, -1
  store i64 %65, ptr %17, align 8, !tbaa !26
  %66 = icmp eq i64 %65, 0
  %67 = select i1 %66, i32 5, i32 3
  br label %114

68:                                               ; preds = %20
  %69 = load ptr, ptr %13, align 8, !tbaa !22
  %70 = tail call i32 @lzma_index_padding_size(ptr noundef %69) #3
  %71 = zext i32 %70 to i64
  store i64 %71, ptr %14, align 8, !tbaa !31
  store i32 6, ptr %0, align 8, !tbaa !29
  br label %72

72:                                               ; preds = %23, %68
  %73 = phi i64 [ %24, %23 ], [ %71, %68 ]
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = add i64 %73, -1
  store i64 %76, ptr %14, align 8, !tbaa !31
  %77 = load i64, ptr %3, align 8, !tbaa !25
  %78 = add i64 %77, 1
  store i64 %78, ptr %3, align 8, !tbaa !25
  %79 = getelementptr inbounds i8, ptr %2, i64 %77
  %80 = load i8, ptr %79, align 1, !tbaa !33
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %116, label %131

82:                                               ; preds = %72
  %83 = getelementptr inbounds i8, ptr %2, i64 %10
  %84 = load i64, ptr %3, align 8, !tbaa !25
  %85 = sub i64 %84, %10
  %86 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %87 = load i32, ptr %86, align 8, !tbaa !32
  %88 = tail call i32 @lzma_crc32(ptr noundef %83, i64 noundef %85, i32 noundef %87) #3
  store i32 %88, ptr %86, align 8, !tbaa !32
  store i32 7, ptr %0, align 8, !tbaa !29
  %89 = load i64, ptr %3, align 8, !tbaa !25
  br label %90

90:                                               ; preds = %20, %82
  %91 = phi i64 [ %89, %82 ], [ %22, %20 ]
  %92 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  br label %93

93:                                               ; preds = %107, %90
  %94 = phi i64 [ %102, %107 ], [ %91, %90 ]
  %95 = icmp eq i64 %94, %4
  br i1 %95, label %131, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %92, align 8, !tbaa !32
  %98 = load i64, ptr %14, align 8, !tbaa !31
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 3
  %101 = lshr i32 %97, %100
  %102 = add i64 %94, 1
  store i64 %102, ptr %3, align 8, !tbaa !25
  %103 = getelementptr inbounds i8, ptr %2, i64 %94
  %104 = load i8, ptr %103, align 1, !tbaa !33
  %105 = trunc i32 %101 to i8
  %106 = icmp eq i8 %104, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %96
  %108 = add i64 %98, 1
  store i64 %108, ptr %14, align 8, !tbaa !31
  %109 = icmp ult i64 %108, 4
  br i1 %109, label %93, label %110, !llvm.loop !36

110:                                              ; preds = %107
  %111 = load ptr, ptr %13, align 8, !tbaa !22
  %112 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !27
  store ptr %111, ptr %113, align 8, !tbaa !28
  store ptr null, ptr %13, align 8, !tbaa !22
  br label %131

114:                                              ; preds = %53, %63, %25, %39
  %115 = phi i32 [ %44, %39 ], [ 1, %25 ], [ %67, %63 ], [ 4, %53 ]
  store i32 %115, ptr %0, align 8, !tbaa !29
  br label %116

116:                                              ; preds = %114, %75
  %117 = phi i32 [ 6, %75 ], [ %115, %114 ]
  %118 = load i64, ptr %3, align 8, !tbaa !25
  %119 = icmp ult i64 %118, %4
  br i1 %119, label %20, label %120, !llvm.loop !38

120:                                              ; preds = %45, %34, %116, %30
  %121 = phi i32 [ %31, %30 ], [ 0, %116 ], [ 6, %34 ], [ %48, %45 ]
  %122 = load i64, ptr %3, align 8, !tbaa !25
  br label %123

123:                                              ; preds = %120, %9
  %124 = phi i64 [ %10, %9 ], [ %122, %120 ]
  %125 = phi i32 [ 0, %9 ], [ %121, %120 ]
  %126 = getelementptr inbounds i8, ptr %2, i64 %10
  %127 = sub i64 %124, %10
  %128 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %129 = load i32, ptr %128, align 8, !tbaa !32
  %130 = tail call i32 @lzma_crc32(ptr noundef %126, i64 noundef %127, i32 noundef %129) #3
  store i32 %130, ptr %128, align 8, !tbaa !32
  br label %131

131:                                              ; preds = %53, %57, %20, %75, %25, %96, %93, %123, %110
  %132 = phi i32 [ 1, %110 ], [ %125, %123 ], [ 9, %96 ], [ 0, %93 ], [ %61, %57 ], [ 9, %53 ], [ 11, %20 ], [ 9, %75 ], [ 9, %25 ]
  ret i32 %132
}

; Function Attrs: optsize
declare void @lzma_index_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @lzma_index_memusage(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal void @index_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  tail call void @lzma_index_end(ptr noundef %4, ptr noundef %1) #3
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @index_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !26
  %7 = tail call i64 @lzma_index_memusage(i64 noundef 1, i64 noundef %6) #3
  store i64 %7, ptr %1, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !30
  store i64 %9, ptr %2, align 8, !tbaa !25
  %10 = icmp eq i64 %3, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %4
  %12 = load i64, ptr %1, align 8, !tbaa !25
  %13 = icmp ugt i64 %12, %3
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  store i64 %3, ptr %8, align 8, !tbaa !30
  br label %15

15:                                               ; preds = %4, %14, %11
  %16 = phi i32 [ 6, %11 ], [ 0, %14 ], [ 0, %4 ]
  ret i32 %16
}

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @lzma_index_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_vli_decode(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @lzma_index_prealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_index_append(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_index_padding_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @lzma_crc32(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 56}
!6 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !11, i64 128, !11, i64 132}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!6, !7, i64 48}
!13 = !{i32 0, i32 12}
!14 = !{!15, !15, i64 0}
!15 = !{!"_Bool", !8, i64 0}
!16 = !{!17, !10, i64 16}
!17 = !{!"lzma_next_coder_s", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!18 = !{!17, !7, i64 0}
!19 = !{!17, !7, i64 24}
!20 = !{!17, !7, i64 32}
!21 = !{!17, !7, i64 48}
!22 = !{!23, !7, i64 16}
!23 = !{!"lzma_coder_s", !11, i64 0, !10, i64 8, !7, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !11, i64 64}
!24 = !{i32 0, i32 6}
!25 = !{!10, !10, i64 0}
!26 = !{!23, !10, i64 32}
!27 = !{!23, !7, i64 24}
!28 = !{!7, !7, i64 0}
!29 = !{!23, !11, i64 0}
!30 = !{!23, !10, i64 8}
!31 = !{!23, !10, i64 56}
!32 = !{!23, !11, i64 64}
!33 = !{!8, !8, i64 0}
!34 = !{!23, !10, i64 40}
!35 = !{!23, !10, i64 48}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = distinct !{!38, !37}
