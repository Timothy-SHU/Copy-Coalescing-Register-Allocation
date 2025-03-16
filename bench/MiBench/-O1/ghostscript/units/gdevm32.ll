; ModuleID = 'gdevm32.c'
source_filename = "gdevm32.c"
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

@.str = private unnamed_addr constant [8 x i8] c"image32\00", align 1
@mem_true32_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 32, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @gx_default_w_b_map_rgb_color, ptr @gx_default_w_b_map_color_rgb, ptr @mem_true32_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_true32_copy_mono, ptr @mem_true32_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_cmyk_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"image32w\00", align 1
@mem_true32_word_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 32, i16 255, i16 255, i16 256, i16 256 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @gx_default_w_b_map_rgb_color, ptr @gx_default_w_b_map_color_rgb, ptr @mem32_word_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem32_word_copy_mono, ptr @mem32_word_copy_color, ptr @gx_default_draw_line, ptr @mem_word_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_cmyk_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

declare i32 @mem_open(ptr noundef) #0

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #0

declare i32 @gx_default_sync_output(ptr noundef) #0

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_close(ptr noundef) #0

declare i64 @gx_default_w_b_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare i32 @gx_default_w_b_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true32_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
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
  br i1 %35, label %127, label %36

36:                                               ; preds = %16
  %37 = lshr i64 %5, 24
  %38 = lshr i64 %5, 8
  %39 = and i64 %38, 65280
  %40 = shl i64 %5, 8
  %41 = and i64 %40, 16711680
  %42 = shl i64 %5, 24
  %43 = add i64 %42, %37
  %44 = add i64 %43, %39
  %45 = add i64 %44, %41
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %48 = load i32, ptr %47, align 8, !tbaa !17
  %49 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %50 = load ptr, ptr %49, align 8, !tbaa !24
  %51 = sext i32 %19 to i64
  %52 = getelementptr inbounds ptr, ptr %50, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !25
  %54 = shl i32 %20, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %53, i64 %55
  %57 = icmp slt i32 %26, 5
  br i1 %57, label %58, label %90

58:                                               ; preds = %36
  %59 = zext i32 %48 to i64
  switch i32 %26, label %126 [
    i32 1, label %60
    i32 2, label %66
    i32 3, label %73
    i32 4, label %81
  ]

60:                                               ; preds = %58, %60
  %61 = phi i32 [ %64, %60 ], [ %32, %58 ]
  %62 = phi ptr [ %63, %60 ], [ %56, %58 ]
  store i32 %46, ptr %62, align 4, !tbaa !26
  %63 = getelementptr inbounds i8, ptr %62, i64 %59
  %64 = add nsw i32 %61, -1
  %65 = icmp sgt i32 %61, 1
  br i1 %65, label %60, label %127, !llvm.loop !27

66:                                               ; preds = %58, %66
  %67 = phi i32 [ %71, %66 ], [ %32, %58 ]
  %68 = phi ptr [ %70, %66 ], [ %56, %58 ]
  store i32 %46, ptr %68, align 4, !tbaa !26
  %69 = getelementptr inbounds i32, ptr %68, i64 1
  store i32 %46, ptr %69, align 4, !tbaa !26
  %70 = getelementptr inbounds i8, ptr %68, i64 %59
  %71 = add nsw i32 %67, -1
  %72 = icmp sgt i32 %67, 1
  br i1 %72, label %66, label %127, !llvm.loop !29

73:                                               ; preds = %58, %73
  %74 = phi i32 [ %79, %73 ], [ %32, %58 ]
  %75 = phi ptr [ %78, %73 ], [ %56, %58 ]
  store i32 %46, ptr %75, align 4, !tbaa !26
  %76 = getelementptr inbounds i32, ptr %75, i64 1
  store i32 %46, ptr %76, align 4, !tbaa !26
  %77 = getelementptr inbounds i32, ptr %75, i64 2
  store i32 %46, ptr %77, align 4, !tbaa !26
  %78 = getelementptr inbounds i8, ptr %75, i64 %59
  %79 = add nsw i32 %74, -1
  %80 = icmp sgt i32 %74, 1
  br i1 %80, label %73, label %127, !llvm.loop !30

81:                                               ; preds = %58, %81
  %82 = phi i32 [ %88, %81 ], [ %32, %58 ]
  %83 = phi ptr [ %87, %81 ], [ %56, %58 ]
  store i32 %46, ptr %83, align 4, !tbaa !26
  %84 = getelementptr inbounds i32, ptr %83, i64 1
  store i32 %46, ptr %84, align 4, !tbaa !26
  %85 = getelementptr inbounds i32, ptr %83, i64 2
  store i32 %46, ptr %85, align 4, !tbaa !26
  %86 = getelementptr inbounds i32, ptr %83, i64 3
  store i32 %46, ptr %86, align 4, !tbaa !26
  %87 = getelementptr inbounds i8, ptr %83, i64 %59
  %88 = add nsw i32 %82, -1
  %89 = icmp sgt i32 %82, 1
  br i1 %89, label %81, label %127, !llvm.loop !31

90:                                               ; preds = %36
  %91 = icmp eq i32 %46, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %90
  %93 = zext i32 %48 to i64
  br label %104

94:                                               ; preds = %90
  %95 = shl i32 %26, 2
  %96 = sext i32 %95 to i64
  %97 = zext i32 %48 to i64
  br label %98

98:                                               ; preds = %94, %98
  %99 = phi i32 [ %102, %98 ], [ %32, %94 ]
  %100 = phi ptr [ %101, %98 ], [ %56, %94 ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %100, i8 0, i64 %96, i1 false)
  %101 = getelementptr inbounds i8, ptr %100, i64 %97
  %102 = add nsw i32 %99, -1
  %103 = icmp sgt i32 %99, 1
  br i1 %103, label %98, label %127, !llvm.loop !32

104:                                              ; preds = %92, %122
  %105 = phi i32 [ %124, %122 ], [ %32, %92 ]
  %106 = phi ptr [ %123, %122 ], [ %56, %92 ]
  br label %107

107:                                              ; preds = %107, %104
  %108 = phi ptr [ %106, %104 ], [ %113, %107 ]
  %109 = phi i32 [ %26, %104 ], [ %114, %107 ]
  store i32 %46, ptr %108, align 4, !tbaa !26
  %110 = getelementptr inbounds i32, ptr %108, i64 1
  store i32 %46, ptr %110, align 4, !tbaa !26
  %111 = getelementptr inbounds i32, ptr %108, i64 2
  store i32 %46, ptr %111, align 4, !tbaa !26
  %112 = getelementptr inbounds i32, ptr %108, i64 3
  store i32 %46, ptr %112, align 4, !tbaa !26
  %113 = getelementptr inbounds i32, ptr %108, i64 4
  %114 = add nsw i32 %109, -4
  %115 = icmp sgt i32 %109, 8
  br i1 %115, label %107, label %116, !llvm.loop !33

116:                                              ; preds = %107, %116
  %117 = phi ptr [ %119, %116 ], [ %113, %107 ]
  %118 = phi i32 [ %120, %116 ], [ %114, %107 ]
  %119 = getelementptr inbounds i32, ptr %117, i64 1
  store i32 %46, ptr %117, align 4, !tbaa !26
  %120 = add nsw i32 %118, -1
  %121 = icmp sgt i32 %118, 1
  br i1 %121, label %116, label %122, !llvm.loop !34

122:                                              ; preds = %116
  %123 = getelementptr inbounds i8, ptr %106, i64 %93
  %124 = add nsw i32 %105, -1
  %125 = icmp sgt i32 %105, 1
  br i1 %125, label %104, label %127, !llvm.loop !35

126:                                              ; preds = %58
  unreachable

127:                                              ; preds = %122, %98, %81, %73, %66, %60, %16
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_true32_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = lshr i64 %9, 24
  %13 = lshr i64 %9, 8
  %14 = and i64 %13, 65280
  %15 = shl i64 %9, 8
  %16 = and i64 %15, 16711680
  %17 = shl i64 %9, 24
  %18 = add i64 %17, %12
  %19 = add i64 %18, %14
  %20 = add i64 %19, %16
  %21 = lshr i64 %10, 24
  %22 = lshr i64 %10, 8
  %23 = and i64 %22, 65280
  %24 = shl i64 %10, 8
  %25 = and i64 %24, 16711680
  %26 = shl i64 %10, 24
  %27 = add i64 %26, %21
  %28 = add i64 %27, %23
  %29 = add i64 %28, %25
  %30 = or i32 %6, %5
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %11
  %33 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %34 = add nsw i32 %33, %7
  %35 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %36 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %37 = sub nsw i32 %2, %36
  %38 = icmp slt i32 %6, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = add nsw i32 %8, %6
  %41 = mul nsw i32 %6, %3
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 0, %42
  %44 = getelementptr inbounds i8, ptr %1, i64 %43
  br label %45

45:                                               ; preds = %32, %39, %11
  %46 = phi i32 [ %34, %39 ], [ %34, %32 ], [ %7, %11 ]
  %47 = phi i32 [ %40, %39 ], [ %8, %32 ], [ %8, %11 ]
  %48 = phi i32 [ 0, %39 ], [ %6, %32 ], [ %6, %11 ]
  %49 = phi i32 [ %35, %39 ], [ %35, %32 ], [ %5, %11 ]
  %50 = phi i32 [ %37, %39 ], [ %37, %32 ], [ %2, %11 ]
  %51 = phi ptr [ %44, %39 ], [ %1, %32 ], [ %1, %11 ]
  %52 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %53 = load i32, ptr %52, align 8, !tbaa !5
  %54 = sub nsw i32 %53, %46
  %55 = icmp sgt i32 %49, %54
  %56 = sub nsw i32 %53, %49
  %57 = select i1 %55, i32 %56, i32 %46
  %58 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %59 = load i32, ptr %58, align 4, !tbaa !16
  %60 = sub nsw i32 %59, %47
  %61 = icmp sgt i32 %48, %60
  %62 = sub nsw i32 %59, %48
  %63 = select i1 %61, i32 %62, i32 %47
  %64 = icmp slt i32 %57, 1
  %65 = icmp slt i32 %63, 1
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %126, label %67

67:                                               ; preds = %45
  %68 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %69 = load i32, ptr %68, align 8, !tbaa !17
  %70 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %71 = load ptr, ptr %70, align 8, !tbaa !24
  %72 = sext i32 %48 to i64
  %73 = getelementptr inbounds ptr, ptr %71, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  %75 = shl i32 %49, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %74, i64 %76
  %78 = ashr i32 %50, 3
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, ptr %51, i64 %79
  %81 = and i32 %50, 7
  %82 = lshr exact i32 128, %81
  %83 = icmp eq i64 %10, -1
  %84 = icmp eq i64 %9, -1
  %85 = sext i32 %3 to i64
  %86 = zext i32 %69 to i64
  br label %87

87:                                               ; preds = %67, %121
  %88 = phi i32 [ %63, %67 ], [ %122, %121 ]
  %89 = phi ptr [ %77, %67 ], [ %124, %121 ]
  %90 = phi ptr [ %80, %67 ], [ %123, %121 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1
  %92 = load i8, ptr %90, align 1, !tbaa !36
  %93 = zext i8 %92 to i32
  br label %94

94:                                               ; preds = %114, %87
  %95 = phi ptr [ %89, %87 ], [ %118, %114 ]
  %96 = phi ptr [ %91, %87 ], [ %115, %114 ]
  %97 = phi i32 [ %93, %87 ], [ %116, %114 ]
  %98 = phi i32 [ %82, %87 ], [ %117, %114 ]
  %99 = phi i32 [ %57, %87 ], [ %119, %114 ]
  %100 = and i32 %98, %97
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br i1 %83, label %107, label %104

103:                                              ; preds = %94
  br i1 %84, label %107, label %104

104:                                              ; preds = %103, %102
  %105 = phi i64 [ %29, %102 ], [ %20, %103 ]
  %106 = trunc i64 %105 to i32
  store i32 %106, ptr %95, align 4, !tbaa !26
  br label %107

107:                                              ; preds = %104, %103, %102
  %108 = lshr i32 %98, 1
  %109 = icmp ult i32 %98, 2
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = getelementptr inbounds i8, ptr %96, i64 1
  %112 = load i8, ptr %96, align 1, !tbaa !36
  %113 = zext i8 %112 to i32
  br label %114

114:                                              ; preds = %110, %107
  %115 = phi ptr [ %111, %110 ], [ %96, %107 ]
  %116 = phi i32 [ %113, %110 ], [ %97, %107 ]
  %117 = phi i32 [ 128, %110 ], [ %108, %107 ]
  %118 = getelementptr inbounds i32, ptr %95, i64 1
  %119 = add nsw i32 %99, -1
  %120 = icmp sgt i32 %99, 1
  br i1 %120, label %94, label %121, !llvm.loop !37

121:                                              ; preds = %114
  %122 = add nsw i32 %88, -1
  %123 = getelementptr inbounds i8, ptr %90, i64 %85
  %124 = getelementptr inbounds i8, ptr %89, i64 %86
  %125 = icmp sgt i32 %88, 1
  br i1 %125, label %87, label %126, !llvm.loop !38

126:                                              ; preds = %121, %45
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_true32_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2 {
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
  %53 = shl i32 %28, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, ptr %52, i64 %54
  %56 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %57 = load i32, ptr %56, align 8, !tbaa !17
  %58 = shl i32 %27, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %26, i64 %59
  %61 = shl i32 %37, 2
  tail call void @bytes_copy_rectangle(ptr noundef %55, i32 noundef %57, ptr noundef %60, i32 noundef %3, i32 noundef %61, i32 noundef %43) #5
  br label %62

62:                                               ; preds = %25, %47
  ret i32 0
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

declare i32 @mem_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) #0

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) #0

declare i64 @gx_default_cmyk_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

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

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem32_word_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = lshr i64 %5, 24
  %8 = lshr i64 %5, 8
  %9 = and i64 %8, 65280
  %10 = shl i64 %5, 8
  %11 = and i64 %10, 16711680
  %12 = shl i64 %5, 24
  %13 = add i64 %12, %7
  %14 = add i64 %13, %9
  %15 = add i64 %14, %11
  %16 = tail call i32 @mem_true32_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %15)
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem32_word_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = lshr i64 %9, 24
  %13 = lshr i64 %9, 8
  %14 = and i64 %13, 65280
  %15 = shl i64 %9, 8
  %16 = and i64 %15, 16711680
  %17 = shl i64 %9, 24
  %18 = add i64 %17, %12
  %19 = add i64 %18, %14
  %20 = add i64 %19, %16
  %21 = lshr i64 %10, 24
  %22 = lshr i64 %10, 8
  %23 = and i64 %22, 65280
  %24 = shl i64 %10, 8
  %25 = and i64 %24, 16711680
  %26 = shl i64 %10, 24
  %27 = add i64 %26, %21
  %28 = add i64 %27, %23
  %29 = add i64 %28, %25
  %30 = tail call i32 @mem_true32_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 poison, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %20, i64 noundef %29)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem32_word_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #2 {
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
  %55 = shl i32 %27, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, ptr %52, i64 %56
  %58 = shl i32 %26, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, ptr %31, i64 %59
  %61 = shl i32 %37, 2
  tail call void @bytes_copy_rectangle(ptr noundef %57, i32 noundef %54, ptr noundef %60, i32 noundef %3, i32 noundef %61, i32 noundef %43) #5
  %62 = shl i32 %27, 5
  %63 = shl i32 %37, 5
  tail call void @mem_swap_byte_rect(ptr noundef %52, i32 noundef %54, i32 noundef %62, i32 noundef %63, i32 noundef %43, i32 noundef 0) #5
  br label %64

64:                                               ; preds = %25, %47
  ret i32 0
}

declare i32 @mem_word_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

declare void @bytes_copy_rectangle(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare void @mem_swap_byte_rect(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = distinct !{!32, !28}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = !{!8, !8, i64 0}
!37 = distinct !{!37, !28}
!38 = distinct !{!38, !28}
