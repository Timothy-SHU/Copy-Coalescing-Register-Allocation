; ModuleID = 'gdevabuf.c'
source_filename = "gdevabuf.c"
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
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gs_int_point_s = type { i32, i32 }

@mem_alpha_buffer_device = internal constant %struct.gx_device_memory_s { i32 632, ptr null, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 1, i16 2, i16 2 }, i32 0, i32 0, [2 x float] zeroinitializer, [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @mem_open, ptr @mem_get_initial_matrix, ptr @gx_default_sync_output, ptr @gx_default_output_page, ptr @mem_close, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @mem_abuf_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @mem_abuf_copy_mono, ptr @gx_default_copy_color, ptr @gx_default_draw_line, ptr @mem_get_bits, ptr @gx_default_get_params, ptr @gx_default_put_params, ptr @gx_default_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_default_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_default_get_alpha_bits, ptr @gx_default_copy_alpha, ptr @gx_default_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @gx_default_strip_tile_rectangle, ptr @gx_no_strip_copy_rop, ptr @gx_default_get_clipping_box }, ptr null, %struct.gs_matrix_s { float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00 }, i32 0, i32 1, ptr null, ptr null, ptr null, %struct.gs_const_string_s zeroinitializer, %struct._c24 { i64 -1, i32 0, i32 0, i32 0 }, %struct.gs_log2_scale_point_s zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i64 -1 }, align 8
@.str = private unnamed_addr constant [20 x i8] c"image(alpha buffer)\00", align 1
@mem_mono_device = external local_unnamed_addr constant %struct.gx_device_memory_s, align 8

; Function Attrs: nounwind uwtable
define dso_local void @gs_make_mem_alpha_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @gdev_mem_device_for_bits(i32 noundef %3) #7
  tail call void @gs_make_mem_device(ptr noundef %0, ptr noundef %5, ptr noundef %1, i32 noundef 0, ptr noundef %2) #7
  %6 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7
  %7 = tail call ptr @gdev_mem_device_for_bits(i32 noundef 1) #7
  %8 = getelementptr inbounds %struct.gx_device_memory_s, ptr %7, i64 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !5
  %9 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 7, i32 1
  store i32 %3, ptr %9, align 4, !tbaa !12
  %10 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 5
  store ptr @mem_alpha_map_rgb_color, ptr %10, align 8, !tbaa !24
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 6
  store ptr @mem_alpha_map_color_rgb, ptr %11, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 18
  store ptr @mem_alpha_map_rgb_alpha_color, ptr %12, align 8, !tbaa !26
  %13 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 20
  store ptr @mem_alpha_get_alpha_bits, ptr %13, align 8, !tbaa !27
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 21
  store ptr @mem_alpha_copy_alpha, ptr %14, align 8, !tbaa !28
  ret void
}

declare void @gs_make_mem_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @gdev_mem_device_for_bits(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define internal i64 @mem_alpha_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #0 {
  %5 = tail call i64 @gx_forward_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #7
  %6 = add i64 %5, 1
  %7 = icmp ult i64 %6, 2
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 32
  %10 = load i32, ptr %9, align 8, !tbaa !29
  %11 = shl nsw i32 -1, %10
  %12 = xor i32 %11, -1
  %13 = zext nneg i32 %12 to i64
  br label %14

14:                                               ; preds = %4, %8
  %15 = phi i64 [ %13, %8 ], [ %5, %4 ]
  ret i64 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_alpha_map_color_rgb(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = icmp ne i64 %1, 0
  %5 = zext i1 %4 to i64
  %6 = tail call i32 @gx_forward_map_color_rgb(ptr noundef %0, i64 noundef %5, ptr noundef %2) #7
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal i64 @mem_alpha_map_rgb_alpha_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #0 {
  %6 = tail call i64 @gx_forward_map_rgb_color(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #7
  %7 = add i64 %6, 1
  %8 = icmp ult i64 %7, 2
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = zext i16 %4 to i32
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 32
  %12 = load i32, ptr %11, align 8, !tbaa !29
  %13 = sub i32 16, %12
  %14 = lshr i32 %10, %13
  %15 = zext nneg i32 %14 to i64
  br label %16

16:                                               ; preds = %5, %9
  %17 = phi i64 [ %15, %9 ], [ %6, %5 ]
  ret i64 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @mem_alpha_get_alpha_bits(ptr nocapture noundef readonly %0, i32 %1) #3 {
  %3 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 32
  %4 = load i32, ptr %3, align 8, !tbaa !29
  %5 = shl nuw i32 1, %4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_alpha_copy_alpha(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i32 %10) #0 {
  %12 = icmp eq i64 %9, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = tail call i32 %15(ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef 0) #7
  br label %21

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !32
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #7
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ %20, %17 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local void @gs_make_mem_abuf_device(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  tail call void @gs_make_mem_device(ptr noundef %0, ptr noundef nonnull @mem_alpha_buffer_device, ptr noundef %1, i32 noundef 0, ptr noundef %2) #7
  %7 = getelementptr inbounds %struct.gs_log2_scale_point_s, ptr %3, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !33
  %9 = shl nuw i32 1, %8
  %10 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 6
  store i32 %9, ptr %10, align 4, !tbaa !34
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 31
  %12 = load i64, ptr %3, align 4
  store i64 %12, ptr %11, align 8
  %13 = ashr i32 %4, 1
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 32
  store i32 %13, ptr %14, align 8, !tbaa !29
  %15 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 33
  store i32 %5, ptr %15, align 4, !tbaa !35
  %16 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 21, i32 4
  store ptr @mem_abuf_close, ptr %16, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_abuf_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 31, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !37
  %4 = shl nuw i32 1, %3
  %5 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %6 = load i32, ptr %5, align 4, !tbaa !38
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 34
  br label %14

10:                                               ; preds = %14
  %11 = add nsw i32 %15, %4
  %12 = load i32, ptr %5, align 4, !tbaa !38
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %20, !llvm.loop !39

14:                                               ; preds = %10, %8
  %15 = phi i32 [ 0, %8 ], [ %11, %10 ]
  %16 = load i32, ptr %9, align 8, !tbaa !41
  %17 = add nsw i32 %16, %15
  %18 = tail call fastcc i32 @abuf_flush_block(ptr noundef %0, i32 noundef %17)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %22, label %10

20:                                               ; preds = %10, %1
  %21 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %21, align 8, !tbaa !42
  store i32 0, ptr %5, align 4, !tbaa !38
  br label %22

22:                                               ; preds = %14, %20
  %23 = phi i32 [ 0, %20 ], [ %18, %14 ]
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = tail call i32 @mem_close(ptr noundef %0) #7
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ %26, %25 ], [ %23, %22 ]
  ret i32 %28
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @gs_device_is_abuf(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = icmp eq ptr %3, @.str
  %5 = zext i1 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i64 @gx_forward_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare i32 @gx_forward_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @gx_default_install(ptr noundef, ptr noundef) #1

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #1

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @mem_open(ptr noundef) #1

declare void @mem_get_initial_matrix(ptr noundef, ptr noundef) #1

declare i32 @gx_default_sync_output(ptr noundef) #1

declare i32 @gx_default_output_page(ptr noundef, i32 noundef, i32 noundef) #1

declare i32 @mem_close(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_abuf_fill_rectangle(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !35
  %9 = sub nsw i32 %1, %8
  %10 = or i32 %9, %2
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %6
  %13 = tail call i32 @llvm.smin.i32(i32 %9, i32 0)
  %14 = add nsw i32 %13, %3
  %15 = tail call i32 @llvm.smax.i32(i32 %9, i32 0)
  %16 = tail call i32 @llvm.smax.i32(i32 %2, i32 0)
  %17 = tail call i32 @llvm.smin.i32(i32 %2, i32 0)
  %18 = add nsw i32 %17, %4
  br label %19

19:                                               ; preds = %12, %6
  %20 = phi i32 [ %2, %6 ], [ %16, %12 ]
  %21 = phi i32 [ %3, %6 ], [ %14, %12 ]
  %22 = phi i32 [ %4, %6 ], [ %18, %12 ]
  %23 = phi i32 [ %9, %6 ], [ %15, %12 ]
  %24 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !44
  %26 = sub nsw i32 %25, %21
  %27 = icmp sgt i32 %23, %26
  %28 = sub nsw i32 %25, %23
  %29 = select i1 %27, i32 %28, i32 %21
  %30 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 37
  store i64 %5, ptr %30, align 8, !tbaa !45
  %31 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 31, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !37
  %33 = shl nuw i32 1, %32
  %34 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 34
  %35 = load i32, ptr %34, align 8, !tbaa !41
  %36 = icmp sgt i32 %35, %20
  br i1 %36, label %42, label %37

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %39 = load i32, ptr %38, align 4, !tbaa !38
  %40 = add nsw i32 %39, %35
  %41 = icmp slt i32 %40, %20
  br i1 %41, label %42, label %68

42:                                               ; preds = %37, %19
  %43 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %44 = load i32, ptr %43, align 4, !tbaa !38
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %50, label %56

46:                                               ; preds = %50
  %47 = add nsw i32 %51, %33
  %48 = load i32, ptr %43, align 4, !tbaa !38
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %56, !llvm.loop !39

50:                                               ; preds = %42, %46
  %51 = phi i32 [ %47, %46 ], [ 0, %42 ]
  %52 = load i32, ptr %34, align 8, !tbaa !41
  %53 = add nsw i32 %52, %51
  %54 = tail call fastcc i32 @abuf_flush_block(ptr noundef %0, i32 noundef %53)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %58, label %46

56:                                               ; preds = %46, %42
  %57 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %57, align 8, !tbaa !42
  store i32 0, ptr %43, align 4, !tbaa !38
  br label %58

58:                                               ; preds = %50, %56
  %59 = sub nsw i32 0, %33
  %60 = and i32 %20, %59
  store i32 %60, ptr %34, align 8, !tbaa !41
  store i32 %33, ptr %43, align 4, !tbaa !38
  %61 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %62 = load ptr, ptr %61, align 8, !tbaa !46
  %63 = load ptr, ptr %62, align 8, !tbaa !47
  %64 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %65 = load i32, ptr %64, align 8, !tbaa !48
  %66 = shl i32 %65, %32
  %67 = zext i32 %66 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %63, i8 0, i64 %67, i1 false)
  br label %68

68:                                               ; preds = %37, %58
  %69 = icmp sgt i32 %22, 0
  br i1 %69, label %70, label %136

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %72 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 36
  %73 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %74 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %75 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %76 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %77 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 7), align 8
  br label %78

78:                                               ; preds = %70, %128
  %79 = phi i32 [ %20, %70 ], [ %85, %128 ]
  %80 = phi i32 [ %22, %70 ], [ %133, %128 ]
  %81 = phi i32 [ 0, %70 ], [ %132, %128 ]
  %82 = load i32, ptr %34, align 8, !tbaa !41
  %83 = load i32, ptr %71, align 4, !tbaa !38
  %84 = load i32, ptr %72, align 8, !tbaa !42
  %85 = add nsw i32 %79, %81
  %86 = load i32, ptr %31, align 4, !tbaa !37
  %87 = shl nuw i32 1, %86
  %88 = add nsw i32 %83, %82
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %78
  %91 = load i32, ptr %73, align 4, !tbaa !49
  %92 = icmp eq i32 %83, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = tail call fastcc i32 @abuf_flush_block(ptr noundef %0, i32 noundef %82)
  %95 = add nsw i32 %87, %82
  store i32 %95, ptr %34, align 8, !tbaa !41
  %96 = add nsw i32 %87, %84
  %97 = icmp eq i32 %96, %83
  %98 = select i1 %97, i32 0, i32 %96
  store i32 %98, ptr %72, align 8
  br label %101

99:                                               ; preds = %90
  %100 = add nsw i32 %87, %83
  store i32 %100, ptr %71, align 4, !tbaa !38
  br label %101

101:                                              ; preds = %99, %93
  %102 = phi i32 [ %84, %99 ], [ %98, %93 ]
  %103 = phi i32 [ %100, %99 ], [ %83, %93 ]
  %104 = phi i32 [ %82, %99 ], [ %95, %93 ]
  %105 = load ptr, ptr %74, align 8, !tbaa !46
  %106 = icmp eq i32 %102, 0
  %107 = select i1 %106, i32 %103, i32 %102
  %108 = sub nsw i32 %107, %87
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds ptr, ptr %105, i64 %109
  %111 = load ptr, ptr %110, align 8, !tbaa !47
  %112 = load i32, ptr %75, align 8, !tbaa !48
  %113 = shl i32 %112, %86
  %114 = zext i32 %113 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %111, i8 0, i64 %114, i1 false)
  br label %115

115:                                              ; preds = %101, %78
  %116 = phi i32 [ %102, %101 ], [ %84, %78 ]
  %117 = phi i32 [ %103, %101 ], [ %83, %78 ]
  %118 = phi i32 [ %104, %101 ], [ %82, %78 ]
  %119 = sub nsw i32 %85, %118
  %120 = add nsw i32 %119, %116
  %121 = load i32, ptr %76, align 4, !tbaa !6
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115
  %124 = sub nsw i32 %121, %116
  %125 = tail call i32 @llvm.smin.i32(i32 %124, i32 %117)
  br label %128

126:                                              ; preds = %115
  %127 = sub nsw i32 %120, %121
  br label %128

128:                                              ; preds = %123, %126
  %129 = phi i32 [ %120, %123 ], [ %127, %126 ]
  %130 = phi i32 [ %125, %123 ], [ %117, %126 ]
  %131 = sub i32 %130, %119
  %132 = tail call i32 @llvm.smin.i32(i32 %131, i32 %80)
  %133 = sub nsw i32 %80, %132
  %134 = tail call i32 %77(ptr noundef %0, i32 noundef %23, i32 noundef %129, i32 noundef %29, i32 noundef %132, i64 noundef 1) #7
  %135 = icmp sgt i32 %133, 0
  br i1 %135, label %78, label %136, !llvm.loop !50

136:                                              ; preds = %128, %68
  ret i32 0
}

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @mem_abuf_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #0 {
  %12 = icmp ne i64 %9, -1
  %13 = icmp eq i64 %10, -1
  %14 = or i1 %12, %13
  br i1 %14, label %161, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 33
  %17 = load i32, ptr %16, align 4, !tbaa !35
  %18 = sub nsw i32 %5, %17
  %19 = or i32 %18, %6
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = tail call i32 @llvm.smin.i32(i32 %18, i32 0)
  %23 = sub nsw i32 %2, %22
  %24 = tail call i32 @llvm.smax.i32(i32 %18, i32 0)
  %25 = tail call i32 @llvm.smin.i32(i32 %18, i32 0)
  %26 = add nsw i32 %25, %7
  %27 = icmp slt i32 %6, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = add nsw i32 %8, %6
  %30 = mul nsw i32 %6, %3
  %31 = sext i32 %30 to i64
  %32 = sub nsw i64 0, %31
  %33 = getelementptr inbounds i8, ptr %1, i64 %32
  br label %34

34:                                               ; preds = %21, %28, %15
  %35 = phi i32 [ %23, %28 ], [ %23, %21 ], [ %2, %15 ]
  %36 = phi i32 [ %24, %28 ], [ %24, %21 ], [ %18, %15 ]
  %37 = phi i32 [ 0, %28 ], [ %6, %21 ], [ %6, %15 ]
  %38 = phi i32 [ %26, %28 ], [ %26, %21 ], [ %7, %15 ]
  %39 = phi i32 [ %29, %28 ], [ %8, %21 ], [ %8, %15 ]
  %40 = phi ptr [ %33, %28 ], [ %1, %21 ], [ %1, %15 ]
  %41 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !44
  %43 = sub nsw i32 %42, %38
  %44 = icmp sgt i32 %36, %43
  %45 = sub nsw i32 %42, %36
  %46 = select i1 %44, i32 %45, i32 %38
  %47 = icmp slt i32 %46, 1
  %48 = icmp slt i32 %39, 1
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %161, label %50

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 37
  store i64 %10, ptr %51, align 8, !tbaa !45
  %52 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 31, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !37
  %54 = shl nuw i32 1, %53
  %55 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 34
  %56 = load i32, ptr %55, align 8, !tbaa !41
  %57 = icmp sgt i32 %56, %37
  br i1 %57, label %63, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = add nsw i32 %60, %56
  %62 = icmp slt i32 %61, %37
  br i1 %62, label %63, label %89

63:                                               ; preds = %58, %50
  %64 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %65 = load i32, ptr %64, align 4, !tbaa !38
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %71, label %77

67:                                               ; preds = %71
  %68 = add nsw i32 %72, %54
  %69 = load i32, ptr %64, align 4, !tbaa !38
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %77, !llvm.loop !39

71:                                               ; preds = %63, %67
  %72 = phi i32 [ %68, %67 ], [ 0, %63 ]
  %73 = load i32, ptr %55, align 8, !tbaa !41
  %74 = add nsw i32 %73, %72
  %75 = tail call fastcc i32 @abuf_flush_block(ptr noundef %0, i32 noundef %74)
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %79, label %67

77:                                               ; preds = %67, %63
  %78 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %78, align 8, !tbaa !42
  store i32 0, ptr %64, align 4, !tbaa !38
  br label %79

79:                                               ; preds = %71, %77
  %80 = sub nsw i32 0, %54
  %81 = and i32 %37, %80
  store i32 %81, ptr %55, align 8, !tbaa !41
  store i32 %54, ptr %64, align 4, !tbaa !38
  %82 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %83 = load ptr, ptr %82, align 8, !tbaa !46
  %84 = load ptr, ptr %83, align 8, !tbaa !47
  %85 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %86 = load i32, ptr %85, align 8, !tbaa !48
  %87 = shl i32 %86, %53
  %88 = zext i32 %87 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %84, i8 0, i64 %88, i1 false)
  br label %89

89:                                               ; preds = %58, %79
  %90 = icmp sgt i32 %39, 0
  br i1 %90, label %91, label %161

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 35
  %93 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 36
  %94 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %95 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %96 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %97 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %98 = load ptr, ptr getelementptr inbounds (%struct.gx_device_memory_s, ptr @mem_mono_device, i64 0, i32 21, i32 9), align 8
  br label %99

99:                                               ; preds = %91, %149
  %100 = phi i32 [ %37, %91 ], [ %106, %149 ]
  %101 = phi i32 [ %39, %91 ], [ %154, %149 ]
  %102 = phi i32 [ 0, %91 ], [ %153, %149 ]
  %103 = load i32, ptr %55, align 8, !tbaa !41
  %104 = load i32, ptr %92, align 4, !tbaa !38
  %105 = load i32, ptr %93, align 8, !tbaa !42
  %106 = add nsw i32 %100, %102
  %107 = load i32, ptr %52, align 4, !tbaa !37
  %108 = shl nuw i32 1, %107
  %109 = add nsw i32 %104, %103
  %110 = icmp eq i32 %106, %109
  br i1 %110, label %111, label %136

111:                                              ; preds = %99
  %112 = load i32, ptr %94, align 4, !tbaa !49
  %113 = icmp eq i32 %104, %112
  br i1 %113, label %114, label %120

114:                                              ; preds = %111
  %115 = tail call fastcc i32 @abuf_flush_block(ptr noundef %0, i32 noundef %103)
  %116 = add nsw i32 %108, %103
  store i32 %116, ptr %55, align 8, !tbaa !41
  %117 = add nsw i32 %108, %105
  %118 = icmp eq i32 %117, %104
  %119 = select i1 %118, i32 0, i32 %117
  store i32 %119, ptr %93, align 8
  br label %122

120:                                              ; preds = %111
  %121 = add nsw i32 %108, %104
  store i32 %121, ptr %92, align 4, !tbaa !38
  br label %122

122:                                              ; preds = %120, %114
  %123 = phi i32 [ %105, %120 ], [ %119, %114 ]
  %124 = phi i32 [ %121, %120 ], [ %104, %114 ]
  %125 = phi i32 [ %103, %120 ], [ %116, %114 ]
  %126 = load ptr, ptr %95, align 8, !tbaa !46
  %127 = icmp eq i32 %123, 0
  %128 = select i1 %127, i32 %124, i32 %123
  %129 = sub nsw i32 %128, %108
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds ptr, ptr %126, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !47
  %133 = load i32, ptr %96, align 8, !tbaa !48
  %134 = shl i32 %133, %107
  %135 = zext i32 %134 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %132, i8 0, i64 %135, i1 false)
  br label %136

136:                                              ; preds = %122, %99
  %137 = phi i32 [ %123, %122 ], [ %105, %99 ]
  %138 = phi i32 [ %124, %122 ], [ %104, %99 ]
  %139 = phi i32 [ %125, %122 ], [ %103, %99 ]
  %140 = sub nsw i32 %106, %139
  %141 = add nsw i32 %140, %137
  %142 = load i32, ptr %97, align 4, !tbaa !6
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = sub nsw i32 %142, %137
  %146 = tail call i32 @llvm.smin.i32(i32 %145, i32 %138)
  br label %149

147:                                              ; preds = %136
  %148 = sub nsw i32 %141, %142
  br label %149

149:                                              ; preds = %144, %147
  %150 = phi i32 [ %141, %144 ], [ %148, %147 ]
  %151 = phi i32 [ %146, %144 ], [ %138, %147 ]
  %152 = sub i32 %151, %140
  %153 = tail call i32 @llvm.smin.i32(i32 %152, i32 %101)
  %154 = sub nsw i32 %101, %153
  %155 = sub nsw i32 %106, %37
  %156 = mul nsw i32 %155, %3
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %40, i64 %157
  %159 = tail call i32 %98(ptr noundef %0, ptr noundef %158, i32 noundef %35, i32 noundef %3, i64 noundef 0, i32 noundef %36, i32 noundef %150, i32 noundef %46, i32 noundef %153, i64 noundef -1, i64 noundef 1) #7
  %160 = icmp sgt i32 %154, 0
  br i1 %160, label %99, label %161, !llvm.loop !51

161:                                              ; preds = %149, %89, %34, %11
  %162 = phi i32 [ -23, %11 ], [ 0, %34 ], [ 0, %89 ], [ 0, %149 ]
  ret i32 %162
}

declare i32 @gx_default_copy_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

declare i32 @mem_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_default_get_params(ptr noundef, ptr noundef) #1

declare i32 @gx_default_put_params(ptr noundef, ptr noundef) #1

declare i64 @gx_default_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #1

declare ptr @gx_forward_get_xfont_device(ptr noundef) #1

declare i64 @gx_default_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare ptr @gx_forward_get_page_device(ptr noundef) #1

declare i32 @gx_default_get_alpha_bits(ptr noundef, i32 noundef) #1

declare i32 @gx_default_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #1

declare i32 @gx_default_get_band(ptr noundef, i32 noundef, ptr noundef) #1

declare i32 @gx_default_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_default_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_default_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

declare i32 @gx_default_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_default_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_default_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_default_draw_thin_line(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @gx_default_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_no_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @gx_default_get_clipping_box(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal fastcc i32 @abuf_flush_block(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gs_int_rect_s, align 4
  %4 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 22
  %5 = load ptr, ptr %4, align 8, !tbaa !52
  %6 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 31
  %7 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 31, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !37
  %9 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 32
  %10 = load i32, ptr %9, align 8, !tbaa !29
  %11 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !53
  %13 = load i32, ptr %6, align 8, !tbaa !54
  %14 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 34
  %15 = load i32, ptr %14, align 8, !tbaa !41
  %16 = sub nsw i32 %1, %15
  %17 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 36
  %18 = load i32, ptr %17, align 8, !tbaa !42
  %19 = add nsw i32 %16, %18
  %20 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 9
  %21 = load i32, ptr %20, align 4, !tbaa !49
  %22 = icmp slt i32 %19, %21
  %23 = select i1 %22, i32 0, i32 %21
  %24 = sub nsw i32 %19, %23
  %25 = ashr i32 %12, %13
  %26 = shl i32 %25, %10
  %27 = add nsw i32 %26, 63
  %28 = ashr i32 %27, 3
  %29 = and i32 %28, -8
  %30 = shl nuw i32 1, %10
  %31 = shl nuw i32 1, %8
  %32 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 27
  %33 = load ptr, ptr %32, align 8, !tbaa !46
  %34 = sext i32 %24 to i64
  %35 = getelementptr inbounds ptr, ptr %33, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #7
  %37 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 24
  %38 = load i32, ptr %37, align 8, !tbaa !48
  call void @bits_bounding_box(ptr noundef %36, i32 noundef %31, i32 noundef %38, ptr noundef nonnull %3) #7
  %39 = load i32, ptr %3, align 4, !tbaa !55
  %40 = and i32 %39, -8
  store i32 %40, ptr %3, align 4, !tbaa !55
  %41 = getelementptr inbounds %struct.gs_int_rect_s, ptr %3, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !58
  %43 = add nsw i32 %42, 7
  %44 = and i32 %43, -8
  store i32 %44, ptr %41, align 4, !tbaa !58
  %45 = sub nsw i32 %44, %40
  %46 = load i32, ptr %37, align 8, !tbaa !48
  %47 = load i32, ptr %9, align 8, !tbaa !29
  call void @bits_compress_scaled(ptr noundef %36, i32 noundef %40, i32 noundef %45, i32 noundef %31, i32 noundef %46, ptr noundef %36, i32 noundef %29, ptr noundef nonnull %6, i32 noundef %47) #7
  %48 = getelementptr inbounds %struct.gx_device_s, ptr %5, i64 0, i32 21, i32 21
  %49 = load ptr, ptr %48, align 8, !tbaa !59
  %50 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 33
  %51 = load i32, ptr %50, align 4, !tbaa !35
  %52 = load i32, ptr %3, align 4, !tbaa !55
  %53 = add nsw i32 %52, %51
  %54 = load i32, ptr %6, align 8, !tbaa !54
  %55 = ashr i32 %53, %54
  %56 = load i32, ptr %7, align 4, !tbaa !37
  %57 = ashr i32 %1, %56
  %58 = ashr i32 %45, %54
  %59 = getelementptr inbounds %struct.gx_device_memory_s, ptr %0, i64 0, i32 37
  %60 = load i64, ptr %59, align 8, !tbaa !45
  %61 = call i32 %49(ptr noundef %5, ptr noundef %36, i32 noundef 0, i32 noundef %29, i64 noundef 0, i32 noundef %55, i32 noundef %57, i32 noundef %58, i32 noundef 1, i64 noundef %60, i32 noundef %30) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #7
  ret i32 %61
}

declare void @bits_bounding_box(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @bits_compress_scaled(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{i64 0, i64 4, !6, i64 4, i64 4, !6, i64 8, i64 2, !10, i64 10, i64 2, !10, i64 12, i64 2, !10, i64 14, i64 2, !10}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"short", !8, i64 0}
!12 = !{!13, !7, i64 52}
!13 = !{!"gx_device_memory_s", !7, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !15, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192, !14, i64 488, !19, i64 496, !7, i64 520, !7, i64 524, !14, i64 528, !14, i64 536, !14, i64 544, !21, i64 552, !22, i64 568, !23, i64 592, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !16, i64 624}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !11, i64 8, !11, i64 10, !11, i64 12, !11, i64 14}
!16 = !{!"long", !8, i64 0}
!17 = !{!"gx_page_device_procs_s", !14, i64 0, !14, i64 8, !14, i64 16}
!18 = !{!"gx_device_procs_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !14, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !14, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288}
!19 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gs_const_string_s", !14, i64 0, !7, i64 8}
!22 = !{!"_c24", !16, i64 0, !7, i64 8, !7, i64 12, !7, i64 16}
!23 = !{!"gs_log2_scale_point_s", !7, i64 0, !7, i64 4}
!24 = !{!13, !14, i64 232}
!25 = !{!13, !14, i64 240}
!26 = !{!13, !14, i64 336}
!27 = !{!13, !14, i64 352}
!28 = !{!13, !14, i64 360}
!29 = !{!13, !7, i64 600}
!30 = !{!31, !14, i64 248}
!31 = !{!"gx_device_s", !7, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !7, i64 40, !7, i64 44, !15, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192}
!32 = !{!31, !14, i64 272}
!33 = !{!23, !7, i64 4}
!34 = !{!13, !7, i64 44}
!35 = !{!13, !7, i64 604}
!36 = !{!13, !14, i64 224}
!37 = !{!13, !7, i64 596}
!38 = !{!13, !7, i64 612}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!13, !7, i64 608}
!42 = !{!13, !7, i64 616}
!43 = !{!31, !14, i64 16}
!44 = !{!31, !7, i64 64}
!45 = !{!13, !16, i64 624}
!46 = !{!13, !14, i64 536}
!47 = !{!14, !14, i64 0}
!48 = !{!13, !7, i64 520}
!49 = !{!13, !7, i64 68}
!50 = distinct !{!50, !40}
!51 = distinct !{!51, !40}
!52 = !{!13, !14, i64 488}
!53 = !{!13, !7, i64 64}
!54 = !{!13, !7, i64 592}
!55 = !{!56, !7, i64 0}
!56 = !{!"gs_int_rect_s", !57, i64 0, !57, i64 8}
!57 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!58 = !{!56, !7, i64 8}
!59 = !{!31, !14, i64 360}
