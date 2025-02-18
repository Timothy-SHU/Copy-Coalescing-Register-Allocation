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

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @lzma_stream_decoder_init(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !prof !57 {
  %5 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !58
  %7 = icmp eq i64 %6, ptrtoint (ptr @lzma_stream_decoder_init to i64)
  br i1 %7, label %9, label %8, !prof !64

8:                                                ; preds = %4
  tail call void @lzma_next_end(ptr noundef %0, ptr noundef %1) #7
  br label %9

9:                                                ; preds = %8, %4
  store i64 ptrtoint (ptr @lzma_stream_decoder_init to i64), ptr %5, align 8, !tbaa !58
  %10 = icmp eq i64 %2, 0
  br i1 %10, label %52, label %11, !prof !64

11:                                               ; preds = %9
  %12 = icmp ult i32 %3, 16
  br i1 %12, label %13, label %52, !prof !65

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !66
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %29, !prof !65

16:                                               ; preds = %13
  %17 = tail call ptr @lzma_alloc(i64 noundef 1400, ptr noundef %1) #7
  store ptr %17, ptr %0, align 8, !tbaa !66
  %18 = icmp eq ptr %17, null
  br i1 %18, label %52, label %19, !prof !64

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 3
  store ptr @stream_decode, ptr %20, align 8, !tbaa !67
  %21 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 4
  store ptr @stream_decoder_end, ptr %21, align 8, !tbaa !68
  %22 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 5
  store ptr @stream_decoder_get_check, ptr %22, align 8, !tbaa !69
  %23 = getelementptr inbounds %struct.lzma_next_coder_s, ptr %0, i64 0, i32 6
  store ptr @stream_decoder_memconfig, ptr %23, align 8, !tbaa !70
  %24 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa.struct !71
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1, i32 1
  store i64 -1, ptr %25, align 8, !tbaa.struct !74
  %26 = getelementptr inbounds %struct.lzma_coder_s, ptr %17, i64 0, i32 1, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %26, i8 0, i64 48, i1 false)
  %27 = load ptr, ptr %0, align 8, !tbaa !66
  %28 = getelementptr inbounds %struct.lzma_coder_s, ptr %27, i64 0, i32 4
  store ptr null, ptr %28, align 8, !tbaa !75
  br label %29

29:                                               ; preds = %19, %13
  %30 = load ptr, ptr %0, align 8, !tbaa !66
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 5
  store i64 %2, ptr %31, align 8, !tbaa !81
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 6
  store i64 32768, ptr %32, align 8, !tbaa !82
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 7
  %34 = trunc i32 %3 to i8
  %35 = and i8 %34, 1
  store i8 %35, ptr %33, align 8, !tbaa !83
  %36 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 8
  %37 = lshr i8 %34, 1
  %38 = and i8 %37, 1
  store i8 %38, ptr %36, align 1, !tbaa !84
  %39 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 9
  %40 = lshr i8 %34, 2
  %41 = and i8 %40, 1
  store i8 %41, ptr %39, align 2, !tbaa !85
  %42 = icmp ugt i32 %3, 7
  %43 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 10
  %44 = zext i1 %42 to i8
  store i8 %44, ptr %43, align 1, !tbaa !86
  %45 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 11
  store i8 1, ptr %45, align 4, !tbaa !87
  %46 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !75
  %48 = tail call ptr @lzma_index_hash_init(ptr noundef %47, ptr noundef %1) #7
  store ptr %48, ptr %46, align 8, !tbaa !75
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !64

50:                                               ; preds = %29
  store i32 0, ptr %30, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.lzma_coder_s, ptr %30, i64 0, i32 12
  store i64 0, ptr %51, align 8, !tbaa !89
  br label %52

52:                                               ; preds = %50, %29, %16, %11, %9
  %53 = phi i32 [ 11, %9 ], [ 8, %11 ], [ 5, %16 ], [ 0, %50 ], [ 5, %29 ]
  ret i32 %53
}

declare void @lzma_next_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_alloc(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @stream_decode(ptr noundef %0, ptr noundef %1, ptr noalias noundef %2, ptr noalias noundef %3, i64 noundef %4, ptr noalias noundef %5, ptr noalias noundef %6, i64 noundef %7, i32 noundef %8) #2 !prof !90 !PGOFuncName !91 {
  %10 = alloca [5 x %struct.lzma_filter], align 16
  %11 = alloca %struct.lzma_stream_flags, align 8
  br label %12

12:                                               ; preds = %216, %9
  %13 = phi i32 [ undef, %9 ], [ %217, %216 ]
  %14 = load i32, ptr %0, align 8, !tbaa !88
  switch i32 %14, label %218 [
    i32 0, label %15
    i32 1, label %54
    i32 2, label %113
    i32 3, label %135
    i32 4, label %146
    i32 5, label %179
  ], !prof !92

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %18 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef 12) #7
  %19 = load i64, ptr %17, align 8, !tbaa !89
  %20 = icmp ult i64 %19, 12
  br i1 %20, label %218, label %21, !prof !64

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  store i64 0, ptr %17, align 8, !tbaa !89
  %23 = call i32 @lzma_stream_header_decode(ptr noundef nonnull %22, ptr noundef nonnull %16) #7
  switch i32 %23, label %28 [
    i32 0, label %29
    i32 7, label %24
  ], !prof !93

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %26 = load i8, ptr %25, align 4, !tbaa !87, !range !94, !noundef !95
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %51, label %28

28:                                               ; preds = %21, %24
  br label %51

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 11
  %31 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %32 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 2
  %33 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 7
  store i8 0, ptr %30, align 4, !tbaa !87
  %34 = load i32, ptr %31, align 8, !tbaa !96
  store i32 %34, ptr %32, align 8, !tbaa !97
  store i32 1, ptr %0, align 8, !tbaa !88
  %35 = load i8, ptr %33, align 8, !tbaa !83, !range !94, !noundef !95
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %39, label %37, !prof !65

37:                                               ; preds = %29
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %37, %29
  %40 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 8
  %41 = load i8, ptr %40, align 1, !tbaa !84, !range !94, !noundef !95
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %46, label %43, !prof !64

43:                                               ; preds = %39
  %44 = call zeroext i8 @lzma_check_is_supported(i32 noundef %34) #7
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %51, label %46, !prof !64

46:                                               ; preds = %43, %39
  %47 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 9
  %48 = load i8, ptr %47, align 2, !tbaa !85, !range !94, !noundef !95
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 %13, i32 4, !prof !65
  br label %51

51:                                               ; preds = %43, %46, %37, %28, %24
  %52 = phi i1 [ false, %24 ], [ false, %28 ], [ false, %37 ], [ %49, %46 ], [ false, %43 ]
  %53 = phi i32 [ 9, %24 ], [ %23, %28 ], [ 2, %37 ], [ %50, %46 ], [ 3, %43 ]
  br i1 %52, label %54, label %218, !prof !65

54:                                               ; preds = %51, %12
  %55 = phi i32 [ %13, %12 ], [ %53, %51 ]
  %56 = load i64, ptr %3, align 8, !tbaa !73
  %57 = icmp ult i64 %56, %4
  br i1 %57, label %58, label %218, !prof !98

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %60 = load i64, ptr %59, align 8, !tbaa !89
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72, !prof !98

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %2, i64 %56
  %64 = load i8, ptr %63, align 1, !tbaa !99
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67, !prof !100

66:                                               ; preds = %62
  store i32 3, ptr %0, align 8, !tbaa !88
  br label %216

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %69 = zext i8 %64 to i32
  %70 = shl nuw nsw i32 %69, 2
  %71 = add nuw nsw i32 %70, 4
  store i32 %71, ptr %68, align 4, !tbaa !101
  br label %72

72:                                               ; preds = %67, %58
  %73 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %74 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !101
  %76 = zext i32 %75 to i64
  %77 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef nonnull %73, ptr noundef nonnull %59, i64 noundef %76) #7
  %78 = load i64, ptr %59, align 8, !tbaa !89
  %79 = load i32, ptr %74, align 4, !tbaa !101
  %80 = zext i32 %79 to i64
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %218, label %82, !prof !64

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %84 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 5
  store i64 0, ptr %59, align 8, !tbaa !89
  store i32 0, ptr %83, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %10) #7
  store ptr %10, ptr %84, align 8, !tbaa !103
  %85 = call i32 @lzma_block_header_decode(ptr noundef nonnull %83, ptr noundef %1, ptr noundef nonnull %73) #7
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %86, i32 %55, i32 %85, !prof !65
  br i1 %86, label %88, label %110, !prof !65

88:                                               ; preds = %82
  %89 = call i64 @lzma_raw_decoder_memusage(ptr noundef nonnull %10) #7
  %90 = icmp eq i64 %89, -1
  br i1 %90, label %99, label %91, !prof !64

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %93 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  store i64 %89, ptr %92, align 8, !tbaa !82
  %94 = load i64, ptr %93, align 8, !tbaa !81
  %95 = icmp ugt i64 %89, %94
  br i1 %95, label %99, label %96, !prof !64

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %98 = call i32 @lzma_block_decoder_init(ptr noundef nonnull %97, ptr noundef %1, ptr noundef nonnull %83) #7
  br label %99

99:                                               ; preds = %91, %88, %96
  %100 = phi i32 [ %98, %96 ], [ 8, %88 ], [ 6, %91 ]
  br label %103

101:                                              ; preds = %103
  store ptr null, ptr %84, align 8, !tbaa !103
  %102 = icmp eq i32 %100, 0
  br i1 %102, label %109, label %110, !prof !65

103:                                              ; preds = %99, %103
  %104 = phi i64 [ 0, %99 ], [ %107, %103 ]
  %105 = getelementptr inbounds [5 x %struct.lzma_filter], ptr %10, i64 0, i64 %104, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !104
  call void @lzma_free(ptr noundef %106, ptr noundef %1) #7
  %107 = add nuw nsw i64 %104, 1
  %108 = icmp eq i64 %107, 4
  br i1 %108, label %101, label %103, !prof !106, !llvm.loop !107

109:                                              ; preds = %101
  store i32 2, ptr %0, align 8, !tbaa !88
  br label %110

110:                                              ; preds = %109, %101, %82
  %111 = phi i1 [ false, %82 ], [ true, %109 ], [ false, %101 ]
  %112 = phi i32 [ %87, %82 ], [ %87, %109 ], [ %100, %101 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %10) #7
  br i1 %111, label %113, label %218, !prof !65

113:                                              ; preds = %110, %12
  %114 = phi i32 [ %13, %12 ], [ %112, %110 ]
  %115 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  %116 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !110
  %118 = load ptr, ptr %115, align 8, !tbaa !111
  %119 = call i32 %117(ptr noundef %118, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i32 noundef %8) #7, !prof !112
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %121, label %132, !prof !113

121:                                              ; preds = %113
  %122 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %123 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2
  %124 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 2, i32 4
  %125 = load ptr, ptr %122, align 8, !tbaa !75
  %126 = call i64 @lzma_block_unpadded_size(ptr noundef nonnull %123) #7
  %127 = load i64, ptr %124, align 8, !tbaa !114
  %128 = call i32 @lzma_index_hash_append(ptr noundef %125, i64 noundef %126, i64 noundef %127) #7
  %129 = icmp eq i32 %128, 0
  %130 = select i1 %129, i32 %114, i32 %128, !prof !65
  br i1 %129, label %131, label %132, !prof !65

131:                                              ; preds = %121
  store i32 1, ptr %0, align 8, !tbaa !88
  br label %132

132:                                              ; preds = %113, %121, %131
  %133 = phi i1 [ true, %131 ], [ false, %121 ], [ false, %113 ]
  %134 = phi i32 [ %130, %131 ], [ %130, %121 ], [ %119, %113 ]
  br i1 %133, label %216, label %218, !prof !113

135:                                              ; preds = %12
  %136 = load i64, ptr %3, align 8, !tbaa !73
  %137 = icmp ult i64 %136, %4
  br i1 %137, label %138, label %218, !prof !65

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !75
  %141 = call i32 @lzma_index_hash_decode(ptr noundef %140, ptr noundef %2, ptr noundef nonnull %3, i64 noundef %4) #7
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %144, !prof !65

143:                                              ; preds = %138
  store i32 4, ptr %0, align 8, !tbaa !88
  br label %144

144:                                              ; preds = %138, %143
  %145 = phi i32 [ %13, %143 ], [ %141, %138 ]
  br i1 %142, label %146, label %218, !prof !65

146:                                              ; preds = %144, %12
  %147 = phi i32 [ %13, %12 ], [ %145, %144 ]
  %148 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 13
  %149 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %150 = call i64 @lzma_bufcpy(ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %148, ptr noundef nonnull %149, i64 noundef 12) #7
  %151 = load i64, ptr %149, align 8, !tbaa !89
  %152 = icmp ult i64 %151, 12
  br i1 %152, label %218, label %153, !prof !64

153:                                              ; preds = %146
  store i64 0, ptr %149, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #7
  %154 = call i32 @lzma_stream_footer_decode(ptr noundef nonnull %11, ptr noundef nonnull %148) #7
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156, !prof !65

156:                                              ; preds = %153
  %157 = icmp eq i32 %154, 7
  %158 = select i1 %157, i32 9, i32 %154
  br label %176

159:                                              ; preds = %153
  %160 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %161 = getelementptr inbounds %struct.lzma_stream_flags, ptr %11, i64 0, i32 1
  %162 = load ptr, ptr %160, align 8, !tbaa !75
  %163 = call i64 @lzma_index_hash_size(ptr noundef %162) #7
  %164 = load i64, ptr %161, align 8, !tbaa !115
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %176, !prof !65

166:                                              ; preds = %159
  %167 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3
  %168 = call i32 @lzma_stream_flags_compare(ptr noundef nonnull %167, ptr noundef nonnull %11) #7
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, i32 %147, i32 %168, !prof !65
  br i1 %169, label %171, label %176, !prof !65

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 10
  %173 = load i8, ptr %172, align 1, !tbaa !86, !range !94, !noundef !95
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %176, label %175, !prof !64

175:                                              ; preds = %171
  store i32 5, ptr %0, align 8, !tbaa !88
  br label %176

176:                                              ; preds = %171, %159, %166, %175, %156
  %177 = phi i1 [ false, %156 ], [ true, %175 ], [ false, %166 ], [ false, %159 ], [ false, %171 ]
  %178 = phi i32 [ %158, %156 ], [ %170, %175 ], [ %170, %166 ], [ 9, %159 ], [ 1, %171 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #7
  br i1 %177, label %179, label %218, !prof !65

179:                                              ; preds = %176, %12
  %180 = phi i32 [ %13, %12 ], [ %178, %176 ]
  %181 = load i64, ptr %3, align 8, !tbaa !73
  %182 = icmp ult i64 %181, %4
  br i1 %182, label %190, label %183, !prof !116

183:                                              ; preds = %179, %195
  %184 = icmp eq i32 %8, 3
  br i1 %184, label %185, label %218, !prof !65

185:                                              ; preds = %183
  %186 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %187 = load i64, ptr %186, align 8, !tbaa !89
  %188 = icmp eq i64 %187, 0
  %189 = select i1 %188, i32 1, i32 9, !prof !65
  br label %218

190:                                              ; preds = %179, %195
  %191 = phi i64 [ %197, %195 ], [ %181, %179 ]
  %192 = getelementptr inbounds i8, ptr %2, i64 %191
  %193 = load i8, ptr %192, align 1, !tbaa !99
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %197 = add nuw i64 %191, 1
  store i64 %197, ptr %3, align 8, !tbaa !73
  %198 = load i64, ptr %196, align 8, !tbaa !89
  %199 = add i64 %198, 1
  %200 = and i64 %199, 3
  store i64 %200, ptr %196, align 8, !tbaa !89
  %201 = icmp eq i64 %197, %4
  br i1 %201, label %183, label %190, !prof !117, !llvm.loop !118

202:                                              ; preds = %190
  %203 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 12
  %204 = load i64, ptr %203, align 8, !tbaa !89
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = add i64 %191, 1
  store i64 %207, ptr %3, align 8, !tbaa !73
  br label %218

208:                                              ; preds = %202
  %209 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !75
  %211 = call ptr @lzma_index_hash_init(ptr noundef %210, ptr noundef %1) #7
  store ptr %211, ptr %209, align 8, !tbaa !75
  %212 = icmp eq ptr %211, null
  br i1 %212, label %214, label %213

213:                                              ; preds = %208
  store i32 0, ptr %0, align 8, !tbaa !88
  store i64 0, ptr %203, align 8, !tbaa !89
  br label %214

214:                                              ; preds = %208, %213
  %215 = phi i32 [ %180, %213 ], [ 5, %208 ]
  br i1 %212, label %218, label %216

216:                                              ; preds = %214, %132, %66
  %217 = phi i32 [ %215, %214 ], [ %134, %132 ], [ %55, %66 ]
  br label %12, !llvm.loop !119

218:                                              ; preds = %214, %176, %146, %144, %110, %54, %51, %12, %135, %72, %15, %132, %183, %206, %185
  %219 = phi i32 [ %189, %185 ], [ 9, %206 ], [ 0, %183 ], [ %134, %132 ], [ 0, %15 ], [ 0, %72 ], [ 0, %135 ], [ 11, %12 ], [ %53, %51 ], [ 0, %54 ], [ %112, %110 ], [ %145, %144 ], [ 0, %146 ], [ %178, %176 ], [ %215, %214 ]
  ret i32 %219
}

; Function Attrs: cold nounwind uwtable
define internal void @stream_decoder_end(ptr noundef %0, ptr noundef %1) #0 !prof !57 !PGOFuncName !120 {
  %3 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 1
  tail call void @lzma_next_end(ptr noundef nonnull %3, ptr noundef %1) #7
  %4 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !75
  tail call void @lzma_index_hash_end(ptr noundef %5, ptr noundef %1) #7
  tail call void @lzma_free(ptr noundef %0, ptr noundef %1) #7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @stream_decoder_get_check(ptr nocapture noundef readonly %0) #3 !prof !121 {
  %2 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 3, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !96
  ret i32 %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @stream_decoder_memconfig(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, i64 noundef %3) #4 !prof !121 {
  %5 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !82
  store i64 %6, ptr %1, align 8, !tbaa !73
  %7 = getelementptr inbounds %struct.lzma_coder_s, ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !81
  store i64 %8, ptr %2, align 8, !tbaa !73
  %9 = icmp eq i64 %3, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %5, align 8, !tbaa !82
  %12 = icmp ugt i64 %11, %3
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i64 %3, ptr %7, align 8, !tbaa !81
  br label %14

14:                                               ; preds = %4, %13, %10
  %15 = phi i32 [ 6, %10 ], [ 0, %13 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: cold nounwind uwtable
define dso_local i32 @lzma_stream_decoder(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !57 {
  %4 = tail call i32 @lzma_strm_init(ptr noundef %0) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %20, !prof !65

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !122
  %9 = getelementptr inbounds %struct.lzma_stream, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = tail call i32 @lzma_stream_decoder_init(ptr noundef %8, ptr noundef %10, i64 noundef %1, i32 noundef %2), !range !125
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13, !prof !65

13:                                               ; preds = %6
  tail call void @lzma_end(ptr noundef %0) #7
  br label %14

14:                                               ; preds = %6, %13
  %15 = phi i32 [ %11, %13 ], [ %4, %6 ]
  br i1 %12, label %16, label %20, !prof !65

16:                                               ; preds = %14
  %17 = load ptr, ptr %7, align 8, !tbaa !122
  %18 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3
  store i8 1, ptr %18, align 8, !tbaa !126
  %19 = getelementptr inbounds %struct.lzma_internal_s, ptr %17, i64 0, i32 3, i64 3
  store i8 1, ptr %19, align 1, !tbaa !126
  br label %20

20:                                               ; preds = %3, %14, %16
  %21 = phi i32 [ %4, %3 ], [ %15, %14 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare i32 @lzma_strm_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

declare void @lzma_end(ptr noundef) local_unnamed_addr #1

declare i64 @lzma_bufcpy(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_stream_header_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i8 @lzma_check_is_supported(i32 noundef) local_unnamed_addr #1

declare i32 @lzma_block_header_decode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_raw_decoder_memusage(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_block_decoder_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_free(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_hash_append(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @lzma_block_unpadded_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_index_hash_decode(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lzma_stream_footer_decode(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @lzma_index_hash_size(ptr noundef) local_unnamed_addr #1

declare i32 @lzma_stream_flags_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @lzma_index_hash_end(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @lzma_index_hash_init(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }

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
!35 = !{ptr @lzma_stream_decoder_init, ptr @lzma_next_end, i64 2}
!36 = !{ptr @lzma_stream_decoder_init, ptr @lzma_alloc, i64 2}
!37 = !{ptr @lzma_stream_decoder_init, ptr @lzma_index_hash_init, i64 2}
!38 = !{ptr @stream_decode, ptr @lzma_bufcpy, i64 6}
!39 = !{ptr @stream_decode, ptr @lzma_stream_header_decode, i64 2}
!40 = !{ptr @stream_decode, ptr @lzma_check_is_supported, i64 2}
!41 = !{ptr @stream_decode, ptr @lzma_block_header_decode, i64 2}
!42 = !{ptr @stream_decode, ptr @lzma_raw_decoder_memusage, i64 2}
!43 = !{ptr @stream_decode, ptr @lzma_block_decoder_init, i64 2}
!44 = !{ptr @stream_decode, ptr @lzma_free, i64 8}
!45 = !{ptr @stream_decode, ptr @lzma_block_unpadded_size, i64 2}
!46 = !{ptr @stream_decode, ptr @lzma_index_hash_append, i64 2}
!47 = !{ptr @stream_decode, ptr @lzma_index_hash_decode, i64 2}
!48 = !{ptr @stream_decode, ptr @lzma_stream_footer_decode, i64 2}
!49 = !{ptr @stream_decode, ptr @lzma_index_hash_size, i64 2}
!50 = !{ptr @stream_decode, ptr @lzma_stream_flags_compare, i64 2}
!51 = !{ptr @stream_decoder_end, ptr @lzma_next_end, i64 2}
!52 = !{ptr @stream_decoder_end, ptr @lzma_index_hash_end, i64 2}
!53 = !{ptr @stream_decoder_end, ptr @lzma_free, i64 2}
!54 = !{ptr @lzma_stream_decoder, ptr @lzma_strm_init, i64 2}
!55 = !{ptr @lzma_stream_decoder, ptr @lzma_stream_decoder_init, i64 2}
!56 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!57 = !{!"function_entry_count", i64 2}
!58 = !{!59, !63, i64 16}
!59 = !{!"lzma_next_coder_s", !60, i64 0, !63, i64 8, !63, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56}
!60 = !{!"any pointer", !61, i64 0}
!61 = !{!"omnipotent char", !62, i64 0}
!62 = !{!"Simple C/C++ TBAA"}
!63 = !{!"long", !61, i64 0}
!64 = !{!"branch_weights", i32 0, i32 2}
!65 = !{!"branch_weights", i32 2, i32 0}
!66 = !{!59, !60, i64 0}
!67 = !{!59, !60, i64 24}
!68 = !{!59, !60, i64 32}
!69 = !{!59, !60, i64 40}
!70 = !{!59, !60, i64 48}
!71 = !{i64 0, i64 8, !72, i64 8, i64 8, !73, i64 16, i64 8, !73, i64 24, i64 8, !72, i64 32, i64 8, !72, i64 40, i64 8, !72, i64 48, i64 8, !72, i64 56, i64 8, !72}
!72 = !{!60, !60, i64 0}
!73 = !{!63, !63, i64 0}
!74 = !{i64 0, i64 8, !73, i64 8, i64 8, !73, i64 16, i64 8, !72, i64 24, i64 8, !72, i64 32, i64 8, !72, i64 40, i64 8, !72, i64 48, i64 8, !72}
!75 = !{!76, !60, i64 336}
!76 = !{!"lzma_coder_s", !77, i64 0, !59, i64 8, !78, i64 72, !79, i64 280, !60, i64 336, !63, i64 344, !63, i64 352, !80, i64 360, !80, i64 361, !80, i64 362, !80, i64 363, !80, i64 364, !63, i64 368, !61, i64 376}
!77 = !{!"int", !61, i64 0}
!78 = !{!"", !77, i64 0, !77, i64 4, !77, i64 8, !63, i64 16, !63, i64 24, !60, i64 32, !61, i64 40, !60, i64 104, !60, i64 112, !60, i64 120, !77, i64 128, !77, i64 132, !63, i64 136, !63, i64 144, !63, i64 152, !63, i64 160, !63, i64 168, !63, i64 176, !77, i64 184, !77, i64 188, !77, i64 192, !77, i64 196, !61, i64 200, !61, i64 201, !61, i64 202, !61, i64 203, !61, i64 204, !61, i64 205, !61, i64 206, !61, i64 207}
!79 = !{!"", !77, i64 0, !63, i64 8, !77, i64 16, !77, i64 20, !77, i64 24, !77, i64 28, !77, i64 32, !61, i64 36, !61, i64 37, !61, i64 38, !61, i64 39, !61, i64 40, !61, i64 41, !61, i64 42, !61, i64 43, !77, i64 44, !77, i64 48}
!80 = !{!"_Bool", !61, i64 0}
!81 = !{!76, !63, i64 344}
!82 = !{!76, !63, i64 352}
!83 = !{!76, !80, i64 360}
!84 = !{!76, !80, i64 361}
!85 = !{!76, !80, i64 362}
!86 = !{!76, !80, i64 363}
!87 = !{!76, !80, i64 364}
!88 = !{!76, !77, i64 0}
!89 = !{!76, !63, i64 368}
!90 = !{!"function_entry_count", i64 44547}
!91 = !{!"liblzma/common/stream_decoder.c;stream_decode"}
!92 = !{!"branch_weights", i32 0, i32 2, i32 2, i32 44545, i32 2, i32 0, i32 0}
!93 = !{!"branch_weights", i32 0, i32 2, i32 0}
!94 = !{i8 0, i8 2}
!95 = !{}
!96 = !{!76, !77, i64 296}
!97 = !{!76, !77, i64 80}
!98 = !{!"branch_weights", i32 4, i32 0}
!99 = !{!61, !61, i64 0}
!100 = !{!"branch_weights", i32 2, i32 2}
!101 = !{!76, !77, i64 76}
!102 = !{!76, !77, i64 72}
!103 = !{!76, !60, i64 104}
!104 = !{!105, !60, i64 8}
!105 = !{!"", !63, i64 0, !60, i64 8}
!106 = !{!"branch_weights", i32 2, i32 6}
!107 = distinct !{!107, !108, !109}
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !{!76, !60, i64 32}
!111 = !{!76, !60, i64 8}
!112 = !{!"VP", i32 0, i64 44547, i64 5319471093995883199, i64 44547}
!113 = !{!"branch_weights", i32 2, i32 44545}
!114 = !{!76, !63, i64 96}
!115 = !{!79, !63, i64 8}
!116 = !{!"branch_weights", i32 0, i32 1}
!117 = !{!"branch_weights", i32 1, i32 0}
!118 = distinct !{!118, !109}
!119 = distinct !{!119, !109}
!120 = !{!"liblzma/common/stream_decoder.c;stream_decoder_end"}
!121 = !{!"function_entry_count", i64 0}
!122 = !{!123, !60, i64 56}
!123 = !{!"", !60, i64 0, !63, i64 8, !63, i64 16, !60, i64 24, !63, i64 32, !63, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !63, i64 96, !63, i64 104, !63, i64 112, !63, i64 120, !77, i64 128, !77, i64 132}
!124 = !{!123, !60, i64 48}
!125 = !{i32 0, i32 12}
!126 = !{!80, !80, i64 0}
