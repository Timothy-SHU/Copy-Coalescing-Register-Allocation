; ModuleID = 'gdevm24.c'
source_filename = "gdevm24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@.str = private unnamed_addr constant [8 x i8] c"image24\00", align 1
@mem_true24_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @gx_default_rgb_map_rgb_color, ptr @gx_default_rgb_map_color_rgb, ptr @mem_true24_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_true24_copy_mono, ptr @mem_true24_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @mem_true24_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @mem_gray8_rgb24_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"image24w\00", align 1
@mem_true24_word_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @gx_default_rgb_map_rgb_color, ptr @gx_default_rgb_map_color_rgb, ptr @mem24_word_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem24_word_copy_mono, ptr @mem24_word_copy_color, ptr @gx_default_draw_line, ptr @mem_word_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @mem_open(ptr noundef) #0

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #0

declare i32 @gx_default_sync_output(ptr noundef) #0

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_close(ptr noundef) #0

declare i64 @gx_default_rgb_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare i32 @gx_default_rgb_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true24_fill_rectangle(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = lshr i64 %5, 16
  %8 = trunc i64 %7 to i8
  %9 = lshr i64 %5, 8
  %10 = trunc i64 %9 to i8
  %11 = trunc i64 %5 to i8
  %12 = or i32 %2, %1
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %16 = add nsw i32 %15, %3
  %17 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %18 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %19 = add nsw i32 %18, %4
  %20 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %21

21:                                               ; preds = %14, %6
  %22 = phi i32 [ %4, %6 ], [ %19, %14 ]
  %23 = phi i32 [ %3, %6 ], [ %16, %14 ]
  %24 = phi i32 [ %2, %6 ], [ %20, %14 ]
  %25 = phi i32 [ %1, %6 ], [ %17, %14 ]
  %26 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %27 = load i32, ptr %26, align 8, !tbaa !5
  %28 = sub nsw i32 %27, %23
  %29 = icmp sgt i32 %25, %28
  %30 = sub nsw i32 %27, %25
  %31 = select i1 %29, i32 %30, i32 %23
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %33 = load i32, ptr %32, align 4, !tbaa !16
  %34 = sub nsw i32 %33, %22
  %35 = icmp sgt i32 %24, %34
  %36 = sub nsw i32 %33, %24
  %37 = select i1 %35, i32 %36, i32 %22
  %38 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %39 = load i32, ptr %38, align 8, !tbaa !17
  %40 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = sext i32 %24 to i64
  %43 = getelementptr inbounds ptr, ptr %41, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !25
  %45 = mul nsw i32 %25, 3
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  %48 = icmp sgt i32 %31, 4
  br i1 %48, label %49, label %193

49:                                               ; preds = %21
  %50 = trunc i64 %7 to i32
  %51 = and i32 %50, 255
  %52 = trunc i64 %9 to i32
  %53 = and i32 %52, 255
  %54 = icmp eq i32 %51, %53
  %55 = trunc i64 %5 to i32
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %51, %56
  %58 = and i1 %54, %57
  br i1 %58, label %59, label %115

59:                                               ; preds = %49
  %60 = shl i64 %5, 24
  %61 = or i64 %60, %5
  %62 = trunc i64 %61 to i32
  %63 = icmp sgt i32 %37, 0
  br i1 %63, label %64, label %254

64:                                               ; preds = %59
  %65 = mul nsw i32 %31, 3
  %66 = add nsw i32 %65, -7
  %67 = sext i32 %66 to i64
  %68 = and i32 %25, 3
  %69 = zext i32 %39 to i64
  br label %70

70:                                               ; preds = %64, %112
  %71 = phi i32 [ %37, %64 ], [ %73, %112 ]
  %72 = phi ptr [ %47, %64 ], [ %113, %112 ]
  %73 = add nsw i32 %71, -1
  %74 = getelementptr inbounds i8, ptr %72, i64 %67
  switch i32 %68, label %83 [
    i32 3, label %75
    i32 2, label %77
    i32 1, label %80
    i32 0, label %84
  ]

75:                                               ; preds = %70
  %76 = getelementptr inbounds i8, ptr %72, i64 1
  store i8 %11, ptr %72, align 1, !tbaa !26
  br label %77

77:                                               ; preds = %70, %75
  %78 = phi ptr [ %72, %70 ], [ %76, %75 ]
  %79 = getelementptr inbounds i8, ptr %78, i64 1
  store i8 %11, ptr %78, align 1, !tbaa !26
  br label %80

80:                                               ; preds = %70, %77
  %81 = phi ptr [ %72, %70 ], [ %79, %77 ]
  %82 = getelementptr inbounds i8, ptr %81, i64 1
  store i8 %11, ptr %81, align 1, !tbaa !26
  br label %84

83:                                               ; preds = %70
  unreachable

84:                                               ; preds = %80, %70
  %85 = phi ptr [ %72, %70 ], [ %82, %80 ]
  %86 = getelementptr inbounds i32, ptr %85, i64 2
  store i32 %62, ptr %86, align 4, !tbaa !27
  %87 = getelementptr inbounds i32, ptr %85, i64 1
  store i32 %62, ptr %87, align 4, !tbaa !27
  store i32 %62, ptr %85, align 4, !tbaa !27
  %88 = getelementptr inbounds i8, ptr %85, i64 12
  %89 = icmp ult ptr %88, %74
  br i1 %89, label %90, label %95

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %93, %90 ], [ %88, %84 ]
  %92 = getelementptr inbounds i32, ptr %91, i64 1
  store i32 %62, ptr %92, align 4, !tbaa !27
  store i32 %62, ptr %91, align 4, !tbaa !27
  %93 = getelementptr inbounds i8, ptr %91, i64 8
  %94 = icmp ult ptr %93, %74
  br i1 %94, label %90, label %95, !llvm.loop !28

95:                                               ; preds = %90, %84
  %96 = phi ptr [ %88, %84 ], [ %93, %90 ]
  %97 = ptrtoint ptr %96 to i64
  %98 = ptrtoint ptr %74 to i64
  %99 = sub i64 %97, %98
  switch i64 %99, label %112 [
    i64 0, label %100
    i64 1, label %102
    i64 2, label %104
    i64 3, label %106
    i64 4, label %107
    i64 5, label %109
    i64 6, label %111
  ]

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %96, i64 6
  store i8 %11, ptr %101, align 1, !tbaa !26
  br label %102

102:                                              ; preds = %95, %100
  %103 = getelementptr inbounds i8, ptr %96, i64 5
  store i8 %11, ptr %103, align 1, !tbaa !26
  br label %104

104:                                              ; preds = %95, %102
  %105 = getelementptr inbounds i8, ptr %96, i64 4
  store i8 %11, ptr %105, align 1, !tbaa !26
  br label %106

106:                                              ; preds = %95, %104
  store i32 %62, ptr %96, align 4, !tbaa !27
  br label %112

107:                                              ; preds = %95
  %108 = getelementptr inbounds i8, ptr %96, i64 2
  store i8 %11, ptr %108, align 1, !tbaa !26
  br label %109

109:                                              ; preds = %95, %107
  %110 = getelementptr inbounds i8, ptr %96, i64 1
  store i8 %11, ptr %110, align 1, !tbaa !26
  br label %111

111:                                              ; preds = %95, %109
  store i8 %11, ptr %96, align 1, !tbaa !26
  br label %112

112:                                              ; preds = %111, %95, %106
  %113 = getelementptr inbounds i8, ptr %72, i64 %69
  %114 = icmp sgt i32 %71, 1
  br i1 %114, label %70, label %254, !llvm.loop !30

115:                                              ; preds = %49
  %116 = sub nsw i32 0, %25
  %117 = and i32 %116, 3
  %118 = sub nuw nsw i32 %31, %117
  %119 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30
  %120 = load i64, ptr %119, align 8, !tbaa !31
  %121 = icmp eq i64 %120, %5
  br i1 %121, label %122, label %129

122:                                              ; preds = %115
  %123 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30, i32 1
  %124 = load i32, ptr %123, align 8, !tbaa !32
  %125 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !33
  %127 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30, i32 3
  %128 = load i32, ptr %127, align 8, !tbaa !34
  br label %144

129:                                              ; preds = %115
  %130 = shl nuw i32 %51, 24
  %131 = shl nuw nsw i32 %56, 16
  %132 = or disjoint i32 %130, %131
  %133 = shl i32 %52, 8
  %134 = and i32 %133, 65280
  %135 = or disjoint i32 %132, %134
  %136 = or disjoint i32 %135, %51
  %137 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30, i32 1
  store i32 %136, ptr %137, align 8, !tbaa !32
  %138 = shl i32 %136, 8
  %139 = or disjoint i32 %138, %56
  %140 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30, i32 3
  store i32 %139, ptr %140, align 8, !tbaa !34
  %141 = shl i32 %139, 8
  %142 = or disjoint i32 %141, %53
  %143 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 30, i32 2
  store i32 %142, ptr %143, align 4, !tbaa !33
  store i64 %5, ptr %119, align 8, !tbaa !31
  br label %144

144:                                              ; preds = %129, %122
  %145 = phi i32 [ %124, %122 ], [ %136, %129 ]
  %146 = phi i32 [ %126, %122 ], [ %142, %129 ]
  %147 = phi i32 [ %128, %122 ], [ %139, %129 ]
  %148 = icmp sgt i32 %37, 0
  br i1 %148, label %149, label %254

149:                                              ; preds = %144
  %150 = icmp sgt i32 %118, 3
  %151 = zext i32 %39 to i64
  br label %152

152:                                              ; preds = %149, %190
  %153 = phi i32 [ %37, %149 ], [ %155, %190 ]
  %154 = phi ptr [ %47, %149 ], [ %191, %190 ]
  %155 = add nsw i32 %153, -1
  switch i32 %117, label %168 [
    i32 1, label %156
    i32 2, label %160
    i32 3, label %164
  ]

156:                                              ; preds = %152
  store i8 %8, ptr %154, align 1, !tbaa !26
  %157 = getelementptr inbounds i8, ptr %154, i64 1
  store i8 %10, ptr %157, align 1, !tbaa !26
  %158 = getelementptr inbounds i8, ptr %154, i64 2
  store i8 %11, ptr %158, align 1, !tbaa !26
  %159 = getelementptr inbounds i8, ptr %154, i64 3
  br label %168

160:                                              ; preds = %152
  store i8 %8, ptr %154, align 1, !tbaa !26
  %161 = getelementptr inbounds i8, ptr %154, i64 1
  store i8 %10, ptr %161, align 1, !tbaa !26
  %162 = getelementptr inbounds i8, ptr %154, i64 2
  store i32 %147, ptr %162, align 4, !tbaa !27
  %163 = getelementptr inbounds i8, ptr %154, i64 6
  br label %168

164:                                              ; preds = %152
  store i8 %8, ptr %154, align 1, !tbaa !26
  %165 = getelementptr inbounds i8, ptr %154, i64 1
  store i32 %146, ptr %165, align 4, !tbaa !27
  %166 = getelementptr inbounds i8, ptr %154, i64 5
  store i32 %147, ptr %166, align 4, !tbaa !27
  %167 = getelementptr inbounds i8, ptr %154, i64 9
  br label %168

168:                                              ; preds = %152, %164, %160, %156
  %169 = phi ptr [ %154, %152 ], [ %167, %164 ], [ %163, %160 ], [ %159, %156 ]
  br i1 %150, label %170, label %178

170:                                              ; preds = %168, %170
  %171 = phi i32 [ %176, %170 ], [ %118, %168 ]
  %172 = phi ptr [ %175, %170 ], [ %169, %168 ]
  store i32 %145, ptr %172, align 4, !tbaa !27
  %173 = getelementptr inbounds i8, ptr %172, i64 4
  store i32 %146, ptr %173, align 4, !tbaa !27
  %174 = getelementptr inbounds i8, ptr %172, i64 8
  store i32 %147, ptr %174, align 4, !tbaa !27
  %175 = getelementptr inbounds i8, ptr %172, i64 12
  %176 = add nsw i32 %171, -4
  %177 = icmp sgt i32 %171, 7
  br i1 %177, label %170, label %178, !llvm.loop !35

178:                                              ; preds = %170, %168
  %179 = phi ptr [ %169, %168 ], [ %175, %170 ]
  %180 = phi i32 [ %118, %168 ], [ %176, %170 ]
  switch i32 %180, label %190 [
    i32 1, label %181
    i32 2, label %183
    i32 3, label %185
  ]

181:                                              ; preds = %178
  store i8 %8, ptr %179, align 1, !tbaa !26
  %182 = getelementptr inbounds i8, ptr %179, i64 1
  store i8 %10, ptr %182, align 1, !tbaa !26
  br label %187

183:                                              ; preds = %178
  store i32 %145, ptr %179, align 4, !tbaa !27
  %184 = getelementptr inbounds i8, ptr %179, i64 4
  store i8 %10, ptr %184, align 1, !tbaa !26
  br label %187

185:                                              ; preds = %178
  store i32 %145, ptr %179, align 4, !tbaa !27
  %186 = getelementptr inbounds i8, ptr %179, i64 4
  store i32 %146, ptr %186, align 4, !tbaa !27
  br label %187

187:                                              ; preds = %181, %183, %185
  %188 = phi i64 [ 8, %185 ], [ 5, %183 ], [ 2, %181 ]
  %189 = getelementptr inbounds i8, ptr %179, i64 %188
  store i8 %11, ptr %189, align 1, !tbaa !26
  br label %190

190:                                              ; preds = %187, %178
  %191 = getelementptr inbounds i8, ptr %154, i64 %151
  %192 = icmp sgt i32 %153, 1
  br i1 %192, label %152, label %254, !llvm.loop !36

193:                                              ; preds = %21
  %194 = icmp sgt i32 %37, 0
  br i1 %194, label %195, label %254

195:                                              ; preds = %193
  switch i32 %31, label %254 [
    i32 4, label %202
    i32 3, label %200
    i32 2, label %198
    i32 1, label %196
  ]

196:                                              ; preds = %195
  %197 = zext i32 %39 to i64
  br label %246

198:                                              ; preds = %195
  %199 = zext i32 %39 to i64
  br label %235

200:                                              ; preds = %195
  %201 = zext i32 %39 to i64
  br label %221

202:                                              ; preds = %195
  %203 = zext i32 %39 to i64
  br label %204

204:                                              ; preds = %202, %204
  %205 = phi ptr [ %218, %204 ], [ %47, %202 ]
  %206 = phi i32 [ %219, %204 ], [ %37, %202 ]
  store i8 %8, ptr %205, align 1, !tbaa !26
  %207 = getelementptr inbounds i8, ptr %205, i64 3
  store i8 %8, ptr %207, align 1, !tbaa !26
  %208 = getelementptr inbounds i8, ptr %205, i64 6
  store i8 %8, ptr %208, align 1, !tbaa !26
  %209 = getelementptr inbounds i8, ptr %205, i64 9
  store i8 %8, ptr %209, align 1, !tbaa !26
  %210 = getelementptr inbounds i8, ptr %205, i64 1
  store i8 %10, ptr %210, align 1, !tbaa !26
  %211 = getelementptr inbounds i8, ptr %205, i64 4
  store i8 %10, ptr %211, align 1, !tbaa !26
  %212 = getelementptr inbounds i8, ptr %205, i64 7
  store i8 %10, ptr %212, align 1, !tbaa !26
  %213 = getelementptr inbounds i8, ptr %205, i64 10
  store i8 %10, ptr %213, align 1, !tbaa !26
  %214 = getelementptr inbounds i8, ptr %205, i64 2
  store i8 %11, ptr %214, align 1, !tbaa !26
  %215 = getelementptr inbounds i8, ptr %205, i64 5
  store i8 %11, ptr %215, align 1, !tbaa !26
  %216 = getelementptr inbounds i8, ptr %205, i64 8
  store i8 %11, ptr %216, align 1, !tbaa !26
  %217 = getelementptr inbounds i8, ptr %205, i64 11
  store i8 %11, ptr %217, align 1, !tbaa !26
  %218 = getelementptr inbounds i8, ptr %205, i64 %203
  %219 = add nsw i32 %206, -1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %254, label %204, !llvm.loop !37

221:                                              ; preds = %200, %221
  %222 = phi ptr [ %232, %221 ], [ %47, %200 ]
  %223 = phi i32 [ %233, %221 ], [ %37, %200 ]
  store i8 %8, ptr %222, align 1, !tbaa !26
  %224 = getelementptr inbounds i8, ptr %222, i64 3
  store i8 %8, ptr %224, align 1, !tbaa !26
  %225 = getelementptr inbounds i8, ptr %222, i64 6
  store i8 %8, ptr %225, align 1, !tbaa !26
  %226 = getelementptr inbounds i8, ptr %222, i64 1
  store i8 %10, ptr %226, align 1, !tbaa !26
  %227 = getelementptr inbounds i8, ptr %222, i64 4
  store i8 %10, ptr %227, align 1, !tbaa !26
  %228 = getelementptr inbounds i8, ptr %222, i64 7
  store i8 %10, ptr %228, align 1, !tbaa !26
  %229 = getelementptr inbounds i8, ptr %222, i64 2
  store i8 %11, ptr %229, align 1, !tbaa !26
  %230 = getelementptr inbounds i8, ptr %222, i64 5
  store i8 %11, ptr %230, align 1, !tbaa !26
  %231 = getelementptr inbounds i8, ptr %222, i64 8
  store i8 %11, ptr %231, align 1, !tbaa !26
  %232 = getelementptr inbounds i8, ptr %222, i64 %201
  %233 = add nsw i32 %223, -1
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %254, label %221, !llvm.loop !38

235:                                              ; preds = %198, %235
  %236 = phi ptr [ %243, %235 ], [ %47, %198 ]
  %237 = phi i32 [ %244, %235 ], [ %37, %198 ]
  store i8 %8, ptr %236, align 1, !tbaa !26
  %238 = getelementptr inbounds i8, ptr %236, i64 3
  store i8 %8, ptr %238, align 1, !tbaa !26
  %239 = getelementptr inbounds i8, ptr %236, i64 1
  store i8 %10, ptr %239, align 1, !tbaa !26
  %240 = getelementptr inbounds i8, ptr %236, i64 4
  store i8 %10, ptr %240, align 1, !tbaa !26
  %241 = getelementptr inbounds i8, ptr %236, i64 2
  store i8 %11, ptr %241, align 1, !tbaa !26
  %242 = getelementptr inbounds i8, ptr %236, i64 5
  store i8 %11, ptr %242, align 1, !tbaa !26
  %243 = getelementptr inbounds i8, ptr %236, i64 %199
  %244 = add nsw i32 %237, -1
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %254, label %235, !llvm.loop !39

246:                                              ; preds = %196, %246
  %247 = phi ptr [ %251, %246 ], [ %47, %196 ]
  %248 = phi i32 [ %252, %246 ], [ %37, %196 ]
  store i8 %8, ptr %247, align 1, !tbaa !26
  %249 = getelementptr inbounds i8, ptr %247, i64 1
  store i8 %10, ptr %249, align 1, !tbaa !26
  %250 = getelementptr inbounds i8, ptr %247, i64 2
  store i8 %11, ptr %250, align 1, !tbaa !26
  %251 = getelementptr inbounds i8, ptr %247, i64 %197
  %252 = add nsw i32 %248, -1
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %246, !llvm.loop !40

254:                                              ; preds = %246, %235, %221, %204, %190, %112, %144, %59, %193, %195
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true24_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = or i32 %6, %5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %16 = add nsw i32 %15, %7
  %17 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %18 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %19 = sub nsw i32 %2, %18
  %20 = icmp slt i32 %6, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = add nsw i32 %8, %6
  %23 = mul nsw i32 %6, %3
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  br label %27

27:                                               ; preds = %14, %21, %11
  %28 = phi i32 [ %22, %21 ], [ %8, %14 ], [ %8, %11 ]
  %29 = phi i32 [ %16, %21 ], [ %16, %14 ], [ %7, %11 ]
  %30 = phi i32 [ 0, %21 ], [ %6, %14 ], [ %6, %11 ]
  %31 = phi i32 [ %17, %21 ], [ %17, %14 ], [ %5, %11 ]
  %32 = phi i32 [ %19, %21 ], [ %19, %14 ], [ %2, %11 ]
  %33 = phi ptr [ %26, %21 ], [ %1, %14 ], [ %1, %11 ]
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !5
  %36 = sub nsw i32 %35, %29
  %37 = icmp sgt i32 %31, %36
  %38 = sub nsw i32 %35, %31
  %39 = select i1 %37, i32 %38, i32 %29
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !16
  %42 = sub nsw i32 %41, %28
  %43 = icmp sgt i32 %30, %42
  %44 = sub nsw i32 %41, %30
  %45 = select i1 %43, i32 %44, i32 %28
  %46 = icmp slt i32 %39, 1
  %47 = icmp slt i32 %45, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %265, label %49

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !17
  %52 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %53 = load ptr, ptr %52, align 8, !tbaa !24
  %54 = sext i32 %30 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !25
  %57 = mul nsw i32 %31, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %56, i64 %58
  %60 = ashr i32 %32, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %33, i64 %61
  %63 = and i32 %32, 7
  %64 = lshr exact i32 128, %63
  %65 = icmp eq i64 %9, -1
  br i1 %65, label %118, label %66

66:                                               ; preds = %49
  %67 = icmp sgt i32 %45, 0
  br i1 %67, label %68, label %265

68:                                               ; preds = %66
  %69 = icmp ne i64 %10, -1
  %70 = sext i32 %3 to i64
  %71 = zext i32 %51 to i64
  br label %72

72:                                               ; preds = %68, %113
  %73 = phi i32 [ %45, %68 ], [ %114, %113 ]
  %74 = phi ptr [ %62, %68 ], [ %115, %113 ]
  %75 = phi ptr [ %59, %68 ], [ %116, %113 ]
  %76 = getelementptr inbounds i8, ptr %74, i64 1
  %77 = load i8, ptr %74, align 1, !tbaa !26
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %107, %72
  %80 = phi ptr [ %75, %72 ], [ %100, %107 ]
  %81 = phi ptr [ %76, %72 ], [ %108, %107 ]
  %82 = phi i32 [ %78, %72 ], [ %109, %107 ]
  %83 = phi i32 [ %64, %72 ], [ %110, %107 ]
  %84 = phi i32 [ %39, %72 ], [ %111, %107 ]
  %85 = and i32 %83, %82
  %86 = icmp eq i32 %85, 0
  %87 = or i1 %86, %69
  br i1 %87, label %88, label %99

88:                                               ; preds = %79
  %89 = select i1 %86, i64 %9, i64 %10
  %90 = trunc i64 %89 to i8
  %91 = select i1 %86, i64 %9, i64 %10
  %92 = lshr i64 %91, 8
  %93 = trunc i64 %92 to i8
  %94 = select i1 %86, i64 %9, i64 %10
  %95 = lshr i64 %94, 16
  %96 = trunc i64 %95 to i8
  store i8 %96, ptr %80, align 1, !tbaa !26
  %97 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %93, ptr %97, align 1, !tbaa !26
  %98 = getelementptr inbounds i8, ptr %80, i64 2
  store i8 %90, ptr %98, align 1, !tbaa !26
  br label %99

99:                                               ; preds = %79, %88
  %100 = getelementptr inbounds i8, ptr %80, i64 3
  %101 = lshr i32 %83, 1
  %102 = icmp ult i32 %83, 2
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, ptr %81, i64 1
  %105 = load i8, ptr %81, align 1, !tbaa !26
  %106 = zext i8 %105 to i32
  br label %107

107:                                              ; preds = %99, %103
  %108 = phi ptr [ %104, %103 ], [ %81, %99 ]
  %109 = phi i32 [ %106, %103 ], [ %82, %99 ]
  %110 = phi i32 [ 128, %103 ], [ %101, %99 ]
  %111 = add nsw i32 %84, -1
  %112 = icmp sgt i32 %84, 1
  br i1 %112, label %79, label %113, !llvm.loop !41

113:                                              ; preds = %107
  %114 = add nsw i32 %73, -1
  %115 = getelementptr inbounds i8, ptr %74, i64 %70
  %116 = getelementptr inbounds i8, ptr %75, i64 %71
  %117 = icmp sgt i32 %73, 1
  br i1 %117, label %72, label %265, !llvm.loop !42

118:                                              ; preds = %49
  %119 = icmp eq i64 %10, -1
  br i1 %119, label %265, label %120

120:                                              ; preds = %118
  %121 = lshr i64 %10, 16
  %122 = trunc i64 %121 to i8
  %123 = lshr i64 %10, 8
  %124 = trunc i64 %123 to i8
  %125 = trunc i64 %10 to i8
  %126 = shl nuw nsw i32 %64, 1
  %127 = add nuw nsw i32 %39, %63
  %128 = icmp sgt i32 %127, 8
  %129 = lshr i32 %126, %39
  %130 = sub nsw i32 0, %129
  %131 = select i1 %128, i32 -1, i32 %130
  %132 = add nsw i32 %131, %126
  %133 = icmp sgt i32 %45, 0
  br i1 %133, label %134, label %265

134:                                              ; preds = %120
  %135 = sub nuw nsw i32 8, %63
  %136 = select i1 %128, i32 %135, i32 %39
  %137 = mul nsw i32 %136, 3
  %138 = sub nsw i32 %39, %136
  %139 = sext i32 %137 to i64
  %140 = icmp sgt i32 %138, 7
  %141 = sext i32 %3 to i64
  %142 = zext i32 %51 to i64
  br label %143

143:                                              ; preds = %134, %261
  %144 = phi i32 [ %45, %134 ], [ %147, %261 ]
  %145 = phi ptr [ %62, %134 ], [ %262, %261 ]
  %146 = phi ptr [ %59, %134 ], [ %263, %261 ]
  %147 = add nsw i32 %144, -1
  %148 = load i8, ptr %145, align 1, !tbaa !26
  %149 = zext i8 %148 to i32
  %150 = and i32 %132, %149
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %165, label %152

152:                                              ; preds = %143, %160
  %153 = phi ptr [ %161, %160 ], [ %146, %143 ]
  %154 = phi i32 [ %162, %160 ], [ %64, %143 ]
  %155 = and i32 %154, %150
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %152
  store i8 %122, ptr %153, align 1, !tbaa !26
  %158 = getelementptr inbounds i8, ptr %153, i64 1
  store i8 %124, ptr %158, align 1, !tbaa !26
  %159 = getelementptr inbounds i8, ptr %153, i64 2
  store i8 %125, ptr %159, align 1, !tbaa !26
  br label %160

160:                                              ; preds = %157, %152
  %161 = getelementptr inbounds i8, ptr %153, i64 3
  %162 = lshr i32 %154, 1
  %163 = and i32 %162, %132
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %167, label %152, !llvm.loop !43

165:                                              ; preds = %143
  %166 = getelementptr inbounds i8, ptr %146, i64 %139
  br label %167

167:                                              ; preds = %160, %165
  %168 = phi ptr [ %166, %165 ], [ %161, %160 ]
  %169 = getelementptr inbounds i8, ptr %145, i64 1
  br i1 %140, label %170, label %239

170:                                              ; preds = %167, %234
  %171 = phi ptr [ %237, %234 ], [ %169, %167 ]
  %172 = phi i32 [ %236, %234 ], [ %138, %167 ]
  %173 = phi ptr [ %235, %234 ], [ %168, %167 ]
  %174 = load i8, ptr %171, align 1, !tbaa !26
  %175 = zext i8 %174 to i32
  %176 = icmp ult i8 %174, 16
  br i1 %176, label %203, label %177

177:                                              ; preds = %170
  %178 = icmp sgt i8 %174, -1
  br i1 %178, label %182, label %179

179:                                              ; preds = %177
  store i8 %122, ptr %173, align 1, !tbaa !26
  %180 = getelementptr inbounds i8, ptr %173, i64 1
  store i8 %124, ptr %180, align 1, !tbaa !26
  %181 = getelementptr inbounds i8, ptr %173, i64 2
  store i8 %125, ptr %181, align 1, !tbaa !26
  br label %182

182:                                              ; preds = %179, %177
  %183 = and i32 %175, 64
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %189, label %185

185:                                              ; preds = %182
  %186 = getelementptr inbounds i8, ptr %173, i64 3
  store i8 %122, ptr %186, align 1, !tbaa !26
  %187 = getelementptr inbounds i8, ptr %173, i64 4
  store i8 %124, ptr %187, align 1, !tbaa !26
  %188 = getelementptr inbounds i8, ptr %173, i64 5
  store i8 %125, ptr %188, align 1, !tbaa !26
  br label %189

189:                                              ; preds = %185, %182
  %190 = and i32 %175, 32
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %196, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds i8, ptr %173, i64 6
  store i8 %122, ptr %193, align 1, !tbaa !26
  %194 = getelementptr inbounds i8, ptr %173, i64 7
  store i8 %124, ptr %194, align 1, !tbaa !26
  %195 = getelementptr inbounds i8, ptr %173, i64 8
  store i8 %125, ptr %195, align 1, !tbaa !26
  br label %196

196:                                              ; preds = %192, %189
  %197 = and i32 %175, 16
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %173, i64 9
  store i8 %122, ptr %200, align 1, !tbaa !26
  %201 = getelementptr inbounds i8, ptr %173, i64 10
  store i8 %124, ptr %201, align 1, !tbaa !26
  %202 = getelementptr inbounds i8, ptr %173, i64 11
  store i8 %125, ptr %202, align 1, !tbaa !26
  br label %203

203:                                              ; preds = %196, %199, %170
  %204 = and i32 %175, 15
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %234, label %206

206:                                              ; preds = %203
  %207 = and i32 %175, 8
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %213, label %209

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %173, i64 12
  store i8 %122, ptr %210, align 1, !tbaa !26
  %211 = getelementptr inbounds i8, ptr %173, i64 13
  store i8 %124, ptr %211, align 1, !tbaa !26
  %212 = getelementptr inbounds i8, ptr %173, i64 14
  store i8 %125, ptr %212, align 1, !tbaa !26
  br label %213

213:                                              ; preds = %209, %206
  %214 = and i32 %175, 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %220, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds i8, ptr %173, i64 15
  store i8 %122, ptr %217, align 1, !tbaa !26
  %218 = getelementptr inbounds i8, ptr %173, i64 16
  store i8 %124, ptr %218, align 1, !tbaa !26
  %219 = getelementptr inbounds i8, ptr %173, i64 17
  store i8 %125, ptr %219, align 1, !tbaa !26
  br label %220

220:                                              ; preds = %216, %213
  %221 = and i32 %175, 2
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %227, label %223

223:                                              ; preds = %220
  %224 = getelementptr inbounds i8, ptr %173, i64 18
  store i8 %122, ptr %224, align 1, !tbaa !26
  %225 = getelementptr inbounds i8, ptr %173, i64 19
  store i8 %124, ptr %225, align 1, !tbaa !26
  %226 = getelementptr inbounds i8, ptr %173, i64 20
  store i8 %125, ptr %226, align 1, !tbaa !26
  br label %227

227:                                              ; preds = %223, %220
  %228 = and i32 %175, 1
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %234, label %230

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %173, i64 21
  store i8 %122, ptr %231, align 1, !tbaa !26
  %232 = getelementptr inbounds i8, ptr %173, i64 22
  store i8 %124, ptr %232, align 1, !tbaa !26
  %233 = getelementptr inbounds i8, ptr %173, i64 23
  store i8 %125, ptr %233, align 1, !tbaa !26
  br label %234

234:                                              ; preds = %227, %230, %203
  %235 = getelementptr inbounds i8, ptr %173, i64 24
  %236 = add nsw i32 %172, -8
  %237 = getelementptr inbounds i8, ptr %171, i64 1
  %238 = icmp sgt i32 %172, 15
  br i1 %238, label %170, label %239, !llvm.loop !44

239:                                              ; preds = %234, %167
  %240 = phi ptr [ %168, %167 ], [ %235, %234 ]
  %241 = phi i32 [ %138, %167 ], [ %236, %234 ]
  %242 = phi ptr [ %169, %167 ], [ %237, %234 ]
  %243 = icmp sgt i32 %241, 0
  br i1 %243, label %244, label %261

244:                                              ; preds = %239
  %245 = load i8, ptr %242, align 1, !tbaa !26
  %246 = zext i8 %245 to i32
  br label %247

247:                                              ; preds = %256, %244
  %248 = phi ptr [ %240, %244 ], [ %257, %256 ]
  %249 = phi i32 [ %241, %244 ], [ %259, %256 ]
  %250 = phi i32 [ 128, %244 ], [ %258, %256 ]
  %251 = and i32 %250, %246
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %256, label %253

253:                                              ; preds = %247
  store i8 %122, ptr %248, align 1, !tbaa !26
  %254 = getelementptr inbounds i8, ptr %248, i64 1
  store i8 %124, ptr %254, align 1, !tbaa !26
  %255 = getelementptr inbounds i8, ptr %248, i64 2
  store i8 %125, ptr %255, align 1, !tbaa !26
  br label %256

256:                                              ; preds = %253, %247
  %257 = getelementptr inbounds i8, ptr %248, i64 3
  %258 = lshr i32 %250, 1
  %259 = add nsw i32 %249, -1
  %260 = icmp sgt i32 %249, 1
  br i1 %260, label %247, label %261, !llvm.loop !45

261:                                              ; preds = %256, %239
  %262 = getelementptr inbounds i8, ptr %145, i64 %141
  %263 = getelementptr inbounds i8, ptr %146, i64 %142
  %264 = icmp sgt i32 %144, 1
  br i1 %264, label %143, label %265, !llvm.loop !46

265:                                              ; preds = %113, %261, %66, %120, %118, %27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_true24_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2 {
  %10 = or i32 %6, %5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %14 = sub nsw i32 %2, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %16 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %17 = add nsw i32 %16, %7
  %18 = icmp slt i32 %6, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = add nsw i32 %8, %6
  %21 = mul nsw i32 %6, %3
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %12, %19, %9
  %26 = phi ptr [ %24, %19 ], [ %1, %12 ], [ %1, %9 ]
  %27 = phi i32 [ %14, %19 ], [ %14, %12 ], [ %2, %9 ]
  %28 = phi i32 [ %15, %19 ], [ %15, %12 ], [ %5, %9 ]
  %29 = phi i32 [ 0, %19 ], [ %6, %12 ], [ %6, %9 ]
  %30 = phi i32 [ %17, %19 ], [ %17, %12 ], [ %7, %9 ]
  %31 = phi i32 [ %20, %19 ], [ %8, %12 ], [ %8, %9 ]
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !5
  %34 = sub nsw i32 %33, %30
  %35 = icmp sgt i32 %28, %34
  %36 = sub nsw i32 %33, %28
  %37 = select i1 %35, i32 %36, i32 %30
  %38 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !16
  %40 = sub nsw i32 %39, %31
  %41 = icmp sgt i32 %29, %40
  %42 = sub nsw i32 %39, %29
  %43 = select i1 %41, i32 %42, i32 %31
  %44 = icmp slt i32 %37, 1
  %45 = icmp slt i32 %43, 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %62, label %47

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %49 = load ptr, ptr %48, align 8, !tbaa !24
  %50 = sext i32 %29 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = mul nsw i32 %28, 3
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %57 = load i32, ptr %56, align 8, !tbaa !17
  %58 = mul nsw i32 %27, 3
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %26, i64 %59
  %61 = mul nsw i32 %37, 3
  tail call void @bytes_copy_rectangle(ptr noundef %55, i32 noundef %57, ptr noundef %60, i32 noundef %3, i32 noundef %61, i32 noundef %43) #4
  br label %62

62:                                               ; preds = %25, %47
  ret i32 0
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

declare i32 @mem_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) #0

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) #0

declare i64 @gx_default_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #0

declare ptr @gx_forward_get_xfont_device(ptr noundef) #0

declare i64 @gx_default_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare ptr @gx_forward_get_page_device(ptr noundef) #0

declare i32 @gx_default_get_alpha_bits(ptr noundef, i32 noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true24_copy_alpha(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #1 {
  %12 = lshr i64 %9, 16
  %13 = trunc i64 %12 to i8
  %14 = lshr i64 %9, 8
  %15 = trunc i64 %14 to i8
  %16 = trunc i64 %9 to i8
  %17 = or i32 %6, %5
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %11
  %20 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %21 = add nsw i32 %20, %7
  %22 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %23 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %24 = sub nsw i32 %2, %23
  %25 = icmp slt i32 %6, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = add nsw i32 %8, %6
  %28 = mul nsw i32 %6, %3
  %29 = sext i32 %28 to i64
  %30 = sub nsw i64 0, %29
  %31 = getelementptr inbounds i8, ptr %1, i64 %30
  br label %32

32:                                               ; preds = %19, %26, %11
  %33 = phi i32 [ %27, %26 ], [ %8, %19 ], [ %8, %11 ]
  %34 = phi i32 [ %21, %26 ], [ %21, %19 ], [ %7, %11 ]
  %35 = phi i32 [ 0, %26 ], [ %6, %19 ], [ %6, %11 ]
  %36 = phi i32 [ %22, %26 ], [ %22, %19 ], [ %5, %11 ]
  %37 = phi i32 [ %24, %26 ], [ %24, %19 ], [ %2, %11 ]
  %38 = phi ptr [ %31, %26 ], [ %1, %19 ], [ %1, %11 ]
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !5
  %41 = sub nsw i32 %40, %34
  %42 = icmp sgt i32 %36, %41
  %43 = sub nsw i32 %40, %36
  %44 = select i1 %42, i32 %43, i32 %34
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !16
  %47 = sub nsw i32 %46, %33
  %48 = icmp sgt i32 %35, %47
  %49 = sub nsw i32 %46, %35
  %50 = select i1 %48, i32 %49, i32 %33
  %51 = icmp slt i32 %44, 1
  %52 = icmp slt i32 %50, 1
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %143, label %54

54:                                               ; preds = %32
  %55 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !17
  %57 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %58 = load ptr, ptr %57, align 8, !tbaa !24
  %59 = sext i32 %35 to i64
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !25
  %62 = mul nsw i32 %36, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, ptr %61, i64 %63
  %65 = add nsw i32 %44, %37
  %66 = icmp eq i32 %10, 2
  %67 = trunc i64 %12 to i32
  %68 = and i32 %67, 255
  %69 = trunc i64 %14 to i32
  %70 = and i32 %69, 255
  %71 = trunc i64 %9 to i32
  %72 = and i32 %71, 255
  %73 = sext i32 %3 to i64
  %74 = zext i32 %56 to i64
  br label %75

75:                                               ; preds = %54, %139
  %76 = phi i32 [ %50, %54 ], [ %79, %139 ]
  %77 = phi ptr [ %64, %54 ], [ %141, %139 ]
  %78 = phi ptr [ %38, %54 ], [ %140, %139 ]
  %79 = add nsw i32 %76, -1
  br label %80

80:                                               ; preds = %75, %135
  %81 = phi i32 [ %136, %135 ], [ %37, %75 ]
  %82 = phi ptr [ %137, %135 ], [ %77, %75 ]
  br i1 %66, label %83, label %95

83:                                               ; preds = %80
  %84 = ashr i32 %81, 2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %78, i64 %85
  %87 = load i8, ptr %86, align 1, !tbaa !26
  %88 = zext i8 %87 to i32
  %89 = shl i32 %81, 1
  %90 = and i32 %89, 6
  %91 = xor i32 %90, 6
  %92 = lshr i32 %88, %91
  %93 = and i32 %92, 3
  %94 = mul nuw nsw i32 %93, 5
  br label %106

95:                                               ; preds = %80
  %96 = ashr i32 %81, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %78, i64 %97
  %99 = load i8, ptr %98, align 1, !tbaa !26
  %100 = zext i8 %99 to i32
  %101 = and i32 %81, 1
  %102 = icmp eq i32 %101, 0
  %103 = and i32 %100, 15
  %104 = lshr i32 %100, 4
  %105 = select i1 %102, i32 %104, i32 %103
  br label %106

106:                                              ; preds = %95, %83
  %107 = phi i32 [ %94, %83 ], [ %105, %95 ]
  switch i32 %107, label %111 [
    i32 15, label %108
    i32 0, label %135
  ]

108:                                              ; preds = %106
  store i8 %13, ptr %82, align 1, !tbaa !26
  %109 = getelementptr inbounds i8, ptr %82, i64 1
  store i8 %15, ptr %109, align 1, !tbaa !26
  %110 = getelementptr inbounds i8, ptr %82, i64 2
  store i8 %16, ptr %110, align 1, !tbaa !26
  br label %135

111:                                              ; preds = %106
  %112 = load i8, ptr %82, align 1, !tbaa !26
  %113 = zext i8 %112 to i32
  %114 = sub nsw i32 %68, %113
  %115 = mul nsw i32 %114, %107
  %116 = sdiv i32 %115, 15
  %117 = trunc i32 %116 to i8
  %118 = add i8 %112, %117
  store i8 %118, ptr %82, align 1, !tbaa !26
  %119 = getelementptr inbounds i8, ptr %82, i64 1
  %120 = load i8, ptr %119, align 1, !tbaa !26
  %121 = zext i8 %120 to i32
  %122 = sub nsw i32 %70, %121
  %123 = mul nsw i32 %122, %107
  %124 = sdiv i32 %123, 15
  %125 = trunc i32 %124 to i8
  %126 = add i8 %120, %125
  store i8 %126, ptr %119, align 1, !tbaa !26
  %127 = getelementptr inbounds i8, ptr %82, i64 2
  %128 = load i8, ptr %127, align 1, !tbaa !26
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %72, %129
  %131 = mul nsw i32 %130, %107
  %132 = sdiv i32 %131, 15
  %133 = trunc i32 %132 to i8
  %134 = add i8 %128, %133
  store i8 %134, ptr %127, align 1, !tbaa !26
  br label %135

135:                                              ; preds = %106, %111, %108
  %136 = add nsw i32 %81, 1
  %137 = getelementptr inbounds i8, ptr %82, i64 3
  %138 = icmp slt i32 %136, %65
  br i1 %138, label %80, label %139, !llvm.loop !47

139:                                              ; preds = %135
  %140 = getelementptr inbounds i8, ptr %78, i64 %73
  %141 = getelementptr inbounds i8, ptr %77, i64 %74
  %142 = icmp sgt i32 %76, 1
  br i1 %142, label %75, label %143, !llvm.loop !48

143:                                              ; preds = %139, %32
  ret i32 0
}

declare i32 @gx_default_get_band(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @gx_default_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #0

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_gray8_rgb24_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem24_word_fill_rectangle(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #2 {
  %7 = or i32 %2, %1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %11 = add nsw i32 %10, %3
  %12 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %13 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %14 = add nsw i32 %13, %4
  %15 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ %3, %6 ], [ %11, %9 ]
  %18 = phi i32 [ %4, %6 ], [ %14, %9 ]
  %19 = phi i32 [ %2, %6 ], [ %15, %9 ]
  %20 = phi i32 [ %1, %6 ], [ %12, %9 ]
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !5
  %23 = sub nsw i32 %22, %17
  %24 = icmp sgt i32 %20, %23
  %25 = sub nsw i32 %22, %20
  %26 = select i1 %24, i32 %25, i32 %17
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = sub nsw i32 %28, %18
  %30 = icmp sgt i32 %19, %29
  %31 = sub nsw i32 %28, %19
  %32 = select i1 %30, i32 %31, i32 %18
  %33 = icmp slt i32 %26, 1
  %34 = icmp slt i32 %32, 1
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !24
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !25
  %42 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %43 = load i32, ptr %42, align 8, !tbaa !17
  %44 = mul nsw i32 %20, 24
  %45 = mul nsw i32 %26, 24
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %32, i32 noundef 1) #4
  %46 = tail call i32 @mem_true24_fill_rectangle(ptr noundef %0, i32 noundef %20, i32 noundef %19, i32 noundef %26, i32 noundef %32, i64 noundef %5)
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %32, i32 noundef 0) #4
  br label %47

47:                                               ; preds = %16, %36
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem24_word_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #2 {
  %12 = or i32 %6, %5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %16 = add nsw i32 %15, %7
  %17 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %18 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %19 = sub nsw i32 %2, %18
  %20 = icmp slt i32 %6, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = add nsw i32 %8, %6
  %23 = mul nsw i32 %6, %3
  %24 = sext i32 %23 to i64
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  br label %27

27:                                               ; preds = %14, %21, %11
  %28 = phi i32 [ 0, %21 ], [ %6, %14 ], [ %6, %11 ]
  %29 = phi i32 [ %16, %21 ], [ %16, %14 ], [ %7, %11 ]
  %30 = phi i32 [ %22, %21 ], [ %8, %14 ], [ %8, %11 ]
  %31 = phi i32 [ %17, %21 ], [ %17, %14 ], [ %5, %11 ]
  %32 = phi i32 [ %19, %21 ], [ %19, %14 ], [ %2, %11 ]
  %33 = phi ptr [ %26, %21 ], [ %1, %14 ], [ %1, %11 ]
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !5
  %36 = sub nsw i32 %35, %29
  %37 = icmp sgt i32 %31, %36
  %38 = sub nsw i32 %35, %31
  %39 = select i1 %37, i32 %38, i32 %29
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !16
  %42 = sub nsw i32 %41, %30
  %43 = icmp sgt i32 %28, %42
  %44 = sub nsw i32 %41, %28
  %45 = select i1 %43, i32 %44, i32 %30
  %46 = icmp slt i32 %39, 1
  %47 = icmp slt i32 %45, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %51 = load ptr, ptr %50, align 8, !tbaa !24
  %52 = sext i32 %28 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !25
  %55 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !17
  %57 = icmp ne i64 %9, -1
  %58 = icmp ne i64 %10, -1
  %59 = and i1 %57, %58
  %60 = zext i1 %59 to i32
  %61 = mul nsw i32 %31, 24
  %62 = mul nsw i32 %39, 24
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %45, i32 noundef %60) #4
  %63 = tail call i32 @mem_true24_copy_mono(ptr noundef %0, ptr noundef %33, i32 noundef %32, i32 noundef %3, i64 poison, i32 noundef %31, i32 noundef %28, i32 noundef %39, i32 noundef %45, i64 noundef %9, i64 noundef %10)
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %45, i32 noundef 0) #4
  br label %64

64:                                               ; preds = %27, %49
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem24_word_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2 {
  %10 = or i32 %6, %5
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %14 = sub nsw i32 %2, %13
  %15 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %16 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %17 = add nsw i32 %16, %7
  %18 = icmp slt i32 %6, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = add nsw i32 %8, %6
  %21 = mul nsw i32 %6, %3
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 0, %22
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  br label %25

25:                                               ; preds = %12, %19, %9
  %26 = phi i32 [ %14, %19 ], [ %14, %12 ], [ %2, %9 ]
  %27 = phi i32 [ %15, %19 ], [ %15, %12 ], [ %5, %9 ]
  %28 = phi i32 [ 0, %19 ], [ %6, %12 ], [ %6, %9 ]
  %29 = phi i32 [ %17, %19 ], [ %17, %12 ], [ %7, %9 ]
  %30 = phi i32 [ %20, %19 ], [ %8, %12 ], [ %8, %9 ]
  %31 = phi ptr [ %24, %19 ], [ %1, %12 ], [ %1, %9 ]
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %33 = load i32, ptr %32, align 8, !tbaa !5
  %34 = sub nsw i32 %33, %29
  %35 = icmp sgt i32 %27, %34
  %36 = sub nsw i32 %33, %27
  %37 = select i1 %35, i32 %36, i32 %29
  %38 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %39 = load i32, ptr %38, align 4, !tbaa !16
  %40 = sub nsw i32 %39, %30
  %41 = icmp sgt i32 %28, %40
  %42 = sub nsw i32 %39, %28
  %43 = select i1 %41, i32 %42, i32 %30
  %44 = icmp slt i32 %37, 1
  %45 = icmp slt i32 %43, 1
  %46 = select i1 %44, i1 true, i1 %45
  br i1 %46, label %64, label %47

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %49 = load ptr, ptr %48, align 8, !tbaa !24
  %50 = sext i32 %28 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %54 = load i32, ptr %53, align 8, !tbaa !17
  %55 = mul nsw i32 %27, 24
  %56 = mul nsw i32 %37, 24
  tail call void @mem_swap_byte_rect(ptr noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %43, i32 noundef 1) #4
  %57 = mul nsw i32 %27, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %52, i64 %58
  %60 = mul nsw i32 %26, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %31, i64 %61
  %63 = mul nsw i32 %37, 3
  tail call void @bytes_copy_rectangle(ptr noundef %59, i32 noundef %54, ptr noundef %62, i32 noundef %3, i32 noundef %63, i32 noundef %43) #4
  tail call void @mem_swap_byte_rect(ptr noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %43, i32 noundef 0) #4
  br label %64

64:                                               ; preds = %25, %47
  ret i32 0
}

declare i32 @mem_word_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #0

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @bytes_copy_rectangle(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @mem_swap_byte_rect(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 64}
!6 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!6, !7, i64 68}
!17 = !{!18, !7, i64 520}
!18 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !19, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !21, i64 552, !22, i64 568, !23, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !13, i64 624}
!19 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!22 = !{!"_c24", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!23 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!24 = !{!18, !10, i64 536}
!25 = !{!10, !10, i64 0}
!26 = !{!8, !8, i64 0}
!27 = !{!7, !7, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !29}
!31 = !{!18, !13, i64 568}
!32 = !{!18, !7, i64 576}
!33 = !{!18, !7, i64 580}
!34 = !{!18, !7, i64 584}
!35 = distinct !{!35, !29}
!36 = distinct !{!36, !29}
!37 = distinct !{!37, !29}
!38 = distinct !{!38, !29}
!39 = distinct !{!39, !29}
!40 = distinct !{!40, !29}
!41 = distinct !{!41, !29}
!42 = distinct !{!42, !29}
!43 = distinct !{!43, !29}
!44 = distinct !{!44, !29}
!45 = distinct !{!45, !29}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
