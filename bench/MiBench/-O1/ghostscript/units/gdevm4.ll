; ModuleID = 'gdevm4.c'
source_filename = "gdevm4.c"
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

@.str = private unnamed_addr constant [7 x i8] c"image4\00", align 1
@mem_mapped4_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 4, i16 15, i16 15, i16 16, i16 16 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_mapped_map_rgb_color, ptr @mem_mapped_map_color_rgb, ptr @mem_mapped4_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_mapped4_copy_mono, ptr @mem_mapped4_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @mem_gray_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"image4w\00", align 1
@mem_mapped4_word_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 4, i16 15, i16 15, i16 16, i16 16 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_mapped_map_rgb_color, ptr @mem_mapped_map_color_rgb, ptr @mem4_word_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem4_word_copy_mono, ptr @mem4_word_copy_color, ptr @gx_default_draw_line, ptr @mem_word_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@tile_patterns = internal unnamed_addr constant [16 x i32] [i32 0, i32 286331153, i32 572662306, i32 858993459, i32 1145324612, i32 1431655765, i32 1717986918, i32 2004318071, i32 -2004318072, i32 -1717986919, i32 -1431655766, i32 -1145324613, i32 -858993460, i32 -572662307, i32 -286331154, i32 -1], align 16
@mem_mono_device = external local_unnamed_addr constant %struct.gx_device_memory_s, align 8
@mem_mono_word_device = external local_unnamed_addr constant %struct.gx_device_memory_s, align 8

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
define internal noundef i32 @mem_mapped4_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
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
  br i1 %35, label %48, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = sext i32 %18 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = shl i32 %17, 2
  %43 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %44 = load i32, ptr %43, align 8, !tbaa !25
  %45 = getelementptr inbounds [16 x i32], ptr @tile_patterns, i64 0, i64 %5
  %46 = load i32, ptr %45, align 4, !tbaa !26
  %47 = shl i32 %26, 2
  tail call void @bits_fill_rectangle(ptr noundef %41, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %47, i32 noundef %32) #4
  br label %48

48:                                               ; preds = %16, %36
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef i32 @mem_mapped4_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #2 {
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
  br i1 %48, label %121, label %49

49:                                               ; preds = %27
  %50 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %51 = load i32, ptr %50, align 8, !tbaa !25
  %52 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %53 = load ptr, ptr %52, align 8, !tbaa !17
  %54 = sext i32 %30 to i64
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !24
  %57 = ashr i32 %31, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %56, i64 %58
  %60 = ashr i32 %32, 3
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %33, i64 %61
  %63 = and i32 %32, 7
  %64 = lshr exact i32 128, %63
  %65 = and i32 %31, 1
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i8 -16, i8 15
  %68 = icmp eq i64 %10, -1
  %69 = icmp eq i64 %9, -1
  %70 = sext i32 %3 to i64
  %71 = zext i32 %51 to i64
  br label %72

72:                                               ; preds = %49, %116
  %73 = phi i32 [ %45, %49 ], [ %117, %116 ]
  %74 = phi ptr [ %59, %49 ], [ %119, %116 ]
  %75 = phi ptr [ %62, %49 ], [ %118, %116 ]
  %76 = getelementptr inbounds i8, ptr %75, i64 1
  %77 = load i8, ptr %75, align 1, !tbaa !27
  %78 = zext i8 %77 to i32
  br label %79

79:                                               ; preds = %106, %72
  %80 = phi ptr [ %74, %72 ], [ %113, %106 ]
  %81 = phi ptr [ %76, %72 ], [ %107, %106 ]
  %82 = phi i32 [ %78, %72 ], [ %108, %106 ]
  %83 = phi i32 [ %64, %72 ], [ %109, %106 ]
  %84 = phi i8 [ %67, %72 ], [ %110, %106 ]
  %85 = phi i32 [ %39, %72 ], [ %114, %106 ]
  %86 = and i32 %83, %82
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %79
  br i1 %68, label %99, label %90

89:                                               ; preds = %79
  br i1 %69, label %99, label %90

90:                                               ; preds = %89, %88
  %91 = phi i64 [ %10, %88 ], [ %9, %89 ]
  %92 = trunc i64 %91 to i8
  %93 = mul i8 %92, 17
  %94 = load i8, ptr %80, align 1, !tbaa !27
  %95 = xor i8 %84, -1
  %96 = and i8 %94, %95
  %97 = and i8 %84, %93
  %98 = add i8 %96, %97
  store i8 %98, ptr %80, align 1, !tbaa !27
  br label %99

99:                                               ; preds = %90, %89, %88
  %100 = lshr i32 %83, 1
  %101 = icmp ult i32 %83, 2
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = getelementptr inbounds i8, ptr %81, i64 1
  %104 = load i8, ptr %81, align 1, !tbaa !27
  %105 = zext i8 %104 to i32
  br label %106

106:                                              ; preds = %102, %99
  %107 = phi ptr [ %103, %102 ], [ %81, %99 ]
  %108 = phi i32 [ %105, %102 ], [ %82, %99 ]
  %109 = phi i32 [ 128, %102 ], [ %100, %99 ]
  %110 = xor i8 %84, -1
  %111 = icmp eq i8 %84, 15
  %112 = zext i1 %111 to i64
  %113 = getelementptr inbounds i8, ptr %80, i64 %112
  %114 = add nsw i32 %85, -1
  %115 = icmp sgt i32 %85, 1
  br i1 %115, label %79, label %116, !llvm.loop !28

116:                                              ; preds = %106
  %117 = add nsw i32 %73, -1
  %118 = getelementptr inbounds i8, ptr %75, i64 %70
  %119 = getelementptr inbounds i8, ptr %74, i64 %71
  %120 = icmp sgt i32 %73, 1
  br i1 %120, label %72, label %121, !llvm.loop !30

121:                                              ; preds = %116, %27
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_mapped4_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
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
  %27 = phi ptr [ %24, %19 ], [ %1, %12 ], [ %1, %9 ]
  %28 = phi i64 [ 0, %19 ], [ %4, %12 ], [ %4, %9 ]
  %29 = phi i32 [ %15, %19 ], [ %15, %12 ], [ %5, %9 ]
  %30 = phi i32 [ 0, %19 ], [ %6, %12 ], [ %6, %9 ]
  %31 = phi i32 [ %17, %19 ], [ %17, %12 ], [ %7, %9 ]
  %32 = phi i32 [ %20, %19 ], [ %8, %12 ], [ %8, %9 ]
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !5
  %35 = sub nsw i32 %34, %31
  %36 = icmp sgt i32 %29, %35
  %37 = sub nsw i32 %34, %29
  %38 = select i1 %36, i32 %37, i32 %31
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !16
  %41 = sub nsw i32 %40, %32
  %42 = icmp sgt i32 %30, %41
  %43 = sub nsw i32 %40, %30
  %44 = select i1 %42, i32 %43, i32 %32
  %45 = icmp slt i32 %38, 1
  %46 = icmp slt i32 %44, 1
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %25
  %49 = shl i32 %34, 2
  store i32 %49, ptr %33, align 8, !tbaa !5
  %50 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 9), align 8, !tbaa !31
  %51 = shl i32 %26, 2
  %52 = shl i32 %29, 2
  %53 = shl i32 %38, 2
  %54 = tail call i32 %50(ptr noundef %0, ptr noundef %27, i32 noundef %51, i32 noundef %3, i64 noundef %28, i32 noundef %52, i32 noundef %30, i32 noundef %53, i32 noundef %44, i64 noundef 0, i64 noundef 1) #4
  %55 = load i32, ptr %33, align 8, !tbaa !5
  %56 = ashr i32 %55, 2
  store i32 %56, ptr %33, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %25, %48
  %58 = phi i32 [ %54, %48 ], [ 0, %25 ]
  ret i32 %58
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

declare i32 @mem_gray_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem4_word_fill_rectangle(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
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
  br i1 %35, label %48, label %36

36:                                               ; preds = %16
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %38 = load ptr, ptr %37, align 8, !tbaa !17
  %39 = sext i32 %19 to i64
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !24
  %42 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %43 = load i32, ptr %42, align 8, !tbaa !25
  %44 = shl i32 %20, 2
  %45 = shl i32 %26, 2
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %32, i32 noundef 1) #4
  %46 = getelementptr inbounds [16 x i32], ptr @tile_patterns, i64 0, i64 %5
  %47 = load i32, ptr %46, align 4, !tbaa !26
  tail call void @bits_fill_rectangle(ptr noundef %41, i32 noundef %44, i32 noundef %43, i32 noundef %47, i32 noundef %45, i32 noundef %32) #4
  tail call void @mem_swap_byte_rect(ptr noundef %41, i32 noundef %43, i32 noundef %44, i32 noundef %45, i32 noundef %32, i32 noundef 1) #4
  br label %48

48:                                               ; preds = %16, %36
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem4_word_copy_mono(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
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
  %61 = shl i32 %31, 2
  %62 = shl i32 %39, 2
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %45, i32 noundef %60) #4
  %63 = tail call i32 @mem_mapped4_copy_mono(ptr noundef %0, ptr noundef %33, i32 noundef %32, i32 noundef %3, i64 poison, i32 noundef %31, i32 noundef %28, i32 noundef %39, i32 noundef %45, i64 noundef %9, i64 noundef %10)
  tail call void @mem_swap_byte_rect(ptr noundef %54, i32 noundef %56, i32 noundef %61, i32 noundef %62, i32 noundef %45, i32 noundef 0) #4
  br label %64

64:                                               ; preds = %27, %49
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @mem4_word_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
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
  %27 = phi ptr [ %24, %19 ], [ %1, %12 ], [ %1, %9 ]
  %28 = phi i64 [ 0, %19 ], [ %4, %12 ], [ %4, %9 ]
  %29 = phi i32 [ %15, %19 ], [ %15, %12 ], [ %5, %9 ]
  %30 = phi i32 [ 0, %19 ], [ %6, %12 ], [ %6, %9 ]
  %31 = phi i32 [ %17, %19 ], [ %17, %12 ], [ %7, %9 ]
  %32 = phi i32 [ %20, %19 ], [ %8, %12 ], [ %8, %9 ]
  %33 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %34 = load i32, ptr %33, align 8, !tbaa !5
  %35 = sub nsw i32 %34, %31
  %36 = icmp sgt i32 %29, %35
  %37 = sub nsw i32 %34, %29
  %38 = select i1 %36, i32 %37, i32 %31
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %40 = load i32, ptr %39, align 4, !tbaa !16
  %41 = sub nsw i32 %40, %32
  %42 = icmp sgt i32 %30, %41
  %43 = sub nsw i32 %40, %30
  %44 = select i1 %42, i32 %43, i32 %32
  %45 = icmp slt i32 %38, 1
  %46 = icmp slt i32 %44, 1
  %47 = select i1 %45, i1 true, i1 %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %25
  %49 = shl i32 %34, 2
  store i32 %49, ptr %33, align 8, !tbaa !5
  %50 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_word_device, i64 0, i32 21, i32 9), align 8, !tbaa !31
  %51 = shl i32 %26, 2
  %52 = shl i32 %29, 2
  %53 = shl i32 %38, 2
  %54 = tail call i32 %50(ptr noundef %0, ptr noundef %27, i32 noundef %51, i32 noundef %3, i64 noundef %28, i32 noundef %52, i32 noundef %30, i32 noundef %53, i32 noundef %44, i64 noundef 0, i64 noundef 1) #4
  %55 = load i32, ptr %33, align 8, !tbaa !5
  %56 = ashr i32 %55, 2
  store i32 %56, ptr %33, align 8, !tbaa !5
  br label %57

57:                                               ; preds = %25, %48
  %58 = phi i32 [ %54, %48 ], [ 0, %25 ]
  ret i32 %58
}

declare i32 @mem_word_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @bits_fill_rectangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

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
!26 = !{!7, !7, i64 0}
!27 = !{!8, !8, i64 0}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !29}
!31 = !{!18, !10, i64 264}
