; ModuleID = 'sdctd.c'
source_filename = "sdctd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_DCT_state_s = type { ptr, ptr, ptr, %struct.gs_const_string_s, float, i32, i32, %union._jd, i32, i32 }
%struct.gs_const_string_s = type { ptr, i32 }
%union._jd = type { ptr }
%struct.jpeg_decompress_data_s = type { %struct.stream_template_s, %struct.jpeg_error_mgr, [1 x %struct.__jmp_buf_tag], i32, i32, %struct.jpeg_decompress_struct, %struct.jpeg_source_mgr, i64, i32, i32, ptr, i32 }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.__jmp_buf_tag = type { [8 x i64], i32, %struct.__sigset_t }
%struct.__sigset_t = type { [16 x i64] }
%struct.jpeg_decompress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], i32, ptr, i32, i32, [16 x i8], [16 x i8], [16 x i8], i32, i32, i8, i16, i16, i32, i8, i32, i32, i32, i32, i32, ptr, i32, [4 x ptr], i32, i32, i32, [64 x i32], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_source_mgr = type { ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@st_DCT_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_DCTD_template = dso_local constant %struct.stream_template_s { ptr @st_DCT_state, ptr @s_DCTD_init, ptr @s_DCTD_process, i32 2000, i32 4000, ptr @s_DCTD_release, ptr null, ptr null }, align 8
@fake_eoi = internal constant [2 x i8] c"\FF\D9", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str = private unnamed_addr constant [32 x i8] c"s_DCTD_process(scanline_buffer)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"s_DCTD_release(scanline_buffer)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"s_DCTD_release\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @s_DCTD_init(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %3, i64 0, i32 6
  %5 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %3, i64 0, i32 6, i32 2
  store ptr @dctd_init_source, ptr %5, align 8, !tbaa !8
  %6 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %3, i64 0, i32 6, i32 3
  store ptr @dctd_fill_input_buffer, ptr %6, align 8, !tbaa !12
  %7 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %3, i64 0, i32 6, i32 4
  store ptr @dctd_skip_input_data, ptr %7, align 8, !tbaa !13
  %8 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %3, i64 0, i32 6, i32 6
  store ptr @dctd_term_source, ptr %8, align 8, !tbaa !14
  %9 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %3, i64 0, i32 6, i32 5
  store ptr @jpeg_resync_to_restart, ptr %9, align 8, !tbaa !15
  %10 = load ptr, ptr %2, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %10, i64 0, i32 5, i32 5
  store ptr %4, ptr %11, align 8, !tbaa !16
  %12 = load ptr, ptr %2, align 8, !tbaa !5
  %13 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %12, i64 0, i32 7
  store i64 0, ptr %13, align 8, !tbaa !24
  %14 = load ptr, ptr %2, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %14, i64 0, i32 8
  store i32 0, ptr %15, align 8, !tbaa !25
  %16 = load ptr, ptr %2, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %16, i64 0, i32 9
  store i32 0, ptr %17, align 4, !tbaa !26
  %18 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 9
  store i32 0, ptr %18, align 4, !tbaa !27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @s_DCTD_process(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #1 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !16
  %10 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 7
  %11 = load i64, ptr %10, align 8, !tbaa !24
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !31
  %16 = load ptr, ptr %1, align 8, !tbaa !33
  %17 = ptrtoint ptr %15 to i64
  %18 = ptrtoint ptr %16 to i64
  %19 = sub i64 %17, %18
  %20 = icmp slt i64 %19, %11
  br i1 %20, label %21, label %25

21:                                               ; preds = %13
  %22 = sub nsw i64 %11, %19
  store i64 %22, ptr %10, align 8, !tbaa !24
  store ptr %15, ptr %1, align 8, !tbaa !33
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %235, label %24

24:                                               ; preds = %21
  store i64 0, ptr %10, align 8, !tbaa !24
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i64, ptr %10, align 8, !tbaa !24
  %27 = load ptr, ptr %1, align 8, !tbaa !33
  %28 = getelementptr inbounds i8, ptr %27, i64 %26
  store ptr %28, ptr %1, align 8, !tbaa !33
  store i64 0, ptr %10, align 8, !tbaa !24
  br label %29

29:                                               ; preds = %25, %4
  %30 = load ptr, ptr %1, align 8, !tbaa !33
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  store ptr %31, ptr %9, align 8, !tbaa !34
  %32 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !31
  %34 = ptrtoint ptr %33 to i64
  %35 = ptrtoint ptr %30 to i64
  %36 = sub i64 %34, %35
  %37 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %9, i64 0, i32 1
  store i64 %36, ptr %37, align 8, !tbaa !35
  %38 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 8
  store i32 %3, ptr %38, align 8, !tbaa !25
  %39 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !27
  switch i32 %40, label %234 [
    i32 0, label %41
    i32 1, label %58
    i32 2, label %94
    i32 3, label %126
    i32 4, label %218
    i32 5, label %235
  ]

41:                                               ; preds = %29
  %42 = load ptr, ptr %1, align 8, !tbaa !33
  %43 = icmp ult ptr %42, %33
  br i1 %43, label %44, label %51

44:                                               ; preds = %41, %49
  %45 = phi ptr [ %46, %49 ], [ %42, %41 ]
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  %47 = load i8, ptr %46, align 1, !tbaa !5
  %48 = icmp eq i8 %47, -1
  br i1 %48, label %51, label %49

49:                                               ; preds = %44
  store ptr %46, ptr %1, align 8, !tbaa !33
  %50 = icmp eq ptr %46, %33
  br i1 %50, label %51, label %44, !llvm.loop !36

51:                                               ; preds = %44, %49, %41
  %52 = phi ptr [ %42, %41 ], [ %45, %44 ], [ %46, %49 ]
  %53 = icmp eq ptr %52, %33
  br i1 %53, label %235, label %54

54:                                               ; preds = %51
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  store ptr %55, ptr %9, align 8, !tbaa !34
  %56 = ptrtoint ptr %52 to i64
  %57 = sub i64 %34, %56
  store i64 %57, ptr %37, align 8, !tbaa !35
  store i32 1, ptr %39, align 4, !tbaa !27
  br label %58

58:                                               ; preds = %29, %54
  %59 = tail call i32 @gs_jpeg_read_header(ptr noundef %0, i32 noundef 1) #8
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %235, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 9
  %63 = load i32, ptr %62, align 4, !tbaa !26
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %32, align 8, !tbaa !31
  br label %70

67:                                               ; preds = %61
  %68 = load ptr, ptr %9, align 8, !tbaa !34
  %69 = getelementptr inbounds i8, ptr %68, i64 -1
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi ptr [ %66, %65 ], [ %69, %67 ]
  store ptr %71, ptr %1, align 8, !tbaa !33
  %72 = icmp eq i32 %59, 0
  br i1 %72, label %235, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 5
  %75 = load i32, ptr %74, align 4, !tbaa !38
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 54
  %79 = load i32, ptr %78, align 8, !tbaa !39
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 8
  %83 = load i32, ptr %82, align 8, !tbaa !40
  switch i32 %83, label %93 [
    i32 3, label %84
    i32 4, label %87
  ]

84:                                               ; preds = %81
  %85 = icmp eq i32 %75, 0
  %86 = select i1 %85, i32 2, i32 3
  br label %90

87:                                               ; preds = %81
  %88 = icmp eq i32 %75, 0
  %89 = select i1 %88, i32 4, i32 5
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i32 [ %86, %84 ], [ %89, %87 ]
  %92 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 9
  store i32 %91, ptr %92, align 4, !tbaa !41
  br label %93

93:                                               ; preds = %90, %81, %77, %73
  store i32 2, ptr %39, align 4, !tbaa !27
  br label %94

94:                                               ; preds = %29, %93
  %95 = tail call i32 @gs_jpeg_start_decompress(ptr noundef %0) #8
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %235, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 9
  %99 = load i32, ptr %98, align 4, !tbaa !26
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %32, align 8, !tbaa !31
  br label %106

103:                                              ; preds = %97
  %104 = load ptr, ptr %9, align 8, !tbaa !34
  %105 = getelementptr inbounds i8, ptr %104, i64 -1
  br label %106

106:                                              ; preds = %103, %101
  %107 = phi ptr [ %102, %101 ], [ %105, %103 ]
  store ptr %107, ptr %1, align 8, !tbaa !33
  %108 = icmp eq i32 %95, 0
  br i1 %108, label %235, label %109

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 26
  %111 = load i32, ptr %110, align 8, !tbaa !42
  %112 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 29
  %113 = load i32, ptr %112, align 4, !tbaa !43
  %114 = mul i32 %113, %111
  %115 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 8
  store i32 %114, ptr %115, align 8, !tbaa !44
  %116 = getelementptr inbounds %struct.stream_template_s, ptr %7, i64 0, i32 4
  %117 = load i32, ptr %116, align 4, !tbaa !45
  %118 = icmp ugt i32 %114, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !46
  %121 = tail call ptr %120(ptr noundef nonnull @gs_memory_default, i32 noundef %114, i32 noundef 1, ptr noundef nonnull @.str) #8
  %122 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 10
  store ptr %121, ptr %122, align 8, !tbaa !49
  %123 = icmp eq ptr %121, null
  br i1 %123, label %235, label %124

124:                                              ; preds = %119, %109
  %125 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 11
  store i32 0, ptr %125, align 8, !tbaa !50
  store i32 3, ptr %39, align 4, !tbaa !27
  br label %126

126:                                              ; preds = %29, %124
  %127 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 11
  %128 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %129 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %130 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 10
  %131 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 8
  %132 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 27
  %133 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 5, i32 33
  %134 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 10
  %135 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %136 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %137 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 8
  %138 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 9
  %139 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 8
  %140 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 8
  %141 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  br label %143

142:                                              ; preds = %214
  br label %143, !llvm.loop !51

143:                                              ; preds = %142, %126
  %144 = phi i32 [ 0, %126 ], [ %216, %142 ]
  %145 = load i32, ptr %127, align 8, !tbaa !50
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %168, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %128, align 8, !tbaa !52
  %149 = load ptr, ptr %129, align 8, !tbaa !54
  %150 = ptrtoint ptr %148 to i64
  %151 = ptrtoint ptr %149 to i64
  %152 = sub i64 %150, %151
  %153 = trunc i64 %152 to i32
  %154 = call i32 @llvm.umin.i32(i32 %145, i32 %153)
  %155 = getelementptr inbounds i8, ptr %149, i64 1
  %156 = load ptr, ptr %130, align 8, !tbaa !49
  %157 = load i32, ptr %131, align 8, !tbaa !44
  %158 = sub i32 %157, %145
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds i8, ptr %156, i64 %159
  %161 = zext i32 %154 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %155, ptr align 1 %160, i64 %161, i1 false)
  %162 = load ptr, ptr %129, align 8, !tbaa !54
  %163 = getelementptr inbounds i8, ptr %162, i64 %161
  store ptr %163, ptr %129, align 8, !tbaa !54
  %164 = load i32, ptr %127, align 8, !tbaa !50
  %165 = sub i32 %164, %154
  store i32 %165, ptr %127, align 8, !tbaa !50
  %166 = icmp eq i32 %164, %154
  %167 = select i1 %166, i32 %144, i32 1
  br i1 %166, label %168, label %235

168:                                              ; preds = %147, %143
  %169 = phi i32 [ %144, %143 ], [ %167, %147 ]
  br label %170

170:                                              ; preds = %168, %214
  %171 = phi i32 [ %216, %214 ], [ %169, %168 ]
  %172 = load i32, ptr %132, align 4, !tbaa !55
  %173 = load i32, ptr %133, align 8, !tbaa !56
  %174 = icmp ugt i32 %172, %173
  br i1 %174, label %175, label %217

175:                                              ; preds = %170
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #8
  %176 = load ptr, ptr %134, align 8, !tbaa !49
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load ptr, ptr %135, align 8, !tbaa !52
  %180 = load ptr, ptr %136, align 8, !tbaa !54
  %181 = ptrtoint ptr %179 to i64
  %182 = ptrtoint ptr %180 to i64
  %183 = sub i64 %181, %182
  %184 = trunc i64 %183 to i32
  %185 = load i32, ptr %137, align 8, !tbaa !44
  %186 = icmp ugt i32 %185, %184
  br i1 %186, label %214, label %187

187:                                              ; preds = %178
  %188 = getelementptr inbounds i8, ptr %180, i64 1
  br label %189

189:                                              ; preds = %175, %187
  %190 = phi ptr [ %188, %187 ], [ %176, %175 ]
  store ptr %190, ptr %5, align 8, !tbaa !57
  %191 = call i32 @gs_jpeg_read_scanlines(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #8
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %214, label %193

193:                                              ; preds = %189
  %194 = load i32, ptr %138, align 4, !tbaa !26
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %193
  %197 = load ptr, ptr %32, align 8, !tbaa !31
  br label %201

198:                                              ; preds = %193
  %199 = load ptr, ptr %9, align 8, !tbaa !34
  %200 = getelementptr inbounds i8, ptr %199, i64 -1
  br label %201

201:                                              ; preds = %198, %196
  %202 = phi ptr [ %197, %196 ], [ %200, %198 ]
  store ptr %202, ptr %1, align 8, !tbaa !33
  %203 = icmp eq i32 %191, 0
  br i1 %203, label %214, label %204

204:                                              ; preds = %201
  %205 = load ptr, ptr %134, align 8, !tbaa !49
  %206 = icmp eq ptr %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load i32, ptr %139, align 8, !tbaa !44
  store i32 %208, ptr %127, align 8, !tbaa !50
  br label %214

209:                                              ; preds = %204
  %210 = load i32, ptr %140, align 8, !tbaa !44
  %211 = load ptr, ptr %141, align 8, !tbaa !54
  %212 = zext i32 %210 to i64
  %213 = getelementptr inbounds i8, ptr %211, i64 %212
  store ptr %213, ptr %141, align 8, !tbaa !54
  br label %214

214:                                              ; preds = %201, %189, %178, %209, %207
  %215 = phi i32 [ 11, %207 ], [ 0, %209 ], [ 1, %178 ], [ 1, %189 ], [ 1, %201 ]
  %216 = phi i32 [ %171, %207 ], [ %171, %209 ], [ 1, %178 ], [ -2, %189 ], [ 0, %201 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #8
  switch i32 %215, label %235 [
    i32 0, label %170
    i32 11, label %142
  ], !llvm.loop !51

217:                                              ; preds = %170
  store i32 4, ptr %39, align 4, !tbaa !27
  br label %218

218:                                              ; preds = %29, %217
  %219 = call i32 @gs_jpeg_finish_decompress(ptr noundef %0) #8
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %235, label %221

221:                                              ; preds = %218
  %222 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %7, i64 0, i32 9
  %223 = load i32, ptr %222, align 4, !tbaa !26
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %227, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr %32, align 8, !tbaa !31
  br label %230

227:                                              ; preds = %221
  %228 = load ptr, ptr %9, align 8, !tbaa !34
  %229 = getelementptr inbounds i8, ptr %228, i64 -1
  br label %230

230:                                              ; preds = %227, %225
  %231 = phi ptr [ %226, %225 ], [ %229, %227 ]
  store ptr %231, ptr %1, align 8, !tbaa !33
  %232 = icmp eq i32 %219, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  store i32 5, ptr %39, align 4, !tbaa !27
  br label %235

234:                                              ; preds = %29
  br label %235

235:                                              ; preds = %147, %214, %233, %29, %230, %218, %119, %106, %94, %70, %58, %51, %21, %234
  %236 = phi i32 [ -2, %234 ], [ 0, %21 ], [ 0, %51 ], [ -2, %58 ], [ 0, %70 ], [ -2, %94 ], [ 0, %106 ], [ -2, %119 ], [ -2, %218 ], [ 0, %230 ], [ -1, %29 ], [ -1, %233 ], [ %216, %214 ], [ %167, %147 ]
  ret i32 %236
}

; Function Attrs: nounwind uwtable
define internal void @s_DCTD_release(ptr noundef %0) #1 {
  %2 = tail call i32 @gs_jpeg_destroy(ptr noundef %0) #8
  %3 = getelementptr inbounds %struct.stream_DCT_state_s, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.jpeg_decompress_data_s, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !58
  tail call void %9(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %6, ptr noundef nonnull @.str.1) #8
  br label %10

10:                                               ; preds = %8, %1
  %11 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !58
  %12 = load ptr, ptr %3, align 8, !tbaa !5
  tail call void %11(ptr noundef nonnull @gs_memory_default, ptr noundef %12, ptr noundef nonnull @.str.2) #8
  store ptr @s_DCTD_template, ptr %0, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @dctd_init_source(ptr nocapture readnone %0) #3 {
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @dctd_fill_input_buffer(ptr noundef %0) #1 {
  %2 = getelementptr inbounds i8, ptr %0, i64 896
  %3 = load i32, ptr %2, align 8, !tbaa !25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 5
  store i32 116, ptr %7, align 8, !tbaa !62
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %6, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  tail call void %9(ptr noundef nonnull %0, i32 noundef -1) #8
  %10 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !64
  store ptr @fake_eoi, ptr %11, align 8, !tbaa !34
  %12 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %11, i64 0, i32 1
  store i64 2, ptr %12, align 8, !tbaa !35
  %13 = getelementptr inbounds i8, ptr %0, i64 900
  store i32 1, ptr %13, align 4, !tbaa !26
  br label %14

14:                                               ; preds = %1, %5
  %15 = phi i32 [ 1, %5 ], [ 0, %1 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @dctd_skip_input_data(ptr nocapture noundef %0, i64 noundef %1) #4 {
  %3 = getelementptr inbounds %struct.jpeg_decompress_struct, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !64
  %5 = icmp sgt i64 %1, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_source_mgr, ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !35
  %9 = icmp ult i64 %8, %1
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = sub i64 %1, %8
  %12 = getelementptr inbounds i8, ptr %0, i64 888
  %13 = load i64, ptr %12, align 8, !tbaa !24
  %14 = add i64 %11, %13
  store i64 %14, ptr %12, align 8, !tbaa !24
  %15 = load ptr, ptr %4, align 8, !tbaa !34
  %16 = getelementptr inbounds i8, ptr %15, i64 %8
  store ptr %16, ptr %4, align 8, !tbaa !34
  br label %21

17:                                               ; preds = %6
  %18 = load ptr, ptr %4, align 8, !tbaa !34
  %19 = getelementptr inbounds i8, ptr %18, i64 %1
  store ptr %19, ptr %4, align 8, !tbaa !34
  %20 = sub i64 %8, %1
  br label %21

21:                                               ; preds = %10, %17
  %22 = phi i64 [ %20, %17 ], [ 0, %10 ]
  store i64 %22, ptr %7, align 8, !tbaa !35
  br label %23

23:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @dctd_term_source(ptr nocapture readnone %0) #3 {
  ret void
}

declare i32 @jpeg_resync_to_restart(ptr noundef, i32 noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare i32 @gs_jpeg_read_header(ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @gs_jpeg_start_decompress(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @gs_jpeg_read_scanlines(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare i32 @gs_jpeg_finish_decompress(ptr noundef) local_unnamed_addr #5

declare i32 @gs_jpeg_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!8 = !{!9, !10, i64 16}
!9 = !{!"jpeg_source_mgr", !10, i64 0, !11, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!9, !10, i64 24}
!13 = !{!9, !10, i64 32}
!14 = !{!9, !10, i64 48}
!15 = !{!9, !10, i64 40}
!16 = !{!17, !10, i64 464}
!17 = !{!"jpeg_decompress_data_s", !18, i64 0, !20, i64 56, !6, i64 224, !19, i64 424, !19, i64 428, !21, i64 432, !9, i64 1264, !11, i64 1320, !19, i64 1328, !19, i64 1332, !10, i64 1336, !19, i64 1344}
!18 = !{!"stream_template_s", !10, i64 0, !10, i64 8, !10, i64 16, !19, i64 24, !19, i64 28, !10, i64 32, !10, i64 40, !10, i64 48}
!19 = !{!"int", !6, i64 0}
!20 = !{!"jpeg_error_mgr", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !19, i64 40, !6, i64 44, !19, i64 124, !11, i64 128, !10, i64 136, !19, i64 144, !10, i64 152, !19, i64 160, !19, i64 164}
!21 = !{!"jpeg_decompress_struct", !10, i64 0, !10, i64 8, !10, i64 16, !19, i64 24, !19, i64 28, !10, i64 32, !19, i64 40, !19, i64 44, !19, i64 48, !19, i64 52, !19, i64 56, !19, i64 60, !19, i64 64, !22, i64 72, !19, i64 80, !19, i64 84, !19, i64 88, !19, i64 92, !19, i64 96, !19, i64 100, !19, i64 104, !19, i64 108, !19, i64 112, !19, i64 116, !19, i64 120, !19, i64 124, !19, i64 128, !19, i64 132, !19, i64 136, !19, i64 140, !19, i64 144, !19, i64 148, !10, i64 152, !19, i64 160, !19, i64 164, !19, i64 168, !19, i64 172, !19, i64 176, !10, i64 184, !6, i64 192, !6, i64 224, !6, i64 256, !19, i64 288, !10, i64 296, !19, i64 304, !19, i64 308, !6, i64 312, !6, i64 328, !6, i64 344, !19, i64 360, !19, i64 364, !6, i64 368, !23, i64 370, !23, i64 372, !19, i64 376, !6, i64 380, !19, i64 384, !19, i64 388, !19, i64 392, !19, i64 396, !19, i64 400, !10, i64 408, !19, i64 416, !6, i64 424, !19, i64 456, !19, i64 460, !19, i64 464, !6, i64 468, !19, i64 724, !19, i64 728, !19, i64 732, !19, i64 736, !19, i64 740, !10, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !10, i64 776, !10, i64 784, !10, i64 792, !10, i64 800, !10, i64 808, !10, i64 816, !10, i64 824}
!22 = !{!"double", !6, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!17, !11, i64 1320}
!25 = !{!17, !19, i64 1328}
!26 = !{!17, !19, i64 1332}
!27 = !{!28, !19, i64 68}
!28 = !{!"stream_DCT_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !29, i64 24, !30, i64 40, !19, i64 44, !19, i64 48, !6, i64 56, !19, i64 64, !19, i64 68}
!29 = !{!"gs_const_string_s", !10, i64 0, !19, i64 8}
!30 = !{!"float", !6, i64 0}
!31 = !{!32, !10, i64 8}
!32 = !{!"stream_cursor_read_s", !10, i64 0, !10, i64 8, !10, i64 16}
!33 = !{!32, !10, i64 0}
!34 = !{!9, !10, i64 0}
!35 = !{!9, !11, i64 8}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = !{!28, !19, i64 44}
!39 = !{!17, !19, i64 808}
!40 = !{!17, !19, i64 480}
!41 = !{!17, !19, i64 484}
!42 = !{!17, !19, i64 560}
!43 = !{!17, !19, i64 572}
!44 = !{!28, !19, i64 64}
!45 = !{!17, !19, i64 28}
!46 = !{!47, !10, i64 32}
!47 = !{!"gs_memory_s", !48, i64 0}
!48 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!49 = !{!17, !10, i64 1336}
!50 = !{!17, !19, i64 1344}
!51 = distinct !{!51, !37}
!52 = !{!53, !10, i64 16}
!53 = !{!"stream_cursor_write_s", !10, i64 0, !10, i64 8, !10, i64 16}
!54 = !{!53, !10, i64 8}
!55 = !{!17, !19, i64 564}
!56 = !{!17, !19, i64 592}
!57 = !{!10, !10, i64 0}
!58 = !{!47, !10, i64 88}
!59 = !{!60, !10, i64 0}
!60 = !{!"stream_state_s", !10, i64 0, !10, i64 8, !10, i64 16}
!61 = !{!21, !10, i64 0}
!62 = !{!20, !19, i64 40}
!63 = !{!20, !10, i64 8}
!64 = !{!21, !10, i64 32}
