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
define dso_local noundef i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !prof !58 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !59
  %7 = icmp eq i64 %6, ptrtoint (ptr @lzma_stream_decoder_init to i64)
  br i1 %7, label %9, label %8, !prof !65

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef nonnull %0, ptr noundef %1) #6
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %5, align 8, !tbaa !59
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %47, label %11, !prof !65

11:                                               ; preds = %9
  %12 = icmp ult i32 %3, 16
  br i1 %12, label %13, label %47, !prof !66

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !67
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29, !prof !66

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 1400, ptr noundef %1) #6
  store ptr %17, ptr %0, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %47, label %19, !prof !65

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @stream_decode, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @stream_decoder_end, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  store ptr @stream_decoder_get_check, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @stream_decoder_memconfig, ptr %23, align 8, !tbaa !71
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa.struct !72
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1, i32 1
  store i64 -1, ptr %25, align 8, !tbaa.struct !75
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  %27 = load ptr, ptr %0, align 8, !tbaa !67
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !76
  br label %29

29:                                               ; preds = %19, %13
  %30 = phi ptr [ %27, %19 ], [ %14, %13 ]
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 5
  store i64 %2, ptr %31, align 8, !tbaa !82
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 6
  store i64 32768, ptr %32, align 8, !tbaa !83
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 7
  %34 = trunc i32 %3 to i8
  %35 = and i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !84
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 8
  %37 = lshr i8 %34, 1
  %38 = and i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !85
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 9
  %40 = lshr i8 %34, 2
  %41 = and i8 %40, 1
  store i8 %41, ptr %39, align 2, !tbaa !86
  %42 = icmp ugt i32 %3, 7
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 10
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1, !tbaa !87
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 11
  store i8 1, ptr %45, align 4, !tbaa !88
  %46 = tail call fastcc i32 @stream_decoder_reset(ptr noundef nonnull %30, ptr noundef %1) #7, !range !89
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
define internal i32 @stream_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #0 !prof !90 !PGOFuncName !91 {
  %10 = alloca [5 x %struct.lzma_filter], align 16
  %11 = alloca %struct.lzma_stream_flags, align 8
  %12 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %13 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %14 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %186, %9
  %16 = load i32, ptr %0, align 8, !tbaa !92
  switch i32 %16, label %187 [
    i32 0, label %17
    i32 1, label %49
    i32 2, label %103
    i32 3, label %118
    i32 4, label %127
    i32 5, label %156
  ], !prof !93

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %19 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %18, ptr noundef nonnull %12, i64 noundef 12) #6
  %20 = load i64, ptr %12, align 8, !tbaa !94
  %21 = icmp ult i64 %20, 12
  br i1 %21, label %187, label %22, !prof !65

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i64 0, ptr %12, align 8, !tbaa !94
  %24 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %23, ptr noundef nonnull %18) #6
  switch i32 %24, label %187 [
    i32 0, label %29
    i32 7, label %25
  ], !prof !95

25:                                               ; preds = %22
  %26 = load i8, ptr %13, align 4, !tbaa !88, !range !96, !noundef !97
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 9, i32 7
  br label %187

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  store i8 0, ptr %13, align 4, !tbaa !88
  %33 = load i32, ptr %30, align 8, !tbaa !98
  store i32 %33, ptr %31, align 8, !tbaa !99
  store i32 1, ptr %0, align 8, !tbaa !92
  %34 = load i8, ptr %32, align 8, !tbaa !84, !range !96, !noundef !97
  %35 = icmp ne i8 %34, 0
  %36 = icmp eq i32 %33, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %187, label %38, !prof !100

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %40 = load i8, ptr %39, align 1, !tbaa !85, !range !96, !noundef !97
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42, !prof !65

42:                                               ; preds = %38
  %43 = call zeroext i8 @lzma_check_is_supported(i32 noundef %33) #6
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %187, label %45, !prof !65

45:                                               ; preds = %38, %42
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %47 = load i8, ptr %46, align 2, !tbaa !86, !range !96, !noundef !97
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %187

49:                                               ; preds = %45, %15
  %50 = load i64, ptr %3, align 8, !tbaa !74
  %51 = icmp ult i64 %50, %4
  br i1 %51, label %52, label %187, !prof !101

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %54 = load i64, ptr %12, align 8, !tbaa !94
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %58, label %56, !prof !101

56:                                               ; preds = %52
  %57 = load i32, ptr %53, align 4, !tbaa !102
  br label %66

58:                                               ; preds = %52
  %59 = getelementptr inbounds i8, ptr %2, i64 %50
  %60 = load i8, ptr %59, align 1, !tbaa !103
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %184, label %62, !prof !104

62:                                               ; preds = %58
  %63 = zext i8 %60 to i32
  %64 = shl nuw nsw i32 %63, 2
  %65 = add nuw nsw i32 %64, 4
  store i32 %65, ptr %53, align 4, !tbaa !102
  br label %66

66:                                               ; preds = %56, %62
  %67 = phi i32 [ %57, %56 ], [ %65, %62 ]
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %69 = zext i32 %67 to i64
  %70 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %68, ptr noundef nonnull %12, i64 noundef %69) #6
  %71 = load i64, ptr %12, align 8, !tbaa !94
  %72 = load i32, ptr %53, align 4, !tbaa !102
  %73 = zext i32 %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %187, label %75, !prof !65

75:                                               ; preds = %66
  %76 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %77 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  store i64 0, ptr %12, align 8, !tbaa !94
  store i32 0, ptr %76, align 8, !tbaa !105
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #8
  store ptr %10, ptr %77, align 8, !tbaa !106
  %78 = call i32 @lzma_block_header_decode(ptr noundef nonnull %76, ptr noundef %1, ptr noundef nonnull %68) #6
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  %81 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %10) #6
  %82 = icmp eq i64 %81, -1
  br i1 %82, label %90, label %83, !prof !65

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %85 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i64 %81, ptr %84, align 8, !tbaa !83
  %86 = load i64, ptr %85, align 8, !tbaa !82
  %87 = icmp ugt i64 %81, %86
  br i1 %87, label %90, label %88, !prof !65

88:                                               ; preds = %83
  %89 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %76) #6
  br label %90

90:                                               ; preds = %83, %80, %88
  %91 = phi i32 [ %89, %88 ], [ 8, %80 ], [ 6, %83 ]
  br label %94

92:                                               ; preds = %94
  store ptr null, ptr %77, align 8, !tbaa !106
  %93 = icmp eq i32 %91, 0
  br i1 %93, label %102, label %100, !prof !66

94:                                               ; preds = %90, %94
  %95 = phi i64 [ 0, %90 ], [ %98, %94 ]
  %96 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %10, i64 0, i64 %95, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !107
  call void @lzma_free(ptr noundef %97, ptr noundef %1) #6
  %98 = add nuw nsw i64 %95, 1
  %99 = icmp eq i64 %98, 4
  br i1 %99, label %92, label %94, !prof !109, !llvm.loop !110

100:                                              ; preds = %75, %92
  %101 = phi i32 [ %91, %92 ], [ %78, %75 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #8
  br label %187

102:                                              ; preds = %92
  store i32 2, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #8
  br label %103

103:                                              ; preds = %102, %15
  %104 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %105 = load ptr, ptr %104, align 8, !tbaa !112
  %106 = load ptr, ptr %14, align 8, !tbaa !113
  %107 = call i32 %105(ptr noundef %106, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #6
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %187, !prof !114

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %111 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %112 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  %113 = load ptr, ptr %110, align 8, !tbaa !76
  %114 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %111) #6
  %115 = load i64, ptr %112, align 8, !tbaa !115
  %116 = call i32 @lzma_index_hash_append(ptr noundef %113, i64 noundef %114, i64 noundef %115) #6
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %184, label %187

118:                                              ; preds = %15
  %119 = load i64, ptr %3, align 8, !tbaa !74
  %120 = icmp ult i64 %119, %4
  br i1 %120, label %121, label %187, !prof !66

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %123 = load ptr, ptr %122, align 8, !tbaa !76
  %124 = call i32 @lzma_index_hash_decode(ptr noundef %123, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #6
  %125 = icmp eq i32 %124, 1
  br i1 %125, label %126, label %187, !prof !66

126:                                              ; preds = %121
  store i32 4, ptr %0, align 8, !tbaa !92
  br label %127

127:                                              ; preds = %126, %15
  %128 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %129 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %128, ptr noundef nonnull %12, i64 noundef 12) #6
  %130 = load i64, ptr %12, align 8, !tbaa !94
  %131 = icmp ult i64 %130, 12
  br i1 %131, label %187, label %132, !prof !65

132:                                              ; preds = %127
  store i64 0, ptr %12, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #8
  %133 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %11, ptr noundef nonnull %128) #6
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %138, label %135, !prof !66

135:                                              ; preds = %132
  %136 = icmp eq i32 %133, 7
  %137 = select i1 %136, i32 9, i32 %133
  br label %153

138:                                              ; preds = %132
  %139 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %140 = getelementptr inbounds %struct.lzma_stream_flags, ptr %11, i64 0, i32 1
  %141 = load ptr, ptr %139, align 8, !tbaa !76
  %142 = call i64 @lzma_index_hash_size(ptr noundef %141) #6
  %143 = load i64, ptr %140, align 8, !tbaa !116
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %153, !prof !66

145:                                              ; preds = %138
  %146 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %147 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %146, ptr noundef nonnull %11) #6
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %151 = load i8, ptr %150, align 1, !tbaa !87, !range !96, !noundef !97
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %155, !prof !65

153:                                              ; preds = %145, %138, %149, %135
  %154 = phi i32 [ %137, %135 ], [ %147, %145 ], [ 9, %138 ], [ 1, %149 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  br label %187

155:                                              ; preds = %149
  store i32 5, ptr %0, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #8
  br label %156

156:                                              ; preds = %155, %15
  %157 = load i64, ptr %3, align 8, !tbaa !74
  %158 = icmp ult i64 %157, %4
  br i1 %158, label %165, label %159, !prof !117

159:                                              ; preds = %156, %170
  %160 = icmp eq i32 %8, 3
  br i1 %160, label %161, label %187, !prof !66

161:                                              ; preds = %159
  %162 = load i64, ptr %12, align 8, !tbaa !94
  %163 = icmp eq i64 %162, 0
  %164 = select i1 %163, i32 1, i32 9
  br label %187

165:                                              ; preds = %156, %170
  %166 = phi i64 [ %171, %170 ], [ %157, %156 ]
  %167 = getelementptr inbounds i8, ptr %2, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !103
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %165
  %171 = add i64 %166, 1
  store i64 %171, ptr %3, align 8, !tbaa !74
  %172 = load i64, ptr %12, align 8, !tbaa !94
  %173 = add i64 %172, 1
  %174 = and i64 %173, 3
  store i64 %174, ptr %12, align 8, !tbaa !94
  %175 = icmp eq i64 %171, %4
  br i1 %175, label %159, label %165, !prof !118

176:                                              ; preds = %165
  %177 = load i64, ptr %12, align 8, !tbaa !94
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %176
  %180 = add nuw i64 %166, 1
  store i64 %180, ptr %3, align 8, !tbaa !74
  br label %187

181:                                              ; preds = %176
  %182 = call fastcc i32 @stream_decoder_reset(ptr noundef nonnull %0, ptr noundef %1) #7, !range !89
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %186, label %187

184:                                              ; preds = %109, %58
  %185 = phi i32 [ 3, %58 ], [ 1, %109 ]
  store i32 %185, ptr %0, align 8, !tbaa !92
  br label %186

186:                                              ; preds = %184, %181
  br label %15

187:                                              ; preds = %29, %103, %109, %42, %121, %15, %127, %118, %66, %49, %17, %45, %181, %22, %25, %153, %100, %159, %179, %161
  %188 = phi i32 [ %164, %161 ], [ 9, %179 ], [ 0, %159 ], [ %101, %100 ], [ %154, %153 ], [ %28, %25 ], [ %24, %22 ], [ 2, %29 ], [ %116, %109 ], [ %107, %103 ], [ 3, %42 ], [ %124, %121 ], [ 11, %15 ], [ 0, %127 ], [ 0, %118 ], [ 0, %66 ], [ 0, %49 ], [ 0, %17 ], [ 4, %45 ], [ %182, %181 ]
  ret i32 %188
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @stream_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !58 !PGOFuncName !119 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #6
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !76
  tail call void @lzma_index_hash_end(ptr noundef %5, ptr noundef %1) #6
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @stream_decoder_get_check(ptr nocapture noundef readonly %0) #2 !prof !120 !PGOFuncName !121 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !98
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @stream_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #3 !prof !120 !PGOFuncName !122 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !83
  store i64 %6, ptr %1, align 8, !tbaa !74
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !82
  store i64 %8, ptr %2, align 8, !tbaa !74
  %9 = icmp eq i64 %3, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %5, align 8, !tbaa !83
  %12 = icmp ugt i64 %11, %3
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i64 %3, ptr %7, align 8, !tbaa !82
  br label %14

14:                                               ; preds = %4, %13, %10
  %15 = phi i32 [ 6, %10 ], [ 0, %13 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @stream_decoder_reset(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !58 !PGOFuncName !123 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !76
  %5 = tail call ptr @lzma_index_hash_init(ptr noundef %4, ptr noundef %1) #6
  store ptr %5, ptr %3, align 8, !tbaa !76
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7, !prof !65

7:                                                ; preds = %2
  store i32 0, ptr %0, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  store i64 0, ptr %8, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ 0, %7 ], [ 5, %2 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @lzma_stream_decoder(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !58 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !124
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = tail call i32 @lzma_stream_decoder_init(ptr noundef %8, ptr noundef %10, i64 noundef %1, i32 noundef %2) #7, !range !127
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !66

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef nonnull %0) #6
  br label %18

14:                                               ; preds = %6
  %15 = load ptr, ptr %7, align 8, !tbaa !124
  %16 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3
  store i8 1, ptr %16, align 8, !tbaa !128
  %17 = getelementptr inbounds %struct.lzma_internal_s, ptr %15, i64 0, i32 3, i64 3
  store i8 1, ptr %17, align 1, !tbaa !128
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

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!57}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !{ptr @lzma_stream_decoder_init, ptr @lzma_next_end, i64 2}
!36 = !{ptr @lzma_stream_decoder_init, ptr @lzma_alloc, i64 1}
!37 = !{ptr @lzma_stream_decoder_init, ptr @stream_decoder_reset, i64 1}
!38 = !{ptr @stream_decode, ptr @lzma_bufcpy, i64 8}
!39 = !{ptr @stream_decode, ptr @lzma_stream_header_decode, i64 2}
!40 = !{ptr @stream_decode, ptr @lzma_check_is_supported, i64 1}
!41 = !{ptr @stream_decode, ptr @lzma_block_header_decode, i64 2}
!42 = !{ptr @stream_decode, ptr @lzma_raw_decoder_memusage, i64 1}
!43 = !{ptr @stream_decode, ptr @lzma_block_decoder_init, i64 1}
!44 = !{ptr @stream_decode, ptr @lzma_free, i64 4}
!45 = !{ptr @stream_decode, ptr @lzma_block_unpadded_size, i64 3}
!46 = !{ptr @stream_decode, ptr @lzma_index_hash_append, i64 3}
!47 = !{ptr @stream_decode, ptr @lzma_index_hash_decode, i64 2}
!48 = !{ptr @stream_decode, ptr @lzma_stream_footer_decode, i64 2}
!49 = !{ptr @stream_decode, ptr @lzma_index_hash_size, i64 2}
!50 = !{ptr @stream_decode, ptr @lzma_stream_flags_compare, i64 1}
!51 = !{ptr @stream_decoder_end, ptr @lzma_next_end, i64 2}
!52 = !{ptr @stream_decoder_end, ptr @lzma_index_hash_end, i64 2}
!53 = !{ptr @stream_decoder_end, ptr @lzma_free, i64 2}
!54 = !{ptr @stream_decoder_reset, ptr @lzma_index_hash_init, i64 2}
!55 = !{ptr @lzma_stream_decoder, ptr @lzma_strm_init, i64 2}
!56 = !{ptr @lzma_stream_decoder, ptr @lzma_stream_decoder_init, i64 1}
!57 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!58 = !{!"function_entry_count", i64 2}
!59 = !{!60, !64, i64 16}
!60 = !{!"lzma_next_coder_s", !61, i64 0, !64, i64 8, !64, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56}
!61 = !{!"any pointer", !62, i64 0}
!62 = !{!"omnipotent char", !63, i64 0}
!63 = !{!"Simple C/C++ TBAA"}
!64 = !{!"long", !62, i64 0}
!65 = !{!"branch_weights", i32 1, i32 3}
!66 = !{!"branch_weights", i32 3, i32 1}
!67 = !{!60, !61, i64 0}
!68 = !{!60, !61, i64 24}
!69 = !{!60, !61, i64 32}
!70 = !{!60, !61, i64 40}
!71 = !{!60, !61, i64 48}
!72 = !{i64 0, i64 8, !73, i64 8, i64 8, !74, i64 16, i64 8, !74, i64 24, i64 8, !73, i64 32, i64 8, !73, i64 40, i64 8, !73, i64 48, i64 8, !73, i64 56, i64 8, !73}
!73 = !{!61, !61, i64 0}
!74 = !{!64, !64, i64 0}
!75 = !{i64 0, i64 8, !74, i64 8, i64 8, !74, i64 16, i64 8, !73, i64 24, i64 8, !73, i64 32, i64 8, !73, i64 40, i64 8, !73, i64 48, i64 8, !73}
!76 = !{!77, !61, i64 336}
!77 = !{!"lzma_coder_s", !78, i64 0, !60, i64 8, !79, i64 72, !80, i64 280, !61, i64 336, !64, i64 344, !64, i64 352, !81, i64 360, !81, i64 361, !81, i64 362, !81, i64 363, !81, i64 364, !64, i64 368, !62, i64 376}
!78 = !{!"int", !62, i64 0}
!79 = !{!"", !78, i64 0, !78, i64 4, !78, i64 8, !64, i64 16, !64, i64 24, !61, i64 32, !62, i64 40, !61, i64 104, !61, i64 112, !61, i64 120, !78, i64 128, !78, i64 132, !64, i64 136, !64, i64 144, !64, i64 152, !64, i64 160, !64, i64 168, !64, i64 176, !78, i64 184, !78, i64 188, !78, i64 192, !78, i64 196, !62, i64 200, !62, i64 201, !62, i64 202, !62, i64 203, !62, i64 204, !62, i64 205, !62, i64 206, !62, i64 207}
!80 = !{!"", !78, i64 0, !64, i64 8, !78, i64 16, !78, i64 20, !78, i64 24, !78, i64 28, !78, i64 32, !62, i64 36, !62, i64 37, !62, i64 38, !62, i64 39, !62, i64 40, !62, i64 41, !62, i64 42, !62, i64 43, !78, i64 44, !78, i64 48}
!81 = !{!"_Bool", !62, i64 0}
!82 = !{!77, !64, i64 344}
!83 = !{!77, !64, i64 352}
!84 = !{!77, !81, i64 360}
!85 = !{!77, !81, i64 361}
!86 = !{!77, !81, i64 362}
!87 = !{!77, !81, i64 363}
!88 = !{!77, !81, i64 364}
!89 = !{i32 0, i32 6}
!90 = !{!"function_entry_count", i64 44547}
!91 = !{!"stream_decoder.c:stream_decode"}
!92 = !{!77, !78, i64 0}
!93 = !{!"branch_weights", i32 1, i32 3, i32 3, i32 44546, i32 3, i32 1, i32 1}
!94 = !{!77, !64, i64 368}
!95 = !{!"branch_weights", i32 1, i32 6, i32 1}
!96 = !{i8 0, i8 2}
!97 = !{}
!98 = !{!77, !78, i64 296}
!99 = !{!77, !78, i64 80}
!100 = !{!"branch_weights", i32 1, i32 7}
!101 = !{!"branch_weights", i32 5, i32 1}
!102 = !{!77, !78, i64 76}
!103 = !{!62, !62, i64 0}
!104 = !{!"branch_weights", i32 3, i32 3}
!105 = !{!77, !78, i64 72}
!106 = !{!77, !61, i64 104}
!107 = !{!108, !61, i64 8}
!108 = !{!"", !64, i64 0, !61, i64 8}
!109 = !{!"branch_weights", i32 3, i32 6}
!110 = distinct !{!110, !111}
!111 = !{!"llvm.loop.mustprogress"}
!112 = !{!77, !61, i64 32}
!113 = !{!77, !61, i64 8}
!114 = !{!"branch_weights", i32 3, i32 44546}
!115 = !{!77, !64, i64 96}
!116 = !{!80, !64, i64 8}
!117 = !{!"branch_weights", i32 1, i32 2}
!118 = !{!"branch_weights", i32 1, i32 0}
!119 = !{!"stream_decoder.c:stream_decoder_end"}
!120 = !{!"function_entry_count", i64 0}
!121 = !{!"stream_decoder.c:stream_decoder_get_check"}
!122 = !{!"stream_decoder.c:stream_decoder_memconfig"}
!123 = !{!"stream_decoder.c:stream_decoder_reset"}
!124 = !{!125, !61, i64 56}
!125 = !{!"", !61, i64 0, !64, i64 8, !64, i64 16, !61, i64 24, !64, i64 32, !64, i64 40, !61, i64 48, !61, i64 56, !61, i64 64, !61, i64 72, !61, i64 80, !61, i64 88, !64, i64 96, !64, i64 104, !64, i64 112, !64, i64 120, !78, i64 128, !78, i64 132}
!126 = !{!125, !61, i64 48}
!127 = !{i32 0, i32 12}
!128 = !{!81, !81, i64 0}
