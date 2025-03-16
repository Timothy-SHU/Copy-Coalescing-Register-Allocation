; ModuleID = 'gdevm1.c'
source_filename = "gdevm1.c"
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
%struct.copy_mode = type { i16, i16 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_int_point_s = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"image1\00", align 1
@mem_mono_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 1, i16 2, i16 2 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_mono_map_rgb_color, ptr @mem_mono_map_color_rgb, ptr @mem_mono_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_mono_copy_mono, ptr @gx_default_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_no_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @mem_mono_strip_tile_rectangle, ptr @mem_mono_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"image1w\00", align 1
@mem_mono_word_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 1, i16 2, i16 2 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_mono_map_rgb_color, ptr @mem_mono_map_color_rgb, ptr @mem1_word_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem1_word_copy_mono, ptr @gx_default_copy_color, ptr @gx_default_draw_line, ptr @mem_word_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_no_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@copy_modes = internal unnamed_addr constant [9 x %struct.copy_mode] [%struct.copy_mode { i16 -1, i16 3 }, %struct.copy_mode { i16 -1, i16 2 }, %struct.copy_mode zeroinitializer, %struct.copy_mode { i16 0, i16 2 }, %struct.copy_mode { i16 0, i16 3 }, %struct.copy_mode { i16 0, i16 1 }, %struct.copy_mode { i16 -1, i16 0 }, %struct.copy_mode { i16 -1, i16 1 }, %struct.copy_mode { i16 0, i16 3 }], align 16
@mono_copy_masks = external local_unnamed_addr constant [17 x i16], align 16
@right_masks2 = internal unnamed_addr constant [9 x i16] [i16 -1, i16 32639, i16 16191, i16 7967, i16 3855, i16 1799, i16 771, i16 257, i16 0], align 16
@left_masks2 = internal unnamed_addr constant [9 x i16] [i16 -1, i16 -258, i16 -772, i16 -1800, i16 -3856, i16 -7968, i16 -16192, i16 -32640, i16 0], align 16

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @mem_open(ptr noundef) #0

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #0

declare i32 @gx_default_sync_output(ptr noundef) #0

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_close(ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i64 @mem_mono_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #1 {
  %5 = tail call i64 @gx_default_w_b_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #3
  %6 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = load i8, ptr %7, align 1, !tbaa !21
  %9 = zext i8 %8 to i64
  %10 = xor i64 %5, %9
  %11 = and i64 %10, 1
  ret i64 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_mono_map_color_rgb(ptr noundef %0, i64 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 29
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = load i8, ptr %5, align 1, !tbaa !21
  %7 = zext i8 %6 to i64
  %8 = xor i64 %7, %1
  %9 = and i64 %8, 1
  %10 = tail call i32 @gx_default_w_b_map_color_rgb(ptr noundef %0, i64 noundef %9, ptr noundef %2) #3
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_mono_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
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
  %22 = load i32, ptr %21, align 8, !tbaa !22
  %23 = sub nsw i32 %22, %19
  %24 = icmp sgt i32 %17, %23
  %25 = sub nsw i32 %22, %17
  %26 = select i1 %24, i32 %25, i32 %19
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = sub nsw i32 %28, %20
  %30 = icmp sgt i32 %18, %29
  %31 = sub nsw i32 %28, %18
  %32 = select i1 %30, i32 %31, i32 %20
  %33 = icmp slt i32 %26, 1
  %34 = icmp slt i32 %32, 1
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %43 = load i32, ptr %42, align 8, !tbaa !27
  %44 = trunc i64 %5 to i32
  %45 = sub i32 0, %44
  tail call void @bits_fill_rectangle(ptr noundef %41, i32 noundef %17, i32 noundef %43, i32 noundef %45, i32 noundef %26, i32 noundef %32) #3
  br label %46

46:                                               ; preds = %16, %36
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_mono_copy_mono(ptr nocapture noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
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
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = sub nsw i32 %35, %29
  %37 = icmp sgt i32 %31, %36
  %38 = sub nsw i32 %35, %31
  %39 = select i1 %37, i32 %38, i32 %29
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = sub nsw i32 %41, %28
  %43 = icmp sgt i32 %30, %42
  %44 = sub nsw i32 %41, %30
  %45 = select i1 %43, i32 %44, i32 %28
  %46 = icmp slt i32 %39, 1
  %47 = icmp slt i32 %45, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %1523, label %49

49:                                               ; preds = %27
  %50 = mul i64 %9, 3
  %51 = add i64 %50, %10
  %52 = shl i64 %51, 32
  %53 = add i64 %52, 17179869184
  %54 = ashr exact i64 %53, 32
  %55 = getelementptr inbounds [9 x %struct.copy_mode], ptr @copy_modes, i64 0, i64 %54
  %56 = load i16, ptr %55, align 4, !tbaa.struct !28
  %57 = getelementptr inbounds i8, ptr %55, i64 2
  %58 = load i16, ptr %57, align 2, !tbaa.struct !30
  %59 = zext i16 %56 to i32
  %60 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %61 = load i32, ptr %60, align 8, !tbaa !27
  %62 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %63 = load ptr, ptr %62, align 8, !tbaa !25
  %64 = sext i32 %30 to i64
  %65 = getelementptr inbounds ptr, ptr %63, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !26
  %67 = ashr i32 %31, 3
  %68 = and i32 %67, -2
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, ptr %66, i64 %69
  %71 = ashr i32 %32, 3
  %72 = and i32 %71, -2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %33, i64 %73
  %75 = and i32 %31, 15
  %76 = and i32 %32, 15
  %77 = sub nsw i32 %75, %76
  %78 = add nuw nsw i32 %39, %75
  %79 = add nsw i32 %78, -16
  %80 = icmp slt i32 %78, 17
  br i1 %80, label %81, label %591

81:                                               ; preds = %49
  %82 = sext i32 %78 to i64
  %83 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %82
  %84 = load i16, ptr %83, align 2, !tbaa !29
  %85 = zext i16 %84 to i32
  %86 = xor i32 %85, -1
  %87 = zext nneg i32 %75 to i64
  %88 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %87
  %89 = load i16, ptr %88, align 2, !tbaa !29
  %90 = zext i16 %89 to i32
  %91 = and i32 %90, %86
  %92 = icmp sgt i32 %77, -1
  br i1 %92, label %93, label %299

93:                                               ; preds = %81
  %94 = icmp eq i32 %75, %76
  br i1 %94, label %95, label %182

95:                                               ; preds = %93
  switch i16 %58, label %1488 [
    i16 0, label %126
    i16 1, label %110
    i16 2, label %96
  ]

96:                                               ; preds = %95
  %97 = xor i32 %91, -1
  %98 = load i16, ptr %74, align 2, !tbaa !29
  %99 = xor i16 %98, %56
  %100 = load i16, ptr %70, align 2, !tbaa !29
  %101 = trunc i32 %97 to i16
  %102 = or i16 %99, %101
  %103 = and i16 %100, %102
  store i16 %103, ptr %70, align 2, !tbaa !29
  %104 = add nsw i32 %45, -1
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %1523, label %106

106:                                              ; preds = %96
  %107 = sext i32 %3 to i64
  %108 = zext i32 %61 to i64
  %109 = trunc i32 %97 to i16
  br label %169

110:                                              ; preds = %95
  %111 = xor i32 %91, -1
  %112 = load i16, ptr %70, align 2, !tbaa !29
  %113 = zext i16 %112 to i32
  %114 = and i32 %113, %111
  %115 = load i16, ptr %74, align 2, !tbaa !29
  %116 = xor i16 %115, %56
  %117 = zext i16 %116 to i32
  %118 = and i32 %91, %117
  %119 = or i32 %118, %114
  %120 = trunc i32 %119 to i16
  store i16 %120, ptr %70, align 2, !tbaa !29
  %121 = add nsw i32 %45, -1
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %1523, label %123

123:                                              ; preds = %110
  %124 = sext i32 %3 to i64
  %125 = zext i32 %61 to i64
  br label %152

126:                                              ; preds = %95
  %127 = load i16, ptr %74, align 2, !tbaa !29
  %128 = xor i16 %127, %56
  %129 = load i16, ptr %70, align 2, !tbaa !29
  %130 = trunc i32 %91 to i16
  %131 = and i16 %128, %130
  %132 = or i16 %129, %131
  store i16 %132, ptr %70, align 2, !tbaa !29
  %133 = add nsw i32 %45, -1
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %1523, label %135

135:                                              ; preds = %126
  %136 = sext i32 %3 to i64
  %137 = zext i32 %61 to i64
  %138 = trunc i32 %91 to i16
  br label %139

139:                                              ; preds = %135, %139
  %140 = phi i32 [ %133, %135 ], [ %150, %139 ]
  %141 = phi ptr [ %74, %135 ], [ %143, %139 ]
  %142 = phi ptr [ %70, %135 ], [ %144, %139 ]
  %143 = getelementptr inbounds i8, ptr %141, i64 %136
  %144 = getelementptr inbounds i8, ptr %142, i64 %137
  %145 = load i16, ptr %143, align 2, !tbaa !29
  %146 = xor i16 %145, %56
  %147 = load i16, ptr %144, align 2, !tbaa !29
  %148 = and i16 %146, %138
  %149 = or i16 %147, %148
  store i16 %149, ptr %144, align 2, !tbaa !29
  %150 = add nsw i32 %140, -1
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %1523, label %139, !llvm.loop !31

152:                                              ; preds = %123, %152
  %153 = phi i32 [ %121, %123 ], [ %167, %152 ]
  %154 = phi ptr [ %74, %123 ], [ %156, %152 ]
  %155 = phi ptr [ %70, %123 ], [ %157, %152 ]
  %156 = getelementptr inbounds i8, ptr %154, i64 %124
  %157 = getelementptr inbounds i8, ptr %155, i64 %125
  %158 = load i16, ptr %157, align 2, !tbaa !29
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, %111
  %161 = load i16, ptr %156, align 2, !tbaa !29
  %162 = xor i16 %161, %56
  %163 = zext i16 %162 to i32
  %164 = and i32 %91, %163
  %165 = or i32 %164, %160
  %166 = trunc i32 %165 to i16
  store i16 %166, ptr %157, align 2, !tbaa !29
  %167 = add nsw i32 %153, -1
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %1523, label %152, !llvm.loop !33

169:                                              ; preds = %106, %169
  %170 = phi i32 [ %104, %106 ], [ %180, %169 ]
  %171 = phi ptr [ %74, %106 ], [ %173, %169 ]
  %172 = phi ptr [ %70, %106 ], [ %174, %169 ]
  %173 = getelementptr inbounds i8, ptr %171, i64 %107
  %174 = getelementptr inbounds i8, ptr %172, i64 %108
  %175 = load i16, ptr %173, align 2, !tbaa !29
  %176 = xor i16 %175, %56
  %177 = load i16, ptr %174, align 2, !tbaa !29
  %178 = or i16 %176, %109
  %179 = and i16 %177, %178
  store i16 %179, ptr %174, align 2, !tbaa !29
  %180 = add nsw i32 %170, -1
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %1523, label %169, !llvm.loop !34

182:                                              ; preds = %93
  %183 = sub nuw nsw i32 16, %77
  switch i16 %58, label %296 [
    i16 0, label %198
    i16 1, label %191
    i16 2, label %184
  ]

184:                                              ; preds = %182
  %185 = icmp slt i32 %77, 8
  %186 = xor i32 %91, -1
  %187 = zext nneg i32 %77 to i64
  %188 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %187
  %189 = sext i32 %3 to i64
  %190 = zext i32 %61 to i64
  br label %266

191:                                              ; preds = %182
  %192 = xor i32 %91, -1
  %193 = icmp slt i32 %77, 8
  %194 = zext nneg i32 %77 to i64
  %195 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %194
  %196 = sext i32 %3 to i64
  %197 = zext i32 %61 to i64
  br label %234

198:                                              ; preds = %182
  %199 = icmp slt i32 %77, 8
  %200 = zext nneg i32 %77 to i64
  %201 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %200
  %202 = sext i32 %3 to i64
  %203 = zext i32 %61 to i64
  br label %204

204:                                              ; preds = %198, %231
  %205 = phi ptr [ %233, %231 ], [ %70, %198 ]
  %206 = phi ptr [ %232, %231 ], [ %74, %198 ]
  %207 = phi i32 [ %229, %231 ], [ %45, %198 ]
  br i1 %199, label %208, label %217

208:                                              ; preds = %204
  %209 = load i16, ptr %206, align 2, !tbaa !29
  %210 = zext i16 %209 to i32
  %211 = lshr i32 %210, %77
  %212 = load i16, ptr %201, align 2, !tbaa !29
  %213 = zext i16 %212 to i32
  %214 = and i32 %211, %213
  %215 = shl nuw nsw i32 %210, %183
  %216 = add nuw nsw i32 %214, %215
  br label %222

217:                                              ; preds = %204
  %218 = load i8, ptr %206, align 1, !tbaa !21
  %219 = zext i8 %218 to i32
  %220 = shl nuw nsw i32 %219, %183
  %221 = and i32 %220, 65280
  br label %222

222:                                              ; preds = %217, %208
  %223 = phi i32 [ %216, %208 ], [ %221, %217 ]
  %224 = xor i32 %223, %59
  %225 = and i32 %224, %91
  %226 = load i16, ptr %205, align 2, !tbaa !29
  %227 = trunc i32 %225 to i16
  %228 = or i16 %226, %227
  store i16 %228, ptr %205, align 2, !tbaa !29
  %229 = add nsw i32 %207, -1
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %296, label %231

231:                                              ; preds = %222
  %232 = getelementptr inbounds i8, ptr %206, i64 %202
  %233 = getelementptr inbounds i8, ptr %205, i64 %203
  br label %204, !llvm.loop !35

234:                                              ; preds = %191, %263
  %235 = phi ptr [ %265, %263 ], [ %70, %191 ]
  %236 = phi ptr [ %264, %263 ], [ %74, %191 ]
  %237 = phi i32 [ %261, %263 ], [ %45, %191 ]
  %238 = load i16, ptr %235, align 2, !tbaa !29
  %239 = zext i16 %238 to i32
  %240 = and i32 %239, %192
  br i1 %193, label %241, label %250

241:                                              ; preds = %234
  %242 = load i16, ptr %236, align 2, !tbaa !29
  %243 = zext i16 %242 to i32
  %244 = lshr i32 %243, %77
  %245 = load i16, ptr %195, align 2, !tbaa !29
  %246 = zext i16 %245 to i32
  %247 = and i32 %244, %246
  %248 = shl nuw nsw i32 %243, %183
  %249 = add nuw nsw i32 %247, %248
  br label %255

250:                                              ; preds = %234
  %251 = load i8, ptr %236, align 1, !tbaa !21
  %252 = zext i8 %251 to i32
  %253 = shl nuw nsw i32 %252, %183
  %254 = and i32 %253, 65280
  br label %255

255:                                              ; preds = %250, %241
  %256 = phi i32 [ %249, %241 ], [ %254, %250 ]
  %257 = xor i32 %256, %59
  %258 = and i32 %257, %91
  %259 = or i32 %258, %240
  %260 = trunc i32 %259 to i16
  store i16 %260, ptr %235, align 2, !tbaa !29
  %261 = add nsw i32 %237, -1
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %296, label %263

263:                                              ; preds = %255
  %264 = getelementptr inbounds i8, ptr %236, i64 %196
  %265 = getelementptr inbounds i8, ptr %235, i64 %197
  br label %234, !llvm.loop !36

266:                                              ; preds = %184, %293
  %267 = phi ptr [ %295, %293 ], [ %70, %184 ]
  %268 = phi ptr [ %294, %293 ], [ %74, %184 ]
  %269 = phi i32 [ %291, %293 ], [ %45, %184 ]
  br i1 %185, label %270, label %279

270:                                              ; preds = %266
  %271 = load i16, ptr %268, align 2, !tbaa !29
  %272 = zext i16 %271 to i32
  %273 = lshr i32 %272, %77
  %274 = load i16, ptr %188, align 2, !tbaa !29
  %275 = zext i16 %274 to i32
  %276 = and i32 %273, %275
  %277 = shl nuw nsw i32 %272, %183
  %278 = add nuw nsw i32 %276, %277
  br label %284

279:                                              ; preds = %266
  %280 = load i8, ptr %268, align 1, !tbaa !21
  %281 = zext i8 %280 to i32
  %282 = shl nuw nsw i32 %281, %183
  %283 = and i32 %282, 65280
  br label %284

284:                                              ; preds = %279, %270
  %285 = phi i32 [ %278, %270 ], [ %283, %279 ]
  %286 = xor i32 %285, %59
  %287 = or i32 %286, %186
  %288 = load i16, ptr %267, align 2, !tbaa !29
  %289 = trunc i32 %287 to i16
  %290 = and i16 %288, %289
  store i16 %290, ptr %267, align 2, !tbaa !29
  %291 = add nsw i32 %269, -1
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %284
  %294 = getelementptr inbounds i8, ptr %268, i64 %189
  %295 = getelementptr inbounds i8, ptr %267, i64 %190
  br label %266, !llvm.loop !37

296:                                              ; preds = %284, %255, %222, %182
  %297 = phi i1 [ true, %182 ], [ false, %222 ], [ false, %255 ], [ false, %284 ]
  %298 = phi i32 [ %45, %182 ], [ 0, %222 ], [ 0, %255 ], [ 0, %284 ]
  br i1 %297, label %1488, label %1523

299:                                              ; preds = %81
  %300 = icmp sgt i32 %79, %77
  br i1 %300, label %419, label %301

301:                                              ; preds = %299
  %302 = add nsw i32 %77, 16
  %303 = sub nsw i32 0, %77
  switch i16 %58, label %416 [
    i16 0, label %318
    i16 1, label %311
    i16 2, label %304
  ]

304:                                              ; preds = %301
  %305 = icmp sgt i32 %77, -8
  %306 = xor i32 %91, -1
  %307 = zext nneg i32 %303 to i64
  %308 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %307
  %309 = sext i32 %3 to i64
  %310 = zext i32 %61 to i64
  br label %386

311:                                              ; preds = %301
  %312 = xor i32 %91, -1
  %313 = icmp sgt i32 %77, -8
  %314 = zext nneg i32 %303 to i64
  %315 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %314
  %316 = sext i32 %3 to i64
  %317 = zext i32 %61 to i64
  br label %354

318:                                              ; preds = %301
  %319 = icmp sgt i32 %77, -8
  %320 = zext nneg i32 %303 to i64
  %321 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %320
  %322 = sext i32 %3 to i64
  %323 = zext i32 %61 to i64
  br label %324

324:                                              ; preds = %318, %351
  %325 = phi ptr [ %353, %351 ], [ %70, %318 ]
  %326 = phi ptr [ %352, %351 ], [ %74, %318 ]
  %327 = phi i32 [ %349, %351 ], [ %45, %318 ]
  %328 = load i16, ptr %326, align 2, !tbaa !29
  br i1 %319, label %329, label %337

329:                                              ; preds = %324
  %330 = zext i16 %328 to i32
  %331 = shl nuw nsw i32 %330, %303
  %332 = load i16, ptr %321, align 2, !tbaa !29
  %333 = zext i16 %332 to i32
  %334 = and i32 %331, %333
  %335 = lshr i32 %330, %302
  %336 = add nuw nsw i32 %334, %335
  br label %342

337:                                              ; preds = %324
  %338 = and i16 %328, -256
  %339 = zext i16 %338 to i32
  %340 = lshr i32 %339, %302
  %341 = and i32 %340, 255
  br label %342

342:                                              ; preds = %337, %329
  %343 = phi i32 [ %336, %329 ], [ %341, %337 ]
  %344 = xor i32 %343, %59
  %345 = and i32 %344, %91
  %346 = load i16, ptr %325, align 2, !tbaa !29
  %347 = trunc i32 %345 to i16
  %348 = or i16 %346, %347
  store i16 %348, ptr %325, align 2, !tbaa !29
  %349 = add nsw i32 %327, -1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %416, label %351

351:                                              ; preds = %342
  %352 = getelementptr inbounds i8, ptr %326, i64 %322
  %353 = getelementptr inbounds i8, ptr %325, i64 %323
  br label %324, !llvm.loop !38

354:                                              ; preds = %311, %383
  %355 = phi ptr [ %385, %383 ], [ %70, %311 ]
  %356 = phi ptr [ %384, %383 ], [ %74, %311 ]
  %357 = phi i32 [ %381, %383 ], [ %45, %311 ]
  %358 = load i16, ptr %355, align 2, !tbaa !29
  %359 = zext i16 %358 to i32
  %360 = and i32 %359, %312
  %361 = load i16, ptr %356, align 2, !tbaa !29
  br i1 %313, label %362, label %370

362:                                              ; preds = %354
  %363 = zext i16 %361 to i32
  %364 = shl nuw nsw i32 %363, %303
  %365 = load i16, ptr %315, align 2, !tbaa !29
  %366 = zext i16 %365 to i32
  %367 = and i32 %364, %366
  %368 = lshr i32 %363, %302
  %369 = add nuw nsw i32 %367, %368
  br label %375

370:                                              ; preds = %354
  %371 = and i16 %361, -256
  %372 = zext i16 %371 to i32
  %373 = lshr i32 %372, %302
  %374 = and i32 %373, 255
  br label %375

375:                                              ; preds = %370, %362
  %376 = phi i32 [ %369, %362 ], [ %374, %370 ]
  %377 = xor i32 %376, %59
  %378 = and i32 %377, %91
  %379 = or i32 %378, %360
  %380 = trunc i32 %379 to i16
  store i16 %380, ptr %355, align 2, !tbaa !29
  %381 = add nsw i32 %357, -1
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %416, label %383

383:                                              ; preds = %375
  %384 = getelementptr inbounds i8, ptr %356, i64 %316
  %385 = getelementptr inbounds i8, ptr %355, i64 %317
  br label %354, !llvm.loop !39

386:                                              ; preds = %304, %413
  %387 = phi ptr [ %415, %413 ], [ %70, %304 ]
  %388 = phi ptr [ %414, %413 ], [ %74, %304 ]
  %389 = phi i32 [ %411, %413 ], [ %45, %304 ]
  %390 = load i16, ptr %388, align 2, !tbaa !29
  br i1 %305, label %391, label %399

391:                                              ; preds = %386
  %392 = zext i16 %390 to i32
  %393 = shl nuw nsw i32 %392, %303
  %394 = load i16, ptr %308, align 2, !tbaa !29
  %395 = zext i16 %394 to i32
  %396 = and i32 %393, %395
  %397 = lshr i32 %392, %302
  %398 = add nuw nsw i32 %396, %397
  br label %404

399:                                              ; preds = %386
  %400 = and i16 %390, -256
  %401 = zext i16 %400 to i32
  %402 = lshr i32 %401, %302
  %403 = and i32 %402, 255
  br label %404

404:                                              ; preds = %399, %391
  %405 = phi i32 [ %398, %391 ], [ %403, %399 ]
  %406 = xor i32 %405, %59
  %407 = or i32 %406, %306
  %408 = load i16, ptr %387, align 2, !tbaa !29
  %409 = trunc i32 %407 to i16
  %410 = and i16 %408, %409
  store i16 %410, ptr %387, align 2, !tbaa !29
  %411 = add nsw i32 %389, -1
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %416, label %413

413:                                              ; preds = %404
  %414 = getelementptr inbounds i8, ptr %388, i64 %309
  %415 = getelementptr inbounds i8, ptr %387, i64 %310
  br label %386, !llvm.loop !40

416:                                              ; preds = %404, %375, %342, %301
  %417 = phi i1 [ true, %301 ], [ false, %342 ], [ false, %375 ], [ false, %404 ]
  %418 = phi i32 [ %45, %301 ], [ 0, %342 ], [ 0, %375 ], [ 0, %404 ]
  br i1 %417, label %1488, label %1523

419:                                              ; preds = %299
  %420 = sub nsw i32 0, %77
  %421 = add nsw i32 %77, 16
  switch i16 %58, label %588 [
    i16 0, label %440
    i16 1, label %431
    i16 2, label %422
  ]

422:                                              ; preds = %419
  %423 = icmp sgt i32 %77, -8
  %424 = xor i32 %91, -1
  %425 = zext nneg i32 %421 to i64
  %426 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %425
  %427 = zext nneg i32 %420 to i64
  %428 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %427
  %429 = sext i32 %3 to i64
  %430 = zext i32 %61 to i64
  br label %542

431:                                              ; preds = %419
  %432 = xor i32 %91, -1
  %433 = icmp sgt i32 %77, -8
  %434 = zext nneg i32 %421 to i64
  %435 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %434
  %436 = zext nneg i32 %420 to i64
  %437 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %436
  %438 = sext i32 %3 to i64
  %439 = zext i32 %61 to i64
  br label %494

440:                                              ; preds = %419
  %441 = icmp sgt i32 %77, -8
  %442 = zext nneg i32 %421 to i64
  %443 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %442
  %444 = zext nneg i32 %420 to i64
  %445 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %444
  %446 = sext i32 %3 to i64
  %447 = zext i32 %61 to i64
  br label %448

448:                                              ; preds = %440, %491
  %449 = phi ptr [ %493, %491 ], [ %70, %440 ]
  %450 = phi ptr [ %492, %491 ], [ %74, %440 ]
  %451 = phi i32 [ %489, %491 ], [ %45, %440 ]
  %452 = load i16, ptr %450, align 2, !tbaa !29
  br i1 %441, label %453, label %467

453:                                              ; preds = %448
  %454 = zext i16 %452 to i32
  %455 = shl nuw nsw i32 %454, %420
  %456 = load i16, ptr %445, align 2, !tbaa !29
  %457 = zext i16 %456 to i32
  %458 = and i32 %455, %457
  %459 = lshr i32 %454, %421
  %460 = add nuw nsw i32 %458, %459
  %461 = getelementptr inbounds i8, ptr %450, i64 2
  %462 = load i8, ptr %461, align 1, !tbaa !21
  %463 = zext i8 %462 to i32
  %464 = shl nuw nsw i32 %463, %420
  %465 = and i32 %464, 65280
  %466 = add nuw nsw i32 %460, %465
  br label %482

467:                                              ; preds = %448
  %468 = and i16 %452, -256
  %469 = zext i16 %468 to i32
  %470 = lshr i32 %469, %421
  %471 = and i32 %470, 255
  %472 = getelementptr inbounds i16, ptr %450, i64 1
  %473 = load i16, ptr %472, align 2, !tbaa !29
  %474 = zext i16 %473 to i32
  %475 = lshr i32 %474, %421
  %476 = load i16, ptr %443, align 2, !tbaa !29
  %477 = zext i16 %476 to i32
  %478 = and i32 %475, %477
  %479 = shl nuw nsw i32 %474, %420
  %480 = add nuw i32 %478, %479
  %481 = add nuw i32 %480, %471
  br label %482

482:                                              ; preds = %467, %453
  %483 = phi i32 [ %466, %453 ], [ %481, %467 ]
  %484 = xor i32 %483, %59
  %485 = and i32 %484, %91
  %486 = load i16, ptr %449, align 2, !tbaa !29
  %487 = trunc i32 %485 to i16
  %488 = or i16 %486, %487
  store i16 %488, ptr %449, align 2, !tbaa !29
  %489 = add nsw i32 %451, -1
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %588, label %491

491:                                              ; preds = %482
  %492 = getelementptr inbounds i8, ptr %450, i64 %446
  %493 = getelementptr inbounds i8, ptr %449, i64 %447
  br label %448, !llvm.loop !41

494:                                              ; preds = %431, %539
  %495 = phi ptr [ %541, %539 ], [ %70, %431 ]
  %496 = phi ptr [ %540, %539 ], [ %74, %431 ]
  %497 = phi i32 [ %537, %539 ], [ %45, %431 ]
  %498 = load i16, ptr %495, align 2, !tbaa !29
  %499 = zext i16 %498 to i32
  %500 = and i32 %499, %432
  %501 = load i16, ptr %496, align 2, !tbaa !29
  br i1 %433, label %502, label %516

502:                                              ; preds = %494
  %503 = zext i16 %501 to i32
  %504 = shl nuw nsw i32 %503, %420
  %505 = load i16, ptr %437, align 2, !tbaa !29
  %506 = zext i16 %505 to i32
  %507 = and i32 %504, %506
  %508 = lshr i32 %503, %421
  %509 = add nuw nsw i32 %507, %508
  %510 = getelementptr inbounds i8, ptr %496, i64 2
  %511 = load i8, ptr %510, align 1, !tbaa !21
  %512 = zext i8 %511 to i32
  %513 = shl nuw nsw i32 %512, %420
  %514 = and i32 %513, 65280
  %515 = add nuw nsw i32 %509, %514
  br label %531

516:                                              ; preds = %494
  %517 = and i16 %501, -256
  %518 = zext i16 %517 to i32
  %519 = lshr i32 %518, %421
  %520 = and i32 %519, 255
  %521 = getelementptr inbounds i16, ptr %496, i64 1
  %522 = load i16, ptr %521, align 2, !tbaa !29
  %523 = zext i16 %522 to i32
  %524 = lshr i32 %523, %421
  %525 = load i16, ptr %435, align 2, !tbaa !29
  %526 = zext i16 %525 to i32
  %527 = and i32 %524, %526
  %528 = shl nuw nsw i32 %523, %420
  %529 = add nuw i32 %527, %528
  %530 = add nuw i32 %529, %520
  br label %531

531:                                              ; preds = %516, %502
  %532 = phi i32 [ %515, %502 ], [ %530, %516 ]
  %533 = xor i32 %532, %59
  %534 = and i32 %533, %91
  %535 = or i32 %534, %500
  %536 = trunc i32 %535 to i16
  store i16 %536, ptr %495, align 2, !tbaa !29
  %537 = add nsw i32 %497, -1
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %588, label %539

539:                                              ; preds = %531
  %540 = getelementptr inbounds i8, ptr %496, i64 %438
  %541 = getelementptr inbounds i8, ptr %495, i64 %439
  br label %494, !llvm.loop !42

542:                                              ; preds = %422, %585
  %543 = phi ptr [ %587, %585 ], [ %70, %422 ]
  %544 = phi ptr [ %586, %585 ], [ %74, %422 ]
  %545 = phi i32 [ %583, %585 ], [ %45, %422 ]
  %546 = load i16, ptr %544, align 2, !tbaa !29
  br i1 %423, label %547, label %561

547:                                              ; preds = %542
  %548 = zext i16 %546 to i32
  %549 = shl nuw nsw i32 %548, %420
  %550 = load i16, ptr %428, align 2, !tbaa !29
  %551 = zext i16 %550 to i32
  %552 = and i32 %549, %551
  %553 = lshr i32 %548, %421
  %554 = add nuw nsw i32 %552, %553
  %555 = getelementptr inbounds i8, ptr %544, i64 2
  %556 = load i8, ptr %555, align 1, !tbaa !21
  %557 = zext i8 %556 to i32
  %558 = shl nuw nsw i32 %557, %420
  %559 = and i32 %558, 65280
  %560 = add nuw nsw i32 %554, %559
  br label %576

561:                                              ; preds = %542
  %562 = and i16 %546, -256
  %563 = zext i16 %562 to i32
  %564 = lshr i32 %563, %421
  %565 = and i32 %564, 255
  %566 = getelementptr inbounds i16, ptr %544, i64 1
  %567 = load i16, ptr %566, align 2, !tbaa !29
  %568 = zext i16 %567 to i32
  %569 = lshr i32 %568, %421
  %570 = load i16, ptr %426, align 2, !tbaa !29
  %571 = zext i16 %570 to i32
  %572 = and i32 %569, %571
  %573 = shl nuw nsw i32 %568, %420
  %574 = add nuw i32 %572, %573
  %575 = add nuw i32 %574, %565
  br label %576

576:                                              ; preds = %561, %547
  %577 = phi i32 [ %560, %547 ], [ %575, %561 ]
  %578 = xor i32 %577, %59
  %579 = or i32 %578, %424
  %580 = load i16, ptr %543, align 2, !tbaa !29
  %581 = trunc i32 %579 to i16
  %582 = and i16 %580, %581
  store i16 %582, ptr %543, align 2, !tbaa !29
  %583 = add nsw i32 %545, -1
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %588, label %585

585:                                              ; preds = %576
  %586 = getelementptr inbounds i8, ptr %544, i64 %429
  %587 = getelementptr inbounds i8, ptr %543, i64 %430
  br label %542, !llvm.loop !43

588:                                              ; preds = %576, %531, %482, %419
  %589 = phi i1 [ true, %419 ], [ false, %482 ], [ false, %531 ], [ false, %576 ]
  %590 = phi i32 [ %45, %419 ], [ 0, %482 ], [ 0, %531 ], [ 0, %576 ]
  br i1 %589, label %1488, label %1523

591:                                              ; preds = %49
  %592 = icmp sgt i32 %79, %77
  br i1 %592, label %795, label %593

593:                                              ; preds = %591
  %594 = sub nuw nsw i32 16, %77
  %595 = zext nneg i32 %75 to i64
  %596 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %595
  %597 = load i16, ptr %596, align 2, !tbaa !29
  %598 = zext i16 %597 to i32
  %599 = zext nneg i32 %79 to i64
  %600 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %599
  %601 = load i16, ptr %600, align 2, !tbaa !29
  %602 = zext i16 %601 to i32
  %603 = xor i32 %602, -1
  switch i16 %58, label %792 [
    i16 0, label %624
    i16 1, label %614
    i16 2, label %604
  ]

604:                                              ; preds = %593
  %605 = icmp slt i32 %77, 8
  %606 = xor i32 %598, -1
  %607 = icmp sgt i32 %77, 8
  %608 = zext nneg i32 %77 to i64
  %609 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %608
  %610 = zext nneg i32 %594 to i64
  %611 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %610
  %612 = sext i32 %3 to i64
  %613 = zext i32 %61 to i64
  br label %740

614:                                              ; preds = %593
  %615 = xor i32 %598, -1
  %616 = icmp slt i32 %77, 8
  %617 = icmp sgt i32 %77, 8
  %618 = zext nneg i32 %77 to i64
  %619 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %618
  %620 = zext nneg i32 %594 to i64
  %621 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %620
  %622 = sext i32 %3 to i64
  %623 = zext i32 %61 to i64
  br label %685

624:                                              ; preds = %593
  %625 = icmp slt i32 %77, 8
  %626 = icmp sgt i32 %77, 8
  %627 = zext nneg i32 %77 to i64
  %628 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %627
  %629 = zext nneg i32 %594 to i64
  %630 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %629
  %631 = sext i32 %3 to i64
  %632 = zext i32 %61 to i64
  br label %633

633:                                              ; preds = %624, %682
  %634 = phi ptr [ %684, %682 ], [ %70, %624 ]
  %635 = phi ptr [ %683, %682 ], [ %74, %624 ]
  %636 = phi i32 [ %680, %682 ], [ %45, %624 ]
  br i1 %625, label %637, label %646

637:                                              ; preds = %633
  %638 = load i16, ptr %635, align 2, !tbaa !29
  %639 = zext i16 %638 to i32
  %640 = lshr i32 %639, %77
  %641 = load i16, ptr %628, align 2, !tbaa !29
  %642 = zext i16 %641 to i32
  %643 = and i32 %640, %642
  %644 = shl nuw nsw i32 %639, %594
  %645 = add nuw nsw i32 %643, %644
  br label %651

646:                                              ; preds = %633
  %647 = load i8, ptr %635, align 1, !tbaa !21
  %648 = zext i8 %647 to i32
  %649 = shl nuw nsw i32 %648, %594
  %650 = and i32 %649, 65280
  br label %651

651:                                              ; preds = %646, %637
  %652 = phi i32 [ %645, %637 ], [ %650, %646 ]
  %653 = load i16, ptr %634, align 2, !tbaa !29
  %654 = trunc i32 %652 to i16
  %655 = xor i16 %56, %654
  %656 = and i16 %655, %597
  %657 = or i16 %656, %653
  store i16 %657, ptr %634, align 2, !tbaa !29
  %658 = load i16, ptr %635, align 2, !tbaa !29
  br i1 %626, label %659, label %667

659:                                              ; preds = %651
  %660 = zext i16 %658 to i32
  %661 = shl nuw nsw i32 %660, %594
  %662 = load i16, ptr %630, align 2, !tbaa !29
  %663 = zext i16 %662 to i32
  %664 = and i32 %661, %663
  %665 = lshr i32 %660, %77
  %666 = add nuw nsw i32 %664, %665
  br label %672

667:                                              ; preds = %651
  %668 = and i16 %658, -256
  %669 = zext i16 %668 to i32
  %670 = lshr i32 %669, %77
  %671 = and i32 %670, 255
  br label %672

672:                                              ; preds = %667, %659
  %673 = phi i32 [ %666, %659 ], [ %671, %667 ]
  %674 = xor i32 %673, %59
  %675 = and i32 %674, %603
  %676 = getelementptr inbounds i16, ptr %634, i64 1
  %677 = load i16, ptr %676, align 2, !tbaa !29
  %678 = trunc i32 %675 to i16
  %679 = or i16 %677, %678
  store i16 %679, ptr %676, align 2, !tbaa !29
  %680 = add nsw i32 %636, -1
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %792, label %682

682:                                              ; preds = %672
  %683 = getelementptr inbounds i8, ptr %635, i64 %631
  %684 = getelementptr inbounds i8, ptr %634, i64 %632
  br label %633, !llvm.loop !44

685:                                              ; preds = %614, %737
  %686 = phi ptr [ %739, %737 ], [ %70, %614 ]
  %687 = phi ptr [ %738, %737 ], [ %74, %614 ]
  %688 = phi i32 [ %735, %737 ], [ %45, %614 ]
  %689 = load i16, ptr %686, align 2, !tbaa !29
  %690 = zext i16 %689 to i32
  %691 = and i32 %690, %615
  br i1 %616, label %692, label %701

692:                                              ; preds = %685
  %693 = load i16, ptr %687, align 2, !tbaa !29
  %694 = zext i16 %693 to i32
  %695 = lshr i32 %694, %77
  %696 = load i16, ptr %619, align 2, !tbaa !29
  %697 = zext i16 %696 to i32
  %698 = and i32 %695, %697
  %699 = shl nuw nsw i32 %694, %594
  %700 = add nuw nsw i32 %698, %699
  br label %706

701:                                              ; preds = %685
  %702 = load i8, ptr %687, align 1, !tbaa !21
  %703 = zext i8 %702 to i32
  %704 = shl nuw nsw i32 %703, %594
  %705 = and i32 %704, 65280
  br label %706

706:                                              ; preds = %701, %692
  %707 = phi i32 [ %700, %692 ], [ %705, %701 ]
  %708 = xor i32 %707, %59
  %709 = and i32 %708, %598
  %710 = or i32 %709, %691
  %711 = trunc i32 %710 to i16
  store i16 %711, ptr %686, align 2, !tbaa !29
  %712 = getelementptr inbounds i16, ptr %686, i64 1
  %713 = load i16, ptr %712, align 2, !tbaa !29
  %714 = and i16 %713, %601
  %715 = load i16, ptr %687, align 2, !tbaa !29
  br i1 %617, label %716, label %724

716:                                              ; preds = %706
  %717 = zext i16 %715 to i32
  %718 = shl nuw nsw i32 %717, %594
  %719 = load i16, ptr %621, align 2, !tbaa !29
  %720 = zext i16 %719 to i32
  %721 = and i32 %718, %720
  %722 = lshr i32 %717, %77
  %723 = add nuw nsw i32 %721, %722
  br label %729

724:                                              ; preds = %706
  %725 = and i16 %715, -256
  %726 = zext i16 %725 to i32
  %727 = lshr i32 %726, %77
  %728 = and i32 %727, 255
  br label %729

729:                                              ; preds = %724, %716
  %730 = phi i32 [ %723, %716 ], [ %728, %724 ]
  %731 = xor i32 %730, %59
  %732 = and i32 %731, %603
  %733 = trunc i32 %732 to i16
  %734 = or i16 %714, %733
  store i16 %734, ptr %712, align 2, !tbaa !29
  %735 = add nsw i32 %688, -1
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %792, label %737

737:                                              ; preds = %729
  %738 = getelementptr inbounds i8, ptr %687, i64 %622
  %739 = getelementptr inbounds i8, ptr %686, i64 %623
  br label %685, !llvm.loop !45

740:                                              ; preds = %604, %789
  %741 = phi ptr [ %791, %789 ], [ %70, %604 ]
  %742 = phi ptr [ %790, %789 ], [ %74, %604 ]
  %743 = phi i32 [ %787, %789 ], [ %45, %604 ]
  br i1 %605, label %744, label %753

744:                                              ; preds = %740
  %745 = load i16, ptr %742, align 2, !tbaa !29
  %746 = zext i16 %745 to i32
  %747 = lshr i32 %746, %77
  %748 = load i16, ptr %609, align 2, !tbaa !29
  %749 = zext i16 %748 to i32
  %750 = and i32 %747, %749
  %751 = shl nuw nsw i32 %746, %594
  %752 = add nuw nsw i32 %750, %751
  br label %758

753:                                              ; preds = %740
  %754 = load i8, ptr %742, align 1, !tbaa !21
  %755 = zext i8 %754 to i32
  %756 = shl nuw nsw i32 %755, %594
  %757 = and i32 %756, 65280
  br label %758

758:                                              ; preds = %753, %744
  %759 = phi i32 [ %752, %744 ], [ %757, %753 ]
  %760 = xor i32 %759, %59
  %761 = or i32 %760, %606
  %762 = load i16, ptr %741, align 2, !tbaa !29
  %763 = trunc i32 %761 to i16
  %764 = and i16 %762, %763
  store i16 %764, ptr %741, align 2, !tbaa !29
  %765 = load i16, ptr %742, align 2, !tbaa !29
  br i1 %607, label %766, label %774

766:                                              ; preds = %758
  %767 = zext i16 %765 to i32
  %768 = shl nuw nsw i32 %767, %594
  %769 = load i16, ptr %611, align 2, !tbaa !29
  %770 = zext i16 %769 to i32
  %771 = and i32 %768, %770
  %772 = lshr i32 %767, %77
  %773 = add nuw nsw i32 %771, %772
  br label %779

774:                                              ; preds = %758
  %775 = and i16 %765, -256
  %776 = zext i16 %775 to i32
  %777 = lshr i32 %776, %77
  %778 = and i32 %777, 255
  br label %779

779:                                              ; preds = %774, %766
  %780 = phi i32 [ %773, %766 ], [ %778, %774 ]
  %781 = getelementptr inbounds i16, ptr %741, i64 1
  %782 = load i16, ptr %781, align 2, !tbaa !29
  %783 = trunc i32 %780 to i16
  %784 = xor i16 %56, %783
  %785 = or i16 %784, %601
  %786 = and i16 %785, %782
  store i16 %786, ptr %781, align 2, !tbaa !29
  %787 = add nsw i32 %743, -1
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %792, label %789

789:                                              ; preds = %779
  %790 = getelementptr inbounds i8, ptr %742, i64 %612
  %791 = getelementptr inbounds i8, ptr %741, i64 %613
  br label %740, !llvm.loop !46

792:                                              ; preds = %779, %729, %672, %593
  %793 = phi i1 [ true, %593 ], [ false, %672 ], [ false, %729 ], [ false, %779 ]
  %794 = phi i32 [ %45, %593 ], [ 0, %672 ], [ 0, %729 ], [ 0, %779 ]
  br i1 %793, label %1488, label %1523

795:                                              ; preds = %591
  %796 = lshr i32 %79, 3
  %797 = and i32 %796, 536870910
  %798 = sub nsw i32 %3, %797
  %799 = sub i32 %61, %797
  %800 = zext nneg i32 %75 to i64
  %801 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %800
  %802 = load i16, ptr %801, align 2, !tbaa !29
  %803 = zext i16 %802 to i32
  %804 = and i32 %78, 15
  %805 = zext nneg i32 %804 to i64
  %806 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %805
  %807 = load i16, ptr %806, align 2, !tbaa !29
  %808 = zext i16 %807 to i32
  %809 = xor i32 %808, -1
  %810 = icmp eq i32 %75, %76
  br i1 %810, label %811, label %951

811:                                              ; preds = %795
  switch i16 %58, label %1485 [
    i16 0, label %819
    i16 1, label %815
    i16 2, label %812
  ]

812:                                              ; preds = %811
  %813 = xor i16 %802, -1
  %814 = icmp sgt i32 %78, 31
  br label %908

815:                                              ; preds = %811
  %816 = xor i16 %802, -1
  %817 = icmp sgt i32 %78, 31
  %818 = trunc i32 %809 to i16
  br label %865

819:                                              ; preds = %811
  %820 = icmp sgt i32 %78, 31
  %821 = trunc i32 %809 to i16
  br label %822

822:                                              ; preds = %819, %856
  %823 = phi ptr [ %861, %856 ], [ %70, %819 ]
  %824 = phi ptr [ %864, %856 ], [ %74, %819 ]
  %825 = phi i32 [ %857, %856 ], [ %45, %819 ]
  %826 = load i16, ptr %824, align 2, !tbaa !29
  %827 = xor i16 %826, %56
  %828 = and i16 %827, %802
  %829 = load i16, ptr %823, align 2, !tbaa !29
  %830 = or i16 %828, %829
  store i16 %830, ptr %823, align 2, !tbaa !29
  br i1 %820, label %831, label %843

831:                                              ; preds = %822, %831
  %832 = phi i32 [ %835, %831 ], [ %79, %822 ]
  %833 = phi ptr [ %836, %831 ], [ %824, %822 ]
  %834 = phi ptr [ %837, %831 ], [ %823, %822 ]
  %835 = add nsw i32 %832, -16
  %836 = getelementptr inbounds i8, ptr %833, i64 2
  %837 = getelementptr inbounds i8, ptr %834, i64 2
  %838 = load i16, ptr %836, align 2, !tbaa !29
  %839 = xor i16 %838, %56
  %840 = load i16, ptr %837, align 2, !tbaa !29
  %841 = or i16 %839, %840
  store i16 %841, ptr %837, align 2, !tbaa !29
  %842 = icmp sgt i32 %832, 31
  br i1 %842, label %831, label %843, !llvm.loop !47

843:                                              ; preds = %831, %822
  %844 = phi ptr [ %823, %822 ], [ %837, %831 ]
  %845 = phi ptr [ %824, %822 ], [ %836, %831 ]
  %846 = phi i32 [ %79, %822 ], [ %835, %831 ]
  %847 = icmp sgt i32 %846, 0
  br i1 %847, label %848, label %856

848:                                              ; preds = %843
  %849 = getelementptr inbounds i8, ptr %845, i64 2
  %850 = load i16, ptr %849, align 2, !tbaa !29
  %851 = xor i16 %850, %56
  %852 = getelementptr inbounds i16, ptr %844, i64 1
  %853 = load i16, ptr %852, align 2, !tbaa !29
  %854 = and i16 %851, %821
  %855 = or i16 %853, %854
  store i16 %855, ptr %852, align 2, !tbaa !29
  br label %856

856:                                              ; preds = %848, %843
  %857 = add nsw i32 %825, -1
  %858 = icmp eq i32 %857, 0
  %859 = select i1 %858, i32 0, i32 %799
  %860 = zext i32 %859 to i64
  %861 = getelementptr inbounds i8, ptr %844, i64 %860
  %862 = select i1 %858, i32 0, i32 %798
  %863 = zext i32 %862 to i64
  %864 = getelementptr inbounds i8, ptr %845, i64 %863
  br i1 %858, label %1485, label %822

865:                                              ; preds = %815, %899
  %866 = phi ptr [ %904, %899 ], [ %70, %815 ]
  %867 = phi ptr [ %907, %899 ], [ %74, %815 ]
  %868 = phi i32 [ %900, %899 ], [ %45, %815 ]
  %869 = load i16, ptr %866, align 2, !tbaa !29
  %870 = and i16 %869, %816
  %871 = load i16, ptr %867, align 2, !tbaa !29
  %872 = xor i16 %871, %56
  %873 = and i16 %872, %802
  %874 = or i16 %873, %870
  store i16 %874, ptr %866, align 2, !tbaa !29
  br i1 %817, label %875, label %885

875:                                              ; preds = %865, %875
  %876 = phi i32 [ %879, %875 ], [ %79, %865 ]
  %877 = phi ptr [ %880, %875 ], [ %867, %865 ]
  %878 = phi ptr [ %881, %875 ], [ %866, %865 ]
  %879 = add nsw i32 %876, -16
  %880 = getelementptr inbounds i8, ptr %877, i64 2
  %881 = getelementptr inbounds i8, ptr %878, i64 2
  %882 = load i16, ptr %880, align 2, !tbaa !29
  %883 = xor i16 %882, %56
  store i16 %883, ptr %881, align 2, !tbaa !29
  %884 = icmp sgt i32 %876, 31
  br i1 %884, label %875, label %885, !llvm.loop !48

885:                                              ; preds = %875, %865
  %886 = phi ptr [ %866, %865 ], [ %881, %875 ]
  %887 = phi ptr [ %867, %865 ], [ %880, %875 ]
  %888 = phi i32 [ %79, %865 ], [ %879, %875 ]
  %889 = icmp sgt i32 %888, 0
  br i1 %889, label %890, label %899

890:                                              ; preds = %885
  %891 = getelementptr inbounds i16, ptr %886, i64 1
  %892 = load i16, ptr %891, align 2, !tbaa !29
  %893 = and i16 %892, %807
  %894 = getelementptr inbounds i8, ptr %887, i64 2
  %895 = load i16, ptr %894, align 2, !tbaa !29
  %896 = xor i16 %895, %56
  %897 = and i16 %896, %818
  %898 = or i16 %893, %897
  store i16 %898, ptr %891, align 2, !tbaa !29
  br label %899

899:                                              ; preds = %890, %885
  %900 = add nsw i32 %868, -1
  %901 = icmp eq i32 %900, 0
  %902 = select i1 %901, i32 0, i32 %799
  %903 = zext i32 %902 to i64
  %904 = getelementptr inbounds i8, ptr %886, i64 %903
  %905 = select i1 %901, i32 0, i32 %798
  %906 = zext i32 %905 to i64
  %907 = getelementptr inbounds i8, ptr %887, i64 %906
  br i1 %901, label %1485, label %865

908:                                              ; preds = %812, %942
  %909 = phi ptr [ %947, %942 ], [ %70, %812 ]
  %910 = phi ptr [ %950, %942 ], [ %74, %812 ]
  %911 = phi i32 [ %943, %942 ], [ %45, %812 ]
  %912 = load i16, ptr %910, align 2, !tbaa !29
  %913 = xor i16 %912, %56
  %914 = or i16 %913, %813
  %915 = load i16, ptr %909, align 2, !tbaa !29
  %916 = and i16 %914, %915
  store i16 %916, ptr %909, align 2, !tbaa !29
  br i1 %814, label %917, label %929

917:                                              ; preds = %908, %917
  %918 = phi i32 [ %921, %917 ], [ %79, %908 ]
  %919 = phi ptr [ %922, %917 ], [ %910, %908 ]
  %920 = phi ptr [ %923, %917 ], [ %909, %908 ]
  %921 = add nsw i32 %918, -16
  %922 = getelementptr inbounds i8, ptr %919, i64 2
  %923 = getelementptr inbounds i8, ptr %920, i64 2
  %924 = load i16, ptr %922, align 2, !tbaa !29
  %925 = xor i16 %924, %56
  %926 = load i16, ptr %923, align 2, !tbaa !29
  %927 = and i16 %925, %926
  store i16 %927, ptr %923, align 2, !tbaa !29
  %928 = icmp sgt i32 %918, 31
  br i1 %928, label %917, label %929, !llvm.loop !49

929:                                              ; preds = %917, %908
  %930 = phi ptr [ %909, %908 ], [ %923, %917 ]
  %931 = phi ptr [ %910, %908 ], [ %922, %917 ]
  %932 = phi i32 [ %79, %908 ], [ %921, %917 ]
  %933 = icmp sgt i32 %932, 0
  br i1 %933, label %934, label %942

934:                                              ; preds = %929
  %935 = getelementptr inbounds i8, ptr %931, i64 2
  %936 = load i16, ptr %935, align 2, !tbaa !29
  %937 = xor i16 %936, %56
  %938 = or i16 %937, %807
  %939 = getelementptr inbounds i16, ptr %930, i64 1
  %940 = load i16, ptr %939, align 2, !tbaa !29
  %941 = and i16 %938, %940
  store i16 %941, ptr %939, align 2, !tbaa !29
  br label %942

942:                                              ; preds = %934, %929
  %943 = add nsw i32 %911, -1
  %944 = icmp eq i32 %943, 0
  %945 = select i1 %944, i32 0, i32 %799
  %946 = zext i32 %945 to i64
  %947 = getelementptr inbounds i8, ptr %930, i64 %946
  %948 = select i1 %944, i32 0, i32 %798
  %949 = zext i32 %948 to i64
  %950 = getelementptr inbounds i8, ptr %931, i64 %949
  br i1 %944, label %1485, label %908

951:                                              ; preds = %795
  %952 = lshr i32 %77, 30
  %953 = and i32 %952, 2
  %954 = zext nneg i32 %953 to i64
  %955 = getelementptr inbounds i8, ptr %74, i64 %954
  %956 = lshr i32 %77, 29
  %957 = and i32 %956, 4
  %958 = zext i16 %58 to i32
  %959 = add nuw nsw i32 %957, %958
  %960 = sub nsw i32 0, %77
  %961 = and i32 %960, 15
  %962 = and i32 %77, 15
  %963 = icmp ult i32 %962, 8
  %964 = zext nneg i32 %962 to i64
  %965 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %964
  %966 = icmp ult i32 %961, 8
  %967 = zext nneg i32 %962 to i64
  %968 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %967
  %969 = zext nneg i32 %961 to i64
  %970 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %969
  %971 = xor i32 %803, -1
  %972 = icmp sgt i32 %78, 31
  %973 = icmp ult i32 %961, 8
  %974 = zext nneg i32 %962 to i64
  %975 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %974
  %976 = zext nneg i32 %961 to i64
  %977 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %976
  %978 = icmp ult i32 %961, 8
  %979 = zext nneg i32 %961 to i64
  %980 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %979
  %981 = icmp ult i32 %962, 8
  %982 = zext nneg i32 %962 to i64
  %983 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %982
  %984 = icmp ult i32 %962, 8
  %985 = zext nneg i32 %962 to i64
  %986 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %985
  %987 = icmp ult i32 %961, 8
  %988 = zext nneg i32 %962 to i64
  %989 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %988
  %990 = zext nneg i32 %961 to i64
  %991 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %990
  %992 = xor i32 %803, -1
  %993 = icmp sgt i32 %78, 31
  %994 = icmp ult i32 %961, 8
  %995 = zext nneg i32 %962 to i64
  %996 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %995
  %997 = zext nneg i32 %961 to i64
  %998 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %997
  %999 = icmp ult i32 %961, 8
  %1000 = zext nneg i32 %961 to i64
  %1001 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %1000
  %1002 = icmp ult i32 %962, 8
  %1003 = zext nneg i32 %962 to i64
  %1004 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %1003
  %1005 = icmp ult i32 %962, 8
  %1006 = zext nneg i32 %962 to i64
  %1007 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %1006
  %1008 = icmp ult i32 %961, 8
  %1009 = zext nneg i32 %962 to i64
  %1010 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %1009
  %1011 = zext nneg i32 %961 to i64
  %1012 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %1011
  %1013 = icmp sgt i32 %78, 31
  %1014 = icmp ult i32 %961, 8
  %1015 = zext nneg i32 %962 to i64
  %1016 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %1015
  %1017 = zext nneg i32 %961 to i64
  %1018 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %1017
  %1019 = icmp ult i32 %961, 8
  %1020 = zext nneg i32 %961 to i64
  %1021 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %1020
  %1022 = icmp ult i32 %962, 8
  %1023 = zext nneg i32 %962 to i64
  %1024 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %1023
  %1025 = zext i32 %798 to i64
  %1026 = zext i32 %799 to i64
  br label %1027

1027:                                             ; preds = %1478, %951
  %1028 = phi ptr [ %70, %951 ], [ %1481, %1478 ]
  %1029 = phi ptr [ %955, %951 ], [ %1482, %1478 ]
  %1030 = phi i32 [ %45, %951 ], [ %1483, %1478 ]
  switch i32 %959, label %1478 [
    i32 4, label %1031
    i32 0, label %1061
    i32 5, label %1177
    i32 1, label %1207
    i32 6, label %1324
    i32 2, label %1354
  ]

1031:                                             ; preds = %1027
  %1032 = getelementptr inbounds i8, ptr %1029, i64 -2
  %1033 = load i16, ptr %1032, align 2, !tbaa !29
  br i1 %1008, label %1034, label %1047

1034:                                             ; preds = %1031
  %1035 = zext i16 %1033 to i32
  %1036 = shl nuw nsw i32 %1035, %961
  %1037 = load i16, ptr %1012, align 2, !tbaa !29
  %1038 = zext i16 %1037 to i32
  %1039 = and i32 %1036, %1038
  %1040 = lshr i32 %1035, %962
  %1041 = add nuw nsw i32 %1039, %1040
  %1042 = load i8, ptr %1029, align 1, !tbaa !21
  %1043 = zext i8 %1042 to i32
  %1044 = shl nuw nsw i32 %1043, %961
  %1045 = and i32 %1044, 32512
  %1046 = add nuw nsw i32 %1041, %1045
  br label %1076

1047:                                             ; preds = %1031
  %1048 = and i16 %1033, -256
  %1049 = zext i16 %1048 to i32
  %1050 = lshr i32 %1049, %962
  %1051 = and i32 %1050, 255
  %1052 = load i16, ptr %1029, align 2, !tbaa !29
  %1053 = zext i16 %1052 to i32
  %1054 = lshr i32 %1053, %962
  %1055 = load i16, ptr %1010, align 2, !tbaa !29
  %1056 = zext i16 %1055 to i32
  %1057 = and i32 %1054, %1056
  %1058 = shl nuw nsw i32 %1053, %961
  %1059 = add nuw i32 %1057, %1058
  %1060 = add nuw i32 %1059, %1051
  br label %1076

1061:                                             ; preds = %1027
  br i1 %1005, label %1062, label %1071

1062:                                             ; preds = %1061
  %1063 = load i16, ptr %1029, align 2, !tbaa !29
  %1064 = zext i16 %1063 to i32
  %1065 = lshr i32 %1064, %962
  %1066 = load i16, ptr %1007, align 2, !tbaa !29
  %1067 = zext i16 %1066 to i32
  %1068 = and i32 %1065, %1067
  %1069 = shl nuw nsw i32 %1064, %961
  %1070 = add nuw nsw i32 %1068, %1069
  br label %1076

1071:                                             ; preds = %1061
  %1072 = load i8, ptr %1029, align 1, !tbaa !21
  %1073 = zext i8 %1072 to i32
  %1074 = shl nuw nsw i32 %1073, %961
  %1075 = and i32 %1074, 65280
  br label %1076

1076:                                             ; preds = %1062, %1071, %1034, %1047
  %1077 = phi i32 [ %1046, %1034 ], [ %1060, %1047 ], [ %1070, %1062 ], [ %1075, %1071 ]
  %1078 = load i16, ptr %1028, align 2, !tbaa !29
  %1079 = trunc i32 %1077 to i16
  %1080 = xor i16 %56, %1079
  %1081 = and i16 %1080, %802
  %1082 = or i16 %1081, %1078
  store i16 %1082, ptr %1028, align 2, !tbaa !29
  br i1 %1013, label %1083, label %1127

1083:                                             ; preds = %1076, %1117
  %1084 = phi i32 [ %1125, %1117 ], [ %79, %1076 ]
  %1085 = phi ptr [ %1119, %1117 ], [ %1029, %1076 ]
  %1086 = phi ptr [ %1120, %1117 ], [ %1028, %1076 ]
  %1087 = load i16, ptr %1085, align 2, !tbaa !29
  br i1 %1014, label %1088, label %1102

1088:                                             ; preds = %1083
  %1089 = zext i16 %1087 to i32
  %1090 = shl nuw nsw i32 %1089, %961
  %1091 = load i16, ptr %1018, align 2, !tbaa !29
  %1092 = zext i16 %1091 to i32
  %1093 = and i32 %1090, %1092
  %1094 = lshr i32 %1089, %962
  %1095 = add nuw nsw i32 %1093, %1094
  %1096 = getelementptr inbounds i8, ptr %1085, i64 2
  %1097 = load i8, ptr %1096, align 1, !tbaa !21
  %1098 = zext i8 %1097 to i32
  %1099 = shl nuw nsw i32 %1098, %961
  %1100 = and i32 %1099, 32512
  %1101 = add nuw nsw i32 %1095, %1100
  br label %1117

1102:                                             ; preds = %1083
  %1103 = and i16 %1087, -256
  %1104 = zext i16 %1103 to i32
  %1105 = lshr i32 %1104, %962
  %1106 = and i32 %1105, 255
  %1107 = getelementptr inbounds i16, ptr %1085, i64 1
  %1108 = load i16, ptr %1107, align 2, !tbaa !29
  %1109 = zext i16 %1108 to i32
  %1110 = lshr i32 %1109, %962
  %1111 = load i16, ptr %1016, align 2, !tbaa !29
  %1112 = zext i16 %1111 to i32
  %1113 = and i32 %1110, %1112
  %1114 = shl nuw nsw i32 %1109, %961
  %1115 = add nuw i32 %1113, %1114
  %1116 = add nuw i32 %1115, %1106
  br label %1117

1117:                                             ; preds = %1102, %1088
  %1118 = phi i32 [ %1101, %1088 ], [ %1116, %1102 ]
  %1119 = getelementptr inbounds i8, ptr %1085, i64 2
  %1120 = getelementptr inbounds i8, ptr %1086, i64 2
  %1121 = load i16, ptr %1120, align 2, !tbaa !29
  %1122 = trunc i32 %1118 to i16
  %1123 = xor i16 %56, %1122
  %1124 = or i16 %1123, %1121
  store i16 %1124, ptr %1120, align 2, !tbaa !29
  %1125 = add nsw i32 %1084, -16
  %1126 = icmp sgt i32 %1084, 31
  br i1 %1126, label %1083, label %1127, !llvm.loop !50

1127:                                             ; preds = %1117, %1076
  %1128 = phi ptr [ %1028, %1076 ], [ %1120, %1117 ]
  %1129 = phi ptr [ %1029, %1076 ], [ %1119, %1117 ]
  %1130 = phi i32 [ %79, %1076 ], [ %1125, %1117 ]
  %1131 = icmp sgt i32 %1130, 0
  br i1 %1131, label %1132, label %1470

1132:                                             ; preds = %1127
  %1133 = load i16, ptr %1129, align 2, !tbaa !29
  br i1 %1019, label %1134, label %1142

1134:                                             ; preds = %1132
  %1135 = zext i16 %1133 to i32
  %1136 = shl nuw nsw i32 %1135, %961
  %1137 = load i16, ptr %1021, align 2, !tbaa !29
  %1138 = zext i16 %1137 to i32
  %1139 = and i32 %1136, %1138
  %1140 = lshr i32 %1135, %962
  %1141 = add nuw nsw i32 %1139, %1140
  br label %1147

1142:                                             ; preds = %1132
  %1143 = and i16 %1133, -256
  %1144 = zext i16 %1143 to i32
  %1145 = lshr i32 %1144, %962
  %1146 = and i32 %1145, 255
  br label %1147

1147:                                             ; preds = %1142, %1134
  %1148 = phi i32 [ %1141, %1134 ], [ %1146, %1142 ]
  %1149 = icmp sgt i32 %1130, %962
  br i1 %1149, label %1150, label %1169

1150:                                             ; preds = %1147
  %1151 = getelementptr inbounds i8, ptr %1129, i64 2
  br i1 %1022, label %1152, label %1161

1152:                                             ; preds = %1150
  %1153 = load i16, ptr %1151, align 2, !tbaa !29
  %1154 = zext i16 %1153 to i32
  %1155 = lshr i32 %1154, %962
  %1156 = load i16, ptr %1024, align 2, !tbaa !29
  %1157 = zext i16 %1156 to i32
  %1158 = and i32 %1155, %1157
  %1159 = shl nuw nsw i32 %1154, %961
  %1160 = add nuw nsw i32 %1158, %1159
  br label %1166

1161:                                             ; preds = %1150
  %1162 = load i8, ptr %1151, align 1, !tbaa !21
  %1163 = zext i8 %1162 to i32
  %1164 = shl nuw nsw i32 %1163, %961
  %1165 = and i32 %1164, 65280
  br label %1166

1166:                                             ; preds = %1161, %1152
  %1167 = phi i32 [ %1160, %1152 ], [ %1165, %1161 ]
  %1168 = add nuw i32 %1167, %1148
  br label %1169

1169:                                             ; preds = %1166, %1147
  %1170 = phi i32 [ %1168, %1166 ], [ %1148, %1147 ]
  %1171 = xor i32 %1170, %59
  %1172 = and i32 %1171, %809
  %1173 = getelementptr inbounds i16, ptr %1128, i64 1
  %1174 = load i16, ptr %1173, align 2, !tbaa !29
  %1175 = trunc i32 %1172 to i16
  %1176 = or i16 %1174, %1175
  store i16 %1176, ptr %1173, align 2, !tbaa !29
  br label %1470

1177:                                             ; preds = %1027
  %1178 = getelementptr inbounds i8, ptr %1029, i64 -2
  %1179 = load i16, ptr %1178, align 2, !tbaa !29
  br i1 %987, label %1180, label %1193

1180:                                             ; preds = %1177
  %1181 = zext i16 %1179 to i32
  %1182 = shl nuw nsw i32 %1181, %961
  %1183 = load i16, ptr %991, align 2, !tbaa !29
  %1184 = zext i16 %1183 to i32
  %1185 = and i32 %1182, %1184
  %1186 = lshr i32 %1181, %962
  %1187 = add nuw nsw i32 %1185, %1186
  %1188 = load i8, ptr %1029, align 1, !tbaa !21
  %1189 = zext i8 %1188 to i32
  %1190 = shl nuw nsw i32 %1189, %961
  %1191 = and i32 %1190, 32512
  %1192 = add nuw nsw i32 %1187, %1191
  br label %1222

1193:                                             ; preds = %1177
  %1194 = and i16 %1179, -256
  %1195 = zext i16 %1194 to i32
  %1196 = lshr i32 %1195, %962
  %1197 = and i32 %1196, 255
  %1198 = load i16, ptr %1029, align 2, !tbaa !29
  %1199 = zext i16 %1198 to i32
  %1200 = lshr i32 %1199, %962
  %1201 = load i16, ptr %989, align 2, !tbaa !29
  %1202 = zext i16 %1201 to i32
  %1203 = and i32 %1200, %1202
  %1204 = shl nuw nsw i32 %1199, %961
  %1205 = add nuw i32 %1203, %1204
  %1206 = add nuw i32 %1205, %1197
  br label %1222

1207:                                             ; preds = %1027
  br i1 %984, label %1208, label %1217

1208:                                             ; preds = %1207
  %1209 = load i16, ptr %1029, align 2, !tbaa !29
  %1210 = zext i16 %1209 to i32
  %1211 = lshr i32 %1210, %962
  %1212 = load i16, ptr %986, align 2, !tbaa !29
  %1213 = zext i16 %1212 to i32
  %1214 = and i32 %1211, %1213
  %1215 = shl nuw nsw i32 %1210, %961
  %1216 = add nuw nsw i32 %1214, %1215
  br label %1222

1217:                                             ; preds = %1207
  %1218 = load i8, ptr %1029, align 1, !tbaa !21
  %1219 = zext i8 %1218 to i32
  %1220 = shl nuw nsw i32 %1219, %961
  %1221 = and i32 %1220, 65280
  br label %1222

1222:                                             ; preds = %1208, %1217, %1180, %1193
  %1223 = phi i32 [ %1192, %1180 ], [ %1206, %1193 ], [ %1216, %1208 ], [ %1221, %1217 ]
  %1224 = load i16, ptr %1028, align 2, !tbaa !29
  %1225 = zext i16 %1224 to i32
  %1226 = and i32 %1225, %992
  %1227 = xor i32 %1223, %59
  %1228 = and i32 %1227, %803
  %1229 = or i32 %1226, %1228
  %1230 = trunc i32 %1229 to i16
  store i16 %1230, ptr %1028, align 2, !tbaa !29
  br i1 %993, label %1231, label %1273

1231:                                             ; preds = %1222, %1265
  %1232 = phi i32 [ %1271, %1265 ], [ %79, %1222 ]
  %1233 = phi ptr [ %1267, %1265 ], [ %1029, %1222 ]
  %1234 = phi ptr [ %1268, %1265 ], [ %1028, %1222 ]
  %1235 = load i16, ptr %1233, align 2, !tbaa !29
  br i1 %994, label %1236, label %1250

1236:                                             ; preds = %1231
  %1237 = zext i16 %1235 to i32
  %1238 = shl nuw nsw i32 %1237, %961
  %1239 = load i16, ptr %998, align 2, !tbaa !29
  %1240 = zext i16 %1239 to i32
  %1241 = and i32 %1238, %1240
  %1242 = lshr i32 %1237, %962
  %1243 = add nuw nsw i32 %1241, %1242
  %1244 = getelementptr inbounds i8, ptr %1233, i64 2
  %1245 = load i8, ptr %1244, align 1, !tbaa !21
  %1246 = zext i8 %1245 to i32
  %1247 = shl nuw nsw i32 %1246, %961
  %1248 = and i32 %1247, 32512
  %1249 = add nuw nsw i32 %1243, %1248
  br label %1265

1250:                                             ; preds = %1231
  %1251 = and i16 %1235, -256
  %1252 = zext i16 %1251 to i32
  %1253 = lshr i32 %1252, %962
  %1254 = and i32 %1253, 255
  %1255 = getelementptr inbounds i16, ptr %1233, i64 1
  %1256 = load i16, ptr %1255, align 2, !tbaa !29
  %1257 = zext i16 %1256 to i32
  %1258 = lshr i32 %1257, %962
  %1259 = load i16, ptr %996, align 2, !tbaa !29
  %1260 = zext i16 %1259 to i32
  %1261 = and i32 %1258, %1260
  %1262 = shl nuw nsw i32 %1257, %961
  %1263 = add nuw i32 %1261, %1262
  %1264 = add nuw i32 %1263, %1254
  br label %1265

1265:                                             ; preds = %1250, %1236
  %1266 = phi i32 [ %1249, %1236 ], [ %1264, %1250 ]
  %1267 = getelementptr inbounds i8, ptr %1233, i64 2
  %1268 = getelementptr inbounds i8, ptr %1234, i64 2
  %1269 = trunc i32 %1266 to i16
  %1270 = xor i16 %56, %1269
  store i16 %1270, ptr %1268, align 2, !tbaa !29
  %1271 = add nsw i32 %1232, -16
  %1272 = icmp sgt i32 %1232, 31
  br i1 %1272, label %1231, label %1273, !llvm.loop !51

1273:                                             ; preds = %1265, %1222
  %1274 = phi ptr [ %1028, %1222 ], [ %1268, %1265 ]
  %1275 = phi ptr [ %1029, %1222 ], [ %1267, %1265 ]
  %1276 = phi i32 [ %79, %1222 ], [ %1271, %1265 ]
  %1277 = icmp sgt i32 %1276, 0
  br i1 %1277, label %1278, label %1470

1278:                                             ; preds = %1273
  %1279 = load i16, ptr %1275, align 2, !tbaa !29
  br i1 %999, label %1280, label %1288

1280:                                             ; preds = %1278
  %1281 = zext i16 %1279 to i32
  %1282 = shl nuw nsw i32 %1281, %961
  %1283 = load i16, ptr %1001, align 2, !tbaa !29
  %1284 = zext i16 %1283 to i32
  %1285 = and i32 %1282, %1284
  %1286 = lshr i32 %1281, %962
  %1287 = add nuw nsw i32 %1285, %1286
  br label %1293

1288:                                             ; preds = %1278
  %1289 = and i16 %1279, -256
  %1290 = zext i16 %1289 to i32
  %1291 = lshr i32 %1290, %962
  %1292 = and i32 %1291, 255
  br label %1293

1293:                                             ; preds = %1288, %1280
  %1294 = phi i32 [ %1287, %1280 ], [ %1292, %1288 ]
  %1295 = icmp sgt i32 %1276, %962
  br i1 %1295, label %1296, label %1315

1296:                                             ; preds = %1293
  %1297 = getelementptr inbounds i8, ptr %1275, i64 2
  br i1 %1002, label %1298, label %1307

1298:                                             ; preds = %1296
  %1299 = load i16, ptr %1297, align 2, !tbaa !29
  %1300 = zext i16 %1299 to i32
  %1301 = lshr i32 %1300, %962
  %1302 = load i16, ptr %1004, align 2, !tbaa !29
  %1303 = zext i16 %1302 to i32
  %1304 = and i32 %1301, %1303
  %1305 = shl nuw nsw i32 %1300, %961
  %1306 = add nuw nsw i32 %1304, %1305
  br label %1312

1307:                                             ; preds = %1296
  %1308 = load i8, ptr %1297, align 1, !tbaa !21
  %1309 = zext i8 %1308 to i32
  %1310 = shl nuw nsw i32 %1309, %961
  %1311 = and i32 %1310, 65280
  br label %1312

1312:                                             ; preds = %1307, %1298
  %1313 = phi i32 [ %1306, %1298 ], [ %1311, %1307 ]
  %1314 = add nuw i32 %1313, %1294
  br label %1315

1315:                                             ; preds = %1312, %1293
  %1316 = phi i32 [ %1314, %1312 ], [ %1294, %1293 ]
  %1317 = getelementptr inbounds i16, ptr %1274, i64 1
  %1318 = load i16, ptr %1317, align 2, !tbaa !29
  %1319 = and i16 %1318, %807
  %1320 = xor i32 %1316, %59
  %1321 = and i32 %1320, %809
  %1322 = trunc i32 %1321 to i16
  %1323 = or i16 %1319, %1322
  store i16 %1323, ptr %1317, align 2, !tbaa !29
  br label %1470

1324:                                             ; preds = %1027
  %1325 = getelementptr inbounds i8, ptr %1029, i64 -2
  %1326 = load i16, ptr %1325, align 2, !tbaa !29
  br i1 %966, label %1327, label %1340

1327:                                             ; preds = %1324
  %1328 = zext i16 %1326 to i32
  %1329 = shl nuw nsw i32 %1328, %961
  %1330 = load i16, ptr %970, align 2, !tbaa !29
  %1331 = zext i16 %1330 to i32
  %1332 = and i32 %1329, %1331
  %1333 = lshr i32 %1328, %962
  %1334 = add nuw nsw i32 %1332, %1333
  %1335 = load i8, ptr %1029, align 1, !tbaa !21
  %1336 = zext i8 %1335 to i32
  %1337 = shl nuw nsw i32 %1336, %961
  %1338 = and i32 %1337, 32512
  %1339 = add nuw nsw i32 %1334, %1338
  br label %1369

1340:                                             ; preds = %1324
  %1341 = and i16 %1326, -256
  %1342 = zext i16 %1341 to i32
  %1343 = lshr i32 %1342, %962
  %1344 = and i32 %1343, 255
  %1345 = load i16, ptr %1029, align 2, !tbaa !29
  %1346 = zext i16 %1345 to i32
  %1347 = lshr i32 %1346, %962
  %1348 = load i16, ptr %968, align 2, !tbaa !29
  %1349 = zext i16 %1348 to i32
  %1350 = and i32 %1347, %1349
  %1351 = shl nuw nsw i32 %1346, %961
  %1352 = add nuw i32 %1350, %1351
  %1353 = add nuw i32 %1352, %1344
  br label %1369

1354:                                             ; preds = %1027
  br i1 %963, label %1355, label %1364

1355:                                             ; preds = %1354
  %1356 = load i16, ptr %1029, align 2, !tbaa !29
  %1357 = zext i16 %1356 to i32
  %1358 = lshr i32 %1357, %962
  %1359 = load i16, ptr %965, align 2, !tbaa !29
  %1360 = zext i16 %1359 to i32
  %1361 = and i32 %1358, %1360
  %1362 = shl nuw nsw i32 %1357, %961
  %1363 = add nuw nsw i32 %1361, %1362
  br label %1369

1364:                                             ; preds = %1354
  %1365 = load i8, ptr %1029, align 1, !tbaa !21
  %1366 = zext i8 %1365 to i32
  %1367 = shl nuw nsw i32 %1366, %961
  %1368 = and i32 %1367, 65280
  br label %1369

1369:                                             ; preds = %1355, %1364, %1327, %1340
  %1370 = phi i32 [ %1339, %1327 ], [ %1353, %1340 ], [ %1363, %1355 ], [ %1368, %1364 ]
  %1371 = xor i32 %1370, %59
  %1372 = or i32 %1371, %971
  %1373 = load i16, ptr %1028, align 2, !tbaa !29
  %1374 = trunc i32 %1372 to i16
  %1375 = and i16 %1373, %1374
  store i16 %1375, ptr %1028, align 2, !tbaa !29
  br i1 %972, label %1376, label %1420

1376:                                             ; preds = %1369, %1410
  %1377 = phi i32 [ %1418, %1410 ], [ %79, %1369 ]
  %1378 = phi ptr [ %1412, %1410 ], [ %1029, %1369 ]
  %1379 = phi ptr [ %1413, %1410 ], [ %1028, %1369 ]
  %1380 = load i16, ptr %1378, align 2, !tbaa !29
  br i1 %973, label %1381, label %1395

1381:                                             ; preds = %1376
  %1382 = zext i16 %1380 to i32
  %1383 = shl nuw nsw i32 %1382, %961
  %1384 = load i16, ptr %977, align 2, !tbaa !29
  %1385 = zext i16 %1384 to i32
  %1386 = and i32 %1383, %1385
  %1387 = lshr i32 %1382, %962
  %1388 = add nuw nsw i32 %1386, %1387
  %1389 = getelementptr inbounds i8, ptr %1378, i64 2
  %1390 = load i8, ptr %1389, align 1, !tbaa !21
  %1391 = zext i8 %1390 to i32
  %1392 = shl nuw nsw i32 %1391, %961
  %1393 = and i32 %1392, 32512
  %1394 = add nuw nsw i32 %1388, %1393
  br label %1410

1395:                                             ; preds = %1376
  %1396 = and i16 %1380, -256
  %1397 = zext i16 %1396 to i32
  %1398 = lshr i32 %1397, %962
  %1399 = and i32 %1398, 255
  %1400 = getelementptr inbounds i16, ptr %1378, i64 1
  %1401 = load i16, ptr %1400, align 2, !tbaa !29
  %1402 = zext i16 %1401 to i32
  %1403 = lshr i32 %1402, %962
  %1404 = load i16, ptr %975, align 2, !tbaa !29
  %1405 = zext i16 %1404 to i32
  %1406 = and i32 %1403, %1405
  %1407 = shl nuw nsw i32 %1402, %961
  %1408 = add nuw i32 %1406, %1407
  %1409 = add nuw i32 %1408, %1399
  br label %1410

1410:                                             ; preds = %1395, %1381
  %1411 = phi i32 [ %1394, %1381 ], [ %1409, %1395 ]
  %1412 = getelementptr inbounds i8, ptr %1378, i64 2
  %1413 = getelementptr inbounds i8, ptr %1379, i64 2
  %1414 = load i16, ptr %1413, align 2, !tbaa !29
  %1415 = trunc i32 %1411 to i16
  %1416 = xor i16 %56, %1415
  %1417 = and i16 %1416, %1414
  store i16 %1417, ptr %1413, align 2, !tbaa !29
  %1418 = add nsw i32 %1377, -16
  %1419 = icmp sgt i32 %1377, 31
  br i1 %1419, label %1376, label %1420, !llvm.loop !52

1420:                                             ; preds = %1410, %1369
  %1421 = phi ptr [ %1028, %1369 ], [ %1413, %1410 ]
  %1422 = phi ptr [ %1029, %1369 ], [ %1412, %1410 ]
  %1423 = phi i32 [ %79, %1369 ], [ %1418, %1410 ]
  %1424 = icmp sgt i32 %1423, 0
  br i1 %1424, label %1425, label %1470

1425:                                             ; preds = %1420
  %1426 = load i16, ptr %1422, align 2, !tbaa !29
  br i1 %978, label %1427, label %1435

1427:                                             ; preds = %1425
  %1428 = zext i16 %1426 to i32
  %1429 = shl nuw nsw i32 %1428, %961
  %1430 = load i16, ptr %980, align 2, !tbaa !29
  %1431 = zext i16 %1430 to i32
  %1432 = and i32 %1429, %1431
  %1433 = lshr i32 %1428, %962
  %1434 = add nuw nsw i32 %1432, %1433
  br label %1440

1435:                                             ; preds = %1425
  %1436 = and i16 %1426, -256
  %1437 = zext i16 %1436 to i32
  %1438 = lshr i32 %1437, %962
  %1439 = and i32 %1438, 255
  br label %1440

1440:                                             ; preds = %1435, %1427
  %1441 = phi i32 [ %1434, %1427 ], [ %1439, %1435 ]
  %1442 = icmp sgt i32 %1423, %962
  br i1 %1442, label %1443, label %1462

1443:                                             ; preds = %1440
  %1444 = getelementptr inbounds i8, ptr %1422, i64 2
  br i1 %981, label %1445, label %1454

1445:                                             ; preds = %1443
  %1446 = load i16, ptr %1444, align 2, !tbaa !29
  %1447 = zext i16 %1446 to i32
  %1448 = lshr i32 %1447, %962
  %1449 = load i16, ptr %983, align 2, !tbaa !29
  %1450 = zext i16 %1449 to i32
  %1451 = and i32 %1448, %1450
  %1452 = shl nuw nsw i32 %1447, %961
  %1453 = add nuw nsw i32 %1451, %1452
  br label %1459

1454:                                             ; preds = %1443
  %1455 = load i8, ptr %1444, align 1, !tbaa !21
  %1456 = zext i8 %1455 to i32
  %1457 = shl nuw nsw i32 %1456, %961
  %1458 = and i32 %1457, 65280
  br label %1459

1459:                                             ; preds = %1454, %1445
  %1460 = phi i32 [ %1453, %1445 ], [ %1458, %1454 ]
  %1461 = add nuw i32 %1460, %1441
  br label %1462

1462:                                             ; preds = %1459, %1440
  %1463 = phi i32 [ %1461, %1459 ], [ %1441, %1440 ]
  %1464 = getelementptr inbounds i16, ptr %1421, i64 1
  %1465 = load i16, ptr %1464, align 2, !tbaa !29
  %1466 = trunc i32 %1463 to i16
  %1467 = xor i16 %56, %1466
  %1468 = or i16 %1467, %807
  %1469 = and i16 %1468, %1465
  store i16 %1469, ptr %1464, align 2, !tbaa !29
  br label %1470

1470:                                             ; preds = %1420, %1462, %1273, %1315, %1127, %1169
  %1471 = phi ptr [ %1421, %1462 ], [ %1421, %1420 ], [ %1274, %1315 ], [ %1274, %1273 ], [ %1128, %1169 ], [ %1128, %1127 ]
  %1472 = phi ptr [ %1422, %1462 ], [ %1422, %1420 ], [ %1275, %1315 ], [ %1275, %1273 ], [ %1129, %1169 ], [ %1129, %1127 ]
  %1473 = add nsw i32 %1030, -1
  %1474 = icmp eq i32 %1473, 0
  br i1 %1474, label %1478, label %1475

1475:                                             ; preds = %1470
  %1476 = getelementptr inbounds i8, ptr %1472, i64 %1025
  %1477 = getelementptr inbounds i8, ptr %1471, i64 %1026
  br label %1478

1478:                                             ; preds = %1470, %1027, %1475
  %1479 = phi i1 [ false, %1475 ], [ true, %1027 ], [ false, %1470 ]
  %1480 = phi i32 [ 0, %1475 ], [ 9, %1027 ], [ 51, %1470 ]
  %1481 = phi ptr [ %1477, %1475 ], [ %1028, %1027 ], [ %1471, %1470 ]
  %1482 = phi ptr [ %1476, %1475 ], [ %1029, %1027 ], [ %1472, %1470 ]
  %1483 = phi i32 [ %1473, %1475 ], [ %1030, %1027 ], [ 0, %1470 ]
  switch i32 %1480, label %1485 [
    i32 0, label %1027
    i32 51, label %1484
  ], !llvm.loop !53

1484:                                             ; preds = %1478
  br label %1485

1485:                                             ; preds = %942, %899, %856, %1478, %1484, %811
  %1486 = phi i1 [ true, %811 ], [ false, %1484 ], [ %1479, %1478 ], [ false, %856 ], [ false, %899 ], [ false, %942 ]
  %1487 = phi i32 [ %45, %811 ], [ %1483, %1484 ], [ %1483, %1478 ], [ 0, %856 ], [ 0, %899 ], [ 0, %942 ]
  br i1 %1486, label %1488, label %1523

1488:                                             ; preds = %1485, %792, %588, %416, %296, %95
  %1489 = phi i32 [ %45, %95 ], [ %298, %296 ], [ %418, %416 ], [ %590, %588 ], [ %794, %792 ], [ %1487, %1485 ]
  %1490 = icmp eq i16 %56, 0
  br i1 %1490, label %1491, label %1523

1491:                                             ; preds = %1488
  %1492 = or i32 %31, %30
  %1493 = icmp slt i32 %1492, 0
  br i1 %1493, label %1494, label %1501

1494:                                             ; preds = %1491
  %1495 = tail call i32 @llvm.smax.i32(i32 %31, i32 0)
  %1496 = tail call i32 @llvm.smin.i32(i32 %31, i32 0)
  %1497 = add nsw i32 %39, %1496
  %1498 = tail call i32 @llvm.smax.i32(i32 %30, i32 0)
  %1499 = tail call i32 @llvm.smin.i32(i32 %30, i32 0)
  %1500 = add nsw i32 %1489, %1499
  br label %1501

1501:                                             ; preds = %1494, %1491
  %1502 = phi i32 [ %31, %1491 ], [ %1495, %1494 ]
  %1503 = phi i32 [ %30, %1491 ], [ %1498, %1494 ]
  %1504 = phi i32 [ %39, %1491 ], [ %1497, %1494 ]
  %1505 = phi i32 [ %1489, %1491 ], [ %1500, %1494 ]
  %1506 = sub nsw i32 %35, %1504
  %1507 = icmp sgt i32 %1502, %1506
  %1508 = sub nsw i32 %35, %1502
  %1509 = select i1 %1507, i32 %1508, i32 %1504
  %1510 = sub nsw i32 %41, %1505
  %1511 = icmp sgt i32 %1503, %1510
  %1512 = sub nsw i32 %41, %1503
  %1513 = select i1 %1511, i32 %1512, i32 %1505
  %1514 = icmp slt i32 %1509, 1
  %1515 = icmp slt i32 %1513, 1
  %1516 = select i1 %1514, i1 true, i1 %1515
  br i1 %1516, label %1523, label %1517

1517:                                             ; preds = %1501
  %1518 = sext i32 %1503 to i64
  %1519 = getelementptr inbounds ptr, ptr %63, i64 %1518
  %1520 = load ptr, ptr %1519, align 8, !tbaa !26
  %1521 = trunc i64 %9 to i32
  %1522 = sub i32 0, %1521
  tail call void @bits_fill_rectangle(ptr noundef %1520, i32 noundef %1502, i32 noundef %61, i32 noundef %1522, i32 noundef %1509, i32 noundef %1513) #3
  br label %1523

1523:                                             ; preds = %169, %152, %139, %96, %110, %126, %1517, %1501, %1485, %792, %588, %416, %296, %1488, %27
  %1524 = phi i32 [ 0, %27 ], [ 0, %792 ], [ 0, %1485 ], [ 0, %296 ], [ 0, %588 ], [ 0, %416 ], [ -1, %1488 ], [ 0, %1501 ], [ 0, %1517 ], [ 0, %126 ], [ 0, %110 ], [ 0, %96 ], [ 0, %139 ], [ 0, %152 ], [ 0, %169 ]
  ret i32 %1524
}

declare i32 @gx_default_copy_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

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

declare i32 @gx_no_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #0

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

; Function Attrs: nounwind uwtable
define internal i32 @mem_mono_strip_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #1 {
  %11 = xor i64 %7, %6
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 7
  %15 = load i16, ptr %14, align 2, !tbaa !54
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13, %10
  %18 = tail call i32 @gx_default_strip_tile_rectangle(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9) #3
  br label %697

19:                                               ; preds = %13
  %20 = or i32 %3, %2
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %24 = add nsw i32 %23, %4
  %25 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %26 = tail call i32 @llvm.smin.i32(i32 %3, i32 0)
  %27 = add nsw i32 %26, %5
  %28 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i32 [ %5, %19 ], [ %27, %22 ]
  %31 = phi i32 [ %4, %19 ], [ %24, %22 ]
  %32 = phi i32 [ %3, %19 ], [ %28, %22 ]
  %33 = phi i32 [ %2, %19 ], [ %25, %22 ]
  %34 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = sub nsw i32 %35, %31
  %37 = icmp sgt i32 %33, %36
  %38 = sub nsw i32 %35, %33
  %39 = select i1 %37, i32 %38, i32 %31
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = sub nsw i32 %41, %30
  %43 = icmp sgt i32 %32, %42
  %44 = sub nsw i32 %41, %32
  %45 = select i1 %43, i32 %44, i32 %30
  %46 = icmp slt i32 %39, 1
  %47 = icmp slt i32 %45, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %697, label %49

49:                                               ; preds = %29
  %50 = trunc i64 %6 to i32
  %51 = sub i32 0, %50
  %52 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !57
  %54 = load ptr, ptr %1, align 8, !tbaa !58
  %55 = add nsw i32 %32, %9
  %56 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 5
  %57 = load i16, ptr %56, align 2, !tbaa !59
  %58 = zext i16 %57 to i32
  %59 = srem i32 %55, %58
  %60 = mul nsw i32 %59, %53
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %54, i64 %61
  %63 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2
  %64 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !60
  %66 = mul nsw i32 %65, %53
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %54, i64 %67
  %69 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %70 = load i32, ptr %69, align 8, !tbaa !27
  %71 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %72 = load ptr, ptr %71, align 8, !tbaa !25
  %73 = sext i32 %32 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !26
  %76 = add nsw i32 %33, %8
  %77 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 4
  %78 = load i16, ptr %77, align 8, !tbaa !61
  %79 = zext i16 %78 to i32
  %80 = srem i32 %76, %79
  %81 = load i32, ptr %63, align 4, !tbaa !62
  %82 = sub nsw i32 %81, %80
  %83 = ashr i32 %80, 3
  %84 = and i32 %83, -2
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, ptr %62, i64 %85
  %87 = and i32 %33, 15
  %88 = and i32 %80, 15
  %89 = sub nsw i32 %87, %88
  %90 = ptrtoint ptr %68 to i64
  %91 = sext i32 %53 to i64
  %92 = sub nsw i64 0, %67
  %93 = zext i32 %70 to i64
  %94 = ptrtoint ptr %68 to i64
  %95 = sub nsw i64 0, %67
  %96 = ptrtoint ptr %68 to i64
  %97 = sub nsw i64 0, %67
  %98 = trunc i32 %51 to i16
  %99 = trunc i32 %51 to i16
  %100 = ptrtoint ptr %68 to i64
  %101 = sext i32 %53 to i64
  %102 = sub nsw i64 0, %67
  %103 = zext i32 %70 to i64
  %104 = ptrtoint ptr %68 to i64
  %105 = sext i32 %53 to i64
  %106 = sub nsw i64 0, %67
  %107 = zext i32 %70 to i64
  %108 = ptrtoint ptr %68 to i64
  %109 = sext i32 %53 to i64
  %110 = sub nsw i64 0, %67
  %111 = zext i32 %70 to i64
  %112 = add nsw i32 %45, -1
  %113 = icmp eq i32 %112, 0
  %114 = ptrtoint ptr %68 to i64
  %115 = sext i32 %53 to i64
  %116 = sub nsw i64 0, %67
  %117 = zext i32 %70 to i64
  br label %118

118:                                              ; preds = %694, %49
  %119 = phi i32 [ %89, %49 ], [ %696, %694 ]
  %120 = phi i32 [ %87, %49 ], [ %696, %694 ]
  %121 = phi ptr [ %86, %49 ], [ %62, %694 ]
  %122 = phi i32 [ %82, %49 ], [ %81, %694 ]
  %123 = phi i32 [ %39, %49 ], [ %692, %694 ]
  %124 = phi i32 [ %33, %49 ], [ %695, %694 ]
  %125 = tail call i32 @llvm.smin.i32(i32 %122, i32 %123)
  %126 = ashr i32 %124, 3
  %127 = and i32 %126, -2
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, ptr %75, i64 %128
  %130 = add nsw i32 %125, %120
  %131 = add nsw i32 %130, -16
  %132 = icmp slt i32 %130, 17
  br i1 %132, label %133, label %329

133:                                              ; preds = %118
  %134 = sext i32 %130 to i64
  %135 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %134
  %136 = load i16, ptr %135, align 2, !tbaa !29
  %137 = zext i16 %136 to i32
  %138 = xor i32 %137, -1
  %139 = zext nneg i32 %120 to i64
  %140 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %139
  %141 = load i16, ptr %140, align 2, !tbaa !29
  %142 = zext i16 %141 to i32
  %143 = and i32 %142, %138
  %144 = icmp sgt i32 %119, -1
  br i1 %144, label %145, label %223

145:                                              ; preds = %133
  %146 = icmp eq i32 %119, 0
  br i1 %146, label %147, label %180

147:                                              ; preds = %145
  %148 = xor i32 %143, -1
  %149 = load i16, ptr %129, align 2, !tbaa !29
  %150 = zext i16 %149 to i32
  %151 = and i32 %150, %148
  %152 = load i16, ptr %121, align 2, !tbaa !29
  %153 = zext i16 %152 to i32
  %154 = xor i32 %153, %51
  %155 = and i32 %154, %143
  %156 = or i32 %155, %151
  %157 = trunc i32 %156 to i16
  store i16 %157, ptr %129, align 2, !tbaa !29
  br i1 %113, label %691, label %158

158:                                              ; preds = %147, %158
  %159 = phi i32 [ %178, %158 ], [ %112, %147 ]
  %160 = phi ptr [ %167, %158 ], [ %121, %147 ]
  %161 = phi ptr [ %168, %158 ], [ %129, %147 ]
  %162 = ptrtoint ptr %160 to i64
  %163 = sub i64 %114, %162
  %164 = icmp sgt i64 %163, %115
  %165 = select i1 %164, i64 0, i64 %116
  %166 = getelementptr inbounds i8, ptr %160, i64 %165
  %167 = getelementptr inbounds i8, ptr %166, i64 %115
  %168 = getelementptr inbounds i8, ptr %161, i64 %117
  %169 = load i16, ptr %168, align 2, !tbaa !29
  %170 = zext i16 %169 to i32
  %171 = and i32 %170, %148
  %172 = load i16, ptr %167, align 2, !tbaa !29
  %173 = zext i16 %172 to i32
  %174 = xor i32 %173, %51
  %175 = and i32 %174, %143
  %176 = or i32 %175, %171
  %177 = trunc i32 %176 to i16
  store i16 %177, ptr %168, align 2, !tbaa !29
  %178 = add nsw i32 %159, -1
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %691, label %158, !llvm.loop !63

180:                                              ; preds = %145
  %181 = sub nuw nsw i32 16, %119
  %182 = xor i32 %143, -1
  %183 = icmp slt i32 %119, 8
  %184 = zext nneg i32 %119 to i64
  %185 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %184
  br label %186

186:                                              ; preds = %215, %180
  %187 = phi ptr [ %129, %180 ], [ %222, %215 ]
  %188 = phi ptr [ %121, %180 ], [ %221, %215 ]
  %189 = phi i32 [ %45, %180 ], [ %213, %215 ]
  %190 = load i16, ptr %187, align 2, !tbaa !29
  %191 = zext i16 %190 to i32
  %192 = and i32 %191, %182
  br i1 %183, label %193, label %202

193:                                              ; preds = %186
  %194 = load i16, ptr %188, align 2, !tbaa !29
  %195 = zext i16 %194 to i32
  %196 = lshr i32 %195, %119
  %197 = load i16, ptr %185, align 2, !tbaa !29
  %198 = zext i16 %197 to i32
  %199 = and i32 %196, %198
  %200 = shl nuw nsw i32 %195, %181
  %201 = add nuw nsw i32 %199, %200
  br label %207

202:                                              ; preds = %186
  %203 = load i8, ptr %188, align 1, !tbaa !21
  %204 = zext i8 %203 to i32
  %205 = shl nuw nsw i32 %204, %181
  %206 = and i32 %205, 65280
  br label %207

207:                                              ; preds = %202, %193
  %208 = phi i32 [ %201, %193 ], [ %206, %202 ]
  %209 = xor i32 %208, %51
  %210 = and i32 %209, %143
  %211 = or i32 %210, %192
  %212 = trunc i32 %211 to i16
  store i16 %212, ptr %187, align 2, !tbaa !29
  %213 = add nsw i32 %189, -1
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %691, label %215

215:                                              ; preds = %207
  %216 = ptrtoint ptr %188 to i64
  %217 = sub i64 %108, %216
  %218 = icmp sgt i64 %217, %109
  %219 = select i1 %218, i64 0, i64 %110
  %220 = getelementptr inbounds i8, ptr %188, i64 %219
  %221 = getelementptr inbounds i8, ptr %220, i64 %109
  %222 = getelementptr inbounds i8, ptr %187, i64 %111
  br label %186, !llvm.loop !64

223:                                              ; preds = %133
  %224 = icmp sgt i32 %131, %119
  %225 = xor i32 %143, -1
  %226 = icmp sgt i32 %119, -8
  br i1 %224, label %269, label %227

227:                                              ; preds = %223
  %228 = add nsw i32 %119, 16
  %229 = sub nsw i32 0, %119
  %230 = zext nneg i32 %229 to i64
  %231 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %230
  br label %232

232:                                              ; preds = %261, %227
  %233 = phi ptr [ %129, %227 ], [ %268, %261 ]
  %234 = phi ptr [ %121, %227 ], [ %267, %261 ]
  %235 = phi i32 [ %45, %227 ], [ %259, %261 ]
  %236 = load i16, ptr %233, align 2, !tbaa !29
  %237 = zext i16 %236 to i32
  %238 = and i32 %237, %225
  %239 = load i16, ptr %234, align 2, !tbaa !29
  br i1 %226, label %240, label %248

240:                                              ; preds = %232
  %241 = zext i16 %239 to i32
  %242 = shl nuw nsw i32 %241, %229
  %243 = load i16, ptr %231, align 2, !tbaa !29
  %244 = zext i16 %243 to i32
  %245 = and i32 %242, %244
  %246 = lshr i32 %241, %228
  %247 = add nuw nsw i32 %245, %246
  br label %253

248:                                              ; preds = %232
  %249 = and i16 %239, -256
  %250 = zext i16 %249 to i32
  %251 = lshr i32 %250, %228
  %252 = and i32 %251, 255
  br label %253

253:                                              ; preds = %248, %240
  %254 = phi i32 [ %247, %240 ], [ %252, %248 ]
  %255 = xor i32 %254, %51
  %256 = and i32 %255, %143
  %257 = or i32 %256, %238
  %258 = trunc i32 %257 to i16
  store i16 %258, ptr %233, align 2, !tbaa !29
  %259 = add nsw i32 %235, -1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %691, label %261

261:                                              ; preds = %253
  %262 = ptrtoint ptr %234 to i64
  %263 = sub i64 %100, %262
  %264 = icmp sgt i64 %263, %101
  %265 = select i1 %264, i64 0, i64 %102
  %266 = getelementptr inbounds i8, ptr %234, i64 %265
  %267 = getelementptr inbounds i8, ptr %266, i64 %101
  %268 = getelementptr inbounds i8, ptr %233, i64 %103
  br label %232, !llvm.loop !65

269:                                              ; preds = %223
  %270 = sub nsw i32 0, %119
  %271 = add nsw i32 %119, 16
  %272 = zext nneg i32 %271 to i64
  %273 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %272
  %274 = zext nneg i32 %270 to i64
  %275 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %274
  br label %276

276:                                              ; preds = %321, %269
  %277 = phi ptr [ %129, %269 ], [ %328, %321 ]
  %278 = phi ptr [ %121, %269 ], [ %327, %321 ]
  %279 = phi i32 [ %45, %269 ], [ %319, %321 ]
  %280 = load i16, ptr %277, align 2, !tbaa !29
  %281 = zext i16 %280 to i32
  %282 = and i32 %281, %225
  %283 = load i16, ptr %278, align 2, !tbaa !29
  br i1 %226, label %284, label %298

284:                                              ; preds = %276
  %285 = zext i16 %283 to i32
  %286 = shl nuw nsw i32 %285, %270
  %287 = load i16, ptr %275, align 2, !tbaa !29
  %288 = zext i16 %287 to i32
  %289 = and i32 %286, %288
  %290 = lshr i32 %285, %271
  %291 = add nuw nsw i32 %289, %290
  %292 = getelementptr inbounds i8, ptr %278, i64 2
  %293 = load i8, ptr %292, align 1, !tbaa !21
  %294 = zext i8 %293 to i32
  %295 = shl nuw nsw i32 %294, %270
  %296 = and i32 %295, 65280
  %297 = add nuw nsw i32 %291, %296
  br label %313

298:                                              ; preds = %276
  %299 = and i16 %283, -256
  %300 = zext i16 %299 to i32
  %301 = lshr i32 %300, %271
  %302 = and i32 %301, 255
  %303 = getelementptr inbounds i16, ptr %278, i64 1
  %304 = load i16, ptr %303, align 2, !tbaa !29
  %305 = zext i16 %304 to i32
  %306 = lshr i32 %305, %271
  %307 = load i16, ptr %273, align 2, !tbaa !29
  %308 = zext i16 %307 to i32
  %309 = and i32 %306, %308
  %310 = shl nuw nsw i32 %305, %270
  %311 = add nuw i32 %309, %310
  %312 = add nuw i32 %311, %302
  br label %313

313:                                              ; preds = %298, %284
  %314 = phi i32 [ %297, %284 ], [ %312, %298 ]
  %315 = xor i32 %314, %51
  %316 = and i32 %315, %143
  %317 = or i32 %316, %282
  %318 = trunc i32 %317 to i16
  store i16 %318, ptr %277, align 2, !tbaa !29
  %319 = add nsw i32 %279, -1
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %691, label %321

321:                                              ; preds = %313
  %322 = ptrtoint ptr %278 to i64
  %323 = sub i64 %104, %322
  %324 = icmp sgt i64 %323, %105
  %325 = select i1 %324, i64 0, i64 %106
  %326 = getelementptr inbounds i8, ptr %278, i64 %325
  %327 = getelementptr inbounds i8, ptr %326, i64 %105
  %328 = getelementptr inbounds i8, ptr %277, i64 %107
  br label %276, !llvm.loop !66

329:                                              ; preds = %118
  %330 = icmp sgt i32 %131, %119
  br i1 %330, label %409, label %331

331:                                              ; preds = %329
  %332 = sub nuw nsw i32 16, %119
  %333 = zext nneg i32 %120 to i64
  %334 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %333
  %335 = load i16, ptr %334, align 2, !tbaa !29
  %336 = zext i16 %335 to i32
  %337 = zext nneg i32 %131 to i64
  %338 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %337
  %339 = load i16, ptr %338, align 2, !tbaa !29
  %340 = zext i16 %339 to i32
  %341 = xor i32 %340, -1
  %342 = xor i32 %336, -1
  %343 = icmp slt i32 %119, 8
  %344 = icmp sgt i32 %119, 8
  %345 = zext nneg i32 %119 to i64
  %346 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %345
  %347 = zext nneg i32 %332 to i64
  %348 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %347
  br label %349

349:                                              ; preds = %401, %331
  %350 = phi ptr [ %129, %331 ], [ %408, %401 ]
  %351 = phi ptr [ %121, %331 ], [ %407, %401 ]
  %352 = phi i32 [ %45, %331 ], [ %399, %401 ]
  %353 = load i16, ptr %350, align 2, !tbaa !29
  %354 = zext i16 %353 to i32
  %355 = and i32 %354, %342
  br i1 %343, label %356, label %365

356:                                              ; preds = %349
  %357 = load i16, ptr %351, align 2, !tbaa !29
  %358 = zext i16 %357 to i32
  %359 = lshr i32 %358, %119
  %360 = load i16, ptr %346, align 2, !tbaa !29
  %361 = zext i16 %360 to i32
  %362 = and i32 %359, %361
  %363 = shl nuw nsw i32 %358, %332
  %364 = add nuw nsw i32 %362, %363
  br label %370

365:                                              ; preds = %349
  %366 = load i8, ptr %351, align 1, !tbaa !21
  %367 = zext i8 %366 to i32
  %368 = shl nuw nsw i32 %367, %332
  %369 = and i32 %368, 65280
  br label %370

370:                                              ; preds = %365, %356
  %371 = phi i32 [ %364, %356 ], [ %369, %365 ]
  %372 = xor i32 %371, %51
  %373 = and i32 %372, %336
  %374 = or i32 %373, %355
  %375 = trunc i32 %374 to i16
  store i16 %375, ptr %350, align 2, !tbaa !29
  %376 = getelementptr inbounds i16, ptr %350, i64 1
  %377 = load i16, ptr %376, align 2, !tbaa !29
  %378 = and i16 %377, %339
  %379 = load i16, ptr %351, align 2, !tbaa !29
  br i1 %344, label %380, label %388

380:                                              ; preds = %370
  %381 = zext i16 %379 to i32
  %382 = shl nuw nsw i32 %381, %332
  %383 = load i16, ptr %348, align 2, !tbaa !29
  %384 = zext i16 %383 to i32
  %385 = and i32 %382, %384
  %386 = lshr i32 %381, %119
  %387 = add nuw nsw i32 %385, %386
  br label %393

388:                                              ; preds = %370
  %389 = and i16 %379, -256
  %390 = zext i16 %389 to i32
  %391 = lshr i32 %390, %119
  %392 = and i32 %391, 255
  br label %393

393:                                              ; preds = %388, %380
  %394 = phi i32 [ %387, %380 ], [ %392, %388 ]
  %395 = xor i32 %394, %51
  %396 = and i32 %395, %341
  %397 = trunc i32 %396 to i16
  %398 = or i16 %378, %397
  store i16 %398, ptr %376, align 2, !tbaa !29
  %399 = add nsw i32 %352, -1
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %691, label %401

401:                                              ; preds = %393
  %402 = ptrtoint ptr %351 to i64
  %403 = sub i64 %90, %402
  %404 = icmp sgt i64 %403, %91
  %405 = select i1 %404, i64 0, i64 %92
  %406 = getelementptr inbounds i8, ptr %351, i64 %405
  %407 = getelementptr inbounds i8, ptr %406, i64 %91
  %408 = getelementptr inbounds i8, ptr %350, i64 %93
  br label %349, !llvm.loop !67

409:                                              ; preds = %329
  %410 = lshr i32 %131, 3
  %411 = and i32 %410, 536870910
  %412 = sub nsw i32 %53, %411
  %413 = sub i32 %70, %411
  %414 = and i32 %130, 15
  %415 = zext nneg i32 %414 to i64
  %416 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %415
  %417 = load i16, ptr %416, align 2, !tbaa !29
  %418 = zext i16 %417 to i32
  %419 = xor i32 %418, -1
  %420 = icmp eq i32 %119, 0
  br i1 %420, label %421, label %492

421:                                              ; preds = %409
  %422 = icmp eq i32 %120, 0
  br i1 %422, label %428, label %423

423:                                              ; preds = %421
  %424 = zext nneg i32 %120 to i64
  %425 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %424
  %426 = load i16, ptr %425, align 2, !tbaa !29
  %427 = zext i16 %426 to i32
  br label %428

428:                                              ; preds = %421, %423
  %429 = phi i32 [ %427, %423 ], [ 0, %421 ]
  %430 = icmp eq i32 %429, 0
  %431 = icmp sgt i32 %130, 31
  %432 = zext i32 %412 to i64
  %433 = xor i32 %429, -1
  br label %434

434:                                              ; preds = %479, %428
  %435 = phi ptr [ %129, %428 ], [ %490, %479 ]
  %436 = phi ptr [ %121, %428 ], [ %491, %479 ]
  %437 = phi i32 [ %45, %428 ], [ %480, %479 ]
  br i1 %430, label %448, label %438

438:                                              ; preds = %434
  %439 = load i16, ptr %435, align 2, !tbaa !29
  %440 = zext i16 %439 to i32
  %441 = and i32 %440, %433
  %442 = load i16, ptr %436, align 2, !tbaa !29
  %443 = zext i16 %442 to i32
  %444 = xor i32 %443, %51
  %445 = and i32 %444, %429
  %446 = or i32 %445, %441
  %447 = trunc i32 %446 to i16
  br label %451

448:                                              ; preds = %434
  %449 = load i16, ptr %436, align 2, !tbaa !29
  %450 = xor i16 %449, %98
  br label %451

451:                                              ; preds = %448, %438
  %452 = phi i16 [ %450, %448 ], [ %447, %438 ]
  store i16 %452, ptr %435, align 2, !tbaa !29
  br i1 %431, label %453, label %463

453:                                              ; preds = %451, %453
  %454 = phi i32 [ %457, %453 ], [ %131, %451 ]
  %455 = phi ptr [ %458, %453 ], [ %436, %451 ]
  %456 = phi ptr [ %459, %453 ], [ %435, %451 ]
  %457 = add nsw i32 %454, -16
  %458 = getelementptr inbounds i8, ptr %455, i64 2
  %459 = getelementptr inbounds i8, ptr %456, i64 2
  %460 = load i16, ptr %458, align 2, !tbaa !29
  %461 = xor i16 %460, %99
  store i16 %461, ptr %459, align 2, !tbaa !29
  %462 = icmp sgt i32 %454, 31
  br i1 %462, label %453, label %463, !llvm.loop !68

463:                                              ; preds = %453, %451
  %464 = phi ptr [ %435, %451 ], [ %459, %453 ]
  %465 = phi ptr [ %436, %451 ], [ %458, %453 ]
  %466 = phi i32 [ %131, %451 ], [ %457, %453 ]
  %467 = icmp sgt i32 %466, 0
  br i1 %467, label %468, label %479

468:                                              ; preds = %463
  %469 = getelementptr inbounds i16, ptr %464, i64 1
  %470 = load i16, ptr %469, align 2, !tbaa !29
  %471 = and i16 %470, %417
  %472 = getelementptr inbounds i8, ptr %465, i64 2
  %473 = load i16, ptr %472, align 2, !tbaa !29
  %474 = zext i16 %473 to i32
  %475 = xor i32 %474, %51
  %476 = and i32 %475, %419
  %477 = trunc i32 %476 to i16
  %478 = or i16 %471, %477
  store i16 %478, ptr %469, align 2, !tbaa !29
  br label %479

479:                                              ; preds = %468, %463
  %480 = add nsw i32 %437, -1
  %481 = icmp eq i32 %480, 0
  %482 = ptrtoint ptr %465 to i64
  %483 = sub i64 %96, %482
  %484 = icmp sgt i64 %483, %432
  %485 = select i1 %484, i64 0, i64 %97
  %486 = getelementptr inbounds i8, ptr %465, i64 %485
  %487 = getelementptr inbounds i8, ptr %486, i64 %432
  %488 = select i1 %481, i32 0, i32 %413
  %489 = zext i32 %488 to i64
  %490 = getelementptr inbounds i8, ptr %464, i64 %489
  %491 = select i1 %481, ptr %465, ptr %487
  br i1 %481, label %691, label %434

492:                                              ; preds = %409
  %493 = icmp slt i32 %119, 0
  %494 = lshr i32 %119, 30
  %495 = and i32 %494, 2
  %496 = zext nneg i32 %495 to i64
  %497 = getelementptr inbounds i8, ptr %121, i64 %496
  %498 = sub nsw i32 0, %119
  %499 = and i32 %498, 15
  %500 = and i32 %119, 15
  %501 = zext nneg i32 %120 to i64
  %502 = getelementptr inbounds [17 x i16], ptr @mono_copy_masks, i64 0, i64 %501
  %503 = load i16, ptr %502, align 2, !tbaa !29
  %504 = zext i16 %503 to i32
  %505 = xor i32 %504, -1
  %506 = icmp sgt i32 %130, 31
  %507 = zext i32 %412 to i64
  %508 = icmp ult i32 %500, 8
  %509 = zext nneg i32 %500 to i64
  %510 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %509
  %511 = icmp ult i32 %499, 8
  %512 = zext nneg i32 %500 to i64
  %513 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %512
  %514 = zext nneg i32 %499 to i64
  %515 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %514
  %516 = icmp ult i32 %499, 8
  %517 = zext nneg i32 %500 to i64
  %518 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %517
  %519 = zext nneg i32 %499 to i64
  %520 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %519
  %521 = icmp ult i32 %499, 8
  %522 = zext nneg i32 %499 to i64
  %523 = getelementptr inbounds [9 x i16], ptr @left_masks2, i64 0, i64 %522
  %524 = icmp ult i32 %500, 8
  %525 = zext nneg i32 %500 to i64
  %526 = getelementptr inbounds [9 x i16], ptr @right_masks2, i64 0, i64 %525
  br label %527

527:                                              ; preds = %678, %492
  %528 = phi ptr [ %129, %492 ], [ %689, %678 ]
  %529 = phi ptr [ %497, %492 ], [ %690, %678 ]
  %530 = phi i32 [ %45, %492 ], [ %679, %678 ]
  br i1 %493, label %546, label %531

531:                                              ; preds = %527
  br i1 %508, label %532, label %541

532:                                              ; preds = %531
  %533 = load i16, ptr %529, align 2, !tbaa !29
  %534 = zext i16 %533 to i32
  %535 = lshr i32 %534, %500
  %536 = load i16, ptr %510, align 2, !tbaa !29
  %537 = zext i16 %536 to i32
  %538 = and i32 %535, %537
  %539 = shl nuw nsw i32 %534, %499
  %540 = add nuw nsw i32 %538, %539
  br label %576

541:                                              ; preds = %531
  %542 = load i8, ptr %529, align 1, !tbaa !21
  %543 = zext i8 %542 to i32
  %544 = shl nuw nsw i32 %543, %499
  %545 = and i32 %544, 65280
  br label %576

546:                                              ; preds = %527
  %547 = getelementptr inbounds i8, ptr %529, i64 -2
  %548 = load i16, ptr %547, align 2, !tbaa !29
  br i1 %511, label %549, label %562

549:                                              ; preds = %546
  %550 = zext i16 %548 to i32
  %551 = shl nuw nsw i32 %550, %499
  %552 = load i16, ptr %515, align 2, !tbaa !29
  %553 = zext i16 %552 to i32
  %554 = and i32 %551, %553
  %555 = lshr i32 %550, %500
  %556 = add nuw nsw i32 %554, %555
  %557 = load i8, ptr %529, align 1, !tbaa !21
  %558 = zext i8 %557 to i32
  %559 = shl nuw nsw i32 %558, %499
  %560 = and i32 %559, 32512
  %561 = add nuw nsw i32 %556, %560
  br label %576

562:                                              ; preds = %546
  %563 = and i16 %548, -256
  %564 = zext i16 %563 to i32
  %565 = lshr i32 %564, %500
  %566 = and i32 %565, 255
  %567 = load i16, ptr %529, align 2, !tbaa !29
  %568 = zext i16 %567 to i32
  %569 = lshr i32 %568, %500
  %570 = load i16, ptr %513, align 2, !tbaa !29
  %571 = zext i16 %570 to i32
  %572 = and i32 %569, %571
  %573 = shl nuw nsw i32 %568, %499
  %574 = add nuw i32 %572, %573
  %575 = add nuw i32 %574, %566
  br label %576

576:                                              ; preds = %549, %562, %532, %541
  %577 = phi i32 [ %540, %532 ], [ %545, %541 ], [ %561, %549 ], [ %575, %562 ]
  %578 = load i16, ptr %528, align 2, !tbaa !29
  %579 = zext i16 %578 to i32
  %580 = and i32 %579, %505
  %581 = xor i32 %577, %51
  %582 = and i32 %581, %504
  %583 = or i32 %580, %582
  %584 = trunc i32 %583 to i16
  store i16 %584, ptr %528, align 2, !tbaa !29
  br i1 %506, label %585, label %627

585:                                              ; preds = %576, %619
  %586 = phi i32 [ %625, %619 ], [ %131, %576 ]
  %587 = phi ptr [ %621, %619 ], [ %529, %576 ]
  %588 = phi ptr [ %622, %619 ], [ %528, %576 ]
  %589 = load i16, ptr %587, align 2, !tbaa !29
  br i1 %516, label %590, label %604

590:                                              ; preds = %585
  %591 = zext i16 %589 to i32
  %592 = shl nuw nsw i32 %591, %499
  %593 = load i16, ptr %520, align 2, !tbaa !29
  %594 = zext i16 %593 to i32
  %595 = and i32 %592, %594
  %596 = lshr i32 %591, %500
  %597 = add nuw nsw i32 %595, %596
  %598 = getelementptr inbounds i8, ptr %587, i64 2
  %599 = load i8, ptr %598, align 1, !tbaa !21
  %600 = zext i8 %599 to i32
  %601 = shl nuw nsw i32 %600, %499
  %602 = and i32 %601, 32512
  %603 = add nuw nsw i32 %597, %602
  br label %619

604:                                              ; preds = %585
  %605 = and i16 %589, -256
  %606 = zext i16 %605 to i32
  %607 = lshr i32 %606, %500
  %608 = and i32 %607, 255
  %609 = getelementptr inbounds i16, ptr %587, i64 1
  %610 = load i16, ptr %609, align 2, !tbaa !29
  %611 = zext i16 %610 to i32
  %612 = lshr i32 %611, %500
  %613 = load i16, ptr %518, align 2, !tbaa !29
  %614 = zext i16 %613 to i32
  %615 = and i32 %612, %614
  %616 = shl nuw nsw i32 %611, %499
  %617 = add nuw i32 %615, %616
  %618 = add nuw i32 %617, %608
  br label %619

619:                                              ; preds = %604, %590
  %620 = phi i32 [ %603, %590 ], [ %618, %604 ]
  %621 = getelementptr inbounds i8, ptr %587, i64 2
  %622 = getelementptr inbounds i8, ptr %588, i64 2
  %623 = xor i32 %620, %51
  %624 = trunc i32 %623 to i16
  store i16 %624, ptr %622, align 2, !tbaa !29
  %625 = add nsw i32 %586, -16
  %626 = icmp sgt i32 %586, 31
  br i1 %626, label %585, label %627, !llvm.loop !69

627:                                              ; preds = %619, %576
  %628 = phi ptr [ %528, %576 ], [ %622, %619 ]
  %629 = phi ptr [ %529, %576 ], [ %621, %619 ]
  %630 = phi i32 [ %131, %576 ], [ %625, %619 ]
  %631 = icmp sgt i32 %630, 0
  br i1 %631, label %632, label %678

632:                                              ; preds = %627
  %633 = load i16, ptr %629, align 2, !tbaa !29
  br i1 %521, label %634, label %642

634:                                              ; preds = %632
  %635 = zext i16 %633 to i32
  %636 = shl nuw nsw i32 %635, %499
  %637 = load i16, ptr %523, align 2, !tbaa !29
  %638 = zext i16 %637 to i32
  %639 = and i32 %636, %638
  %640 = lshr i32 %635, %500
  %641 = add nuw nsw i32 %639, %640
  br label %647

642:                                              ; preds = %632
  %643 = and i16 %633, -256
  %644 = zext i16 %643 to i32
  %645 = lshr i32 %644, %500
  %646 = and i32 %645, 255
  br label %647

647:                                              ; preds = %642, %634
  %648 = phi i32 [ %641, %634 ], [ %646, %642 ]
  %649 = icmp sgt i32 %630, %500
  br i1 %649, label %650, label %669

650:                                              ; preds = %647
  %651 = getelementptr inbounds i8, ptr %629, i64 2
  br i1 %524, label %652, label %661

652:                                              ; preds = %650
  %653 = load i16, ptr %651, align 2, !tbaa !29
  %654 = zext i16 %653 to i32
  %655 = lshr i32 %654, %500
  %656 = load i16, ptr %526, align 2, !tbaa !29
  %657 = zext i16 %656 to i32
  %658 = and i32 %655, %657
  %659 = shl nuw nsw i32 %654, %499
  %660 = add nuw nsw i32 %658, %659
  br label %666

661:                                              ; preds = %650
  %662 = load i8, ptr %651, align 1, !tbaa !21
  %663 = zext i8 %662 to i32
  %664 = shl nuw nsw i32 %663, %499
  %665 = and i32 %664, 65280
  br label %666

666:                                              ; preds = %661, %652
  %667 = phi i32 [ %660, %652 ], [ %665, %661 ]
  %668 = add nuw i32 %667, %648
  br label %669

669:                                              ; preds = %666, %647
  %670 = phi i32 [ %668, %666 ], [ %648, %647 ]
  %671 = getelementptr inbounds i16, ptr %628, i64 1
  %672 = load i16, ptr %671, align 2, !tbaa !29
  %673 = and i16 %672, %417
  %674 = xor i32 %670, %51
  %675 = and i32 %674, %419
  %676 = trunc i32 %675 to i16
  %677 = or i16 %673, %676
  store i16 %677, ptr %671, align 2, !tbaa !29
  br label %678

678:                                              ; preds = %669, %627
  %679 = add nsw i32 %530, -1
  %680 = icmp eq i32 %679, 0
  %681 = ptrtoint ptr %629 to i64
  %682 = sub i64 %94, %681
  %683 = icmp sgt i64 %682, %507
  %684 = select i1 %683, i64 0, i64 %95
  %685 = getelementptr inbounds i8, ptr %629, i64 %684
  %686 = getelementptr inbounds i8, ptr %685, i64 %507
  %687 = select i1 %680, i32 0, i32 %413
  %688 = zext i32 %687 to i64
  %689 = getelementptr inbounds i8, ptr %628, i64 %688
  %690 = select i1 %680, ptr %629, ptr %686
  br i1 %680, label %691, label %527

691:                                              ; preds = %393, %678, %479, %253, %313, %207, %158, %147
  %692 = sub nsw i32 %123, %125
  %693 = icmp sgt i32 %692, 0
  br i1 %693, label %694, label %697

694:                                              ; preds = %691
  %695 = add nsw i32 %124, %125
  %696 = and i32 %695, 15
  br label %118

697:                                              ; preds = %691, %29, %17
  %698 = phi i32 [ %18, %17 ], [ 0, %29 ], [ 0, %691 ]
  ret i32 %698
}

declare i32 @mem_mono_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem1_word_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
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
  %22 = load i32, ptr %21, align 8, !tbaa !22
  %23 = sub nsw i32 %22, %17
  %24 = icmp sgt i32 %20, %23
  %25 = sub nsw i32 %22, %20
  %26 = select i1 %24, i32 %25, i32 %17
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = load i32, ptr %27, align 4, !tbaa !24
  %29 = sub nsw i32 %28, %18
  %30 = icmp sgt i32 %19, %29
  %31 = sub nsw i32 %28, %19
  %32 = select i1 %30, i32 %31, i32 %18
  %33 = icmp slt i32 %26, 1
  %34 = icmp slt i32 %32, 1
  %35 = select i1 %33, i1 true, i1 %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !25
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !26
  %42 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %43 = load i32, ptr %42, align 8, !tbaa !27
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %20, i32 noundef %26, i32 noundef %32, i32 noundef 1) #3
  %44 = trunc i64 %5 to i32
  %45 = sub i32 0, %44
  tail call void @bits_fill_rectangle(ptr noundef %41, i32 noundef %20, i32 noundef %43, i32 noundef %45, i32 noundef %26, i32 noundef %32) #3
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %20, i32 noundef %26, i32 noundef %32, i32 noundef 1) #3
  br label %46

46:                                               ; preds = %16, %36
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem1_word_copy_mono(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
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
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = sub nsw i32 %35, %29
  %37 = icmp sgt i32 %31, %36
  %38 = sub nsw i32 %35, %31
  %39 = select i1 %37, i32 %38, i32 %29
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !24
  %42 = sub nsw i32 %41, %30
  %43 = icmp sgt i32 %28, %42
  %44 = sub nsw i32 %41, %28
  %45 = select i1 %43, i32 %44, i32 %30
  %46 = icmp slt i32 %39, 1
  %47 = icmp slt i32 %45, 1
  %48 = select i1 %46, i1 true, i1 %47
  br i1 %48, label %62, label %49

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %51 = load ptr, ptr %50, align 8, !tbaa !25
  %52 = sext i32 %28 to i64
  %53 = getelementptr inbounds ptr, ptr %51, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !26
  %55 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %56 = load i32, ptr %55, align 8, !tbaa !27
  %57 = icmp ne i64 %9, -1
  %58 = icmp ne i64 %10, -1
  %59 = and i1 %57, %58
  %60 = zext i1 %59 to i32
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %31, i32 noundef %39, i32 noundef %45, i32 noundef %60) #3
  %61 = tail call i32 @mem_mono_copy_mono(ptr noundef %0, ptr noundef %33, i32 noundef %32, i32 noundef %3, i64 poison, i32 noundef %31, i32 noundef %28, i32 noundef %39, i32 noundef %45, i64 noundef %9, i64 noundef %10)
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %31, i32 noundef %39, i32 noundef %45, i32 noundef 0) #3
  br label %62

62:                                               ; preds = %27, %49
  ret i32 0
}

declare i32 @mem_word_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare i64 @gx_default_w_b_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #0

declare i32 @gx_default_w_b_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @bits_fill_rectangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @mem_swap_byte_rect(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 552}
!6 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !16, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !18, i64 552, !19, i64 568, !20, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !13, i64 624}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!"gs_matrix_s", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20}
!17 = !{!"float", !8, i64 0}
!18 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!19 = !{!"_c24", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!20 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!21 = !{!8, !8, i64 0}
!22 = !{!23, !7, i64 64}
!23 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!24 = !{!23, !7, i64 68}
!25 = !{!6, !10, i64 536}
!26 = !{!10, !10, i64 0}
!27 = !{!6, !7, i64 520}
!28 = !{i64 0, i64 2, !29, i64 2, i64 2, !29}
!29 = !{!12, !12, i64 0}
!30 = !{i64 0, i64 2, !29}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = distinct !{!33, !32}
!34 = distinct !{!34, !32}
!35 = distinct !{!35, !32}
!36 = distinct !{!36, !32}
!37 = distinct !{!37, !32}
!38 = distinct !{!38, !32}
!39 = distinct !{!39, !32}
!40 = distinct !{!40, !32}
!41 = distinct !{!41, !32}
!42 = distinct !{!42, !32}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !32}
!46 = distinct !{!46, !32}
!47 = distinct !{!47, !32}
!48 = distinct !{!48, !32}
!49 = distinct !{!49, !32}
!50 = distinct !{!50, !32}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !32}
!53 = distinct !{!53, !32}
!54 = !{!55, !12, i64 38}
!55 = !{!"gx_strip_bitmap_s", !10, i64 0, !7, i64 8, !56, i64 12, !13, i64 24, !12, i64 32, !12, i64 34, !12, i64 36, !12, i64 38}
!56 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!57 = !{!55, !7, i64 8}
!58 = !{!55, !10, i64 0}
!59 = !{!55, !12, i64 34}
!60 = !{!55, !7, i64 16}
!61 = !{!55, !12, i64 32}
!62 = !{!55, !7, i64 12}
!63 = distinct !{!63, !32}
!64 = distinct !{!64, !32}
!65 = distinct !{!65, !32}
!66 = distinct !{!66, !32}
!67 = distinct !{!67, !32}
!68 = distinct !{!68, !32}
!69 = distinct !{!69, !32}
