; ModuleID = 'gxclip2.c'
source_filename = "gxclip2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_tile_clip_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gx_strip_bitmap_s, %struct.gx_device_memory_s, %struct.gs_int_point_s, %union._b }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gs_int_point_s = type { i32, i32 }
%union._b = type { [37 x i64] }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }

@gs_tile_clip_device = internal unnamed_addr constant %struct.gx_device_tile_clip_s { i32 1472, ptr null, ptr @.str, ptr null, ptr null, i32 1, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 0 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @gx_default_open_device, ptr @gx_forward_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @gx_default_close_device, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @tile_clip_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @tile_clip_copy_mono, ptr @tile_clip_copy_color, ptr @gx_default_draw_line, ptr @gx_default_get_bits, ptr @gx_forward_get_params, ptr @gx_forward_put_params, ptr @gx_forward_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_forward_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_forward_get_alpha_bits, ptr @tile_clip_copy_alpha, ptr @gx_forward_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @tile_clip_strip_copy_rop, ptr @gx_forward_get_clipping_box }, ptr null, %struct.gx_strip_bitmap_s zeroinitializer, %struct.gx_device_memory_s zeroinitializer, %struct.gs_int_point_s zeroinitializer, %union._b zeroinitializer }, align 8
@.str = private unnamed_addr constant [13 x i8] c"tile clipper\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @tile_clip_initialize(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !5
  %8 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !14
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, 8
  %12 = udiv i64 296, %11
  %13 = trunc i64 %12 to i32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1472) %0, ptr noundef nonnull align 8 dereferenceable(1472) @gs_tile_clip_device, i64 1472, i1 false), !tbaa.struct !15
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 8
  %15 = load i32, ptr %14, align 8, !tbaa !23
  %16 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 8
  store i32 %15, ptr %16, align 8, !tbaa !28
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 9
  %18 = load i32, ptr %17, align 4, !tbaa !35
  %19 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 9
  store i32 %18, ptr %19, align 4, !tbaa !36
  %20 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 7
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull align 8 dereferenceable(16) %21, i64 16, i1 false), !tbaa.struct !37
  %22 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  store ptr %2, ptr %22, align 8, !tbaa !38
  %23 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %23, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !tbaa.struct !39
  %24 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  store i32 %3, ptr %24, align 8, !tbaa !40
  %25 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  store i32 %4, ptr %25, align 4, !tbaa !41
  %26 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %1, i64 0, i32 2, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !42
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 %13)
  %29 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24
  tail call void @gs_make_mem_mono_device(ptr noundef nonnull %29, ptr noundef null, ptr noundef null) #5
  %30 = icmp slt i32 %28, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %5
  %32 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 8
  %33 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 9
  br label %39

34:                                               ; preds = %39
  %35 = add nsw i32 %40, -1
  %36 = icmp slt i32 %40, 2
  br i1 %36, label %37, label %39, !llvm.loop !43

37:                                               ; preds = %34, %5
  %38 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 26
  store ptr null, ptr %38, align 8, !tbaa !45
  br label %49

39:                                               ; preds = %31, %34
  %40 = phi i32 [ %28, %31 ], [ %35, %34 ]
  store i32 %7, ptr %32, align 8, !tbaa !46
  store i32 %40, ptr %33, align 4, !tbaa !47
  %41 = tail call i64 @gdev_mem_data_size(ptr noundef nonnull %29, i32 noundef %7, i32 noundef %40) #5
  %42 = icmp ult i64 %41, 297
  br i1 %42, label %43, label %34

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 26
  %45 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 26
  store ptr %44, ptr %45, align 8, !tbaa !45
  %46 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 21
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = tail call i32 %47(ptr noundef nonnull %29) #5
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i32 [ 0, %37 ], [ %48, %43 ]
  ret i32 %50
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @tile_clip_set_phase(ptr nocapture noundef writeonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  store i32 %1, ptr %4, align 8, !tbaa !40
  %5 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  store i32 %2, ptr %5, align 4, !tbaa !41
  ret void
}

declare void @gs_make_mem_mono_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @gdev_mem_data_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @gx_default_install(ptr noundef, ptr noundef) #3

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #3

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @gx_default_open_device(ptr noundef) #3

declare void @gx_forward_get_initial_matrix(ptr noundef, ptr noundef) #3

declare i32 @gx_default_sync_output(ptr noundef) #3

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #3

declare i32 @gx_default_close_device(ptr noundef) #3

declare i64 @gx_forward_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

declare i32 @gx_forward_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %8, i64 0, i32 21, i32 34
  %10 = load ptr, ptr %9, align 8, !tbaa !49
  %11 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  %12 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  %13 = load i32, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !41
  %16 = tail call i32 %10(ptr noundef %8, ptr noundef nonnull %11, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef -1, i64 noundef %5, i32 noundef %13, i32 noundef %15) #5
  ret i32 %16
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #0 {
  %12 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24
  %13 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = tail call i32 @gx_default_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #5
  br label %121

18:                                               ; preds = %11
  %19 = icmp eq i64 %10, -1
  %20 = icmp eq i64 %9, -1
  br i1 %19, label %34, label %21

21:                                               ; preds = %18
  br i1 %20, label %35, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = getelementptr inbounds %struct.gx_device_s, ptr %24, i64 0, i32 21, i32 34
  %26 = load ptr, ptr %25, align 8, !tbaa !49
  %27 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  %28 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  %29 = load i32, ptr %28, align 8, !tbaa !40
  %30 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !41
  %32 = tail call i32 %26(ptr noundef %24, ptr noundef nonnull %27, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef -1, i64 noundef %9, i32 noundef %29, i32 noundef %31) #5
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %121, label %35

34:                                               ; preds = %18
  br i1 %20, label %121, label %35

35:                                               ; preds = %34, %21, %22
  %36 = phi i64 [ -1, %22 ], [ -1, %21 ], [ 0, %34 ]
  %37 = phi i64 [ 0, %22 ], [ 0, %21 ], [ -1, %34 ]
  %38 = phi i64 [ %10, %22 ], [ %10, %21 ], [ %9, %34 ]
  %39 = add nsw i32 %8, %6
  %40 = icmp sgt i32 %8, 0
  br i1 %40, label %41, label %121

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  %43 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  %44 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  %45 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 5
  %46 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 6
  %47 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %48 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2, i32 1
  %49 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 9
  %50 = add nsw i32 %7, %5
  %51 = icmp sgt i32 %7, 0
  %52 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 4
  %53 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 26
  %54 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 1
  %55 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 24, i32 21, i32 9
  %56 = sub i32 %2, %5
  %57 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  br label %61

58:                                               ; preds = %118
  %59 = add nsw i32 %80, %63
  %60 = icmp slt i32 %59, %39
  br i1 %60, label %61, label %121, !llvm.loop !50

61:                                               ; preds = %41, %58
  %62 = phi i32 [ undef, %41 ], [ %120, %58 ]
  %63 = phi i32 [ %6, %41 ], [ %59, %58 ]
  %64 = load i32, ptr %43, align 4, !tbaa !41
  %65 = add nsw i32 %64, %63
  %66 = load i16, ptr %45, align 2, !tbaa !51
  %67 = zext i16 %66 to i32
  %68 = srem i32 %65, %67
  %69 = load i32, ptr %42, align 8, !tbaa !40
  %70 = sdiv i32 %65, %67
  %71 = load i16, ptr %46, align 4, !tbaa !52
  %72 = zext i16 %71 to i32
  %73 = mul nsw i32 %70, %72
  %74 = add nsw i32 %73, %69
  %75 = sub nsw i32 %39, %63
  %76 = load i32, ptr %48, align 4, !tbaa !53
  %77 = sub nsw i32 %76, %68
  %78 = tail call i32 @llvm.smin.i32(i32 %75, i32 %77)
  %79 = load i32, ptr %49, align 4, !tbaa !47
  %80 = tail call i32 @llvm.smin.i32(i32 %78, i32 %79)
  br i1 %51, label %81, label %118

81:                                               ; preds = %61
  %82 = sub nsw i32 %63, %6
  %83 = mul nsw i32 %82, %3
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr %1, i64 %84
  br label %89

86:                                               ; preds = %89
  %87 = add nsw i32 %100, %92
  %88 = icmp slt i32 %87, %50
  br i1 %88, label %89, label %118, !llvm.loop !54

89:                                               ; preds = %81, %86
  %90 = phi i1 [ %51, %81 ], [ %88, %86 ]
  %91 = phi i32 [ %62, %81 ], [ %117, %86 ]
  %92 = phi i32 [ %5, %81 ], [ %87, %86 ]
  %93 = add nsw i32 %74, %92
  %94 = load i16, ptr %52, align 8, !tbaa !55
  %95 = zext i16 %94 to i32
  %96 = srem i32 %93, %95
  %97 = sub nsw i32 %50, %92
  %98 = load i32, ptr %47, align 4, !tbaa !56
  %99 = sub nsw i32 %98, %96
  %100 = tail call i32 @llvm.smin.i32(i32 %97, i32 %99)
  %101 = load ptr, ptr %44, align 8, !tbaa !57
  %102 = load i32, ptr %54, align 8, !tbaa !58
  %103 = mul nsw i32 %102, %68
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %101, i64 %104
  %106 = mul nsw i32 %102, %80
  %107 = sext i32 %106 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %53, ptr align 1 %105, i64 %107, i1 false)
  %108 = load ptr, ptr %55, align 8, !tbaa !59
  %109 = add i32 %56, %92
  %110 = tail call i32 %108(ptr noundef nonnull %12, ptr noundef %85, i32 noundef %109, i32 noundef %3, i64 noundef 0, i32 noundef %96, i32 noundef 0, i32 noundef %100, i32 noundef %80, i64 noundef %37, i64 noundef %36) #5
  %111 = load ptr, ptr %57, align 8, !tbaa !38
  %112 = getelementptr inbounds %struct.gx_device_s, ptr %111, i64 0, i32 21, i32 9
  %113 = load ptr, ptr %112, align 8, !tbaa !60
  %114 = load i32, ptr %54, align 8, !tbaa !58
  %115 = tail call i32 %113(ptr noundef %111, ptr noundef nonnull %53, i32 noundef %96, i32 noundef %114, i64 noundef 0, i32 noundef %92, i32 noundef %63, i32 noundef %100, i32 noundef %80, i64 noundef -1, i64 noundef %38) #5
  %116 = icmp sgt i32 %115, -1
  %117 = select i1 %116, i32 %91, i32 %115
  br i1 %116, label %86, label %118

118:                                              ; preds = %89, %86, %61
  %119 = phi i1 [ %51, %61 ], [ %90, %89 ], [ %88, %86 ]
  %120 = phi i32 [ %62, %61 ], [ %117, %86 ], [ %117, %89 ]
  br i1 %119, label %121, label %58

121:                                              ; preds = %118, %58, %35, %34, %22, %16
  %122 = phi i32 [ %17, %16 ], [ %32, %22 ], [ 0, %34 ], [ 0, %35 ], [ 0, %58 ], [ %120, %118 ]
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_color(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  %11 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  %12 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  %13 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 5
  %14 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 1
  %15 = add nsw i32 %8, %6
  %16 = icmp sgt i32 %8, 0
  br i1 %16, label %17, label %163

17:                                               ; preds = %9
  %18 = load ptr, ptr %12, align 8, !tbaa !57
  %19 = load i32, ptr %14, align 8, !tbaa !58
  %20 = load i32, ptr %11, align 4, !tbaa !41
  %21 = add nsw i32 %20, %6
  %22 = load i16, ptr %13, align 2, !tbaa !51
  %23 = zext i16 %22 to i32
  %24 = srem i32 %21, %23
  %25 = mul nsw i32 %19, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, ptr %18, i64 %26
  %28 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 6
  %29 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 4
  %30 = add nsw i32 %7, %5
  %31 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %32 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %33 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  %34 = sub i32 %2, %5
  %35 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2, i32 1
  %36 = sext i32 %3 to i64
  br label %37

37:                                               ; preds = %17, %159
  %38 = phi i32 [ undef, %17 ], [ %156, %159 ]
  %39 = phi ptr [ %1, %17 ], [ %161, %159 ]
  %40 = phi i32 [ %6, %17 ], [ %160, %159 ]
  %41 = phi ptr [ %27, %17 ], [ %155, %159 ]
  %42 = phi i32 [ %24, %17 ], [ %154, %159 ]
  %43 = load i32, ptr %10, align 8, !tbaa !40
  %44 = load i32, ptr %11, align 4, !tbaa !41
  %45 = add nsw i32 %44, %40
  %46 = load i16, ptr %13, align 2, !tbaa !51
  %47 = zext i16 %46 to i32
  %48 = sdiv i32 %45, %47
  %49 = load i16, ptr %28, align 4, !tbaa !52
  %50 = zext i16 %49 to i32
  %51 = mul nsw i32 %48, %50
  %52 = add i32 %43, %5
  %53 = add i32 %52, %51
  %54 = load i16, ptr %29, align 8, !tbaa !55
  %55 = zext i16 %54 to i32
  %56 = srem i32 %53, %55
  %57 = ashr i32 %56, 3
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %41, i64 %58
  %60 = and i32 %56, 7
  %61 = lshr exact i32 128, %60
  %62 = trunc i32 %61 to i8
  br label %63

63:                                               ; preds = %135, %37
  %64 = phi i32 [ %56, %37 ], [ %136, %135 ]
  %65 = phi ptr [ %59, %37 ], [ %137, %135 ]
  %66 = phi i8 [ %62, %37 ], [ %138, %135 ]
  %67 = phi i32 [ %5, %37 ], [ %139, %135 ]
  %68 = phi i32 [ %38, %37 ], [ %140, %135 ]
  %69 = icmp slt i32 %67, %30
  br i1 %69, label %70, label %142

70:                                               ; preds = %63, %78
  %71 = phi i32 [ %90, %78 ], [ %67, %63 ]
  %72 = phi i8 [ %89, %78 ], [ %66, %63 ]
  %73 = phi ptr [ %87, %78 ], [ %65, %63 ]
  %74 = phi i32 [ %86, %78 ], [ %64, %63 ]
  %75 = load i8, ptr %73, align 1, !tbaa !19
  %76 = and i8 %75, %72
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = add nsw i32 %74, 1
  %80 = load i32, ptr %31, align 4, !tbaa !56
  %81 = icmp eq i32 %79, %80
  %82 = lshr i8 %72, 1
  %83 = icmp ult i8 %72, 2
  %84 = zext i1 %83 to i64
  %85 = getelementptr inbounds i8, ptr %73, i64 %84
  %86 = select i1 %81, i32 0, i32 %79
  %87 = select i1 %81, ptr %41, ptr %85
  %88 = or i1 %81, %83
  %89 = select i1 %88, i8 -128, i8 %82
  %90 = add i32 %71, 1
  %91 = icmp eq i32 %90, %30
  br i1 %91, label %92, label %70, !llvm.loop !61

92:                                               ; preds = %78, %70
  %93 = phi i32 [ %86, %78 ], [ %74, %70 ]
  %94 = phi ptr [ %87, %78 ], [ %73, %70 ]
  %95 = phi i8 [ %89, %78 ], [ %72, %70 ]
  %96 = phi i32 [ %30, %78 ], [ %71, %70 ]
  %97 = icmp eq i32 %96, %30
  br i1 %97, label %135, label %98

98:                                               ; preds = %92
  %99 = load i32, ptr %32, align 4, !tbaa !56
  %100 = add i32 %96, 1
  %101 = tail call i32 @llvm.smax.i32(i32 %30, i32 %100)
  %102 = add i32 %101, -1
  br label %103

103:                                              ; preds = %98, %119
  %104 = phi i32 [ %114, %119 ], [ %93, %98 ]
  %105 = phi ptr [ %115, %119 ], [ %94, %98 ]
  %106 = phi i8 [ %117, %119 ], [ %95, %98 ]
  %107 = phi i32 [ %120, %119 ], [ %96, %98 ]
  %108 = add nsw i32 %104, 1
  %109 = icmp eq i32 %108, %99
  %110 = lshr i8 %106, 1
  %111 = icmp ult i8 %106, 2
  %112 = zext i1 %111 to i64
  %113 = getelementptr inbounds i8, ptr %105, i64 %112
  %114 = select i1 %109, i32 0, i32 %108
  %115 = select i1 %109, ptr %41, ptr %113
  %116 = select i1 %109, i1 true, i1 %111
  %117 = select i1 %116, i8 -128, i8 %110
  %118 = icmp eq i32 %107, %102
  br i1 %118, label %124, label %119

119:                                              ; preds = %103
  %120 = add nsw i32 %107, 1
  %121 = load i8, ptr %115, align 1, !tbaa !19
  %122 = and i8 %121, %117
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %124, label %103, !llvm.loop !62

124:                                              ; preds = %103, %119
  %125 = phi i32 [ %101, %103 ], [ %120, %119 ]
  %126 = load ptr, ptr %33, align 8, !tbaa !38
  %127 = getelementptr inbounds %struct.gx_device_s, ptr %126, i64 0, i32 21, i32 10
  %128 = load ptr, ptr %127, align 8, !tbaa !63
  %129 = add i32 %34, %96
  %130 = sub nsw i32 %125, %96
  %131 = tail call i32 %128(ptr noundef %126, ptr noundef %39, i32 noundef %129, i32 noundef %3, i64 noundef 0, i32 noundef %96, i32 noundef %40, i32 noundef %130, i32 noundef 1) #5
  %132 = icmp slt i32 %131, 0
  %133 = select i1 %132, i32 %131, i32 %68
  %134 = lshr i32 %131, 31
  br label %135

135:                                              ; preds = %124, %92
  %136 = phi i32 [ %93, %92 ], [ %114, %124 ]
  %137 = phi ptr [ %94, %92 ], [ %115, %124 ]
  %138 = phi i8 [ %95, %92 ], [ %117, %124 ]
  %139 = phi i32 [ %96, %92 ], [ %125, %124 ]
  %140 = phi i32 [ %68, %92 ], [ %133, %124 ]
  %141 = phi i32 [ 5, %92 ], [ %134, %124 ]
  switch i32 %141, label %153 [
    i32 0, label %63
    i32 5, label %142
  ], !llvm.loop !64

142:                                              ; preds = %135, %63
  %143 = phi i32 [ %140, %135 ], [ %68, %63 ]
  %144 = add nsw i32 %42, 1
  %145 = load i32, ptr %35, align 4, !tbaa !53
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load ptr, ptr %12, align 8, !tbaa !57
  br label %153

149:                                              ; preds = %142
  %150 = load i32, ptr %14, align 8, !tbaa !58
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, ptr %41, i64 %151
  br label %153

153:                                              ; preds = %135, %147, %149
  %154 = phi i32 [ 0, %147 ], [ %144, %149 ], [ %42, %135 ]
  %155 = phi ptr [ %148, %147 ], [ %152, %149 ], [ %41, %135 ]
  %156 = phi i32 [ %143, %147 ], [ %143, %149 ], [ %140, %135 ]
  %157 = phi i32 [ 0, %147 ], [ 0, %149 ], [ %141, %135 ]
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %153
  %160 = add nsw i32 %40, 1
  %161 = getelementptr inbounds i8, ptr %39, i64 %36
  %162 = icmp slt i32 %160, %15
  br i1 %162, label %37, label %163, !llvm.loop !65

163:                                              ; preds = %153, %159, %9
  %164 = phi i32 [ 0, %9 ], [ %156, %153 ], [ 0, %159 ]
  ret i32 %164
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #3

declare i32 @gx_default_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @gx_forward_get_params(ptr noundef, ptr noundef) #3

declare i32 @gx_forward_put_params(ptr noundef, ptr noundef) #3

declare i64 @gx_forward_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #3

declare ptr @gx_forward_get_xfont_device(ptr noundef) #3

declare i64 @gx_forward_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #3

declare ptr @gx_forward_get_page_device(ptr noundef) #3

declare i32 @gx_forward_get_alpha_bits(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_copy_alpha(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 noundef %10) #0 {
  %12 = add nsw i32 %8, %6
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %14, label %146

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  %16 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  %17 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  %18 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 5
  %19 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 1
  %20 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 6
  %21 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 4
  %22 = add i32 %7, %5
  %23 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %24 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %25 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  %26 = sub i32 %2, %5
  %27 = sext i32 %3 to i64
  br label %28

28:                                               ; preds = %14, %142
  %29 = phi i32 [ undef, %14 ], [ %139, %142 ]
  %30 = phi ptr [ %1, %14 ], [ %144, %142 ]
  %31 = phi i32 [ %6, %14 ], [ %143, %142 ]
  %32 = load ptr, ptr %15, align 8, !tbaa !57
  %33 = load i32, ptr %17, align 4, !tbaa !41
  %34 = add nsw i32 %33, %31
  %35 = load i16, ptr %18, align 2, !tbaa !51
  %36 = zext i16 %35 to i32
  %37 = srem i32 %34, %36
  %38 = load i32, ptr %19, align 8, !tbaa !58
  %39 = mul nsw i32 %38, %37
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %32, i64 %40
  %42 = load i32, ptr %16, align 8, !tbaa !40
  %43 = sdiv i32 %34, %36
  %44 = load i16, ptr %20, align 4, !tbaa !52
  %45 = zext i16 %44 to i32
  %46 = mul nsw i32 %43, %45
  %47 = add i32 %42, %5
  %48 = add i32 %47, %46
  %49 = load i16, ptr %21, align 8, !tbaa !55
  %50 = zext i16 %49 to i32
  %51 = srem i32 %48, %50
  %52 = ashr i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %41, i64 %53
  %55 = and i32 %51, 7
  %56 = lshr exact i32 128, %55
  %57 = trunc i32 %56 to i8
  br label %58

58:                                               ; preds = %130, %28
  %59 = phi i32 [ %51, %28 ], [ %131, %130 ]
  %60 = phi ptr [ %54, %28 ], [ %132, %130 ]
  %61 = phi i8 [ %57, %28 ], [ %133, %130 ]
  %62 = phi i32 [ %5, %28 ], [ %134, %130 ]
  %63 = phi i32 [ %29, %28 ], [ %135, %130 ]
  %64 = icmp slt i32 %62, %22
  br i1 %64, label %65, label %138

65:                                               ; preds = %58, %73
  %66 = phi i32 [ %85, %73 ], [ %62, %58 ]
  %67 = phi i8 [ %84, %73 ], [ %61, %58 ]
  %68 = phi ptr [ %82, %73 ], [ %60, %58 ]
  %69 = phi i32 [ %81, %73 ], [ %59, %58 ]
  %70 = load i8, ptr %68, align 1, !tbaa !19
  %71 = and i8 %70, %67
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %65
  %74 = add nsw i32 %69, 1
  %75 = load i32, ptr %23, align 4, !tbaa !56
  %76 = icmp eq i32 %74, %75
  %77 = lshr i8 %67, 1
  %78 = icmp ult i8 %67, 2
  %79 = zext i1 %78 to i64
  %80 = getelementptr inbounds i8, ptr %68, i64 %79
  %81 = select i1 %76, i32 0, i32 %74
  %82 = select i1 %76, ptr %41, ptr %80
  %83 = or i1 %76, %78
  %84 = select i1 %83, i8 -128, i8 %77
  %85 = add i32 %66, 1
  %86 = icmp eq i32 %85, %22
  br i1 %86, label %87, label %65, !llvm.loop !66

87:                                               ; preds = %73, %65
  %88 = phi i32 [ %81, %73 ], [ %69, %65 ]
  %89 = phi ptr [ %82, %73 ], [ %68, %65 ]
  %90 = phi i8 [ %84, %73 ], [ %67, %65 ]
  %91 = phi i32 [ %22, %73 ], [ %66, %65 ]
  %92 = icmp eq i32 %91, %22
  br i1 %92, label %130, label %93

93:                                               ; preds = %87
  %94 = load i32, ptr %24, align 4, !tbaa !56
  %95 = add i32 %91, 1
  %96 = tail call i32 @llvm.smax.i32(i32 %22, i32 %95)
  %97 = add i32 %96, -1
  br label %98

98:                                               ; preds = %93, %114
  %99 = phi i32 [ %109, %114 ], [ %88, %93 ]
  %100 = phi ptr [ %110, %114 ], [ %89, %93 ]
  %101 = phi i8 [ %112, %114 ], [ %90, %93 ]
  %102 = phi i32 [ %115, %114 ], [ %91, %93 ]
  %103 = add nsw i32 %99, 1
  %104 = icmp eq i32 %103, %94
  %105 = lshr i8 %101, 1
  %106 = icmp ult i8 %101, 2
  %107 = zext i1 %106 to i64
  %108 = getelementptr inbounds i8, ptr %100, i64 %107
  %109 = select i1 %104, i32 0, i32 %103
  %110 = select i1 %104, ptr %41, ptr %108
  %111 = select i1 %104, i1 true, i1 %106
  %112 = select i1 %111, i8 -128, i8 %105
  %113 = icmp eq i32 %102, %97
  br i1 %113, label %119, label %114

114:                                              ; preds = %98
  %115 = add nsw i32 %102, 1
  %116 = load i8, ptr %110, align 1, !tbaa !19
  %117 = and i8 %116, %112
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %119, label %98, !llvm.loop !67

119:                                              ; preds = %98, %114
  %120 = phi i32 [ %96, %98 ], [ %115, %114 ]
  %121 = load ptr, ptr %25, align 8, !tbaa !38
  %122 = getelementptr inbounds %struct.gx_device_s, ptr %121, i64 0, i32 21, i32 21
  %123 = load ptr, ptr %122, align 8, !tbaa !68
  %124 = add i32 %26, %91
  %125 = sub nsw i32 %120, %91
  %126 = tail call i32 %123(ptr noundef %121, ptr noundef %30, i32 noundef %124, i32 noundef %3, i64 noundef 0, i32 noundef %91, i32 noundef %31, i32 noundef %125, i32 noundef 1, i64 noundef %9, i32 noundef %10) #5
  %127 = icmp slt i32 %126, 0
  %128 = select i1 %127, i32 %126, i32 %63
  %129 = lshr i32 %126, 31
  br label %130

130:                                              ; preds = %119, %87
  %131 = phi i32 [ %88, %87 ], [ %109, %119 ]
  %132 = phi ptr [ %89, %87 ], [ %110, %119 ]
  %133 = phi i8 [ %90, %87 ], [ %112, %119 ]
  %134 = phi i32 [ %91, %87 ], [ %120, %119 ]
  %135 = phi i32 [ %63, %87 ], [ %128, %119 ]
  %136 = phi i32 [ 5, %87 ], [ %129, %119 ]
  switch i32 %136, label %138 [
    i32 0, label %58
    i32 5, label %137
  ], !llvm.loop !69

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %58, %130, %137
  %139 = phi i32 [ %135, %130 ], [ %63, %58 ], [ %135, %137 ]
  %140 = phi i32 [ %136, %130 ], [ 0, %58 ], [ 0, %137 ]
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = add nsw i32 %31, 1
  %144 = getelementptr inbounds i8, ptr %30, i64 %27
  %145 = icmp slt i32 %143, %12
  br i1 %145, label %28, label %146, !llvm.loop !70

146:                                              ; preds = %138, %142, %11
  %147 = phi i32 [ 0, %11 ], [ %139, %138 ], [ 0, %142 ]
  ret i32 %147
}

declare i32 @gx_forward_get_band(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @gx_default_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #3

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #3

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #3

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #3

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind uwtable
define internal i32 @tile_clip_strip_copy_rop(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14) #0 {
  %16 = add nsw i32 %11, %9
  %17 = icmp sgt i32 %11, 0
  br i1 %17, label %18, label %150

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23
  %20 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25
  %21 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 25, i32 1
  %22 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 5
  %23 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 1
  %24 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 6
  %25 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 4
  %26 = add i32 %10, %8
  %27 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %28 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 23, i32 2
  %29 = getelementptr inbounds %struct.gx_device_tile_clip_s, ptr %0, i64 0, i32 22
  %30 = sub i32 %2, %8
  %31 = zext i32 %3 to i64
  br label %32

32:                                               ; preds = %18, %146
  %33 = phi i32 [ undef, %18 ], [ %143, %146 ]
  %34 = phi ptr [ %1, %18 ], [ %148, %146 ]
  %35 = phi i32 [ %9, %18 ], [ %147, %146 ]
  %36 = load ptr, ptr %19, align 8, !tbaa !57
  %37 = load i32, ptr %21, align 4, !tbaa !41
  %38 = add nsw i32 %37, %35
  %39 = load i16, ptr %22, align 2, !tbaa !51
  %40 = zext i16 %39 to i32
  %41 = srem i32 %38, %40
  %42 = load i32, ptr %23, align 8, !tbaa !58
  %43 = mul nsw i32 %42, %41
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, ptr %36, i64 %44
  %46 = load i32, ptr %20, align 8, !tbaa !40
  %47 = sdiv i32 %38, %40
  %48 = load i16, ptr %24, align 4, !tbaa !52
  %49 = zext i16 %48 to i32
  %50 = mul nsw i32 %47, %49
  %51 = add i32 %46, %8
  %52 = add i32 %51, %50
  %53 = load i16, ptr %25, align 8, !tbaa !55
  %54 = zext i16 %53 to i32
  %55 = srem i32 %52, %54
  %56 = ashr i32 %55, 3
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %45, i64 %57
  %59 = and i32 %55, 7
  %60 = lshr exact i32 128, %59
  %61 = trunc i32 %60 to i8
  br label %62

62:                                               ; preds = %134, %32
  %63 = phi i32 [ %55, %32 ], [ %135, %134 ]
  %64 = phi ptr [ %58, %32 ], [ %136, %134 ]
  %65 = phi i8 [ %61, %32 ], [ %137, %134 ]
  %66 = phi i32 [ %8, %32 ], [ %138, %134 ]
  %67 = phi i32 [ %33, %32 ], [ %139, %134 ]
  %68 = icmp slt i32 %66, %26
  br i1 %68, label %69, label %142

69:                                               ; preds = %62, %77
  %70 = phi i32 [ %89, %77 ], [ %66, %62 ]
  %71 = phi i8 [ %88, %77 ], [ %65, %62 ]
  %72 = phi ptr [ %86, %77 ], [ %64, %62 ]
  %73 = phi i32 [ %85, %77 ], [ %63, %62 ]
  %74 = load i8, ptr %72, align 1, !tbaa !19
  %75 = and i8 %74, %71
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %69
  %78 = add nsw i32 %73, 1
  %79 = load i32, ptr %27, align 4, !tbaa !56
  %80 = icmp eq i32 %78, %79
  %81 = lshr i8 %71, 1
  %82 = icmp ult i8 %71, 2
  %83 = zext i1 %82 to i64
  %84 = getelementptr inbounds i8, ptr %72, i64 %83
  %85 = select i1 %80, i32 0, i32 %78
  %86 = select i1 %80, ptr %45, ptr %84
  %87 = or i1 %80, %82
  %88 = select i1 %87, i8 -128, i8 %81
  %89 = add i32 %70, 1
  %90 = icmp eq i32 %89, %26
  br i1 %90, label %91, label %69, !llvm.loop !71

91:                                               ; preds = %77, %69
  %92 = phi i32 [ %85, %77 ], [ %73, %69 ]
  %93 = phi ptr [ %86, %77 ], [ %72, %69 ]
  %94 = phi i8 [ %88, %77 ], [ %71, %69 ]
  %95 = phi i32 [ %26, %77 ], [ %70, %69 ]
  %96 = icmp eq i32 %95, %26
  br i1 %96, label %134, label %97

97:                                               ; preds = %91
  %98 = load i32, ptr %28, align 4, !tbaa !56
  %99 = add i32 %95, 1
  %100 = tail call i32 @llvm.smax.i32(i32 %26, i32 %99)
  %101 = add i32 %100, -1
  br label %102

102:                                              ; preds = %97, %118
  %103 = phi i32 [ %113, %118 ], [ %92, %97 ]
  %104 = phi ptr [ %114, %118 ], [ %93, %97 ]
  %105 = phi i8 [ %116, %118 ], [ %94, %97 ]
  %106 = phi i32 [ %119, %118 ], [ %95, %97 ]
  %107 = add nsw i32 %103, 1
  %108 = icmp eq i32 %107, %98
  %109 = lshr i8 %105, 1
  %110 = icmp ult i8 %105, 2
  %111 = zext i1 %110 to i64
  %112 = getelementptr inbounds i8, ptr %104, i64 %111
  %113 = select i1 %108, i32 0, i32 %107
  %114 = select i1 %108, ptr %45, ptr %112
  %115 = select i1 %108, i1 true, i1 %110
  %116 = select i1 %115, i8 -128, i8 %109
  %117 = icmp eq i32 %106, %101
  br i1 %117, label %123, label %118

118:                                              ; preds = %102
  %119 = add nsw i32 %106, 1
  %120 = load i8, ptr %114, align 1, !tbaa !19
  %121 = and i8 %120, %116
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %102, !llvm.loop !72

123:                                              ; preds = %102, %118
  %124 = phi i32 [ %100, %102 ], [ %119, %118 ]
  %125 = load ptr, ptr %29, align 8, !tbaa !38
  %126 = getelementptr inbounds %struct.gx_device_s, ptr %125, i64 0, i32 21, i32 35
  %127 = load ptr, ptr %126, align 8, !tbaa !73
  %128 = add i32 %30, %95
  %129 = sub nsw i32 %124, %95
  %130 = tail call i32 %127(ptr noundef %125, ptr noundef %34, i32 noundef %128, i32 noundef %3, i64 noundef 0, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %95, i32 noundef %35, i32 noundef %129, i32 noundef 1, i32 noundef %12, i32 noundef %13, i32 noundef %14) #5
  %131 = icmp slt i32 %130, 0
  %132 = select i1 %131, i32 %130, i32 %67
  %133 = lshr i32 %130, 31
  br label %134

134:                                              ; preds = %123, %91
  %135 = phi i32 [ %92, %91 ], [ %113, %123 ]
  %136 = phi ptr [ %93, %91 ], [ %114, %123 ]
  %137 = phi i8 [ %94, %91 ], [ %116, %123 ]
  %138 = phi i32 [ %95, %91 ], [ %124, %123 ]
  %139 = phi i32 [ %67, %91 ], [ %132, %123 ]
  %140 = phi i32 [ 5, %91 ], [ %133, %123 ]
  switch i32 %140, label %142 [
    i32 0, label %62
    i32 5, label %141
  ], !llvm.loop !74

141:                                              ; preds = %134
  br label %142

142:                                              ; preds = %62, %134, %141
  %143 = phi i32 [ %139, %134 ], [ %67, %62 ], [ %139, %141 ]
  %144 = phi i32 [ %140, %134 ], [ 0, %62 ], [ 0, %141 ]
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = add nsw i32 %35, 1
  %148 = getelementptr inbounds i8, ptr %34, i64 %31
  %149 = icmp slt i32 %147, %16
  br i1 %149, label %32, label %150, !llvm.loop !75

150:                                              ; preds = %142, %146, %15
  %151 = phi i32 [ 0, %15 ], [ %143, %142 ], [ 0, %146 ]
  ret i32 %151
}

declare void @gx_forward_get_clipping_box(ptr noundef, ptr noundef) #3

declare i32 @gx_default_copy_mono(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!5 = !{!6, !10, i64 12}
!6 = !{!"gx_strip_bitmap_s", !7, i64 0, !10, i64 8, !11, i64 12, !12, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"int", !8, i64 0}
!11 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!12 = !{!"long", !8, i64 0}
!13 = !{!"short", !8, i64 0}
!14 = !{!6, !10, i64 8}
!15 = !{i64 0, i64 4, !16, i64 8, i64 8, !17, i64 16, i64 8, !17, i64 24, i64 8, !17, i64 32, i64 8, !17, i64 40, i64 4, !16, i64 44, i64 4, !16, i64 48, i64 4, !16, i64 52, i64 4, !16, i64 56, i64 2, !18, i64 58, i64 2, !18, i64 60, i64 2, !18, i64 62, i64 2, !18, i64 64, i64 4, !16, i64 68, i64 4, !16, i64 72, i64 8, !19, i64 80, i64 16, !19, i64 96, i64 4, !16, i64 100, i64 8, !19, i64 108, i64 8, !19, i64 116, i64 8, !19, i64 124, i64 16, !19, i64 144, i64 8, !20, i64 152, i64 8, !20, i64 160, i64 4, !16, i64 168, i64 8, !17, i64 176, i64 8, !17, i64 184, i64 8, !17, i64 192, i64 8, !17, i64 200, i64 8, !17, i64 208, i64 8, !17, i64 216, i64 8, !17, i64 224, i64 8, !17, i64 232, i64 8, !17, i64 240, i64 8, !17, i64 248, i64 8, !17, i64 256, i64 8, !17, i64 264, i64 8, !17, i64 272, i64 8, !17, i64 280, i64 8, !17, i64 288, i64 8, !17, i64 296, i64 8, !17, i64 304, i64 8, !17, i64 312, i64 8, !17, i64 320, i64 8, !17, i64 328, i64 8, !17, i64 336, i64 8, !17, i64 344, i64 8, !17, i64 352, i64 8, !17, i64 360, i64 8, !17, i64 368, i64 8, !17, i64 376, i64 8, !17, i64 384, i64 8, !17, i64 392, i64 8, !17, i64 400, i64 8, !17, i64 408, i64 8, !17, i64 416, i64 8, !17, i64 424, i64 8, !17, i64 432, i64 8, !17, i64 440, i64 8, !17, i64 448, i64 8, !17, i64 456, i64 8, !17, i64 464, i64 8, !17, i64 472, i64 8, !17, i64 480, i64 8, !17, i64 488, i64 8, !17, i64 496, i64 8, !17, i64 504, i64 4, !16, i64 508, i64 4, !16, i64 512, i64 4, !16, i64 520, i64 8, !20, i64 528, i64 2, !18, i64 530, i64 2, !18, i64 532, i64 2, !18, i64 534, i64 2, !18, i64 536, i64 4, !16, i64 544, i64 8, !17, i64 552, i64 8, !17, i64 560, i64 8, !17, i64 568, i64 8, !17, i64 576, i64 4, !16, i64 580, i64 4, !16, i64 584, i64 4, !16, i64 588, i64 4, !16, i64 592, i64 2, !18, i64 594, i64 2, !18, i64 596, i64 2, !18, i64 598, i64 2, !18, i64 600, i64 4, !16, i64 604, i64 4, !16, i64 608, i64 8, !19, i64 616, i64 16, !19, i64 632, i64 4, !16, i64 636, i64 8, !19, i64 644, i64 8, !19, i64 652, i64 8, !19, i64 660, i64 16, !19, i64 680, i64 8, !20, i64 688, i64 8, !20, i64 696, i64 4, !16, i64 704, i64 8, !17, i64 712, i64 8, !17, i64 720, i64 8, !17, i64 728, i64 8, !17, i64 736, i64 8, !17, i64 744, i64 8, !17, i64 752, i64 8, !17, i64 760, i64 8, !17, i64 768, i64 8, !17, i64 776, i64 8, !17, i64 784, i64 8, !17, i64 792, i64 8, !17, i64 800, i64 8, !17, i64 808, i64 8, !17, i64 816, i64 8, !17, i64 824, i64 8, !17, i64 832, i64 8, !17, i64 840, i64 8, !17, i64 848, i64 8, !17, i64 856, i64 8, !17, i64 864, i64 8, !17, i64 872, i64 8, !17, i64 880, i64 8, !17, i64 888, i64 8, !17, i64 896, i64 8, !17, i64 904, i64 8, !17, i64 912, i64 8, !17, i64 920, i64 8, !17, i64 928, i64 8, !17, i64 936, i64 8, !17, i64 944, i64 8, !17, i64 952, i64 8, !17, i64 960, i64 8, !17, i64 968, i64 8, !17, i64 976, i64 8, !17, i64 984, i64 8, !17, i64 992, i64 8, !17, i64 1000, i64 8, !17, i64 1008, i64 8, !17, i64 1016, i64 8, !17, i64 1024, i64 8, !17, i64 1032, i64 4, !21, i64 1036, i64 4, !21, i64 1040, i64 4, !21, i64 1044, i64 4, !21, i64 1048, i64 4, !21, i64 1052, i64 4, !21, i64 1056, i64 4, !16, i64 1060, i64 4, !16, i64 1064, i64 8, !17, i64 1072, i64 8, !17, i64 1080, i64 8, !17, i64 1088, i64 8, !17, i64 1096, i64 4, !16, i64 1104, i64 8, !20, i64 1112, i64 4, !16, i64 1116, i64 4, !16, i64 1120, i64 4, !16, i64 1128, i64 4, !16, i64 1132, i64 4, !16, i64 1136, i64 4, !16, i64 1140, i64 4, !16, i64 1144, i64 4, !16, i64 1148, i64 4, !16, i64 1152, i64 4, !16, i64 1160, i64 8, !20, i64 1168, i64 4, !16, i64 1172, i64 4, !16, i64 1176, i64 296, !19, i64 1176, i64 296, !19}
!16 = !{!10, !10, i64 0}
!17 = !{!7, !7, i64 0}
!18 = !{!13, !13, i64 0}
!19 = !{!8, !8, i64 0}
!20 = !{!12, !12, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !8, i64 0}
!23 = !{!24, !10, i64 64}
!24 = !{!"gx_device_s", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !25, i64 48, !10, i64 64, !10, i64 68, !8, i64 72, !8, i64 80, !10, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !10, i64 160, !26, i64 168, !27, i64 192}
!25 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!26 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!27 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!28 = !{!29, !10, i64 64}
!29 = !{!"gx_device_tile_clip_s", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !25, i64 48, !10, i64 64, !10, i64 68, !8, i64 72, !8, i64 80, !10, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !10, i64 160, !26, i64 168, !27, i64 192, !7, i64 488, !6, i64 496, !30, i64 536, !11, i64 1168, !8, i64 1176}
!30 = !{!"gx_device_memory_s", !10, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !10, i64 40, !10, i64 44, !25, i64 48, !10, i64 64, !10, i64 68, !8, i64 72, !8, i64 80, !10, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !10, i64 160, !26, i64 168, !27, i64 192, !7, i64 488, !31, i64 496, !10, i64 520, !10, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !32, i64 552, !33, i64 568, !34, i64 592, !10, i64 600, !10, i64 604, !10, i64 608, !10, i64 612, !10, i64 616, !12, i64 624}
!31 = !{!"gs_matrix_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20}
!32 = !{!"gs_const_string_s", !7, i64 0, !10, i64 8}
!33 = !{!"_c24", !12, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!34 = !{!"gs_log2_scale_point_s", !10, i64 0, !10, i64 4}
!35 = !{!24, !10, i64 68}
!36 = !{!29, !10, i64 68}
!37 = !{i64 0, i64 4, !16, i64 4, i64 4, !16, i64 8, i64 2, !18, i64 10, i64 2, !18, i64 12, i64 2, !18, i64 14, i64 2, !18}
!38 = !{!29, !7, i64 488}
!39 = !{i64 0, i64 8, !17, i64 8, i64 4, !16, i64 12, i64 4, !16, i64 16, i64 4, !16, i64 24, i64 8, !20, i64 32, i64 2, !18, i64 34, i64 2, !18, i64 36, i64 2, !18, i64 38, i64 2, !18}
!40 = !{!29, !10, i64 1168}
!41 = !{!29, !10, i64 1172}
!42 = !{!6, !10, i64 16}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !{!29, !7, i64 1064}
!46 = !{!29, !10, i64 600}
!47 = !{!29, !10, i64 604}
!48 = !{!29, !7, i64 728}
!49 = !{!24, !7, i64 464}
!50 = distinct !{!50, !44}
!51 = !{!29, !13, i64 530}
!52 = !{!29, !13, i64 532}
!53 = !{!29, !10, i64 512}
!54 = distinct !{!54, !44}
!55 = !{!29, !13, i64 528}
!56 = !{!29, !10, i64 508}
!57 = !{!29, !7, i64 496}
!58 = !{!29, !10, i64 504}
!59 = !{!29, !7, i64 800}
!60 = !{!24, !7, i64 264}
!61 = distinct !{!61, !44}
!62 = distinct !{!62, !44}
!63 = !{!24, !7, i64 272}
!64 = distinct !{!64, !44}
!65 = distinct !{!65, !44}
!66 = distinct !{!66, !44}
!67 = distinct !{!67, !44}
!68 = !{!24, !7, i64 360}
!69 = distinct !{!69, !44}
!70 = distinct !{!70, !44}
!71 = distinct !{!71, !44}
!72 = distinct !{!72, !44}
!73 = !{!24, !7, i64 472}
!74 = distinct !{!74, !44}
!75 = distinct !{!75, !44}
