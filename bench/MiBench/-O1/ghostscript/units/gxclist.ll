; ModuleID = 'gxclist.c'
source_filename = "gxclist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.clist_select_color_t = type { i8, i8, i32 }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clist_state_s = type { [2 x i64], i32, i64, %struct.gs_int_point_s, [2 x i64], %struct.gx_cmd_rect, i32, i16, i16, i16, i16, %struct.cmd_list_s, i64 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { ptr, ptr }
%struct.gx_device_clist_writer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.cmd_list_s, i32, i32, i32, i32, %struct.gx_strip_bitmap_s, i32, i32, i32, %struct.gs_imager_state_s, [11 x float], ptr, i64, i8, %struct.gs_indexed_params_s, [4 x i64], i64, i64, i64, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.0, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.cmd_block_s = type { i32, i32, i64 }
%struct.cmd_prefix_s = type { ptr, i32 }

@gs_clist_device_procs = dso_local local_unnamed_addr global %struct.gx_device_procs_s { ptr @clist_open, ptr @gx_forward_get_initial_matrix, ptr @gx_default_sync_output, ptr @clist_output_page, ptr @clist_close, ptr @gx_forward_map_rgb_color, ptr @gx_forward_map_color_rgb, ptr @clist_fill_rectangle, ptr @gx_default_tile_rectangle, ptr @clist_copy_mono, ptr @clist_copy_color, ptr @gx_default_draw_line, ptr @clist_get_bits, ptr @gx_forward_get_params, ptr @gx_forward_put_params, ptr @gx_forward_map_cmyk_color, ptr @gx_forward_get_xfont_procs, ptr @gx_forward_get_xfont_device, ptr @gx_forward_map_rgb_alpha_color, ptr @gx_forward_get_page_device, ptr @gx_forward_get_alpha_bits, ptr @clist_copy_alpha, ptr @clist_get_band, ptr @gx_default_copy_rop, ptr @gx_default_fill_path, ptr @gx_default_stroke_path, ptr @gx_default_fill_mask, ptr @gx_default_fill_trapezoid, ptr @gx_default_fill_parallelogram, ptr @gx_default_fill_triangle, ptr @gx_default_draw_thin_line, ptr @gx_default_begin_image, ptr @gx_default_image_data, ptr @gx_default_end_image, ptr @clist_strip_tile_rectangle, ptr @clist_strip_copy_rop, ptr @gx_forward_get_clipping_box }, align 8
@cmd_opvar_disable_clip = dso_local local_unnamed_addr global i8 -1, align 1
@cmd_opvar_enable_clip = dso_local local_unnamed_addr global i8 -1, align 1
@clist_imager_state_initial = dso_local local_unnamed_addr constant %struct.gs_imager_state_s { ptr null, %struct.gx_line_params_s { float 0.000000e+00, i32 0, i32 0, float 1.000000e+01, float 0x3FC9FDD380000000, float 0.000000e+00, float 0.000000e+00, %struct.gx_dash_params_s { ptr null, i32 0, float 0.000000e+00, i32 0, float 0.000000e+00, i32 1, i32 0, float 0.000000e+00 } }, %struct.gs_matrix_fixed_s { float 0x4010AAAAA0000000, float 0.000000e+00, float 0.000000e+00, float 0xC010AAAAA0000000, float 0.000000e+00, float 0.000000e+00, i64 0, i64 0, i32 0 }, i32 252, i16 -1, i32 0, float 1.000000e+00, %struct.gs_fixed_point_s { i64 2048, i64 2048 }, i32 0, i32 0, ptr null, [2 x %struct.gs_int_point_s] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, %union.gx_transfer_s zeroinitializer, %union.gx_transfer_s zeroinitializer, ptr null, ptr null, ptr null }, align 8
@clist_select_color0 = dso_local local_unnamed_addr constant %struct.clist_select_color_t { i8 16, i8 12, i32 0 }, align 4
@clist_select_color1 = dso_local local_unnamed_addr constant %struct.clist_select_color_t { i8 32, i8 13, i32 0 }, align 4
@clist_select_tile_color0 = dso_local constant %struct.clist_select_color_t { i8 16, i8 12, i32 1 }, align 4
@clist_select_tile_color1 = dso_local constant %struct.clist_select_color_t { i8 32, i8 13, i32 1 }, align 4
@.str = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@gp_fmode_binary_suffix = external constant [0 x i8], align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@clist_init.cls_initial = internal unnamed_addr constant %struct.gx_clist_state_s { [2 x i64] [i64 -1, i64 -1], i32 0, i64 0, %struct.gs_int_point_s zeroinitializer, [2 x i64] [i64 -1, i64 -1], %struct.gx_cmd_rect zeroinitializer, i32 252, i16 0, i16 0, i16 0, i16 32767, %struct.cmd_list_s zeroinitializer, i64 0 }, align 8

; Function Attrs: nounwind uwtable
define internal i32 @clist_open(ptr noundef %0) #0 {
  %2 = alloca [4 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %3 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 1
  store ptr null, ptr %3, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 3
  store ptr null, ptr %4, align 8, !tbaa !5
  %5 = tail call fastcc i32 @clist_init(ptr noundef %0)
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %28, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false) #11
  %9 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @gp_fmode_binary_suffix) #11
  store i8 0, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 2
  store i8 0, ptr %10, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 5
  store i64 0, ptr %11, align 8, !tbaa !5
  %12 = call i32 @clist_fopen(ptr noundef nonnull %8, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull @gs_memory_default, i32 noundef 1) #11
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = call i32 @clist_fopen(ptr noundef nonnull %10, ptr noundef nonnull %2, ptr noundef nonnull %4, ptr noundef nonnull @gs_memory_default, i32 noundef 1) #11
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %14, %7
  %18 = phi i32 [ %12, %7 ], [ %15, %14 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 @clist_fclose(ptr noundef nonnull %19, ptr noundef nonnull %8, i32 noundef 1) #11
  store ptr null, ptr %3, align 8, !tbaa !5
  br label %23

23:                                               ; preds = %21, %17
  %24 = load ptr, ptr %4, align 8, !tbaa !5
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = call i32 @clist_fclose(ptr noundef nonnull %24, ptr noundef nonnull %10, i32 noundef 1) #11
  store ptr null, ptr %4, align 8, !tbaa !5
  br label %28

28:                                               ; preds = %26, %23, %14, %1
  %29 = phi i32 [ %5, %1 ], [ %15, %14 ], [ %18, %23 ], [ %18, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %29
}

declare void @gx_forward_get_initial_matrix(ptr noundef, ptr noundef) #1

declare i32 @gx_default_sync_output(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @clist_output_page(ptr nocapture readnone %0, i32 %1, i32 %2) #2 {
  ret i32 -100
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @clist_close(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34
  %7 = tail call i32 @clist_fclose(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef 1) #11
  store ptr null, ptr %2, align 8, !tbaa !5
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 2
  %14 = tail call i32 @clist_fclose(ptr noundef nonnull %10, ptr noundef nonnull %13, i32 noundef 1) #11
  store ptr null, ptr %9, align 8, !tbaa !5
  br label %15

15:                                               ; preds = %12, %8
  ret i32 0
}

declare i64 @gx_forward_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare i32 @gx_forward_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @clist_fill_rectangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

declare i32 @gx_default_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @clist_copy_mono(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef) #1

declare i32 @clist_copy_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @gx_default_draw_line(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

declare i32 @clist_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @gx_forward_get_params(ptr noundef, ptr noundef) #1

declare i32 @gx_forward_put_params(ptr noundef, ptr noundef) #1

declare i64 @gx_forward_map_cmyk_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare ptr @gx_forward_get_xfont_procs(ptr noundef) #1

declare ptr @gx_forward_get_xfont_device(ptr noundef) #1

declare i64 @gx_forward_map_rgb_alpha_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare ptr @gx_forward_get_page_device(ptr noundef) #1

declare i32 @gx_forward_get_alpha_bits(ptr noundef, i32 noundef) #1

declare i32 @clist_copy_alpha(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i32 @clist_get_band(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !5
  %6 = icmp slt i32 %1, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %9 = load i32, ptr %8, align 4, !tbaa !8
  %10 = tail call i32 @llvm.smin.i32(i32 %9, i32 %1)
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %3 ], [ %10, %7 ]
  %13 = srem i32 %12, %5
  %14 = sub nsw i32 %12, %13
  store i32 %14, ptr %2, align 4, !tbaa !17
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 4, !tbaa !8
  %17 = sub nsw i32 %16, %14
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %5)
  ret i32 %18
}

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

declare i32 @clist_strip_tile_rectangle(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i32 noundef) #1

declare i32 @clist_strip_copy_rop(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

declare void @gx_forward_get_clipping_box(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @clist_finish_page(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34
  %5 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 3
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 2
  br i1 %3, label %12, label %9

9:                                                ; preds = %2
  tail call void @clist_rewind(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %4) #11
  %10 = load ptr, ptr %7, align 8, !tbaa !5
  tail call void @clist_rewind(ptr noundef %10, i32 noundef 1, ptr noundef nonnull %8) #11
  %11 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 5
  store i64 0, ptr %11, align 8, !tbaa !5
  br label %16

12:                                               ; preds = %2
  %13 = tail call i32 @clist_fseek(ptr noundef %6, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %4) #11
  %14 = load ptr, ptr %7, align 8, !tbaa !5
  %15 = tail call i32 @clist_fseek(ptr noundef %14, i64 noundef 0, i32 noundef 2, ptr noundef nonnull %8) #11
  br label %16

16:                                               ; preds = %12, %9
  %17 = tail call fastcc i32 @clist_init(ptr noundef %0)
  ret i32 %17
}

declare void @clist_rewind(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @clist_fseek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @clist_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 25
  %5 = load i32, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 22
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !5
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !18
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ %9, %1 ]
  %16 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6
  store i32 %15, ptr %16, align 8, !tbaa !5
  %17 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 26, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !5
  %19 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 26, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !5
  %21 = icmp eq i64 %20, 0
  %22 = zext i32 %5 to i64
  %23 = select i1 %21, i64 %22, i64 %20
  %24 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 2
  store i64 %23, ptr %24, align 8, !tbaa !5
  %25 = trunc i64 %23 to i32
  %26 = icmp eq i32 %18, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %14
  %28 = tail call i64 @gdev_mem_data_size(ptr noundef %7, i32 noundef %15, i32 noundef %18) #11
  %29 = trunc i64 %28 to i32
  %30 = icmp ult i32 %29, %25
  %31 = sub i32 %25, %29
  %32 = lshr i32 %5, 1
  %33 = tail call i32 @llvm.umin.i32(i32 %31, i32 %32)
  br i1 %30, label %55, label %140

34:                                               ; preds = %14
  %35 = udiv i32 %25, 5
  %36 = and i32 %35, 1073741816
  %37 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 7
  %38 = load i32, ptr %37, align 8, !tbaa !19
  %39 = icmp sgt i32 %38, 1
  %40 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 7, i32 3
  %41 = getelementptr inbounds %struct.gx_device_s, ptr %7, i64 0, i32 7, i32 2
  %42 = select i1 %39, ptr %40, ptr %41
  %43 = load i16, ptr %42, align 2, !tbaa !20
  %44 = icmp ugt i16 %43, 30
  %45 = lshr exact i32 %36, 2
  %46 = select i1 %44, i32 %45, i32 0
  %47 = sub nsw i32 %36, %46
  %48 = tail call i32 @llvm.umax.i32(i32 %47, i32 1024)
  %49 = lshr i32 %5, 1
  %50 = tail call i32 @llvm.umin.i32(i32 %48, i32 %49)
  %51 = sub i32 %25, %50
  %52 = zext i32 %51 to i64
  %53 = tail call i32 @gdev_mem_max_height(ptr noundef %7, i32 noundef %15, i64 noundef %52) #11
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %140, label %55

55:                                               ; preds = %34, %27
  %56 = phi i32 [ %18, %27 ], [ %53, %34 ]
  %57 = phi i32 [ %33, %27 ], [ %50, %34 ]
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %60 = load float, ptr %59, align 4, !tbaa !21
  %61 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %62 = load float, ptr %61, align 4, !tbaa !21
  %63 = fmul float %60, %62
  %64 = fpext float %63 to double
  %65 = fmul double %64, 0x3F53C0CA4587E6B7
  %66 = fptoui double %65 to i32
  %67 = add i32 %66, 24
  %68 = udiv i32 %57, %67
  %69 = add nuw i32 %68, 1
  %70 = and i32 %69, %68
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %55, %72
  %73 = phi i32 [ %75, %72 ], [ %68, %55 ]
  %74 = lshr i32 %73, 1
  %75 = or i32 %74, %73
  %76 = add nuw i32 %75, 1
  %77 = and i32 %76, %75
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %72, !llvm.loop !23

79:                                               ; preds = %72, %55
  %80 = phi i32 [ %68, %55 ], [ %75, %72 ]
  %81 = tail call i32 @llvm.umin.i32(i32 %80, i32 4095)
  %82 = tail call i32 @llvm.umax.i32(i32 %81, i32 255)
  br label %83

83:                                               ; preds = %88, %79
  %84 = phi i32 [ %82, %79 ], [ %89, %88 ]
  %85 = shl nuw nsw i32 %84, 3
  %86 = add nuw nsw i32 %85, 8
  %87 = icmp ult i32 %86, %57
  br i1 %87, label %91, label %88

88:                                               ; preds = %83
  %89 = lshr i32 %84, 1
  %90 = icmp ugt i32 %84, 5
  br i1 %90, label %83, label %91, !llvm.loop !25

91:                                               ; preds = %88, %83
  %92 = phi i32 [ %89, %88 ], [ %84, %83 ]
  %93 = icmp ult i32 %92, 3
  br i1 %93, label %105, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  store i32 %92, ptr %95, align 8, !tbaa !5
  %96 = lshr i32 %92, 2
  %97 = sub nsw i32 %92, %96
  %98 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 46
  store i32 %97, ptr %98, align 4, !tbaa !5
  %99 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  store ptr %3, ptr %99, align 8, !tbaa !5
  %100 = zext nneg i32 %86 to i64
  %101 = getelementptr inbounds i8, ptr %3, i64 %100
  %102 = sub i32 %57, %86
  %103 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 27
  tail call void @gx_bits_cache_chunk_init(ptr noundef nonnull %103, ptr noundef nonnull %101, i32 noundef %102) #11
  %104 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 28
  tail call void @gx_bits_cache_init(ptr noundef nonnull %104, ptr noundef nonnull %103) #11
  br label %105

105:                                              ; preds = %94, %91
  %106 = phi i32 [ 0, %94 ], [ -15, %91 ]
  br i1 %93, label %140, label %107

107:                                              ; preds = %105
  %108 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 4
  store i32 %57, ptr %108, align 8, !tbaa !5
  %109 = sub i32 %25, %57
  %110 = load ptr, ptr %6, align 8, !tbaa !5
  %111 = tail call i64 @gdev_mem_data_size(ptr noundef %110, i32 noundef %15, i32 noundef %56) #11
  %112 = zext i32 %109 to i64
  %113 = icmp ugt i64 %111, %112
  br i1 %113, label %122, label %114

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  store i32 %56, ptr %115, align 4, !tbaa !5
  %116 = getelementptr inbounds %struct.gx_device_s, ptr %110, i64 0, i32 9
  %117 = load i32, ptr %116, align 4, !tbaa !8
  %118 = add i32 %56, -1
  %119 = add i32 %118, %117
  %120 = sdiv i32 %119, %56
  %121 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  store i32 %120, ptr %121, align 8, !tbaa !5
  br label %122

122:                                              ; preds = %114, %107
  %123 = phi i32 [ 0, %114 ], [ -15, %107 ]
  br i1 %113, label %140, label %124

124:                                              ; preds = %122
  %125 = sub i32 %5, %57
  %126 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %127 = load i32, ptr %126, align 8, !tbaa !5
  %128 = sext i32 %127 to i64
  %129 = mul nsw i64 %128, 112
  %130 = add nsw i64 %129, 166
  %131 = zext i32 %125 to i64
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %124
  %134 = getelementptr inbounds i8, ptr %3, i64 %58
  %135 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  store ptr %134, ptr %135, align 8, !tbaa !5
  %136 = getelementptr inbounds i8, ptr %134, i64 %129
  %137 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 38
  store ptr %136, ptr %137, align 8, !tbaa !5
  %138 = getelementptr inbounds i8, ptr %134, i64 %131
  %139 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 40
  store ptr %138, ptr %139, align 8, !tbaa !5
  br label %140

140:                                              ; preds = %27, %34, %105, %122, %124, %133
  %141 = phi i32 [ -15, %27 ], [ -15, %34 ], [ %106, %105 ], [ %123, %122 ], [ 0, %133 ], [ -15, %124 ]
  %142 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %143 = load i32, ptr %142, align 8, !tbaa !5
  %144 = icmp slt i32 %141, 0
  br i1 %144, label %183, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 33
  store i32 -1, ptr %146, align 4, !tbaa !5
  %147 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 32
  store i32 -1, ptr %147, align 8, !tbaa !5
  %148 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 31
  %149 = load ptr, ptr %148, align 8, !tbaa !5
  %150 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 29
  %151 = load i32, ptr %150, align 8, !tbaa !5
  %152 = add i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = shl nuw nsw i64 %153, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %149, i8 0, i64 %154, i1 false)
  %155 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 38
  %156 = load ptr, ptr %155, align 8, !tbaa !5
  %157 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  store ptr %156, ptr %157, align 8, !tbaa !5
  %158 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 41
  %159 = add nsw i32 %143, -1
  %160 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %158, i8 0, i64 28, i1 false)
  store i32 %159, ptr %160, align 4, !tbaa !5
  %161 = icmp sgt i32 %143, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %145
  %163 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %164 = load ptr, ptr %163, align 8, !tbaa !5
  br label %165

165:                                              ; preds = %162, %165
  %166 = phi ptr [ %169, %165 ], [ %164, %162 ]
  %167 = phi i32 [ %168, %165 ], [ 0, %162 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %166, ptr noundef nonnull align 8 dereferenceable(112) @clist_init.cls_initial, i64 112, i1 false), !tbaa.struct !26
  %168 = add nuw nsw i32 %167, 1
  %169 = getelementptr inbounds %struct.gx_clist_state_s, ptr %166, i64 1
  %170 = icmp eq i32 %168, %143
  br i1 %170, label %171, label %165, !llvm.loop !29

171:                                              ; preds = %165, %145
  %172 = add nsw i32 %143, 63
  %173 = ashr i32 %172, 3
  %174 = and i32 %173, -8
  %175 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 30
  store i32 %174, ptr %175, align 4, !tbaa !5
  %176 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 47
  %177 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %176, i8 0, i64 44, i1 false)
  store i32 %143, ptr %177, align 4, !tbaa !5
  %178 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 50
  store i32 -1, ptr %178, align 8, !tbaa !5
  %179 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 51
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %179, ptr noundef nonnull align 8 dereferenceable(320) @clist_imager_state_initial, i64 320, i1 false), !tbaa.struct !30
  %180 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 53
  %181 = getelementptr i8, ptr %0, i64 1360
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %181, i8 0, i64 32, i1 false), !tbaa !5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %180, i8 0, i64 17, i1 false)
  %182 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 58
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %182, i8 0, i64 28, i1 false)
  br label %183

183:                                              ; preds = %140, %171
  %184 = phi i32 [ 0, %171 ], [ %141, %140 ]
  ret i32 %184
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_end_page(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.cmd_block_s, align 8
  %3 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %4 = load i32, ptr %3, align 8, !tbaa !31
  %5 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 44
  %8 = load i32, ptr %7, align 4, !tbaa !48
  %9 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42
  %10 = tail call fastcc i32 @cmd_write_band(ptr noundef %0, i32 noundef %6, i32 noundef %8, ptr noundef nonnull %9, i8 noundef zeroext 0)
  %11 = icmp sgt i32 %10, -1
  %12 = icmp sgt i32 %4, 0
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !49
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ %22, %17 ], [ 0, %14 ]
  %19 = phi ptr [ %23, %17 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.gx_clist_state_s, ptr %19, i64 0, i32 11
  %21 = tail call fastcc i32 @cmd_write_band(ptr noundef %0, i32 noundef %18, i32 noundef %18, ptr noundef nonnull %20, i8 noundef zeroext 11)
  %22 = add nuw nsw i32 %18, 1
  %23 = getelementptr inbounds %struct.gx_clist_state_s, ptr %19, i64 1
  %24 = icmp sgt i32 %21, -1
  %25 = icmp slt i32 %22, %4
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %17, label %27, !llvm.loop !50

27:                                               ; preds = %17, %1
  %28 = phi i32 [ %10, %1 ], [ %21, %17 ]
  %29 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 38
  %30 = load ptr, ptr %29, align 8, !tbaa !51
  %31 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  store ptr %30, ptr %31, align 8, !tbaa !52
  %32 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  %33 = icmp slt i32 %28, 0
  br i1 %33, label %46, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.cmd_block_s, ptr %2, i64 0, i32 1
  store i32 -1, ptr %35, align 4, !tbaa !53
  store i32 -1, ptr %2, align 8, !tbaa !55
  %36 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !56
  %38 = tail call i64 @clist_ftell(ptr noundef %37) #11
  %39 = getelementptr inbounds %struct.cmd_block_s, ptr %2, i64 0, i32 2
  store i64 %38, ptr %39, align 8, !tbaa !57
  %40 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !58
  %42 = call i32 @clist_fwrite_chars(ptr noundef nonnull %2, i32 noundef 16, ptr noundef %41) #11
  %43 = load ptr, ptr %40, align 8, !tbaa !58
  %44 = call i64 @clist_ftell(ptr noundef %43) #11
  %45 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 5
  store i64 %44, ptr %45, align 8, !tbaa !59
  br label %46

46:                                               ; preds = %27, %34
  %47 = phi i32 [ 0, %34 ], [ %28, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  ret i32 %47
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare i64 @clist_ftell(ptr noundef) local_unnamed_addr #1

declare i32 @clist_fwrite_chars(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local ptr @cmd_put_list_op(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  br label %4

4:                                                ; preds = %40, %3
  %5 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  %6 = load ptr, ptr %5, align 8, !tbaa !52
  %7 = zext i32 %2 to i64
  %8 = add nuw nsw i64 %7, 24
  %9 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 40
  %10 = load ptr, ptr %9, align 8, !tbaa !60
  %11 = ptrtoint ptr %10 to i64
  %12 = ptrtoint ptr %6 to i64
  %13 = sub i64 %11, %12
  %14 = icmp ugt i64 %8, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %4
  %16 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %17 = load i32, ptr %16, align 8, !tbaa !31
  %18 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 43
  %19 = load i32, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 44
  %21 = load i32, ptr %20, align 4, !tbaa !48
  %22 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42
  %23 = tail call fastcc i32 @cmd_write_band(ptr noundef %0, i32 noundef %19, i32 noundef %21, ptr noundef nonnull %22, i8 noundef zeroext 0)
  %24 = icmp sgt i32 %23, -1
  %25 = icmp sgt i32 %17, 0
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %29 = load ptr, ptr %28, align 8, !tbaa !49
  br label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %35, %30 ], [ 0, %27 ]
  %32 = phi ptr [ %36, %30 ], [ %29, %27 ]
  %33 = getelementptr inbounds %struct.gx_clist_state_s, ptr %32, i64 0, i32 11
  %34 = tail call fastcc i32 @cmd_write_band(ptr noundef %0, i32 noundef %31, i32 noundef %31, ptr noundef nonnull %33, i8 noundef zeroext 0)
  %35 = add nuw nsw i32 %31, 1
  %36 = getelementptr inbounds %struct.gx_clist_state_s, ptr %32, i64 1
  %37 = icmp sgt i32 %34, -1
  %38 = icmp slt i32 %35, %17
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %30, label %40, !llvm.loop !50

40:                                               ; preds = %30, %15
  %41 = phi i32 [ %23, %15 ], [ %34, %30 ]
  %42 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 38
  %43 = load ptr, ptr %42, align 8, !tbaa !51
  store ptr %43, ptr %5, align 8, !tbaa !52
  %44 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %44, i8 0, i64 24, i1 false)
  %45 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  store i32 %41, ptr %45, align 4, !tbaa !61
  %46 = icmp slt i32 %41, 0
  br i1 %46, label %73, label %4

47:                                               ; preds = %4
  %48 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 41
  %49 = load ptr, ptr %48, align 8, !tbaa !62
  %50 = icmp eq ptr %49, %1
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.cmd_list_s, ptr %1, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !63
  %54 = getelementptr inbounds %struct.cmd_prefix_s, ptr %53, i64 0, i32 1
  %55 = load i32, ptr %54, align 8, !tbaa !64
  %56 = add i32 %55, %2
  store i32 %56, ptr %54, align 8, !tbaa !64
  br label %70

57:                                               ; preds = %47
  %58 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 38
  %59 = load ptr, ptr %58, align 8, !tbaa !51
  %60 = ptrtoint ptr %59 to i64
  %61 = sub i64 %60, %12
  %62 = and i64 %61, 7
  %63 = getelementptr inbounds i8, ptr %6, i64 %62
  %64 = getelementptr inbounds %struct.cmd_prefix_s, ptr %63, i64 1
  %65 = getelementptr inbounds %struct.cmd_list_s, ptr %1, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !63
  %67 = icmp eq ptr %66, null
  %68 = select i1 %67, ptr %1, ptr %66
  store ptr %63, ptr %68, align 8, !tbaa !28
  store ptr %63, ptr %65, align 8, !tbaa !63
  store ptr %1, ptr %48, align 8, !tbaa !62
  %69 = getelementptr inbounds %struct.cmd_prefix_s, ptr %63, i64 0, i32 1
  store i32 %2, ptr %69, align 8, !tbaa !64
  br label %70

70:                                               ; preds = %57, %51
  %71 = phi ptr [ %6, %51 ], [ %64, %57 ]
  %72 = getelementptr inbounds i8, ptr %71, i64 %7
  store ptr %72, ptr %5, align 8, !tbaa !52
  br label %73

73:                                               ; preds = %40, %70
  %74 = phi ptr [ %71, %70 ], [ null, %40 ]
  ret ptr %74
}

; Function Attrs: nounwind uwtable
define dso_local ptr @cmd_put_range_op(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42
  %6 = load ptr, ptr %5, align 8, !tbaa !66
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 43
  %10 = load i32, ptr %9, align 8, !tbaa !47
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 44
  %14 = load i32, ptr %13, align 4, !tbaa !48
  %15 = icmp eq i32 %14, %2
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 42, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  %20 = load ptr, ptr %19, align 8, !tbaa !52
  %21 = getelementptr inbounds %struct.cmd_prefix_s, ptr %18, i64 1
  %22 = getelementptr inbounds %struct.cmd_prefix_s, ptr %18, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !64
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i8, ptr %21, i64 %24
  %26 = icmp eq ptr %20, %25
  br i1 %26, label %60, label %27

27:                                               ; preds = %16, %12, %8, %4
  %28 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 35
  %29 = load i32, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 43
  %31 = load i32, ptr %30, align 8, !tbaa !47
  %32 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 44
  %33 = load i32, ptr %32, align 4, !tbaa !48
  %34 = tail call fastcc i32 @cmd_write_band(ptr noundef %0, i32 noundef %31, i32 noundef %33, ptr noundef nonnull %5, i8 noundef zeroext 0)
  %35 = icmp sgt i32 %34, -1
  %36 = icmp sgt i32 %29, 0
  %37 = select i1 %35, i1 %36, i1 false
  br i1 %37, label %38, label %51

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 37
  %40 = load ptr, ptr %39, align 8, !tbaa !49
  br label %41

41:                                               ; preds = %41, %38
  %42 = phi i32 [ %46, %41 ], [ 0, %38 ]
  %43 = phi ptr [ %47, %41 ], [ %40, %38 ]
  %44 = getelementptr inbounds %struct.gx_clist_state_s, ptr %43, i64 0, i32 11
  %45 = tail call fastcc i32 @cmd_write_band(ptr noundef %0, i32 noundef %42, i32 noundef %42, ptr noundef nonnull %44, i8 noundef zeroext 0)
  %46 = add nuw nsw i32 %42, 1
  %47 = getelementptr inbounds %struct.gx_clist_state_s, ptr %43, i64 1
  %48 = icmp sgt i32 %45, -1
  %49 = icmp slt i32 %46, %29
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %41, label %51, !llvm.loop !50

51:                                               ; preds = %41, %27
  %52 = phi i32 [ %34, %27 ], [ %45, %41 ]
  %53 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 38
  %54 = load ptr, ptr %53, align 8, !tbaa !51
  %55 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 39
  store ptr %54, ptr %55, align 8, !tbaa !52
  %56 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 41
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  %57 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  store i32 %52, ptr %57, align 4, !tbaa !61
  %58 = icmp slt i32 %52, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %51
  store i32 %1, ptr %30, align 8, !tbaa !47
  store i32 %2, ptr %32, align 4, !tbaa !48
  br label %60

60:                                               ; preds = %59, %16
  %61 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %3)
  br label %62

62:                                               ; preds = %51, %60
  %63 = phi ptr [ %61, %60 ], [ null, %51 ]
  ret ptr %63
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local i32 @cmd_size_w(i32 noundef %0) local_unnamed_addr #5 {
  %2 = icmp ugt i32 %0, 127
  br i1 %2, label %3, label %9

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %7, %3 ], [ 1, %1 ]
  %5 = phi i32 [ %6, %3 ], [ %0, %1 ]
  %6 = lshr i32 %5, 7
  %7 = add nuw nsw i32 %4, 1
  %8 = icmp ugt i32 %5, 16383
  br i1 %8, label %3, label %9, !llvm.loop !68

9:                                                ; preds = %3, %1
  %10 = phi i32 [ 1, %1 ], [ %7, %3 ]
  ret i32 %10
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @cmd_put_w(i32 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #6 {
  %3 = icmp ugt i32 %0, 127
  br i1 %3, label %4, label %12

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %9, %4 ], [ %1, %2 ]
  %6 = phi i32 [ %10, %4 ], [ %0, %2 ]
  %7 = trunc i32 %6 to i8
  %8 = or i8 %7, -128
  %9 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 %8, ptr %5, align 1, !tbaa !5
  %10 = lshr i32 %6, 7
  %11 = icmp ugt i32 %6, 16383
  br i1 %11, label %4, label %12, !llvm.loop !69

12:                                               ; preds = %4, %2
  %13 = phi i32 [ %0, %2 ], [ %10, %4 ]
  %14 = phi ptr [ %1, %2 ], [ %9, %4 ]
  %15 = trunc i32 %13 to i8
  store i8 %15, ptr %14, align 1, !tbaa !5
  %16 = getelementptr inbounds i8, ptr %14, i64 1
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_color(ptr nocapture noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i64 noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = load i64, ptr %4, align 8, !tbaa !27
  %7 = sub nsw i64 %3, %6
  %8 = icmp eq i64 %6, %3
  br i1 %8, label %198, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.clist_select_color_t, ptr %2, i64 0, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !70
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %15 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %14, i32 noundef 1)
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %19 = load i32, ptr %18, align 4, !tbaa !61
  br label %198

20:                                               ; preds = %13
  store i8 5, ptr %15, align 1, !tbaa !5
  br label %21

21:                                               ; preds = %20, %9
  %22 = load i8, ptr %2, align 4, !tbaa !72
  %23 = getelementptr inbounds %struct.clist_select_color_t, ptr %2, i64 0, i32 1
  %24 = load i8, ptr %23, align 1, !tbaa !73
  %25 = icmp eq i64 %3, -1
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %28 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %27, i32 noundef 1)
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %32 = load i32, ptr %31, align 4, !tbaa !61
  br label %198

33:                                               ; preds = %26
  %34 = add i8 %22, 15
  store i8 %34, ptr %28, align 1, !tbaa !5
  br label %197

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 7, i32 1
  %37 = load i32, ptr %36, align 4, !tbaa !74
  %38 = add nsw i32 %37, 15
  %39 = ashr i32 %38, 3
  switch i32 %39, label %194 [
    i32 5, label %40
    i32 4, label %98
    i32 3, label %156
    i32 2, label %169
  ]

40:                                               ; preds = %35
  %41 = add nsw i64 %7, 67372036
  %42 = and i64 %41, -117901064
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67

44:                                               ; preds = %40
  %45 = lshr i64 %41, 23
  %46 = lshr i64 %41, 18
  %47 = and i64 %46, 1
  %48 = or disjoint i64 %47, %45
  %49 = trunc i64 %48 to i32
  switch i32 %49, label %50 [
    i32 15, label %67
    i32 0, label %67
  ]

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %52 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %51, i32 noundef 2)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %56 = load i32, ptr %55, align 4, !tbaa !61
  br label %194

57:                                               ; preds = %50
  %58 = trunc i64 %48 to i8
  %59 = add i8 %22, %58
  store i8 %59, ptr %52, align 1, !tbaa !5
  %60 = lshr i64 %41, 10
  %61 = and i64 %60, 192
  %62 = lshr i64 %41, 5
  %63 = or disjoint i64 %62, %61
  %64 = or disjoint i64 %63, %41
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds i8, ptr %52, i64 1
  store i8 %65, ptr %66, align 1, !tbaa !5
  br label %194

67:                                               ; preds = %44, %44, %40
  %68 = add nsw i64 %7, 134744072
  %69 = and i64 %68, -252645136
  %70 = icmp eq i64 %69, 0
  %71 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %70, label %72, label %88

72:                                               ; preds = %67
  %73 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %71, i32 noundef 3)
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %77 = load i32, ptr %76, align 4, !tbaa !61
  br label %194

78:                                               ; preds = %72
  store i8 %24, ptr %73, align 1, !tbaa !5
  %79 = lshr i64 %68, 20
  %80 = lshr i64 %68, 16
  %81 = or disjoint i64 %79, %80
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds i8, ptr %73, i64 1
  store i8 %82, ptr %83, align 1, !tbaa !5
  %84 = lshr i64 %68, 4
  %85 = or disjoint i64 %84, %68
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds i8, ptr %73, i64 2
  store i8 %86, ptr %87, align 1, !tbaa !5
  br label %194

88:                                               ; preds = %67
  %89 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %71, i32 noundef 5)
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %93 = load i32, ptr %92, align 4, !tbaa !61
  br label %194

94:                                               ; preds = %88
  store i8 %22, ptr %89, align 1, !tbaa !5
  %95 = lshr i64 %3, 24
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds i8, ptr %89, i64 1
  store i8 %96, ptr %97, align 1, !tbaa !5
  br label %151

98:                                               ; preds = %35
  %99 = add nsw i64 %7, 526344
  %100 = and i64 %99, -986896
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = lshr i64 %99, 16
  %104 = trunc i64 %103 to i32
  switch i32 %104, label %105 [
    i32 15, label %119
    i32 0, label %119
  ]

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %107 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %106, i32 noundef 2)
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %111 = load i32, ptr %110, align 4, !tbaa !61
  br label %194

112:                                              ; preds = %105
  %113 = trunc i64 %103 to i8
  %114 = add i8 %22, %113
  store i8 %114, ptr %107, align 1, !tbaa !5
  %115 = lshr i64 %99, 4
  %116 = or disjoint i64 %115, %99
  %117 = trunc i64 %116 to i8
  %118 = getelementptr inbounds i8, ptr %107, i64 1
  store i8 %117, ptr %118, align 1, !tbaa !5
  br label %194

119:                                              ; preds = %102, %102, %98
  %120 = add nsw i64 %7, 1056784
  %121 = and i64 %120, -2047776
  %122 = icmp eq i64 %121, 0
  %123 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %122, label %124, label %144

124:                                              ; preds = %119
  %125 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %123, i32 noundef 3)
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %129 = load i32, ptr %128, align 4, !tbaa !61
  br label %194

130:                                              ; preds = %124
  store i8 %24, ptr %125, align 1, !tbaa !5
  %131 = trunc i64 %120 to i32
  %132 = lshr i32 %131, 13
  %133 = and i32 %132, 248
  %134 = lshr i32 %131, 11
  %135 = and i32 %134, 7
  %136 = or disjoint i32 %133, %135
  %137 = trunc i32 %136 to i8
  %138 = getelementptr inbounds i8, ptr %125, i64 1
  store i8 %137, ptr %138, align 1, !tbaa !5
  %139 = lshr i64 %120, 3
  %140 = and i64 %139, 224
  %141 = or disjoint i64 %140, %120
  %142 = trunc i64 %141 to i8
  %143 = getelementptr inbounds i8, ptr %125, i64 2
  store i8 %142, ptr %143, align 1, !tbaa !5
  br label %194

144:                                              ; preds = %119
  %145 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %123, i32 noundef 4)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %149 = load i32, ptr %148, align 4, !tbaa !61
  br label %194

150:                                              ; preds = %144
  store i8 %22, ptr %145, align 1, !tbaa !5
  br label %151

151:                                              ; preds = %150, %94
  %152 = phi ptr [ %145, %150 ], [ %97, %94 ]
  %153 = lshr i64 %3, 16
  %154 = trunc i64 %153 to i8
  %155 = getelementptr inbounds i8, ptr %152, i64 1
  store i8 %154, ptr %155, align 1, !tbaa !5
  br label %164

156:                                              ; preds = %35
  %157 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %158 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %157, i32 noundef 3)
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %162 = load i32, ptr %161, align 4, !tbaa !61
  br label %194

163:                                              ; preds = %156
  store i8 %22, ptr %158, align 1, !tbaa !5
  br label %164

164:                                              ; preds = %163, %151
  %165 = phi ptr [ %158, %163 ], [ %155, %151 ]
  %166 = lshr i64 %3, 8
  %167 = trunc i64 %166 to i8
  %168 = getelementptr inbounds i8, ptr %165, i64 1
  store i8 %167, ptr %168, align 1, !tbaa !5
  br label %190

169:                                              ; preds = %35
  %170 = add i64 %7, 7
  %171 = icmp ult i64 %170, 14
  %172 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  br i1 %171, label %173, label %183

173:                                              ; preds = %169
  %174 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %172, i32 noundef 1)
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %178 = load i32, ptr %177, align 4, !tbaa !61
  br label %194

179:                                              ; preds = %173
  %180 = trunc i64 %7 to i8
  %181 = add i8 %180, 8
  %182 = add i8 %181, %22
  store i8 %182, ptr %174, align 1, !tbaa !5
  br label %194

183:                                              ; preds = %169
  %184 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %172, i32 noundef 2)
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %188 = load i32, ptr %187, align 4, !tbaa !61
  br label %194

189:                                              ; preds = %183
  store i8 %22, ptr %184, align 1, !tbaa !5
  br label %190

190:                                              ; preds = %189, %164
  %191 = phi ptr [ %184, %189 ], [ %168, %164 ]
  %192 = trunc i64 %3 to i8
  %193 = getelementptr inbounds i8, ptr %191, i64 1
  store i8 %192, ptr %193, align 1, !tbaa !5
  br label %194

194:                                              ; preds = %57, %78, %112, %130, %179, %35, %190, %186, %176, %160, %147, %127, %109, %91, %75, %54
  %195 = phi i32 [ %178, %176 ], [ %188, %186 ], [ %162, %160 ], [ %149, %147 ], [ %129, %127 ], [ %111, %109 ], [ %93, %91 ], [ %77, %75 ], [ %56, %54 ], [ undef, %190 ], [ undef, %35 ], [ undef, %179 ], [ undef, %130 ], [ undef, %112 ], [ undef, %78 ], [ undef, %57 ]
  %196 = phi i1 [ false, %176 ], [ false, %186 ], [ false, %160 ], [ false, %147 ], [ false, %127 ], [ false, %109 ], [ false, %91 ], [ false, %75 ], [ false, %54 ], [ true, %190 ], [ true, %35 ], [ true, %179 ], [ true, %130 ], [ true, %112 ], [ true, %78 ], [ true, %57 ]
  br i1 %196, label %197, label %198

197:                                              ; preds = %194, %33
  store i64 %3, ptr %4, align 8, !tbaa !27
  br label %198

198:                                              ; preds = %5, %194, %197, %30, %17
  %199 = phi i32 [ %19, %17 ], [ %32, %30 ], [ 0, %197 ], [ %195, %194 ], [ 0, %5 ]
  ret i32 %199
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_set_tile_colors(ptr nocapture noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 4
  %6 = load i64, ptr %5, align 8, !tbaa !27
  %7 = icmp eq i64 %6, %2
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @cmd_put_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @clist_select_tile_color0, i64 noundef %2, ptr noundef nonnull %5)
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %11, label %21

11:                                               ; preds = %8, %4
  %12 = phi i32 [ %9, %8 ], [ undef, %4 ]
  %13 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 4, i64 1
  %14 = load i64, ptr %13, align 8, !tbaa !27
  %15 = icmp eq i64 %14, %3
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = tail call i32 @cmd_put_color(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @clist_select_tile_color1, i64 noundef %3, ptr noundef nonnull %13)
  %18 = icmp sgt i32 %17, -1
  %19 = select i1 %18, i32 %12, i32 %17
  br i1 %18, label %20, label %21

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %16, %8, %20
  %22 = phi i32 [ %9, %8 ], [ %19, %16 ], [ 0, %20 ]
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_set_tile_phase(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 3
  store i32 %2, ptr %5, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 3, i32 1
  store i32 %3, ptr %6, align 4, !tbaa !78
  %7 = or i32 %3, %2
  %8 = icmp ult i32 %7, 128
  br i1 %8, label %31, label %9

9:                                                ; preds = %4
  %10 = icmp ugt i32 %2, 127
  br i1 %10, label %11, label %19

11:                                               ; preds = %9, %11
  %12 = phi i32 [ %15, %11 ], [ 1, %9 ]
  %13 = phi i32 [ %14, %11 ], [ %2, %9 ]
  %14 = lshr i32 %13, 7
  %15 = add nuw nsw i32 %12, 1
  %16 = icmp ugt i32 %13, 16383
  br i1 %16, label %11, label %17, !llvm.loop !68

17:                                               ; preds = %11
  %18 = add nuw i32 %12, 2
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i32 [ 2, %9 ], [ %18, %17 ]
  %21 = icmp ugt i32 %3, 127
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %26, %22 ], [ 1, %19 ]
  %24 = phi i32 [ %25, %22 ], [ %3, %19 ]
  %25 = lshr i32 %24, 7
  %26 = add nuw nsw i32 %23, 1
  %27 = icmp ugt i32 %24, 16383
  br i1 %27, label %22, label %28, !llvm.loop !68

28:                                               ; preds = %22, %19
  %29 = phi i32 [ 1, %19 ], [ %26, %22 ]
  %30 = add i32 %20, %29
  br label %31

31:                                               ; preds = %4, %28
  %32 = phi i32 [ %30, %28 ], [ 3, %4 ]
  %33 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %34 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %33, i32 noundef %32)
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %38 = load i32, ptr %37, align 4, !tbaa !61
  br label %78

39:                                               ; preds = %31
  store i8 2, ptr %34, align 1, !tbaa !5
  %40 = getelementptr inbounds i8, ptr %34, i64 1
  %41 = load i32, ptr %5, align 8, !tbaa !75
  %42 = load i32, ptr %6, align 4, !tbaa !78
  %43 = or i32 %42, %41
  %44 = icmp ult i32 %43, 128
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = trunc i32 %41 to i8
  store i8 %46, ptr %40, align 1, !tbaa !5
  %47 = load i32, ptr %6, align 4, !tbaa !78
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds i8, ptr %34, i64 2
  store i8 %48, ptr %49, align 1, !tbaa !5
  br label %78

50:                                               ; preds = %39
  %51 = icmp ugt i32 %41, 127
  br i1 %51, label %52, label %60

52:                                               ; preds = %50, %52
  %53 = phi ptr [ %57, %52 ], [ %40, %50 ]
  %54 = phi i32 [ %58, %52 ], [ %41, %50 ]
  %55 = trunc i32 %54 to i8
  %56 = or i8 %55, -128
  %57 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %56, ptr %53, align 1, !tbaa !5
  %58 = lshr i32 %54, 7
  %59 = icmp ugt i32 %54, 16383
  br i1 %59, label %52, label %60, !llvm.loop !69

60:                                               ; preds = %52, %50
  %61 = phi i32 [ %41, %50 ], [ %58, %52 ]
  %62 = phi ptr [ %40, %50 ], [ %57, %52 ]
  %63 = trunc i32 %61 to i8
  store i8 %63, ptr %62, align 1, !tbaa !5
  %64 = getelementptr inbounds i8, ptr %62, i64 1
  %65 = icmp ugt i32 %42, 127
  br i1 %65, label %66, label %74

66:                                               ; preds = %60, %66
  %67 = phi ptr [ %71, %66 ], [ %64, %60 ]
  %68 = phi i32 [ %72, %66 ], [ %42, %60 ]
  %69 = trunc i32 %68 to i8
  %70 = or i8 %69, -128
  %71 = getelementptr inbounds i8, ptr %67, i64 1
  store i8 %70, ptr %67, align 1, !tbaa !5
  %72 = lshr i32 %68, 7
  %73 = icmp ugt i32 %68, 16383
  br i1 %73, label %66, label %74, !llvm.loop !69

74:                                               ; preds = %66, %60
  %75 = phi i32 [ %42, %60 ], [ %72, %66 ]
  %76 = phi ptr [ %64, %60 ], [ %71, %66 ]
  %77 = trunc i32 %75 to i8
  store i8 %77, ptr %76, align 1, !tbaa !5
  br label %78

78:                                               ; preds = %45, %74, %36
  %79 = phi i32 [ %38, %36 ], [ 0, %74 ], [ 0, %45 ]
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_enable_lop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %5 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %15

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  %12 = select i1 %11, i8 8, i8 7
  store i8 %12, ptr %5, align 1, !tbaa !5
  %13 = trunc i32 %2 to i16
  %14 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 7
  store i16 %13, ptr %14, align 4, !tbaa !79
  br label %15

15:                                               ; preds = %10, %7
  %16 = phi i32 [ %9, %7 ], [ 0, %10 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_put_enable_clip(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %5 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 1)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %9 = load i32, ptr %8, align 4, !tbaa !61
  br label %17

10:                                               ; preds = %3
  %11 = icmp eq i32 %2, 0
  %12 = load i8, ptr @cmd_opvar_enable_clip, align 1
  %13 = load i8, ptr @cmd_opvar_disable_clip, align 1
  %14 = select i1 %11, i8 %13, i8 %12
  store i8 %14, ptr %5, align 1, !tbaa !5
  %15 = trunc i32 %2 to i16
  %16 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 8
  store i16 %15, ptr %16, align 2, !tbaa !80
  br label %17

17:                                               ; preds = %10, %7
  %18 = phi i32 [ %9, %7 ], [ 0, %10 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local i32 @cmd_set_lop(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = lshr i32 %2, 6
  %5 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 11
  %6 = icmp ugt i32 %2, 8191
  br i1 %6, label %7, label %15

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %11, %7 ], [ 1, %3 ]
  %9 = phi i32 [ %10, %7 ], [ %4, %3 ]
  %10 = lshr i32 %9, 7
  %11 = add nuw nsw i32 %8, 1
  %12 = icmp ugt i32 %9, 16383
  br i1 %12, label %7, label %13, !llvm.loop !68

13:                                               ; preds = %7
  %14 = add nuw nsw i32 %8, 3
  br label %15

15:                                               ; preds = %13, %3
  %16 = phi i32 [ 3, %3 ], [ %14, %13 ]
  %17 = tail call ptr @cmd_put_list_op(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 36
  %21 = load i32, ptr %20, align 4, !tbaa !61
  br label %40

22:                                               ; preds = %15
  store i8 6, ptr %17, align 1, !tbaa !5
  %23 = trunc i32 %2 to i8
  %24 = and i8 %23, 63
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %24, ptr %25, align 1, !tbaa !5
  %26 = getelementptr inbounds i8, ptr %17, i64 2
  br i1 %6, label %27, label %35

27:                                               ; preds = %22, %27
  %28 = phi ptr [ %32, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %33, %27 ], [ %4, %22 ]
  %30 = trunc i32 %29 to i8
  %31 = or i8 %30, -128
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %31, ptr %28, align 1, !tbaa !5
  %33 = lshr i32 %29, 7
  %34 = icmp ugt i32 %29, 16383
  br i1 %34, label %27, label %35, !llvm.loop !69

35:                                               ; preds = %27, %22
  %36 = phi i32 [ %4, %22 ], [ %33, %27 ]
  %37 = phi ptr [ %26, %22 ], [ %32, %27 ]
  %38 = trunc i32 %36 to i8
  store i8 %38, ptr %37, align 1, !tbaa !5
  %39 = getelementptr inbounds %struct.gx_clist_state_s, ptr %1, i64 0, i32 6
  store i32 %2, ptr %39, align 8, !tbaa !81
  br label %40

40:                                               ; preds = %35, %19
  %41 = phi i32 [ %21, %19 ], [ 0, %35 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

declare i32 @clist_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare i64 @gdev_mem_data_size(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gdev_mem_max_height(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @gx_bits_cache_chunk_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @gx_bits_cache_init(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @clist_fclose(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cmd_write_band(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef %3, i8 noundef zeroext %4) unnamed_addr #0 {
  %6 = alloca %struct.cmd_block_s, align 8
  %7 = alloca i8, align 1
  %8 = load ptr, ptr %3, align 8, !tbaa !82
  %9 = icmp ne ptr %8, null
  %10 = icmp ne i8 %4, 0
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %43

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !56
  %15 = getelementptr inbounds %struct.gx_device_clist_writer_s, ptr %0, i64 0, i32 34, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 %4, ptr %7, align 1, !tbaa !5
  store i32 %1, ptr %6, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.cmd_block_s, ptr %6, i64 0, i32 1
  store i32 %2, ptr %17, align 4, !tbaa !53
  %18 = tail call i64 @clist_ftell(ptr noundef %14) #11
  %19 = getelementptr inbounds %struct.cmd_block_s, ptr %6, i64 0, i32 2
  store i64 %18, ptr %19, align 8, !tbaa !57
  %20 = call i32 @clist_fwrite_chars(ptr noundef nonnull %6, i32 noundef 16, ptr noundef %16) #11
  br i1 %9, label %21, label %33

21:                                               ; preds = %12
  %22 = getelementptr inbounds %struct.cmd_list_s, ptr %3, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !63
  store ptr null, ptr %23, align 8, !tbaa !83
  br label %24

24:                                               ; preds = %21, %24
  %25 = phi ptr [ %8, %21 ], [ %30, %24 ]
  %26 = getelementptr inbounds %struct.cmd_prefix_s, ptr %25, i64 1
  %27 = getelementptr inbounds %struct.cmd_prefix_s, ptr %25, i64 0, i32 1
  %28 = load i32, ptr %27, align 8, !tbaa !64
  %29 = call i32 @clist_fwrite_chars(ptr noundef nonnull %26, i32 noundef %28, ptr noundef %14) #11
  %30 = load ptr, ptr %25, align 8, !tbaa !83
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !84

32:                                               ; preds = %24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %33

33:                                               ; preds = %32, %12
  %34 = call i32 @clist_fwrite_chars(ptr noundef nonnull %7, i32 noundef 1, ptr noundef %14) #11
  %35 = call i32 @clist_ferror_code(ptr noundef %16) #11
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %33
  %38 = call i32 @clist_ferror_code(ptr noundef %14) #11
  %39 = icmp sgt i32 %38, -1
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i32 [ %35, %33 ], [ %38, %37 ]
  %42 = phi i1 [ false, %33 ], [ %39, %37 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #11
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %5
  br label %44

44:                                               ; preds = %40, %43
  %45 = phi i32 [ 0, %43 ], [ %41, %40 ]
  ret i32 %45
}

declare i32 @clist_ferror_code(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }

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
!8 = !{!9, !10, i64 68}
!9 = !{!"gx_device_s", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !12, i64 48, !10, i64 64, !10, i64 68, !6, i64 72, !6, i64 80, !10, i64 96, !6, i64 100, !6, i64 108, !6, i64 116, !6, i64 124, !14, i64 144, !14, i64 152, !10, i64 160, !15, i64 168, !16, i64 192}
!10 = !{!"int", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"gx_device_color_info_s", !10, i64 0, !10, i64 4, !13, i64 8, !13, i64 10, !13, i64 12, !13, i64 14}
!13 = !{!"short", !6, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"gx_page_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16}
!16 = !{!"gx_device_procs_s", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288}
!17 = !{!10, !10, i64 0}
!18 = !{!9, !10, i64 64}
!19 = !{!9, !10, i64 48}
!20 = !{!13, !13, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !6, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !24}
!26 = !{i64 0, i64 16, !5, i64 16, i64 4, !17, i64 24, i64 8, !27, i64 32, i64 4, !17, i64 36, i64 4, !17, i64 40, i64 16, !5, i64 56, i64 4, !17, i64 60, i64 4, !17, i64 64, i64 4, !17, i64 68, i64 4, !17, i64 72, i64 4, !17, i64 76, i64 2, !20, i64 78, i64 2, !20, i64 80, i64 2, !20, i64 82, i64 2, !20, i64 88, i64 8, !28, i64 96, i64 8, !28, i64 104, i64 8, !27}
!27 = !{!14, !14, i64 0}
!28 = !{!11, !11, i64 0}
!29 = distinct !{!29, !24}
!30 = !{i64 0, i64 8, !28, i64 8, i64 4, !21, i64 12, i64 4, !17, i64 16, i64 4, !17, i64 20, i64 4, !21, i64 24, i64 4, !21, i64 28, i64 4, !21, i64 32, i64 4, !21, i64 40, i64 8, !28, i64 48, i64 4, !17, i64 52, i64 4, !21, i64 56, i64 4, !17, i64 60, i64 4, !21, i64 64, i64 4, !17, i64 68, i64 4, !17, i64 72, i64 4, !21, i64 80, i64 4, !21, i64 84, i64 4, !21, i64 88, i64 4, !21, i64 92, i64 4, !21, i64 96, i64 4, !21, i64 100, i64 4, !21, i64 104, i64 8, !27, i64 112, i64 8, !27, i64 120, i64 4, !17, i64 128, i64 4, !17, i64 132, i64 2, !20, i64 136, i64 4, !17, i64 140, i64 4, !21, i64 144, i64 8, !27, i64 152, i64 8, !27, i64 160, i64 4, !17, i64 164, i64 4, !17, i64 168, i64 8, !28, i64 176, i64 16, !5, i64 192, i64 8, !28, i64 200, i64 8, !28, i64 208, i64 8, !28, i64 216, i64 8, !28, i64 224, i64 8, !28, i64 232, i64 32, !5, i64 232, i64 8, !28, i64 240, i64 8, !28, i64 248, i64 8, !28, i64 256, i64 8, !28, i64 264, i64 32, !5, i64 264, i64 8, !28, i64 272, i64 8, !28, i64 280, i64 8, !28, i64 288, i64 8, !28, i64 296, i64 8, !28, i64 304, i64 8, !28, i64 312, i64 8, !28}
!31 = !{!32, !10, i64 784}
!32 = !{!"gx_device_clist_writer_s", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 44, !12, i64 48, !10, i64 64, !10, i64 68, !6, i64 72, !6, i64 80, !10, i64 96, !6, i64 100, !6, i64 108, !6, i64 116, !6, i64 124, !14, i64 144, !14, i64 152, !10, i64 160, !15, i64 168, !16, i64 192, !11, i64 488, !11, i64 496, !11, i64 504, !10, i64 512, !33, i64 520, !34, i64 536, !35, i64 560, !10, i64 584, !10, i64 588, !11, i64 592, !10, i64 600, !10, i64 604, !36, i64 608, !10, i64 784, !10, i64 788, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !37, i64 832, !10, i64 848, !10, i64 852, !10, i64 856, !10, i64 860, !38, i64 864, !10, i64 904, !10, i64 908, !10, i64 912, !40, i64 920, !6, i64 1240, !11, i64 1288, !14, i64 1296, !6, i64 1304, !45, i64 1312, !6, i64 1360, !14, i64 1392, !14, i64 1400, !14, i64 1408, !10, i64 1416}
!33 = !{!"gx_band_params_s", !10, i64 0, !10, i64 4, !14, i64 8}
!34 = !{!"gx_bits_cache_chunk_s", !11, i64 0, !11, i64 8, !10, i64 16, !10, i64 20}
!35 = !{!"gx_bits_cache_s", !11, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!36 = !{!"gx_band_page_info_s", !6, i64 0, !11, i64 64, !6, i64 72, !11, i64 136, !10, i64 144, !14, i64 152, !33, i64 160}
!37 = !{!"cmd_list_s", !11, i64 0, !11, i64 8}
!38 = !{!"gx_strip_bitmap_s", !11, i64 0, !10, i64 8, !39, i64 12, !14, i64 24, !13, i64 32, !13, i64 34, !13, i64 36, !13, i64 38}
!39 = !{!"gs_int_point_s", !10, i64 0, !10, i64 4}
!40 = !{!"gs_imager_state_s", !11, i64 0, !41, i64 8, !43, i64 80, !10, i64 128, !13, i64 132, !10, i64 136, !22, i64 140, !44, i64 144, !10, i64 160, !10, i64 164, !11, i64 168, !6, i64 176, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !6, i64 232, !6, i64 264, !11, i64 296, !11, i64 304, !11, i64 312}
!41 = !{!"gx_line_params_s", !22, i64 0, !10, i64 4, !10, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !22, i64 24, !42, i64 32}
!42 = !{!"gx_dash_params_s", !11, i64 0, !10, i64 8, !22, i64 12, !10, i64 16, !22, i64 20, !10, i64 24, !10, i64 28, !22, i64 32}
!43 = !{!"gs_matrix_fixed_s", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !22, i64 16, !22, i64 20, !14, i64 24, !14, i64 32, !10, i64 40}
!44 = !{!"gs_fixed_point_s", !14, i64 0, !14, i64 8}
!45 = !{!"gs_indexed_params_s", !46, i64 0, !10, i64 16, !6, i64 24, !10, i64 40}
!46 = !{!"gs_base_color_space_s", !11, i64 0, !6, i64 8}
!47 = !{!32, !10, i64 848}
!48 = !{!32, !10, i64 852}
!49 = !{!32, !11, i64 792}
!50 = distinct !{!50, !24}
!51 = !{!32, !11, i64 800}
!52 = !{!32, !11, i64 808}
!53 = !{!54, !10, i64 4}
!54 = !{!"cmd_block_s", !10, i64 0, !10, i64 4, !14, i64 8}
!55 = !{!54, !10, i64 0}
!56 = !{!32, !11, i64 672}
!57 = !{!54, !14, i64 8}
!58 = !{!32, !11, i64 744}
!59 = !{!32, !14, i64 760}
!60 = !{!32, !11, i64 816}
!61 = !{!32, !10, i64 788}
!62 = !{!32, !11, i64 824}
!63 = !{!37, !11, i64 8}
!64 = !{!65, !10, i64 8}
!65 = !{!"cmd_prefix_s", !11, i64 0, !10, i64 8}
!66 = !{!32, !11, i64 832}
!67 = !{!32, !11, i64 840}
!68 = distinct !{!68, !24}
!69 = distinct !{!69, !24}
!70 = !{!71, !10, i64 4}
!71 = !{!"", !6, i64 0, !6, i64 1, !10, i64 4}
!72 = !{!71, !6, i64 0}
!73 = !{!71, !6, i64 1}
!74 = !{!32, !10, i64 52}
!75 = !{!76, !10, i64 32}
!76 = !{!"gx_clist_state_s", !6, i64 0, !10, i64 16, !14, i64 24, !39, i64 32, !6, i64 40, !77, i64 56, !10, i64 72, !13, i64 76, !13, i64 78, !13, i64 80, !13, i64 82, !37, i64 88, !14, i64 104}
!77 = !{!"", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12}
!78 = !{!76, !10, i64 36}
!79 = !{!76, !13, i64 76}
!80 = !{!76, !13, i64 78}
!81 = !{!76, !10, i64 72}
!82 = !{!37, !11, i64 0}
!83 = !{!65, !11, i64 0}
!84 = distinct !{!84, !24}
