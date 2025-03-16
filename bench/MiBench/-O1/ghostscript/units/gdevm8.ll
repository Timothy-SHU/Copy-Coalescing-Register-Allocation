; ModuleID = 'gdevm8.c'
source_filename = "gdevm8.c"
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

@.str = private unnamed_addr constant [7 x i8] c"image8\00", align 1
@mem_mapped8_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 8, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_mapped_map_rgb_color, ptr @mem_mapped_map_color_rgb, ptr @mem_mapped8_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_mapped8_copy_mono, ptr @mem_mapped8_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @mem_gray8_rgb24_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"image8w\00", align 1
@mem_mapped8_word_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 8, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_mapped_map_rgb_color, ptr @mem_mapped_map_color_rgb, ptr @mem8_word_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem8_word_copy_mono, ptr @mem8_word_copy_color, ptr @gx_default_draw_line, ptr @mem_word_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @mem_open(ptr noundef) #0

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #0

declare i32 @gx_default_sync_output(ptr noundef) #0

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_close(ptr noundef) #0

declare i64 @mem_mapped_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare i32 @mem_mapped_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_mapped8_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = or i32 %2, %1
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %6
  %10 = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %11 = tail call i32 @llvm.smin.i32(i32 %1, i32 0)
  %12 = add nsw i32 %11, %3
  %13 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %14 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %15 = add nsw i32 %14, %4
  br label %16

16:                                               ; preds = %9, %6
  %17 = phi i32 [ %1, %6 ], [ %10, %9 ]
  %18 = phi i32 [ %2, %6 ], [ %13, %9 ]
  %19 = phi i32 [ %3, %6 ], [ %12, %9 ]
  %20 = phi i32 [ %4, %6 ], [ %15, %9 ]
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !5
  %23 = sub nsw i32 %22, %19
  %24 = icmp sgt i32 %17, %23
  %25 = sub nsw i32 %22, %17
  %26 = select i1 %24, i32 %25, i32 %19
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !16
  %29 = sub nsw i32 %28, %20
  %30 = icmp sgt i32 %18, %29
  %31 = sub nsw i32 %28, %18
  %32 = select i1 %30, i32 %31, i32 %20
  %33 = icmp slt i32 %26, 1
  %34 = icmp slt i32 %32, 1
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %47, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = sext i32 %17 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %45 = load i32, ptr %44, align 8, !tbaa !25
  %46 = trunc i64 %5 to i8
  tail call void @bytes_fill_rectangle(ptr noundef %43, i32 noundef %45, i8 noundef zeroext %46, i32 noundef %26, i32 noundef %32) #4
  br label %47

47:                                               ; preds = %16, %36
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_mapped8_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #2 {
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
  %28 = phi i32 [ %16, %21 ], [ %16, %14 ], [ %7, %11 ]
  %29 = phi i32 [ %22, %21 ], [ %8, %14 ], [ %8, %11 ]
  %30 = phi i32 [ 0, %21 ], [ %6, %14 ], [ %6, %11 ]
  %31 = phi i32 [ %17, %21 ], [ %17, %14 ], [ %5, %11 ]
  %32 = phi i32 [ %19, %21 ], [ %19, %14 ], [ %2, %11 ]
  %33 = phi ptr [ %26, %21 ], [ %1, %14 ], [ %1, %11 ]
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !5
  %36 = sub nsw i32 %35, %28
  %37 = icmp sgt i32 %31, %36
  %38 = sub nsw i32 %35, %31
  %39 = select i1 %37, i32 %38, i32 %28
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !16
  %42 = sub nsw i32 %41, %29
  %43 = icmp sgt i32 %30, %42
  %44 = sub nsw i32 %41, %30
  %45 = select i1 %43, i32 %44, i32 %29
  %46 = icmp slt i32 %39, 1
  %47 = icmp slt i32 %45, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %189, label %49

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %53 = load ptr, ptr %52, align 8, !tbaa !17
  %54 = sext i32 %30 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = sext i32 %31 to i64
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = ashr i32 %32, 3
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, ptr %33, i64 %60
  %62 = and i32 %32, 7
  %63 = lshr exact i32 128, %62
  %64 = and i64 %10, 4294967295
  %65 = icmp eq i64 %64, 4294967295
  %66 = and i64 %9, 4294967295
  %67 = icmp eq i64 %66, 4294967295
  br i1 %65, label %148, label %68

68:                                               ; preds = %49
  br i1 %67, label %108, label %69

69:                                               ; preds = %68
  %70 = icmp sgt i32 %45, 0
  br i1 %70, label %71, label %189

71:                                               ; preds = %69
  %72 = sext i32 %3 to i64
  %73 = zext i32 %51 to i64
  br label %74

74:                                               ; preds = %103, %71
  %75 = phi i32 [ %45, %71 ], [ %104, %103 ]
  %76 = phi ptr [ %58, %71 ], [ %106, %103 ]
  %77 = phi ptr [ %61, %71 ], [ %105, %103 ]
  %78 = load i8, ptr %77, align 1, !tbaa !26
  %79 = zext i8 %78 to i32
  br label %80

80:                                               ; preds = %96, %74
  %81 = phi ptr [ %76, %74 ], [ %100, %96 ]
  %82 = phi ptr [ %77, %74 ], [ %97, %96 ]
  %83 = phi i32 [ %79, %74 ], [ %98, %96 ]
  %84 = phi i32 [ %63, %74 ], [ %99, %96 ]
  %85 = phi i32 [ %39, %74 ], [ %101, %96 ]
  %86 = and i32 %84, %83
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i64 %9, i64 %10
  %89 = trunc i64 %88 to i8
  store i8 %89, ptr %81, align 1, !tbaa !26
  %90 = lshr i32 %84, 1
  %91 = icmp ult i32 %84, 2
  br i1 %91, label %92, label %96

92:                                               ; preds = %80
  %93 = getelementptr inbounds i8, ptr %82, i64 1
  %94 = load i8, ptr %93, align 1, !tbaa !26
  %95 = zext i8 %94 to i32
  br label %96

96:                                               ; preds = %92, %80
  %97 = phi ptr [ %93, %92 ], [ %82, %80 ]
  %98 = phi i32 [ %95, %92 ], [ %83, %80 ]
  %99 = phi i32 [ 128, %92 ], [ %90, %80 ]
  %100 = getelementptr inbounds i8, ptr %81, i64 1
  %101 = add nsw i32 %85, -1
  %102 = icmp sgt i32 %85, 1
  br i1 %102, label %80, label %103, !llvm.loop !27

103:                                              ; preds = %96
  %104 = add nsw i32 %75, -1
  %105 = getelementptr inbounds i8, ptr %77, i64 %72
  %106 = getelementptr inbounds i8, ptr %76, i64 %73
  %107 = icmp sgt i32 %75, 1
  br i1 %107, label %74, label %189, !llvm.loop !29

108:                                              ; preds = %68
  %109 = trunc i64 %10 to i8
  %110 = icmp sgt i32 %45, 0
  br i1 %110, label %111, label %189

111:                                              ; preds = %108
  %112 = sext i32 %3 to i64
  %113 = zext i32 %51 to i64
  br label %114

114:                                              ; preds = %143, %111
  %115 = phi i32 [ %45, %111 ], [ %144, %143 ]
  %116 = phi ptr [ %58, %111 ], [ %146, %143 ]
  %117 = phi ptr [ %61, %111 ], [ %145, %143 ]
  %118 = load i8, ptr %117, align 1, !tbaa !26
  %119 = zext i8 %118 to i32
  br label %120

120:                                              ; preds = %136, %114
  %121 = phi ptr [ %116, %114 ], [ %140, %136 ]
  %122 = phi ptr [ %117, %114 ], [ %137, %136 ]
  %123 = phi i32 [ %119, %114 ], [ %138, %136 ]
  %124 = phi i32 [ %63, %114 ], [ %139, %136 ]
  %125 = phi i32 [ %39, %114 ], [ %141, %136 ]
  %126 = and i32 %124, %123
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i8 %109, ptr %121, align 1, !tbaa !26
  br label %129

129:                                              ; preds = %128, %120
  %130 = lshr i32 %124, 1
  %131 = icmp ult i32 %124, 2
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = getelementptr inbounds i8, ptr %122, i64 1
  %134 = load i8, ptr %133, align 1, !tbaa !26
  %135 = zext i8 %134 to i32
  br label %136

136:                                              ; preds = %132, %129
  %137 = phi ptr [ %133, %132 ], [ %122, %129 ]
  %138 = phi i32 [ %135, %132 ], [ %123, %129 ]
  %139 = phi i32 [ 128, %132 ], [ %130, %129 ]
  %140 = getelementptr inbounds i8, ptr %121, i64 1
  %141 = add nsw i32 %125, -1
  %142 = icmp sgt i32 %125, 1
  br i1 %142, label %120, label %143, !llvm.loop !30

143:                                              ; preds = %136
  %144 = add nsw i32 %115, -1
  %145 = getelementptr inbounds i8, ptr %117, i64 %112
  %146 = getelementptr inbounds i8, ptr %116, i64 %113
  %147 = icmp sgt i32 %115, 1
  br i1 %147, label %114, label %189, !llvm.loop !31

148:                                              ; preds = %49
  br i1 %67, label %189, label %149

149:                                              ; preds = %148
  %150 = trunc i64 %9 to i8
  %151 = icmp sgt i32 %45, 0
  br i1 %151, label %152, label %189

152:                                              ; preds = %149
  %153 = sext i32 %3 to i64
  %154 = zext i32 %51 to i64
  br label %155

155:                                              ; preds = %184, %152
  %156 = phi i32 [ %45, %152 ], [ %185, %184 ]
  %157 = phi ptr [ %58, %152 ], [ %187, %184 ]
  %158 = phi ptr [ %61, %152 ], [ %186, %184 ]
  %159 = load i8, ptr %158, align 1, !tbaa !26
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %177, %155
  %162 = phi ptr [ %157, %155 ], [ %181, %177 ]
  %163 = phi ptr [ %158, %155 ], [ %178, %177 ]
  %164 = phi i32 [ %160, %155 ], [ %179, %177 ]
  %165 = phi i32 [ %63, %155 ], [ %180, %177 ]
  %166 = phi i32 [ %39, %155 ], [ %182, %177 ]
  %167 = and i32 %165, %164
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  store i8 %150, ptr %162, align 1, !tbaa !26
  br label %170

170:                                              ; preds = %169, %161
  %171 = lshr i32 %165, 1
  %172 = icmp ult i32 %165, 2
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %163, i64 1
  %175 = load i8, ptr %174, align 1, !tbaa !26
  %176 = zext i8 %175 to i32
  br label %177

177:                                              ; preds = %173, %170
  %178 = phi ptr [ %174, %173 ], [ %163, %170 ]
  %179 = phi i32 [ %176, %173 ], [ %164, %170 ]
  %180 = phi i32 [ 128, %173 ], [ %171, %170 ]
  %181 = getelementptr inbounds i8, ptr %162, i64 1
  %182 = add nsw i32 %166, -1
  %183 = icmp sgt i32 %166, 1
  br i1 %183, label %161, label %184, !llvm.loop !32

184:                                              ; preds = %177
  %185 = add nsw i32 %156, -1
  %186 = getelementptr inbounds i8, ptr %158, i64 %153
  %187 = getelementptr inbounds i8, ptr %157, i64 %154
  %188 = icmp sgt i32 %156, 1
  br i1 %188, label %155, label %189, !llvm.loop !33

189:                                              ; preds = %103, %143, %184, %149, %108, %69, %148, %27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_mapped8_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
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
  br i1 %46, label %59, label %47

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = sext i32 %29 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = sext i32 %28 to i64
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !25
  %57 = sext i32 %27 to i64
  %58 = getelementptr inbounds i8, ptr %26, i64 %57
  tail call void @bytes_copy_rectangle(ptr noundef %54, i32 noundef %56, ptr noundef %58, i32 noundef %3, i32 noundef %37, i32 noundef %43) #4
  br label %59

59:                                               ; preds = %25, %47
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

declare i32 @gx_default_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #0

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
define internal noundef i32 @mem8_word_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
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
  br i1 %35, label %49, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %43 = load i32, ptr %42, align 8, !tbaa !25
  %44 = shl i32 %20, 3
  %45 = shl i32 %26, 3
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %32, i32 noundef 1) #4
  %46 = sext i32 %20 to i64
  %47 = getelementptr inbounds i8, ptr %41, i64 %46
  %48 = trunc i64 %5 to i8
  tail call void @bytes_fill_rectangle(ptr noundef %47, i32 noundef %43, i8 noundef zeroext %48, i32 noundef %26, i32 noundef %32) #4
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %32, i32 noundef 1) #4
  br label %49

49:                                               ; preds = %16, %36
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem8_word_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
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
  %51 = load ptr, ptr %50, align 8, !tbaa !17
  %52 = sext i32 %28 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !24
  %55 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !25
  %57 = icmp ne i64 %9, -1
  %58 = icmp ne i64 %10, -1
  %59 = and i1 %57, %58
  %60 = zext i1 %59 to i32
  %61 = shl i32 %31, 3
  %62 = shl i32 %39, 3
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %45, i32 noundef %60) #4
  %63 = tail call i32 @mem_mapped8_copy_mono(ptr noundef %0, ptr noundef %33, i32 noundef %32, i32 noundef %3, i64 poison, i32 noundef %31, i32 noundef %28, i32 noundef %39, i32 noundef %45, i64 noundef %9, i64 noundef %10)
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %45, i32 noundef 0) #4
  br label %64

64:                                               ; preds = %27, %49
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem8_word_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
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
  br i1 %46, label %65, label %47

47:                                               ; preds = %25
  %48 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %49 = load ptr, ptr %48, align 8, !tbaa !17
  %50 = sext i32 %28 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !24
  %53 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %54 = load i32, ptr %53, align 8, !tbaa !25
  %55 = shl i32 %27, 3
  %56 = shl i32 %37, 3
  tail call void @mem_swap_byte_rect(ptr noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %43, i32 noundef 1) #4
  %57 = load ptr, ptr %48, align 8, !tbaa !17
  %58 = getelementptr inbounds ptr, ptr %57, i64 %50
  %59 = load ptr, ptr %58, align 8, !tbaa !24
  %60 = sext i32 %27 to i64
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  %62 = load i32, ptr %53, align 8, !tbaa !25
  %63 = sext i32 %26 to i64
  %64 = getelementptr inbounds i8, ptr %31, i64 %63
  tail call void @bytes_copy_rectangle(ptr noundef %61, i32 noundef %62, ptr noundef %64, i32 noundef %3, i32 noundef %37, i32 noundef %43) #4
  tail call void @mem_swap_byte_rect(ptr noundef %52, i32 noundef %54, i32 noundef %55, i32 noundef %56, i32 noundef %43, i32 noundef 0) #4
  br label %65

65:                                               ; preds = %25, %47
  ret i32 0
}

declare i32 @mem_word_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @bytes_fill_rectangle(ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @bytes_copy_rectangle(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @mem_swap_byte_rect(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!17 = !{!18, !10, i64 536}
!18 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !19, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !21, i64 552, !22, i64 568, !23, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !13, i64 624}
!19 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!22 = !{!"_c24", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!23 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!24 = !{!10, !10, i64 0}
!25 = !{!18, !7, i64 520}
!26 = !{!8, !8, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
