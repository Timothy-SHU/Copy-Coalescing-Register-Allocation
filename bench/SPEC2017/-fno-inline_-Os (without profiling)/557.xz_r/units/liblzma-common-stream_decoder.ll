; ModuleID = 'liblzma/common/stream_decoder.c'
source_filename = "liblzma/common/stream_decoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lzma_next_coder_s = type { ptr, i64, i64, ptr, ptr, ptr, ptr, ptr }
%struct.lzma_coder_s = type { i32, %struct.lzma_next_coder_s, %struct.lzma_block, %struct.lzma_stream_flags, ptr, i64, i64, i8, i8, i8, i8, i8, i64, [1024 x i8] }
%struct.lzma_block = type { i32, i32, i32, i64, i64, ptr, [64 x i8], ptr, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.lzma_stream_flags = type { i32, i64, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.lzma_filter = type { i64, ptr }
%struct.lzma_stream = type { ptr, i64, i64, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i32, i32 }
%struct.lzma_internal_s = type { %struct.lzma_next_coder_s, i32, i64, [4 x i8], i8 }

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !5
  %7 = icmp eq i64 %6, ptrtoint (ptr @lzma_stream_decoder_init to i64)
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %5, align 8, !tbaa !5
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %9
  %12 = icmp ult i32 %3, 16
  br i1 %12, label %13, label %47

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !11
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 1400, ptr noundef %1) #6
  store ptr %17, ptr %0, align 8, !tbaa !11
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @stream_decode, ptr %20, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @stream_decoder_end, ptr %21, align 8, !tbaa !13
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  store ptr @stream_decoder_get_check, ptr %22, align 8, !tbaa !14
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @stream_decoder_memconfig, ptr %23, align 8, !tbaa !15
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa.struct !16
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1, i32 1
  store i64 -1, ptr %25, align 8, !tbaa.struct !19
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  %27 = load ptr, ptr %0, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !20
  br label %29

29:                                               ; preds = %19, %13
  %30 = phi ptr [ %27, %19 ], [ %14, %13 ]
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 5
  store i64 %2, ptr %31, align 8, !tbaa !26
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 6
  store i64 32768, ptr %32, align 8, !tbaa !27
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 7
  %34 = trunc i32 %3 to i8
  %35 = and i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !28
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 8
  %37 = lshr i8 %34, 1
  %38 = and i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !29
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 9
  %40 = lshr i8 %34, 2
  %41 = and i8 %40, 1
  store i8 %41, ptr %39, align 2, !tbaa !30
  %42 = icmp ugt i32 %3, 7
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 10
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1, !tbaa !31
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 11
  store i8 1, ptr %45, align 4, !tbaa !32
  %46 = tail call fastcc i32 @stream_decoder_reset(ptr noundef nonnull %30, ptr noundef %1) #7, !range !33
  br label %47

47:                                               ; preds = %16, %11, %9, %29
  %48 = phi i32 [ %46, %29 ], [ 11, %9 ], [ 8, %11 ], [ 5, %16 ]
  ret i32 %48
}

; Function Attrs: optsize
declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @stream_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 {
  %10 = alloca [5 x %struct.lzma_filter], align 16
  %11 = alloca %struct.lzma_stream_flags, align 8
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %15 = getelementptr inbounds %struct.lzma_stream_flags, ptr %11, i64 0, i32 1
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %19 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %20 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %21 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  %27 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %29 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  br label %32

32:                                               ; preds = %180, %9
  %33 = load i32, ptr %0, align 8, !tbaa !34
  switch i32 %33, label %181 [
    i32 0, label %34
    i32 1, label %59
    i32 2, label %107
    i32 3, label %118
    i32 4, label %126
    i32 5, label %150
  ]

34:                                               ; preds = %32
  %35 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 12) #6
  %36 = load i64, ptr %14, align 8, !tbaa !35
  %37 = icmp ult i64 %36, 12
  br i1 %37, label %181, label %38

38:                                               ; preds = %34
  store i64 0, ptr %14, align 8, !tbaa !35
  %39 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %16, ptr noundef nonnull %13) #6
  switch i32 %39, label %181 [
    i32 0, label %44
    i32 7, label %40
  ]

40:                                               ; preds = %38
  %41 = load i8, ptr %18, align 4, !tbaa !32, !range !36, !noundef !37
  %42 = icmp eq i8 %41, 0
  %43 = select i1 %42, i32 9, i32 7
  br label %181

44:                                               ; preds = %38
  store i8 0, ptr %18, align 4, !tbaa !32
  %45 = load i32, ptr %19, align 8, !tbaa !38
  store i32 %45, ptr %20, align 8, !tbaa !39
  store i32 1, ptr %0, align 8, !tbaa !34
  %46 = load i8, ptr %21, align 8, !tbaa !28, !range !36, !noundef !37
  %47 = icmp ne i8 %46, 0
  %48 = icmp eq i32 %45, 0
  %49 = select i1 %47, i1 %48, i1 false
  br i1 %49, label %181, label %50

50:                                               ; preds = %44
  %51 = load i8, ptr %22, align 1, !tbaa !29, !range !36, !noundef !37
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = call zeroext i8 @lzma_check_is_supported(i32 noundef %45) #6
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %181, label %56

56:                                               ; preds = %50, %53
  %57 = load i8, ptr %23, align 2, !tbaa !30, !range !36, !noundef !37
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %181

59:                                               ; preds = %56, %32
  %60 = load i64, ptr %3, align 8, !tbaa !18
  %61 = icmp ult i64 %60, %4
  br i1 %61, label %62, label %181

62:                                               ; preds = %59
  %63 = load i64, ptr %14, align 8, !tbaa !35
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, ptr %24, align 4, !tbaa !40
  br label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds i8, ptr %2, i64 %60
  %69 = load i8, ptr %68, align 1, !tbaa !41
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %178, label %71

71:                                               ; preds = %67
  %72 = zext i8 %69 to i32
  %73 = shl nuw nsw i32 %72, 2
  %74 = add nuw nsw i32 %73, 4
  store i32 %74, ptr %24, align 4, !tbaa !40
  br label %75

75:                                               ; preds = %65, %71
  %76 = phi i32 [ %66, %65 ], [ %74, %71 ]
  %77 = zext i32 %76 to i64
  %78 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef %77) #6
  %79 = load i64, ptr %14, align 8, !tbaa !35
  %80 = load i32, ptr %24, align 4, !tbaa !40
  %81 = zext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %181, label %83

83:                                               ; preds = %75
  store i64 0, ptr %14, align 8, !tbaa !35
  store i32 0, ptr %25, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #8
  store ptr %10, ptr %26, align 8, !tbaa !43
  %84 = call i32 @lzma_block_header_decode(ptr noundef nonnull %25, ptr noundef %1, ptr noundef nonnull %13) #6
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %10) #6
  %88 = icmp eq i64 %87, -1
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  store i64 %87, ptr %27, align 8, !tbaa !27
  %90 = load i64, ptr %28, align 8, !tbaa !26
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %29, ptr noundef %1, ptr noundef nonnull %25) #6
  br label %94

94:                                               ; preds = %89, %86, %92
  %95 = phi i32 [ %93, %92 ], [ 8, %86 ], [ 6, %89 ]
  br label %98

96:                                               ; preds = %98
  store ptr null, ptr %26, align 8, !tbaa !43
  %97 = icmp eq i32 %95, 0
  br i1 %97, label %106, label %104

98:                                               ; preds = %94, %98
  %99 = phi i64 [ 0, %94 ], [ %102, %98 ]
  %100 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %10, i64 0, i64 %99, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !44
  call void @lzma_free(ptr noundef %101, ptr noundef %1) #6
  %102 = add nuw nsw i64 %99, 1
  %103 = icmp eq i64 %102, 4
  br i1 %103, label %96, label %98, !llvm.loop !46

104:                                              ; preds = %83, %96
  %105 = phi i32 [ %95, %96 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #8
  br label %181

106:                                              ; preds = %96
  store i32 2, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #8
  br label %107

107:                                              ; preds = %106, %32
  %108 = load ptr, ptr %30, align 8, !tbaa !48
  %109 = load ptr, ptr %29, align 8, !tbaa !49
  %110 = call i32 %108(ptr noundef %109, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #6
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %181

112:                                              ; preds = %107
  %113 = load ptr, ptr %12, align 8, !tbaa !20
  %114 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %25) #6
  %115 = load i64, ptr %31, align 8, !tbaa !50
  %116 = call i32 @lzma_index_hash_append(ptr noundef %113, i64 noundef %114, i64 noundef %115) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %178, label %181

118:                                              ; preds = %32
  %119 = load i64, ptr %3, align 8, !tbaa !18
  %120 = icmp ult i64 %119, %4
  br i1 %120, label %121, label %181

121:                                              ; preds = %118
  %122 = load ptr, ptr %12, align 8, !tbaa !20
  %123 = call i32 @lzma_index_hash_decode(ptr noundef %122, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #6
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %181

125:                                              ; preds = %121
  store i32 4, ptr %0, align 8, !tbaa !34
  br label %126

126:                                              ; preds = %125, %32
  %127 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %14, i64 noundef 12) #6
  %128 = load i64, ptr %14, align 8, !tbaa !35
  %129 = icmp ult i64 %128, 12
  br i1 %129, label %181, label %130

130:                                              ; preds = %126
  store i64 0, ptr %14, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #8
  %131 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %11, ptr noundef nonnull %13) #6
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = icmp eq i32 %131, 7
  %135 = select i1 %134, i32 9, i32 %131
  br label %147

136:                                              ; preds = %130
  %137 = load ptr, ptr %12, align 8, !tbaa !20
  %138 = call i64 @lzma_index_hash_size(ptr noundef %137) #6
  %139 = load i64, ptr %15, align 8, !tbaa !51
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %16, ptr noundef nonnull %11) #6
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i8, ptr %17, align 1, !tbaa !31, !range !36, !noundef !37
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141, %136, %144, %133
  %148 = phi i32 [ %135, %133 ], [ %142, %141 ], [ 9, %136 ], [ 1, %144 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  br label %181

149:                                              ; preds = %144
  store i32 5, ptr %0, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  br label %150

150:                                              ; preds = %149, %32
  %151 = load i64, ptr %3, align 8, !tbaa !18
  %152 = icmp ult i64 %151, %4
  br i1 %152, label %159, label %153

153:                                              ; preds = %150, %164
  %154 = icmp eq i32 %8, 3
  br i1 %154, label %155, label %181

155:                                              ; preds = %153
  %156 = load i64, ptr %14, align 8, !tbaa !35
  %157 = icmp eq i64 %156, 0
  %158 = select i1 %157, i32 1, i32 9
  br label %181

159:                                              ; preds = %150, %164
  %160 = phi i64 [ %165, %164 ], [ %151, %150 ]
  %161 = getelementptr inbounds i8, ptr %2, i64 %160
  %162 = load i8, ptr %161, align 1, !tbaa !41
  %163 = icmp eq i8 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %159
  %165 = add i64 %160, 1
  store i64 %165, ptr %3, align 8, !tbaa !18
  %166 = load i64, ptr %14, align 8, !tbaa !35
  %167 = add i64 %166, 1
  %168 = and i64 %167, 3
  store i64 %168, ptr %14, align 8, !tbaa !35
  %169 = icmp eq i64 %165, %4
  br i1 %169, label %153, label %159

170:                                              ; preds = %159
  %171 = load i64, ptr %14, align 8, !tbaa !35
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %170
  %174 = add nuw i64 %160, 1
  store i64 %174, ptr %3, align 8, !tbaa !18
  br label %181

175:                                              ; preds = %170
  %176 = call fastcc i32 @stream_decoder_reset(ptr noundef nonnull %0, ptr noundef %1) #7, !range !33
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %180, label %181

178:                                              ; preds = %112, %67
  %179 = phi i32 [ 3, %67 ], [ 1, %112 ]
  store i32 %179, ptr %0, align 8, !tbaa !34
  br label %180

180:                                              ; preds = %178, %175
  br label %32

181:                                              ; preds = %44, %107, %112, %53, %121, %32, %126, %118, %75, %59, %34, %56, %175, %38, %40, %147, %104, %153, %173, %155
  %182 = phi i32 [ %158, %155 ], [ 9, %173 ], [ 0, %153 ], [ %105, %104 ], [ %148, %147 ], [ %43, %40 ], [ %39, %38 ], [ 2, %44 ], [ %116, %112 ], [ %110, %107 ], [ 3, %53 ], [ %123, %121 ], [ 11, %32 ], [ 0, %126 ], [ 0, %118 ], [ 0, %75 ], [ 0, %59 ], [ 0, %34 ], [ 4, %56 ], [ %176, %175 ]
  ret i32 %182
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stream_decoder_end(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  tail call void @lzma_index_hash_end(ptr noundef %5, ptr noundef %1) #6
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @stream_decoder_get_check(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !38
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @stream_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #3 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !27
  store i64 %6, ptr %1, align 8, !tbaa !18
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !26
  store i64 %8, ptr %2, align 8, !tbaa !18
  %9 = icmp eq i64 %3, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %5, align 8, !tbaa !27
  %12 = icmp ugt i64 %11, %3
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i64 %3, ptr %7, align 8, !tbaa !26
  br label %14

14:                                               ; preds = %4, %13, %10
  %15 = phi i32 [ 6, %10 ], [ 0, %13 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stream_decoder_reset(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !20
  %5 = tail call ptr @lzma_index_hash_init(ptr noundef %4, ptr noundef %1) #6
  store ptr %5, ptr %3, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  store i32 0, ptr %0, align 8, !tbaa !34
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  store i64 0, ptr %8, align 8, !tbaa !35
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ 0, %7 ], [ 5, %2 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_decoder(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !52
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = tail call i32 @lzma_stream_decoder_init(ptr noundef %8, ptr noundef %10, i64 noundef %1, i32 noundef %2) #7, !range !55
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef nonnull %0) #6
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !56
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3, i64 3
  store i8 1, ptr %17, align 1, !tbaa !56
  br label %18

18:                                               ; preds = %13, %3, %14
  %19 = phi i32 [ %4, %3 ], [ %11, %13 ], [ 0, %14 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: optsize
declare void @lzma_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_hash_append(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_index_hash_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @lzma_index_hash_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @lzma_index_hash_end(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lzma_index_hash_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 16}
!6 = !{!"lzma_next_coder_s", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!6, !7, i64 0}
!12 = !{!6, !7, i64 24}
!13 = !{!6, !7, i64 32}
!14 = !{!6, !7, i64 40}
!15 = !{!6, !7, i64 48}
!16 = !{i64 0, i64 8, !17, i64 8, i64 8, !18, i64 16, i64 8, !18, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 8, !17, i64 48, i64 8, !17, i64 56, i64 8, !17}
!17 = !{!7, !7, i64 0}
!18 = !{!10, !10, i64 0}
!19 = !{i64 0, i64 8, !18, i64 8, i64 8, !18, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 8, !17, i64 48, i64 8, !17}
!20 = !{!21, !7, i64 336}
!21 = !{!"lzma_coder_s", !22, i64 0, !6, i64 8, !23, i64 72, !24, i64 280, !7, i64 336, !10, i64 344, !10, i64 352, !25, i64 360, !25, i64 361, !25, i64 362, !25, i64 363, !25, i64 364, !10, i64 368, !8, i64 376}
!22 = !{!"int", !8, i64 0}
!23 = !{!"", !22, i64 0, !22, i64 4, !22, i64 8, !10, i64 16, !10, i64 24, !7, i64 32, !8, i64 40, !7, i64 104, !7, i64 112, !7, i64 120, !22, i64 128, !22, i64 132, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !22, i64 184, !22, i64 188, !22, i64 192, !22, i64 196, !8, i64 200, !8, i64 201, !8, i64 202, !8, i64 203, !8, i64 204, !8, i64 205, !8, i64 206, !8, i64 207}
!24 = !{!"", !22, i64 0, !10, i64 8, !22, i64 16, !22, i64 20, !22, i64 24, !22, i64 28, !22, i64 32, !8, i64 36, !8, i64 37, !8, i64 38, !8, i64 39, !8, i64 40, !8, i64 41, !8, i64 42, !8, i64 43, !22, i64 44, !22, i64 48}
!25 = !{!"_Bool", !8, i64 0}
!26 = !{!21, !10, i64 344}
!27 = !{!21, !10, i64 352}
!28 = !{!21, !25, i64 360}
!29 = !{!21, !25, i64 361}
!30 = !{!21, !25, i64 362}
!31 = !{!21, !25, i64 363}
!32 = !{!21, !25, i64 364}
!33 = !{i32 0, i32 6}
!34 = !{!21, !22, i64 0}
!35 = !{!21, !10, i64 368}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!21, !22, i64 296}
!39 = !{!21, !22, i64 80}
!40 = !{!21, !22, i64 76}
!41 = !{!8, !8, i64 0}
!42 = !{!21, !22, i64 72}
!43 = !{!21, !7, i64 104}
!44 = !{!45, !7, i64 8}
!45 = !{!"", !10, i64 0, !7, i64 8}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.mustprogress"}
!48 = !{!21, !7, i64 32}
!49 = !{!21, !7, i64 8}
!50 = !{!21, !10, i64 96}
!51 = !{!24, !10, i64 8}
!52 = !{!53, !7, i64 56}
!53 = !{!"", !7, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !10, i64 32, !10, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !22, i64 128, !22, i64 132}
!54 = !{!53, !7, i64 48}
!55 = !{i32 0, i32 12}
!56 = !{!25, !25, i64 0}
