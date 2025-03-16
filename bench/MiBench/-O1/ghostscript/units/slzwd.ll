; ModuleID = 'slzwd.c'
source_filename = "slzwd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.stream_LZW_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %union._lzt, i32, i32, i32, i32, i32, i32, i32, i32 }
%union._lzt = type { ptr }
%struct.lzw_decode_s = type { i8, i8, i16 }
%struct.stream_state_s = type { ptr, ptr, ptr }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }

@st_LZW_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_LZWD_template = dso_local local_unnamed_addr constant %struct.stream_template_s { ptr @st_LZW_state, ptr @s_LZWD_init, ptr @s_LZWD_process, i32 3, i32 1, ptr @s_LZW_release, ptr @s_LZW_set_defaults, ptr @s_LZWD_reset }, align 8
@st_lzw_decode = internal constant %struct.gs_memory_struct_type_s { i32 4, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [16 x i8] c"LZWDecode(init)\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"lzw_decode\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @s_LZWD_reset(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !8
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %7, align 4, !tbaa !12
  %8 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %8, align 8, !tbaa !13
  %9 = add nuw i32 %6, 2
  %10 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 11
  store i32 %9, ptr %10, align 8, !tbaa !14
  %11 = add nsw i32 %5, 1
  %12 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 12
  store i32 %11, ptr %12, align 4, !tbaa !15
  %13 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 13
  store i32 -1, ptr %13, align 8, !tbaa !16
  %14 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 15
  store i32 -1, ptr %14, align 8, !tbaa !17
  %15 = zext i32 %6 to i64
  %16 = getelementptr inbounds %struct.lzw_decode_s, ptr %3, i64 %15, i32 1
  store i8 -1, ptr %16, align 1, !tbaa !18
  %17 = add nuw i32 %6, 1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.lzw_decode_s, ptr %3, i64 %18, i32 1
  store i8 -1, ptr %19, align 1, !tbaa !18
  %20 = trunc i32 %17 to i16
  br label %21

21:                                               ; preds = %1, %21
  %22 = phi ptr [ %3, %1 ], [ %28, %21 ]
  %23 = phi i32 [ 0, %1 ], [ %27, %21 ]
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr %22, align 2, !tbaa !21
  %25 = getelementptr inbounds %struct.lzw_decode_s, ptr %22, i64 0, i32 1
  store i8 1, ptr %25, align 1, !tbaa !18
  %26 = getelementptr inbounds %struct.lzw_decode_s, ptr %22, i64 0, i32 2
  store i16 %20, ptr %26, align 2, !tbaa !22
  %27 = add nuw nsw i32 %23, 1
  %28 = getelementptr inbounds %struct.lzw_decode_s, ptr %22, i64 1
  %29 = icmp eq i32 %27, %6
  br i1 %29, label %30, label %21, !llvm.loop !23

30:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_LZWD_init(ptr nocapture noundef %0) #1 {
  %2 = getelementptr inbounds %struct.stream_state_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !25
  %4 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !27
  %6 = tail call ptr %5(ptr noundef %3, i32 noundef 4097, ptr noundef nonnull @st_lzw_decode, ptr noundef nonnull @.str) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %36, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  store ptr %6, ptr %9, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8, !tbaa !8
  %12 = shl nuw i32 1, %11
  %13 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  store i32 0, ptr %13, align 4, !tbaa !12
  %14 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %14, align 8, !tbaa !13
  %15 = add nuw i32 %12, 2
  %16 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 11
  store i32 %15, ptr %16, align 8, !tbaa !14
  %17 = add nsw i32 %11, 1
  %18 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 12
  store i32 %17, ptr %18, align 4, !tbaa !15
  %19 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 13
  store i32 -1, ptr %19, align 8, !tbaa !16
  %20 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 15
  store i32 -1, ptr %20, align 8, !tbaa !17
  %21 = zext i32 %12 to i64
  %22 = getelementptr inbounds %struct.lzw_decode_s, ptr %6, i64 %21, i32 1
  store i8 -1, ptr %22, align 1, !tbaa !18
  %23 = add nuw i32 %12, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.lzw_decode_s, ptr %6, i64 %24, i32 1
  store i8 -1, ptr %25, align 1, !tbaa !18
  %26 = trunc i32 %23 to i16
  br label %27

27:                                               ; preds = %27, %8
  %28 = phi ptr [ %6, %8 ], [ %34, %27 ]
  %29 = phi i32 [ 0, %8 ], [ %33, %27 ]
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %28, align 2, !tbaa !21
  %31 = getelementptr inbounds %struct.lzw_decode_s, ptr %28, i64 0, i32 1
  store i8 1, ptr %31, align 1, !tbaa !18
  %32 = getelementptr inbounds %struct.lzw_decode_s, ptr %28, i64 0, i32 2
  store i16 %26, ptr %32, align 2, !tbaa !22
  %33 = add nuw nsw i32 %29, 1
  %34 = getelementptr inbounds %struct.lzw_decode_s, ptr %28, i64 1
  %35 = icmp eq i32 %33, %12
  br i1 %35, label %36, label %27, !llvm.loop !23

36:                                               ; preds = %27, %1
  %37 = phi i32 [ -2, %1 ], [ 0, %27 ]
  ret i32 %37
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_LZWD_process(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 %3) #2 {
  %5 = load ptr, ptr %1, align 8, !tbaa !30
  %6 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !32
  %8 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 15
  %13 = load i32, ptr %12, align 8, !tbaa !17
  %14 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !16
  %16 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 14
  %17 = load i32, ptr %16, align 4, !tbaa !36
  %18 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !37
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 4, !tbaa !12
  %23 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !13
  %25 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 12
  %26 = load i32, ptr %25, align 4, !tbaa !15
  %27 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 11
  %28 = load i32, ptr %27, align 8, !tbaa !14
  %29 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !5
  %31 = sext i32 %28 to i64
  %32 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %31
  %33 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 3
  %34 = load i32, ptr %33, align 8, !tbaa !8
  %35 = shl nuw i32 1, %34
  %36 = add nuw nsw i32 %35, 1
  %37 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !38
  %39 = shl nuw i32 1, %26
  %40 = add nsw i32 %39, -1
  %41 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 6
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = sub nsw i32 %39, %42
  %44 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !40
  %46 = icmp eq i32 %45, 0
  %47 = ptrtoint ptr %9 to i64
  %48 = ptrtoint ptr %5 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = add i32 %50, 2
  %52 = select i1 %46, i32 %51, i32 %24
  %53 = icmp sgt i32 %13, -1
  br i1 %53, label %75, label %54

54:                                               ; preds = %331, %362, %350, %4
  %55 = phi i32 [ %15, %4 ], [ %341, %350 ], [ %341, %362 ], [ %341, %331 ]
  %56 = phi i32 [ %17, %4 ], [ %345, %350 ], [ %345, %362 ], [ %345, %331 ]
  %57 = phi i8 [ %20, %4 ], [ %334, %350 ], [ %334, %362 ], [ %334, %331 ]
  %58 = phi i32 [ %22, %4 ], [ %335, %350 ], [ %335, %362 ], [ %335, %331 ]
  %59 = phi i32 [ %52, %4 ], [ %336, %350 ], [ %336, %362 ], [ %336, %331 ]
  %60 = phi i32 [ %26, %4 ], [ %337, %350 ], [ %363, %362 ], [ %337, %331 ]
  %61 = phi i32 [ %40, %4 ], [ %338, %350 ], [ %365, %362 ], [ %338, %331 ]
  %62 = phi i32 [ %43, %4 ], [ %339, %350 ], [ %367, %362 ], [ %339, %331 ]
  %63 = phi i32 [ %28, %4 ], [ %358, %350 ], [ %358, %362 ], [ %340, %331 ]
  %64 = phi ptr [ %32, %4 ], [ %357, %350 ], [ %357, %362 ], [ %342, %331 ]
  %65 = phi ptr [ %7, %4 ], [ %343, %350 ], [ %343, %362 ], [ %343, %331 ]
  %66 = phi ptr [ %5, %4 ], [ %344, %350 ], [ %344, %362 ], [ %344, %331 ]
  %67 = icmp eq i32 %38, 0
  %68 = icmp eq i32 %38, 0
  %69 = add i32 %56, 1
  %70 = tail call i32 @llvm.umin.i32(i32 %69, i32 255)
  %71 = trunc i32 %70 to i8
  %72 = add nuw nsw i32 %35, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %73
  br label %261

75:                                               ; preds = %4
  %76 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 17
  %77 = load i32, ptr %76, align 8, !tbaa !41
  %78 = ptrtoint ptr %11 to i64
  %79 = ptrtoint ptr %7 to i64
  %80 = sub i64 %78, %79
  %81 = trunc i64 %80 to i32
  %82 = tail call i32 @llvm.smin.i32(i32 %77, i32 %81)
  %83 = sub i32 %77, %82
  store i32 %83, ptr %76, align 8, !tbaa !41
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %75, %85
  %86 = phi i32 [ %92, %85 ], [ %83, %75 ]
  %87 = phi i32 [ %91, %85 ], [ %13, %75 ]
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %88, i32 2
  %90 = load i16, ptr %89, align 2, !tbaa !22
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %86, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %85, !llvm.loop !42

94:                                               ; preds = %85, %75
  %95 = phi i32 [ %13, %75 ], [ %91, %85 ]
  %96 = zext i32 %82 to i64
  %97 = getelementptr inbounds i8, ptr %7, i64 %96
  %98 = icmp sgt i32 %82, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94, %99
  %100 = phi i32 [ %103, %99 ], [ %82, %94 ]
  %101 = phi ptr [ %107, %99 ], [ %97, %94 ]
  %102 = phi i32 [ %110, %99 ], [ %95, %94 ]
  %103 = add nsw i32 %100, -1
  %104 = zext nneg i32 %102 to i64
  %105 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %104
  %106 = load i8, ptr %105, align 2, !tbaa !21
  %107 = getelementptr inbounds i8, ptr %101, i64 -1
  store i8 %106, ptr %101, align 1, !tbaa !5
  %108 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %104, i32 2
  %109 = load i16, ptr %108, align 2, !tbaa !22
  %110 = zext i16 %109 to i32
  %111 = icmp sgt i32 %100, 1
  br i1 %111, label %99, label %112, !llvm.loop !43

112:                                              ; preds = %99, %94
  %113 = phi i32 [ %95, %94 ], [ %110, %99 ]
  %114 = phi ptr [ %97, %94 ], [ %107, %99 ]
  %115 = load i32, ptr %76, align 8, !tbaa !41
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  store ptr %97, ptr %6, align 8, !tbaa !32
  br label %134

118:                                              ; preds = %112
  store i32 -1, ptr %12, align 8, !tbaa !17
  %119 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 16
  %120 = load i32, ptr %119, align 4, !tbaa !44
  %121 = icmp eq i32 %113, %36
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  %123 = getelementptr inbounds i8, ptr %114, i64 1
  %124 = load i8, ptr %123, align 1, !tbaa !5
  br label %134

125:                                              ; preds = %118, %125
  %126 = phi i32 [ %130, %125 ], [ %113, %118 ]
  %127 = zext nneg i32 %126 to i64
  %128 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %127, i32 2
  %129 = load i16, ptr %128, align 2, !tbaa !22
  %130 = zext i16 %129 to i32
  %131 = icmp eq i32 %36, %130
  br i1 %131, label %132, label %125, !llvm.loop !45

132:                                              ; preds = %125
  %133 = trunc i32 %126 to i8
  br label %134

134:                                              ; preds = %132, %122, %117
  %135 = phi i32 [ %82, %117 ], [ %120, %122 ], [ %120, %132 ]
  %136 = phi i8 [ undef, %117 ], [ %124, %122 ], [ %133, %132 ]
  br i1 %116, label %331, label %385

137:                                              ; preds = %261, %144
  %138 = phi i32 [ %147, %144 ], [ %265, %261 ]
  %139 = phi ptr [ %145, %144 ], [ %271, %261 ]
  br i1 %272, label %140, label %212

140:                                              ; preds = %137
  %141 = icmp eq i32 %138, 0
  br i1 %141, label %142, label %149

142:                                              ; preds = %140
  %143 = icmp eq ptr %139, %9
  br i1 %143, label %368, label %144

144:                                              ; preds = %142
  %145 = getelementptr inbounds i8, ptr %139, i64 1
  %146 = load i8, ptr %145, align 1, !tbaa !5
  %147 = zext i8 %146 to i32
  %148 = icmp eq i8 %146, 0
  br i1 %148, label %373, label %137

149:                                              ; preds = %140
  %150 = zext i8 %263 to i32
  %151 = sub nsw i32 8, %264
  %152 = lshr i32 %150, %151
  %153 = sub nsw i32 %266, %264
  %154 = shl i32 %150, %153
  %155 = select i1 %68, i32 %154, i32 %152
  %156 = add nsw i32 %264, 8
  %157 = icmp slt i32 %156, %266
  br i1 %157, label %158, label %189

158:                                              ; preds = %149
  %159 = icmp eq i32 %138, 1
  %160 = ptrtoint ptr %139 to i64
  %161 = sub i64 %47, %160
  br i1 %159, label %162, label %172

162:                                              ; preds = %158
  %163 = icmp slt i64 %161, 3
  br i1 %163, label %373, label %164

164:                                              ; preds = %162
  %165 = getelementptr inbounds i8, ptr %139, i64 2
  %166 = load i8, ptr %165, align 1, !tbaa !5
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %373, label %168

168:                                              ; preds = %164
  %169 = zext i8 %166 to i32
  %170 = add nuw nsw i32 %169, 1
  %171 = getelementptr inbounds i8, ptr %139, i64 1
  br label %176

172:                                              ; preds = %158
  %173 = icmp slt i64 %161, 2
  br i1 %173, label %373, label %174

174:                                              ; preds = %172
  %175 = getelementptr inbounds i8, ptr %139, i64 1
  br label %176

176:                                              ; preds = %174, %168
  %177 = phi ptr [ %171, %168 ], [ %175, %174 ]
  %178 = phi i32 [ %170, %168 ], [ %138, %174 ]
  %179 = phi ptr [ %171, %168 ], [ %139, %174 ]
  %180 = load i8, ptr %177, align 1, !tbaa !5
  %181 = zext i8 %180 to i32
  %182 = sub i32 %266, %264
  %183 = add i32 %182, -8
  %184 = select i1 %68, i32 %183, i32 %264
  %185 = shl i32 %181, %184
  %186 = add i32 %185, %155
  %187 = getelementptr inbounds i8, ptr %179, i64 2
  %188 = add nsw i32 %178, -2
  br label %194

189:                                              ; preds = %149
  %190 = icmp eq ptr %139, %9
  br i1 %190, label %373, label %191

191:                                              ; preds = %189
  %192 = getelementptr inbounds i8, ptr %139, i64 1
  %193 = add nsw i32 %138, -1
  br label %194

194:                                              ; preds = %191, %176
  %195 = phi i32 [ %156, %176 ], [ %264, %191 ]
  %196 = phi i32 [ %188, %176 ], [ %193, %191 ]
  %197 = phi i32 [ %186, %176 ], [ %155, %191 ]
  %198 = phi ptr [ %187, %176 ], [ %192, %191 ]
  %199 = load i8, ptr %198, align 1, !tbaa !5
  br i1 %68, label %206, label %200

200:                                              ; preds = %194
  %201 = zext i8 %199 to i32
  %202 = shl i32 %201, %195
  %203 = add i32 %202, %197
  %204 = sub i32 %195, %266
  %205 = add i32 %204, 8
  br label %222

206:                                              ; preds = %194
  %207 = sub i32 %195, %266
  %208 = add i32 %207, 8
  %209 = zext i8 %199 to i32
  %210 = lshr i32 %209, %208
  %211 = add nsw i32 %210, %197
  br label %222

212:                                              ; preds = %137
  br i1 %67, label %218, label %213

213:                                              ; preds = %212
  %214 = zext i8 %263 to i32
  %215 = sub nsw i32 8, %264
  %216 = lshr i32 %214, %215
  %217 = sub nsw i32 %264, %266
  br label %222

218:                                              ; preds = %212
  %219 = sub nsw i32 %264, %266
  %220 = zext i8 %263 to i32
  %221 = lshr i32 %220, %219
  br label %222

222:                                              ; preds = %213, %218, %200, %206
  %223 = phi i8 [ %199, %200 ], [ %199, %206 ], [ %263, %213 ], [ %263, %218 ]
  %224 = phi i32 [ %205, %200 ], [ %208, %206 ], [ %217, %213 ], [ %219, %218 ]
  %225 = phi i32 [ %196, %200 ], [ %196, %206 ], [ %265, %213 ], [ %265, %218 ]
  %226 = phi i32 [ %203, %200 ], [ %211, %206 ], [ %216, %213 ], [ %221, %218 ]
  %227 = phi ptr [ %198, %200 ], [ %198, %206 ], [ %271, %213 ], [ %271, %218 ]
  %228 = and i32 %226, %267
  %229 = icmp slt i32 %228, %269
  br i1 %229, label %247, label %230

230:                                              ; preds = %222
  %231 = icmp sgt i32 %228, %269
  br i1 %231, label %373, label %232

232:                                              ; preds = %230
  %233 = icmp eq i32 %262, %36
  br i1 %233, label %243, label %234

234:                                              ; preds = %232, %234
  %235 = phi i32 [ %239, %234 ], [ %262, %232 ]
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %236, i32 2
  %238 = load i16, ptr %237, align 2, !tbaa !22
  %239 = zext i16 %238 to i32
  %240 = icmp eq i32 %36, %239
  br i1 %240, label %241, label %234, !llvm.loop !46

241:                                              ; preds = %234
  %242 = trunc i32 %235 to i8
  store i8 %242, ptr %270, align 2, !tbaa !21
  br label %243

243:                                              ; preds = %241, %232
  %244 = getelementptr inbounds %struct.lzw_decode_s, ptr %270, i64 0, i32 1
  store i8 %71, ptr %244, align 1, !tbaa !18
  %245 = trunc i32 %262 to i16
  %246 = getelementptr inbounds %struct.lzw_decode_s, ptr %270, i64 0, i32 2
  store i16 %245, ptr %246, align 2, !tbaa !22
  br label %247

247:                                              ; preds = %243, %222
  %248 = sext i32 %228 to i64
  %249 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %248, i32 1
  %250 = load i8, ptr %249, align 1, !tbaa !18
  %251 = icmp eq i8 %250, -1
  br i1 %251, label %252, label %284

252:                                              ; preds = %247
  %253 = icmp eq i32 %228, %35
  br i1 %253, label %254, label %273

254:                                              ; preds = %252
  %255 = load i32, ptr %33, align 8, !tbaa !8
  %256 = add nsw i32 %255, 1
  %257 = shl nuw i32 1, %256
  %258 = add nsw i32 %257, -1
  %259 = load i32, ptr %41, align 4, !tbaa !39
  %260 = sub nsw i32 %257, %259
  br label %261

261:                                              ; preds = %54, %254
  %262 = phi i32 [ %55, %54 ], [ -1, %254 ]
  %263 = phi i8 [ %57, %54 ], [ %223, %254 ]
  %264 = phi i32 [ %58, %54 ], [ %224, %254 ]
  %265 = phi i32 [ %59, %54 ], [ %225, %254 ]
  %266 = phi i32 [ %60, %54 ], [ %256, %254 ]
  %267 = phi i32 [ %61, %54 ], [ %258, %254 ]
  %268 = phi i32 [ %62, %54 ], [ %260, %254 ]
  %269 = phi i32 [ %63, %54 ], [ %72, %254 ]
  %270 = phi ptr [ %64, %54 ], [ %74, %254 ]
  %271 = phi ptr [ %66, %54 ], [ %227, %254 ]
  %272 = icmp sgt i32 %266, %264
  br label %137

273:                                              ; preds = %252
  %274 = icmp eq i32 %228, %36
  br i1 %274, label %373, label %275

275:                                              ; preds = %273, %275
  %276 = phi i32 [ %281, %275 ], [ %228, %273 ]
  %277 = phi i32 [ %282, %275 ], [ 0, %273 ]
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %278, i32 2
  %280 = load i16, ptr %279, align 2, !tbaa !22
  %281 = zext i16 %280 to i32
  %282 = add i32 %277, 1
  %283 = icmp eq i32 %36, %281
  br i1 %283, label %286, label %275, !llvm.loop !47

284:                                              ; preds = %247
  %285 = zext i8 %250 to i32
  br label %286

286:                                              ; preds = %275, %284
  %287 = phi i32 [ %285, %284 ], [ %282, %275 ]
  %288 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %248
  %289 = ptrtoint ptr %11 to i64
  %290 = ptrtoint ptr %65 to i64
  %291 = sub i64 %289, %290
  %292 = zext i32 %287 to i64
  %293 = icmp slt i64 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %286
  store i32 %228, ptr %12, align 8, !tbaa !17
  %295 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 16
  store i32 %287, ptr %295, align 4, !tbaa !44
  %296 = getelementptr inbounds %struct.stream_LZW_state_s, ptr %0, i64 0, i32 17
  store i32 %287, ptr %296, align 8, !tbaa !41
  br label %373

297:                                              ; preds = %286
  switch i32 %287, label %298 [
    i32 3, label %311
    i32 2, label %318
    i32 1, label %326
  ]

298:                                              ; preds = %297
  %299 = getelementptr inbounds i8, ptr %65, i64 %292
  br label %300

300:                                              ; preds = %300, %298
  %301 = phi i32 [ %228, %298 ], [ %309, %300 ]
  %302 = phi ptr [ %299, %298 ], [ %306, %300 ]
  %303 = sext i32 %301 to i64
  %304 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %303
  %305 = load i8, ptr %304, align 2, !tbaa !21
  %306 = getelementptr inbounds i8, ptr %302, i64 -1
  store i8 %305, ptr %302, align 1, !tbaa !5
  %307 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %303, i32 2
  %308 = load i16, ptr %307, align 2, !tbaa !22
  %309 = zext i16 %308 to i32
  %310 = icmp eq i32 %36, %309
  br i1 %310, label %331, label %300, !llvm.loop !48

311:                                              ; preds = %297
  %312 = load i8, ptr %288, align 2, !tbaa !21
  %313 = getelementptr inbounds i8, ptr %65, i64 3
  store i8 %312, ptr %313, align 1, !tbaa !5
  %314 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %248, i32 2
  %315 = load i16, ptr %314, align 2, !tbaa !22
  %316 = zext i16 %315 to i64
  %317 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %316
  br label %318

318:                                              ; preds = %297, %311
  %319 = phi ptr [ %288, %297 ], [ %317, %311 ]
  %320 = load i8, ptr %319, align 2, !tbaa !21
  %321 = getelementptr inbounds i8, ptr %65, i64 2
  store i8 %320, ptr %321, align 1, !tbaa !5
  %322 = getelementptr inbounds %struct.lzw_decode_s, ptr %319, i64 0, i32 2
  %323 = load i16, ptr %322, align 2, !tbaa !22
  %324 = zext i16 %323 to i64
  %325 = getelementptr inbounds %struct.lzw_decode_s, ptr %30, i64 %324
  br label %326

326:                                              ; preds = %297, %318
  %327 = phi ptr [ %288, %297 ], [ %325, %318 ]
  %328 = load i8, ptr %327, align 2, !tbaa !21
  %329 = getelementptr inbounds i8, ptr %65, i64 1
  store i8 %328, ptr %329, align 1, !tbaa !5
  %330 = getelementptr inbounds i8, ptr %65, i64 %292
  br label %331

331:                                              ; preds = %300, %326, %134
  %332 = phi i32 [ %15, %134 ], [ %262, %326 ], [ %262, %300 ]
  %333 = phi i32 [ %17, %134 ], [ %56, %326 ], [ %56, %300 ]
  %334 = phi i8 [ %20, %134 ], [ %223, %326 ], [ %223, %300 ]
  %335 = phi i32 [ %22, %134 ], [ %224, %326 ], [ %224, %300 ]
  %336 = phi i32 [ %52, %134 ], [ %225, %326 ], [ %225, %300 ]
  %337 = phi i32 [ %26, %134 ], [ %266, %326 ], [ %266, %300 ]
  %338 = phi i32 [ %40, %134 ], [ %267, %326 ], [ %267, %300 ]
  %339 = phi i32 [ %43, %134 ], [ %268, %326 ], [ %268, %300 ]
  %340 = phi i32 [ %28, %134 ], [ %269, %326 ], [ %269, %300 ]
  %341 = phi i32 [ %13, %134 ], [ %228, %326 ], [ %228, %300 ]
  %342 = phi ptr [ %32, %134 ], [ %270, %326 ], [ %270, %300 ]
  %343 = phi ptr [ %97, %134 ], [ %330, %326 ], [ %299, %300 ]
  %344 = phi ptr [ %5, %134 ], [ %227, %326 ], [ %227, %300 ]
  %345 = phi i32 [ %135, %134 ], [ %287, %326 ], [ %287, %300 ]
  %346 = phi i8 [ %136, %134 ], [ %328, %326 ], [ %305, %300 ]
  %347 = icmp sgt i32 %332, -1
  br i1 %347, label %348, label %54

348:                                              ; preds = %331
  %349 = icmp eq i32 %340, 4096
  br i1 %349, label %373, label %350

350:                                              ; preds = %348
  store i8 %346, ptr %342, align 2, !tbaa !21
  %351 = tail call i32 @llvm.umin.i32(i32 %333, i32 254)
  %352 = trunc i32 %351 to i8
  %353 = add nuw i8 %352, 1
  %354 = getelementptr inbounds %struct.lzw_decode_s, ptr %342, i64 0, i32 1
  store i8 %353, ptr %354, align 1, !tbaa !18
  %355 = trunc i32 %332 to i16
  %356 = getelementptr inbounds %struct.lzw_decode_s, ptr %342, i64 0, i32 2
  store i16 %355, ptr %356, align 2, !tbaa !22
  %357 = getelementptr inbounds %struct.lzw_decode_s, ptr %342, i64 1
  %358 = add nsw i32 %340, 1
  %359 = icmp eq i32 %358, %339
  %360 = icmp slt i32 %340, 4094
  %361 = and i1 %360, %359
  br i1 %361, label %362, label %54

362:                                              ; preds = %350
  %363 = add nsw i32 %337, 1
  %364 = shl nuw i32 1, %363
  %365 = add nsw i32 %364, -1
  %366 = load i32, ptr %41, align 4, !tbaa !39
  %367 = sub nsw i32 %364, %366
  br label %54

368:                                              ; preds = %142
  %369 = ptrtoint ptr %271 to i64
  %370 = getelementptr i8, ptr %271, i64 %47
  %371 = sub i64 0, %369
  %372 = getelementptr i8, ptr %370, i64 %371
  br label %373

373:                                              ; preds = %230, %164, %189, %172, %162, %368, %144, %348, %273, %294
  %374 = phi i32 [ %262, %294 ], [ %262, %273 ], [ %332, %348 ], [ %262, %144 ], [ %262, %368 ], [ %262, %162 ], [ %262, %172 ], [ %262, %189 ], [ %262, %164 ], [ %262, %230 ]
  %375 = phi i32 [ %56, %294 ], [ %56, %273 ], [ %333, %348 ], [ %56, %144 ], [ %56, %368 ], [ %56, %162 ], [ %56, %172 ], [ %56, %189 ], [ %56, %164 ], [ %56, %230 ]
  %376 = phi i8 [ %223, %294 ], [ %223, %273 ], [ %334, %348 ], [ %263, %144 ], [ %263, %368 ], [ %223, %230 ], [ %263, %164 ], [ %263, %189 ], [ %263, %172 ], [ %263, %162 ]
  %377 = phi i32 [ %224, %294 ], [ %224, %273 ], [ %335, %348 ], [ %264, %144 ], [ %264, %368 ], [ %224, %230 ], [ %264, %164 ], [ %264, %189 ], [ %264, %172 ], [ %264, %162 ]
  %378 = phi i32 [ %225, %294 ], [ %225, %273 ], [ %336, %348 ], [ 0, %144 ], [ 0, %368 ], [ %225, %230 ], [ 0, %164 ], [ %138, %189 ], [ %138, %172 ], [ 1, %162 ]
  %379 = phi i32 [ %266, %294 ], [ %266, %273 ], [ %337, %348 ], [ %266, %144 ], [ %266, %368 ], [ %266, %162 ], [ %266, %172 ], [ %266, %189 ], [ %266, %164 ], [ %266, %230 ]
  %380 = phi i32 [ %269, %294 ], [ %269, %273 ], [ 4096, %348 ], [ %269, %144 ], [ %269, %368 ], [ %269, %162 ], [ %269, %172 ], [ %269, %189 ], [ %269, %164 ], [ %269, %230 ]
  %381 = phi i32 [ 1, %294 ], [ -1, %273 ], [ -2, %348 ], [ 0, %368 ], [ -1, %144 ], [ -2, %230 ], [ -1, %164 ], [ 0, %189 ], [ 0, %172 ], [ 0, %162 ]
  %382 = phi ptr [ %65, %294 ], [ %65, %273 ], [ %343, %348 ], [ %65, %144 ], [ %65, %368 ], [ %65, %162 ], [ %65, %172 ], [ %65, %189 ], [ %65, %164 ], [ %65, %230 ]
  %383 = phi ptr [ %227, %294 ], [ %227, %273 ], [ %344, %348 ], [ %372, %368 ], [ %145, %144 ], [ %227, %230 ], [ %139, %164 ], [ %139, %189 ], [ %139, %172 ], [ %139, %162 ]
  store ptr %383, ptr %1, align 8, !tbaa !30
  store ptr %382, ptr %6, align 8, !tbaa !32
  store i32 %379, ptr %25, align 4, !tbaa !15
  store i32 %374, ptr %14, align 8, !tbaa !16
  store i32 %375, ptr %16, align 4, !tbaa !36
  %384 = zext i8 %376 to i32
  store i32 %384, ptr %18, align 8, !tbaa !37
  store i32 %377, ptr %21, align 4, !tbaa !12
  store i32 %378, ptr %23, align 8, !tbaa !13
  store i32 %380, ptr %27, align 8, !tbaa !14
  br label %385

385:                                              ; preds = %134, %373
  %386 = phi i32 [ %381, %373 ], [ 1, %134 ]
  ret i32 %386
}

declare void @s_LZW_release(ptr noundef) #3

declare void @s_LZW_set_defaults(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !11, i64 24}
!9 = !{!"stream_LZW_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !6, i64 56, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!9, !11, i64 44}
!13 = !{!9, !11, i64 48}
!14 = !{!9, !11, i64 64}
!15 = !{!9, !11, i64 68}
!16 = !{!9, !11, i64 72}
!17 = !{!9, !11, i64 80}
!18 = !{!19, !6, i64 1}
!19 = !{!"lzw_decode_s", !6, i64 0, !6, i64 1, !20, i64 2}
!20 = !{!"short", !6, i64 0}
!21 = !{!19, !6, i64 0}
!22 = !{!19, !20, i64 2}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!26, !10, i64 8}
!26 = !{!"stream_state_s", !10, i64 0, !10, i64 8, !10, i64 16}
!27 = !{!28, !10, i64 48}
!28 = !{!"gs_memory_s", !29, i64 0}
!29 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!30 = !{!31, !10, i64 0}
!31 = !{!"stream_cursor_read_s", !10, i64 0, !10, i64 8, !10, i64 16}
!32 = !{!33, !10, i64 8}
!33 = !{!"stream_cursor_write_s", !10, i64 0, !10, i64 8, !10, i64 16}
!34 = !{!31, !10, i64 8}
!35 = !{!33, !10, i64 16}
!36 = !{!9, !11, i64 76}
!37 = !{!9, !11, i64 40}
!38 = !{!9, !11, i64 28}
!39 = !{!9, !11, i64 36}
!40 = !{!9, !11, i64 32}
!41 = !{!9, !11, i64 88}
!42 = distinct !{!42, !24}
!43 = distinct !{!43, !24}
!44 = !{!9, !11, i64 84}
!45 = distinct !{!45, !24}
!46 = distinct !{!46, !24}
!47 = distinct !{!47, !24}
!48 = distinct !{!48, !24}
