; ModuleID = 'gdevmpla.c'
source_filename = "gdevmpla.c"
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
%union._b = type { [4 x i64] }

@.str = private unnamed_addr constant [14 x i8] c"image(planar)\00", align 1
@mem_planar_device = dso_local local_unnamed_addr constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 1, i16 2, i16 2 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_planar_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @mem_planar_map_rgb_color, ptr @mem_planar_map_color_rgb, ptr @mem_planar_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_planar_copy_mono, ptr @mem_planar_copy_color, ptr @gx_default_draw_line, ptr @mem_planar_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@mem_mono_device = external local_unnamed_addr constant %struct.gx_device_memory_s, align 8

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_open(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !16
  %6 = mul nsw i32 %5, %3
  store i32 %6, ptr %4, align 4, !tbaa !16
  store i32 1, ptr %2, align 4, !tbaa !5
  %7 = tail call i32 @mem_open(ptr noundef %0) #4
  store i32 %5, ptr %4, align 4, !tbaa !16
  store i32 %3, ptr %2, align 4, !tbaa !5
  ret i32 %7
}

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #0

declare i32 @gx_default_sync_output(ptr noundef) #0

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #0

declare i32 @mem_close(ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i64 @mem_planar_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #1 {
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %6) #4
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %7, i64 0, i32 21, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = tail call i64 %9(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #4
  ret i64 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_planar_map_color_rgb(ptr noundef %0, i64 noundef %1, ptr noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %5) #4
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %6, i64 0, i32 21, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !24
  %9 = tail call i32 %8(ptr noundef %0, i64 noundef %1, ptr noundef %2) #4
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_planar_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !5
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 7), align 8, !tbaa !26
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i64 [ 0, %12 ], [ %20, %15 ]
  %17 = lshr i64 %5, %16
  %18 = and i64 %17, 1
  %19 = tail call i32 %13(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %18) #4
  %20 = add nuw nsw i64 %16, 1
  %21 = load i32, ptr %14, align 4, !tbaa !16
  %22 = load ptr, ptr %7, align 8, !tbaa !25
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  store ptr %24, ptr %7, align 8, !tbaa !25
  %25 = load i32, ptr %9, align 4, !tbaa !5
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %20, %26
  br i1 %27, label %15, label %28, !llvm.loop !27

28:                                               ; preds = %15, %6
  store ptr %8, ptr %7, align 8, !tbaa !25
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_planar_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !5
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %11
  %18 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 9), align 8, !tbaa !29
  %19 = icmp eq i64 %9, -1
  %20 = icmp eq i64 %10, -1
  %21 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  br label %22

22:                                               ; preds = %17, %22
  %23 = phi i64 [ 0, %17 ], [ %31, %22 ]
  %24 = lshr i64 %9, %23
  %25 = and i64 %24, 1
  %26 = select i1 %19, i64 -1, i64 %25
  %27 = lshr i64 %10, %23
  %28 = and i64 %27, 1
  %29 = select i1 %20, i64 -1, i64 %28
  %30 = tail call i32 %18(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %26, i64 noundef %29) #4
  %31 = add nuw nsw i64 %23, 1
  %32 = load i32, ptr %21, align 4, !tbaa !16
  %33 = load ptr, ptr %12, align 8, !tbaa !25
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  store ptr %35, ptr %12, align 8, !tbaa !25
  %36 = load i32, ptr %14, align 4, !tbaa !5
  %37 = sext i32 %36 to i64
  %38 = icmp slt i64 %31, %37
  br i1 %38, label %22, label %39, !llvm.loop !30

39:                                               ; preds = %22, %11
  store ptr %13, ptr %12, align 8, !tbaa !25
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_planar_copy_color(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  %10 = alloca %union._b, align 8
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #4
  %15 = icmp sgt i32 %7, 32
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = add i32 %2, -32
  %18 = add i32 %5, -32
  br label %30

19:                                               ; preds = %30, %9
  %20 = icmp sgt i32 %8, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %19
  %22 = icmp sgt i32 %14, 0
  %23 = add i32 %2, 1
  %24 = mul i32 %14, %23
  %25 = icmp sgt i32 %7, 0
  %26 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 9), align 8
  %27 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %28 = sext i32 %3 to i64
  %29 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  br label %37

30:                                               ; preds = %16, %30
  %31 = phi i32 [ %7, %16 ], [ %35, %30 ]
  %32 = add i32 %17, %31
  %33 = add i32 %18, %31
  %34 = tail call i32 @mem_planar_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %32, i32 noundef %3, i64 poison, i32 noundef %33, i32 noundef %6, i32 noundef 32, i32 noundef %8)
  %35 = add nsw i32 %31, -32
  %36 = icmp sgt i32 %31, 64
  br i1 %36, label %30, label %19, !llvm.loop !31

37:                                               ; preds = %21, %79
  %38 = phi i32 [ %6, %21 ], [ %81, %79 ]
  %39 = phi ptr [ %1, %21 ], [ %80, %79 ]
  %40 = phi i32 [ %8, %21 ], [ %82, %79 ]
  br i1 %22, label %41, label %79

41:                                               ; preds = %37, %71
  %42 = phi i32 [ %73, %71 ], [ 0, %37 ]
  store i32 0, ptr %10, align 8
  br i1 %25, label %43, label %71

43:                                               ; preds = %41
  %44 = xor i32 %42, -1
  %45 = add i32 %24, %44
  br label %46

46:                                               ; preds = %43, %67
  %47 = phi i32 [ %69, %67 ], [ %45, %43 ]
  %48 = phi i32 [ %68, %67 ], [ 0, %43 ]
  %49 = ashr i32 %47, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, ptr %39, i64 %50
  %52 = load i8, ptr %51, align 1, !tbaa !32
  %53 = zext i8 %52 to i32
  %54 = and i32 %47, 7
  %55 = lshr exact i32 128, %54
  %56 = and i32 %55, %53
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %46
  %59 = and i32 %48, 7
  %60 = lshr exact i32 128, %59
  %61 = lshr i32 %48, 3
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds [4 x i8], ptr %10, i64 0, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !32
  %65 = trunc i32 %60 to i8
  %66 = or i8 %64, %65
  store i8 %66, ptr %63, align 1, !tbaa !32
  br label %67

67:                                               ; preds = %46, %58
  %68 = add nuw nsw i32 %48, 1
  %69 = add nsw i32 %47, %14
  %70 = icmp eq i32 %68, %7
  br i1 %70, label %71, label %46, !llvm.loop !33

71:                                               ; preds = %67, %41
  %72 = call i32 %26(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0, i32 noundef 32, i64 noundef 0, i32 noundef %5, i32 noundef %38, i32 noundef %7, i32 noundef 1, i64 noundef 0, i64 noundef 1) #4
  %73 = add nuw nsw i32 %42, 1
  %74 = load i32, ptr %27, align 4, !tbaa !16
  %75 = load ptr, ptr %11, align 8, !tbaa !25
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds ptr, ptr %75, i64 %76
  store ptr %77, ptr %11, align 8, !tbaa !25
  %78 = icmp eq i32 %73, %14
  br i1 %78, label %79, label %41, !llvm.loop !34

79:                                               ; preds = %71, %37
  store ptr %12, ptr %11, align 8, !tbaa !25
  %80 = getelementptr inbounds i8, ptr %39, i64 %28
  %81 = add nsw i32 %38, 1
  %82 = add nsw i32 %40, -1
  %83 = load i32, ptr %29, align 4, !tbaa !16
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds ptr, ptr %12, i64 %84
  store ptr %85, ptr %11, align 8, !tbaa !25
  %86 = icmp sgt i32 %40, 1
  br i1 %86, label %37, label %87, !llvm.loop !35

87:                                               ; preds = %79, %19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #4
  ret i32 0
}

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @mem_planar_get_bits(ptr nocapture readnone %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3) #2 {
  ret i32 -1
}

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

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #0

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @mem_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

declare ptr @gdev_mem_device_for_bits(i32 noundef) local_unnamed_addr #0

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 52}
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
!17 = !{!18, !10, i64 232}
!18 = !{!"gx_device_memory_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !19, i64 496, !7, i64 520, !7, i64 524, !10, i64 528, !10, i64 536, !10, i64 544, !21, i64 552, !22, i64 568, !23, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !13, i64 624}
!19 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gs_const_string_s", !10, i64 0, !7, i64 8}
!22 = !{!"_c24", !13, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!23 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!24 = !{!18, !10, i64 240}
!25 = !{!18, !10, i64 536}
!26 = !{!18, !10, i64 248}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.unroll.disable"}
!29 = !{!18, !10, i64 264}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !28}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
