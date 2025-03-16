; ModuleID = 'gxclread.c'
source_filename = "gxclread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_clist_state_s = type { [2 x i64], i32, i64, %struct.gs_int_point_s, [2 x i64], %struct.gx_cmd_rect, i32, i16, i16, i16, i16, %struct.cmd_list_s, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%struct.gx_cmd_rect = type { i32, i32, i32, i32 }
%struct.cmd_list_s = type { ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.stream_band_read_state_s = type { ptr, ptr, ptr, %struct.gx_band_page_info_s, i32, i32, %struct.cmd_block_s }
%struct.gx_band_page_info_s = type { [60 x i8], ptr, [60 x i8], ptr, i32, i64, %struct.gx_band_params_s }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.cmd_block_s = type { i32, i32, i64 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }
%struct.gx_device_memory_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_matrix_s, i32, i32, ptr, ptr, ptr, %struct.gs_const_string_s, %struct._c24, %struct.gs_log2_scale_point_s, i32, i32, i32, i32, i32, i64 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_const_string_s = type { ptr, i32 }
%struct._c24 = type { i64, i32, i32, i32 }
%struct.gs_log2_scale_point_s = type { i32, i32 }
%struct.gx_device_ht_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_saved_page_s = type { %struct.gx_device_s, [9 x i8], %struct.gx_band_page_info_s, i32 }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_placed_page_s = type { ptr, %struct.gs_int_point_s }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.gx_device_clist_reader_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, ptr, i32, %struct.gx_band_params_s, %struct.gx_bits_cache_chunk_s, %struct.gx_bits_cache_s, i32, i32, ptr, i32, i32, %struct.gx_band_page_info_s, i32, ptr, i32 }
%struct.gx_bits_cache_chunk_s = type { ptr, ptr, i32, i32 }
%struct.gx_bits_cache_s = type { ptr, i32, i32, i32 }
%struct.gx_strip_bitmap_s = type { ptr, i32, %struct.gs_int_point_s, i64, i16, i16, i16, i16 }
%struct.gx_path_s = type { ptr, %struct.gs_fixed_rect_s, ptr, ptr, ptr, i32, i32, %struct.gs_fixed_point_s, %struct.gs_point_s, %struct.gs_point_s, i8, i8, i8, i8 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_point_s = type { double, double }
%struct.gx_clip_path_s = type { %struct.gx_path_s, i32, %struct.gs_fixed_rect_s, %struct.gs_fixed_rect_s, %struct.gx_clip_list_s, i8, i8, i64 }
%struct.gx_clip_list_s = type { %struct.gx_clip_rect_s, ptr, ptr, i32, i32 }
%struct.gx_clip_rect_s = type { ptr, ptr, i32, i32, i32, i32, i8 }
%struct.gx_device_cpath_accum_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_int_rect_s, %struct.gs_int_rect_s, %struct.gx_clip_list_s }
%struct.gs_int_rect_s = type { %struct.gs_int_point_s, %struct.gs_int_point_s }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gx_fill_params_s = type { i32, %struct.gs_fixed_point_s, float, i32 }
%struct.gx_stroke_params_s = type { float }
%struct.gx_device_halftone_s = type { %struct.gx_ht_order_s, %struct.rc_header_s, i64, ptr, i32, [4 x i32], i32, i32 }
%struct.gx_ht_order_s = type { %struct.gx_ht_cell_params_s, i16, i16, i16, i16, i16, i16, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.gx_ht_cell_params_s = type { i16, i16, i16, i16, i16, i16, i64, i16, i16, i32, i32, i32 }
%struct.rc_header_s = type { i64, ptr, ptr }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_color_space_s = type { ptr, %union.anon.1 }
%union.anon.1 = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.0, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon }
%union.anon = type { ptr }
%union.anon.0 = type { %struct.gs_const_string_s }
%struct.stream_RLD_state_s = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.stream_CFD_state_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.gx_ht_tile_s = type { %struct.gx_strip_bitmap_s, i32, i32 }
%struct.tile_hash = type { i64 }
%struct.tile_slot = type { %struct.gx_cached_bits_head_s, i16, i16, i16, i16, i64, i8, i8, i16, i16, i16 }
%struct.gx_cached_bits_head_s = type { i32, i32 }
%struct.gx_transfer_map_s = type { %struct.rc_header_s, ptr, i64, [256 x i16] }
%struct.gx_ht_order_component_s = type { %struct.gx_ht_order_s, i32 }
%struct.gx_ht_bit_s = type { i32, i32 }

@st_stream_state = external constant %struct.gs_memory_struct_type_s, align 8
@s_band_read_template = dso_local constant %struct.stream_template_s { ptr @st_stream_state, ptr @s_band_read_init, ptr @s_band_read_process, i32 1, i32 800, ptr null, ptr null, ptr null }, align 8
@gs_memory_default = external global %struct.gs_memory_s, align 8
@clist_get_bits.no_procs = internal constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_std_noseek, ptr @s_std_read_reset, ptr @s_std_read_flush, ptr @s_std_close, ptr @s_band_read_process, ptr null }, align 8
@gp_fmode_rb = external constant [0 x i8], align 1
@clist_render_band.cls_initial = internal unnamed_addr constant %struct.gx_clist_state_s { [2 x i64] [i64 -1, i64 -1], i32 0, i64 0, %struct.gs_int_point_s zeroinitializer, [2 x i64] [i64 -1, i64 -1], %struct.gx_cmd_rect zeroinitializer, i32 252, i16 0, i16 0, i16 0, i16 32767, %struct.cmd_list_s zeroinitializer, i64 0 }, align 8
@clist_imager_state_initial = external local_unnamed_addr constant %struct.gs_imager_state_s, align 8
@.str = private unnamed_addr constant [29 x i8] c"clist_render_band(data_bits)\00", align 1
@s_RLD_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@s_CFD_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@gs_color_space_type_Indexed = external constant %struct.gs_color_space_type_s, align 8
@clist_render_band.bpc = internal unnamed_addr constant [6 x i8] c"\01\01\02\04\08\0C", align 1
@clist_render_band.decode01 = internal unnamed_addr constant [8 x float] [float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 1.000000e+00], align 16
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"clist image_data\00", align 1
@gx_dc_procs_ht_colored = external constant %struct.gx_device_color_procs_s, align 8
@clist_segment_op_num_operands = internal unnamed_addr constant [15 x i8] c"\02\02\01\01\06\04\04\04\04\04\06\06\02\02\00", align 1
@gx_dc_procs_ht_binary = external constant %struct.gx_device_color_procs_s, align 8
@gs_stderr = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"gxclread.c\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Bad op %02x band y0 = %d file pos %ld buf pos %d/%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%4d:\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c" %02x %02x %02x %02x %02x %02x %02x %02x %02x %02x\0A\00", align 1
@st_transfer_map = external constant %struct.gs_memory_struct_type_s, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"cmd_select_map(transfer)\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"cmd_select_map(ht transfer)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"cmd_select_map(black generation)\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"cmd_select_map(undercolor removal)\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"cmd_resize_halftone\00", align 1
@st_ht_order_component_element = external constant %struct.gs_memory_struct_type_s, align 8
@.str.11 = private unnamed_addr constant [17 x i8] c"ht order(levels)\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"ht order(bits)\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_band_read_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 3, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, i8 0, i64 20, i1 false)
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 3, i32 2
  tail call void @clist_rewind(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %5) #7
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @s_band_read_process(ptr noundef %0, ptr nocapture readnone %1, ptr nocapture noundef %2, i32 %3) #0 {
  %5 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !15
  %7 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  %9 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 3
  %10 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 3, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !18
  %12 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 3, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !19
  %16 = ptrtoint ptr %8 to i64
  %17 = ptrtoint ptr %6 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %74, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 3, i32 5
  %24 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 6, i32 1
  %25 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 6, i32 2
  %26 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %0, i64 0, i32 4
  br label %27

27:                                               ; preds = %21, %42
  %28 = phi i1 [ %20, %21 ], [ %49, %42 ]
  %29 = phi i32 [ %19, %21 ], [ %48, %42 ]
  %30 = phi ptr [ %6, %21 ], [ %44, %42 ]
  %31 = phi i32 [ %15, %21 ], [ %45, %42 ]
  br label %33

32:                                               ; preds = %72
  br i1 %28, label %74, label %33

33:                                               ; preds = %27, %32
  %34 = phi i32 [ %31, %27 ], [ %73, %32 ]
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %29)
  %38 = getelementptr inbounds i8, ptr %30, i64 1
  %39 = tail call i32 @clist_fread_chars(ptr noundef nonnull %38, i32 noundef %37, ptr noundef %11) #7
  %40 = tail call i32 @clist_ferror_code(ptr noundef %11) #7
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %36
  %43 = zext i32 %37 to i64
  %44 = getelementptr inbounds i8, ptr %30, i64 %43
  %45 = sub i32 %34, %37
  %46 = ptrtoint ptr %44 to i64
  %47 = sub i64 %16, %46
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %74, label %27, !llvm.loop !20

50:                                               ; preds = %33, %72
  %51 = phi i32 [ %73, %72 ], [ 0, %33 ]
  %52 = load i32, ptr %22, align 8, !tbaa !22
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i64 @clist_ftell(ptr noundef %13) #7
  %56 = load i64, ptr %23, align 8, !tbaa !23
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %54, %50
  %59 = load i32, ptr %22, align 8, !tbaa !22
  %60 = load i32, ptr %24, align 4, !tbaa !24
  %61 = load i64, ptr %25, align 8, !tbaa !25
  %62 = tail call i32 @clist_fread_chars(ptr noundef nonnull %22, i32 noundef 16, ptr noundef %13) #7
  %63 = load i32, ptr %26, align 8, !tbaa !26
  %64 = icmp sge i32 %63, %59
  %65 = icmp sle i32 %63, %60
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = tail call i32 @clist_fseek(ptr noundef %11, i64 noundef %61, i32 noundef 0, ptr noundef nonnull %9) #7
  %69 = load i64, ptr %25, align 8, !tbaa !25
  %70 = sub nsw i64 %69, %61
  %71 = trunc i64 %70 to i32
  br label %72

72:                                               ; preds = %58, %67
  %73 = phi i32 [ %71, %67 ], [ %51, %58 ]
  br i1 %66, label %32, label %50

74:                                               ; preds = %42, %36, %32, %54, %4
  %75 = phi ptr [ %6, %4 ], [ %30, %54 ], [ %30, %32 ], [ %30, %36 ], [ %44, %42 ]
  %76 = phi i32 [ 1, %4 ], [ -1, %54 ], [ 1, %32 ], [ -2, %36 ], [ 1, %42 ]
  %77 = phi i32 [ %15, %4 ], [ %51, %54 ], [ %73, %32 ], [ %34, %36 ], [ %45, %42 ]
  store ptr %75, ptr %5, align 8, !tbaa !15
  store i32 %77, ptr %14, align 4, !tbaa !19
  ret i32 %76
}

; Function Attrs: nounwind uwtable
define dso_local i32 @clist_get_bits(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = alloca %struct.gx_device_memory_s, align 8
  %6 = alloca %struct.gx_device_ht_s, align 8
  %7 = alloca %struct.gx_saved_page_s, align 8
  %8 = alloca %struct.gx_placed_page_s, align 8
  %9 = alloca %struct.stream_band_read_state_s, align 8
  %10 = alloca %struct.stream_s, align 8
  %11 = alloca [800 x i8], align 16
  %12 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 22
  %13 = load ptr, ptr %12, align 8, !tbaa !27
  %14 = tail call i32 @gx_device_raster(ptr noundef %13, i32 noundef 1) #7
  %15 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 24
  %16 = load ptr, ptr %15, align 8, !tbaa !27
  %17 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 34
  %18 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 34, i32 4
  %19 = load i32, ptr %18, align 8, !tbaa !27
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8, ptr %16, i64 %20
  call void @llvm.lifetime.start.p0(i64 632, ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(i64 520, ptr nonnull %6) #7
  %22 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 32
  %23 = load i32, ptr %22, align 8, !tbaa !27
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %4
  %26 = tail call i32 @clist_end_page(ptr noundef %0) #7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 33
  store i32 0, ptr %29, align 4, !tbaa !27
  store i32 0, ptr %22, align 8, !tbaa !27
  %30 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 36
  store ptr null, ptr %30, align 8, !tbaa !27
  %31 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 37
  store i32 0, ptr %31, align 8, !tbaa !27
  br label %32

32:                                               ; preds = %25, %28
  %33 = phi i32 [ 0, %28 ], [ %26, %25 ]
  %34 = icmp slt i32 %33, 0
  %35 = icmp slt i32 %33, 1
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.gx_device_ht_s, ptr %6, i64 0, i32 22
  store ptr %5, ptr %37, align 8, !tbaa !28
  br label %38

38:                                               ; preds = %36, %32
  %39 = phi ptr [ %5, %32 ], [ %6, %36 ]
  br i1 %34, label %181, label %40

40:                                               ; preds = %38, %4
  %41 = phi ptr [ %39, %38 ], [ %5, %4 ]
  %42 = phi i32 [ %33, %38 ], [ undef, %4 ]
  %43 = load i32, ptr %22, align 8, !tbaa !27
  %44 = icmp sgt i32 %43, %1
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 33
  %47 = load i32, ptr %46, align 4, !tbaa !27
  %48 = icmp sgt i32 %47, %1
  br i1 %48, label %170, label %49

49:                                               ; preds = %45, %40
  %50 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 34, i32 6, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !27
  %52 = sdiv i32 %1, %51
  %53 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 36
  %54 = load ptr, ptr %53, align 8, !tbaa !27
  %55 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 37
  %56 = load i32, ptr %55, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 688, ptr nonnull %7) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #7
  %57 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !27
  %59 = icmp eq ptr %58, null
  %60 = select i1 %59, ptr @gs_memory_default, ptr %58
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %9) #7
  %61 = icmp slt i32 %1, 0
  br i1 %61, label %167, label %62

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %64 = load i32, ptr %63, align 4, !tbaa !35
  %65 = icmp slt i32 %64, %1
  br i1 %65, label %167, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 23
  %68 = load ptr, ptr %67, align 8, !tbaa !27
  %69 = call i32 %68(ptr noundef nonnull %5, ptr noundef %13, ptr noundef null, i32 noundef 1) #7
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %167, label %71

71:                                               ; preds = %66
  %72 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 7
  %73 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %72, ptr noundef nonnull align 8 dereferenceable(16) %73, i64 16, i1 false), !tbaa.struct !37
  %74 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 26
  store ptr %21, ptr %74, align 8, !tbaa !40
  store ptr @s_band_read_template, ptr %9, align 8, !tbaa !47
  %75 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 1
  store ptr null, ptr %75, align 8, !tbaa !48
  %76 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 4
  store i32 %52, ptr %76, align 8, !tbaa !26
  %77 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 23
  call void @gs_deviceinitialmatrix(ptr noundef %13, ptr noundef nonnull %77) #7
  %78 = getelementptr inbounds %struct.gx_device_s, ptr %13, i64 0, i32 8
  %79 = load i32, ptr %78, align 8, !tbaa !49
  %80 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 8
  store i32 %79, ptr %80, align 8, !tbaa !50
  %81 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 9
  store i32 %51, ptr %81, align 4, !tbaa !51
  %82 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 24
  store i32 %14, ptr %82, align 8, !tbaa !52
  %83 = getelementptr inbounds %struct.gx_device_memory_s, ptr %5, i64 0, i32 21
  %84 = load ptr, ptr %83, align 8, !tbaa !53
  %85 = call i32 %84(ptr noundef nonnull %5) #7
  %86 = icmp eq ptr %54, null
  br i1 %86, label %87, label %91

87:                                               ; preds = %71
  %88 = getelementptr inbounds %struct.gx_saved_page_s, ptr %7, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %88, ptr noundef nonnull align 8 dereferenceable(176) %17, i64 176, i1 false), !tbaa.struct !54
  store ptr %7, ptr %8, align 8, !tbaa !57
  %89 = getelementptr inbounds %struct.gx_placed_page_s, ptr %8, i64 0, i32 1
  %90 = getelementptr inbounds %struct.gx_placed_page_s, ptr %8, i64 0, i32 1, i32 1
  store i32 0, ptr %90, align 4, !tbaa !59
  store i32 0, ptr %89, align 8, !tbaa !60
  br label %91

91:                                               ; preds = %87, %71
  %92 = phi ptr [ %8, %87 ], [ %54, %71 ]
  %93 = phi i32 [ 1, %87 ], [ %56, %71 ]
  %94 = icmp sgt i32 %93, 0
  br i1 %94, label %95, label %157

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3
  %97 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3, i32 1
  %98 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3, i32 3
  %99 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3, i32 2
  %100 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 5
  %101 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3, i32 2
  %102 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 8
  %103 = getelementptr inbounds %struct.stream_s, ptr %10, i64 0, i32 16
  %104 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3, i32 3
  %105 = getelementptr inbounds %struct.stream_band_read_state_s, ptr %9, i64 0, i32 3, i32 2
  %106 = zext nneg i32 %93 to i64
  br label %107

107:                                              ; preds = %152, %95
  %108 = phi i64 [ 0, %95 ], [ %154, %152 ]
  %109 = getelementptr inbounds %struct.gx_placed_page_s, ptr %92, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !57
  %111 = getelementptr inbounds %struct.gx_saved_page_s, ptr %110, i64 0, i32 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %96, ptr noundef nonnull align 8 dereferenceable(176) %111, i64 176, i1 false), !tbaa.struct !54
  %112 = load ptr, ptr %97, align 8, !tbaa !18
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = call i32 @clist_fopen(ptr noundef nonnull %96, ptr noundef nonnull @gp_fmode_rb, ptr noundef nonnull %97, ptr noundef nonnull %60, i32 noundef 1) #7
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %131

117:                                              ; preds = %114, %107
  %118 = load ptr, ptr %98, align 8, !tbaa !5
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = call i32 @clist_fopen(ptr noundef nonnull %99, ptr noundef nonnull @gp_fmode_rb, ptr noundef nonnull %98, ptr noundef nonnull %60, i32 noundef 0) #7
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %131

123:                                              ; preds = %120, %117
  call void @llvm.lifetime.start.p0(i64 232, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %11) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %100, i8 0, i64 20, i1 false)
  %124 = load ptr, ptr %98, align 8, !tbaa !5
  call void @clist_rewind(ptr noundef %124, i32 noundef 0, ptr noundef nonnull %101) #7
  call void @s_std_init(ptr noundef nonnull %10, ptr noundef nonnull %11, i32 noundef 800, ptr noundef nonnull @clist_get_bits.no_procs, i32 noundef 1) #7
  store i8 1, ptr %102, align 2, !tbaa !61
  store ptr %9, ptr %103, align 8, !tbaa !65
  %125 = getelementptr inbounds %struct.gx_placed_page_s, ptr %92, i64 %108, i32 1
  %126 = load i32, ptr %125, align 8, !tbaa !60
  %127 = sub nsw i32 0, %126
  %128 = load i32, ptr %81, align 4, !tbaa !51
  %129 = mul nsw i32 %128, %52
  %130 = call fastcc i32 @clist_render_band(ptr noundef %0, ptr noundef nonnull %10, ptr noundef %41, i32 noundef %127, i32 noundef %129, ptr noundef nonnull %60)
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 232, ptr nonnull %10) #7
  br label %131

131:                                              ; preds = %123, %120, %114
  %132 = phi i32 [ %130, %123 ], [ %121, %120 ], [ %115, %114 ]
  %133 = load ptr, ptr %109, align 8, !tbaa !57
  %134 = getelementptr inbounds %struct.gx_saved_page_s, ptr %133, i64 0, i32 2, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !66
  %136 = icmp eq ptr %135, null
  %137 = load ptr, ptr %104, align 8
  %138 = icmp ne ptr %137, null
  %139 = select i1 %136, i1 %138, i1 false
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = call i32 @clist_fclose(ptr noundef nonnull %137, ptr noundef nonnull %105, i32 noundef 0) #7
  br label %142

142:                                              ; preds = %140, %131
  %143 = load ptr, ptr %109, align 8, !tbaa !57
  %144 = getelementptr inbounds %struct.gx_saved_page_s, ptr %143, i64 0, i32 2, i32 1
  %145 = load ptr, ptr %144, align 8, !tbaa !68
  %146 = icmp eq ptr %145, null
  %147 = load ptr, ptr %97, align 8
  %148 = icmp ne ptr %147, null
  %149 = select i1 %146, i1 %148, i1 false
  br i1 %149, label %150, label %152

150:                                              ; preds = %142
  %151 = call i32 @clist_fclose(ptr noundef nonnull %147, ptr noundef nonnull %96, i32 noundef 0) #7
  br label %152

152:                                              ; preds = %150, %142
  %153 = icmp slt i32 %132, 0
  %154 = add nuw nsw i64 %108, 1
  %155 = icmp eq i64 %154, %106
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %157, label %107, !llvm.loop !69

157:                                              ; preds = %152, %91
  %158 = phi i32 [ %69, %91 ], [ %132, %152 ]
  %159 = load i32, ptr %81, align 4, !tbaa !51
  %160 = mul nsw i32 %159, %52
  store i32 %160, ptr %22, align 8, !tbaa !27
  %161 = add nsw i32 %160, %159
  %162 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 33
  store i32 %161, ptr %162, align 4, !tbaa !27
  %163 = load i32, ptr %63, align 4, !tbaa !35
  %164 = call i32 @llvm.smin.i32(i32 %161, i32 %163)
  store i32 %164, ptr %162, align 4
  %165 = icmp sgt i32 %158, -1
  %166 = select i1 %165, i32 %42, i32 %158
  br label %167

167:                                              ; preds = %157, %66, %49, %62
  %168 = phi i1 [ false, %62 ], [ false, %49 ], [ false, %66 ], [ %165, %157 ]
  %169 = phi i32 [ -15, %62 ], [ -15, %49 ], [ %69, %66 ], [ %166, %157 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %9) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #7
  call void @llvm.lifetime.end.p0(i64 688, ptr nonnull %7) #7
  br i1 %168, label %170, label %181

170:                                              ; preds = %167, %45
  %171 = load i32, ptr %22, align 8, !tbaa !27
  %172 = sub nsw i32 %1, %171
  %173 = mul i32 %172, %14
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i8, ptr %21, i64 %174
  %176 = icmp eq ptr %3, null
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #7
  %179 = zext i32 %178 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %175, i64 %179, i1 false)
  br label %181

180:                                              ; preds = %170
  store ptr %175, ptr %3, align 8, !tbaa !55
  br label %181

181:                                              ; preds = %177, %180, %38, %167
  %182 = phi i32 [ %169, %167 ], [ %33, %38 ], [ 0, %180 ], [ 0, %177 ]
  call void @llvm.lifetime.end.p0(i64 520, ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(i64 632, ptr nonnull %5) #7
  ret i32 %182
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @s_std_noavailable(ptr noundef, ptr noundef) #2

declare i32 @s_std_noseek(ptr noundef, i64 noundef) #2

declare void @s_std_read_reset(ptr noundef) #2

declare i32 @s_std_read_flush(ptr noundef) #2

declare i32 @s_std_close(ptr noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare void @gs_deviceinitialmatrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clist_fopen(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @s_std_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @clist_render_band(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #0 {
  %7 = alloca [6 x float], align 16
  %8 = alloca [6 x float], align 16
  %9 = alloca [800 x i8], align 16
  %10 = alloca %struct.gx_clist_state_s, align 8
  %11 = alloca %struct.gx_strip_bitmap_s, align 8
  %12 = alloca %struct.gx_path_s, align 8
  %13 = alloca %struct.gx_clip_path_s, align 8
  %14 = alloca %struct.gx_device_cpath_accum_s, align 8
  %15 = alloca %struct.gs_fixed_rect_s, align 8
  %16 = alloca [20 x i8], align 4
  %17 = alloca %struct.gs_imager_state_s, align 8
  %18 = alloca %struct.gx_device_color_s, align 8
  %19 = alloca [11 x float], align 16
  %20 = alloca %struct.gx_fill_params_s, align 8
  %21 = alloca %struct.gx_stroke_params_s, align 4
  %22 = alloca %struct.gx_device_halftone_s, align 8
  %23 = alloca %struct.gs_image_s, align 8
  %24 = alloca %struct.gs_int_rect_s, align 4
  %25 = alloca %struct.gs_color_space_s, align 8
  %26 = alloca ptr, align 8
  %27 = alloca %struct.gs_fixed_rect_s, align 8
  %28 = alloca i32, align 4
  %29 = alloca [2 x i64], align 16
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.stream_cursor_read_s, align 8
  %33 = alloca %struct.stream_cursor_write_s, align 8
  %34 = alloca i32, align 4
  %35 = alloca %struct.stream_RLD_state_s, align 8
  %36 = alloca %struct.stream_CFD_state_s, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca %struct.gx_ht_cell_params_s, align 8
  %41 = alloca { ptr, ptr, ptr, ptr }, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca %struct.stream_cursor_read_s, align 8
  %46 = alloca %struct.stream_cursor_write_s, align 8
  %47 = alloca i32, align 4
  %48 = alloca %struct.stream_RLD_state_s, align 8
  %49 = alloca %struct.stream_CFD_state_s, align 8
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca %struct.gs_matrix_s, align 4
  %53 = alloca %struct.gs_fixed_rect_s, align 8
  %54 = alloca %struct.gx_device_color_s, align 8
  %55 = alloca ptr, align 8
  %56 = alloca i32, align 4
  %57 = alloca [6 x i64], align 16
  %58 = alloca %struct.gx_device_color_s, align 8
  %59 = alloca %struct.gx_ht_tile_s, align 8
  %60 = alloca %struct.gx_device_color_s, align 8
  %61 = alloca %struct.gx_ht_tile_s, align 8
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %9) #7
  %62 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 7, i32 1
  %63 = load i32, ptr %62, align 4, !tbaa !70
  %64 = add nsw i32 %63, 7
  %65 = ashr i32 %64, 3
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %10) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #7
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %12) #7
  call void @llvm.lifetime.start.p0(i64 280, ptr nonnull %13) #7
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %14) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %15) #7
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %16)
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %17) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %18) #7
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %19) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %20) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21) #7
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %22) #7
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %23) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %24) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %25) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #7
  %66 = getelementptr inbounds i8, ptr %9, i64 751
  %67 = getelementptr inbounds i8, ptr %9, i64 800
  %68 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 3
  %69 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 6
  %70 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 7
  %71 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 8
  %72 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %27, i64 0, i32 1
  %73 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 9
  %74 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %27, i64 0, i32 1, i32 1
  %75 = getelementptr inbounds %struct.gx_device_s, ptr %2, i64 0, i32 21, i32 36
  %76 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 1
  %77 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 1, i32 7
  %78 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 10
  %79 = getelementptr inbounds %struct.gx_ht_order_s, ptr %22, i64 0, i32 11
  %80 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %22, i64 0, i32 3
  %81 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 12
  %82 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 13
  %83 = sub nsw i32 0, %3
  %84 = sub nsw i32 0, %4
  %85 = getelementptr inbounds %struct.gx_fill_params_s, ptr %20, i64 0, i32 3
  %86 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 2
  %87 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 2, i32 1
  %88 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1
  %89 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4
  %90 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1, i32 0, i32 1
  %91 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4, i64 1
  %92 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1, i32 0, i32 1, i64 1
  %93 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1, i32 0, i32 3
  %94 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 2
  %95 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 2, i32 1
  %96 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %97 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1
  %98 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 6
  %99 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 2
  %100 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 2, i32 1
  %101 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1
  %102 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4
  %103 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1, i32 0, i32 1
  %104 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4, i64 1
  %105 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1, i32 0, i32 1, i64 1
  %106 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1, i32 0, i32 3
  %107 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 2
  %108 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 2, i32 1
  %109 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %110 = getelementptr inbounds %struct.gx_device_color_s, ptr %58, i64 0, i32 1
  %111 = getelementptr inbounds %struct.gx_fill_params_s, ptr %20, i64 0, i32 1
  %112 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 7
  %113 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 6
  %114 = getelementptr inbounds %struct.gx_fill_params_s, ptr %20, i64 0, i32 2
  %115 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %116 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %117 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %118 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %119 = sext i32 %3 to i64
  %120 = shl nsw i64 %119, 12
  %121 = sext i32 %4 to i64
  %122 = shl nsw i64 %121, 12
  %123 = getelementptr inbounds i64, ptr %57, i64 1
  %124 = getelementptr inbounds i64, ptr %57, i64 1
  %125 = getelementptr inbounds i64, ptr %57, i64 2
  %126 = getelementptr inbounds i64, ptr %57, i64 3
  %127 = getelementptr inbounds i64, ptr %57, i64 4
  %128 = getelementptr inbounds i64, ptr %57, i64 5
  %129 = getelementptr inbounds i64, ptr %57, i64 1
  %130 = getelementptr inbounds i64, ptr %57, i64 3
  %131 = getelementptr inbounds i64, ptr %57, i64 2
  %132 = getelementptr inbounds i64, ptr %57, i64 3
  %133 = getelementptr inbounds i64, ptr %57, i64 2
  %134 = getelementptr inbounds i64, ptr %57, i64 1
  %135 = getelementptr inbounds i64, ptr %57, i64 2
  %136 = getelementptr inbounds i64, ptr %57, i64 3
  %137 = getelementptr inbounds i64, ptr %57, i64 2
  %138 = getelementptr inbounds i64, ptr %57, i64 3
  %139 = getelementptr inbounds i64, ptr %57, i64 1
  %140 = getelementptr inbounds i64, ptr %57, i64 2
  %141 = getelementptr inbounds i64, ptr %57, i64 3
  %142 = getelementptr inbounds i64, ptr %57, i64 4
  %143 = getelementptr inbounds i64, ptr %57, i64 5
  %144 = getelementptr inbounds i64, ptr %57, i64 1
  %145 = getelementptr inbounds i64, ptr %57, i64 2
  %146 = getelementptr inbounds i64, ptr %57, i64 3
  %147 = getelementptr inbounds i64, ptr %57, i64 1
  %148 = getelementptr inbounds i64, ptr %57, i64 3
  %149 = getelementptr inbounds i64, ptr %57, i64 5
  %150 = getelementptr inbounds i64, ptr %57, i64 2
  %151 = getelementptr inbounds i64, ptr %57, i64 4
  %152 = getelementptr inbounds i64, ptr %57, i64 1
  %153 = getelementptr inbounds i64, ptr %57, i64 3
  %154 = getelementptr inbounds i64, ptr %57, i64 5
  %155 = getelementptr inbounds i64, ptr %57, i64 2
  %156 = getelementptr inbounds i64, ptr %57, i64 4
  %157 = getelementptr inbounds i64, ptr %57, i64 1
  %158 = getelementptr inbounds i64, ptr %57, i64 3
  %159 = getelementptr inbounds i64, ptr %57, i64 4
  %160 = getelementptr inbounds i64, ptr %57, i64 2
  %161 = getelementptr inbounds i64, ptr %57, i64 5
  %162 = getelementptr inbounds i64, ptr %57, i64 2
  %163 = getelementptr inbounds i64, ptr %57, i64 3
  %164 = getelementptr inbounds i64, ptr %57, i64 5
  %165 = getelementptr inbounds i64, ptr %57, i64 1
  %166 = getelementptr inbounds i64, ptr %57, i64 4
  %167 = getelementptr inbounds i64, ptr %57, i64 2
  %168 = getelementptr inbounds i64, ptr %57, i64 4
  %169 = getelementptr inbounds i64, ptr %57, i64 1
  %170 = getelementptr inbounds i64, ptr %57, i64 3
  %171 = getelementptr inbounds i64, ptr %57, i64 5
  %172 = getelementptr inbounds i64, ptr %57, i64 1
  %173 = getelementptr inbounds i64, ptr %57, i64 2
  %174 = getelementptr inbounds i64, ptr %57, i64 3
  %175 = getelementptr inbounds i64, ptr %57, i64 4
  %176 = getelementptr inbounds i64, ptr %57, i64 5
  %177 = getelementptr inbounds i64, ptr %57, i64 1
  %178 = getelementptr inbounds i64, ptr %57, i64 1
  %179 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 1, i32 0, i32 1
  %180 = getelementptr inbounds i8, ptr %18, i64 17
  %181 = getelementptr inbounds i8, ptr %18, i64 18
  %182 = getelementptr inbounds i8, ptr %18, i64 19
  %183 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 1, i32 0, i32 1
  %184 = getelementptr inbounds i8, ptr %18, i64 17
  %185 = getelementptr inbounds i8, ptr %18, i64 18
  %186 = getelementptr inbounds i8, ptr %18, i64 19
  %187 = getelementptr inbounds %struct.gx_device_color_s, ptr %18, i64 0, i32 1
  %188 = getelementptr inbounds i8, ptr %18, i64 36
  %189 = ptrtoint ptr %9 to i64
  %190 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %191 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 1
  %192 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 1
  %193 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2
  %194 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 1
  %195 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 1
  %196 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 2
  %197 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 2
  %198 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 3
  %199 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 3
  %200 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 4
  %201 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 4
  %202 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 5
  %203 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 5
  %204 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2
  %205 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 1
  %206 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 2
  %207 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 1
  %208 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 3
  %209 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 4
  %210 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 2, i32 5
  %211 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 3
  %212 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 4
  %213 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 7
  %214 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5
  %215 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5
  %216 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5, i64 1
  %217 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 4
  %218 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 7
  %219 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5
  %220 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5, i64 1
  %221 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 6
  %222 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 8
  %223 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 9
  %224 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 7
  %225 = getelementptr inbounds %struct.gs_int_point_s, ptr %24, i64 0, i32 1
  %226 = getelementptr inbounds %struct.gs_int_point_s, ptr %24, i64 0, i32 1
  %227 = getelementptr inbounds %struct.gs_int_rect_s, ptr %24, i64 0, i32 1
  %228 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 1
  %229 = getelementptr inbounds %struct.gs_int_rect_s, ptr %24, i64 0, i32 1, i32 1
  %230 = getelementptr inbounds %struct.gs_int_point_s, ptr %24, i64 0, i32 1
  %231 = getelementptr inbounds %struct.gs_int_rect_s, ptr %24, i64 0, i32 1
  %232 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 1
  %233 = getelementptr inbounds %struct.gs_int_rect_s, ptr %24, i64 0, i32 1, i32 1
  %234 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %235 = getelementptr inbounds %struct.gx_device_color_s, ptr %54, i64 0, i32 1
  %236 = getelementptr inbounds %struct.gs_color_space_s, ptr %25, i64 0, i32 1
  %237 = getelementptr inbounds %struct.gs_color_space_s, ptr %25, i64 0, i32 1, i32 0, i32 1, i32 1
  %238 = getelementptr inbounds %struct.gs_color_space_s, ptr %25, i64 0, i32 1, i32 0, i32 1, i32 1
  %239 = getelementptr inbounds %struct.gs_color_space_s, ptr %25, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %240 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %53, i64 0, i32 1
  %241 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %15, i64 0, i32 1
  %242 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %53, i64 0, i32 1
  %243 = getelementptr inbounds %struct.gs_fixed_point_s, ptr %15, i64 0, i32 1
  %244 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %53, i64 0, i32 1, i32 1
  %245 = getelementptr inbounds %struct.gs_fixed_rect_s, ptr %15, i64 0, i32 1, i32 1
  %246 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %247 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %248 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 3
  %249 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 7
  %250 = getelementptr inbounds i8, ptr %16, i64 4
  %251 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %252 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 7
  %253 = getelementptr inbounds i8, ptr %16, i64 4
  %254 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 3
  %255 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 7, i32 1
  %256 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 1, i32 7, i32 3
  %257 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 9
  %258 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 5
  %259 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 8
  %260 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 1, i32 1
  %261 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 1, i32 2
  %262 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 1
  %263 = getelementptr inbounds %struct.gs_matrix_s, ptr %52, i64 0, i32 1
  %264 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 2
  %265 = getelementptr inbounds %struct.gs_matrix_s, ptr %52, i64 0, i32 2
  %266 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 3
  %267 = getelementptr inbounds %struct.gs_matrix_s, ptr %52, i64 0, i32 3
  %268 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 4
  %269 = getelementptr inbounds %struct.gs_matrix_s, ptr %52, i64 0, i32 4
  %270 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 5
  %271 = getelementptr inbounds %struct.gs_matrix_s, ptr %52, i64 0, i32 5
  %272 = sitofp i32 %3 to float
  %273 = sitofp i32 %4 to float
  %274 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 7
  %275 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 7, i32 1
  %276 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 6
  %277 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 1
  %278 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 1
  %279 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 27, i32 1
  %280 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 31
  %281 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 1
  %282 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 9
  %283 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %284 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %285 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %286 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %287 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %288 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %289 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %290 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %291 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %292 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %293 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %294 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %295 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %45, i64 0, i32 1
  %296 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %46, i64 0, i32 1
  %297 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %46, i64 0, i32 2
  %298 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 6), align 8
  %299 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 1
  %300 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 7
  %301 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 10
  %302 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 12
  %303 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 13
  %304 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 15
  %305 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %49, i64 0, i32 11
  %306 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 1), align 8
  %307 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 2), align 8
  %308 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 5), align 8
  %309 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %48, i64 0, i32 3
  %310 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %48, i64 0, i32 4
  %311 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_RLD_template, i64 0, i32 2), align 8
  %312 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %313 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %314 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %315 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %316 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %317 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %318 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %319 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %320 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %321 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %322 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %323 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %324 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %325 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %326 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %327 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %328 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %329 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %330 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %331 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 9
  %332 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %333 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %334 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %335 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %336 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %337 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %338 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %339 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %340 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %341 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %342 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %343 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %344 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %345 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %346 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %347 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %348 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %349 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %350 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %351 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 1
  %352 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 1
  %353 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4
  %354 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 1, i32 0, i32 1
  %355 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4, i64 1
  %356 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 1, i32 0, i32 1, i64 1
  %357 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 1, i32 0, i32 3
  %358 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 2
  %359 = getelementptr inbounds %struct.gx_device_color_s, ptr %60, i64 0, i32 2, i32 1
  %360 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %361 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %362 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %363 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %364 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 3
  %365 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %366 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %367 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %368 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %369 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4
  %370 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4, i64 1
  %371 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %372 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %373 = getelementptr inbounds [2 x i64], ptr %29, i64 0, i64 1
  %374 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %375 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4
  %376 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4, i64 1
  %377 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %378 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %379 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %380 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %381 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5
  %382 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 1
  %383 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 2
  %384 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 5, i32 3
  %385 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  %386 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 9
  %387 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 9
  %388 = icmp sgt i32 %63, 24
  %389 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %22, i64 0, i32 4
  %390 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 8
  %391 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 4
  %392 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 8
  %393 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 4
  %394 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %395 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 3
  %396 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %397 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %398 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 3
  %399 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %22, i64 0, i32 4
  %400 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 8
  %401 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 6
  %402 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 8
  %403 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %404 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 16
  %405 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 15
  %406 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %407 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 17
  %408 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 2
  %409 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 18
  %410 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 17, i32 0, i64 3
  %411 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 18
  %412 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 18, i32 0, i64 3
  %413 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 18, i32 0, i64 2
  %414 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 18, i32 0, i64 1
  %415 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %416 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %417 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 6
  %418 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 7
  %419 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 3
  %420 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 4
  %421 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 1
  %422 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 31
  %423 = getelementptr inbounds %struct.gx_device_clist_reader_s, ptr %0, i64 0, i32 27, i32 1
  %424 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %32, i64 0, i32 1
  %425 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %33, i64 0, i32 1
  %426 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %33, i64 0, i32 2
  %427 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 6), align 8
  %428 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 1
  %429 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 7
  %430 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 10
  %431 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 12
  %432 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 13
  %433 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 15
  %434 = getelementptr inbounds %struct.stream_CFD_state_s, ptr %36, i64 0, i32 11
  %435 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 1), align 8
  %436 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 2), align 8
  %437 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_CFD_template, i64 0, i32 5), align 8
  %438 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %35, i64 0, i32 3
  %439 = getelementptr inbounds %struct.stream_RLD_state_s, ptr %35, i64 0, i32 4
  %440 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_RLD_template, i64 0, i32 2), align 8
  %441 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 2
  %442 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 2, i32 1
  %443 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 1
  %444 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 4
  %445 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 5
  %446 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 3
  %447 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 3
  %448 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 3, i32 1
  %449 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 3, i32 1
  %450 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 3
  %451 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 2
  %452 = getelementptr inbounds %struct.gx_clist_state_s, ptr %10, i64 0, i32 3, i32 1
  %453 = getelementptr inbounds %struct.gx_strip_bitmap_s, ptr %11, i64 0, i32 2, i32 1
  %454 = ptrtoint ptr %9 to i64
  %455 = getelementptr inbounds %struct.gs_imager_state_s, ptr %17, i64 0, i32 13
  %456 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %5, i64 0, i32 11
  %457 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 3
  %458 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 3, i32 0, i32 1
  %459 = getelementptr inbounds %struct.stream_s, ptr %1, i64 0, i32 7
  %460 = getelementptr inbounds i8, ptr %18, i64 20
  br label %461

461:                                              ; preds = %3711, %6
  %462 = phi i32 [ undef, %6 ], [ %3672, %3711 ]
  %463 = phi ptr [ undef, %6 ], [ %3673, %3711 ]
  %464 = phi i64 [ undef, %6 ], [ %3674, %3711 ]
  %465 = phi i64 [ undef, %6 ], [ %3675, %3711 ]
  %466 = phi ptr [ undef, %6 ], [ %3676, %3711 ]
  %467 = phi i32 [ undef, %6 ], [ %3677, %3711 ]
  %468 = phi i32 [ undef, %6 ], [ %3679, %3711 ]
  %469 = phi ptr [ undef, %6 ], [ %3680, %3711 ]
  %470 = phi i32 [ undef, %6 ], [ %3681, %3711 ]
  %471 = phi i32 [ undef, %6 ], [ %3682, %3711 ]
  %472 = phi i16 [ undef, %6 ], [ %3683, %3711 ]
  %473 = phi i16 [ undef, %6 ], [ %3684, %3711 ]
  %474 = phi i16 [ undef, %6 ], [ %3685, %3711 ]
  %475 = phi i16 [ undef, %6 ], [ %3686, %3711 ]
  %476 = phi i8 [ undef, %6 ], [ %3687, %3711 ]
  %477 = phi i8 [ undef, %6 ], [ %3688, %3711 ]
  %478 = phi i16 [ undef, %6 ], [ %3689, %3711 ]
  %479 = phi ptr [ undef, %6 ], [ %3690, %3711 ]
  %480 = phi i32 [ 0, %6 ], [ %3691, %3711 ]
  %481 = phi ptr [ %67, %6 ], [ %3692, %3711 ]
  %482 = phi ptr [ %66, %6 ], [ %3693, %3711 ]
  %483 = phi ptr [ %67, %6 ], [ %3694, %3711 ]
  %484 = phi ptr [ undef, %6 ], [ %3695, %3711 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %10, ptr noundef nonnull align 8 dereferenceable(112) @clist_render_band.cls_initial, i64 112, i1 false), !tbaa.struct !74
  store i64 0, ptr %68, align 8, !tbaa !75
  store i16 0, ptr %69, align 4, !tbaa !77
  store i16 0, ptr %70, align 2, !tbaa !78
  call void @gx_path_init(ptr noundef nonnull %12, ptr noundef %5) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %27) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %27, i8 0, i64 16, i1 false)
  %485 = load i32, ptr %71, align 8, !tbaa !79
  %486 = sext i32 %485 to i64
  store i64 %486, ptr %72, align 8, !tbaa !80
  %487 = load i32, ptr %73, align 4, !tbaa !83
  %488 = sext i32 %487 to i64
  store i64 %488, ptr %74, align 8, !tbaa !84
  %489 = call i32 @gx_cpath_from_rectangle(ptr noundef nonnull %13, ptr noundef nonnull %27, ptr noundef %5) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %27) #7
  %490 = load ptr, ptr %75, align 8, !tbaa !85
  call void %490(ptr noundef %2, ptr noundef nonnull %15) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %17, ptr noundef nonnull align 8 dereferenceable(320) @clist_imager_state_initial, i64 320, i1 false), !tbaa.struct !86
  store ptr %19, ptr %77, align 8, !tbaa !88
  %491 = call i32 @gs_imager_state_initialize(ptr noundef nonnull %17, ptr noundef %5) #7
  %492 = icmp slt i32 %491, 0
  br i1 %492, label %3671, label %493

493:                                              ; preds = %461
  store ptr null, ptr %78, align 8, !tbaa !93
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %22, i8 0, i64 168, i1 false)
  store ptr %22, ptr %81, align 8, !tbaa !94
  store ptr null, ptr %82, align 8, !tbaa !95
  call void @gx_set_cmap_procs(ptr noundef nonnull %17, ptr noundef %2) #7
  %494 = call i32 @gx_imager_setscreenphase(ptr noundef nonnull %17, i32 noundef %83, i32 noundef %84, i32 noundef -1) #7
  store i32 0, ptr %85, align 4, !tbaa !96
  %495 = call ptr @gs_color_space_DeviceGray() #7
  %496 = load ptr, ptr %5, align 8, !tbaa !98
  %497 = call ptr %496(ptr noundef nonnull %5, i32 noundef 800, ptr noundef nonnull @.str) #7
  %498 = icmp eq ptr %497, null
  br i1 %498, label %3671, label %499

499:                                              ; preds = %493
  %500 = getelementptr inbounds i8, ptr %497, i64 -1
  %501 = getelementptr inbounds i8, ptr %497, i64 799
  br label %502

502:                                              ; preds = %499, %3669
  %503 = phi ptr [ %483, %499 ], [ %3668, %3669 ]
  %504 = phi ptr [ %482, %499 ], [ %3667, %3669 ]
  %505 = phi ptr [ %481, %499 ], [ %3666, %3669 ]
  %506 = phi i32 [ %480, %499 ], [ %3665, %3669 ]
  %507 = phi ptr [ %2, %499 ], [ %3664, %3669 ]
  %508 = phi ptr [ %10, %499 ], [ %3663, %3669 ]
  %509 = phi ptr [ %479, %499 ], [ %3662, %3669 ]
  %510 = phi i16 [ %478, %499 ], [ %3661, %3669 ]
  %511 = phi i8 [ %477, %499 ], [ %3660, %3669 ]
  %512 = phi i8 [ %476, %499 ], [ %3659, %3669 ]
  %513 = phi i16 [ %475, %499 ], [ %3658, %3669 ]
  %514 = phi i16 [ %474, %499 ], [ %3657, %3669 ]
  %515 = phi i16 [ %473, %499 ], [ %3656, %3669 ]
  %516 = phi i16 [ %472, %499 ], [ %3655, %3669 ]
  %517 = phi i32 [ %471, %499 ], [ %3654, %3669 ]
  %518 = phi i32 [ 0, %499 ], [ %3653, %3669 ]
  %519 = phi i32 [ 0, %499 ], [ %3652, %3669 ]
  %520 = phi i32 [ 0, %499 ], [ %3651, %3669 ]
  %521 = phi i32 [ 0, %499 ], [ %3650, %3669 ]
  %522 = phi ptr [ null, %499 ], [ %3649, %3669 ]
  %523 = phi i32 [ %470, %499 ], [ %3648, %3669 ]
  %524 = phi i32 [ 0, %499 ], [ %3647, %3669 ]
  %525 = phi ptr [ %469, %499 ], [ %3646, %3669 ]
  %526 = phi i32 [ %468, %499 ], [ %3645, %3669 ]
  %527 = phi ptr [ %495, %499 ], [ %3644, %3669 ]
  %528 = phi i32 [ 0, %499 ], [ %3643, %3669 ]
  %529 = phi i32 [ 0, %499 ], [ %3642, %3669 ]
  %530 = phi i32 [ %491, %499 ], [ %3641, %3669 ]
  %531 = phi i32 [ %467, %499 ], [ %3640, %3669 ]
  %532 = phi ptr [ %466, %499 ], [ %3639, %3669 ]
  %533 = phi i64 [ %465, %499 ], [ %3637, %3669 ]
  %534 = phi i64 [ %464, %499 ], [ %3636, %3669 ]
  %535 = phi ptr [ %463, %499 ], [ %3635, %3669 ]
  %536 = phi i32 [ %462, %499 ], [ %3634, %3669 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28) #7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %29) #7
  %537 = icmp ult ptr %503, %504
  br i1 %537, label %564, label %538

538:                                              ; preds = %502
  %539 = icmp slt i32 %506, 0
  br i1 %539, label %540, label %545

540:                                              ; preds = %538
  %541 = icmp eq ptr %503, %505
  br i1 %541, label %542, label %564

542:                                              ; preds = %540
  %543 = icmp eq i32 %506, -1
  %544 = select i1 %543, i32 0, i32 -12
  br label %3633

545:                                              ; preds = %538
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30) #7
  %546 = ptrtoint ptr %505 to i64
  %547 = ptrtoint ptr %503 to i64
  %548 = sub i64 %546, %547
  %549 = getelementptr inbounds i8, ptr %9, i64 %548
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %9, ptr align 1 %503, i64 %548, i1 false)
  %550 = ptrtoint ptr %549 to i64
  %551 = sub i64 %546, %550
  %552 = trunc i64 %551 to i32
  store i32 %552, ptr %30, align 4, !tbaa !38
  %553 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %549, i32 noundef %552, ptr noundef nonnull %30) #7
  %554 = load i32, ptr %30, align 4, !tbaa !38
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %557

556:                                              ; preds = %545
  store i8 0, ptr %549, align 1, !tbaa !27
  store i32 1, ptr %30, align 4, !tbaa !38
  br label %557

557:                                              ; preds = %556, %545
  %558 = load i32, ptr %30, align 4, !tbaa !38
  %559 = zext i32 %558 to i64
  %560 = add nsw i64 %548, %559
  %561 = getelementptr inbounds i8, ptr %9, i64 %560
  %562 = icmp slt i64 %560, 751
  %563 = select i1 %562, ptr %561, ptr %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30) #7
  br label %564

564:                                              ; preds = %557, %540, %502
  %565 = phi i32 [ %506, %540 ], [ %553, %557 ], [ %506, %502 ]
  %566 = phi ptr [ %505, %540 ], [ %561, %557 ], [ %505, %502 ]
  %567 = phi ptr [ %504, %540 ], [ %563, %557 ], [ %504, %502 ]
  %568 = phi ptr [ %503, %540 ], [ %9, %557 ], [ %503, %502 ]
  %569 = getelementptr inbounds i8, ptr %568, i64 1
  %570 = load i8, ptr %568, align 1, !tbaa !27
  %571 = zext i8 %570 to i32
  %572 = lshr i32 %571, 4
  switch i32 %572, label %3441 [
    i32 0, label %573
    i32 1, label %1805
    i32 2, label %1803
    i32 3, label %1881
    i32 6, label %1881
    i32 4, label %1996
    i32 7, label %1996
    i32 5, label %2029
    i32 8, label %2029
    i32 9, label %2064
    i32 10, label %2054
    i32 11, label %2325
    i32 12, label %2330
    i32 13, label %2391
    i32 14, label %3104
    i32 15, label %3391
  ]

573:                                              ; preds = %564
  switch i8 %570, label %3442 [
    i8 0, label %3633
    i8 1, label %574
    i8 2, label %741
    i8 3, label %790
    i8 4, label %1021
    i8 5, label %1083
    i8 6, label %1084
    i8 7, label %1356
    i8 8, label %1358
    i8 9, label %1359
    i8 10, label %1638
    i8 11, label %1761
    i8 12, label %1764
    i8 13, label %1762
    i8 14, label %1801
    i8 15, label %1802
  ], !llvm.loop !101

574:                                              ; preds = %573
  %575 = getelementptr inbounds i8, ptr %568, i64 2
  %576 = load i8, ptr %569, align 1, !tbaa !27
  %577 = zext i8 %576 to i32
  %578 = and i32 %577, 31
  %579 = add nuw nsw i32 %578, 1
  %580 = load i8, ptr %575, align 1, !tbaa !27
  %581 = icmp sgt i8 %580, -1
  br i1 %581, label %582, label %585

582:                                              ; preds = %574
  %583 = zext nneg i8 %580 to i32
  %584 = getelementptr inbounds i8, ptr %568, i64 3
  br label %603

585:                                              ; preds = %574
  %586 = getelementptr inbounds i8, ptr %568, i64 3
  %587 = and i8 %580, 127
  %588 = zext nneg i8 %587 to i64
  br label %589

589:                                              ; preds = %589, %585
  %590 = phi i64 [ %600, %589 ], [ 7, %585 ]
  %591 = phi ptr [ %598, %589 ], [ %586, %585 ]
  %592 = phi i64 [ %597, %589 ], [ %588, %585 ]
  %593 = load i8, ptr %591, align 1, !tbaa !27
  %594 = and i8 %593, 127
  %595 = zext nneg i8 %594 to i64
  %596 = shl i64 %595, %590
  %597 = add nsw i64 %596, %592
  %598 = getelementptr inbounds i8, ptr %591, i64 1
  %599 = icmp slt i8 %593, 0
  %600 = add nuw i64 %590, 7
  br i1 %599, label %589, label %601, !llvm.loop !102

601:                                              ; preds = %589
  %602 = trunc i64 %597 to i32
  br label %603

603:                                              ; preds = %582, %601
  %604 = phi i32 [ %583, %582 ], [ %602, %601 ]
  %605 = phi ptr [ %584, %582 ], [ %598, %601 ]
  %606 = load i8, ptr %605, align 1, !tbaa !27
  %607 = icmp sgt i8 %606, -1
  br i1 %607, label %608, label %611

608:                                              ; preds = %603
  %609 = zext nneg i8 %606 to i32
  %610 = getelementptr inbounds i8, ptr %605, i64 1
  br label %629

611:                                              ; preds = %603
  %612 = getelementptr inbounds i8, ptr %605, i64 1
  %613 = and i8 %606, 127
  %614 = zext nneg i8 %613 to i64
  br label %615

615:                                              ; preds = %615, %611
  %616 = phi i64 [ %626, %615 ], [ 7, %611 ]
  %617 = phi ptr [ %624, %615 ], [ %612, %611 ]
  %618 = phi i64 [ %623, %615 ], [ %614, %611 ]
  %619 = load i8, ptr %617, align 1, !tbaa !27
  %620 = and i8 %619, 127
  %621 = zext nneg i8 %620 to i64
  %622 = shl i64 %621, %616
  %623 = add nsw i64 %622, %618
  %624 = getelementptr inbounds i8, ptr %617, i64 1
  %625 = icmp slt i8 %619, 0
  %626 = add nuw i64 %616, 7
  br i1 %625, label %615, label %627, !llvm.loop !102

627:                                              ; preds = %615
  %628 = trunc i64 %623 to i32
  br label %629

629:                                              ; preds = %627, %608
  %630 = phi i32 [ %609, %608 ], [ %628, %627 ]
  %631 = phi ptr [ %610, %608 ], [ %624, %627 ]
  %632 = and i32 %577, 32
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %660, label %634

634:                                              ; preds = %629
  %635 = load i8, ptr %631, align 1, !tbaa !27
  %636 = icmp sgt i8 %635, -1
  %637 = getelementptr inbounds i8, ptr %631, i64 1
  br i1 %636, label %655, label %638

638:                                              ; preds = %634
  %639 = and i8 %635, 127
  %640 = zext nneg i8 %639 to i64
  br label %641

641:                                              ; preds = %641, %638
  %642 = phi i64 [ %652, %641 ], [ 7, %638 ]
  %643 = phi ptr [ %650, %641 ], [ %637, %638 ]
  %644 = phi i64 [ %649, %641 ], [ %640, %638 ]
  %645 = load i8, ptr %643, align 1, !tbaa !27
  %646 = and i8 %645, 127
  %647 = zext nneg i8 %646 to i64
  %648 = shl i64 %647, %642
  %649 = add nsw i64 %648, %644
  %650 = getelementptr inbounds i8, ptr %643, i64 1
  %651 = icmp slt i8 %645, 0
  %652 = add nuw i64 %642, 7
  br i1 %651, label %641, label %653, !llvm.loop !102

653:                                              ; preds = %641
  %654 = trunc i64 %649 to i8
  br label %655

655:                                              ; preds = %634, %653
  %656 = phi i8 [ %654, %653 ], [ %635, %634 ]
  %657 = phi ptr [ %650, %653 ], [ %637, %634 ]
  %658 = zext i8 %656 to i32
  %659 = mul i32 %604, %658
  br label %660

660:                                              ; preds = %629, %655
  %661 = phi i32 [ %659, %655 ], [ %604, %629 ]
  %662 = phi i8 [ %656, %655 ], [ 1, %629 ]
  %663 = phi ptr [ %657, %655 ], [ %631, %629 ]
  %664 = trunc i32 %661 to i16
  %665 = and i32 %577, 64
  %666 = icmp eq i32 %665, 0
  br i1 %666, label %693, label %667

667:                                              ; preds = %660
  %668 = load i8, ptr %663, align 1, !tbaa !27
  %669 = icmp sgt i8 %668, -1
  %670 = getelementptr inbounds i8, ptr %663, i64 1
  br i1 %669, label %688, label %671

671:                                              ; preds = %667
  %672 = and i8 %668, 127
  %673 = zext nneg i8 %672 to i64
  br label %674

674:                                              ; preds = %674, %671
  %675 = phi i64 [ %685, %674 ], [ 7, %671 ]
  %676 = phi ptr [ %683, %674 ], [ %670, %671 ]
  %677 = phi i64 [ %682, %674 ], [ %673, %671 ]
  %678 = load i8, ptr %676, align 1, !tbaa !27
  %679 = and i8 %678, 127
  %680 = zext nneg i8 %679 to i64
  %681 = shl i64 %680, %675
  %682 = add nsw i64 %681, %677
  %683 = getelementptr inbounds i8, ptr %676, i64 1
  %684 = icmp slt i8 %678, 0
  %685 = add nuw i64 %675, 7
  br i1 %684, label %674, label %686, !llvm.loop !102

686:                                              ; preds = %674
  %687 = trunc i64 %682 to i8
  br label %688

688:                                              ; preds = %667, %686
  %689 = phi i8 [ %687, %686 ], [ %668, %667 ]
  %690 = phi ptr [ %683, %686 ], [ %670, %667 ]
  %691 = zext i8 %689 to i32
  %692 = mul i32 %630, %691
  br label %693

693:                                              ; preds = %660, %688
  %694 = phi i32 [ %692, %688 ], [ %630, %660 ]
  %695 = phi i8 [ %689, %688 ], [ 1, %660 ]
  %696 = phi ptr [ %690, %688 ], [ %663, %660 ]
  %697 = trunc i32 %694 to i16
  %698 = icmp sgt i8 %576, -1
  br i1 %698, label %722, label %699

699:                                              ; preds = %693
  %700 = load i8, ptr %696, align 1, !tbaa !27
  %701 = icmp sgt i8 %700, -1
  %702 = getelementptr inbounds i8, ptr %696, i64 1
  br i1 %701, label %703, label %705

703:                                              ; preds = %699
  %704 = zext nneg i8 %700 to i16
  br label %722

705:                                              ; preds = %699
  %706 = and i8 %700, 127
  %707 = zext nneg i8 %706 to i64
  br label %708

708:                                              ; preds = %708, %705
  %709 = phi i64 [ %719, %708 ], [ 7, %705 ]
  %710 = phi ptr [ %717, %708 ], [ %702, %705 ]
  %711 = phi i64 [ %716, %708 ], [ %707, %705 ]
  %712 = load i8, ptr %710, align 1, !tbaa !27
  %713 = and i8 %712, 127
  %714 = zext nneg i8 %713 to i64
  %715 = shl i64 %714, %709
  %716 = add nsw i64 %715, %711
  %717 = getelementptr inbounds i8, ptr %710, i64 1
  %718 = icmp slt i8 %712, 0
  %719 = add nuw i64 %709, 7
  br i1 %718, label %708, label %720, !llvm.loop !102

720:                                              ; preds = %708
  %721 = trunc i64 %716 to i16
  br label %722

722:                                              ; preds = %693, %720, %703
  %723 = phi i16 [ %704, %703 ], [ %721, %720 ], [ 0, %693 ]
  %724 = phi ptr [ %702, %703 ], [ %717, %720 ], [ %696, %693 ]
  %725 = icmp eq i16 %723, 0
  br i1 %725, label %732, label %726

726:                                              ; preds = %722
  %727 = zext i16 %723 to i32
  %728 = and i32 %694, 65535
  %729 = udiv i32 %728, %630
  %730 = mul nuw i32 %729, %727
  %731 = urem i32 %730, %604
  br label %732

732:                                              ; preds = %722, %726
  %733 = phi i32 [ %731, %726 ], [ 0, %722 ]
  %734 = trunc i32 %733 to i16
  %735 = and i32 %661, 65535
  %736 = mul nuw nsw i32 %735, %579
  %737 = add nuw nsw i32 %736, 63
  %738 = lshr i32 %737, 3
  %739 = trunc i32 %738 to i16
  %740 = and i16 %739, -8
  br label %3633, !llvm.loop !101

741:                                              ; preds = %573
  %742 = load i8, ptr %569, align 1, !tbaa !27
  %743 = icmp sgt i8 %742, -1
  br i1 %743, label %744, label %747

744:                                              ; preds = %741
  %745 = zext nneg i8 %742 to i32
  %746 = getelementptr inbounds i8, ptr %568, i64 2
  store i32 %745, ptr %447, align 8, !tbaa !103
  br label %765

747:                                              ; preds = %741
  %748 = getelementptr inbounds i8, ptr %568, i64 2
  %749 = and i8 %742, 127
  %750 = zext nneg i8 %749 to i64
  br label %751

751:                                              ; preds = %751, %747
  %752 = phi i64 [ %762, %751 ], [ 7, %747 ]
  %753 = phi ptr [ %760, %751 ], [ %748, %747 ]
  %754 = phi i64 [ %759, %751 ], [ %750, %747 ]
  %755 = load i8, ptr %753, align 1, !tbaa !27
  %756 = and i8 %755, 127
  %757 = zext nneg i8 %756 to i64
  %758 = shl i64 %757, %752
  %759 = add nsw i64 %758, %754
  %760 = getelementptr inbounds i8, ptr %753, i64 1
  %761 = icmp slt i8 %755, 0
  %762 = add nuw i64 %752, 7
  br i1 %761, label %751, label %763, !llvm.loop !102

763:                                              ; preds = %751
  %764 = trunc i64 %759 to i32
  store i32 %764, ptr %446, align 8, !tbaa !103
  br label %765

765:                                              ; preds = %744, %763
  %766 = phi ptr [ %746, %744 ], [ %760, %763 ]
  %767 = load i8, ptr %766, align 1, !tbaa !27
  %768 = icmp sgt i8 %767, -1
  br i1 %768, label %769, label %772

769:                                              ; preds = %765
  %770 = zext nneg i8 %767 to i32
  %771 = getelementptr inbounds i8, ptr %766, i64 1
  store i32 %770, ptr %449, align 4, !tbaa !107
  br label %2374

772:                                              ; preds = %765
  %773 = getelementptr inbounds i8, ptr %766, i64 1
  %774 = and i8 %767, 127
  %775 = zext nneg i8 %774 to i64
  br label %776

776:                                              ; preds = %776, %772
  %777 = phi i64 [ %787, %776 ], [ 7, %772 ]
  %778 = phi ptr [ %785, %776 ], [ %773, %772 ]
  %779 = phi i64 [ %784, %776 ], [ %775, %772 ]
  %780 = load i8, ptr %778, align 1, !tbaa !27
  %781 = and i8 %780, 127
  %782 = zext nneg i8 %781 to i64
  %783 = shl i64 %782, %777
  %784 = add nsw i64 %783, %779
  %785 = getelementptr inbounds i8, ptr %778, i64 1
  %786 = icmp slt i8 %780, 0
  %787 = add nuw i64 %777, 7
  br i1 %786, label %776, label %788, !llvm.loop !102

788:                                              ; preds = %776
  %789 = trunc i64 %784 to i32
  store i32 %789, ptr %448, align 4, !tbaa !107
  br label %2374

790:                                              ; preds = %573, %1074
  %791 = phi i32 [ %1026, %1074 ], [ %517, %573 ]
  %792 = phi i16 [ %1050, %1074 ], [ %516, %573 ]
  %793 = phi i16 [ %1075, %1074 ], [ %515, %573 ]
  %794 = phi i16 [ 0, %1074 ], [ %514, %573 ]
  %795 = phi i16 [ %1082, %1074 ], [ %513, %573 ]
  %796 = phi i8 [ 1, %1074 ], [ %512, %573 ]
  %797 = phi i8 [ 1, %1074 ], [ %511, %573 ]
  %798 = phi i16 [ 0, %1074 ], [ %510, %573 ]
  %799 = phi i32 [ %1024, %1074 ], [ 0, %573 ]
  %800 = phi ptr [ %1076, %1074 ], [ %569, %573 ]
  %801 = zext i16 %792 to i32
  %802 = zext i8 %796 to i32
  %803 = udiv i32 %801, %802
  %804 = zext i16 %793 to i32
  %805 = zext i8 %797 to i32
  %806 = udiv i32 %804, %805
  %807 = mul i32 %803, %791
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31) #7
  %808 = icmp ult i32 %803, %801
  %809 = select i1 %808, i32 512, i32 0
  %810 = or disjoint i32 %799, %809
  %811 = or disjoint i32 %810, 256
  %812 = call i32 @clist_bitmap_bytes(i32 noundef %807, i32 noundef %806, i32 noundef %811, ptr noundef nonnull %31, ptr noundef nonnull %28) #7
  %813 = load i8, ptr %800, align 1, !tbaa !27
  %814 = icmp sgt i8 %813, -1
  br i1 %814, label %815, label %818

815:                                              ; preds = %790
  %816 = zext nneg i8 %813 to i32
  %817 = getelementptr inbounds i8, ptr %800, i64 1
  br label %836

818:                                              ; preds = %790
  %819 = getelementptr inbounds i8, ptr %800, i64 1
  %820 = and i8 %813, 127
  %821 = zext nneg i8 %820 to i64
  br label %822

822:                                              ; preds = %822, %818
  %823 = phi i64 [ %833, %822 ], [ 7, %818 ]
  %824 = phi ptr [ %831, %822 ], [ %819, %818 ]
  %825 = phi i64 [ %830, %822 ], [ %821, %818 ]
  %826 = load i8, ptr %824, align 1, !tbaa !27
  %827 = and i8 %826, 127
  %828 = zext nneg i8 %827 to i64
  %829 = shl i64 %828, %823
  %830 = add nsw i64 %829, %825
  %831 = getelementptr inbounds i8, ptr %824, i64 1
  %832 = icmp slt i8 %826, 0
  %833 = add nuw i64 %823, 7
  br i1 %832, label %822, label %834, !llvm.loop !102

834:                                              ; preds = %822
  %835 = trunc i64 %830 to i32
  br label %836

836:                                              ; preds = %815, %834
  %837 = phi i32 [ %816, %815 ], [ %835, %834 ]
  %838 = phi ptr [ %817, %815 ], [ %831, %834 ]
  %839 = load i8, ptr %838, align 1, !tbaa !27
  %840 = icmp sgt i8 %839, -1
  %841 = getelementptr inbounds i8, ptr %838, i64 1
  br i1 %840, label %842, label %844

842:                                              ; preds = %836
  %843 = zext nneg i8 %839 to i64
  br label %859

844:                                              ; preds = %836
  %845 = and i8 %839, 127
  %846 = zext nneg i8 %845 to i64
  br label %847

847:                                              ; preds = %847, %844
  %848 = phi i64 [ %858, %847 ], [ 7, %844 ]
  %849 = phi ptr [ %856, %847 ], [ %841, %844 ]
  %850 = phi i64 [ %855, %847 ], [ %846, %844 ]
  %851 = load i8, ptr %849, align 1, !tbaa !27
  %852 = and i8 %851, 127
  %853 = zext nneg i8 %852 to i64
  %854 = shl i64 %853, %848
  %855 = add nsw i64 %854, %850
  %856 = getelementptr inbounds i8, ptr %849, i64 1
  %857 = icmp slt i8 %851, 0
  %858 = add nuw i64 %848, 7
  br i1 %857, label %847, label %859, !llvm.loop !102

859:                                              ; preds = %847, %842
  %860 = phi i64 [ %843, %842 ], [ %855, %847 ]
  %861 = phi ptr [ %841, %842 ], [ %856, %847 ]
  store i32 %837, ptr %421, align 8, !tbaa !108
  %862 = load ptr, ptr %422, align 8, !tbaa !109
  %863 = zext i32 %837 to i64
  %864 = getelementptr inbounds %struct.tile_hash, ptr %862, i64 %863
  store i64 %860, ptr %864, align 8, !tbaa !110
  %865 = load ptr, ptr %423, align 8, !tbaa !112
  %866 = getelementptr inbounds i8, ptr %865, i64 %860
  %867 = getelementptr inbounds i8, ptr %866, i64 4
  store i32 %791, ptr %867, align 4, !tbaa.struct !113
  %868 = getelementptr inbounds i8, ptr %866, i64 8
  store i16 %792, ptr %868, align 8, !tbaa.struct !114
  %869 = getelementptr inbounds i8, ptr %866, i64 10
  store i16 %793, ptr %869, align 2, !tbaa.struct !115
  %870 = getelementptr inbounds i8, ptr %866, i64 12
  store i16 %794, ptr %870, align 4, !tbaa.struct !116
  %871 = getelementptr inbounds i8, ptr %866, i64 14
  store i16 %795, ptr %871, align 2, !tbaa.struct !117
  %872 = getelementptr inbounds i8, ptr %866, i64 24
  store i8 %796, ptr %872, align 8, !tbaa.struct !118
  %873 = getelementptr inbounds i8, ptr %866, i64 25
  store i8 %797, ptr %873, align 1, !tbaa.struct !119
  %874 = getelementptr inbounds i8, ptr %866, i64 26
  store i16 %798, ptr %874, align 2, !tbaa.struct !120
  %875 = getelementptr inbounds %struct.tile_slot, ptr %866, i64 1
  store ptr %875, ptr %11, align 8, !tbaa !121
  %876 = icmp eq i32 %799, 0
  br i1 %876, label %918, label %877

877:                                              ; preds = %859
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %32) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %33) #7
  %878 = ptrtoint ptr %566 to i64
  %879 = ptrtoint ptr %861 to i64
  %880 = sub i64 %878, %879
  %881 = trunc i64 %880 to i32
  %882 = icmp ugt i32 %812, %881
  br i1 %882, label %883, label %894

883:                                              ; preds = %877
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34) #7
  %884 = sub i32 800, %881
  store i32 %884, ptr %34, align 4, !tbaa !38
  %885 = and i64 %880, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %9, ptr nonnull align 1 %861, i64 %885, i1 false)
  %886 = getelementptr inbounds i8, ptr %9, i64 %885
  %887 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %886, i32 noundef %884, ptr noundef nonnull %34) #7
  %888 = load i32, ptr %34, align 4, !tbaa !38
  %889 = zext i32 %888 to i64
  %890 = add nuw nsw i64 %885, %889
  %891 = getelementptr inbounds i8, ptr %9, i64 %890
  %892 = icmp ult i64 %890, 751
  %893 = select i1 %892, ptr %891, ptr %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34) #7
  br label %894

894:                                              ; preds = %883, %877
  %895 = phi i32 [ %887, %883 ], [ %565, %877 ]
  %896 = phi ptr [ %891, %883 ], [ %566, %877 ]
  %897 = phi ptr [ %893, %883 ], [ %567, %877 ]
  %898 = phi ptr [ %9, %883 ], [ %861, %877 ]
  %899 = getelementptr inbounds i8, ptr %898, i64 -1
  store ptr %899, ptr %32, align 8, !tbaa !122
  %900 = getelementptr inbounds i8, ptr %896, i64 -1
  store ptr %900, ptr %424, align 8, !tbaa !124
  %901 = getelementptr inbounds i8, ptr %866, i64 31
  store ptr %901, ptr %425, align 8, !tbaa !15
  %902 = zext i32 %812 to i64
  %903 = getelementptr inbounds i8, ptr %901, i64 %902
  store ptr %903, ptr %426, align 8, !tbaa !17
  switch i32 %799, label %914 [
    i32 1, label %904
    i32 2, label %906
  ]

904:                                              ; preds = %894
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %35) #7
  store i32 1, ptr %438, align 8, !tbaa !125
  store i32 0, ptr %439, align 4, !tbaa !127
  %905 = call i32 %440(ptr noundef nonnull %35, ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %35) #7
  br label %911

906:                                              ; preds = %894
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %36) #7
  call void %427(ptr noundef nonnull %36) #7
  store ptr @gs_memory_default, ptr %428, align 8, !tbaa !128
  store i32 -1, ptr %429, align 8, !tbaa !130
  %907 = load i32, ptr %31, align 4, !tbaa !38
  %908 = shl i32 %907, 3
  store i32 %908, ptr %430, align 4, !tbaa !131
  store i32 0, ptr %431, align 4, !tbaa !132
  store i32 1, ptr %432, align 8, !tbaa !133
  store i32 8, ptr %433, align 8, !tbaa !134
  store i32 %806, ptr %434, align 8, !tbaa !135
  %909 = call i32 %435(ptr noundef nonnull %36) #7
  %910 = call i32 %436(ptr noundef nonnull %36, ptr noundef nonnull %32, ptr noundef nonnull %33, i32 noundef 1) #7
  call void %437(ptr noundef nonnull %36) #7
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %36) #7
  br label %911

911:                                              ; preds = %906, %904
  %912 = load ptr, ptr %32, align 8, !tbaa !122
  %913 = getelementptr inbounds i8, ptr %912, i64 1
  br label %914

914:                                              ; preds = %894, %911
  %915 = phi i1 [ true, %911 ], [ false, %894 ]
  %916 = phi i32 [ 0, %911 ], [ 39, %894 ]
  %917 = phi ptr [ %913, %911 ], [ %898, %894 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %33) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %32) #7
  br i1 %915, label %1003, label %1015

918:                                              ; preds = %859
  %919 = icmp ugt i32 %806, 1
  br i1 %919, label %920, label %988

920:                                              ; preds = %918
  %921 = load i32, ptr %31, align 4, !tbaa !38
  %922 = zext i16 %795 to i32
  %923 = icmp eq i32 %921, %922
  br i1 %923, label %988, label %924

924:                                              ; preds = %920
  %925 = ptrtoint ptr %566 to i64
  %926 = ptrtoint ptr %861 to i64
  %927 = sub i64 %925, %926
  %928 = mul i32 %921, %806
  %929 = zext i32 %928 to i64
  %930 = icmp slt i64 %927, %929
  br i1 %930, label %936, label %931

931:                                              ; preds = %924
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %875, ptr nonnull align 1 %861, i64 %929, i1 false)
  %932 = load i32, ptr %31, align 4, !tbaa !38
  %933 = mul i32 %932, %806
  %934 = zext i32 %933 to i64
  %935 = getelementptr inbounds i8, ptr %861, i64 %934
  br label %943

936:                                              ; preds = %924
  %937 = trunc i64 %927 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37) #7
  %938 = sub i32 %928, %937
  store i32 %938, ptr %37, align 4, !tbaa !38
  %939 = and i64 %927, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %875, ptr nonnull align 1 %861, i64 %939, i1 false)
  %940 = getelementptr inbounds i8, ptr %875, i64 %939
  %941 = load i32, ptr %37, align 4, !tbaa !38
  %942 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %940, i32 noundef %941, ptr noundef nonnull %37) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37) #7
  br label %943

943:                                              ; preds = %936, %931
  %944 = phi ptr [ %935, %931 ], [ %566, %936 ]
  %945 = load i32, ptr %31, align 4, !tbaa !38
  %946 = mul nuw i32 %806, %922
  %947 = zext i32 %946 to i64
  %948 = getelementptr inbounds i8, ptr %875, i64 %947
  %949 = mul nsw i32 %945, %806
  %950 = zext i32 %949 to i64
  %951 = getelementptr inbounds i8, ptr %875, i64 %950
  %952 = zext i16 %795 to i64
  %953 = sub nsw i64 0, %952
  %954 = sext i32 %945 to i64
  %955 = sub nsw i64 0, %954
  br label %956

956:                                              ; preds = %986, %943
  %957 = phi i32 [ %806, %943 ], [ %960, %986 ]
  %958 = phi ptr [ %948, %943 ], [ %961, %986 ]
  %959 = phi ptr [ %951, %943 ], [ %962, %986 ]
  %960 = add nsw i32 %957, -1
  %961 = getelementptr inbounds i8, ptr %958, i64 %953
  %962 = getelementptr inbounds i8, ptr %959, i64 %955
  switch i32 %945, label %963 [
    i32 6, label %964
    i32 5, label %968
    i32 4, label %972
    i32 3, label %976
    i32 2, label %980
    i32 1, label %984
    i32 0, label %986
  ]

963:                                              ; preds = %956
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %961, ptr align 1 %962, i64 %954, i1 false)
  br label %986

964:                                              ; preds = %956
  %965 = getelementptr inbounds i8, ptr %962, i64 5
  %966 = load i8, ptr %965, align 1, !tbaa !27
  %967 = getelementptr inbounds i8, ptr %961, i64 5
  store i8 %966, ptr %967, align 1, !tbaa !27
  br label %968

968:                                              ; preds = %964, %956
  %969 = getelementptr inbounds i8, ptr %962, i64 4
  %970 = load i8, ptr %969, align 1, !tbaa !27
  %971 = getelementptr inbounds i8, ptr %961, i64 4
  store i8 %970, ptr %971, align 1, !tbaa !27
  br label %972

972:                                              ; preds = %968, %956
  %973 = getelementptr inbounds i8, ptr %962, i64 3
  %974 = load i8, ptr %973, align 1, !tbaa !27
  %975 = getelementptr inbounds i8, ptr %961, i64 3
  store i8 %974, ptr %975, align 1, !tbaa !27
  br label %976

976:                                              ; preds = %972, %956
  %977 = getelementptr inbounds i8, ptr %962, i64 2
  %978 = load i8, ptr %977, align 1, !tbaa !27
  %979 = getelementptr inbounds i8, ptr %961, i64 2
  store i8 %978, ptr %979, align 1, !tbaa !27
  br label %980

980:                                              ; preds = %976, %956
  %981 = getelementptr inbounds i8, ptr %962, i64 1
  %982 = load i8, ptr %981, align 1, !tbaa !27
  %983 = getelementptr inbounds i8, ptr %961, i64 1
  store i8 %982, ptr %983, align 1, !tbaa !27
  br label %984

984:                                              ; preds = %980, %956
  %985 = load i8, ptr %962, align 1, !tbaa !27
  store i8 %985, ptr %961, align 1, !tbaa !27
  br label %986

986:                                              ; preds = %984, %963, %956
  %987 = icmp sgt i32 %957, 1
  br i1 %987, label %956, label %1003, !llvm.loop !136

988:                                              ; preds = %920, %918
  %989 = ptrtoint ptr %566 to i64
  %990 = ptrtoint ptr %861 to i64
  %991 = sub i64 %989, %990
  %992 = zext i32 %812 to i64
  %993 = icmp slt i64 %991, %992
  br i1 %993, label %996, label %994

994:                                              ; preds = %988
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %875, ptr nonnull align 1 %861, i64 %992, i1 false)
  %995 = getelementptr inbounds i8, ptr %861, i64 %992
  br label %1003

996:                                              ; preds = %988
  %997 = trunc i64 %991 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %38) #7
  %998 = sub i32 %812, %997
  store i32 %998, ptr %38, align 4, !tbaa !38
  %999 = and i64 %991, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %875, ptr nonnull align 1 %861, i64 %999, i1 false)
  %1000 = getelementptr inbounds i8, ptr %875, i64 %999
  %1001 = load i32, ptr %38, align 4, !tbaa !38
  %1002 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %1000, i32 noundef %1001, ptr noundef nonnull %38) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %38) #7
  br label %1003

1003:                                             ; preds = %986, %996, %994, %914
  %1004 = phi i32 [ %895, %914 ], [ %565, %994 ], [ %565, %996 ], [ %565, %986 ]
  %1005 = phi ptr [ %896, %914 ], [ %566, %994 ], [ %566, %996 ], [ %566, %986 ]
  %1006 = phi ptr [ %897, %914 ], [ %567, %994 ], [ %567, %996 ], [ %567, %986 ]
  %1007 = phi ptr [ %917, %914 ], [ %995, %994 ], [ %566, %996 ], [ %944, %986 ]
  br i1 %808, label %1008, label %1011

1008:                                             ; preds = %1003
  %1009 = zext i16 %795 to i32
  %1010 = mul i32 %791, %801
  call void @bits_replicate_horizontally(ptr noundef nonnull %875, i32 noundef %807, i32 noundef %806, i32 noundef %1009, i32 noundef %1010, i32 noundef %1009) #7
  br label %1011

1011:                                             ; preds = %1008, %1003
  %1012 = icmp ult i32 %806, %804
  br i1 %1012, label %1013, label %1015

1013:                                             ; preds = %1011
  %1014 = zext i16 %795 to i32
  call void @bits_replicate_vertically(ptr noundef nonnull %875, i32 noundef %806, i32 noundef %1014, i32 noundef %804) #7
  br label %1015

1015:                                             ; preds = %1011, %1013, %914
  %1016 = phi i32 [ %916, %914 ], [ 0, %1013 ], [ 0, %1011 ]
  %1017 = phi i32 [ %895, %914 ], [ %1004, %1013 ], [ %1004, %1011 ]
  %1018 = phi ptr [ %896, %914 ], [ %1005, %1013 ], [ %1005, %1011 ]
  %1019 = phi ptr [ %897, %914 ], [ %1006, %1013 ], [ %1006, %1011 ]
  %1020 = phi ptr [ %917, %914 ], [ %1007, %1013 ], [ %1007, %1011 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31) #7
  switch i32 %1016, label %3633 [
    i32 0, label %2347
    i32 39, label %3442
  ]

1021:                                             ; preds = %573
  %1022 = load i8, ptr %569, align 1, !tbaa !27
  %1023 = zext i8 %1022 to i32
  %1024 = and i32 %1023, 3
  %1025 = getelementptr inbounds i8, ptr %568, i64 2
  %1026 = lshr i32 %1023, 2
  %1027 = load i8, ptr %1025, align 1, !tbaa !27
  %1028 = icmp sgt i8 %1027, -1
  %1029 = getelementptr inbounds i8, ptr %568, i64 3
  br i1 %1028, label %1030, label %1032

1030:                                             ; preds = %1021
  %1031 = zext nneg i8 %1027 to i16
  br label %1049

1032:                                             ; preds = %1021
  %1033 = and i8 %1027, 127
  %1034 = zext nneg i8 %1033 to i64
  br label %1035

1035:                                             ; preds = %1035, %1032
  %1036 = phi i64 [ %1046, %1035 ], [ 7, %1032 ]
  %1037 = phi ptr [ %1044, %1035 ], [ %1029, %1032 ]
  %1038 = phi i64 [ %1043, %1035 ], [ %1034, %1032 ]
  %1039 = load i8, ptr %1037, align 1, !tbaa !27
  %1040 = and i8 %1039, 127
  %1041 = zext nneg i8 %1040 to i64
  %1042 = shl i64 %1041, %1036
  %1043 = add nsw i64 %1042, %1038
  %1044 = getelementptr inbounds i8, ptr %1037, i64 1
  %1045 = icmp slt i8 %1039, 0
  %1046 = add nuw i64 %1036, 7
  br i1 %1045, label %1035, label %1047, !llvm.loop !102

1047:                                             ; preds = %1035
  %1048 = trunc i64 %1043 to i16
  br label %1049

1049:                                             ; preds = %1030, %1047
  %1050 = phi i16 [ %1031, %1030 ], [ %1048, %1047 ]
  %1051 = phi ptr [ %1029, %1030 ], [ %1044, %1047 ]
  %1052 = load i8, ptr %1051, align 1, !tbaa !27
  %1053 = icmp sgt i8 %1052, -1
  %1054 = getelementptr inbounds i8, ptr %1051, i64 1
  br i1 %1053, label %1055, label %1057

1055:                                             ; preds = %1049
  %1056 = zext nneg i8 %1052 to i16
  br label %1074

1057:                                             ; preds = %1049
  %1058 = and i8 %1052, 127
  %1059 = zext nneg i8 %1058 to i64
  br label %1060

1060:                                             ; preds = %1060, %1057
  %1061 = phi i64 [ %1071, %1060 ], [ 7, %1057 ]
  %1062 = phi ptr [ %1069, %1060 ], [ %1054, %1057 ]
  %1063 = phi i64 [ %1068, %1060 ], [ %1059, %1057 ]
  %1064 = load i8, ptr %1062, align 1, !tbaa !27
  %1065 = and i8 %1064, 127
  %1066 = zext nneg i8 %1065 to i64
  %1067 = shl i64 %1066, %1061
  %1068 = add nsw i64 %1067, %1063
  %1069 = getelementptr inbounds i8, ptr %1062, i64 1
  %1070 = icmp slt i8 %1064, 0
  %1071 = add nuw i64 %1061, 7
  br i1 %1070, label %1060, label %1072, !llvm.loop !102

1072:                                             ; preds = %1060
  %1073 = trunc i64 %1068 to i16
  br label %1074

1074:                                             ; preds = %1055, %1072
  %1075 = phi i16 [ %1056, %1055 ], [ %1073, %1072 ]
  %1076 = phi ptr [ %1054, %1055 ], [ %1069, %1072 ]
  %1077 = zext i16 %1050 to i32
  %1078 = mul nuw nsw i32 %1026, %1077
  %1079 = add nuw nsw i32 %1078, 63
  %1080 = lshr i32 %1079, 3
  %1081 = trunc i32 %1080 to i16
  %1082 = and i16 %1081, -8
  br label %790

1083:                                             ; preds = %573
  br label %3633, !llvm.loop !101

1084:                                             ; preds = %573
  %1085 = getelementptr inbounds i8, ptr %568, i64 2
  %1086 = load i8, ptr %569, align 1, !tbaa !27
  %1087 = zext i8 %1086 to i32
  %1088 = lshr i32 %1087, 6
  switch i32 %1088, label %3441 [
    i32 0, label %1089
    i32 1, label %1122
    i32 2, label %1155
    i32 3, label %1265
  ]

1089:                                             ; preds = %1084
  %1090 = load i8, ptr %1085, align 1, !tbaa !27
  %1091 = icmp sgt i8 %1090, -1
  br i1 %1091, label %1092, label %1095

1092:                                             ; preds = %1089
  %1093 = zext nneg i8 %1090 to i32
  %1094 = getelementptr inbounds i8, ptr %568, i64 3
  store i32 %1093, ptr %416, align 8, !tbaa !137
  br label %1113

1095:                                             ; preds = %1089
  %1096 = getelementptr inbounds i8, ptr %568, i64 3
  %1097 = and i8 %1090, 127
  %1098 = zext nneg i8 %1097 to i64
  br label %1099

1099:                                             ; preds = %1099, %1095
  %1100 = phi i64 [ %1110, %1099 ], [ 7, %1095 ]
  %1101 = phi ptr [ %1108, %1099 ], [ %1096, %1095 ]
  %1102 = phi i64 [ %1107, %1099 ], [ %1098, %1095 ]
  %1103 = load i8, ptr %1101, align 1, !tbaa !27
  %1104 = and i8 %1103, 127
  %1105 = zext nneg i8 %1104 to i64
  %1106 = shl i64 %1105, %1100
  %1107 = add nsw i64 %1106, %1102
  %1108 = getelementptr inbounds i8, ptr %1101, i64 1
  %1109 = icmp slt i8 %1103, 0
  %1110 = add nuw i64 %1100, 7
  br i1 %1109, label %1099, label %1111, !llvm.loop !102

1111:                                             ; preds = %1099
  %1112 = trunc i64 %1107 to i32
  store i32 %1112, ptr %415, align 8, !tbaa !137
  br label %1113

1113:                                             ; preds = %1111, %1092
  %1114 = phi ptr [ %1094, %1092 ], [ %1108, %1111 ]
  %1115 = load i32, ptr %417, align 8, !tbaa !137
  %1116 = shl i32 %1115, 6
  %1117 = and i32 %1087, 63
  %1118 = or disjoint i32 %1116, %1117
  store i32 %1118, ptr %417, align 8, !tbaa !137
  %1119 = load i16, ptr %418, align 4, !tbaa !138
  %1120 = icmp eq i16 %1119, 0
  br i1 %1120, label %1346, label %1121

1121:                                             ; preds = %1113
  store i32 %1118, ptr %419, align 8, !tbaa !139
  br label %1346

1122:                                             ; preds = %1084
  %1123 = and i32 %1087, 32
  %1124 = icmp eq i32 %1123, 0
  br i1 %1124, label %1149, label %1125

1125:                                             ; preds = %1122
  %1126 = load i8, ptr %1085, align 1, !tbaa !27
  %1127 = icmp sgt i8 %1126, -1
  br i1 %1127, label %1128, label %1131

1128:                                             ; preds = %1125
  %1129 = zext nneg i8 %1126 to i32
  %1130 = getelementptr inbounds i8, ptr %568, i64 3
  br label %1149

1131:                                             ; preds = %1125
  %1132 = getelementptr inbounds i8, ptr %568, i64 3
  %1133 = and i8 %1126, 127
  %1134 = zext nneg i8 %1133 to i64
  br label %1135

1135:                                             ; preds = %1135, %1131
  %1136 = phi i64 [ %1146, %1135 ], [ 7, %1131 ]
  %1137 = phi ptr [ %1144, %1135 ], [ %1132, %1131 ]
  %1138 = phi i64 [ %1143, %1135 ], [ %1134, %1131 ]
  %1139 = load i8, ptr %1137, align 1, !tbaa !27
  %1140 = and i8 %1139, 127
  %1141 = zext nneg i8 %1140 to i64
  %1142 = shl i64 %1141, %1136
  %1143 = add nsw i64 %1142, %1138
  %1144 = getelementptr inbounds i8, ptr %1137, i64 1
  %1145 = icmp slt i8 %1139, 0
  %1146 = add nuw i64 %1136, 7
  br i1 %1145, label %1135, label %1147, !llvm.loop !102

1147:                                             ; preds = %1135
  %1148 = trunc i64 %1143 to i32
  br label %1149

1149:                                             ; preds = %1122, %1128, %1147
  %1150 = phi i32 [ %1129, %1128 ], [ %1148, %1147 ], [ 0, %1122 ]
  %1151 = phi ptr [ %1130, %1128 ], [ %1144, %1147 ], [ %1085, %1122 ]
  %1152 = shl i32 %1150, 5
  %1153 = and i32 %1087, 31
  %1154 = or disjoint i32 %1152, %1153
  br label %1346

1155:                                             ; preds = %1084
  %1156 = and i32 %1087, 31
  %1157 = and i32 %1087, 32
  switch i32 %1156, label %1239 [
    i32 0, label %1158
    i32 1, label %1160
    i32 2, label %1160
    i32 3, label %1160
    i32 4, label %1160
    i32 5, label %1192
    i32 6, label %1195
    i32 7, label %1194
  ]

1158:                                             ; preds = %1155
  %1159 = load ptr, ptr %410, align 8, !tbaa !27
  store ptr %1159, ptr %412, align 8, !tbaa !27
  store ptr %1159, ptr %413, align 8, !tbaa !27
  store ptr %1159, ptr %414, align 8, !tbaa !27
  store ptr %1159, ptr %411, align 8, !tbaa !27
  br label %1235

1160:                                             ; preds = %1155, %1155, %1155, %1155
  %1161 = add nsw i32 %1156, -1
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds [4 x ptr], ptr %407, i64 0, i64 %1162
  %1164 = load ptr, ptr %1163, align 8, !tbaa !27
  %1165 = icmp eq ptr %1164, null
  br i1 %1165, label %1173, label %1166

1166:                                             ; preds = %1160
  %1167 = load i64, ptr %1164, align 8, !tbaa !140
  %1168 = icmp sgt i64 %1167, 1
  br i1 %1168, label %1173, label %1169

1169:                                             ; preds = %1166
  %1170 = getelementptr inbounds %struct.rc_header_s, ptr %1164, i64 0, i32 1
  %1171 = load ptr, ptr %1170, align 8, !tbaa !143
  %1172 = icmp eq ptr %1171, %5
  br i1 %1172, label %1186, label %1173

1173:                                             ; preds = %1169, %1166, %1160
  %1174 = load ptr, ptr %408, align 8, !tbaa !144
  %1175 = call ptr %1174(ptr noundef %5, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull @.str.6) #7
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1189, label %1177

1177:                                             ; preds = %1173
  store i64 1, ptr %1175, align 8, !tbaa !140
  %1178 = getelementptr inbounds %struct.rc_header_s, ptr %1175, i64 0, i32 1
  store ptr %5, ptr %1178, align 8, !tbaa !143
  %1179 = getelementptr inbounds %struct.rc_header_s, ptr %1175, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %1179, align 8, !tbaa !145
  %1180 = load ptr, ptr %1163, align 8, !tbaa !27
  %1181 = icmp eq ptr %1180, null
  br i1 %1181, label %1185, label %1182

1182:                                             ; preds = %1177
  %1183 = load i64, ptr %1180, align 8, !tbaa !140
  %1184 = add nsw i64 %1183, -1
  store i64 %1184, ptr %1180, align 8, !tbaa !140
  br label %1185

1185:                                             ; preds = %1182, %1177
  store ptr %1175, ptr %1163, align 8, !tbaa !27
  br label %1186

1186:                                             ; preds = %1185, %1169
  %1187 = load ptr, ptr %1163, align 8, !tbaa !27
  %1188 = getelementptr inbounds [4 x ptr], ptr %409, i64 0, i64 %1162
  store ptr %1187, ptr %1188, align 8, !tbaa !27
  br label %1189

1189:                                             ; preds = %1186, %1173
  %1190 = phi ptr [ %1187, %1186 ], [ undef, %1173 ]
  %1191 = phi i1 [ true, %1186 ], [ false, %1173 ]
  br i1 %1191, label %1235, label %1239

1192:                                             ; preds = %1155
  %1193 = getelementptr inbounds %struct.gx_ht_order_s, ptr %525, i64 0, i32 13
  br label %1195

1194:                                             ; preds = %1155
  br label %1195

1195:                                             ; preds = %1155, %1194, %1192
  %1196 = phi ptr [ @.str.9, %1194 ], [ @.str.7, %1192 ], [ @.str.8, %1155 ]
  %1197 = phi ptr [ %404, %1194 ], [ %1193, %1192 ], [ %405, %1155 ]
  %1198 = icmp eq i32 %1157, 0
  %1199 = load ptr, ptr %1197, align 8, !tbaa !55
  %1200 = icmp eq ptr %1199, null
  br i1 %1198, label %1201, label %1212

1201:                                             ; preds = %1195
  br i1 %1200, label %1211, label %1202

1202:                                             ; preds = %1201
  %1203 = load i64, ptr %1199, align 8, !tbaa !140
  %1204 = add nsw i64 %1203, -1
  store i64 %1204, ptr %1199, align 8, !tbaa !140
  %1205 = icmp eq i64 %1204, 0
  br i1 %1205, label %1206, label %1211

1206:                                             ; preds = %1202
  %1207 = getelementptr inbounds %struct.rc_header_s, ptr %1199, i64 0, i32 2
  %1208 = load ptr, ptr %1207, align 8, !tbaa !145
  %1209 = getelementptr inbounds %struct.rc_header_s, ptr %1199, i64 0, i32 1
  %1210 = load ptr, ptr %1209, align 8, !tbaa !143
  call void %1208(ptr noundef %1210, ptr noundef nonnull %1199, ptr noundef nonnull %1196) #7
  store ptr null, ptr %1197, align 8, !tbaa !55
  br label %1211

1211:                                             ; preds = %1206, %1202, %1201
  store ptr null, ptr %1197, align 8, !tbaa !55
  br label %1239

1212:                                             ; preds = %1195
  br i1 %1200, label %1220, label %1213

1213:                                             ; preds = %1212
  %1214 = load i64, ptr %1199, align 8, !tbaa !140
  %1215 = icmp sgt i64 %1214, 1
  br i1 %1215, label %1220, label %1216

1216:                                             ; preds = %1213
  %1217 = getelementptr inbounds %struct.rc_header_s, ptr %1199, i64 0, i32 1
  %1218 = load ptr, ptr %1217, align 8, !tbaa !143
  %1219 = icmp eq ptr %1218, %5
  br i1 %1219, label %1233, label %1220

1220:                                             ; preds = %1216, %1213, %1212
  %1221 = load ptr, ptr %406, align 8, !tbaa !144
  %1222 = call ptr %1221(ptr noundef %5, ptr noundef nonnull @st_transfer_map, ptr noundef nonnull %1196) #7
  %1223 = icmp eq ptr %1222, null
  br i1 %1223, label %1239, label %1224

1224:                                             ; preds = %1220
  store i64 1, ptr %1222, align 8, !tbaa !140
  %1225 = getelementptr inbounds %struct.rc_header_s, ptr %1222, i64 0, i32 1
  store ptr %5, ptr %1225, align 8, !tbaa !143
  %1226 = getelementptr inbounds %struct.rc_header_s, ptr %1222, i64 0, i32 2
  store ptr @rc_free_struct_only, ptr %1226, align 8, !tbaa !145
  %1227 = load ptr, ptr %1197, align 8, !tbaa !55
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1232, label %1229

1229:                                             ; preds = %1224
  %1230 = load i64, ptr %1227, align 8, !tbaa !140
  %1231 = add nsw i64 %1230, -1
  store i64 %1231, ptr %1227, align 8, !tbaa !140
  br label %1232

1232:                                             ; preds = %1229, %1224
  store ptr %1222, ptr %1197, align 8, !tbaa !55
  br label %1233

1233:                                             ; preds = %1232, %1216
  %1234 = load ptr, ptr %1197, align 8, !tbaa !55
  br label %1235

1235:                                             ; preds = %1233, %1189, %1158
  %1236 = phi ptr [ %1234, %1233 ], [ %1190, %1189 ], [ %1159, %1158 ]
  %1237 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %1236, i64 0, i32 1
  store ptr @gs_mapped_transfer, ptr %1237, align 8, !tbaa !146
  %1238 = getelementptr inbounds %struct.gx_transfer_map_s, ptr %1236, i64 0, i32 3
  br label %1239

1239:                                             ; preds = %1155, %1189, %1211, %1220, %1235
  %1240 = phi i32 [ 0, %1211 ], [ %536, %1220 ], [ 512, %1235 ], [ %536, %1189 ], [ %536, %1155 ]
  %1241 = phi ptr [ null, %1211 ], [ %535, %1220 ], [ %1238, %1235 ], [ %535, %1189 ], [ null, %1155 ]
  %1242 = phi i1 [ true, %1211 ], [ false, %1220 ], [ true, %1235 ], [ false, %1189 ], [ true, %1155 ]
  %1243 = phi i32 [ 0, %1211 ], [ -25, %1220 ], [ 0, %1235 ], [ -25, %1189 ], [ 0, %1155 ]
  br i1 %1242, label %1244, label %1261

1244:                                             ; preds = %1239
  %1245 = icmp eq ptr %1241, null
  br i1 %1245, label %1261, label %1246

1246:                                             ; preds = %1244
  %1247 = ptrtoint ptr %566 to i64
  %1248 = ptrtoint ptr %1085 to i64
  %1249 = sub i64 %1247, %1248
  %1250 = zext i32 %1240 to i64
  %1251 = icmp slt i64 %1249, %1250
  br i1 %1251, label %1254, label %1252

1252:                                             ; preds = %1246
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1241, ptr nonnull align 1 %1085, i64 %1250, i1 false)
  %1253 = getelementptr inbounds i8, ptr %1085, i64 %1250
  br label %1261

1254:                                             ; preds = %1246
  %1255 = trunc i64 %1249 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39) #7
  %1256 = sub i32 %1240, %1255
  store i32 %1256, ptr %39, align 4, !tbaa !38
  %1257 = and i64 %1249, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1241, ptr nonnull align 1 %1085, i64 %1257, i1 false)
  %1258 = getelementptr inbounds i8, ptr %1241, i64 %1257
  %1259 = load i32, ptr %39, align 4, !tbaa !38
  %1260 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %1258, i32 noundef %1259, ptr noundef nonnull %39) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39) #7
  br label %1261

1261:                                             ; preds = %1244, %1254, %1252, %1239
  %1262 = phi i32 [ 3, %1239 ], [ 0, %1252 ], [ 0, %1254 ], [ 0, %1244 ]
  %1263 = phi ptr [ %1085, %1239 ], [ %1253, %1252 ], [ %566, %1254 ], [ %1085, %1244 ]
  br i1 %1242, label %1264, label %1346

1264:                                             ; preds = %1261
  call void @gx_imager_set_effective_xfer(ptr noundef nonnull %17) #7
  br label %1346

1265:                                             ; preds = %1084
  %1266 = and i32 %1087, 63
  %1267 = load i8, ptr %1085, align 1, !tbaa !27
  %1268 = icmp sgt i8 %1267, -1
  br i1 %1268, label %1269, label %1272

1269:                                             ; preds = %1265
  %1270 = zext nneg i8 %1267 to i32
  %1271 = getelementptr inbounds i8, ptr %568, i64 3
  br label %1290

1272:                                             ; preds = %1265
  %1273 = getelementptr inbounds i8, ptr %568, i64 3
  %1274 = and i8 %1267, 127
  %1275 = zext nneg i8 %1274 to i64
  br label %1276

1276:                                             ; preds = %1276, %1272
  %1277 = phi i64 [ %1287, %1276 ], [ 7, %1272 ]
  %1278 = phi ptr [ %1285, %1276 ], [ %1273, %1272 ]
  %1279 = phi i64 [ %1284, %1276 ], [ %1275, %1272 ]
  %1280 = load i8, ptr %1278, align 1, !tbaa !27
  %1281 = and i8 %1280, 127
  %1282 = zext nneg i8 %1281 to i64
  %1283 = shl i64 %1282, %1277
  %1284 = add nsw i64 %1283, %1279
  %1285 = getelementptr inbounds i8, ptr %1278, i64 1
  %1286 = icmp slt i8 %1280, 0
  %1287 = add nuw i64 %1277, 7
  br i1 %1286, label %1276, label %1288, !llvm.loop !102

1288:                                             ; preds = %1276
  %1289 = trunc i64 %1284 to i32
  br label %1290

1290:                                             ; preds = %1269, %1288
  %1291 = phi i32 [ %1270, %1269 ], [ %1289, %1288 ]
  %1292 = phi ptr [ %1271, %1269 ], [ %1285, %1288 ]
  %1293 = load i32, ptr %399, align 8, !tbaa !147
  %1294 = icmp eq i32 %1293, %1291
  br i1 %1294, label %1346, label %1295

1295:                                             ; preds = %1290
  %1296 = icmp ugt i32 %1293, %1291
  br i1 %1296, label %1297, label %1325

1297:                                             ; preds = %1295
  %1298 = zext i32 %1293 to i64
  %1299 = zext i32 %1291 to i64
  br label %1300

1300:                                             ; preds = %1310, %1297
  %1301 = phi i64 [ %1298, %1297 ], [ %1302, %1310 ]
  %1302 = add nsw i64 %1301, -1
  %1303 = load ptr, ptr %80, align 8, !tbaa !151
  %1304 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %1303, i64 %1302
  %1305 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1304, i64 0, i32 11
  %1306 = load ptr, ptr %1305, align 8, !tbaa !152
  %1307 = load ptr, ptr %79, align 8, !tbaa !154
  %1308 = icmp eq ptr %1306, %1307
  br i1 %1308, label %1310, label %1309

1309:                                             ; preds = %1300
  call void @gx_ht_order_release(ptr noundef %1304, ptr noundef %5, i32 noundef 1) #7
  br label %1310

1310:                                             ; preds = %1309, %1300
  %1311 = icmp ugt i64 %1302, %1299
  br i1 %1311, label %1300, label %1312, !llvm.loop !155

1312:                                             ; preds = %1310
  %1313 = icmp eq i32 %1291, 0
  %1314 = load ptr, ptr %80, align 8, !tbaa !151
  br i1 %1313, label %1315, label %1317

1315:                                             ; preds = %1312
  %1316 = load ptr, ptr %403, align 8, !tbaa !156
  call void %1316(ptr noundef %5, ptr noundef %1314, ptr noundef nonnull @.str.10) #7
  br label %1322

1317:                                             ; preds = %1312
  %1318 = load ptr, ptr %402, align 8, !tbaa !157
  %1319 = call ptr %1318(ptr noundef %5, ptr noundef %1314, i32 noundef %1291, ptr noundef nonnull @.str.10) #7
  %1320 = icmp eq ptr %1319, null
  br i1 %1320, label %1321, label %1322

1321:                                             ; preds = %1317
  store i32 %1291, ptr %399, align 8, !tbaa !147
  br label %1322

1322:                                             ; preds = %1321, %1317, %1315
  %1323 = phi ptr [ null, %1321 ], [ null, %1315 ], [ %1319, %1317 ]
  %1324 = phi i1 [ false, %1321 ], [ true, %1315 ], [ true, %1317 ]
  br i1 %1324, label %1344, label %1346

1325:                                             ; preds = %1295
  %1326 = icmp eq i32 %1293, 0
  br i1 %1326, label %1327, label %1330

1327:                                             ; preds = %1325
  %1328 = load ptr, ptr %401, align 8, !tbaa !158
  %1329 = call ptr %1328(ptr noundef %5, i32 noundef %1291, ptr noundef nonnull @st_ht_order_component_element, ptr noundef nonnull @.str.10) #7
  br label %1334

1330:                                             ; preds = %1325
  %1331 = load ptr, ptr %400, align 8, !tbaa !157
  %1332 = load ptr, ptr %80, align 8, !tbaa !151
  %1333 = call ptr %1331(ptr noundef %5, ptr noundef %1332, i32 noundef %1291, ptr noundef nonnull @.str.10) #7
  br label %1334

1334:                                             ; preds = %1330, %1327
  %1335 = phi ptr [ %1329, %1327 ], [ %1333, %1330 ]
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1346, label %1337

1337:                                             ; preds = %1334
  %1338 = load i32, ptr %399, align 8, !tbaa !147
  %1339 = zext i32 %1338 to i64
  %1340 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %1335, i64 %1339
  %1341 = sub i32 %1291, %1338
  %1342 = zext i32 %1341 to i64
  %1343 = mul nuw nsw i64 %1342, 104
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %1340, i8 0, i64 %1343, i1 false)
  br label %1344

1344:                                             ; preds = %1337, %1322
  %1345 = phi ptr [ %1323, %1322 ], [ %1335, %1337 ]
  store i32 %1291, ptr %399, align 8, !tbaa !147
  store ptr %1345, ptr %80, align 8, !tbaa !151
  br label %1346

1346:                                             ; preds = %1344, %1334, %1322, %1290, %1149, %1264, %1121, %1113, %1261
  %1347 = phi i32 [ %1240, %1264 ], [ %1240, %1261 ], [ %536, %1149 ], [ %536, %1113 ], [ %536, %1121 ], [ %536, %1290 ], [ %536, %1322 ], [ %536, %1334 ], [ %536, %1344 ]
  %1348 = phi ptr [ %1241, %1264 ], [ %1241, %1261 ], [ %535, %1149 ], [ %535, %1113 ], [ %535, %1121 ], [ %535, %1290 ], [ %535, %1322 ], [ %535, %1334 ], [ %535, %1344 ]
  %1349 = phi i32 [ 0, %1264 ], [ %1262, %1261 ], [ 0, %1149 ], [ 0, %1113 ], [ 0, %1121 ], [ 0, %1290 ], [ 3, %1322 ], [ 3, %1334 ], [ 0, %1344 ]
  %1350 = phi i32 [ %1243, %1264 ], [ %1243, %1261 ], [ %530, %1149 ], [ %530, %1113 ], [ %530, %1121 ], [ 0, %1290 ], [ -25, %1322 ], [ -25, %1334 ], [ 0, %1344 ]
  %1351 = phi i32 [ %529, %1264 ], [ %529, %1261 ], [ %1154, %1149 ], [ %529, %1113 ], [ %529, %1121 ], [ %529, %1290 ], [ %529, %1322 ], [ %529, %1334 ], [ %529, %1344 ]
  %1352 = phi i32 [ %524, %1264 ], [ %524, %1261 ], [ %524, %1149 ], [ %524, %1113 ], [ %524, %1121 ], [ %1266, %1290 ], [ %1266, %1322 ], [ %1266, %1334 ], [ %1266, %1344 ]
  %1353 = phi ptr [ %1263, %1264 ], [ %1263, %1261 ], [ %1151, %1149 ], [ %1114, %1113 ], [ %1114, %1121 ], [ %1292, %1290 ], [ %1292, %1322 ], [ %1292, %1334 ], [ %1292, %1344 ]
  %1354 = icmp eq i32 %1349, 0
  %1355 = select i1 %1354, i32 4, i32 %1349
  br label %3633

1356:                                             ; preds = %573
  store i16 1, ptr %396, align 4, !tbaa !138
  %1357 = load i32, ptr %397, align 8, !tbaa !137
  store i32 %1357, ptr %398, align 8, !tbaa !139
  br label %3633, !llvm.loop !101

1358:                                             ; preds = %573
  store i16 0, ptr %394, align 4, !tbaa !138
  store i32 252, ptr %395, align 8, !tbaa !139
  br label %3633, !llvm.loop !101

1359:                                             ; preds = %573
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %40)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %41)
  %1360 = load i8, ptr %569, align 1, !tbaa !27
  %1361 = icmp sgt i8 %1360, -1
  br i1 %1361, label %1362, label %1365

1362:                                             ; preds = %1359
  %1363 = zext nneg i8 %1360 to i32
  %1364 = getelementptr inbounds i8, ptr %568, i64 2
  br label %1383

1365:                                             ; preds = %1359
  %1366 = getelementptr inbounds i8, ptr %568, i64 2
  %1367 = and i8 %1360, 127
  %1368 = zext nneg i8 %1367 to i64
  br label %1369

1369:                                             ; preds = %1369, %1365
  %1370 = phi i64 [ %1380, %1369 ], [ 7, %1365 ]
  %1371 = phi ptr [ %1378, %1369 ], [ %1366, %1365 ]
  %1372 = phi i64 [ %1377, %1369 ], [ %1368, %1365 ]
  %1373 = load i8, ptr %1371, align 1, !tbaa !27
  %1374 = and i8 %1373, 127
  %1375 = zext nneg i8 %1374 to i64
  %1376 = shl i64 %1375, %1370
  %1377 = add nsw i64 %1376, %1372
  %1378 = getelementptr inbounds i8, ptr %1371, i64 1
  %1379 = icmp slt i8 %1373, 0
  %1380 = add nuw i64 %1370, 7
  br i1 %1379, label %1369, label %1381, !llvm.loop !102

1381:                                             ; preds = %1369
  %1382 = trunc i64 %1377 to i32
  br label %1383

1383:                                             ; preds = %1381, %1362
  %1384 = phi i32 [ %1363, %1362 ], [ %1382, %1381 ]
  %1385 = phi ptr [ %1364, %1362 ], [ %1378, %1381 ]
  %1386 = icmp eq i32 %1384, 0
  br i1 %1386, label %1419, label %1387

1387:                                             ; preds = %1383
  %1388 = load ptr, ptr %80, align 8, !tbaa !151
  %1389 = sext i32 %1384 to i64
  %1390 = getelementptr %struct.gx_ht_order_component_s, ptr %1388, i64 %1389
  %1391 = getelementptr %struct.gx_ht_order_component_s, ptr %1390, i64 -1
  %1392 = load i8, ptr %1385, align 1, !tbaa !27
  %1393 = icmp sgt i8 %1392, -1
  br i1 %1393, label %1394, label %1397

1394:                                             ; preds = %1387
  %1395 = zext nneg i8 %1392 to i32
  %1396 = getelementptr inbounds i8, ptr %1385, i64 1
  br label %1415

1397:                                             ; preds = %1387
  %1398 = getelementptr inbounds i8, ptr %1385, i64 1
  %1399 = and i8 %1392, 127
  %1400 = zext nneg i8 %1399 to i64
  br label %1401

1401:                                             ; preds = %1401, %1397
  %1402 = phi i64 [ %1412, %1401 ], [ 7, %1397 ]
  %1403 = phi ptr [ %1410, %1401 ], [ %1398, %1397 ]
  %1404 = phi i64 [ %1409, %1401 ], [ %1400, %1397 ]
  %1405 = load i8, ptr %1403, align 1, !tbaa !27
  %1406 = and i8 %1405, 127
  %1407 = zext nneg i8 %1406 to i64
  %1408 = shl i64 %1407, %1402
  %1409 = add nsw i64 %1408, %1404
  %1410 = getelementptr inbounds i8, ptr %1403, i64 1
  %1411 = icmp slt i8 %1405, 0
  %1412 = add nuw i64 %1402, 7
  br i1 %1411, label %1401, label %1413, !llvm.loop !102

1413:                                             ; preds = %1401
  %1414 = trunc i64 %1409 to i32
  br label %1415

1415:                                             ; preds = %1394, %1413
  %1416 = phi i32 [ %1414, %1413 ], [ %1395, %1394 ]
  %1417 = phi ptr [ %1410, %1413 ], [ %1396, %1394 ]
  %1418 = getelementptr %struct.gx_ht_order_component_s, ptr %1390, i64 -1, i32 1
  store i32 %1416, ptr %1418, align 8, !tbaa !159
  br label %1419

1419:                                             ; preds = %1415, %1383
  %1420 = phi ptr [ %22, %1383 ], [ %1391, %1415 ]
  %1421 = phi ptr [ %1385, %1383 ], [ %1417, %1415 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull align 8 dereferenceable(40) %1420, i64 40, i1 false), !tbaa.struct !160
  %1422 = getelementptr inbounds i8, ptr %1420, i64 40
  %1423 = getelementptr inbounds i8, ptr %1420, i64 42
  %1424 = getelementptr inbounds i8, ptr %1420, i64 44
  %1425 = getelementptr inbounds i8, ptr %1420, i64 46
  %1426 = getelementptr inbounds i8, ptr %1420, i64 48
  %1427 = load i64, ptr %1426, align 8
  %1428 = getelementptr inbounds i8, ptr %1420, i64 56
  %1429 = getelementptr inbounds i8, ptr %1420, i64 60
  %1430 = getelementptr inbounds i8, ptr %1420, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(32) %1430, i64 32, i1 false), !tbaa.struct !161
  %1431 = load i8, ptr %1421, align 1, !tbaa !27
  %1432 = icmp sgt i8 %1431, -1
  %1433 = getelementptr inbounds i8, ptr %1421, i64 1
  br i1 %1432, label %1434, label %1436

1434:                                             ; preds = %1419
  %1435 = zext nneg i8 %1431 to i16
  br label %1453

1436:                                             ; preds = %1419
  %1437 = and i8 %1431, 127
  %1438 = zext nneg i8 %1437 to i64
  br label %1439

1439:                                             ; preds = %1439, %1436
  %1440 = phi i64 [ %1450, %1439 ], [ 7, %1436 ]
  %1441 = phi ptr [ %1448, %1439 ], [ %1433, %1436 ]
  %1442 = phi i64 [ %1447, %1439 ], [ %1438, %1436 ]
  %1443 = load i8, ptr %1441, align 1, !tbaa !27
  %1444 = and i8 %1443, 127
  %1445 = zext nneg i8 %1444 to i64
  %1446 = shl i64 %1445, %1440
  %1447 = add nsw i64 %1446, %1442
  %1448 = getelementptr inbounds i8, ptr %1441, i64 1
  %1449 = icmp slt i8 %1443, 0
  %1450 = add nuw i64 %1440, 7
  br i1 %1449, label %1439, label %1451, !llvm.loop !102

1451:                                             ; preds = %1439
  %1452 = trunc i64 %1447 to i16
  br label %1453

1453:                                             ; preds = %1434, %1451
  %1454 = phi i16 [ %1435, %1434 ], [ %1452, %1451 ]
  %1455 = phi ptr [ %1433, %1434 ], [ %1448, %1451 ]
  %1456 = load i8, ptr %1455, align 1, !tbaa !27
  %1457 = icmp sgt i8 %1456, -1
  %1458 = getelementptr inbounds i8, ptr %1455, i64 1
  br i1 %1457, label %1459, label %1461

1459:                                             ; preds = %1453
  %1460 = zext nneg i8 %1456 to i16
  br label %1478

1461:                                             ; preds = %1453
  %1462 = and i8 %1456, 127
  %1463 = zext nneg i8 %1462 to i64
  br label %1464

1464:                                             ; preds = %1464, %1461
  %1465 = phi i64 [ %1475, %1464 ], [ 7, %1461 ]
  %1466 = phi ptr [ %1473, %1464 ], [ %1458, %1461 ]
  %1467 = phi i64 [ %1472, %1464 ], [ %1463, %1461 ]
  %1468 = load i8, ptr %1466, align 1, !tbaa !27
  %1469 = and i8 %1468, 127
  %1470 = zext nneg i8 %1469 to i64
  %1471 = shl i64 %1470, %1465
  %1472 = add nsw i64 %1471, %1467
  %1473 = getelementptr inbounds i8, ptr %1466, i64 1
  %1474 = icmp slt i8 %1468, 0
  %1475 = add nuw i64 %1465, 7
  br i1 %1474, label %1464, label %1476, !llvm.loop !102

1476:                                             ; preds = %1464
  %1477 = trunc i64 %1472 to i16
  br label %1478

1478:                                             ; preds = %1459, %1476
  %1479 = phi i16 [ %1460, %1459 ], [ %1477, %1476 ]
  %1480 = phi ptr [ %1458, %1459 ], [ %1473, %1476 ]
  %1481 = load i8, ptr %1480, align 1, !tbaa !27
  %1482 = icmp sgt i8 %1481, -1
  %1483 = getelementptr inbounds i8, ptr %1480, i64 1
  br i1 %1482, label %1484, label %1486

1484:                                             ; preds = %1478
  %1485 = zext nneg i8 %1481 to i16
  br label %1503

1486:                                             ; preds = %1478
  %1487 = and i8 %1481, 127
  %1488 = zext nneg i8 %1487 to i64
  br label %1489

1489:                                             ; preds = %1489, %1486
  %1490 = phi i64 [ %1500, %1489 ], [ 7, %1486 ]
  %1491 = phi ptr [ %1498, %1489 ], [ %1483, %1486 ]
  %1492 = phi i64 [ %1497, %1489 ], [ %1488, %1486 ]
  %1493 = load i8, ptr %1491, align 1, !tbaa !27
  %1494 = and i8 %1493, 127
  %1495 = zext nneg i8 %1494 to i64
  %1496 = shl i64 %1495, %1490
  %1497 = add nsw i64 %1496, %1492
  %1498 = getelementptr inbounds i8, ptr %1491, i64 1
  %1499 = icmp slt i8 %1493, 0
  %1500 = add nuw i64 %1490, 7
  br i1 %1499, label %1489, label %1501, !llvm.loop !102

1501:                                             ; preds = %1489
  %1502 = trunc i64 %1497 to i16
  br label %1503

1503:                                             ; preds = %1484, %1501
  %1504 = phi i16 [ %1485, %1484 ], [ %1502, %1501 ]
  %1505 = phi ptr [ %1483, %1484 ], [ %1498, %1501 ]
  %1506 = load i8, ptr %1505, align 1, !tbaa !27
  %1507 = icmp sgt i8 %1506, -1
  %1508 = getelementptr inbounds i8, ptr %1505, i64 1
  br i1 %1507, label %1509, label %1511

1509:                                             ; preds = %1503
  %1510 = zext nneg i8 %1506 to i16
  br label %1528

1511:                                             ; preds = %1503
  %1512 = and i8 %1506, 127
  %1513 = zext nneg i8 %1512 to i64
  br label %1514

1514:                                             ; preds = %1514, %1511
  %1515 = phi i64 [ %1525, %1514 ], [ 7, %1511 ]
  %1516 = phi ptr [ %1523, %1514 ], [ %1508, %1511 ]
  %1517 = phi i64 [ %1522, %1514 ], [ %1513, %1511 ]
  %1518 = load i8, ptr %1516, align 1, !tbaa !27
  %1519 = and i8 %1518, 127
  %1520 = zext nneg i8 %1519 to i64
  %1521 = shl i64 %1520, %1515
  %1522 = add nsw i64 %1521, %1517
  %1523 = getelementptr inbounds i8, ptr %1516, i64 1
  %1524 = icmp slt i8 %1518, 0
  %1525 = add nuw i64 %1515, 7
  br i1 %1524, label %1514, label %1526, !llvm.loop !102

1526:                                             ; preds = %1514
  %1527 = trunc i64 %1522 to i16
  br label %1528

1528:                                             ; preds = %1509, %1526
  %1529 = phi i16 [ %1510, %1509 ], [ %1527, %1526 ]
  %1530 = phi ptr [ %1508, %1509 ], [ %1523, %1526 ]
  %1531 = load i8, ptr %1530, align 1, !tbaa !27
  %1532 = icmp sgt i8 %1531, -1
  br i1 %1532, label %1533, label %1536

1533:                                             ; preds = %1528
  %1534 = zext nneg i8 %1531 to i32
  %1535 = getelementptr inbounds i8, ptr %1530, i64 1
  br label %1554

1536:                                             ; preds = %1528
  %1537 = getelementptr inbounds i8, ptr %1530, i64 1
  %1538 = and i8 %1531, 127
  %1539 = zext nneg i8 %1538 to i64
  br label %1540

1540:                                             ; preds = %1540, %1536
  %1541 = phi i64 [ %1551, %1540 ], [ 7, %1536 ]
  %1542 = phi ptr [ %1549, %1540 ], [ %1537, %1536 ]
  %1543 = phi i64 [ %1548, %1540 ], [ %1539, %1536 ]
  %1544 = load i8, ptr %1542, align 1, !tbaa !27
  %1545 = and i8 %1544, 127
  %1546 = zext nneg i8 %1545 to i64
  %1547 = shl i64 %1546, %1541
  %1548 = add nsw i64 %1547, %1543
  %1549 = getelementptr inbounds i8, ptr %1542, i64 1
  %1550 = icmp slt i8 %1544, 0
  %1551 = add nuw i64 %1541, 7
  br i1 %1550, label %1540, label %1552, !llvm.loop !102

1552:                                             ; preds = %1540
  %1553 = trunc i64 %1548 to i32
  br label %1554

1554:                                             ; preds = %1533, %1552
  %1555 = phi i32 [ %1534, %1533 ], [ %1553, %1552 ]
  %1556 = phi ptr [ %1535, %1533 ], [ %1549, %1552 ]
  %1557 = load i8, ptr %1556, align 1, !tbaa !27
  %1558 = icmp sgt i8 %1557, -1
  br i1 %1558, label %1559, label %1562

1559:                                             ; preds = %1554
  %1560 = zext nneg i8 %1557 to i32
  %1561 = getelementptr inbounds i8, ptr %1556, i64 1
  br label %1580

1562:                                             ; preds = %1554
  %1563 = getelementptr inbounds i8, ptr %1556, i64 1
  %1564 = and i8 %1557, 127
  %1565 = zext nneg i8 %1564 to i64
  br label %1566

1566:                                             ; preds = %1566, %1562
  %1567 = phi i64 [ %1577, %1566 ], [ 7, %1562 ]
  %1568 = phi ptr [ %1575, %1566 ], [ %1563, %1562 ]
  %1569 = phi i64 [ %1574, %1566 ], [ %1565, %1562 ]
  %1570 = load i8, ptr %1568, align 1, !tbaa !27
  %1571 = and i8 %1570, 127
  %1572 = zext nneg i8 %1571 to i64
  %1573 = shl i64 %1572, %1567
  %1574 = add nsw i64 %1573, %1569
  %1575 = getelementptr inbounds i8, ptr %1568, i64 1
  %1576 = icmp slt i8 %1570, 0
  %1577 = add nuw i64 %1567, 7
  br i1 %1576, label %1566, label %1578, !llvm.loop !102

1578:                                             ; preds = %1566
  %1579 = trunc i64 %1574 to i32
  br label %1580

1580:                                             ; preds = %1559, %1578
  %1581 = phi i32 [ %1560, %1559 ], [ %1579, %1578 ]
  %1582 = phi ptr [ %1561, %1559 ], [ %1575, %1578 ]
  %1583 = load ptr, ptr %1430, align 8, !tbaa !162
  %1584 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1420, i64 0, i32 11
  %1585 = load ptr, ptr %1584, align 8, !tbaa !163
  %1586 = load i32, ptr %1428, align 8, !tbaa !164
  %1587 = icmp ugt i32 %1555, %1586
  br i1 %1587, label %1588, label %1601

1588:                                             ; preds = %1580
  %1589 = icmp eq ptr %1583, null
  br i1 %1589, label %1590, label %1593

1590:                                             ; preds = %1588
  %1591 = load ptr, ptr %391, align 8, !tbaa !165
  %1592 = call ptr %1591(ptr noundef %5, i32 noundef %1555, i32 noundef 4, ptr noundef nonnull @.str.11) #7
  br label %1597

1593:                                             ; preds = %1588
  %1594 = load ptr, ptr %390, align 8, !tbaa !157
  %1595 = shl i32 %1555, 2
  %1596 = call ptr %1594(ptr noundef %5, ptr noundef nonnull %1583, i32 noundef %1595, ptr noundef nonnull @.str.11) #7
  br label %1597

1597:                                             ; preds = %1593, %1590
  %1598 = phi ptr [ %1592, %1590 ], [ %1596, %1593 ]
  %1599 = icmp eq ptr %1598, null
  br i1 %1599, label %1633, label %1600

1600:                                             ; preds = %1597
  store ptr %1598, ptr %1430, align 8, !tbaa !162
  store i32 %1555, ptr %1428, align 8, !tbaa !164
  br label %1601

1601:                                             ; preds = %1600, %1580
  %1602 = phi ptr [ %1598, %1600 ], [ %1583, %1580 ]
  %1603 = load i32, ptr %1429, align 4, !tbaa !166
  %1604 = icmp ugt i32 %1581, %1603
  br i1 %1604, label %1605, label %1617

1605:                                             ; preds = %1601
  %1606 = icmp eq ptr %1585, null
  br i1 %1606, label %1607, label %1610

1607:                                             ; preds = %1605
  %1608 = load ptr, ptr %393, align 8, !tbaa !165
  %1609 = call ptr %1608(ptr noundef %5, i32 noundef %1581, i32 noundef 8, ptr noundef nonnull @.str.12) #7
  br label %1614

1610:                                             ; preds = %1605
  %1611 = load ptr, ptr %392, align 8, !tbaa !157
  %1612 = shl i32 %1581, 3
  %1613 = call ptr %1611(ptr noundef %5, ptr noundef nonnull %1585, i32 noundef %1612, ptr noundef nonnull @.str.12) #7
  br label %1614

1614:                                             ; preds = %1610, %1607
  %1615 = phi ptr [ %1609, %1607 ], [ %1613, %1610 ]
  %1616 = icmp eq ptr %1615, null
  br i1 %1616, label %1633, label %1617

1617:                                             ; preds = %1614, %1601
  %1618 = phi ptr [ %1615, %1614 ], [ %1585, %1601 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1420, ptr noundef nonnull align 8 dereferenceable(40) %40, i64 40, i1 false), !tbaa.struct !160
  store i16 %1454, ptr %1422, align 8, !tbaa.struct !167
  store i16 %1479, ptr %1423, align 2, !tbaa.struct !168
  store i16 %1504, ptr %1424, align 4, !tbaa.struct !169
  store i16 %1529, ptr %1425, align 2, !tbaa.struct !170
  store i64 %1427, ptr %1426, align 8
  store i32 %1555, ptr %1428, align 8, !tbaa.struct !171
  store i32 %1581, ptr %1429, align 4, !tbaa.struct !172
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1430, ptr noundef nonnull align 8 dereferenceable(32) %41, i64 32, i1 false), !tbaa.struct !161
  store ptr %1602, ptr %1430, align 8, !tbaa !162
  store ptr %1618, ptr %1584, align 8, !tbaa !163
  %1619 = icmp eq i16 %1529, 0
  br i1 %1619, label %1620, label %1622

1620:                                             ; preds = %1617
  %1621 = zext i16 %1479 to i32
  br label %1630

1622:                                             ; preds = %1617
  %1623 = zext i16 %1529 to i32
  %1624 = zext i16 %1454 to i32
  %1625 = call i32 @igcd(i32 noundef %1624, i32 noundef %1623) #7
  %1626 = sdiv i32 %1624, %1625
  %1627 = load i16, ptr %1423, align 2, !tbaa !173
  %1628 = zext i16 %1627 to i32
  %1629 = mul nsw i32 %1626, %1628
  br label %1630

1630:                                             ; preds = %1622, %1620
  %1631 = phi i32 [ %1621, %1620 ], [ %1629, %1622 ]
  %1632 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1420, i64 0, i32 7
  store i32 %1631, ptr %1632, align 4, !tbaa !174
  br label %1633

1633:                                             ; preds = %1597, %1614, %1630
  %1634 = phi i1 [ true, %1630 ], [ false, %1597 ], [ false, %1614 ]
  %1635 = phi i32 [ 0, %1630 ], [ -25, %1597 ], [ -25, %1614 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %40)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %41)
  %1636 = select i1 %1634, i32 4, i32 3
  %1637 = select i1 %1634, i32 0, i32 %526
  br label %3633

1638:                                             ; preds = %573
  %1639 = getelementptr inbounds i8, ptr %568, i64 2
  %1640 = load i8, ptr %569, align 1, !tbaa !27
  %1641 = zext i8 %1640 to i32
  %1642 = getelementptr inbounds %struct.gx_ht_order_s, ptr %525, i64 0, i32 8
  %1643 = load i32, ptr %1642, align 8, !tbaa !164
  %1644 = icmp ult i32 %526, %1643
  br i1 %1644, label %1645, label %1665

1645:                                             ; preds = %1638
  %1646 = getelementptr inbounds %struct.gx_ht_order_s, ptr %525, i64 0, i32 10
  %1647 = load ptr, ptr %1646, align 8, !tbaa !162
  %1648 = zext i32 %526 to i64
  %1649 = getelementptr inbounds i32, ptr %1647, i64 %1648
  %1650 = ptrtoint ptr %566 to i64
  %1651 = ptrtoint ptr %1639 to i64
  %1652 = sub i64 %1650, %1651
  %1653 = zext i8 %1640 to i64
  %1654 = shl nuw nsw i64 %1653, 2
  %1655 = icmp ult i64 %1652, %1654
  br i1 %1655, label %1658, label %1656

1656:                                             ; preds = %1645
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1649, ptr nonnull align 1 %1639, i64 %1654, i1 false)
  %1657 = getelementptr inbounds i8, ptr %1639, i64 %1654
  br label %1686

1658:                                             ; preds = %1645
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42) #7
  %1659 = and i64 %1652, 4294967295
  %1660 = sub i64 %1654, %1652
  %1661 = trunc i64 %1660 to i32
  store i32 %1661, ptr %42, align 4, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1649, ptr nonnull align 1 %1639, i64 %1659, i1 false)
  %1662 = getelementptr inbounds i8, ptr %1649, i64 %1659
  %1663 = load i32, ptr %42, align 4, !tbaa !38
  %1664 = call i32 @sgets(ptr noundef %1, ptr noundef %1662, i32 noundef %1663, ptr noundef nonnull %42) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42) #7
  br label %1686

1665:                                             ; preds = %1638
  %1666 = getelementptr inbounds %struct.gx_ht_order_s, ptr %525, i64 0, i32 11
  %1667 = load ptr, ptr %1666, align 8, !tbaa !163
  %1668 = sub i32 %526, %1643
  %1669 = zext i32 %1668 to i64
  %1670 = getelementptr inbounds %struct.gx_ht_bit_s, ptr %1667, i64 %1669
  %1671 = ptrtoint ptr %566 to i64
  %1672 = ptrtoint ptr %1639 to i64
  %1673 = sub i64 %1671, %1672
  %1674 = zext i8 %1640 to i64
  %1675 = shl nuw nsw i64 %1674, 3
  %1676 = icmp ult i64 %1673, %1675
  br i1 %1676, label %1679, label %1677

1677:                                             ; preds = %1665
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1670, ptr nonnull align 1 %1639, i64 %1675, i1 false)
  %1678 = getelementptr inbounds i8, ptr %1639, i64 %1675
  br label %1686

1679:                                             ; preds = %1665
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43) #7
  %1680 = and i64 %1673, 4294967295
  %1681 = sub i64 %1675, %1673
  %1682 = trunc i64 %1681 to i32
  store i32 %1682, ptr %43, align 4, !tbaa !38
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1670, ptr nonnull align 1 %1639, i64 %1680, i1 false)
  %1683 = getelementptr inbounds i8, ptr %1670, i64 %1680
  %1684 = load i32, ptr %43, align 4, !tbaa !38
  %1685 = call i32 @sgets(ptr noundef %1, ptr noundef %1683, i32 noundef %1684, ptr noundef nonnull %43) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43) #7
  br label %1686

1686:                                             ; preds = %1677, %1679, %1656, %1658
  %1687 = phi ptr [ %1657, %1656 ], [ %566, %1658 ], [ %1678, %1677 ], [ %566, %1679 ]
  %1688 = add i32 %526, %1641
  %1689 = load ptr, ptr %80, align 8
  %1690 = icmp eq ptr %1689, null
  %1691 = select i1 %1690, ptr %22, ptr %1689
  %1692 = icmp eq ptr %525, %1691
  br i1 %1692, label %1693, label %3633, !llvm.loop !101

1693:                                             ; preds = %1686
  %1694 = load i32, ptr %1642, align 8, !tbaa !164
  %1695 = getelementptr inbounds %struct.gx_ht_order_s, ptr %525, i64 0, i32 9
  %1696 = load i32, ptr %1695, align 4, !tbaa !166
  %1697 = add i32 %1696, %1694
  %1698 = icmp eq i32 %1688, %1697
  br i1 %1698, label %1699, label %3633, !llvm.loop !101

1699:                                             ; preds = %1693
  %1700 = load ptr, ptr %82, align 8, !tbaa !95
  %1701 = icmp eq ptr %1700, null
  br i1 %1701, label %1702, label %1711

1702:                                             ; preds = %1699
  %1703 = add i32 %1694, 2
  %1704 = call i32 @gx_ht_cache_default_bits() #7
  %1705 = call ptr @gx_ht_alloc_cache(ptr noundef nonnull %5, i32 noundef %1703, i32 noundef %1704) #7
  %1706 = icmp eq ptr %1705, null
  br i1 %1706, label %1708, label %1707

1707:                                             ; preds = %1702
  store ptr %1705, ptr %82, align 8, !tbaa !95
  br label %1708

1708:                                             ; preds = %1702, %1707
  %1709 = phi i32 [ 0, %1707 ], [ 3, %1702 ]
  %1710 = phi i32 [ %530, %1707 ], [ -25, %1702 ]
  br i1 %1706, label %1756, label %1711

1711:                                             ; preds = %1708, %1699
  %1712 = phi i32 [ %1710, %1708 ], [ %530, %1699 ]
  %1713 = load i32, ptr %389, align 8, !tbaa !147
  %1714 = icmp ugt i32 %1713, 1
  br i1 %1714, label %1720, label %1746

1715:                                             ; preds = %1742
  %1716 = add nuw nsw i64 %1721, 1
  %1717 = load i32, ptr %389, align 8, !tbaa !147
  %1718 = zext i32 %1717 to i64
  %1719 = icmp ult i64 %1716, %1718
  br i1 %1719, label %1720, label %1746, !llvm.loop !175

1720:                                             ; preds = %1711, %1715
  %1721 = phi i64 [ %1716, %1715 ], [ 1, %1711 ]
  %1722 = phi i32 [ %1745, %1715 ], [ %1712, %1711 ]
  %1723 = load ptr, ptr %80, align 8, !tbaa !151
  %1724 = getelementptr inbounds %struct.gx_ht_order_component_s, ptr %1723, i64 %1721
  %1725 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1724, i64 0, i32 12
  %1726 = load ptr, ptr %1725, align 8, !tbaa !176
  %1727 = icmp eq ptr %1726, null
  br i1 %1727, label %1728, label %1742

1728:                                             ; preds = %1720
  %1729 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1724, i64 0, i32 3
  %1730 = load i16, ptr %1729, align 4, !tbaa !177
  %1731 = zext i16 %1730 to i32
  %1732 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1724, i64 0, i32 9
  %1733 = load i32, ptr %1732, align 4, !tbaa !166
  %1734 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1724, i64 0, i32 1
  %1735 = load i16, ptr %1734, align 8, !tbaa !178
  %1736 = zext i16 %1735 to i32
  %1737 = udiv i32 %1733, %1736
  %1738 = mul i32 %1737, %1731
  %1739 = call ptr @gx_ht_alloc_cache(ptr noundef nonnull %5, i32 noundef 1, i32 noundef %1738) #7
  %1740 = icmp eq ptr %1739, null
  br i1 %1740, label %1742, label %1741

1741:                                             ; preds = %1728
  store ptr %1739, ptr %1725, align 8, !tbaa !176
  call void @gx_ht_init_cache(ptr noundef nonnull %1739, ptr noundef nonnull %1724) #7
  br label %1742

1742:                                             ; preds = %1741, %1728, %1720
  %1743 = phi i1 [ true, %1720 ], [ true, %1741 ], [ false, %1728 ]
  %1744 = phi i32 [ 0, %1720 ], [ 0, %1741 ], [ 3, %1728 ]
  %1745 = phi i32 [ %1722, %1720 ], [ %1722, %1741 ], [ -25, %1728 ]
  br i1 %1743, label %1715, label %1756

1746:                                             ; preds = %1715, %1711
  %1747 = phi i32 [ %1712, %1711 ], [ %1745, %1715 ]
  %1748 = phi i32 [ %1713, %1711 ], [ %1717, %1715 ]
  %1749 = icmp eq i32 %1748, 0
  br i1 %1749, label %1754, label %1750

1750:                                             ; preds = %1746
  %1751 = load ptr, ptr %82, align 8, !tbaa !95
  %1752 = load ptr, ptr %80, align 8, !tbaa !151
  %1753 = getelementptr inbounds %struct.gx_ht_order_s, ptr %1752, i64 0, i32 12
  store ptr %1751, ptr %1753, align 8, !tbaa !179
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %22, ptr noundef nonnull align 8 dereferenceable(96) %1752, i64 96, i1 false), !tbaa.struct !160
  br label %1754

1754:                                             ; preds = %1750, %1746
  %1755 = call i32 @gx_imager_dev_ht_install(ptr noundef nonnull %17, ptr noundef nonnull %22, i32 noundef %524, ptr noundef %0) #7
  br label %1756

1756:                                             ; preds = %1742, %1708, %1754
  %1757 = phi i32 [ 0, %1754 ], [ %1709, %1708 ], [ %1744, %1742 ]
  %1758 = phi i32 [ %1747, %1754 ], [ %1710, %1708 ], [ %1745, %1742 ]
  %1759 = icmp eq i32 %1757, 0
  %1760 = select i1 %1759, i32 4, i32 %1757
  br label %3633, !llvm.loop !101

1761:                                             ; preds = %573
  br label %3633

1762:                                             ; preds = %573
  %1763 = getelementptr inbounds i64, ptr %508, i64 1
  br label %1764

1764:                                             ; preds = %573, %1762
  %1765 = phi ptr [ %1763, %1762 ], [ %508, %573 ]
  %1766 = load i8, ptr %569, align 1, !tbaa !27
  %1767 = zext i8 %1766 to i64
  %1768 = getelementptr inbounds i8, ptr %568, i64 2
  %1769 = load i8, ptr %1768, align 1, !tbaa !27
  %1770 = zext i8 %1769 to i64
  %1771 = getelementptr inbounds i8, ptr %568, i64 3
  br i1 %388, label %1772, label %1786

1772:                                             ; preds = %1764
  %1773 = shl nuw nsw i64 %1767, 20
  %1774 = and i64 %1773, 251658240
  %1775 = shl nuw nsw i64 %1767, 16
  %1776 = and i64 %1775, 983040
  %1777 = shl nuw nsw i64 %1770, 4
  %1778 = and i64 %1777, 3840
  %1779 = and i64 %1770, 15
  %1780 = load i64, ptr %1765, align 8, !tbaa !56
  %1781 = add nuw nsw i64 %1776, -134744072
  %1782 = add nsw i64 %1781, %1774
  %1783 = add nuw nsw i64 %1782, %1779
  %1784 = add nsw i64 %1783, %1778
  %1785 = add i64 %1784, %1780
  br label %1799

1786:                                             ; preds = %1764
  %1787 = shl nuw nsw i64 %1767, 13
  %1788 = and i64 %1787, 2031616
  %1789 = shl nuw nsw i64 %1767, 11
  %1790 = shl nuw nsw i64 %1770, 3
  %1791 = or disjoint i64 %1790, %1789
  %1792 = and i64 %1791, 16128
  %1793 = or disjoint i64 %1788, %1792
  %1794 = and i64 %1770, 31
  %1795 = load i64, ptr %1765, align 8, !tbaa !56
  %1796 = add nuw nsw i64 %1794, -1056784
  %1797 = add nsw i64 %1796, %1793
  %1798 = add i64 %1797, %1795
  br label %1799

1799:                                             ; preds = %1786, %1772
  %1800 = phi i64 [ %1798, %1786 ], [ %1785, %1772 ]
  store i64 %1800, ptr %1765, align 8, !tbaa !56
  br label %3633, !llvm.loop !101

1801:                                             ; preds = %573
  store i16 0, ptr %387, align 8, !tbaa !180
  br label %3633, !llvm.loop !101

1802:                                             ; preds = %573
  store i16 1, ptr %386, align 8, !tbaa !180
  br label %3633, !llvm.loop !101

1803:                                             ; preds = %564
  %1804 = getelementptr inbounds i64, ptr %508, i64 1
  br label %1805

1805:                                             ; preds = %564, %1803
  %1806 = phi ptr [ %1804, %1803 ], [ %508, %564 ]
  %1807 = and i32 %571, 15
  switch i32 %1807, label %1809 [
    i32 0, label %1849
    i32 15, label %1808
  ]

1808:                                             ; preds = %1805
  store i64 -1, ptr %1806, align 8, !tbaa !56
  br label %3633, !llvm.loop !101

1809:                                             ; preds = %1805
  switch i32 %65, label %1878 [
    i32 4, label %1810
    i32 3, label %1830
    i32 1, label %1844
    i32 2, label %1863
  ]

1810:                                             ; preds = %1809
  %1811 = shl nuw nsw i32 %1807, 8
  %1812 = getelementptr inbounds i8, ptr %568, i64 2
  %1813 = load i8, ptr %569, align 1, !tbaa !27
  %1814 = zext i8 %1813 to i32
  %1815 = or disjoint i32 %1811, %1814
  %1816 = zext nneg i32 %1815 to i64
  %1817 = shl nuw nsw i64 %1816, 15
  %1818 = and i64 %1817, 117440512
  %1819 = shl nuw nsw i64 %1816, 10
  %1820 = and i64 %1819, 458752
  %1821 = shl nuw nsw i64 %1816, 5
  %1822 = and i64 %1821, 1792
  %1823 = and i64 %1816, 7
  %1824 = load i64, ptr %1806, align 8, !tbaa !56
  %1825 = add i64 %1824, -67372036
  %1826 = add i64 %1825, %1823
  %1827 = add i64 %1826, %1820
  %1828 = add i64 %1827, %1818
  %1829 = add i64 %1828, %1822
  store i64 %1829, ptr %1806, align 8, !tbaa !56
  br label %3633, !llvm.loop !101

1830:                                             ; preds = %1809
  %1831 = getelementptr inbounds i8, ptr %568, i64 2
  %1832 = load i8, ptr %569, align 1, !tbaa !27
  %1833 = zext i8 %1832 to i64
  %1834 = shl nuw nsw i32 %1807, 16
  %1835 = zext nneg i32 %1834 to i64
  %1836 = shl nuw nsw i64 %1833, 4
  %1837 = and i64 %1836, 3840
  %1838 = or disjoint i64 %1837, %1835
  %1839 = and i64 %1833, 15
  %1840 = load i64, ptr %1806, align 8, !tbaa !56
  %1841 = add i64 %1840, -526344
  %1842 = add i64 %1841, %1839
  %1843 = add i64 %1842, %1838
  store i64 %1843, ptr %1806, align 8, !tbaa !56
  br label %3633, !llvm.loop !101

1844:                                             ; preds = %1809
  %1845 = zext nneg i32 %1807 to i64
  %1846 = add nsw i64 %1845, -8
  %1847 = load i64, ptr %1806, align 8, !tbaa !56
  %1848 = add i64 %1846, %1847
  store i64 %1848, ptr %1806, align 8, !tbaa !56
  br label %3633, !llvm.loop !101

1849:                                             ; preds = %1805
  switch i32 %65, label %1878 [
    i32 4, label %1850
    i32 3, label %1855
    i32 2, label %1863
    i32 1, label %1871
  ]

1850:                                             ; preds = %1849
  %1851 = getelementptr inbounds i8, ptr %568, i64 2
  %1852 = load i8, ptr %569, align 1, !tbaa !27
  %1853 = zext i8 %1852 to i64
  %1854 = shl nuw nsw i64 %1853, 24
  br label %1855

1855:                                             ; preds = %1849, %1850
  %1856 = phi i64 [ 0, %1849 ], [ %1854, %1850 ]
  %1857 = phi ptr [ %569, %1849 ], [ %1851, %1850 ]
  %1858 = getelementptr inbounds i8, ptr %1857, i64 1
  %1859 = load i8, ptr %1857, align 1, !tbaa !27
  %1860 = zext i8 %1859 to i64
  %1861 = shl nuw nsw i64 %1860, 16
  %1862 = or disjoint i64 %1861, %1856
  br label %1863

1863:                                             ; preds = %1809, %1849, %1855
  %1864 = phi i64 [ 0, %1849 ], [ %1862, %1855 ], [ 0, %1809 ]
  %1865 = phi ptr [ %569, %1849 ], [ %1858, %1855 ], [ %569, %1809 ]
  %1866 = getelementptr inbounds i8, ptr %1865, i64 1
  %1867 = load i8, ptr %1865, align 1, !tbaa !27
  %1868 = zext i8 %1867 to i64
  %1869 = shl nuw nsw i64 %1868, 8
  %1870 = or i64 %1869, %1864
  br label %1871

1871:                                             ; preds = %1849, %1863
  %1872 = phi i64 [ 0, %1849 ], [ %1870, %1863 ]
  %1873 = phi ptr [ %569, %1849 ], [ %1866, %1863 ]
  %1874 = getelementptr inbounds i8, ptr %1873, i64 1
  %1875 = load i8, ptr %1873, align 1, !tbaa !27
  %1876 = zext i8 %1875 to i64
  %1877 = or i64 %1872, %1876
  br label %1878

1878:                                             ; preds = %1809, %1871, %1849
  %1879 = phi i64 [ 0, %1849 ], [ %1877, %1871 ], [ 0, %1809 ]
  %1880 = phi ptr [ %569, %1849 ], [ %1874, %1871 ], [ %569, %1809 ]
  store i64 %1879, ptr %1806, align 8, !tbaa !56
  br label %3633, !llvm.loop !101

1881:                                             ; preds = %564, %564
  %1882 = load i8, ptr %569, align 1, !tbaa !27
  %1883 = icmp sgt i8 %1882, -1
  br i1 %1883, label %1884, label %1887

1884:                                             ; preds = %1881
  %1885 = zext nneg i8 %1882 to i32
  %1886 = getelementptr inbounds i8, ptr %568, i64 2
  br label %1905

1887:                                             ; preds = %1881
  %1888 = getelementptr inbounds i8, ptr %568, i64 2
  %1889 = and i8 %1882, 127
  %1890 = zext nneg i8 %1889 to i64
  br label %1891

1891:                                             ; preds = %1891, %1887
  %1892 = phi i64 [ %1902, %1891 ], [ 7, %1887 ]
  %1893 = phi ptr [ %1900, %1891 ], [ %1888, %1887 ]
  %1894 = phi i64 [ %1899, %1891 ], [ %1890, %1887 ]
  %1895 = load i8, ptr %1893, align 1, !tbaa !27
  %1896 = and i8 %1895, 127
  %1897 = zext nneg i8 %1896 to i64
  %1898 = shl i64 %1897, %1892
  %1899 = add nsw i64 %1898, %1894
  %1900 = getelementptr inbounds i8, ptr %1893, i64 1
  %1901 = icmp slt i8 %1895, 0
  %1902 = add nuw i64 %1892, 7
  br i1 %1901, label %1891, label %1903, !llvm.loop !102

1903:                                             ; preds = %1891
  %1904 = trunc i64 %1899 to i32
  br label %1905

1905:                                             ; preds = %1903, %1884
  %1906 = phi i32 [ %1904, %1903 ], [ %1885, %1884 ]
  %1907 = phi ptr [ %1900, %1903 ], [ %1886, %1884 ]
  store i32 %1906, ptr %322, align 8, !tbaa !181
  %1908 = and i32 %571, 15
  %1909 = icmp eq i32 %1908, 0
  br i1 %1909, label %1916, label %1910

1910:                                             ; preds = %1905
  %1911 = lshr i32 %571, 2
  %1912 = and i32 %1911, 3
  %1913 = add nsw i32 %1912, -2
  %1914 = load i32, ptr %323, align 4, !tbaa !182
  %1915 = add nsw i32 %1913, %1914
  store i32 %1915, ptr %323, align 4, !tbaa !182
  br label %1940

1916:                                             ; preds = %1905
  %1917 = load i8, ptr %1907, align 1, !tbaa !27
  %1918 = icmp sgt i8 %1917, -1
  br i1 %1918, label %1919, label %1922

1919:                                             ; preds = %1916
  %1920 = zext nneg i8 %1917 to i32
  %1921 = getelementptr inbounds i8, ptr %1907, i64 1
  store i32 %1920, ptr %325, align 4, !tbaa !182
  br label %1940

1922:                                             ; preds = %1916
  %1923 = getelementptr inbounds i8, ptr %1907, i64 1
  %1924 = and i8 %1917, 127
  %1925 = zext nneg i8 %1924 to i64
  br label %1926

1926:                                             ; preds = %1926, %1922
  %1927 = phi i64 [ %1937, %1926 ], [ 7, %1922 ]
  %1928 = phi ptr [ %1935, %1926 ], [ %1923, %1922 ]
  %1929 = phi i64 [ %1934, %1926 ], [ %1925, %1922 ]
  %1930 = load i8, ptr %1928, align 1, !tbaa !27
  %1931 = and i8 %1930, 127
  %1932 = zext nneg i8 %1931 to i64
  %1933 = shl i64 %1932, %1927
  %1934 = add nsw i64 %1933, %1929
  %1935 = getelementptr inbounds i8, ptr %1928, i64 1
  %1936 = icmp slt i8 %1930, 0
  %1937 = add nuw i64 %1927, 7
  br i1 %1936, label %1926, label %1938, !llvm.loop !102

1938:                                             ; preds = %1926
  %1939 = trunc i64 %1934 to i32
  store i32 %1939, ptr %324, align 4, !tbaa !182
  br label %1940

1940:                                             ; preds = %1938, %1919, %1910
  %1941 = phi ptr [ %1907, %1910 ], [ %1921, %1919 ], [ %1935, %1938 ]
  %1942 = load i8, ptr %1941, align 1, !tbaa !27
  %1943 = icmp sgt i8 %1942, -1
  br i1 %1943, label %1944, label %1947

1944:                                             ; preds = %1940
  %1945 = zext nneg i8 %1942 to i32
  %1946 = getelementptr inbounds i8, ptr %1941, i64 1
  store i32 %1945, ptr %327, align 8, !tbaa !183
  br label %1965

1947:                                             ; preds = %1940
  %1948 = getelementptr inbounds i8, ptr %1941, i64 1
  %1949 = and i8 %1942, 127
  %1950 = zext nneg i8 %1949 to i64
  br label %1951

1951:                                             ; preds = %1951, %1947
  %1952 = phi i64 [ %1962, %1951 ], [ 7, %1947 ]
  %1953 = phi ptr [ %1960, %1951 ], [ %1948, %1947 ]
  %1954 = phi i64 [ %1959, %1951 ], [ %1950, %1947 ]
  %1955 = load i8, ptr %1953, align 1, !tbaa !27
  %1956 = and i8 %1955, 127
  %1957 = zext nneg i8 %1956 to i64
  %1958 = shl i64 %1957, %1952
  %1959 = add nsw i64 %1958, %1954
  %1960 = getelementptr inbounds i8, ptr %1953, i64 1
  %1961 = icmp slt i8 %1955, 0
  %1962 = add nuw i64 %1952, 7
  br i1 %1961, label %1951, label %1963, !llvm.loop !102

1963:                                             ; preds = %1951
  %1964 = trunc i64 %1959 to i32
  store i32 %1964, ptr %326, align 8, !tbaa !183
  br label %1965

1965:                                             ; preds = %1963, %1944
  %1966 = phi ptr [ %1946, %1944 ], [ %1960, %1963 ]
  br i1 %1909, label %1972, label %1967

1967:                                             ; preds = %1965
  %1968 = and i32 %571, 3
  %1969 = add nsw i32 %1968, -2
  %1970 = load i32, ptr %328, align 4, !tbaa !184
  %1971 = add nsw i32 %1969, %1970
  store i32 %1971, ptr %328, align 4, !tbaa !184
  br label %3503

1972:                                             ; preds = %1965
  %1973 = load i8, ptr %1966, align 1, !tbaa !27
  %1974 = icmp sgt i8 %1973, -1
  br i1 %1974, label %1975, label %1978

1975:                                             ; preds = %1972
  %1976 = zext nneg i8 %1973 to i32
  %1977 = getelementptr inbounds i8, ptr %1966, i64 1
  store i32 %1976, ptr %330, align 4, !tbaa !184
  br label %3503

1978:                                             ; preds = %1972
  %1979 = getelementptr inbounds i8, ptr %1966, i64 1
  %1980 = and i8 %1973, 127
  %1981 = zext nneg i8 %1980 to i64
  br label %1982

1982:                                             ; preds = %1982, %1978
  %1983 = phi i64 [ %1993, %1982 ], [ 7, %1978 ]
  %1984 = phi ptr [ %1991, %1982 ], [ %1979, %1978 ]
  %1985 = phi i64 [ %1990, %1982 ], [ %1981, %1978 ]
  %1986 = load i8, ptr %1984, align 1, !tbaa !27
  %1987 = and i8 %1986, 127
  %1988 = zext nneg i8 %1987 to i64
  %1989 = shl i64 %1988, %1983
  %1990 = add nsw i64 %1989, %1985
  %1991 = getelementptr inbounds i8, ptr %1984, i64 1
  %1992 = icmp slt i8 %1986, 0
  %1993 = add nuw i64 %1983, 7
  br i1 %1992, label %1982, label %1994, !llvm.loop !102

1994:                                             ; preds = %1982
  %1995 = trunc i64 %1990 to i32
  store i32 %1995, ptr %329, align 4, !tbaa !184
  br label %3503

1996:                                             ; preds = %564, %564
  %1997 = load i8, ptr %569, align 1, !tbaa !27
  %1998 = zext i8 %1997 to i32
  %1999 = add nsw i32 %1998, -128
  %2000 = load i32, ptr %317, align 8, !tbaa !185
  %2001 = add nsw i32 %1999, %2000
  store i32 %2001, ptr %317, align 8, !tbaa !185
  %2002 = getelementptr inbounds i8, ptr %568, i64 2
  %2003 = load i8, ptr %2002, align 1, !tbaa !27
  %2004 = zext i8 %2003 to i32
  %2005 = add nsw i32 %2004, -128
  %2006 = load i32, ptr %318, align 8, !tbaa !186
  %2007 = add nsw i32 %2005, %2006
  store i32 %2007, ptr %318, align 8, !tbaa !186
  %2008 = and i32 %571, 15
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2015, label %2010

2010:                                             ; preds = %1996
  %2011 = add nsw i32 %2008, -8
  %2012 = load i32, ptr %319, align 4, !tbaa !187
  %2013 = add nsw i32 %2011, %2012
  store i32 %2013, ptr %319, align 4, !tbaa !187
  %2014 = getelementptr inbounds i8, ptr %568, i64 3
  br label %3503

2015:                                             ; preds = %1996
  %2016 = getelementptr inbounds i8, ptr %568, i64 3
  %2017 = load i8, ptr %2016, align 1, !tbaa !27
  %2018 = zext i8 %2017 to i32
  %2019 = add nsw i32 %2018, -128
  %2020 = load i32, ptr %320, align 4, !tbaa !188
  %2021 = add nsw i32 %2019, %2020
  store i32 %2021, ptr %320, align 4, !tbaa !188
  %2022 = getelementptr inbounds i8, ptr %568, i64 4
  %2023 = load i8, ptr %2022, align 1, !tbaa !27
  %2024 = zext i8 %2023 to i32
  %2025 = add nsw i32 %2024, -128
  %2026 = load i32, ptr %321, align 4, !tbaa !187
  %2027 = add nsw i32 %2025, %2026
  store i32 %2027, ptr %321, align 4, !tbaa !187
  %2028 = getelementptr inbounds i8, ptr %568, i64 5
  br label %3503

2029:                                             ; preds = %564, %564
  %2030 = and i32 %571, 8
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2036, label %2032

2032:                                             ; preds = %2029
  %2033 = load i32, ptr %313, align 8, !tbaa !186
  %2034 = load i32, ptr %312, align 8, !tbaa !185
  %2035 = add nsw i32 %2034, %2033
  store i32 %2035, ptr %312, align 8, !tbaa !185
  br label %2048

2036:                                             ; preds = %2029
  %2037 = getelementptr inbounds i8, ptr %568, i64 2
  %2038 = load i8, ptr %569, align 1, !tbaa !27
  %2039 = zext i8 %2038 to i32
  %2040 = lshr i32 %2039, 4
  %2041 = load i32, ptr %314, align 8, !tbaa !185
  %2042 = add i32 %2041, -8
  %2043 = add i32 %2042, %2040
  store i32 %2043, ptr %314, align 8, !tbaa !185
  %2044 = and i32 %2039, 15
  %2045 = add nsw i32 %2044, -8
  %2046 = load i32, ptr %315, align 4, !tbaa !188
  %2047 = add nsw i32 %2045, %2046
  store i32 %2047, ptr %315, align 4, !tbaa !188
  br label %2048

2048:                                             ; preds = %2036, %2032
  %2049 = phi ptr [ %569, %2032 ], [ %2037, %2036 ]
  %2050 = and i32 %571, 7
  %2051 = add nsw i32 %2050, -4
  %2052 = load i32, ptr %316, align 8, !tbaa !186
  %2053 = add nsw i32 %2051, %2052
  store i32 %2053, ptr %316, align 8, !tbaa !186
  br label %3503

2054:                                             ; preds = %564
  %2055 = load i16, ptr %282, align 8, !tbaa !180
  %2056 = icmp eq i16 %2055, 0
  br i1 %2056, label %2064, label %2057

2057:                                             ; preds = %2054
  %2058 = and i32 %571, 8
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2060, label %2064

2060:                                             ; preds = %2057
  %2061 = getelementptr inbounds i8, ptr %568, i64 2
  %2062 = load i8, ptr %569, align 1, !tbaa !27
  %2063 = zext i8 %2062 to i32
  br label %2064

2064:                                             ; preds = %2054, %564, %2057, %2060
  %2065 = phi i32 [ %531, %2057 ], [ %2063, %2060 ], [ 1, %564 ], [ %63, %2054 ]
  %2066 = phi ptr [ %569, %2057 ], [ %2061, %2060 ], [ %569, %564 ], [ %569, %2054 ]
  %2067 = load i8, ptr %2066, align 1, !tbaa !27
  %2068 = icmp sgt i8 %2067, -1
  br i1 %2068, label %2069, label %2072

2069:                                             ; preds = %2064
  %2070 = zext nneg i8 %2067 to i32
  %2071 = getelementptr inbounds i8, ptr %2066, i64 1
  store i32 %2070, ptr %284, align 8, !tbaa !185
  br label %2090

2072:                                             ; preds = %2064
  %2073 = getelementptr inbounds i8, ptr %2066, i64 1
  %2074 = and i8 %2067, 127
  %2075 = zext nneg i8 %2074 to i64
  br label %2076

2076:                                             ; preds = %2076, %2072
  %2077 = phi i64 [ %2087, %2076 ], [ 7, %2072 ]
  %2078 = phi ptr [ %2085, %2076 ], [ %2073, %2072 ]
  %2079 = phi i64 [ %2084, %2076 ], [ %2075, %2072 ]
  %2080 = load i8, ptr %2078, align 1, !tbaa !27
  %2081 = and i8 %2080, 127
  %2082 = zext nneg i8 %2081 to i64
  %2083 = shl i64 %2082, %2077
  %2084 = add nsw i64 %2083, %2079
  %2085 = getelementptr inbounds i8, ptr %2078, i64 1
  %2086 = icmp slt i8 %2080, 0
  %2087 = add nuw i64 %2077, 7
  br i1 %2086, label %2076, label %2088, !llvm.loop !102

2088:                                             ; preds = %2076
  %2089 = trunc i64 %2084 to i32
  store i32 %2089, ptr %283, align 8, !tbaa !185
  br label %2090

2090:                                             ; preds = %2069, %2088
  %2091 = phi ptr [ %2071, %2069 ], [ %2085, %2088 ]
  %2092 = load i8, ptr %2091, align 1, !tbaa !27
  %2093 = icmp sgt i8 %2092, -1
  br i1 %2093, label %2094, label %2097

2094:                                             ; preds = %2090
  %2095 = zext nneg i8 %2092 to i32
  %2096 = getelementptr inbounds i8, ptr %2091, i64 1
  store i32 %2095, ptr %286, align 4, !tbaa !188
  br label %2115

2097:                                             ; preds = %2090
  %2098 = getelementptr inbounds i8, ptr %2091, i64 1
  %2099 = and i8 %2092, 127
  %2100 = zext nneg i8 %2099 to i64
  br label %2101

2101:                                             ; preds = %2101, %2097
  %2102 = phi i64 [ %2112, %2101 ], [ 7, %2097 ]
  %2103 = phi ptr [ %2110, %2101 ], [ %2098, %2097 ]
  %2104 = phi i64 [ %2109, %2101 ], [ %2100, %2097 ]
  %2105 = load i8, ptr %2103, align 1, !tbaa !27
  %2106 = and i8 %2105, 127
  %2107 = zext nneg i8 %2106 to i64
  %2108 = shl i64 %2107, %2102
  %2109 = add nsw i64 %2108, %2104
  %2110 = getelementptr inbounds i8, ptr %2103, i64 1
  %2111 = icmp slt i8 %2105, 0
  %2112 = add nuw i64 %2102, 7
  br i1 %2111, label %2101, label %2113, !llvm.loop !102

2113:                                             ; preds = %2101
  %2114 = trunc i64 %2109 to i32
  store i32 %2114, ptr %285, align 4, !tbaa !188
  br label %2115

2115:                                             ; preds = %2113, %2094
  %2116 = phi ptr [ %2096, %2094 ], [ %2110, %2113 ]
  %2117 = and i32 %571, 8
  %2118 = icmp eq i32 %2117, 0
  br i1 %2118, label %2132, label %2119

2119:                                             ; preds = %2115
  %2120 = getelementptr inbounds %struct.gx_cached_bits_head_s, ptr %509, i64 0, i32 1
  %2121 = load i32, ptr %2120, align 4, !tbaa !189
  %2122 = getelementptr inbounds %struct.tile_slot, ptr %509, i64 0, i32 1
  %2123 = load i16, ptr %2122, align 8, !tbaa !192
  %2124 = zext i16 %2123 to i32
  store i32 %2124, ptr %287, align 8, !tbaa !186
  %2125 = getelementptr inbounds %struct.tile_slot, ptr %509, i64 0, i32 2
  %2126 = load i16, ptr %2125, align 2, !tbaa !193
  %2127 = zext i16 %2126 to i32
  store i32 %2127, ptr %288, align 4, !tbaa !187
  %2128 = getelementptr inbounds %struct.tile_slot, ptr %509, i64 0, i32 4
  %2129 = load i16, ptr %2128, align 2, !tbaa !194
  %2130 = zext i16 %2129 to i32
  store i32 %2130, ptr %28, align 4, !tbaa !38
  %2131 = getelementptr inbounds %struct.tile_slot, ptr %509, i64 1
  br label %3503

2132:                                             ; preds = %2115
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %44) #7
  %2133 = load i8, ptr %2116, align 1, !tbaa !27
  %2134 = icmp sgt i8 %2133, -1
  br i1 %2134, label %2135, label %2138

2135:                                             ; preds = %2132
  %2136 = zext nneg i8 %2133 to i32
  %2137 = getelementptr inbounds i8, ptr %2116, i64 1
  store i32 %2136, ptr %290, align 8, !tbaa !186
  br label %2156

2138:                                             ; preds = %2132
  %2139 = getelementptr inbounds i8, ptr %2116, i64 1
  %2140 = and i8 %2133, 127
  %2141 = zext nneg i8 %2140 to i64
  br label %2142

2142:                                             ; preds = %2142, %2138
  %2143 = phi i64 [ %2153, %2142 ], [ 7, %2138 ]
  %2144 = phi ptr [ %2151, %2142 ], [ %2139, %2138 ]
  %2145 = phi i64 [ %2150, %2142 ], [ %2141, %2138 ]
  %2146 = load i8, ptr %2144, align 1, !tbaa !27
  %2147 = and i8 %2146, 127
  %2148 = zext nneg i8 %2147 to i64
  %2149 = shl i64 %2148, %2143
  %2150 = add nsw i64 %2149, %2145
  %2151 = getelementptr inbounds i8, ptr %2144, i64 1
  %2152 = icmp slt i8 %2146, 0
  %2153 = add nuw i64 %2143, 7
  br i1 %2152, label %2142, label %2154, !llvm.loop !102

2154:                                             ; preds = %2142
  %2155 = trunc i64 %2150 to i32
  store i32 %2155, ptr %289, align 8, !tbaa !186
  br label %2156

2156:                                             ; preds = %2135, %2154
  %2157 = phi ptr [ %2137, %2135 ], [ %2151, %2154 ]
  %2158 = load i8, ptr %2157, align 1, !tbaa !27
  %2159 = icmp sgt i8 %2158, -1
  br i1 %2159, label %2160, label %2163

2160:                                             ; preds = %2156
  %2161 = zext nneg i8 %2158 to i32
  %2162 = getelementptr inbounds i8, ptr %2157, i64 1
  store i32 %2161, ptr %292, align 4, !tbaa !187
  br label %2181

2163:                                             ; preds = %2156
  %2164 = getelementptr inbounds i8, ptr %2157, i64 1
  %2165 = and i8 %2158, 127
  %2166 = zext nneg i8 %2165 to i64
  br label %2167

2167:                                             ; preds = %2167, %2163
  %2168 = phi i64 [ %2178, %2167 ], [ 7, %2163 ]
  %2169 = phi ptr [ %2176, %2167 ], [ %2164, %2163 ]
  %2170 = phi i64 [ %2175, %2167 ], [ %2166, %2163 ]
  %2171 = load i8, ptr %2169, align 1, !tbaa !27
  %2172 = and i8 %2171, 127
  %2173 = zext nneg i8 %2172 to i64
  %2174 = shl i64 %2173, %2168
  %2175 = add nsw i64 %2174, %2170
  %2176 = getelementptr inbounds i8, ptr %2169, i64 1
  %2177 = icmp slt i8 %2171, 0
  %2178 = add nuw i64 %2168, 7
  br i1 %2177, label %2167, label %2179, !llvm.loop !102

2179:                                             ; preds = %2167
  %2180 = trunc i64 %2175 to i32
  store i32 %2180, ptr %291, align 4, !tbaa !187
  br label %2181

2181:                                             ; preds = %2179, %2160
  %2182 = phi ptr [ %2162, %2160 ], [ %2176, %2179 ]
  %2183 = load i32, ptr %293, align 8, !tbaa !186
  %2184 = mul nsw i32 %2183, %2065
  %2185 = load i32, ptr %294, align 4, !tbaa !187
  %2186 = and i32 %571, 3
  %2187 = call i32 @clist_bitmap_bytes(i32 noundef %2184, i32 noundef %2185, i32 noundef %2186, ptr noundef nonnull %44, ptr noundef nonnull %28) #7
  %2188 = icmp eq i32 %2186, 0
  br i1 %2188, label %2228, label %2189

2189:                                             ; preds = %2181
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %45) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %46) #7
  %2190 = ptrtoint ptr %566 to i64
  %2191 = ptrtoint ptr %2182 to i64
  %2192 = sub i64 %2190, %2191
  %2193 = trunc i64 %2192 to i32
  %2194 = icmp ugt i32 %2187, %2193
  br i1 %2194, label %2195, label %2206

2195:                                             ; preds = %2189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %47) #7
  %2196 = sub i32 800, %2193
  store i32 %2196, ptr %47, align 4, !tbaa !38
  %2197 = and i64 %2192, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %9, ptr nonnull align 1 %2182, i64 %2197, i1 false)
  %2198 = getelementptr inbounds i8, ptr %9, i64 %2197
  %2199 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %2198, i32 noundef %2196, ptr noundef nonnull %47) #7
  %2200 = load i32, ptr %47, align 4, !tbaa !38
  %2201 = zext i32 %2200 to i64
  %2202 = add nuw nsw i64 %2197, %2201
  %2203 = getelementptr inbounds i8, ptr %9, i64 %2202
  %2204 = icmp ult i64 %2202, 751
  %2205 = select i1 %2204, ptr %2203, ptr %66
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %47) #7
  br label %2206

2206:                                             ; preds = %2195, %2189
  %2207 = phi i32 [ %2199, %2195 ], [ %565, %2189 ]
  %2208 = phi ptr [ %2203, %2195 ], [ %566, %2189 ]
  %2209 = phi ptr [ %2205, %2195 ], [ %567, %2189 ]
  %2210 = phi ptr [ %9, %2195 ], [ %2182, %2189 ]
  %2211 = getelementptr inbounds i8, ptr %2210, i64 -1
  store ptr %2211, ptr %45, align 8, !tbaa !122
  %2212 = getelementptr inbounds i8, ptr %2208, i64 -1
  store ptr %2212, ptr %295, align 8, !tbaa !124
  store ptr %500, ptr %296, align 8, !tbaa !15
  store ptr %501, ptr %297, align 8, !tbaa !17
  switch i32 %2186, label %2224 [
    i32 1, label %2213
    i32 2, label %2215
  ]

2213:                                             ; preds = %2206
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %48) #7
  store i32 1, ptr %309, align 8, !tbaa !125
  store i32 0, ptr %310, align 4, !tbaa !127
  %2214 = call i32 %311(ptr noundef nonnull %48, ptr noundef nonnull %45, ptr noundef nonnull %46, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %48) #7
  br label %2221

2215:                                             ; preds = %2206
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %49) #7
  call void %298(ptr noundef nonnull %49) #7
  store ptr @gs_memory_default, ptr %299, align 8, !tbaa !128
  store i32 -1, ptr %300, align 8, !tbaa !130
  %2216 = load i32, ptr %44, align 4, !tbaa !38
  %2217 = shl i32 %2216, 3
  store i32 %2217, ptr %301, align 4, !tbaa !131
  store i32 0, ptr %302, align 4, !tbaa !132
  store i32 1, ptr %303, align 8, !tbaa !133
  store i32 8, ptr %304, align 8, !tbaa !134
  %2218 = load i32, ptr %294, align 4, !tbaa !187
  store i32 %2218, ptr %305, align 8, !tbaa !135
  %2219 = call i32 %306(ptr noundef nonnull %49) #7
  %2220 = call i32 %307(ptr noundef nonnull %49, ptr noundef nonnull %45, ptr noundef nonnull %46, i32 noundef 1) #7
  call void %308(ptr noundef nonnull %49) #7
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %49) #7
  br label %2221

2221:                                             ; preds = %2215, %2213
  %2222 = load ptr, ptr %45, align 8, !tbaa !122
  %2223 = getelementptr inbounds i8, ptr %2222, i64 1
  br label %2224

2224:                                             ; preds = %2206, %2221
  %2225 = phi i32 [ 0, %2221 ], [ 39, %2206 ]
  %2226 = phi ptr [ %497, %2221 ], [ %532, %2206 ]
  %2227 = phi ptr [ %2223, %2221 ], [ %2210, %2206 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %46) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %45) #7
  br label %2318

2228:                                             ; preds = %2181
  %2229 = load i32, ptr %294, align 4, !tbaa !187
  %2230 = icmp sgt i32 %2229, 1
  br i1 %2230, label %2231, label %2304

2231:                                             ; preds = %2228
  %2232 = load i32, ptr %44, align 4, !tbaa !38
  %2233 = load i32, ptr %28, align 4, !tbaa !38
  %2234 = icmp eq i32 %2232, %2233
  br i1 %2234, label %2304, label %2235

2235:                                             ; preds = %2231
  %2236 = ptrtoint ptr %566 to i64
  %2237 = ptrtoint ptr %2182 to i64
  %2238 = sub i64 %2236, %2237
  %2239 = mul i32 %2232, %2229
  %2240 = zext i32 %2239 to i64
  %2241 = icmp slt i64 %2238, %2240
  br i1 %2241, label %2248, label %2242

2242:                                             ; preds = %2235
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %497, ptr nonnull align 1 %2182, i64 %2240, i1 false)
  %2243 = load i32, ptr %44, align 4, !tbaa !38
  %2244 = load i32, ptr %294, align 4, !tbaa !187
  %2245 = mul i32 %2244, %2243
  %2246 = zext i32 %2245 to i64
  %2247 = getelementptr inbounds i8, ptr %2182, i64 %2246
  br label %2255

2248:                                             ; preds = %2235
  %2249 = trunc i64 %2238 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %50) #7
  %2250 = sub i32 %2239, %2249
  store i32 %2250, ptr %50, align 4, !tbaa !38
  %2251 = and i64 %2238, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %497, ptr nonnull align 1 %2182, i64 %2251, i1 false)
  %2252 = getelementptr inbounds i8, ptr %497, i64 %2251
  %2253 = load i32, ptr %50, align 4, !tbaa !38
  %2254 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %2252, i32 noundef %2253, ptr noundef nonnull %50) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %50) #7
  br label %2255

2255:                                             ; preds = %2248, %2242
  %2256 = phi ptr [ %2247, %2242 ], [ %566, %2248 ]
  %2257 = load i32, ptr %44, align 4, !tbaa !38
  %2258 = load i32, ptr %294, align 4, !tbaa !187
  %2259 = icmp sgt i32 %2258, 0
  br i1 %2259, label %2260, label %2318

2260:                                             ; preds = %2255
  %2261 = load i32, ptr %28, align 4, !tbaa !38
  %2262 = mul i32 %2261, %2258
  %2263 = zext i32 %2262 to i64
  %2264 = getelementptr inbounds i8, ptr %497, i64 %2263
  %2265 = mul nsw i32 %2258, %2257
  %2266 = zext i32 %2265 to i64
  %2267 = getelementptr inbounds i8, ptr %497, i64 %2266
  %2268 = zext i32 %2261 to i64
  %2269 = sub nsw i64 0, %2268
  %2270 = sext i32 %2257 to i64
  %2271 = sub nsw i64 0, %2270
  br label %2272

2272:                                             ; preds = %2302, %2260
  %2273 = phi i32 [ %2258, %2260 ], [ %2276, %2302 ]
  %2274 = phi ptr [ %2264, %2260 ], [ %2277, %2302 ]
  %2275 = phi ptr [ %2267, %2260 ], [ %2278, %2302 ]
  %2276 = add nsw i32 %2273, -1
  %2277 = getelementptr inbounds i8, ptr %2274, i64 %2269
  %2278 = getelementptr inbounds i8, ptr %2275, i64 %2271
  switch i32 %2257, label %2279 [
    i32 6, label %2280
    i32 5, label %2284
    i32 4, label %2288
    i32 3, label %2292
    i32 2, label %2296
    i32 1, label %2300
    i32 0, label %2302
  ]

2279:                                             ; preds = %2272
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %2277, ptr align 1 %2278, i64 %2270, i1 false)
  br label %2302

2280:                                             ; preds = %2272
  %2281 = getelementptr inbounds i8, ptr %2278, i64 5
  %2282 = load i8, ptr %2281, align 1, !tbaa !27
  %2283 = getelementptr inbounds i8, ptr %2277, i64 5
  store i8 %2282, ptr %2283, align 1, !tbaa !27
  br label %2284

2284:                                             ; preds = %2280, %2272
  %2285 = getelementptr inbounds i8, ptr %2278, i64 4
  %2286 = load i8, ptr %2285, align 1, !tbaa !27
  %2287 = getelementptr inbounds i8, ptr %2277, i64 4
  store i8 %2286, ptr %2287, align 1, !tbaa !27
  br label %2288

2288:                                             ; preds = %2284, %2272
  %2289 = getelementptr inbounds i8, ptr %2278, i64 3
  %2290 = load i8, ptr %2289, align 1, !tbaa !27
  %2291 = getelementptr inbounds i8, ptr %2277, i64 3
  store i8 %2290, ptr %2291, align 1, !tbaa !27
  br label %2292

2292:                                             ; preds = %2288, %2272
  %2293 = getelementptr inbounds i8, ptr %2278, i64 2
  %2294 = load i8, ptr %2293, align 1, !tbaa !27
  %2295 = getelementptr inbounds i8, ptr %2277, i64 2
  store i8 %2294, ptr %2295, align 1, !tbaa !27
  br label %2296

2296:                                             ; preds = %2292, %2272
  %2297 = getelementptr inbounds i8, ptr %2278, i64 1
  %2298 = load i8, ptr %2297, align 1, !tbaa !27
  %2299 = getelementptr inbounds i8, ptr %2277, i64 1
  store i8 %2298, ptr %2299, align 1, !tbaa !27
  br label %2300

2300:                                             ; preds = %2296, %2272
  %2301 = load i8, ptr %2278, align 1, !tbaa !27
  store i8 %2301, ptr %2277, align 1, !tbaa !27
  br label %2302

2302:                                             ; preds = %2300, %2279, %2272
  %2303 = icmp sgt i32 %2273, 1
  br i1 %2303, label %2272, label %2318, !llvm.loop !136

2304:                                             ; preds = %2231, %2228
  %2305 = ptrtoint ptr %566 to i64
  %2306 = ptrtoint ptr %2182 to i64
  %2307 = sub i64 %2305, %2306
  %2308 = zext i32 %2187 to i64
  %2309 = icmp slt i64 %2307, %2308
  br i1 %2309, label %2312, label %2310

2310:                                             ; preds = %2304
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr nonnull align 1 %2182, i64 %2308, i1 false)
  %2311 = getelementptr inbounds i8, ptr %2182, i64 %2308
  br label %2318

2312:                                             ; preds = %2304
  %2313 = trunc i64 %2307 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51) #7
  %2314 = sub i32 %2187, %2313
  store i32 %2314, ptr %51, align 4, !tbaa !38
  %2315 = and i64 %2307, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr nonnull align 1 %2182, i64 %2315, i1 false)
  %2316 = getelementptr inbounds i8, ptr %9, i64 %2315
  %2317 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %2316, i32 noundef %2314, ptr noundef nonnull %51) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51) #7
  br label %2318

2318:                                             ; preds = %2302, %2255, %2224, %2312, %2310
  %2319 = phi i32 [ 0, %2310 ], [ 0, %2312 ], [ %2225, %2224 ], [ 0, %2255 ], [ 0, %2302 ]
  %2320 = phi ptr [ %9, %2310 ], [ %9, %2312 ], [ %2226, %2224 ], [ %497, %2255 ], [ %497, %2302 ]
  %2321 = phi i32 [ %565, %2310 ], [ %565, %2312 ], [ %2207, %2224 ], [ %565, %2255 ], [ %565, %2302 ]
  %2322 = phi ptr [ %566, %2310 ], [ %566, %2312 ], [ %2208, %2224 ], [ %566, %2255 ], [ %566, %2302 ]
  %2323 = phi ptr [ %567, %2310 ], [ %567, %2312 ], [ %2209, %2224 ], [ %567, %2255 ], [ %567, %2302 ]
  %2324 = phi ptr [ %2311, %2310 ], [ %566, %2312 ], [ %2227, %2224 ], [ %2256, %2255 ], [ %2256, %2302 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %44) #7
  switch i32 %2319, label %3633 [
    i32 0, label %3503
    i32 39, label %3442
  ]

2325:                                             ; preds = %564
  %2326 = and i32 %571, 15
  %2327 = add nsw i32 %2326, -8
  %2328 = load i32, ptr %278, align 8, !tbaa !108
  %2329 = add i32 %2327, %2328
  store i32 %2329, ptr %278, align 8, !tbaa !108
  br label %2337

2330:                                             ; preds = %564
  %2331 = shl nuw nsw i32 %571, 8
  %2332 = and i32 %2331, 3840
  %2333 = getelementptr inbounds i8, ptr %568, i64 2
  %2334 = load i8, ptr %569, align 1, !tbaa !27
  %2335 = zext i8 %2334 to i32
  %2336 = or disjoint i32 %2332, %2335
  store i32 %2336, ptr %277, align 8, !tbaa !108
  br label %2337

2337:                                             ; preds = %2330, %2325
  %2338 = phi ptr [ %2333, %2330 ], [ %569, %2325 ]
  %2339 = load ptr, ptr %279, align 8, !tbaa !112
  %2340 = load ptr, ptr %280, align 8, !tbaa !109
  %2341 = load i32, ptr %281, align 8, !tbaa !108
  %2342 = zext i32 %2341 to i64
  %2343 = getelementptr inbounds %struct.tile_hash, ptr %2340, i64 %2342
  %2344 = load i64, ptr %2343, align 8, !tbaa !110
  %2345 = getelementptr inbounds i8, ptr %2339, i64 %2344
  %2346 = getelementptr inbounds %struct.tile_slot, ptr %2345, i64 1
  store ptr %2346, ptr %11, align 8, !tbaa !121
  br label %2347

2347:                                             ; preds = %1015, %2337
  %2348 = phi ptr [ %2345, %2337 ], [ %866, %1015 ]
  %2349 = phi i32 [ %565, %2337 ], [ %1017, %1015 ]
  %2350 = phi ptr [ %566, %2337 ], [ %1018, %1015 ]
  %2351 = phi ptr [ %567, %2337 ], [ %1019, %1015 ]
  %2352 = phi ptr [ %2338, %2337 ], [ %1020, %1015 ]
  %2353 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 1
  %2354 = load i16, ptr %2353, align 8, !tbaa !192
  %2355 = zext i16 %2354 to i32
  store i32 %2355, ptr %441, align 4, !tbaa !195
  %2356 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 2
  %2357 = load i16, ptr %2356, align 2, !tbaa !193
  %2358 = zext i16 %2357 to i32
  store i32 %2358, ptr %442, align 8, !tbaa !196
  %2359 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 4
  %2360 = load i16, ptr %2359, align 2, !tbaa !194
  %2361 = zext i16 %2360 to i32
  store i32 %2361, ptr %443, align 8, !tbaa !197
  %2362 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 6
  %2363 = load i8, ptr %2362, align 8, !tbaa !198
  %2364 = zext i8 %2363 to i16
  %2365 = udiv i16 %2354, %2364
  store i16 %2365, ptr %444, align 8, !tbaa !199
  %2366 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 7
  %2367 = load i8, ptr %2366, align 1, !tbaa !200
  %2368 = zext i8 %2367 to i16
  %2369 = udiv i16 %2357, %2368
  store i16 %2369, ptr %445, align 2, !tbaa !201
  %2370 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 8
  %2371 = load i16, ptr %2370, align 2, !tbaa !202
  store i16 %2371, ptr %69, align 4, !tbaa !77
  %2372 = getelementptr inbounds %struct.tile_slot, ptr %2348, i64 0, i32 3
  %2373 = load i16, ptr %2372, align 4, !tbaa !203
  store i16 %2373, ptr %70, align 2, !tbaa !78
  br label %2374

2374:                                             ; preds = %788, %769, %2347
  %2375 = phi ptr [ %2348, %2347 ], [ %509, %769 ], [ %509, %788 ]
  %2376 = phi i32 [ %2349, %2347 ], [ %565, %769 ], [ %565, %788 ]
  %2377 = phi ptr [ %2350, %2347 ], [ %566, %769 ], [ %566, %788 ]
  %2378 = phi ptr [ %2351, %2347 ], [ %567, %769 ], [ %567, %788 ]
  %2379 = phi ptr [ %2352, %2347 ], [ %771, %769 ], [ %785, %788 ]
  %2380 = load i32, ptr %450, align 8, !tbaa !103
  %2381 = add nsw i32 %2380, %3
  %2382 = load i32, ptr %451, align 4, !tbaa !195
  %2383 = srem i32 %2381, %2382
  %2384 = load i32, ptr %452, align 4, !tbaa !107
  %2385 = add nsw i32 %2384, %4
  %2386 = load i32, ptr %453, align 8, !tbaa !196
  %2387 = srem i32 %2385, %2386
  %2388 = sub nsw i32 0, %2381
  %2389 = sub nsw i32 0, %2385
  %2390 = call i32 @gx_imager_setscreenphase(ptr noundef nonnull %17, i32 noundef %2388, i32 noundef %2389, i32 noundef -1) #7
  br label %3633, !llvm.loop !101

2391:                                             ; preds = %564
  switch i8 %570, label %3442 [
    i8 -48, label %2392
    i8 -47, label %2395
    i8 -46, label %2400
    i8 -45, label %2459
    i8 -44, label %2463
    i8 -43, label %2484
    i8 -42, label %2489
    i8 -41, label %2509
    i8 -40, label %3096
    i8 -39, label %2512
    i8 -38, label %2515
    i8 -37, label %2547
    i8 -36, label %2596
    i8 -35, label %2905
    i8 -34, label %3019
  ]

2392:                                             ; preds = %2391
  %2393 = load i32, ptr %569, align 1
  store i32 %2393, ptr %276, align 4
  %2394 = getelementptr inbounds i8, ptr %568, i64 5
  br label %3633, !llvm.loop !101

2395:                                             ; preds = %2391
  %2396 = load i64, ptr %569, align 1
  store i64 %2396, ptr %274, align 8
  %2397 = getelementptr inbounds i8, ptr %568, i64 9
  %2398 = load i64, ptr %2397, align 1
  store i64 %2398, ptr %275, align 8
  %2399 = getelementptr inbounds i8, ptr %568, i64 17
  br label %3633, !llvm.loop !101

2400:                                             ; preds = %2391
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %52) #7
  %2401 = getelementptr inbounds i8, ptr %568, i64 2
  %2402 = load i8, ptr %569, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #7
  br label %2403

2403:                                             ; preds = %2429, %2400
  %2404 = phi i64 [ 0, %2400 ], [ %2431, %2429 ]
  %2405 = phi ptr [ %2401, %2400 ], [ %2430, %2429 ]
  %2406 = phi i8 [ %2402, %2400 ], [ %2432, %2429 ]
  %2407 = icmp ult i8 %2406, 64
  br i1 %2407, label %2408, label %2412

2408:                                             ; preds = %2403
  %2409 = xor i64 %2404, 3
  %2410 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2409
  store float 0.000000e+00, ptr %2410, align 4, !tbaa !87
  %2411 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2404
  store float 0.000000e+00, ptr %2411, align 8, !tbaa !87
  br label %2429

2412:                                             ; preds = %2403
  %2413 = load float, ptr %2405, align 1
  %2414 = getelementptr inbounds i8, ptr %2405, i64 4
  %2415 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2404
  store float %2413, ptr %2415, align 8, !tbaa !87
  %2416 = lshr i8 %2406, 6
  switch i8 %2416, label %2429 [
    i8 1, label %2417
    i8 2, label %2420
    i8 3, label %2424
  ]

2417:                                             ; preds = %2412
  %2418 = xor i64 %2404, 3
  %2419 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2418
  store float %2413, ptr %2419, align 4, !tbaa !87
  br label %2429

2420:                                             ; preds = %2412
  %2421 = fneg float %2413
  %2422 = xor i64 %2404, 3
  %2423 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2422
  store float %2421, ptr %2423, align 4, !tbaa !87
  br label %2429

2424:                                             ; preds = %2412
  %2425 = xor i64 %2404, 3
  %2426 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2425
  %2427 = load i32, ptr %2414, align 1
  store i32 %2427, ptr %2426, align 4
  %2428 = getelementptr inbounds i8, ptr %2405, i64 8
  br label %2429

2429:                                             ; preds = %2424, %2420, %2417, %2412, %2408
  %2430 = phi ptr [ %2405, %2408 ], [ %2414, %2412 ], [ %2428, %2424 ], [ %2414, %2420 ], [ %2414, %2417 ]
  %2431 = add nuw nsw i64 %2404, 2
  %2432 = shl i8 %2406, 2
  %2433 = icmp eq i64 %2404, 0
  br i1 %2433, label %2403, label %2434, !llvm.loop !204

2434:                                             ; preds = %2429, %2444
  %2435 = phi i64 [ %2446, %2444 ], [ 4, %2429 ]
  %2436 = phi ptr [ %2445, %2444 ], [ %2430, %2429 ]
  %2437 = phi i8 [ %2447, %2444 ], [ %2432, %2429 ]
  %2438 = icmp sgt i8 %2437, -1
  %2439 = getelementptr inbounds [6 x float], ptr %8, i64 0, i64 %2435
  br i1 %2438, label %2443, label %2440

2440:                                             ; preds = %2434
  %2441 = load i32, ptr %2436, align 1
  store i32 %2441, ptr %2439, align 4
  %2442 = getelementptr inbounds i8, ptr %2436, i64 4
  br label %2444

2443:                                             ; preds = %2434
  store float 0.000000e+00, ptr %2439, align 4, !tbaa !87
  br label %2444

2444:                                             ; preds = %2443, %2440
  %2445 = phi ptr [ %2442, %2440 ], [ %2436, %2443 ]
  %2446 = add nuw nsw i64 %2435, 1
  %2447 = shl i8 %2437, 1
  %2448 = icmp eq i64 %2446, 6
  br i1 %2448, label %2449, label %2434, !llvm.loop !205

2449:                                             ; preds = %2444
  %2450 = load float, ptr %8, align 16, !tbaa !87
  store float %2450, ptr %52, align 4, !tbaa !206
  %2451 = load float, ptr %262, align 4, !tbaa !87
  store float %2451, ptr %263, align 4, !tbaa !207
  %2452 = load float, ptr %264, align 8, !tbaa !87
  store float %2452, ptr %265, align 4, !tbaa !208
  %2453 = load float, ptr %266, align 4, !tbaa !87
  store float %2453, ptr %267, align 4, !tbaa !209
  %2454 = load float, ptr %268, align 16, !tbaa !87
  store float %2454, ptr %269, align 4, !tbaa !210
  %2455 = load float, ptr %270, align 4, !tbaa !87
  store float %2455, ptr %271, align 4, !tbaa !211
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #7
  %2456 = fsub float %2454, %272
  store float %2456, ptr %269, align 4, !tbaa !210
  %2457 = fsub float %2455, %273
  store float %2457, ptr %271, align 4, !tbaa !211
  %2458 = call i32 @gs_imager_setmatrix(ptr noundef nonnull %17, ptr noundef nonnull %52) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %52) #7
  br label %3633, !llvm.loop !101

2459:                                             ; preds = %2391
  %2460 = load float, ptr %569, align 1
  %2461 = getelementptr inbounds i8, ptr %568, i64 5
  %2462 = fmul float %2460, 5.000000e-01
  store float %2462, ptr %76, align 8, !tbaa !212
  br label %3633, !llvm.loop !101

2463:                                             ; preds = %2391
  %2464 = load i8, ptr %569, align 1, !tbaa !27
  %2465 = zext i8 %2464 to i32
  %2466 = lshr i32 %2465, 6
  switch i32 %2466, label %2479 [
    i32 0, label %2467
    i32 1, label %2471
    i32 2, label %2477
  ]

2467:                                             ; preds = %2463
  %2468 = lshr i32 %2465, 3
  %2469 = and i32 %2468, 7
  store i32 %2469, ptr %260, align 4, !tbaa !213
  %2470 = and i32 %2465, 7
  store i32 %2470, ptr %261, align 8, !tbaa !214
  br label %2479

2471:                                             ; preds = %2463
  %2472 = lshr i32 %2465, 2
  %2473 = and i32 %2472, 1
  store i32 %2473, ptr %257, align 4, !tbaa !215
  %2474 = lshr i32 %2465, 1
  %2475 = and i32 %2474, 1
  store i32 %2475, ptr %258, align 8, !tbaa !216
  %2476 = and i32 %2465, 1
  store i32 %2476, ptr %259, align 8, !tbaa !217
  br label %2479

2477:                                             ; preds = %2463
  %2478 = and i32 %2465, 63
  br label %2479

2479:                                             ; preds = %2467, %2471, %2477, %2463
  %2480 = phi i32 [ 39, %2463 ], [ 0, %2477 ], [ 0, %2471 ], [ 0, %2467 ]
  %2481 = phi i32 [ %528, %2463 ], [ %2478, %2477 ], [ %528, %2471 ], [ %528, %2467 ]
  switch i32 %2480, label %3633 [
    i32 0, label %2482
    i32 39, label %3442
  ]

2482:                                             ; preds = %2479
  %2483 = getelementptr inbounds i8, ptr %568, i64 2
  br label %3633, !llvm.loop !101

2484:                                             ; preds = %2391
  %2485 = load float, ptr %569, align 1
  %2486 = getelementptr inbounds i8, ptr %568, i64 5
  %2487 = fpext float %2485 to double
  %2488 = call i32 @gx_set_miter_limit(ptr noundef nonnull %76, double noundef %2487) #7
  br label %3633, !llvm.loop !101

2489:                                             ; preds = %2391
  %2490 = getelementptr inbounds i8, ptr %568, i64 2
  %2491 = load i8, ptr %569, align 1, !tbaa !27
  %2492 = zext i8 %2491 to i32
  %2493 = and i32 %2492, 63
  %2494 = load float, ptr %2490, align 1
  %2495 = getelementptr inbounds i8, ptr %568, i64 6
  %2496 = load float, ptr %2495, align 1
  %2497 = getelementptr inbounds i8, ptr %568, i64 10
  %2498 = shl nuw nsw i32 %2493, 2
  %2499 = zext nneg i32 %2498 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %19, ptr nonnull align 1 %2497, i64 %2499, i1 false)
  %2500 = fpext float %2496 to double
  %2501 = call i32 @gx_set_dash(ptr noundef nonnull %77, ptr noundef nonnull %19, i32 noundef %2493, double noundef %2500, ptr noundef null) #7
  %2502 = lshr i8 %2491, 7
  %2503 = zext nneg i8 %2502 to i32
  store i32 %2503, ptr %256, align 8, !tbaa !218
  %2504 = fpext float %2494 to double
  %2505 = lshr i32 %2492, 6
  %2506 = and i32 %2505, 1
  %2507 = call i32 @gx_set_dot_length(ptr noundef nonnull %76, double noundef %2504, i32 noundef %2506) #7
  %2508 = getelementptr inbounds i8, ptr %2497, i64 %2499
  br label %3096

2509:                                             ; preds = %2391
  %2510 = icmp eq i32 %521, 0
  %2511 = select i1 %2510, ptr null, ptr %13
  br label %3096

2512:                                             ; preds = %2391
  call void @gx_cpath_release(ptr noundef nonnull %13) #7
  call void @gx_cpath_accum_begin(ptr noundef nonnull %14, ptr noundef nonnull %5) #7
  call void @gx_cpath_accum_set_cbox(ptr noundef nonnull %14, ptr noundef nonnull %15) #7
  %2513 = load i16, ptr %251, align 4, !tbaa !138
  %2514 = zext i16 %2513 to i32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %253, ptr noundef nonnull align 8 dereferenceable(16) %252, i64 16, i1 false), !tbaa.struct !219
  store i16 0, ptr %251, align 4, !tbaa !138
  store i32 252, ptr %254, align 8, !tbaa !139
  store i64 2048, ptr %255, align 8, !tbaa !220
  store i64 2048, ptr %252, align 8, !tbaa !221
  br label %3096

2515:                                             ; preds = %2391
  %2516 = call i32 @gx_cpath_accum_end(ptr noundef nonnull %14, ptr noundef nonnull %13) #7
  %2517 = getelementptr inbounds i8, ptr %568, i64 2
  %2518 = load i8, ptr %569, align 1, !tbaa !27
  %2519 = zext i8 %2518 to i32
  %2520 = call i32 @gx_cpath_set_outside(ptr noundef nonnull %13, i32 noundef %2519) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %53) #7
  %2521 = call i32 @gx_cpath_inner_box(ptr noundef nonnull %13, ptr noundef nonnull %53) #7
  %2522 = load i64, ptr %53, align 8, !tbaa !222
  %2523 = load i64, ptr %15, align 8, !tbaa !222
  %2524 = icmp sgt i64 %2522, %2523
  br i1 %2524, label %2537, label %2525

2525:                                             ; preds = %2515
  %2526 = load i64, ptr %240, align 8, !tbaa !80
  %2527 = load i64, ptr %241, align 8, !tbaa !80
  %2528 = icmp slt i64 %2526, %2527
  br i1 %2528, label %2537, label %2529

2529:                                             ; preds = %2525
  %2530 = load i64, ptr %242, align 8, !tbaa !223
  %2531 = load i64, ptr %243, align 8, !tbaa !223
  %2532 = icmp sgt i64 %2530, %2531
  br i1 %2532, label %2537, label %2533

2533:                                             ; preds = %2529
  %2534 = load i64, ptr %244, align 8, !tbaa !84
  %2535 = load i64, ptr %245, align 8, !tbaa !84
  %2536 = icmp sge i64 %2534, %2535
  br label %2537

2537:                                             ; preds = %2533, %2529, %2525, %2515
  %2538 = phi i1 [ false, %2529 ], [ false, %2525 ], [ false, %2515 ], [ %2536, %2533 ]
  %2539 = xor i1 %2538, true
  %2540 = zext i1 %2539 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %53) #7
  %2541 = select i1 %2538, ptr null, ptr %13
  %2542 = trunc i32 %523 to i16
  store i16 %2542, ptr %246, align 4, !tbaa !138
  %2543 = and i32 %523, 65535
  %2544 = icmp eq i32 %2543, 0
  %2545 = load i32, ptr %247, align 8
  %2546 = select i1 %2544, i32 252, i32 %2545
  store i32 %2546, ptr %248, align 8, !tbaa !139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %249, ptr noundef nonnull align 4 dereferenceable(16) %250, i64 16, i1 false), !tbaa.struct !219
  br label %3096

2547:                                             ; preds = %2391
  %2548 = getelementptr inbounds i8, ptr %568, i64 2
  %2549 = load i8, ptr %569, align 1, !tbaa !27
  %2550 = zext i8 %2549 to i32
  %2551 = lshr i32 %2550, 4
  switch i32 %2551, label %2592 [
    i32 0, label %2552
    i32 1, label %2554
    i32 2, label %2556
  ]

2552:                                             ; preds = %2547
  %2553 = call ptr @gs_color_space_DeviceGray() #7
  br label %2558

2554:                                             ; preds = %2547
  %2555 = call ptr @gs_color_space_DeviceRGB() #7
  br label %2558

2556:                                             ; preds = %2547
  %2557 = call ptr @gs_color_space_DeviceCMYK() #7
  br label %2558

2558:                                             ; preds = %2556, %2554, %2552
  %2559 = phi ptr [ %2557, %2556 ], [ %2555, %2554 ], [ %2553, %2552 ]
  %2560 = and i32 %2550, 8
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2592, label %2562

2562:                                             ; preds = %2558
  %2563 = call i32 @gs_color_space_num_components(ptr noundef %2559) #7
  store ptr @gs_color_space_type_Indexed, ptr %25, align 8, !tbaa !224
  %2564 = load ptr, ptr %2559, align 8, !tbaa !224
  store ptr %2564, ptr %236, align 8, !tbaa !27
  %2565 = load i8, ptr %2548, align 1, !tbaa !27
  %2566 = icmp sgt i8 %2565, -1
  br i1 %2566, label %2567, label %2570

2567:                                             ; preds = %2562
  %2568 = zext nneg i8 %2565 to i32
  %2569 = getelementptr inbounds i8, ptr %568, i64 3
  store i32 %2568, ptr %238, align 8, !tbaa !27
  br label %2588

2570:                                             ; preds = %2562
  %2571 = getelementptr inbounds i8, ptr %568, i64 3
  %2572 = and i8 %2565, 127
  %2573 = zext nneg i8 %2572 to i64
  br label %2574

2574:                                             ; preds = %2574, %2570
  %2575 = phi i64 [ %2585, %2574 ], [ 7, %2570 ]
  %2576 = phi ptr [ %2583, %2574 ], [ %2571, %2570 ]
  %2577 = phi i64 [ %2582, %2574 ], [ %2573, %2570 ]
  %2578 = load i8, ptr %2576, align 1, !tbaa !27
  %2579 = and i8 %2578, 127
  %2580 = zext nneg i8 %2579 to i64
  %2581 = shl i64 %2580, %2575
  %2582 = add nsw i64 %2581, %2577
  %2583 = getelementptr inbounds i8, ptr %2576, i64 1
  %2584 = icmp slt i8 %2578, 0
  %2585 = add nuw i64 %2575, 7
  br i1 %2584, label %2574, label %2586, !llvm.loop !102

2586:                                             ; preds = %2574
  %2587 = trunc i64 %2582 to i32
  store i32 %2587, ptr %237, align 8, !tbaa !27
  br label %2588

2588:                                             ; preds = %2586, %2567
  %2589 = phi ptr [ %2569, %2567 ], [ %2583, %2586 ]
  %2590 = lshr i32 %2550, 2
  %2591 = and i32 %2590, 1
  store i32 %2591, ptr %239, align 8, !tbaa !27
  br label %2592

2592:                                             ; preds = %2558, %2588, %2547
  %2593 = phi i32 [ 39, %2547 ], [ 0, %2588 ], [ 0, %2558 ]
  %2594 = phi ptr [ %527, %2547 ], [ %25, %2588 ], [ %2559, %2558 ]
  %2595 = phi ptr [ %2548, %2547 ], [ %2589, %2588 ], [ %2548, %2558 ]
  switch i32 %2593, label %3633 [
    i32 0, label %3096
    i32 39, label %3442
  ]

2596:                                             ; preds = %2391
  %2597 = getelementptr inbounds i8, ptr %568, i64 2
  %2598 = load i8, ptr %569, align 1, !tbaa !27
  %2599 = zext i8 %2598 to i32
  %2600 = lshr i32 %2599, 5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %54) #7
  %2601 = load i8, ptr %2597, align 1, !tbaa !27
  %2602 = icmp sgt i8 %2601, -1
  br i1 %2602, label %2603, label %2606

2603:                                             ; preds = %2596
  %2604 = zext nneg i8 %2601 to i32
  %2605 = getelementptr inbounds i8, ptr %568, i64 3
  br label %2624

2606:                                             ; preds = %2596
  %2607 = getelementptr inbounds i8, ptr %568, i64 3
  %2608 = and i8 %2601, 127
  %2609 = zext nneg i8 %2608 to i64
  br label %2610

2610:                                             ; preds = %2610, %2606
  %2611 = phi i64 [ %2621, %2610 ], [ 7, %2606 ]
  %2612 = phi ptr [ %2619, %2610 ], [ %2607, %2606 ]
  %2613 = phi i64 [ %2618, %2610 ], [ %2609, %2606 ]
  %2614 = load i8, ptr %2612, align 1, !tbaa !27
  %2615 = and i8 %2614, 127
  %2616 = zext nneg i8 %2615 to i64
  %2617 = shl i64 %2616, %2611
  %2618 = add nsw i64 %2617, %2613
  %2619 = getelementptr inbounds i8, ptr %2612, i64 1
  %2620 = icmp slt i8 %2614, 0
  %2621 = add nuw i64 %2611, 7
  br i1 %2620, label %2610, label %2622, !llvm.loop !102

2622:                                             ; preds = %2610
  %2623 = trunc i64 %2618 to i32
  br label %2624

2624:                                             ; preds = %2603, %2622
  %2625 = phi i32 [ %2623, %2622 ], [ %2604, %2603 ]
  %2626 = phi ptr [ %2619, %2622 ], [ %2605, %2603 ]
  store i32 %2625, ptr %23, align 8, !tbaa !226
  %2627 = load i8, ptr %2626, align 1, !tbaa !27
  %2628 = icmp sgt i8 %2627, -1
  br i1 %2628, label %2629, label %2632

2629:                                             ; preds = %2624
  %2630 = zext nneg i8 %2627 to i32
  %2631 = getelementptr inbounds i8, ptr %2626, i64 1
  store i32 %2630, ptr %192, align 4, !tbaa !228
  br label %2650

2632:                                             ; preds = %2624
  %2633 = getelementptr inbounds i8, ptr %2626, i64 1
  %2634 = and i8 %2627, 127
  %2635 = zext nneg i8 %2634 to i64
  br label %2636

2636:                                             ; preds = %2636, %2632
  %2637 = phi i64 [ %2647, %2636 ], [ 7, %2632 ]
  %2638 = phi ptr [ %2645, %2636 ], [ %2633, %2632 ]
  %2639 = phi i64 [ %2644, %2636 ], [ %2635, %2632 ]
  %2640 = load i8, ptr %2638, align 1, !tbaa !27
  %2641 = and i8 %2640, 127
  %2642 = zext nneg i8 %2641 to i64
  %2643 = shl i64 %2642, %2637
  %2644 = add nsw i64 %2643, %2639
  %2645 = getelementptr inbounds i8, ptr %2638, i64 1
  %2646 = icmp slt i8 %2640, 0
  %2647 = add nuw i64 %2637, 7
  br i1 %2646, label %2636, label %2648, !llvm.loop !102

2648:                                             ; preds = %2636
  %2649 = trunc i64 %2644 to i32
  store i32 %2649, ptr %191, align 4, !tbaa !228
  br label %2650

2650:                                             ; preds = %2629, %2648
  %2651 = phi ptr [ %2631, %2629 ], [ %2645, %2648 ]
  %2652 = and i32 %2599, 8
  %2653 = icmp eq i32 %2652, 0
  br i1 %2653, label %2710, label %2654

2654:                                             ; preds = %2650
  %2655 = getelementptr inbounds i8, ptr %2651, i64 1
  %2656 = load i8, ptr %2651, align 1, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #7
  br label %2657

2657:                                             ; preds = %2683, %2654
  %2658 = phi i64 [ 0, %2654 ], [ %2685, %2683 ]
  %2659 = phi ptr [ %2655, %2654 ], [ %2684, %2683 ]
  %2660 = phi i8 [ %2656, %2654 ], [ %2686, %2683 ]
  %2661 = icmp ult i8 %2660, 64
  br i1 %2661, label %2662, label %2666

2662:                                             ; preds = %2657
  %2663 = xor i64 %2658, 3
  %2664 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2663
  store float 0.000000e+00, ptr %2664, align 4, !tbaa !87
  %2665 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2658
  store float 0.000000e+00, ptr %2665, align 8, !tbaa !87
  br label %2683

2666:                                             ; preds = %2657
  %2667 = load float, ptr %2659, align 1
  %2668 = getelementptr inbounds i8, ptr %2659, i64 4
  %2669 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2658
  store float %2667, ptr %2669, align 8, !tbaa !87
  %2670 = lshr i8 %2660, 6
  switch i8 %2670, label %2683 [
    i8 1, label %2671
    i8 2, label %2674
    i8 3, label %2678
  ]

2671:                                             ; preds = %2666
  %2672 = xor i64 %2658, 3
  %2673 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2672
  store float %2667, ptr %2673, align 4, !tbaa !87
  br label %2683

2674:                                             ; preds = %2666
  %2675 = fneg float %2667
  %2676 = xor i64 %2658, 3
  %2677 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2676
  store float %2675, ptr %2677, align 4, !tbaa !87
  br label %2683

2678:                                             ; preds = %2666
  %2679 = xor i64 %2658, 3
  %2680 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2679
  %2681 = load i32, ptr %2668, align 1
  store i32 %2681, ptr %2680, align 4
  %2682 = getelementptr inbounds i8, ptr %2659, i64 8
  br label %2683

2683:                                             ; preds = %2678, %2674, %2671, %2666, %2662
  %2684 = phi ptr [ %2659, %2662 ], [ %2668, %2666 ], [ %2682, %2678 ], [ %2668, %2674 ], [ %2668, %2671 ]
  %2685 = add nuw nsw i64 %2658, 2
  %2686 = shl i8 %2660, 2
  %2687 = icmp eq i64 %2658, 0
  br i1 %2687, label %2657, label %2688, !llvm.loop !204

2688:                                             ; preds = %2683, %2698
  %2689 = phi i64 [ %2700, %2698 ], [ 4, %2683 ]
  %2690 = phi ptr [ %2699, %2698 ], [ %2684, %2683 ]
  %2691 = phi i8 [ %2701, %2698 ], [ %2686, %2683 ]
  %2692 = icmp sgt i8 %2691, -1
  %2693 = getelementptr inbounds [6 x float], ptr %7, i64 0, i64 %2689
  br i1 %2692, label %2697, label %2694

2694:                                             ; preds = %2688
  %2695 = load i32, ptr %2690, align 1
  store i32 %2695, ptr %2693, align 4
  %2696 = getelementptr inbounds i8, ptr %2690, i64 4
  br label %2698

2697:                                             ; preds = %2688
  store float 0.000000e+00, ptr %2693, align 4, !tbaa !87
  br label %2698

2698:                                             ; preds = %2697, %2694
  %2699 = phi ptr [ %2696, %2694 ], [ %2690, %2697 ]
  %2700 = add nuw nsw i64 %2689, 1
  %2701 = shl i8 %2691, 1
  %2702 = icmp eq i64 %2700, 6
  br i1 %2702, label %2703, label %2688, !llvm.loop !205

2703:                                             ; preds = %2698
  %2704 = load float, ptr %7, align 16, !tbaa !87
  store float %2704, ptr %193, align 8, !tbaa !206
  %2705 = load float, ptr %194, align 4, !tbaa !87
  store float %2705, ptr %195, align 4, !tbaa !207
  %2706 = load float, ptr %196, align 8, !tbaa !87
  store float %2706, ptr %197, align 8, !tbaa !208
  %2707 = load float, ptr %198, align 4, !tbaa !87
  store float %2707, ptr %199, align 4, !tbaa !209
  %2708 = load float, ptr %200, align 16, !tbaa !87
  store float %2708, ptr %201, align 8, !tbaa !210
  %2709 = load float, ptr %202, align 4, !tbaa !87
  store float %2709, ptr %203, align 4, !tbaa !211
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #7
  br label %2717

2710:                                             ; preds = %2650
  %2711 = load i32, ptr %23, align 8, !tbaa !226
  %2712 = sitofp i32 %2711 to float
  store float %2712, ptr %204, align 8, !tbaa !229
  store float 0.000000e+00, ptr %205, align 4, !tbaa !230
  store float 0.000000e+00, ptr %206, align 8, !tbaa !231
  %2713 = load i32, ptr %207, align 4, !tbaa !228
  %2714 = sub nsw i32 0, %2713
  %2715 = sitofp i32 %2714 to float
  store float %2715, ptr %208, align 4, !tbaa !232
  store float 0.000000e+00, ptr %209, align 8, !tbaa !233
  %2716 = sitofp i32 %2713 to float
  store float %2716, ptr %210, align 4, !tbaa !234
  br label %2717

2717:                                             ; preds = %2710, %2703
  %2718 = phi ptr [ %2699, %2703 ], [ %2651, %2710 ]
  %2719 = zext nneg i32 %2600 to i64
  %2720 = getelementptr inbounds [6 x i8], ptr @clist_render_band.bpc, i64 0, i64 %2719
  %2721 = load i8, ptr %2720, align 1, !tbaa !27
  %2722 = zext i8 %2721 to i32
  store i32 %2722, ptr %211, align 8, !tbaa !235
  %2723 = icmp ult i8 %2598, 32
  br i1 %2723, label %2724, label %2725

2724:                                             ; preds = %2717
  store ptr null, ptr %217, align 8, !tbaa !236
  store i32 1, ptr %218, align 4, !tbaa !237
  store float 0.000000e+00, ptr %219, align 8, !tbaa !87
  store float 1.000000e+00, ptr %220, align 4, !tbaa !87
  br label %2736

2725:                                             ; preds = %2717
  store ptr %527, ptr %212, align 8, !tbaa !236
  store i32 0, ptr %213, align 4, !tbaa !237
  %2726 = call i32 @gs_color_space_get_index(ptr noundef %527) #7
  %2727 = icmp eq i32 %2726, 8
  br i1 %2727, label %2728, label %2733

2728:                                             ; preds = %2725
  store float 0.000000e+00, ptr %215, align 8, !tbaa !87
  %2729 = load i32, ptr %211, align 8, !tbaa !235
  %2730 = shl nsw i32 -1, %2729
  %2731 = xor i32 %2730, -1
  %2732 = sitofp i32 %2731 to float
  store float %2732, ptr %216, align 4, !tbaa !87
  br label %2734

2733:                                             ; preds = %2725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %214, ptr noundef nonnull align 16 dereferenceable(32) @clist_render_band.decode01, i64 32, i1 false)
  br label %2734

2734:                                             ; preds = %2733, %2728
  %2735 = call i32 @gs_color_space_num_components(ptr noundef %527) #7
  br label %2736

2736:                                             ; preds = %2734, %2724
  %2737 = phi i32 [ 1, %2724 ], [ %2735, %2734 ]
  %2738 = lshr i32 %2599, 4
  %2739 = and i32 %2738, 1
  store i32 %2739, ptr %221, align 8, !tbaa !238
  %2740 = and i32 %2599, 4
  %2741 = icmp eq i32 %2740, 0
  br i1 %2741, label %2774, label %2742

2742:                                             ; preds = %2736
  %2743 = getelementptr inbounds i8, ptr %2718, i64 1
  %2744 = icmp sgt i32 %2737, 0
  br i1 %2744, label %2745, label %2774

2745:                                             ; preds = %2742
  %2746 = shl nuw nsw i32 %2737, 1
  %2747 = load i8, ptr %2718, align 1, !tbaa !27
  %2748 = zext nneg i32 %2746 to i64
  br label %2749

2749:                                             ; preds = %2745, %2769
  %2750 = phi i64 [ 0, %2745 ], [ %2772, %2769 ]
  %2751 = phi ptr [ %2743, %2745 ], [ %2770, %2769 ]
  %2752 = phi i8 [ %2747, %2745 ], [ %2771, %2769 ]
  %2753 = lshr i8 %2752, 6
  switch i8 %2753, label %2769 [
    i8 2, label %2763
    i8 1, label %2754
    i8 3, label %2759
  ]

2754:                                             ; preds = %2749
  %2755 = or disjoint i64 %2750, 1
  %2756 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5, i64 %2755
  %2757 = load float, ptr %2756, align 4, !tbaa !87
  %2758 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5, i64 %2750
  store float %2757, ptr %2758, align 8, !tbaa !87
  store float 0.000000e+00, ptr %2756, align 4, !tbaa !87
  br label %2769

2759:                                             ; preds = %2749
  %2760 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5, i64 %2750
  %2761 = load i32, ptr %2751, align 1
  store i32 %2761, ptr %2760, align 8
  %2762 = getelementptr inbounds i8, ptr %2751, i64 4
  br label %2763

2763:                                             ; preds = %2749, %2759
  %2764 = phi ptr [ %2762, %2759 ], [ %2751, %2749 ]
  %2765 = or disjoint i64 %2750, 1
  %2766 = getelementptr inbounds %struct.gs_image_s, ptr %23, i64 0, i32 5, i64 %2765
  %2767 = load i32, ptr %2764, align 1
  store i32 %2767, ptr %2766, align 4
  %2768 = getelementptr inbounds i8, ptr %2764, i64 4
  br label %2769

2769:                                             ; preds = %2754, %2749, %2763
  %2770 = phi ptr [ %2751, %2749 ], [ %2768, %2763 ], [ %2751, %2754 ]
  %2771 = shl i8 %2752, 2
  %2772 = add nuw nsw i64 %2750, 2
  %2773 = icmp ult i64 %2772, %2748
  br i1 %2773, label %2749, label %2774, !llvm.loop !239

2774:                                             ; preds = %2769, %2742, %2736
  %2775 = phi ptr [ %2718, %2736 ], [ %2743, %2742 ], [ %2770, %2769 ]
  store i32 0, ptr %222, align 8, !tbaa !240
  store i32 0, ptr %223, align 4, !tbaa !241
  %2776 = and i32 %2599, 2
  %2777 = icmp eq i32 %2776, 0
  br i1 %2777, label %2783, label %2778

2778:                                             ; preds = %2774
  %2779 = load i32, ptr %224, align 4, !tbaa !237
  %2780 = icmp eq i32 %2779, 0
  br i1 %2780, label %2782, label %2781

2781:                                             ; preds = %2778
  store i32 1, ptr %222, align 8, !tbaa !240
  br label %2783

2782:                                             ; preds = %2778
  store i32 1, ptr %223, align 4, !tbaa !241
  br label %2783

2783:                                             ; preds = %2782, %2781, %2774
  %2784 = and i32 %2599, 1
  %2785 = icmp eq i32 %2784, 0
  br i1 %2785, label %2894, label %2786

2786:                                             ; preds = %2783
  %2787 = load i8, ptr %2775, align 1, !tbaa !27
  %2788 = icmp sgt i8 %2787, -1
  br i1 %2788, label %2789, label %2792

2789:                                             ; preds = %2786
  %2790 = zext nneg i8 %2787 to i32
  %2791 = getelementptr inbounds i8, ptr %2775, i64 1
  br label %2810

2792:                                             ; preds = %2786
  %2793 = getelementptr inbounds i8, ptr %2775, i64 1
  %2794 = and i8 %2787, 127
  %2795 = zext nneg i8 %2794 to i64
  br label %2796

2796:                                             ; preds = %2796, %2792
  %2797 = phi i64 [ %2807, %2796 ], [ 7, %2792 ]
  %2798 = phi ptr [ %2805, %2796 ], [ %2793, %2792 ]
  %2799 = phi i64 [ %2804, %2796 ], [ %2795, %2792 ]
  %2800 = load i8, ptr %2798, align 1, !tbaa !27
  %2801 = and i8 %2800, 127
  %2802 = zext nneg i8 %2801 to i64
  %2803 = shl i64 %2802, %2797
  %2804 = add nsw i64 %2803, %2799
  %2805 = getelementptr inbounds i8, ptr %2798, i64 1
  %2806 = icmp slt i8 %2800, 0
  %2807 = add nuw i64 %2797, 7
  br i1 %2806, label %2796, label %2808, !llvm.loop !102

2808:                                             ; preds = %2796
  %2809 = trunc i64 %2804 to i32
  br label %2810

2810:                                             ; preds = %2789, %2808
  %2811 = phi i32 [ %2809, %2808 ], [ %2790, %2789 ]
  %2812 = phi ptr [ %2805, %2808 ], [ %2791, %2789 ]
  store i32 %2811, ptr %24, align 4, !tbaa !242
  %2813 = load i8, ptr %2812, align 1, !tbaa !27
  %2814 = icmp sgt i8 %2813, -1
  br i1 %2814, label %2815, label %2818

2815:                                             ; preds = %2810
  %2816 = zext nneg i8 %2813 to i32
  %2817 = getelementptr inbounds i8, ptr %2812, i64 1
  store i32 %2816, ptr %226, align 4, !tbaa !244
  br label %2836

2818:                                             ; preds = %2810
  %2819 = getelementptr inbounds i8, ptr %2812, i64 1
  %2820 = and i8 %2813, 127
  %2821 = zext nneg i8 %2820 to i64
  br label %2822

2822:                                             ; preds = %2822, %2818
  %2823 = phi i64 [ %2833, %2822 ], [ 7, %2818 ]
  %2824 = phi ptr [ %2831, %2822 ], [ %2819, %2818 ]
  %2825 = phi i64 [ %2830, %2822 ], [ %2821, %2818 ]
  %2826 = load i8, ptr %2824, align 1, !tbaa !27
  %2827 = and i8 %2826, 127
  %2828 = zext nneg i8 %2827 to i64
  %2829 = shl i64 %2828, %2823
  %2830 = add nsw i64 %2829, %2825
  %2831 = getelementptr inbounds i8, ptr %2824, i64 1
  %2832 = icmp slt i8 %2826, 0
  %2833 = add nuw i64 %2823, 7
  br i1 %2832, label %2822, label %2834, !llvm.loop !102

2834:                                             ; preds = %2822
  %2835 = trunc i64 %2830 to i32
  store i32 %2835, ptr %225, align 4, !tbaa !244
  br label %2836

2836:                                             ; preds = %2815, %2834
  %2837 = phi ptr [ %2817, %2815 ], [ %2831, %2834 ]
  %2838 = load i8, ptr %2837, align 1, !tbaa !27
  %2839 = icmp sgt i8 %2838, -1
  br i1 %2839, label %2840, label %2843

2840:                                             ; preds = %2836
  %2841 = zext nneg i8 %2838 to i32
  %2842 = getelementptr inbounds i8, ptr %2837, i64 1
  br label %2861

2843:                                             ; preds = %2836
  %2844 = getelementptr inbounds i8, ptr %2837, i64 1
  %2845 = and i8 %2838, 127
  %2846 = zext nneg i8 %2845 to i64
  br label %2847

2847:                                             ; preds = %2847, %2843
  %2848 = phi i64 [ %2858, %2847 ], [ 7, %2843 ]
  %2849 = phi ptr [ %2856, %2847 ], [ %2844, %2843 ]
  %2850 = phi i64 [ %2855, %2847 ], [ %2846, %2843 ]
  %2851 = load i8, ptr %2849, align 1, !tbaa !27
  %2852 = and i8 %2851, 127
  %2853 = zext nneg i8 %2852 to i64
  %2854 = shl i64 %2853, %2848
  %2855 = add nsw i64 %2854, %2850
  %2856 = getelementptr inbounds i8, ptr %2849, i64 1
  %2857 = icmp slt i8 %2851, 0
  %2858 = add nuw i64 %2848, 7
  br i1 %2857, label %2847, label %2859, !llvm.loop !102

2859:                                             ; preds = %2847
  %2860 = trunc i64 %2855 to i32
  br label %2861

2861:                                             ; preds = %2859, %2840
  %2862 = phi i32 [ %2841, %2840 ], [ %2860, %2859 ]
  %2863 = phi ptr [ %2842, %2840 ], [ %2856, %2859 ]
  %2864 = load i32, ptr %23, align 8, !tbaa !226
  %2865 = sub i32 %2864, %2862
  store i32 %2865, ptr %227, align 4, !tbaa !245
  %2866 = load i8, ptr %2863, align 1, !tbaa !27
  %2867 = icmp sgt i8 %2866, -1
  br i1 %2867, label %2868, label %2871

2868:                                             ; preds = %2861
  %2869 = zext nneg i8 %2866 to i32
  %2870 = getelementptr inbounds i8, ptr %2863, i64 1
  br label %2889

2871:                                             ; preds = %2861
  %2872 = getelementptr inbounds i8, ptr %2863, i64 1
  %2873 = and i8 %2866, 127
  %2874 = zext nneg i8 %2873 to i64
  br label %2875

2875:                                             ; preds = %2875, %2871
  %2876 = phi i64 [ %2886, %2875 ], [ 7, %2871 ]
  %2877 = phi ptr [ %2884, %2875 ], [ %2872, %2871 ]
  %2878 = phi i64 [ %2883, %2875 ], [ %2874, %2871 ]
  %2879 = load i8, ptr %2877, align 1, !tbaa !27
  %2880 = and i8 %2879, 127
  %2881 = zext nneg i8 %2880 to i64
  %2882 = shl i64 %2881, %2876
  %2883 = add nsw i64 %2882, %2878
  %2884 = getelementptr inbounds i8, ptr %2877, i64 1
  %2885 = icmp slt i8 %2879, 0
  %2886 = add nuw i64 %2876, 7
  br i1 %2885, label %2875, label %2887, !llvm.loop !102

2887:                                             ; preds = %2875
  %2888 = trunc i64 %2883 to i32
  br label %2889

2889:                                             ; preds = %2887, %2868
  %2890 = phi i32 [ %2869, %2868 ], [ %2888, %2887 ]
  %2891 = phi ptr [ %2870, %2868 ], [ %2884, %2887 ]
  %2892 = load i32, ptr %228, align 4, !tbaa !228
  %2893 = sub i32 %2892, %2890
  store i32 %2893, ptr %229, align 4, !tbaa !246
  br label %2897

2894:                                             ; preds = %2783
  store i32 0, ptr %24, align 4, !tbaa !242
  store i32 0, ptr %230, align 4, !tbaa !244
  %2895 = load i32, ptr %23, align 8, !tbaa !226
  store i32 %2895, ptr %231, align 4, !tbaa !245
  %2896 = load i32, ptr %232, align 4, !tbaa !228
  store i32 %2896, ptr %233, align 4, !tbaa !246
  br label %2897

2897:                                             ; preds = %2889, %2894
  %2898 = phi ptr [ %2891, %2889 ], [ %2775, %2894 ]
  %2899 = load i64, ptr %234, align 8, !tbaa !56
  store i64 %2899, ptr %235, align 8, !tbaa !27
  store ptr @gx_dc_procs_pure, ptr %54, align 8, !tbaa !247
  %2900 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 31
  %2901 = load ptr, ptr %2900, align 8, !tbaa !252
  %2902 = call i32 %2901(ptr noundef %507, ptr noundef nonnull %17, ptr noundef nonnull %23, i32 noundef 0, ptr noundef nonnull %24, ptr noundef nonnull %54, ptr noundef %522, ptr noundef nonnull %5, ptr noundef nonnull %26) #7
  %2903 = icmp sgt i32 %2902, -1
  %2904 = select i1 %2903, i32 0, i32 3
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %54) #7
  br i1 %2903, label %3096, label %3633

2905:                                             ; preds = %2391
  %2906 = load i8, ptr %569, align 1, !tbaa !27
  %2907 = icmp sgt i8 %2906, -1
  br i1 %2907, label %2908, label %2911

2908:                                             ; preds = %2905
  %2909 = zext nneg i8 %2906 to i32
  %2910 = getelementptr inbounds i8, ptr %568, i64 2
  br label %2929

2911:                                             ; preds = %2905
  %2912 = getelementptr inbounds i8, ptr %568, i64 2
  %2913 = and i8 %2906, 127
  %2914 = zext nneg i8 %2913 to i64
  br label %2915

2915:                                             ; preds = %2915, %2911
  %2916 = phi i64 [ %2926, %2915 ], [ 7, %2911 ]
  %2917 = phi ptr [ %2924, %2915 ], [ %2912, %2911 ]
  %2918 = phi i64 [ %2923, %2915 ], [ %2914, %2911 ]
  %2919 = load i8, ptr %2917, align 1, !tbaa !27
  %2920 = and i8 %2919, 127
  %2921 = zext nneg i8 %2920 to i64
  %2922 = shl i64 %2921, %2916
  %2923 = add nsw i64 %2922, %2918
  %2924 = getelementptr inbounds i8, ptr %2917, i64 1
  %2925 = icmp slt i8 %2919, 0
  %2926 = add nuw i64 %2916, 7
  br i1 %2925, label %2915, label %2927, !llvm.loop !102

2927:                                             ; preds = %2915
  %2928 = trunc i64 %2923 to i32
  br label %2929

2929:                                             ; preds = %2927, %2908
  %2930 = phi i32 [ %2909, %2908 ], [ %2928, %2927 ]
  %2931 = phi ptr [ %2910, %2908 ], [ %2924, %2927 ]
  %2932 = icmp eq i32 %2930, 0
  br i1 %2932, label %2933, label %2938

2933:                                             ; preds = %2929
  %2934 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 33
  %2935 = load ptr, ptr %2934, align 8, !tbaa !253
  %2936 = load ptr, ptr %26, align 8, !tbaa !55
  %2937 = call i32 %2935(ptr noundef %507, ptr noundef %2936, i32 noundef 1) #7
  br label %3010

2938:                                             ; preds = %2929
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %55) #7
  %2939 = load i8, ptr %2931, align 1, !tbaa !27
  %2940 = icmp sgt i8 %2939, -1
  br i1 %2940, label %2941, label %2944

2941:                                             ; preds = %2938
  %2942 = zext nneg i8 %2939 to i32
  %2943 = getelementptr inbounds i8, ptr %2931, i64 1
  br label %2962

2944:                                             ; preds = %2938
  %2945 = getelementptr inbounds i8, ptr %2931, i64 1
  %2946 = and i8 %2939, 127
  %2947 = zext nneg i8 %2946 to i64
  br label %2948

2948:                                             ; preds = %2948, %2944
  %2949 = phi i64 [ %2959, %2948 ], [ 7, %2944 ]
  %2950 = phi ptr [ %2957, %2948 ], [ %2945, %2944 ]
  %2951 = phi i64 [ %2956, %2948 ], [ %2947, %2944 ]
  %2952 = load i8, ptr %2950, align 1, !tbaa !27
  %2953 = and i8 %2952, 127
  %2954 = zext nneg i8 %2953 to i64
  %2955 = shl i64 %2954, %2949
  %2956 = add nsw i64 %2955, %2951
  %2957 = getelementptr inbounds i8, ptr %2950, i64 1
  %2958 = icmp slt i8 %2952, 0
  %2959 = add nuw i64 %2949, 7
  br i1 %2958, label %2948, label %2960, !llvm.loop !102

2960:                                             ; preds = %2948
  %2961 = trunc i64 %2956 to i32
  br label %2962

2962:                                             ; preds = %2941, %2960
  %2963 = phi i32 [ %2942, %2941 ], [ %2961, %2960 ]
  %2964 = phi ptr [ %2943, %2941 ], [ %2957, %2960 ]
  %2965 = mul i32 %2963, %2930
  %2966 = ptrtoint ptr %566 to i64
  %2967 = ptrtoint ptr %2964 to i64
  %2968 = sub i64 %2966, %2967
  %2969 = zext i32 %2965 to i64
  %2970 = icmp slt i64 %2968, %2969
  br i1 %2970, label %2973, label %2971

2971:                                             ; preds = %2962
  store ptr %2964, ptr %55, align 8, !tbaa !55
  %2972 = getelementptr inbounds i8, ptr %2964, i64 %2969
  br label %2995

2973:                                             ; preds = %2962
  %2974 = trunc i64 %2968 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %56) #7
  %2975 = sub i32 %2965, %2974
  store i32 %2975, ptr %56, align 4, !tbaa !38
  %2976 = sub i64 %2966, %189
  %2977 = icmp slt i64 %2976, %2969
  br i1 %2977, label %2978, label %2982

2978:                                             ; preds = %2973
  %2979 = load ptr, ptr %5, align 8, !tbaa !98
  %2980 = call ptr %2979(ptr noundef nonnull %5, i32 noundef %2965, ptr noundef nonnull @.str.1) #7
  %2981 = icmp eq ptr %2980, null
  br i1 %2981, label %2989, label %2982

2982:                                             ; preds = %2973, %2978
  %2983 = phi ptr [ %2980, %2978 ], [ null, %2973 ]
  %2984 = phi ptr [ %2980, %2978 ], [ %9, %2973 ]
  %2985 = and i64 %2968, 4294967295
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2984, ptr nonnull align 1 %2964, i64 %2985, i1 false)
  %2986 = getelementptr inbounds i8, ptr %2984, i64 %2985
  %2987 = load i32, ptr %56, align 4, !tbaa !38
  %2988 = call i32 @sgets(ptr noundef %1, ptr noundef nonnull %2986, i32 noundef %2987, ptr noundef nonnull %56) #7
  store ptr %2984, ptr %55, align 8, !tbaa !55
  br label %2989

2989:                                             ; preds = %2978, %2982
  %2990 = phi i1 [ true, %2982 ], [ false, %2978 ]
  %2991 = phi i32 [ 0, %2982 ], [ 3, %2978 ]
  %2992 = phi i32 [ %530, %2982 ], [ -25, %2978 ]
  %2993 = phi ptr [ %2983, %2982 ], [ null, %2978 ]
  %2994 = phi ptr [ %566, %2982 ], [ %2964, %2978 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %56) #7
  br i1 %2990, label %2995, label %3005

2995:                                             ; preds = %2989, %2971
  %2996 = phi ptr [ null, %2971 ], [ %2993, %2989 ]
  %2997 = phi ptr [ %2972, %2971 ], [ %2994, %2989 ]
  %2998 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 32
  %2999 = load ptr, ptr %2998, align 8, !tbaa !254
  %3000 = load ptr, ptr %26, align 8, !tbaa !55
  %3001 = call i32 %2999(ptr noundef %507, ptr noundef %3000, ptr noundef nonnull %55, i32 noundef %529, i32 noundef %2963, i32 noundef %2930) #7
  %3002 = icmp eq ptr %2996, null
  br i1 %3002, label %3005, label %3003

3003:                                             ; preds = %2995
  %3004 = load ptr, ptr %190, align 8, !tbaa !156
  call void %3004(ptr noundef nonnull %5, ptr noundef nonnull %2996, ptr noundef nonnull @.str.1) #7
  br label %3005

3005:                                             ; preds = %2995, %3003, %2989
  %3006 = phi i32 [ %2991, %2989 ], [ 0, %3003 ], [ 0, %2995 ]
  %3007 = phi i32 [ %2992, %2989 ], [ %3001, %3003 ], [ %3001, %2995 ]
  %3008 = phi i32 [ %529, %2989 ], [ 0, %3003 ], [ 0, %2995 ]
  %3009 = phi ptr [ %2994, %2989 ], [ %2997, %3003 ], [ %2997, %2995 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %55) #7
  br label %3010

3010:                                             ; preds = %3005, %2933
  %3011 = phi i32 [ 0, %2933 ], [ %3006, %3005 ]
  %3012 = phi i32 [ %2937, %2933 ], [ %3007, %3005 ]
  %3013 = phi i32 [ %529, %2933 ], [ %3008, %3005 ]
  %3014 = phi ptr [ %2931, %2933 ], [ %3009, %3005 ]
  %3015 = icmp eq i32 %3011, 0
  br i1 %3015, label %3016, label %3633

3016:                                             ; preds = %3010
  %3017 = icmp slt i32 %3012, 0
  %3018 = select i1 %3017, i32 3, i32 4
  br label %3633

3019:                                             ; preds = %2391
  %3020 = getelementptr inbounds i8, ptr %568, i64 2
  %3021 = load i8, ptr %569, align 1, !tbaa !27
  %3022 = lshr i8 %3021, 4
  switch i8 %3022, label %3092 [
    i8 0, label %3023
    i8 1, label %3031
  ]

3023:                                             ; preds = %3019
  %3024 = lshr i8 %3021, 3
  %3025 = and i8 %3024, 1
  store i8 %3025, ptr %183, align 8, !tbaa !27
  %3026 = lshr i8 %3021, 2
  %3027 = and i8 %3026, 1
  store i8 %3027, ptr %184, align 1, !tbaa !27
  %3028 = lshr i8 %3021, 1
  %3029 = and i8 %3028, 1
  store i8 %3029, ptr %185, align 2, !tbaa !27
  %3030 = and i8 %3021, 1
  store i8 %3030, ptr %186, align 1, !tbaa !27
  br label %3050

3031:                                             ; preds = %3019
  %3032 = shl i8 %3021, 1
  %3033 = and i8 %3032, 30
  %3034 = load i8, ptr %3020, align 1, !tbaa !27
  %3035 = lshr i8 %3034, 7
  %3036 = or disjoint i8 %3035, %3033
  store i8 %3036, ptr %179, align 8, !tbaa !27
  %3037 = load i8, ptr %3020, align 1, !tbaa !27
  %3038 = lshr i8 %3037, 2
  %3039 = and i8 %3038, 31
  store i8 %3039, ptr %180, align 1, !tbaa !27
  %3040 = load i8, ptr %3020, align 1, !tbaa !27
  %3041 = shl i8 %3040, 3
  %3042 = and i8 %3041, 24
  %3043 = getelementptr inbounds i8, ptr %568, i64 3
  %3044 = load i8, ptr %3043, align 1, !tbaa !27
  %3045 = lshr i8 %3044, 5
  %3046 = or disjoint i8 %3042, %3045
  store i8 %3046, ptr %181, align 2, !tbaa !27
  %3047 = load i8, ptr %3043, align 1, !tbaa !27
  %3048 = and i8 %3047, 31
  store i8 %3048, ptr %182, align 1, !tbaa !27
  %3049 = getelementptr inbounds i8, ptr %568, i64 4
  br label %3050

3050:                                             ; preds = %3031, %3023
  %3051 = phi ptr [ %3049, %3031 ], [ %3020, %3023 ]
  %3052 = load ptr, ptr %81, align 8, !tbaa !94
  %3053 = getelementptr inbounds %struct.gx_device_halftone_s, ptr %3052, i64 0, i32 4
  %3054 = load i32, ptr %3053, align 8, !tbaa !147
  %3055 = icmp eq i32 %3054, 0
  br i1 %3055, label %3090, label %3056

3056:                                             ; preds = %3050, %3082
  %3057 = phi i64 [ %3086, %3082 ], [ 0, %3050 ]
  %3058 = phi ptr [ %3084, %3082 ], [ %3051, %3050 ]
  %3059 = load i8, ptr %3058, align 1, !tbaa !27
  %3060 = icmp sgt i8 %3059, -1
  br i1 %3060, label %3061, label %3064

3061:                                             ; preds = %3056
  %3062 = zext nneg i8 %3059 to i32
  %3063 = getelementptr inbounds i8, ptr %3058, i64 1
  br label %3082

3064:                                             ; preds = %3056
  %3065 = getelementptr inbounds i8, ptr %3058, i64 1
  %3066 = and i8 %3059, 127
  %3067 = zext nneg i8 %3066 to i64
  br label %3068

3068:                                             ; preds = %3068, %3064
  %3069 = phi i64 [ %3079, %3068 ], [ 7, %3064 ]
  %3070 = phi ptr [ %3077, %3068 ], [ %3065, %3064 ]
  %3071 = phi i64 [ %3076, %3068 ], [ %3067, %3064 ]
  %3072 = load i8, ptr %3070, align 1, !tbaa !27
  %3073 = and i8 %3072, 127
  %3074 = zext nneg i8 %3073 to i64
  %3075 = shl i64 %3074, %3069
  %3076 = add nsw i64 %3075, %3071
  %3077 = getelementptr inbounds i8, ptr %3070, i64 1
  %3078 = icmp slt i8 %3072, 0
  %3079 = add nuw i64 %3069, 7
  br i1 %3078, label %3068, label %3080, !llvm.loop !102

3080:                                             ; preds = %3068
  %3081 = trunc i64 %3076 to i32
  br label %3082

3082:                                             ; preds = %3061, %3080
  %3083 = phi i32 [ %3062, %3061 ], [ %3081, %3080 ]
  %3084 = phi ptr [ %3063, %3061 ], [ %3077, %3080 ]
  %3085 = getelementptr inbounds [4 x i32], ptr %460, i64 0, i64 %3057
  store i32 %3083, ptr %3085, align 4, !tbaa !27
  %3086 = add nuw nsw i64 %3057, 1
  %3087 = load i32, ptr %3053, align 8, !tbaa !147
  %3088 = zext i32 %3087 to i64
  %3089 = icmp ult i64 %3086, %3088
  br i1 %3089, label %3056, label %3090, !llvm.loop !255

3090:                                             ; preds = %3082, %3050
  %3091 = phi ptr [ %3051, %3050 ], [ %3084, %3082 ]
  store ptr %3052, ptr %187, align 8, !tbaa !27
  store i16 -1, ptr %188, align 4, !tbaa !27
  store ptr @gx_dc_procs_ht_colored, ptr %18, align 8, !tbaa !247
  br label %3092

3092:                                             ; preds = %3019, %3090
  %3093 = phi i32 [ 0, %3090 ], [ 39, %3019 ]
  %3094 = phi ptr [ %3091, %3090 ], [ %3020, %3019 ]
  switch i32 %3093, label %3633 [
    i32 0, label %3095
    i32 39, label %3442
  ]

3095:                                             ; preds = %3092
  br label %3633, !llvm.loop !101

3096:                                             ; preds = %2391, %2897, %2592, %2537, %2512, %2509, %2489
  %3097 = phi i32 [ %2902, %2897 ], [ %530, %2592 ], [ %530, %2537 ], [ %530, %2512 ], [ %530, %2509 ], [ %530, %2489 ], [ %530, %2391 ]
  %3098 = phi ptr [ %527, %2897 ], [ %2594, %2592 ], [ %527, %2537 ], [ %527, %2512 ], [ %527, %2509 ], [ %527, %2489 ], [ %527, %2391 ]
  %3099 = phi i32 [ %523, %2897 ], [ %523, %2592 ], [ %523, %2537 ], [ %2514, %2512 ], [ %523, %2509 ], [ %523, %2489 ], [ %523, %2391 ]
  %3100 = phi ptr [ %522, %2897 ], [ %522, %2592 ], [ %2541, %2537 ], [ null, %2512 ], [ %2511, %2509 ], [ %522, %2489 ], [ null, %2391 ]
  %3101 = phi i32 [ %521, %2897 ], [ %521, %2592 ], [ %2540, %2537 ], [ %521, %2512 ], [ %521, %2509 ], [ %521, %2489 ], [ %521, %2391 ]
  %3102 = phi ptr [ %507, %2897 ], [ %507, %2592 ], [ %2, %2537 ], [ %14, %2512 ], [ %507, %2509 ], [ %507, %2489 ], [ %507, %2391 ]
  %3103 = phi ptr [ %2898, %2897 ], [ %2595, %2592 ], [ %2517, %2537 ], [ %569, %2512 ], [ %569, %2509 ], [ %2508, %2489 ], [ %569, %2391 ]
  br label %3633, !llvm.loop !101

3104:                                             ; preds = %564
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %57) #7
  %3105 = icmp eq i32 %520, 0
  %3106 = load i32, ptr %117, align 8
  %3107 = sext i32 %3106 to i64
  %3108 = shl nsw i64 %3107, 12
  %3109 = load i32, ptr %118, align 4
  %3110 = sext i32 %3109 to i64
  %3111 = shl nsw i64 %3110, 12
  %3112 = select i1 %3105, i64 %3108, i64 %534
  %3113 = select i1 %3105, i64 %3111, i64 %533
  %3114 = select i1 %3105, i32 0, i32 %528
  %3115 = and i32 %571, 15
  %3116 = zext nneg i32 %3115 to i64
  %3117 = getelementptr inbounds [15 x i8], ptr @clist_segment_op_num_operands, i64 0, i64 %3116
  %3118 = load i8, ptr %3117, align 1, !tbaa !27
  %3119 = zext i8 %3118 to i32
  %3120 = icmp eq i32 %3115, 14
  br i1 %3120, label %3215, label %3121

3121:                                             ; preds = %3104, %3210
  %3122 = phi i32 [ %3213, %3210 ], [ 0, %3104 ]
  %3123 = phi ptr [ %3211, %3210 ], [ %569, %3104 ]
  %3124 = load i8, ptr %3123, align 1, !tbaa !27
  %3125 = zext i8 %3124 to i32
  %3126 = lshr i32 %3125, 5
  switch i32 %3126, label %3176 [
    i32 0, label %3127
    i32 1, label %3127
    i32 2, label %3150
    i32 3, label %3150
    i32 4, label %3154
    i32 5, label %3154
    i32 6, label %3163
  ]

3127:                                             ; preds = %3121, %3121
  %3128 = xor i32 %3125, 32
  %3129 = add nsw i32 %3128, -32
  %3130 = sext i32 %3129 to i64
  %3131 = shl nsw i64 %3130, 13
  %3132 = getelementptr inbounds i8, ptr %3123, i64 1
  %3133 = load i8, ptr %3132, align 1, !tbaa !27
  %3134 = zext i8 %3133 to i64
  %3135 = shl nuw nsw i64 %3134, 5
  %3136 = or disjoint i64 %3135, %3131
  %3137 = getelementptr inbounds i8, ptr %3123, i64 2
  %3138 = load i8, ptr %3137, align 1, !tbaa !27
  %3139 = lshr i8 %3138, 3
  %3140 = zext nneg i8 %3139 to i64
  %3141 = or disjoint i64 %3136, %3140
  %3142 = add nsw i32 %3122, 1
  %3143 = sext i32 %3122 to i64
  %3144 = getelementptr inbounds [6 x i64], ptr %57, i64 0, i64 %3143
  store i64 %3141, ptr %3144, align 8, !tbaa !56
  %3145 = load i8, ptr %3137, align 1, !tbaa !27
  %3146 = and i8 %3145, 7
  %3147 = xor i8 %3146, 4
  %3148 = zext nneg i8 %3147 to i64
  %3149 = add nsw i64 %3148, -4
  br label %3193

3150:                                             ; preds = %3121, %3121
  %3151 = xor i32 %3125, 96
  %3152 = add nsw i32 %3151, -32
  %3153 = sext i32 %3152 to i64
  br label %3193

3154:                                             ; preds = %3121, %3121
  %3155 = shl nuw nsw i32 %3125, 8
  %3156 = xor i32 %3155, 40960
  %3157 = add nsw i32 %3156, -8192
  %3158 = getelementptr inbounds i8, ptr %3123, i64 1
  %3159 = load i8, ptr %3158, align 1, !tbaa !27
  %3160 = zext i8 %3159 to i32
  %3161 = or disjoint i32 %3157, %3160
  %3162 = sext i32 %3161 to i64
  br label %3193

3163:                                             ; preds = %3121
  %3164 = xor i32 %3125, 208
  %3165 = add nsw i32 %3164, -16
  %3166 = sext i32 %3165 to i64
  %3167 = getelementptr inbounds i8, ptr %3123, i64 1
  %3168 = load i8, ptr %3167, align 1, !tbaa !27
  %3169 = zext i8 %3168 to i64
  %3170 = shl nsw i64 %3166, 18
  %3171 = shl nuw nsw i64 %3169, 10
  %3172 = or disjoint i64 %3171, %3170
  %3173 = sext i32 %3122 to i64
  %3174 = getelementptr inbounds [6 x i64], ptr %57, i64 0, i64 %3173
  store i64 %3172, ptr %3174, align 8, !tbaa !56
  %3175 = getelementptr inbounds i8, ptr %3123, i64 2
  br label %3210

3176:                                             ; preds = %3121
  %3177 = getelementptr inbounds i8, ptr %3123, i64 1
  %3178 = load i8, ptr %3177, align 1, !tbaa !27
  %3179 = sext i8 %3178 to i64
  br label %3180

3180:                                             ; preds = %3176, %3180
  %3181 = phi i32 [ 0, %3176 ], [ %3189, %3180 ]
  %3182 = phi i64 [ %3179, %3176 ], [ %3188, %3180 ]
  %3183 = phi ptr [ %3177, %3176 ], [ %3185, %3180 ]
  %3184 = shl i64 %3182, 8
  %3185 = getelementptr inbounds i8, ptr %3183, i64 1
  %3186 = load i8, ptr %3185, align 1, !tbaa !27
  %3187 = zext i8 %3186 to i64
  %3188 = or disjoint i64 %3184, %3187
  %3189 = add nuw nsw i32 %3181, 1
  %3190 = icmp eq i32 %3189, 5
  br i1 %3190, label %3191, label %3180, !llvm.loop !256

3191:                                             ; preds = %3180
  %3192 = getelementptr i8, ptr %3123, i64 6
  br label %3193

3193:                                             ; preds = %3191, %3154, %3150, %3127
  %3194 = phi ptr [ %3158, %3154 ], [ %3123, %3150 ], [ %3137, %3127 ], [ %3192, %3191 ]
  %3195 = phi i32 [ %3122, %3154 ], [ %3122, %3150 ], [ %3142, %3127 ], [ %3122, %3191 ]
  %3196 = phi i64 [ %3162, %3154 ], [ %3153, %3150 ], [ %3149, %3127 ], [ %3188, %3191 ]
  %3197 = getelementptr inbounds i8, ptr %3194, i64 3
  %3198 = shl i64 %3196, 16
  %3199 = getelementptr inbounds i8, ptr %3194, i64 1
  %3200 = load i8, ptr %3199, align 1, !tbaa !27
  %3201 = zext i8 %3200 to i64
  %3202 = shl nuw nsw i64 %3201, 8
  %3203 = or disjoint i64 %3202, %3198
  %3204 = getelementptr inbounds i8, ptr %3194, i64 2
  %3205 = load i8, ptr %3204, align 1, !tbaa !27
  %3206 = zext i8 %3205 to i64
  %3207 = or disjoint i64 %3203, %3206
  %3208 = sext i32 %3195 to i64
  %3209 = getelementptr inbounds [6 x i64], ptr %57, i64 0, i64 %3208
  store i64 %3207, ptr %3209, align 8, !tbaa !56
  br label %3210

3210:                                             ; preds = %3193, %3163
  %3211 = phi ptr [ %3197, %3193 ], [ %3175, %3163 ]
  %3212 = phi i32 [ %3195, %3193 ], [ %3122, %3163 ]
  %3213 = add nsw i32 %3212, 1
  %3214 = icmp slt i32 %3213, %3119
  br i1 %3214, label %3121, label %3215, !llvm.loop !257

3215:                                             ; preds = %3210, %3104
  %3216 = phi ptr [ %569, %3104 ], [ %3211, %3210 ]
  %3217 = sub nsw i64 %3112, %120
  %3218 = sub nsw i64 %3113, %122
  switch i8 %570, label %3385 [
    i8 -32, label %3219
    i8 -31, label %3225
    i8 -30, label %3231
    i8 -29, label %3235
    i8 -28, label %3239
    i8 -27, label %3268
    i8 -26, label %3275
    i8 -25, label %3282
    i8 -24, label %3289
    i8 -23, label %3296
    i8 -22, label %3309
    i8 -20, label %3329
    i8 -19, label %3338
    i8 -21, label %3347
    i8 -18, label %3374
  ]

3219:                                             ; preds = %3215
  %3220 = load i64, ptr %57, align 16, !tbaa !56
  %3221 = add nsw i64 %3220, %3217
  %3222 = load i64, ptr %178, align 8, !tbaa !56
  %3223 = add nsw i64 %3222, %3218
  %3224 = call i32 @gx_path_add_point(ptr noundef nonnull %12, i64 noundef %3221, i64 noundef %3223) #7
  br label %3379

3225:                                             ; preds = %3215
  %3226 = load i64, ptr %57, align 16, !tbaa !56
  %3227 = add nsw i64 %3226, %3217
  %3228 = load i64, ptr %177, align 8, !tbaa !56
  %3229 = add nsw i64 %3228, %3218
  %3230 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3227, i64 noundef %3229, i32 noundef %3114) #7
  br label %3379

3231:                                             ; preds = %3215
  %3232 = load i64, ptr %57, align 16, !tbaa !56
  %3233 = add nsw i64 %3232, %3217
  %3234 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3233, i64 noundef %3218, i32 noundef %3114) #7
  br label %3379

3235:                                             ; preds = %3215
  %3236 = load i64, ptr %57, align 16, !tbaa !56
  %3237 = add nsw i64 %3236, %3218
  %3238 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3217, i64 noundef %3237, i32 noundef %3114) #7
  br label %3379

3239:                                             ; preds = %3215
  %3240 = load i64, ptr %57, align 16, !tbaa !56
  %3241 = load i64, ptr %167, align 16, !tbaa !56
  %3242 = add nsw i64 %3241, %3240
  store i64 %3242, ptr %167, align 16, !tbaa !56
  %3243 = load i64, ptr %168, align 16, !tbaa !56
  %3244 = add nsw i64 %3243, %3242
  store i64 %3244, ptr %168, align 16, !tbaa !56
  %3245 = load i64, ptr %169, align 8, !tbaa !56
  %3246 = load i64, ptr %170, align 8, !tbaa !56
  %3247 = add nsw i64 %3246, %3245
  store i64 %3247, ptr %170, align 8, !tbaa !56
  %3248 = load i64, ptr %171, align 8, !tbaa !56
  %3249 = add nsw i64 %3248, %3247
  store i64 %3249, ptr %171, align 8, !tbaa !56
  br label %3250

3250:                                             ; preds = %3289, %3282, %3275, %3268, %3239
  %3251 = load i64, ptr %57, align 16, !tbaa !56
  %3252 = add nsw i64 %3251, %3217
  %3253 = load i64, ptr %172, align 8, !tbaa !56
  %3254 = add nsw i64 %3253, %3218
  %3255 = load i64, ptr %173, align 16, !tbaa !56
  %3256 = add nsw i64 %3255, %3217
  %3257 = load i64, ptr %174, align 8, !tbaa !56
  %3258 = add nsw i64 %3257, %3218
  %3259 = load i64, ptr %175, align 16, !tbaa !56
  %3260 = add nsw i64 %3259, %3217
  %3261 = load i64, ptr %176, align 8, !tbaa !56
  %3262 = add nsw i64 %3261, %3218
  %3263 = call i32 @gx_path_add_curve_notes(ptr noundef nonnull %12, i64 noundef %3252, i64 noundef %3254, i64 noundef %3256, i64 noundef %3258, i64 noundef %3260, i64 noundef %3262, i32 noundef %3114) #7
  %3264 = load i64, ptr %175, align 16, !tbaa !56
  %3265 = add nsw i64 %3264, %3217
  %3266 = load i64, ptr %176, align 8, !tbaa !56
  %3267 = add nsw i64 %3266, %3218
  br label %3379

3268:                                             ; preds = %3346, %3343, %3215
  %3269 = load i64, ptr %162, align 16, !tbaa !56
  %3270 = load i64, ptr %163, align 8, !tbaa !56
  %3271 = add nsw i64 %3270, %3269
  store i64 %3271, ptr %164, align 8, !tbaa !56
  store i64 %3269, ptr %163, align 8, !tbaa !56
  %3272 = load i64, ptr %57, align 16, !tbaa !56
  %3273 = load i64, ptr %165, align 8, !tbaa !56
  %3274 = add nsw i64 %3273, %3272
  store i64 %3274, ptr %162, align 16, !tbaa !56
  store i64 %3274, ptr %166, align 16, !tbaa !56
  store i64 0, ptr %165, align 8, !tbaa !56
  br label %3250

3275:                                             ; preds = %3337, %3334, %3215
  %3276 = load i64, ptr %157, align 8, !tbaa !56
  %3277 = load i64, ptr %158, align 8, !tbaa !56
  %3278 = add nsw i64 %3277, %3276
  store i64 %3278, ptr %159, align 16, !tbaa !56
  %3279 = load i64, ptr %57, align 16, !tbaa !56
  %3280 = load i64, ptr %160, align 16, !tbaa !56
  %3281 = add nsw i64 %3280, %3279
  store i64 %3281, ptr %158, align 8, !tbaa !56
  store i64 %3281, ptr %161, align 8, !tbaa !56
  store i64 %3276, ptr %160, align 16, !tbaa !56
  store i64 %3279, ptr %157, align 8, !tbaa !56
  store i64 0, ptr %57, align 16, !tbaa !56
  br label %3250

3282:                                             ; preds = %3215
  %3283 = load i64, ptr %152, align 8, !tbaa !56
  %3284 = load i64, ptr %153, align 8, !tbaa !56
  %3285 = add nsw i64 %3284, %3283
  store i64 %3285, ptr %154, align 8, !tbaa !56
  %3286 = load i64, ptr %57, align 16, !tbaa !56
  %3287 = load i64, ptr %155, align 16, !tbaa !56
  %3288 = add nsw i64 %3287, %3286
  store i64 %3288, ptr %156, align 16, !tbaa !56
  store i64 %3283, ptr %153, align 8, !tbaa !56
  store i64 %3286, ptr %155, align 16, !tbaa !56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %57, i8 0, i64 16, i1 false)
  br label %3250

3289:                                             ; preds = %3215
  %3290 = load i64, ptr %147, align 8, !tbaa !56
  %3291 = load i64, ptr %148, align 8, !tbaa !56
  %3292 = add nsw i64 %3291, %3290
  store i64 %3292, ptr %148, align 8, !tbaa !56
  store i64 %3292, ptr %149, align 8, !tbaa !56
  %3293 = load i64, ptr %57, align 16, !tbaa !56
  %3294 = load i64, ptr %150, align 16, !tbaa !56
  %3295 = add nsw i64 %3294, %3293
  store i64 %3295, ptr %150, align 16, !tbaa !56
  store i64 %3295, ptr %151, align 16, !tbaa !56
  br label %3250

3296:                                             ; preds = %3215
  %3297 = load i64, ptr %57, align 16, !tbaa !56
  %3298 = add nsw i64 %3297, %3217
  %3299 = load i64, ptr %144, align 8, !tbaa !56
  %3300 = add nsw i64 %3299, %3218
  %3301 = call i32 @gx_path_add_point(ptr noundef nonnull %12, i64 noundef %3298, i64 noundef %3300) #7
  %3302 = icmp slt i32 %3301, 0
  br i1 %3302, label %3379, label %3303

3303:                                             ; preds = %3296
  %3304 = load i64, ptr %145, align 16, !tbaa !56
  %3305 = add nsw i64 %3304, %3298
  %3306 = load i64, ptr %146, align 8, !tbaa !56
  %3307 = add nsw i64 %3306, %3300
  %3308 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3305, i64 noundef %3307, i32 noundef %3114) #7
  br label %3379

3309:                                             ; preds = %3215
  %3310 = load i64, ptr %57, align 16, !tbaa !56
  %3311 = add nsw i64 %3310, %3217
  %3312 = load i64, ptr %139, align 8, !tbaa !56
  %3313 = add nsw i64 %3312, %3218
  %3314 = call i32 @gx_path_add_point(ptr noundef nonnull %12, i64 noundef %3311, i64 noundef %3313) #7
  %3315 = icmp slt i32 %3314, 0
  br i1 %3315, label %3379, label %3316

3316:                                             ; preds = %3309
  %3317 = load i64, ptr %140, align 16, !tbaa !56
  %3318 = add nsw i64 %3317, %3311
  %3319 = load i64, ptr %141, align 8, !tbaa !56
  %3320 = add nsw i64 %3319, %3313
  %3321 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3318, i64 noundef %3320, i32 noundef %3114) #7
  %3322 = icmp slt i32 %3321, 0
  br i1 %3322, label %3379, label %3323

3323:                                             ; preds = %3316
  %3324 = load i64, ptr %142, align 16, !tbaa !56
  %3325 = add nsw i64 %3324, %3318
  %3326 = load i64, ptr %143, align 8, !tbaa !56
  %3327 = add nsw i64 %3326, %3320
  %3328 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3325, i64 noundef %3327, i32 noundef %3114) #7
  br label %3379

3329:                                             ; preds = %3215
  %3330 = load i64, ptr %57, align 16, !tbaa !56
  %3331 = load i64, ptr %134, align 8, !tbaa !56
  %3332 = xor i64 %3331, %3330
  %3333 = icmp slt i64 %3332, 0
  br i1 %3333, label %3334, label %3337

3334:                                             ; preds = %3329
  %3335 = sub nsw i64 0, %3331
  store i64 %3335, ptr %137, align 16, !tbaa !56
  %3336 = sub nsw i64 0, %3330
  store i64 %3336, ptr %138, align 8, !tbaa !56
  br label %3275

3337:                                             ; preds = %3329
  store i64 %3331, ptr %135, align 16, !tbaa !56
  store i64 %3330, ptr %136, align 8, !tbaa !56
  br label %3275

3338:                                             ; preds = %3215
  %3339 = load i64, ptr %57, align 16, !tbaa !56
  %3340 = load i64, ptr %129, align 8, !tbaa !56
  %3341 = xor i64 %3340, %3339
  %3342 = icmp slt i64 %3341, 0
  br i1 %3342, label %3343, label %3346

3343:                                             ; preds = %3338
  %3344 = sub nsw i64 0, %3339
  store i64 %3344, ptr %132, align 8, !tbaa !56
  store i64 %3340, ptr %133, align 16, !tbaa !56
  %3345 = sub nsw i64 0, %3340
  store i64 %3345, ptr %129, align 8, !tbaa !56
  br label %3268

3346:                                             ; preds = %3338
  store i64 %3339, ptr %130, align 8, !tbaa !56
  store i64 %3340, ptr %131, align 16, !tbaa !56
  br label %3268

3347:                                             ; preds = %3215
  %3348 = load i64, ptr %57, align 16, !tbaa !56
  %3349 = add nsw i64 %3348, %3217
  %3350 = load i64, ptr %124, align 8, !tbaa !56
  %3351 = add nsw i64 %3350, %3218
  %3352 = call i32 @gx_path_add_point(ptr noundef nonnull %12, i64 noundef %3349, i64 noundef %3351) #7
  %3353 = icmp slt i32 %3352, 0
  br i1 %3353, label %3379, label %3354

3354:                                             ; preds = %3347
  %3355 = load i64, ptr %125, align 16, !tbaa !56
  %3356 = add nsw i64 %3355, %3349
  %3357 = load i64, ptr %126, align 8, !tbaa !56
  %3358 = add nsw i64 %3357, %3351
  %3359 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3356, i64 noundef %3358, i32 noundef %3114) #7
  %3360 = icmp slt i32 %3359, 0
  br i1 %3360, label %3379, label %3361

3361:                                             ; preds = %3354
  %3362 = load i64, ptr %127, align 16, !tbaa !56
  %3363 = add nsw i64 %3362, %3356
  %3364 = load i64, ptr %128, align 8, !tbaa !56
  %3365 = add nsw i64 %3364, %3358
  %3366 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3363, i64 noundef %3365, i32 noundef %3114) #7
  %3367 = icmp slt i32 %3366, 0
  br i1 %3367, label %3379, label %3368

3368:                                             ; preds = %3361
  %3369 = load i64, ptr %125, align 16, !tbaa !56
  %3370 = sub nsw i64 %3363, %3369
  %3371 = load i64, ptr %126, align 8, !tbaa !56
  %3372 = sub nsw i64 %3365, %3371
  %3373 = call i32 @gx_path_add_line_notes(ptr noundef nonnull %12, i64 noundef %3370, i64 noundef %3372, i32 noundef %3114) #7
  br label %3379

3374:                                             ; preds = %3215
  %3375 = call i32 @gx_path_close_subpath_notes(ptr noundef nonnull %12, i32 noundef 0) #7
  %3376 = call i32 @gx_path_current_point(ptr noundef nonnull %12, ptr noundef nonnull %57) #7
  %3377 = load i64, ptr %57, align 16, !tbaa !56
  %3378 = load i64, ptr %123, align 8, !tbaa !56
  br label %3379

3379:                                             ; preds = %3374, %3368, %3361, %3354, %3347, %3323, %3316, %3309, %3303, %3296, %3250, %3235, %3231, %3225, %3219
  %3380 = phi i64 [ %3377, %3374 ], [ %3349, %3347 ], [ %3356, %3354 ], [ %3363, %3361 ], [ %3370, %3368 ], [ %3265, %3250 ], [ %3311, %3309 ], [ %3318, %3316 ], [ %3325, %3323 ], [ %3298, %3296 ], [ %3305, %3303 ], [ %3217, %3235 ], [ %3233, %3231 ], [ %3227, %3225 ], [ %3221, %3219 ]
  %3381 = phi i64 [ %3378, %3374 ], [ %3351, %3347 ], [ %3358, %3354 ], [ %3365, %3361 ], [ %3372, %3368 ], [ %3267, %3250 ], [ %3313, %3309 ], [ %3320, %3316 ], [ %3327, %3323 ], [ %3300, %3296 ], [ %3307, %3303 ], [ %3237, %3235 ], [ %3218, %3231 ], [ %3229, %3225 ], [ %3223, %3219 ]
  %3382 = phi i32 [ %3375, %3374 ], [ %3352, %3347 ], [ %3359, %3354 ], [ %3366, %3361 ], [ %3373, %3368 ], [ %3263, %3250 ], [ %3314, %3309 ], [ %3321, %3316 ], [ %3328, %3323 ], [ %3301, %3296 ], [ %3308, %3303 ], [ %3238, %3235 ], [ %3234, %3231 ], [ %3230, %3225 ], [ %3224, %3219 ]
  %3383 = add nsw i64 %3380, %120
  %3384 = add nsw i64 %3381, %122
  br label %3385

3385:                                             ; preds = %3215, %3379
  %3386 = phi i64 [ %3112, %3215 ], [ %3383, %3379 ]
  %3387 = phi i64 [ %3113, %3215 ], [ %3384, %3379 ]
  %3388 = phi i32 [ -15, %3215 ], [ %3382, %3379 ]
  %3389 = icmp sgt i32 %3388, -1
  %3390 = select i1 %3389, i32 4, i32 3
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %57) #7
  br label %3633

3391:                                             ; preds = %564
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %58) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %59) #7
  switch i8 %570, label %3428 [
    i8 -16, label %3393
    i8 -13, label %3392
    i8 -15, label %3397
    i8 -12, label %3396
    i8 -14, label %3402
    i8 -11, label %3401
    i8 -10, label %3414
    i8 -9, label %3416
    i8 -8, label %3419
  ]

3392:                                             ; preds = %3391
  br label %3393

3393:                                             ; preds = %3391, %3392
  %3394 = phi i32 [ 1, %3392 ], [ -1, %3391 ]
  store i32 %3394, ptr %20, align 8, !tbaa !258
  %3395 = load i64, ptr %109, align 8, !tbaa !56
  store i64 %3395, ptr %110, align 8, !tbaa !27
  store ptr @gx_dc_procs_pure, ptr %58, align 8, !tbaa !247
  br label %3408

3396:                                             ; preds = %3391
  br label %3397

3397:                                             ; preds = %3391, %3396
  %3398 = phi i32 [ 1, %3396 ], [ -1, %3391 ]
  store i32 %3398, ptr %20, align 8, !tbaa !258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !259
  store ptr null, ptr %101, align 8, !tbaa !27
  %3399 = load i64, ptr %102, align 8, !tbaa !56
  store i64 %3399, ptr %103, align 8, !tbaa !27
  %3400 = load i64, ptr %104, align 8, !tbaa !56
  store i64 %3400, ptr %105, align 8, !tbaa !27
  store ptr %59, ptr %106, align 8, !tbaa !27
  store ptr @gx_dc_procs_ht_binary, ptr %58, align 8, !tbaa !247
  store i32 %519, ptr %107, align 8, !tbaa.struct !260
  store i32 %518, ptr %108, align 4, !tbaa.struct !261
  br label %3408

3401:                                             ; preds = %3391
  br label %3402

3402:                                             ; preds = %3391, %3401
  %3403 = phi i32 [ 1, %3401 ], [ -1, %3391 ]
  store i32 %3403, ptr %20, align 8, !tbaa !258
  store i32 %519, ptr %99, align 8, !tbaa.struct !260
  store i32 %518, ptr %100, align 4, !tbaa.struct !261
  %3404 = load ptr, ptr %18, align 8, !tbaa !247
  %3405 = load ptr, ptr %3404, align 8, !tbaa !262
  %3406 = call i32 %3405(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef %507, i32 noundef 0) #7
  %3407 = icmp slt i32 %3406, 0
  br i1 %3407, label %3428, label %3408

3408:                                             ; preds = %3402, %3397, %3393
  %3409 = phi ptr [ %18, %3402 ], [ %58, %3397 ], [ %58, %3393 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %111, ptr noundef nonnull align 8 dereferenceable(16) %112, i64 16, i1 false), !tbaa.struct !219
  %3410 = load float, ptr %113, align 4, !tbaa !264
  store float %3410, ptr %114, align 8, !tbaa !265
  %3411 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 24
  %3412 = load ptr, ptr %3411, align 8, !tbaa !266
  %3413 = call i32 %3412(ptr noundef %507, ptr noundef nonnull %17, ptr noundef nonnull %12, ptr noundef nonnull %20, ptr noundef nonnull %3409, ptr noundef %522) #7
  br label %3428

3414:                                             ; preds = %3391
  %3415 = load i64, ptr %96, align 8, !tbaa !56
  store i64 %3415, ptr %97, align 8, !tbaa !27
  store ptr @gx_dc_procs_pure, ptr %58, align 8, !tbaa !247
  br label %3424

3416:                                             ; preds = %3391
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !259
  store ptr null, ptr %88, align 8, !tbaa !27
  %3417 = load i64, ptr %89, align 8, !tbaa !56
  store i64 %3417, ptr %90, align 8, !tbaa !27
  %3418 = load i64, ptr %91, align 8, !tbaa !56
  store i64 %3418, ptr %92, align 8, !tbaa !27
  store ptr %59, ptr %93, align 8, !tbaa !27
  store ptr @gx_dc_procs_ht_binary, ptr %58, align 8, !tbaa !247
  store i32 %519, ptr %94, align 8, !tbaa.struct !260
  store i32 %518, ptr %95, align 4, !tbaa.struct !261
  br label %3424

3419:                                             ; preds = %3391
  store i32 %519, ptr %86, align 8, !tbaa.struct !260
  store i32 %518, ptr %87, align 4, !tbaa.struct !261
  %3420 = load ptr, ptr %18, align 8, !tbaa !247
  %3421 = load ptr, ptr %3420, align 8, !tbaa !262
  %3422 = call i32 %3421(ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef %507, i32 noundef 0) #7
  %3423 = icmp slt i32 %3422, 0
  br i1 %3423, label %3428, label %3424

3424:                                             ; preds = %3419, %3416, %3414
  %3425 = phi ptr [ %18, %3419 ], [ %58, %3416 ], [ %58, %3414 ]
  %3426 = load float, ptr %98, align 4, !tbaa !264
  store float %3426, ptr %21, align 4, !tbaa !267
  %3427 = call i32 @gx_stroke_path_only(ptr noundef nonnull %12, ptr noundef null, ptr noundef %507, ptr noundef nonnull %17, ptr noundef nonnull %21, ptr noundef nonnull %3425, ptr noundef %522) #7
  br label %3428

3428:                                             ; preds = %3408, %3424, %3402, %3419, %3391
  %3429 = phi i32 [ 39, %3391 ], [ 0, %3419 ], [ 0, %3402 ], [ 0, %3424 ], [ 0, %3408 ]
  %3430 = phi i32 [ %530, %3391 ], [ %3422, %3419 ], [ %3406, %3402 ], [ %3427, %3424 ], [ %3413, %3408 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %59) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %58) #7
  switch i32 %3429, label %3633 [
    i32 0, label %3431
    i32 39, label %3442
  ]

3431:                                             ; preds = %3428
  %3432 = icmp eq i32 %520, 0
  br i1 %3432, label %3438, label %3433

3433:                                             ; preds = %3431
  %3434 = lshr i64 %534, 12
  %3435 = trunc i64 %3434 to i32
  store i32 %3435, ptr %115, align 8, !tbaa !185
  %3436 = lshr i64 %533, 12
  %3437 = trunc i64 %3436 to i32
  store i32 %3437, ptr %116, align 4, !tbaa !188
  br label %3438

3438:                                             ; preds = %3433, %3431
  call void @gx_path_release(ptr noundef nonnull %12) #7
  call void @gx_path_init(ptr noundef nonnull %12, ptr noundef nonnull %5) #7
  %3439 = icmp slt i32 %3430, 0
  %3440 = select i1 %3439, i32 3, i32 4
  br label %3633

3441:                                             ; preds = %1084, %564
  unreachable

3442:                                             ; preds = %3503, %2391, %573, %3428, %3092, %2592, %2479, %2318, %1015
  %3443 = phi ptr [ %532, %3428 ], [ %532, %2391 ], [ %532, %3092 ], [ %532, %2592 ], [ %532, %2479 ], [ %3504, %3503 ], [ %2320, %2318 ], [ %532, %573 ], [ %532, %1015 ]
  %3444 = phi i32 [ %531, %3428 ], [ %531, %2391 ], [ %531, %3092 ], [ %531, %2592 ], [ %531, %2479 ], [ %3505, %3503 ], [ %2065, %2318 ], [ %531, %573 ], [ %531, %1015 ]
  %3445 = phi i32 [ %528, %3428 ], [ %528, %2391 ], [ %528, %3092 ], [ %528, %2592 ], [ %2481, %2479 ], [ %528, %3503 ], [ %528, %2318 ], [ %528, %573 ], [ %528, %1015 ]
  %3446 = phi ptr [ %527, %3428 ], [ %527, %2391 ], [ %527, %3092 ], [ %2594, %2592 ], [ %527, %2479 ], [ %527, %3503 ], [ %527, %2318 ], [ %527, %573 ], [ %527, %1015 ]
  %3447 = phi ptr [ %509, %3428 ], [ %509, %2391 ], [ %509, %3092 ], [ %509, %2592 ], [ %509, %2479 ], [ %509, %3503 ], [ %509, %2318 ], [ %509, %573 ], [ %866, %1015 ]
  %3448 = phi i32 [ %565, %3428 ], [ %565, %2391 ], [ %565, %3092 ], [ %565, %2592 ], [ %565, %2479 ], [ %3506, %3503 ], [ %2321, %2318 ], [ %565, %573 ], [ %1017, %1015 ]
  %3449 = phi ptr [ %566, %3428 ], [ %566, %2391 ], [ %566, %3092 ], [ %566, %2592 ], [ %566, %2479 ], [ %3507, %3503 ], [ %2322, %2318 ], [ %566, %573 ], [ %1018, %1015 ]
  %3450 = phi ptr [ %567, %3428 ], [ %567, %2391 ], [ %567, %3092 ], [ %567, %2592 ], [ %567, %2479 ], [ %3508, %3503 ], [ %2323, %2318 ], [ %567, %573 ], [ %1019, %1015 ]
  %3451 = phi ptr [ %569, %3428 ], [ %569, %2391 ], [ %3094, %3092 ], [ %2595, %2592 ], [ %569, %2479 ], [ %3509, %3503 ], [ %2324, %2318 ], [ %569, %573 ], [ %1020, %1015 ]
  %3452 = load ptr, ptr @gs_stderr, align 8, !tbaa !55
  call void @lprintf_file_and_line(ptr noundef %3452, ptr noundef nonnull @.str.2, i32 noundef 1753) #7
  %3453 = load ptr, ptr @gs_stderr, align 8, !tbaa !55
  %3454 = call i64 @stell(ptr noundef %1) #7
  %3455 = ptrtoint ptr %3451 to i64
  %3456 = sub i64 %3455, %454
  %3457 = trunc i64 %3456 to i32
  %3458 = ptrtoint ptr %3449 to i64
  %3459 = sub i64 %3458, %454
  %3460 = trunc i64 %3459 to i32
  %3461 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3453, ptr noundef nonnull @.str.3, i32 noundef %571, i32 noundef %4, i64 noundef %3454, i32 noundef %3457, i32 noundef %3460)
  %3462 = icmp ult ptr %9, %3449
  br i1 %3462, label %3463, label %3633

3463:                                             ; preds = %3442, %3463
  %3464 = phi ptr [ %3501, %3463 ], [ %9, %3442 ]
  %3465 = load ptr, ptr @gs_stderr, align 8, !tbaa !55
  %3466 = ptrtoint ptr %3464 to i64
  %3467 = sub i64 %3466, %454
  %3468 = trunc i64 %3467 to i32
  %3469 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3465, ptr noundef nonnull @.str.4, i32 noundef %3468)
  %3470 = load ptr, ptr @gs_stderr, align 8, !tbaa !55
  %3471 = load i8, ptr %3464, align 1, !tbaa !27
  %3472 = zext i8 %3471 to i32
  %3473 = getelementptr inbounds i8, ptr %3464, i64 1
  %3474 = load i8, ptr %3473, align 1, !tbaa !27
  %3475 = zext i8 %3474 to i32
  %3476 = getelementptr inbounds i8, ptr %3464, i64 2
  %3477 = load i8, ptr %3476, align 1, !tbaa !27
  %3478 = zext i8 %3477 to i32
  %3479 = getelementptr inbounds i8, ptr %3464, i64 3
  %3480 = load i8, ptr %3479, align 1, !tbaa !27
  %3481 = zext i8 %3480 to i32
  %3482 = getelementptr inbounds i8, ptr %3464, i64 4
  %3483 = load i8, ptr %3482, align 1, !tbaa !27
  %3484 = zext i8 %3483 to i32
  %3485 = getelementptr inbounds i8, ptr %3464, i64 5
  %3486 = load i8, ptr %3485, align 1, !tbaa !27
  %3487 = zext i8 %3486 to i32
  %3488 = getelementptr inbounds i8, ptr %3464, i64 6
  %3489 = load i8, ptr %3488, align 1, !tbaa !27
  %3490 = zext i8 %3489 to i32
  %3491 = getelementptr inbounds i8, ptr %3464, i64 7
  %3492 = load i8, ptr %3491, align 1, !tbaa !27
  %3493 = zext i8 %3492 to i32
  %3494 = getelementptr inbounds i8, ptr %3464, i64 8
  %3495 = load i8, ptr %3494, align 1, !tbaa !27
  %3496 = zext i8 %3495 to i32
  %3497 = getelementptr inbounds i8, ptr %3464, i64 9
  %3498 = load i8, ptr %3497, align 1, !tbaa !27
  %3499 = zext i8 %3498 to i32
  %3500 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3470, ptr noundef nonnull @.str.5, i32 noundef %3472, i32 noundef %3475, i32 noundef %3478, i32 noundef %3481, i32 noundef %3484, i32 noundef %3487, i32 noundef %3490, i32 noundef %3493, i32 noundef %3496, i32 noundef %3499)
  %3501 = getelementptr inbounds i8, ptr %3464, i64 10
  %3502 = icmp ult ptr %3501, %3449
  br i1 %3502, label %3463, label %3633, !llvm.loop !269

3503:                                             ; preds = %1994, %1975, %1967, %2048, %2015, %2010, %2318, %2119
  %3504 = phi ptr [ %2131, %2119 ], [ %2320, %2318 ], [ %532, %2048 ], [ %532, %2010 ], [ %532, %2015 ], [ %532, %1967 ], [ %532, %1975 ], [ %532, %1994 ]
  %3505 = phi i32 [ %2121, %2119 ], [ %2065, %2318 ], [ %531, %2048 ], [ %531, %2010 ], [ %531, %2015 ], [ %531, %1967 ], [ %531, %1975 ], [ %531, %1994 ]
  %3506 = phi i32 [ %565, %2119 ], [ %2321, %2318 ], [ %565, %2048 ], [ %565, %2010 ], [ %565, %2015 ], [ %565, %1967 ], [ %565, %1975 ], [ %565, %1994 ]
  %3507 = phi ptr [ %566, %2119 ], [ %2322, %2318 ], [ %566, %2048 ], [ %566, %2010 ], [ %566, %2015 ], [ %566, %1967 ], [ %566, %1975 ], [ %566, %1994 ]
  %3508 = phi ptr [ %567, %2119 ], [ %2323, %2318 ], [ %567, %2048 ], [ %567, %2010 ], [ %567, %2015 ], [ %567, %1967 ], [ %567, %1975 ], [ %567, %1994 ]
  %3509 = phi ptr [ %2116, %2119 ], [ %2324, %2318 ], [ %2049, %2048 ], [ %2014, %2010 ], [ %2028, %2015 ], [ %1966, %1967 ], [ %1977, %1975 ], [ %1991, %1994 ]
  switch i32 %572, label %3442 [
    i32 3, label %3510
    i32 4, label %3510
    i32 5, label %3510
    i32 6, label %3549
    i32 7, label %3549
    i32 8, label %3549
    i32 9, label %3561
    i32 10, label %3602
  ]

3510:                                             ; preds = %3503, %3503, %3503
  %3511 = load i16, ptr %371, align 4, !tbaa !138
  %3512 = icmp eq i16 %3511, 0
  br i1 %3512, label %3513, label %3524

3513:                                             ; preds = %3510
  %3514 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 7
  %3515 = load ptr, ptr %3514, align 8, !tbaa !270
  %3516 = load i32, ptr %381, align 8, !tbaa !185
  %3517 = sub nsw i32 %3516, %3
  %3518 = load i32, ptr %382, align 4, !tbaa !188
  %3519 = sub nsw i32 %3518, %4
  %3520 = load i32, ptr %383, align 8, !tbaa !186
  %3521 = load i32, ptr %384, align 4, !tbaa !187
  %3522 = load i64, ptr %385, align 8, !tbaa !56
  %3523 = call i32 %3515(ptr noundef %507, i32 noundef %3517, i32 noundef %3519, i32 noundef %3520, i32 noundef %3521, i64 noundef %3522) #7
  br label %3633

3524:                                             ; preds = %3510
  store i32 0, ptr %28, align 4, !tbaa !38
  %3525 = load i64, ptr %372, align 8, !tbaa !56
  store i64 %3525, ptr %373, align 8, !tbaa !56
  store i64 %3525, ptr %29, align 16, !tbaa !56
  br label %3526

3526:                                             ; preds = %3618, %3561, %3524
  %3527 = phi ptr [ %374, %3524 ], [ %344, %3561 ], [ %338, %3618 ]
  %3528 = phi ptr [ %29, %3524 ], [ %10, %3561 ], [ null, %3618 ]
  %3529 = phi ptr [ null, %3524 ], [ %3504, %3561 ], [ %3504, %3618 ]
  %3530 = phi i32 [ 0, %3524 ], [ %529, %3561 ], [ %529, %3618 ]
  %3531 = load i32, ptr %3527, align 8, !tbaa !137
  %3532 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 35
  %3533 = load ptr, ptr %3532, align 8, !tbaa !271
  %3534 = load i32, ptr %28, align 4, !tbaa !38
  %3535 = load i64, ptr %375, align 8, !tbaa !56
  %3536 = icmp eq i64 %3535, -1
  %3537 = load i64, ptr %376, align 8
  %3538 = icmp eq i64 %3537, -1
  %3539 = select i1 %3536, i1 %3538, i1 false
  %3540 = select i1 %3539, ptr null, ptr %375
  %3541 = load i32, ptr %377, align 8, !tbaa !185
  %3542 = sub nsw i32 %3541, %3
  %3543 = load i32, ptr %378, align 4, !tbaa !188
  %3544 = sub nsw i32 %3543, %4
  %3545 = load i32, ptr %379, align 8, !tbaa !186
  %3546 = sub nsw i32 %3545, %3530
  %3547 = load i32, ptr %380, align 4, !tbaa !187
  %3548 = call i32 %3533(ptr noundef %507, ptr noundef %3529, i32 noundef %3530, i32 noundef %3534, i64 noundef 0, ptr noundef %3528, ptr noundef nonnull %11, ptr noundef %3540, i32 noundef %3542, i32 noundef %3544, i32 noundef %3546, i32 noundef %3547, i32 noundef %519, i32 noundef %518, i32 noundef %3531) #7
  br label %3633

3549:                                             ; preds = %3503, %3503, %3503
  %3550 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 34
  %3551 = load ptr, ptr %3550, align 8, !tbaa !272
  %3552 = load i32, ptr %365, align 8, !tbaa !185
  %3553 = sub nsw i32 %3552, %3
  %3554 = load i32, ptr %366, align 4, !tbaa !188
  %3555 = sub nsw i32 %3554, %4
  %3556 = load i32, ptr %367, align 8, !tbaa !186
  %3557 = load i32, ptr %368, align 4, !tbaa !187
  %3558 = load i64, ptr %369, align 8, !tbaa !56
  %3559 = load i64, ptr %370, align 8, !tbaa !56
  %3560 = call i32 %3551(ptr noundef %507, ptr noundef nonnull %11, i32 noundef %3553, i32 noundef %3555, i32 noundef %3556, i32 noundef %3557, i64 noundef %3558, i64 noundef %3559, i32 noundef %519, i32 noundef %518) #7
  br label %3633

3561:                                             ; preds = %3503
  %3562 = load i16, ptr %343, align 4, !tbaa !138
  %3563 = icmp eq i16 %3562, 0
  br i1 %3563, label %3564, label %3526

3564:                                             ; preds = %3561
  %3565 = and i32 %571, 4
  %3566 = icmp ne i32 %3565, 0
  %3567 = icmp ne ptr %522, null
  %3568 = select i1 %3566, i1 true, i1 %3567
  br i1 %3568, label %3569, label %3588

3569:                                             ; preds = %3564
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %60) #7
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %61) #7
  br i1 %3566, label %3570, label %3573

3570:                                             ; preds = %3569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull align 8 dereferenceable(40) %11, i64 40, i1 false), !tbaa.struct !259
  store ptr null, ptr %352, align 8, !tbaa !27
  %3571 = load i64, ptr %353, align 8, !tbaa !56
  store i64 %3571, ptr %354, align 8, !tbaa !27
  %3572 = load i64, ptr %355, align 8, !tbaa !56
  store i64 %3572, ptr %356, align 8, !tbaa !27
  store ptr %61, ptr %357, align 8, !tbaa !27
  store ptr @gx_dc_procs_ht_binary, ptr %60, align 8, !tbaa !247
  store i32 %519, ptr %358, align 8, !tbaa.struct !260
  store i32 %518, ptr %359, align 4, !tbaa.struct !261
  br label %3575

3573:                                             ; preds = %3569
  %3574 = load i64, ptr %350, align 8, !tbaa !56
  store i64 %3574, ptr %351, align 8, !tbaa !27
  store ptr @gx_dc_procs_pure, ptr %60, align 8, !tbaa !247
  br label %3575

3575:                                             ; preds = %3573, %3570
  %3576 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 26
  %3577 = load ptr, ptr %3576, align 8, !tbaa !273
  %3578 = load i32, ptr %28, align 4, !tbaa !38
  %3579 = load i32, ptr %360, align 8, !tbaa !185
  %3580 = sub nsw i32 %3579, %3
  %3581 = load i32, ptr %361, align 4, !tbaa !188
  %3582 = sub nsw i32 %3581, %4
  %3583 = load i32, ptr %362, align 8, !tbaa !186
  %3584 = sub nsw i32 %3583, %529
  %3585 = load i32, ptr %363, align 4, !tbaa !187
  %3586 = load i32, ptr %364, align 8, !tbaa !139
  %3587 = call i32 %3577(ptr noundef %507, ptr noundef %3504, i32 noundef %529, i32 noundef %3578, i64 noundef 0, i32 noundef %3580, i32 noundef %3582, i32 noundef %3584, i32 noundef %3585, ptr noundef nonnull %60, i32 noundef 1, i32 noundef %3586, ptr noundef %522) #7
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %61) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %60) #7
  br label %3633

3588:                                             ; preds = %3564
  %3589 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 9
  %3590 = load ptr, ptr %3589, align 8, !tbaa !274
  %3591 = load i32, ptr %28, align 4, !tbaa !38
  %3592 = load i32, ptr %345, align 8, !tbaa !185
  %3593 = sub nsw i32 %3592, %3
  %3594 = load i32, ptr %346, align 4, !tbaa !188
  %3595 = sub nsw i32 %3594, %4
  %3596 = load i32, ptr %347, align 8, !tbaa !186
  %3597 = sub nsw i32 %3596, %529
  %3598 = load i32, ptr %348, align 4, !tbaa !187
  %3599 = load i64, ptr %10, align 8, !tbaa !56
  %3600 = load i64, ptr %349, align 8, !tbaa !56
  %3601 = call i32 %3590(ptr noundef %507, ptr noundef %3504, i32 noundef %529, i32 noundef %3591, i64 noundef 0, i32 noundef %3593, i32 noundef %3595, i32 noundef %3597, i32 noundef %3598, i64 noundef %3599, i64 noundef %3600) #7
  br label %3633

3602:                                             ; preds = %3503
  %3603 = load i16, ptr %331, align 8, !tbaa !180
  %3604 = icmp eq i16 %3603, 0
  br i1 %3604, label %3618, label %3605

3605:                                             ; preds = %3602
  %3606 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 21
  %3607 = load ptr, ptr %3606, align 8, !tbaa !275
  %3608 = load i32, ptr %28, align 4, !tbaa !38
  %3609 = load i32, ptr %332, align 8, !tbaa !185
  %3610 = sub nsw i32 %3609, %3
  %3611 = load i32, ptr %333, align 4, !tbaa !188
  %3612 = sub nsw i32 %3611, %4
  %3613 = load i32, ptr %334, align 8, !tbaa !186
  %3614 = sub nsw i32 %3613, %529
  %3615 = load i32, ptr %335, align 4, !tbaa !187
  %3616 = load i64, ptr %336, align 8, !tbaa !56
  %3617 = call i32 %3607(ptr noundef %507, ptr noundef %3504, i32 noundef %529, i32 noundef %3608, i64 noundef 0, i32 noundef %3610, i32 noundef %3612, i32 noundef %3614, i32 noundef %3615, i64 noundef %3616, i32 noundef %3505) #7
  br label %3633

3618:                                             ; preds = %3602
  %3619 = load i16, ptr %337, align 4, !tbaa !138
  %3620 = icmp eq i16 %3619, 0
  br i1 %3620, label %3621, label %3526

3621:                                             ; preds = %3618
  %3622 = getelementptr inbounds %struct.gx_device_s, ptr %507, i64 0, i32 21, i32 10
  %3623 = load ptr, ptr %3622, align 8, !tbaa !276
  %3624 = load i32, ptr %28, align 4, !tbaa !38
  %3625 = load i32, ptr %339, align 8, !tbaa !185
  %3626 = sub nsw i32 %3625, %3
  %3627 = load i32, ptr %340, align 4, !tbaa !188
  %3628 = sub nsw i32 %3627, %4
  %3629 = load i32, ptr %341, align 8, !tbaa !186
  %3630 = sub nsw i32 %3629, %529
  %3631 = load i32, ptr %342, align 4, !tbaa !187
  %3632 = call i32 %3623(ptr noundef %507, ptr noundef %3504, i32 noundef %529, i32 noundef %3624, i64 noundef 0, i32 noundef %3626, i32 noundef %3628, i32 noundef %3630, i32 noundef %3631) #7
  br label %3633

3633:                                             ; preds = %3463, %3442, %1756, %1633, %1346, %3513, %3526, %3549, %3588, %3575, %3621, %3605, %3438, %3016, %1878, %1844, %1808, %1810, %1830, %1686, %1693, %573, %3385, %2897, %3010, %1761, %3428, %3096, %3095, %3092, %2592, %2484, %2482, %2479, %2459, %2449, %2395, %2392, %2374, %2318, %1802, %1801, %1799, %1358, %1356, %1083, %1015, %732, %542
  %3634 = phi i32 [ %536, %3428 ], [ %536, %3438 ], [ %536, %3385 ], [ %536, %3092 ], [ %536, %3095 ], [ %536, %3016 ], [ %536, %3010 ], [ %536, %3096 ], [ %536, %2897 ], [ %536, %2592 ], [ %536, %2484 ], [ %536, %2479 ], [ %536, %2482 ], [ %536, %2459 ], [ %536, %2449 ], [ %536, %2395 ], [ %536, %2392 ], [ %536, %2374 ], [ %536, %2318 ], [ %536, %3621 ], [ %536, %3526 ], [ %536, %3605 ], [ %536, %3575 ], [ %536, %3588 ], [ %536, %3549 ], [ %536, %3513 ], [ %536, %1878 ], [ %536, %1844 ], [ %536, %1830 ], [ %536, %1810 ], [ %536, %1808 ], [ %536, %1802 ], [ %536, %1801 ], [ %536, %1799 ], [ %536, %1761 ], [ %536, %1756 ], [ %536, %1693 ], [ %536, %1686 ], [ %536, %1633 ], [ %536, %1358 ], [ %536, %1356 ], [ %1347, %1346 ], [ %536, %1083 ], [ %536, %1015 ], [ %536, %732 ], [ %536, %573 ], [ %536, %542 ], [ %536, %3442 ], [ %536, %3463 ]
  %3635 = phi ptr [ %535, %3428 ], [ %535, %3438 ], [ %535, %3385 ], [ %535, %3092 ], [ %535, %3095 ], [ %535, %3016 ], [ %535, %3010 ], [ %535, %3096 ], [ %535, %2897 ], [ %535, %2592 ], [ %535, %2484 ], [ %535, %2479 ], [ %535, %2482 ], [ %535, %2459 ], [ %535, %2449 ], [ %535, %2395 ], [ %535, %2392 ], [ %535, %2374 ], [ %535, %2318 ], [ %535, %3621 ], [ %535, %3526 ], [ %535, %3605 ], [ %535, %3575 ], [ %535, %3588 ], [ %535, %3549 ], [ %535, %3513 ], [ %535, %1878 ], [ %535, %1844 ], [ %535, %1830 ], [ %535, %1810 ], [ %535, %1808 ], [ %535, %1802 ], [ %535, %1801 ], [ %535, %1799 ], [ %535, %1761 ], [ %535, %1756 ], [ %535, %1693 ], [ %535, %1686 ], [ %535, %1633 ], [ %535, %1358 ], [ %535, %1356 ], [ %1348, %1346 ], [ %535, %1083 ], [ %535, %1015 ], [ %535, %732 ], [ %535, %573 ], [ %535, %542 ], [ %535, %3442 ], [ %535, %3463 ]
  %3636 = phi i64 [ %534, %3428 ], [ %534, %3438 ], [ %3386, %3385 ], [ %534, %3092 ], [ %534, %3095 ], [ %534, %3016 ], [ %534, %3010 ], [ %534, %3096 ], [ %534, %2897 ], [ %534, %2592 ], [ %534, %2484 ], [ %534, %2479 ], [ %534, %2482 ], [ %534, %2459 ], [ %534, %2449 ], [ %534, %2395 ], [ %534, %2392 ], [ %534, %2374 ], [ %534, %2318 ], [ %534, %3621 ], [ %534, %3526 ], [ %534, %3605 ], [ %534, %3575 ], [ %534, %3588 ], [ %534, %3549 ], [ %534, %3513 ], [ %534, %1878 ], [ %534, %1844 ], [ %534, %1830 ], [ %534, %1810 ], [ %534, %1808 ], [ %534, %1802 ], [ %534, %1801 ], [ %534, %1799 ], [ %534, %1761 ], [ %534, %1756 ], [ %534, %1693 ], [ %534, %1686 ], [ %534, %1633 ], [ %534, %1358 ], [ %534, %1356 ], [ %534, %1346 ], [ %534, %1083 ], [ %534, %1015 ], [ %534, %732 ], [ %534, %573 ], [ %534, %542 ], [ %534, %3442 ], [ %534, %3463 ]
  %3637 = phi i64 [ %533, %3428 ], [ %533, %3438 ], [ %3387, %3385 ], [ %533, %3092 ], [ %533, %3095 ], [ %533, %3016 ], [ %533, %3010 ], [ %533, %3096 ], [ %533, %2897 ], [ %533, %2592 ], [ %533, %2484 ], [ %533, %2479 ], [ %533, %2482 ], [ %533, %2459 ], [ %533, %2449 ], [ %533, %2395 ], [ %533, %2392 ], [ %533, %2374 ], [ %533, %2318 ], [ %533, %3621 ], [ %533, %3526 ], [ %533, %3605 ], [ %533, %3575 ], [ %533, %3588 ], [ %533, %3549 ], [ %533, %3513 ], [ %533, %1878 ], [ %533, %1844 ], [ %533, %1830 ], [ %533, %1810 ], [ %533, %1808 ], [ %533, %1802 ], [ %533, %1801 ], [ %533, %1799 ], [ %533, %1761 ], [ %533, %1756 ], [ %533, %1693 ], [ %533, %1686 ], [ %533, %1633 ], [ %533, %1358 ], [ %533, %1356 ], [ %533, %1346 ], [ %533, %1083 ], [ %533, %1015 ], [ %533, %732 ], [ %533, %573 ], [ %533, %542 ], [ %533, %3442 ], [ %533, %3463 ]
  %3638 = phi i32 [ %3429, %3428 ], [ %3440, %3438 ], [ %3390, %3385 ], [ %3093, %3092 ], [ 4, %3095 ], [ %3018, %3016 ], [ %3011, %3010 ], [ 4, %3096 ], [ %2904, %2897 ], [ %2593, %2592 ], [ 4, %2484 ], [ %2480, %2479 ], [ 4, %2482 ], [ 4, %2459 ], [ 4, %2449 ], [ 4, %2395 ], [ 4, %2392 ], [ 4, %2374 ], [ %2319, %2318 ], [ 0, %3621 ], [ 0, %3526 ], [ 0, %3605 ], [ 0, %3575 ], [ 0, %3588 ], [ 0, %3549 ], [ 0, %3513 ], [ 4, %1878 ], [ 4, %1844 ], [ 4, %1830 ], [ 4, %1810 ], [ 4, %1808 ], [ 4, %1802 ], [ 4, %1801 ], [ 4, %1799 ], [ 3, %1761 ], [ %1760, %1756 ], [ 4, %1693 ], [ 4, %1686 ], [ %1636, %1633 ], [ 4, %1358 ], [ 4, %1356 ], [ %1355, %1346 ], [ 4, %1083 ], [ %1016, %1015 ], [ 4, %732 ], [ 4, %573 ], [ 5, %542 ], [ 3, %3442 ], [ 3, %3463 ]
  %3639 = phi ptr [ %532, %3428 ], [ %532, %3438 ], [ %532, %3385 ], [ %532, %3092 ], [ %532, %3095 ], [ %532, %3016 ], [ %532, %3010 ], [ %532, %3096 ], [ %532, %2897 ], [ %532, %2592 ], [ %532, %2484 ], [ %532, %2479 ], [ %532, %2482 ], [ %532, %2459 ], [ %532, %2449 ], [ %532, %2395 ], [ %532, %2392 ], [ %532, %2374 ], [ %2320, %2318 ], [ %3504, %3621 ], [ %3529, %3526 ], [ %3504, %3605 ], [ %3504, %3575 ], [ %3504, %3588 ], [ %3504, %3549 ], [ %3504, %3513 ], [ %532, %1878 ], [ %532, %1844 ], [ %532, %1830 ], [ %532, %1810 ], [ %532, %1808 ], [ %532, %1802 ], [ %532, %1801 ], [ %532, %1799 ], [ %532, %1761 ], [ %532, %1756 ], [ %532, %1693 ], [ %532, %1686 ], [ %532, %1633 ], [ %532, %1358 ], [ %532, %1356 ], [ %532, %1346 ], [ %532, %1083 ], [ %532, %1015 ], [ %532, %732 ], [ %532, %573 ], [ %532, %542 ], [ %3443, %3442 ], [ %3443, %3463 ]
  %3640 = phi i32 [ %531, %3428 ], [ %531, %3438 ], [ %531, %3385 ], [ %531, %3092 ], [ %531, %3095 ], [ %531, %3016 ], [ %531, %3010 ], [ %531, %3096 ], [ %531, %2897 ], [ %531, %2592 ], [ %531, %2484 ], [ %531, %2479 ], [ %531, %2482 ], [ %531, %2459 ], [ %531, %2449 ], [ %531, %2395 ], [ %531, %2392 ], [ %531, %2374 ], [ %2065, %2318 ], [ %3505, %3621 ], [ %3505, %3526 ], [ %3505, %3605 ], [ %3505, %3575 ], [ %3505, %3588 ], [ %3505, %3549 ], [ %3505, %3513 ], [ %531, %1878 ], [ %531, %1844 ], [ %531, %1830 ], [ %531, %1810 ], [ %531, %1808 ], [ %531, %1802 ], [ %531, %1801 ], [ %531, %1799 ], [ %531, %1761 ], [ %531, %1756 ], [ %531, %1693 ], [ %531, %1686 ], [ %531, %1633 ], [ %531, %1358 ], [ %531, %1356 ], [ %531, %1346 ], [ %531, %1083 ], [ %531, %1015 ], [ %531, %732 ], [ %531, %573 ], [ %531, %542 ], [ %3444, %3442 ], [ %3444, %3463 ]
  %3641 = phi i32 [ %3430, %3428 ], [ %3430, %3438 ], [ %530, %3385 ], [ %530, %3092 ], [ %530, %3095 ], [ %3012, %3016 ], [ %3012, %3010 ], [ %3097, %3096 ], [ %2902, %2897 ], [ %530, %2592 ], [ %530, %2484 ], [ %530, %2479 ], [ %530, %2482 ], [ %530, %2459 ], [ %530, %2449 ], [ %530, %2395 ], [ %530, %2392 ], [ %530, %2374 ], [ %530, %2318 ], [ %3632, %3621 ], [ %3548, %3526 ], [ %3617, %3605 ], [ %3587, %3575 ], [ %3601, %3588 ], [ %3560, %3549 ], [ %3523, %3513 ], [ %530, %1878 ], [ %530, %1844 ], [ %530, %1830 ], [ %530, %1810 ], [ %530, %1808 ], [ %530, %1802 ], [ %530, %1801 ], [ %530, %1799 ], [ %530, %1761 ], [ %1758, %1756 ], [ %530, %1693 ], [ %530, %1686 ], [ %1635, %1633 ], [ %530, %1358 ], [ %530, %1356 ], [ %1350, %1346 ], [ %530, %1083 ], [ %530, %1015 ], [ %530, %732 ], [ %530, %573 ], [ %544, %542 ], [ -100, %3442 ], [ -100, %3463 ]
  %3642 = phi i32 [ %529, %3428 ], [ %529, %3438 ], [ %529, %3385 ], [ %529, %3092 ], [ %529, %3095 ], [ %3013, %3016 ], [ %3013, %3010 ], [ %529, %3096 ], [ %529, %2897 ], [ %529, %2592 ], [ %529, %2484 ], [ %529, %2479 ], [ %529, %2482 ], [ %529, %2459 ], [ %529, %2449 ], [ %529, %2395 ], [ %529, %2392 ], [ %529, %2374 ], [ %529, %2318 ], [ 0, %3621 ], [ 0, %3526 ], [ 0, %3605 ], [ 0, %3575 ], [ 0, %3588 ], [ %529, %3549 ], [ %529, %3513 ], [ %529, %1878 ], [ %529, %1844 ], [ %529, %1830 ], [ %529, %1810 ], [ %529, %1808 ], [ %529, %1802 ], [ %529, %1801 ], [ %529, %1799 ], [ %529, %1761 ], [ %529, %1756 ], [ %529, %1693 ], [ %529, %1686 ], [ %529, %1633 ], [ %529, %1358 ], [ %529, %1356 ], [ %1351, %1346 ], [ %529, %1083 ], [ %529, %1015 ], [ %529, %732 ], [ %529, %573 ], [ %529, %542 ], [ %529, %3442 ], [ %529, %3463 ]
  %3643 = phi i32 [ %528, %3428 ], [ %528, %3438 ], [ %3114, %3385 ], [ %528, %3092 ], [ %528, %3095 ], [ %528, %3016 ], [ %528, %3010 ], [ %528, %3096 ], [ %528, %2897 ], [ %528, %2592 ], [ %528, %2484 ], [ %2481, %2479 ], [ %2481, %2482 ], [ %528, %2459 ], [ %528, %2449 ], [ %528, %2395 ], [ %528, %2392 ], [ %528, %2374 ], [ %528, %2318 ], [ %528, %3621 ], [ %528, %3526 ], [ %528, %3605 ], [ %528, %3575 ], [ %528, %3588 ], [ %528, %3549 ], [ %528, %3513 ], [ %528, %1878 ], [ %528, %1844 ], [ %528, %1830 ], [ %528, %1810 ], [ %528, %1808 ], [ %528, %1802 ], [ %528, %1801 ], [ %528, %1799 ], [ %528, %1761 ], [ %528, %1756 ], [ %528, %1693 ], [ %528, %1686 ], [ %528, %1633 ], [ %528, %1358 ], [ %528, %1356 ], [ %528, %1346 ], [ %528, %1083 ], [ %528, %1015 ], [ %528, %732 ], [ %528, %573 ], [ %528, %542 ], [ %3445, %3442 ], [ %3445, %3463 ]
  %3644 = phi ptr [ %527, %3428 ], [ %527, %3438 ], [ %527, %3385 ], [ %527, %3092 ], [ %527, %3095 ], [ %527, %3016 ], [ %527, %3010 ], [ %3098, %3096 ], [ %527, %2897 ], [ %2594, %2592 ], [ %527, %2484 ], [ %527, %2479 ], [ %527, %2482 ], [ %527, %2459 ], [ %527, %2449 ], [ %527, %2395 ], [ %527, %2392 ], [ %527, %2374 ], [ %527, %2318 ], [ %527, %3621 ], [ %527, %3526 ], [ %527, %3605 ], [ %527, %3575 ], [ %527, %3588 ], [ %527, %3549 ], [ %527, %3513 ], [ %527, %1878 ], [ %527, %1844 ], [ %527, %1830 ], [ %527, %1810 ], [ %527, %1808 ], [ %527, %1802 ], [ %527, %1801 ], [ %527, %1799 ], [ %527, %1761 ], [ %527, %1756 ], [ %527, %1693 ], [ %527, %1686 ], [ %527, %1633 ], [ %527, %1358 ], [ %527, %1356 ], [ %527, %1346 ], [ %527, %1083 ], [ %527, %1015 ], [ %527, %732 ], [ %527, %573 ], [ %527, %542 ], [ %3446, %3442 ], [ %3446, %3463 ]
  %3645 = phi i32 [ %526, %3428 ], [ %526, %3438 ], [ %526, %3385 ], [ %526, %3092 ], [ %526, %3095 ], [ %526, %3016 ], [ %526, %3010 ], [ %526, %3096 ], [ %526, %2897 ], [ %526, %2592 ], [ %526, %2484 ], [ %526, %2479 ], [ %526, %2482 ], [ %526, %2459 ], [ %526, %2449 ], [ %526, %2395 ], [ %526, %2392 ], [ %526, %2374 ], [ %526, %2318 ], [ %526, %3621 ], [ %526, %3526 ], [ %526, %3605 ], [ %526, %3575 ], [ %526, %3588 ], [ %526, %3549 ], [ %526, %3513 ], [ %526, %1878 ], [ %526, %1844 ], [ %526, %1830 ], [ %526, %1810 ], [ %526, %1808 ], [ %526, %1802 ], [ %526, %1801 ], [ %526, %1799 ], [ %526, %1761 ], [ %1688, %1756 ], [ %1688, %1693 ], [ %1688, %1686 ], [ %1637, %1633 ], [ %526, %1358 ], [ %526, %1356 ], [ %526, %1346 ], [ %526, %1083 ], [ %526, %1015 ], [ %526, %732 ], [ %526, %573 ], [ %526, %542 ], [ %526, %3442 ], [ %526, %3463 ]
  %3646 = phi ptr [ %525, %3428 ], [ %525, %3438 ], [ %525, %3385 ], [ %525, %3092 ], [ %525, %3095 ], [ %525, %3016 ], [ %525, %3010 ], [ %525, %3096 ], [ %525, %2897 ], [ %525, %2592 ], [ %525, %2484 ], [ %525, %2479 ], [ %525, %2482 ], [ %525, %2459 ], [ %525, %2449 ], [ %525, %2395 ], [ %525, %2392 ], [ %525, %2374 ], [ %525, %2318 ], [ %525, %3621 ], [ %525, %3526 ], [ %525, %3605 ], [ %525, %3575 ], [ %525, %3588 ], [ %525, %3549 ], [ %525, %3513 ], [ %525, %1878 ], [ %525, %1844 ], [ %525, %1830 ], [ %525, %1810 ], [ %525, %1808 ], [ %525, %1802 ], [ %525, %1801 ], [ %525, %1799 ], [ %525, %1761 ], [ %525, %1756 ], [ %525, %1693 ], [ %525, %1686 ], [ %1420, %1633 ], [ %525, %1358 ], [ %525, %1356 ], [ %525, %1346 ], [ %525, %1083 ], [ %525, %1015 ], [ %525, %732 ], [ %525, %573 ], [ %525, %542 ], [ %525, %3442 ], [ %525, %3463 ]
  %3647 = phi i32 [ %524, %3428 ], [ %524, %3438 ], [ %524, %3385 ], [ %524, %3092 ], [ %524, %3095 ], [ %524, %3016 ], [ %524, %3010 ], [ %524, %3096 ], [ %524, %2897 ], [ %524, %2592 ], [ %524, %2484 ], [ %524, %2479 ], [ %524, %2482 ], [ %524, %2459 ], [ %524, %2449 ], [ %524, %2395 ], [ %524, %2392 ], [ %524, %2374 ], [ %524, %2318 ], [ %524, %3621 ], [ %524, %3526 ], [ %524, %3605 ], [ %524, %3575 ], [ %524, %3588 ], [ %524, %3549 ], [ %524, %3513 ], [ %524, %1878 ], [ %524, %1844 ], [ %524, %1830 ], [ %524, %1810 ], [ %524, %1808 ], [ %524, %1802 ], [ %524, %1801 ], [ %524, %1799 ], [ %524, %1761 ], [ %524, %1756 ], [ %524, %1693 ], [ %524, %1686 ], [ %524, %1633 ], [ %524, %1358 ], [ %524, %1356 ], [ %1352, %1346 ], [ %524, %1083 ], [ %524, %1015 ], [ %524, %732 ], [ %524, %573 ], [ %524, %542 ], [ %524, %3442 ], [ %524, %3463 ]
  %3648 = phi i32 [ %523, %3428 ], [ %523, %3438 ], [ %523, %3385 ], [ %523, %3092 ], [ %523, %3095 ], [ %523, %3016 ], [ %523, %3010 ], [ %3099, %3096 ], [ %523, %2897 ], [ %523, %2592 ], [ %523, %2484 ], [ %523, %2479 ], [ %523, %2482 ], [ %523, %2459 ], [ %523, %2449 ], [ %523, %2395 ], [ %523, %2392 ], [ %523, %2374 ], [ %523, %2318 ], [ %523, %3621 ], [ %523, %3526 ], [ %523, %3605 ], [ %523, %3575 ], [ %523, %3588 ], [ %523, %3549 ], [ %523, %3513 ], [ %523, %1878 ], [ %523, %1844 ], [ %523, %1830 ], [ %523, %1810 ], [ %523, %1808 ], [ %523, %1802 ], [ %523, %1801 ], [ %523, %1799 ], [ %523, %1761 ], [ %523, %1756 ], [ %523, %1693 ], [ %523, %1686 ], [ %523, %1633 ], [ %523, %1358 ], [ %523, %1356 ], [ %523, %1346 ], [ %523, %1083 ], [ %523, %1015 ], [ %523, %732 ], [ %523, %573 ], [ %523, %542 ], [ %523, %3442 ], [ %523, %3463 ]
  %3649 = phi ptr [ %522, %3428 ], [ %522, %3438 ], [ %522, %3385 ], [ %522, %3092 ], [ %522, %3095 ], [ %522, %3016 ], [ %522, %3010 ], [ %3100, %3096 ], [ %522, %2897 ], [ %522, %2592 ], [ %522, %2484 ], [ %522, %2479 ], [ %522, %2482 ], [ %522, %2459 ], [ %522, %2449 ], [ %522, %2395 ], [ %522, %2392 ], [ %522, %2374 ], [ %522, %2318 ], [ %522, %3621 ], [ %522, %3526 ], [ %522, %3605 ], [ %522, %3575 ], [ %522, %3588 ], [ %522, %3549 ], [ %522, %3513 ], [ %522, %1878 ], [ %522, %1844 ], [ %522, %1830 ], [ %522, %1810 ], [ %522, %1808 ], [ %522, %1802 ], [ %522, %1801 ], [ %522, %1799 ], [ %522, %1761 ], [ %522, %1756 ], [ %522, %1693 ], [ %522, %1686 ], [ %522, %1633 ], [ %522, %1358 ], [ %522, %1356 ], [ %522, %1346 ], [ %522, %1083 ], [ %522, %1015 ], [ %522, %732 ], [ %522, %573 ], [ %522, %542 ], [ %522, %3442 ], [ %522, %3463 ]
  %3650 = phi i32 [ %521, %3428 ], [ %521, %3438 ], [ %521, %3385 ], [ %521, %3092 ], [ %521, %3095 ], [ %521, %3016 ], [ %521, %3010 ], [ %3101, %3096 ], [ %521, %2897 ], [ %521, %2592 ], [ %521, %2484 ], [ %521, %2479 ], [ %521, %2482 ], [ %521, %2459 ], [ %521, %2449 ], [ %521, %2395 ], [ %521, %2392 ], [ %521, %2374 ], [ %521, %2318 ], [ %521, %3621 ], [ %521, %3526 ], [ %521, %3605 ], [ %521, %3575 ], [ %521, %3588 ], [ %521, %3549 ], [ %521, %3513 ], [ %521, %1878 ], [ %521, %1844 ], [ %521, %1830 ], [ %521, %1810 ], [ %521, %1808 ], [ %521, %1802 ], [ %521, %1801 ], [ %521, %1799 ], [ %521, %1761 ], [ %521, %1756 ], [ %521, %1693 ], [ %521, %1686 ], [ %521, %1633 ], [ %521, %1358 ], [ %521, %1356 ], [ %521, %1346 ], [ %521, %1083 ], [ %521, %1015 ], [ %521, %732 ], [ %521, %573 ], [ %521, %542 ], [ %521, %3442 ], [ %521, %3463 ]
  %3651 = phi i32 [ %520, %3428 ], [ 0, %3438 ], [ 1, %3385 ], [ %520, %3092 ], [ %520, %3095 ], [ %520, %3016 ], [ %520, %3010 ], [ %520, %3096 ], [ %520, %2897 ], [ %520, %2592 ], [ %520, %2484 ], [ %520, %2479 ], [ %520, %2482 ], [ %520, %2459 ], [ %520, %2449 ], [ %520, %2395 ], [ %520, %2392 ], [ %520, %2374 ], [ %520, %2318 ], [ %520, %3621 ], [ %520, %3526 ], [ %520, %3605 ], [ %520, %3575 ], [ %520, %3588 ], [ %520, %3549 ], [ %520, %3513 ], [ %520, %1878 ], [ %520, %1844 ], [ %520, %1830 ], [ %520, %1810 ], [ %520, %1808 ], [ %520, %1802 ], [ %520, %1801 ], [ %520, %1799 ], [ %520, %1761 ], [ %520, %1756 ], [ %520, %1693 ], [ %520, %1686 ], [ %520, %1633 ], [ %520, %1358 ], [ %520, %1356 ], [ %520, %1346 ], [ %520, %1083 ], [ %520, %1015 ], [ %520, %732 ], [ %520, %573 ], [ %520, %542 ], [ %520, %3442 ], [ %520, %3463 ]
  %3652 = phi i32 [ %519, %3428 ], [ %519, %3438 ], [ %519, %3385 ], [ %519, %3092 ], [ %519, %3095 ], [ %519, %3016 ], [ %519, %3010 ], [ %519, %3096 ], [ %519, %2897 ], [ %519, %2592 ], [ %519, %2484 ], [ %519, %2479 ], [ %519, %2482 ], [ %519, %2459 ], [ %519, %2449 ], [ %519, %2395 ], [ %519, %2392 ], [ %2383, %2374 ], [ %519, %2318 ], [ %519, %3621 ], [ %519, %3526 ], [ %519, %3605 ], [ %519, %3575 ], [ %519, %3588 ], [ %519, %3549 ], [ %519, %3513 ], [ %519, %1878 ], [ %519, %1844 ], [ %519, %1830 ], [ %519, %1810 ], [ %519, %1808 ], [ %519, %1802 ], [ %519, %1801 ], [ %519, %1799 ], [ %519, %1761 ], [ %519, %1756 ], [ %519, %1693 ], [ %519, %1686 ], [ %519, %1633 ], [ %519, %1358 ], [ %519, %1356 ], [ %519, %1346 ], [ %519, %1083 ], [ %519, %1015 ], [ %519, %732 ], [ %519, %573 ], [ %519, %542 ], [ %519, %3442 ], [ %519, %3463 ]
  %3653 = phi i32 [ %518, %3428 ], [ %518, %3438 ], [ %518, %3385 ], [ %518, %3092 ], [ %518, %3095 ], [ %518, %3016 ], [ %518, %3010 ], [ %518, %3096 ], [ %518, %2897 ], [ %518, %2592 ], [ %518, %2484 ], [ %518, %2479 ], [ %518, %2482 ], [ %518, %2459 ], [ %518, %2449 ], [ %518, %2395 ], [ %518, %2392 ], [ %2387, %2374 ], [ %518, %2318 ], [ %518, %3621 ], [ %518, %3526 ], [ %518, %3605 ], [ %518, %3575 ], [ %518, %3588 ], [ %518, %3549 ], [ %518, %3513 ], [ %518, %1878 ], [ %518, %1844 ], [ %518, %1830 ], [ %518, %1810 ], [ %518, %1808 ], [ %518, %1802 ], [ %518, %1801 ], [ %518, %1799 ], [ %518, %1761 ], [ %518, %1756 ], [ %518, %1693 ], [ %518, %1686 ], [ %518, %1633 ], [ %518, %1358 ], [ %518, %1356 ], [ %518, %1346 ], [ %518, %1083 ], [ %518, %1015 ], [ %518, %732 ], [ %518, %573 ], [ %518, %542 ], [ %518, %3442 ], [ %518, %3463 ]
  %3654 = phi i32 [ %517, %3428 ], [ %517, %3438 ], [ %517, %3385 ], [ %517, %3092 ], [ %517, %3095 ], [ %517, %3016 ], [ %517, %3010 ], [ %517, %3096 ], [ %517, %2897 ], [ %517, %2592 ], [ %517, %2484 ], [ %517, %2479 ], [ %517, %2482 ], [ %517, %2459 ], [ %517, %2449 ], [ %517, %2395 ], [ %517, %2392 ], [ %517, %2374 ], [ %517, %2318 ], [ %517, %3621 ], [ %517, %3526 ], [ %517, %3605 ], [ %517, %3575 ], [ %517, %3588 ], [ %517, %3549 ], [ %517, %3513 ], [ %517, %1878 ], [ %517, %1844 ], [ %517, %1830 ], [ %517, %1810 ], [ %517, %1808 ], [ %517, %1802 ], [ %517, %1801 ], [ %517, %1799 ], [ %517, %1761 ], [ %517, %1756 ], [ %517, %1693 ], [ %517, %1686 ], [ %517, %1633 ], [ %517, %1358 ], [ %517, %1356 ], [ %517, %1346 ], [ %517, %1083 ], [ %517, %1015 ], [ %579, %732 ], [ %517, %573 ], [ %517, %542 ], [ %517, %3442 ], [ %517, %3463 ]
  %3655 = phi i16 [ %516, %3428 ], [ %516, %3438 ], [ %516, %3385 ], [ %516, %3092 ], [ %516, %3095 ], [ %516, %3016 ], [ %516, %3010 ], [ %516, %3096 ], [ %516, %2897 ], [ %516, %2592 ], [ %516, %2484 ], [ %516, %2479 ], [ %516, %2482 ], [ %516, %2459 ], [ %516, %2449 ], [ %516, %2395 ], [ %516, %2392 ], [ %516, %2374 ], [ %516, %2318 ], [ %516, %3621 ], [ %516, %3526 ], [ %516, %3605 ], [ %516, %3575 ], [ %516, %3588 ], [ %516, %3549 ], [ %516, %3513 ], [ %516, %1878 ], [ %516, %1844 ], [ %516, %1830 ], [ %516, %1810 ], [ %516, %1808 ], [ %516, %1802 ], [ %516, %1801 ], [ %516, %1799 ], [ %516, %1761 ], [ %516, %1756 ], [ %516, %1693 ], [ %516, %1686 ], [ %516, %1633 ], [ %516, %1358 ], [ %516, %1356 ], [ %516, %1346 ], [ %516, %1083 ], [ %516, %1015 ], [ %664, %732 ], [ %516, %573 ], [ %516, %542 ], [ %516, %3442 ], [ %516, %3463 ]
  %3656 = phi i16 [ %515, %3428 ], [ %515, %3438 ], [ %515, %3385 ], [ %515, %3092 ], [ %515, %3095 ], [ %515, %3016 ], [ %515, %3010 ], [ %515, %3096 ], [ %515, %2897 ], [ %515, %2592 ], [ %515, %2484 ], [ %515, %2479 ], [ %515, %2482 ], [ %515, %2459 ], [ %515, %2449 ], [ %515, %2395 ], [ %515, %2392 ], [ %515, %2374 ], [ %515, %2318 ], [ %515, %3621 ], [ %515, %3526 ], [ %515, %3605 ], [ %515, %3575 ], [ %515, %3588 ], [ %515, %3549 ], [ %515, %3513 ], [ %515, %1878 ], [ %515, %1844 ], [ %515, %1830 ], [ %515, %1810 ], [ %515, %1808 ], [ %515, %1802 ], [ %515, %1801 ], [ %515, %1799 ], [ %515, %1761 ], [ %515, %1756 ], [ %515, %1693 ], [ %515, %1686 ], [ %515, %1633 ], [ %515, %1358 ], [ %515, %1356 ], [ %515, %1346 ], [ %515, %1083 ], [ %515, %1015 ], [ %697, %732 ], [ %515, %573 ], [ %515, %542 ], [ %515, %3442 ], [ %515, %3463 ]
  %3657 = phi i16 [ %514, %3428 ], [ %514, %3438 ], [ %514, %3385 ], [ %514, %3092 ], [ %514, %3095 ], [ %514, %3016 ], [ %514, %3010 ], [ %514, %3096 ], [ %514, %2897 ], [ %514, %2592 ], [ %514, %2484 ], [ %514, %2479 ], [ %514, %2482 ], [ %514, %2459 ], [ %514, %2449 ], [ %514, %2395 ], [ %514, %2392 ], [ %514, %2374 ], [ %514, %2318 ], [ %514, %3621 ], [ %514, %3526 ], [ %514, %3605 ], [ %514, %3575 ], [ %514, %3588 ], [ %514, %3549 ], [ %514, %3513 ], [ %514, %1878 ], [ %514, %1844 ], [ %514, %1830 ], [ %514, %1810 ], [ %514, %1808 ], [ %514, %1802 ], [ %514, %1801 ], [ %514, %1799 ], [ %514, %1761 ], [ %514, %1756 ], [ %514, %1693 ], [ %514, %1686 ], [ %514, %1633 ], [ %514, %1358 ], [ %514, %1356 ], [ %514, %1346 ], [ %514, %1083 ], [ %514, %1015 ], [ %734, %732 ], [ %514, %573 ], [ %514, %542 ], [ %514, %3442 ], [ %514, %3463 ]
  %3658 = phi i16 [ %513, %3428 ], [ %513, %3438 ], [ %513, %3385 ], [ %513, %3092 ], [ %513, %3095 ], [ %513, %3016 ], [ %513, %3010 ], [ %513, %3096 ], [ %513, %2897 ], [ %513, %2592 ], [ %513, %2484 ], [ %513, %2479 ], [ %513, %2482 ], [ %513, %2459 ], [ %513, %2449 ], [ %513, %2395 ], [ %513, %2392 ], [ %513, %2374 ], [ %513, %2318 ], [ %513, %3621 ], [ %513, %3526 ], [ %513, %3605 ], [ %513, %3575 ], [ %513, %3588 ], [ %513, %3549 ], [ %513, %3513 ], [ %513, %1878 ], [ %513, %1844 ], [ %513, %1830 ], [ %513, %1810 ], [ %513, %1808 ], [ %513, %1802 ], [ %513, %1801 ], [ %513, %1799 ], [ %513, %1761 ], [ %513, %1756 ], [ %513, %1693 ], [ %513, %1686 ], [ %513, %1633 ], [ %513, %1358 ], [ %513, %1356 ], [ %513, %1346 ], [ %513, %1083 ], [ %513, %1015 ], [ %740, %732 ], [ %513, %573 ], [ %513, %542 ], [ %513, %3442 ], [ %513, %3463 ]
  %3659 = phi i8 [ %512, %3428 ], [ %512, %3438 ], [ %512, %3385 ], [ %512, %3092 ], [ %512, %3095 ], [ %512, %3016 ], [ %512, %3010 ], [ %512, %3096 ], [ %512, %2897 ], [ %512, %2592 ], [ %512, %2484 ], [ %512, %2479 ], [ %512, %2482 ], [ %512, %2459 ], [ %512, %2449 ], [ %512, %2395 ], [ %512, %2392 ], [ %512, %2374 ], [ %512, %2318 ], [ %512, %3621 ], [ %512, %3526 ], [ %512, %3605 ], [ %512, %3575 ], [ %512, %3588 ], [ %512, %3549 ], [ %512, %3513 ], [ %512, %1878 ], [ %512, %1844 ], [ %512, %1830 ], [ %512, %1810 ], [ %512, %1808 ], [ %512, %1802 ], [ %512, %1801 ], [ %512, %1799 ], [ %512, %1761 ], [ %512, %1756 ], [ %512, %1693 ], [ %512, %1686 ], [ %512, %1633 ], [ %512, %1358 ], [ %512, %1356 ], [ %512, %1346 ], [ %512, %1083 ], [ %512, %1015 ], [ %662, %732 ], [ %512, %573 ], [ %512, %542 ], [ %512, %3442 ], [ %512, %3463 ]
  %3660 = phi i8 [ %511, %3428 ], [ %511, %3438 ], [ %511, %3385 ], [ %511, %3092 ], [ %511, %3095 ], [ %511, %3016 ], [ %511, %3010 ], [ %511, %3096 ], [ %511, %2897 ], [ %511, %2592 ], [ %511, %2484 ], [ %511, %2479 ], [ %511, %2482 ], [ %511, %2459 ], [ %511, %2449 ], [ %511, %2395 ], [ %511, %2392 ], [ %511, %2374 ], [ %511, %2318 ], [ %511, %3621 ], [ %511, %3526 ], [ %511, %3605 ], [ %511, %3575 ], [ %511, %3588 ], [ %511, %3549 ], [ %511, %3513 ], [ %511, %1878 ], [ %511, %1844 ], [ %511, %1830 ], [ %511, %1810 ], [ %511, %1808 ], [ %511, %1802 ], [ %511, %1801 ], [ %511, %1799 ], [ %511, %1761 ], [ %511, %1756 ], [ %511, %1693 ], [ %511, %1686 ], [ %511, %1633 ], [ %511, %1358 ], [ %511, %1356 ], [ %511, %1346 ], [ %511, %1083 ], [ %511, %1015 ], [ %695, %732 ], [ %511, %573 ], [ %511, %542 ], [ %511, %3442 ], [ %511, %3463 ]
  %3661 = phi i16 [ %510, %3428 ], [ %510, %3438 ], [ %510, %3385 ], [ %510, %3092 ], [ %510, %3095 ], [ %510, %3016 ], [ %510, %3010 ], [ %510, %3096 ], [ %510, %2897 ], [ %510, %2592 ], [ %510, %2484 ], [ %510, %2479 ], [ %510, %2482 ], [ %510, %2459 ], [ %510, %2449 ], [ %510, %2395 ], [ %510, %2392 ], [ %510, %2374 ], [ %510, %2318 ], [ %510, %3621 ], [ %510, %3526 ], [ %510, %3605 ], [ %510, %3575 ], [ %510, %3588 ], [ %510, %3549 ], [ %510, %3513 ], [ %510, %1878 ], [ %510, %1844 ], [ %510, %1830 ], [ %510, %1810 ], [ %510, %1808 ], [ %510, %1802 ], [ %510, %1801 ], [ %510, %1799 ], [ %510, %1761 ], [ %510, %1756 ], [ %510, %1693 ], [ %510, %1686 ], [ %510, %1633 ], [ %510, %1358 ], [ %510, %1356 ], [ %510, %1346 ], [ %510, %1083 ], [ %510, %1015 ], [ %723, %732 ], [ %510, %573 ], [ %510, %542 ], [ %510, %3442 ], [ %510, %3463 ]
  %3662 = phi ptr [ %509, %3428 ], [ %509, %3438 ], [ %509, %3385 ], [ %509, %3092 ], [ %509, %3095 ], [ %509, %3016 ], [ %509, %3010 ], [ %509, %3096 ], [ %509, %2897 ], [ %509, %2592 ], [ %509, %2484 ], [ %509, %2479 ], [ %509, %2482 ], [ %509, %2459 ], [ %509, %2449 ], [ %509, %2395 ], [ %509, %2392 ], [ %2375, %2374 ], [ %509, %2318 ], [ %509, %3621 ], [ %509, %3526 ], [ %509, %3605 ], [ %509, %3575 ], [ %509, %3588 ], [ %509, %3549 ], [ %509, %3513 ], [ %509, %1878 ], [ %509, %1844 ], [ %509, %1830 ], [ %509, %1810 ], [ %509, %1808 ], [ %509, %1802 ], [ %509, %1801 ], [ %509, %1799 ], [ %509, %1761 ], [ %509, %1756 ], [ %509, %1693 ], [ %509, %1686 ], [ %509, %1633 ], [ %509, %1358 ], [ %509, %1356 ], [ %509, %1346 ], [ %509, %1083 ], [ %866, %1015 ], [ %509, %732 ], [ %509, %573 ], [ %509, %542 ], [ %3447, %3442 ], [ %3447, %3463 ]
  %3663 = phi ptr [ %508, %3428 ], [ %508, %3438 ], [ %508, %3385 ], [ %508, %3092 ], [ %508, %3095 ], [ %508, %3016 ], [ %508, %3010 ], [ %508, %3096 ], [ %508, %2897 ], [ %508, %2592 ], [ %508, %2484 ], [ %508, %2479 ], [ %508, %2482 ], [ %508, %2459 ], [ %508, %2449 ], [ %508, %2395 ], [ %508, %2392 ], [ %508, %2374 ], [ %508, %2318 ], [ %508, %3621 ], [ %508, %3526 ], [ %508, %3605 ], [ %508, %3575 ], [ %508, %3588 ], [ %508, %3549 ], [ %508, %3513 ], [ %10, %1878 ], [ %10, %1844 ], [ %10, %1830 ], [ %10, %1810 ], [ %10, %1808 ], [ %508, %1802 ], [ %508, %1801 ], [ %10, %1799 ], [ %508, %1761 ], [ %508, %1756 ], [ %508, %1693 ], [ %508, %1686 ], [ %508, %1633 ], [ %508, %1358 ], [ %508, %1356 ], [ %508, %1346 ], [ %420, %1083 ], [ %508, %1015 ], [ %508, %732 ], [ %508, %573 ], [ %508, %542 ], [ %508, %3442 ], [ %508, %3463 ]
  %3664 = phi ptr [ %507, %3428 ], [ %507, %3438 ], [ %507, %3385 ], [ %507, %3092 ], [ %507, %3095 ], [ %507, %3016 ], [ %507, %3010 ], [ %3102, %3096 ], [ %507, %2897 ], [ %507, %2592 ], [ %507, %2484 ], [ %507, %2479 ], [ %507, %2482 ], [ %507, %2459 ], [ %507, %2449 ], [ %507, %2395 ], [ %507, %2392 ], [ %507, %2374 ], [ %507, %2318 ], [ %507, %3621 ], [ %507, %3526 ], [ %507, %3605 ], [ %507, %3575 ], [ %507, %3588 ], [ %507, %3549 ], [ %507, %3513 ], [ %507, %1878 ], [ %507, %1844 ], [ %507, %1830 ], [ %507, %1810 ], [ %507, %1808 ], [ %507, %1802 ], [ %507, %1801 ], [ %507, %1799 ], [ %507, %1761 ], [ %507, %1756 ], [ %507, %1693 ], [ %507, %1686 ], [ %507, %1633 ], [ %507, %1358 ], [ %507, %1356 ], [ %507, %1346 ], [ %507, %1083 ], [ %507, %1015 ], [ %507, %732 ], [ %507, %573 ], [ %507, %542 ], [ %507, %3442 ], [ %507, %3463 ]
  %3665 = phi i32 [ %565, %3428 ], [ %565, %3438 ], [ %565, %3385 ], [ %565, %3092 ], [ %565, %3095 ], [ %565, %3016 ], [ %565, %3010 ], [ %565, %3096 ], [ %565, %2897 ], [ %565, %2592 ], [ %565, %2484 ], [ %565, %2479 ], [ %565, %2482 ], [ %565, %2459 ], [ %565, %2449 ], [ %565, %2395 ], [ %565, %2392 ], [ %2376, %2374 ], [ %2321, %2318 ], [ %3506, %3621 ], [ %3506, %3526 ], [ %3506, %3605 ], [ %3506, %3575 ], [ %3506, %3588 ], [ %3506, %3549 ], [ %3506, %3513 ], [ %565, %1878 ], [ %565, %1844 ], [ %565, %1830 ], [ %565, %1810 ], [ %565, %1808 ], [ %565, %1802 ], [ %565, %1801 ], [ %565, %1799 ], [ %565, %1761 ], [ %565, %1756 ], [ %565, %1693 ], [ %565, %1686 ], [ %565, %1633 ], [ %565, %1358 ], [ %565, %1356 ], [ %565, %1346 ], [ %565, %1083 ], [ %1017, %1015 ], [ %565, %732 ], [ %565, %573 ], [ %506, %542 ], [ %3448, %3442 ], [ %3448, %3463 ]
  %3666 = phi ptr [ %566, %3428 ], [ %566, %3438 ], [ %566, %3385 ], [ %566, %3092 ], [ %566, %3095 ], [ %566, %3016 ], [ %566, %3010 ], [ %566, %3096 ], [ %566, %2897 ], [ %566, %2592 ], [ %566, %2484 ], [ %566, %2479 ], [ %566, %2482 ], [ %566, %2459 ], [ %566, %2449 ], [ %566, %2395 ], [ %566, %2392 ], [ %2377, %2374 ], [ %2322, %2318 ], [ %3507, %3621 ], [ %3507, %3526 ], [ %3507, %3605 ], [ %3507, %3575 ], [ %3507, %3588 ], [ %3507, %3549 ], [ %3507, %3513 ], [ %566, %1878 ], [ %566, %1844 ], [ %566, %1830 ], [ %566, %1810 ], [ %566, %1808 ], [ %566, %1802 ], [ %566, %1801 ], [ %566, %1799 ], [ %566, %1761 ], [ %566, %1756 ], [ %566, %1693 ], [ %566, %1686 ], [ %566, %1633 ], [ %566, %1358 ], [ %566, %1356 ], [ %566, %1346 ], [ %566, %1083 ], [ %1018, %1015 ], [ %566, %732 ], [ %566, %573 ], [ %505, %542 ], [ %3449, %3442 ], [ %3449, %3463 ]
  %3667 = phi ptr [ %567, %3428 ], [ %567, %3438 ], [ %567, %3385 ], [ %567, %3092 ], [ %567, %3095 ], [ %567, %3016 ], [ %567, %3010 ], [ %567, %3096 ], [ %567, %2897 ], [ %567, %2592 ], [ %567, %2484 ], [ %567, %2479 ], [ %567, %2482 ], [ %567, %2459 ], [ %567, %2449 ], [ %567, %2395 ], [ %567, %2392 ], [ %2378, %2374 ], [ %2323, %2318 ], [ %3508, %3621 ], [ %3508, %3526 ], [ %3508, %3605 ], [ %3508, %3575 ], [ %3508, %3588 ], [ %3508, %3549 ], [ %3508, %3513 ], [ %567, %1878 ], [ %567, %1844 ], [ %567, %1830 ], [ %567, %1810 ], [ %567, %1808 ], [ %567, %1802 ], [ %567, %1801 ], [ %567, %1799 ], [ %567, %1761 ], [ %567, %1756 ], [ %567, %1693 ], [ %567, %1686 ], [ %567, %1633 ], [ %567, %1358 ], [ %567, %1356 ], [ %567, %1346 ], [ %567, %1083 ], [ %1019, %1015 ], [ %567, %732 ], [ %567, %573 ], [ %504, %542 ], [ %3450, %3442 ], [ %3450, %3463 ]
  %3668 = phi ptr [ %569, %3428 ], [ %569, %3438 ], [ %3216, %3385 ], [ %3094, %3092 ], [ %3094, %3095 ], [ %3014, %3016 ], [ %3014, %3010 ], [ %3103, %3096 ], [ %2898, %2897 ], [ %2595, %2592 ], [ %2486, %2484 ], [ %569, %2479 ], [ %2483, %2482 ], [ %2461, %2459 ], [ %2445, %2449 ], [ %2399, %2395 ], [ %2394, %2392 ], [ %2379, %2374 ], [ %2324, %2318 ], [ %3509, %3621 ], [ %3509, %3526 ], [ %3509, %3605 ], [ %3509, %3575 ], [ %3509, %3588 ], [ %3509, %3549 ], [ %3509, %3513 ], [ %1880, %1878 ], [ %569, %1844 ], [ %1831, %1830 ], [ %1812, %1810 ], [ %569, %1808 ], [ %569, %1802 ], [ %569, %1801 ], [ %1771, %1799 ], [ %569, %1761 ], [ %1687, %1756 ], [ %1687, %1693 ], [ %1687, %1686 ], [ %1582, %1633 ], [ %569, %1358 ], [ %569, %1356 ], [ %1353, %1346 ], [ %569, %1083 ], [ %1020, %1015 ], [ %724, %732 ], [ %569, %573 ], [ %503, %542 ], [ %3451, %3442 ], [ %3451, %3463 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28) #7
  switch i32 %3638, label %3712 [
    i32 0, label %3669
    i32 5, label %3671
    i32 4, label %3669
    i32 3, label %3671
  ]

3669:                                             ; preds = %3633, %3633
  %3670 = icmp sgt i32 %3641, -1
  br i1 %3670, label %502, label %3671, !llvm.loop !101

3671:                                             ; preds = %3633, %3633, %3669, %493, %461
  %3672 = phi i32 [ %462, %461 ], [ %462, %493 ], [ %3634, %3669 ], [ %3634, %3633 ], [ %3634, %3633 ]
  %3673 = phi ptr [ %463, %461 ], [ %463, %493 ], [ %3635, %3669 ], [ %3635, %3633 ], [ %3635, %3633 ]
  %3674 = phi i64 [ %464, %461 ], [ %464, %493 ], [ %3636, %3669 ], [ %3636, %3633 ], [ %3636, %3633 ]
  %3675 = phi i64 [ %465, %461 ], [ %465, %493 ], [ %3637, %3669 ], [ %3637, %3633 ], [ %3637, %3633 ]
  %3676 = phi ptr [ %466, %461 ], [ %466, %493 ], [ %3639, %3669 ], [ %3639, %3633 ], [ %3639, %3633 ]
  %3677 = phi i32 [ %467, %461 ], [ %467, %493 ], [ %3640, %3669 ], [ %3640, %3633 ], [ %3640, %3633 ]
  %3678 = phi i32 [ %491, %461 ], [ -25, %493 ], [ %3641, %3669 ], [ %3641, %3633 ], [ %3641, %3633 ]
  %3679 = phi i32 [ %468, %461 ], [ %468, %493 ], [ %3645, %3669 ], [ %3645, %3633 ], [ %3645, %3633 ]
  %3680 = phi ptr [ %469, %461 ], [ %469, %493 ], [ %3646, %3669 ], [ %3646, %3633 ], [ %3646, %3633 ]
  %3681 = phi i32 [ %470, %461 ], [ %470, %493 ], [ %3648, %3669 ], [ %3648, %3633 ], [ %3648, %3633 ]
  %3682 = phi i32 [ %471, %461 ], [ %471, %493 ], [ %3654, %3669 ], [ %3654, %3633 ], [ %3654, %3633 ]
  %3683 = phi i16 [ %472, %461 ], [ %472, %493 ], [ %3655, %3669 ], [ %3655, %3633 ], [ %3655, %3633 ]
  %3684 = phi i16 [ %473, %461 ], [ %473, %493 ], [ %3656, %3669 ], [ %3656, %3633 ], [ %3656, %3633 ]
  %3685 = phi i16 [ %474, %461 ], [ %474, %493 ], [ %3657, %3669 ], [ %3657, %3633 ], [ %3657, %3633 ]
  %3686 = phi i16 [ %475, %461 ], [ %475, %493 ], [ %3658, %3669 ], [ %3658, %3633 ], [ %3658, %3633 ]
  %3687 = phi i8 [ %476, %461 ], [ %476, %493 ], [ %3659, %3669 ], [ %3659, %3633 ], [ %3659, %3633 ]
  %3688 = phi i8 [ %477, %461 ], [ %477, %493 ], [ %3660, %3669 ], [ %3660, %3633 ], [ %3660, %3633 ]
  %3689 = phi i16 [ %478, %461 ], [ %478, %493 ], [ %3661, %3669 ], [ %3661, %3633 ], [ %3661, %3633 ]
  %3690 = phi ptr [ %479, %461 ], [ %479, %493 ], [ %3662, %3669 ], [ %3662, %3633 ], [ %3662, %3633 ]
  %3691 = phi i32 [ %480, %461 ], [ %480, %493 ], [ %3665, %3669 ], [ %3665, %3633 ], [ %3665, %3633 ]
  %3692 = phi ptr [ %481, %461 ], [ %481, %493 ], [ %3666, %3669 ], [ %3666, %3633 ], [ %3666, %3633 ]
  %3693 = phi ptr [ %482, %461 ], [ %482, %493 ], [ %3667, %3669 ], [ %3667, %3633 ], [ %3667, %3633 ]
  %3694 = phi ptr [ %483, %461 ], [ %483, %493 ], [ %3668, %3669 ], [ %3668, %3633 ], [ %3668, %3633 ]
  %3695 = phi ptr [ %484, %461 ], [ null, %493 ], [ %497, %3669 ], [ %497, %3633 ], [ %497, %3633 ]
  call void @gx_cpath_release(ptr noundef nonnull %13) #7
  call void @gx_path_release(ptr noundef nonnull %12) #7
  %3696 = load ptr, ptr %455, align 8, !tbaa !95
  %3697 = icmp eq ptr %3696, null
  br i1 %3697, label %3699, label %3698

3698:                                             ; preds = %3671
  call void @gx_ht_free_cache(ptr noundef %5, ptr noundef nonnull %3696) #7
  br label %3699

3699:                                             ; preds = %3698, %3671
  call void @gx_device_halftone_release(ptr noundef nonnull %22, ptr noundef %5) #7
  call void @gs_imager_state_release(ptr noundef nonnull %17) #7
  %3700 = load ptr, ptr %456, align 8, !tbaa !156
  call void %3700(ptr noundef %5, ptr noundef %3695, ptr noundef nonnull @.str) #7
  %3701 = icmp slt i32 %3678, 0
  br i1 %3701, label %3712, label %3702

3702:                                             ; preds = %3699
  %3703 = icmp ult ptr %3694, %3692
  br i1 %3703, label %3711, label %3704

3704:                                             ; preds = %3702
  %3705 = load ptr, ptr %457, align 8, !tbaa !27
  %3706 = load ptr, ptr %458, align 8, !tbaa !27
  %3707 = icmp ult ptr %3705, %3706
  br i1 %3707, label %3711, label %3708

3708:                                             ; preds = %3704
  %3709 = load i16, ptr %459, align 8, !tbaa !277
  %3710 = icmp eq i16 %3709, -1
  br i1 %3710, label %3712, label %3711

3711:                                             ; preds = %3708, %3704, %3702
  br label %461

3712:                                             ; preds = %3708, %3699, %3633
  %3713 = phi i32 [ undef, %3633 ], [ %3678, %3699 ], [ %3678, %3708 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %25) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %24) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %23) #7
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %22) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %20) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %19) #7
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %18) #7
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %17) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %16)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %15) #7
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %14) #7
  call void @llvm.lifetime.end.p0(i64 280, ptr nonnull %13) #7
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %12) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %10) #7
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %9) #7
  ret i32 %3713
}

declare i32 @clist_fclose(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @clist_rewind(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clist_fread_chars(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clist_ferror_code(ptr noundef) local_unnamed_addr #2

declare i64 @clist_ftell(ptr noundef) local_unnamed_addr #2

declare i32 @clist_fseek(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clist_end_page(ptr noundef) local_unnamed_addr #2

declare void @gx_path_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_cpath_from_rectangle(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_imager_state_initialize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare void @gx_set_cmap_procs(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_imager_setscreenphase(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @gs_color_space_DeviceGray() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

declare i32 @sgets(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @clist_bitmap_bytes(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @bits_replicate_horizontally(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @bits_replicate_vertically(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @gx_imager_set_effective_xfer(ptr noundef) local_unnamed_addr #2

declare ptr @gx_ht_alloc_cache(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_ht_cache_default_bits() local_unnamed_addr #2

declare void @gx_ht_init_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_imager_dev_ht_install(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gs_imager_setmatrix(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_set_miter_limit(ptr noundef, double noundef) local_unnamed_addr #2

declare i32 @gx_set_dash(ptr noundef, ptr noundef, i32 noundef, double noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_set_dot_length(ptr noundef, double noundef, i32 noundef) local_unnamed_addr #2

declare void @gx_cpath_release(ptr noundef) local_unnamed_addr #2

declare void @gx_cpath_accum_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_cpath_accum_set_cbox(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_cpath_accum_end(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @gx_cpath_set_outside(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_cpath_inner_box(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @gs_color_space_DeviceRGB() local_unnamed_addr #2

declare ptr @gs_color_space_DeviceCMYK() local_unnamed_addr #2

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #2

declare i32 @gs_color_space_get_index(ptr noundef) local_unnamed_addr #2

declare i32 @gx_stroke_path_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_path_release(ptr noundef) local_unnamed_addr #2

declare void @lprintf_file_and_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

declare i64 @stell(ptr noundef) local_unnamed_addr #2

declare void @gx_ht_free_cache(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gx_device_halftone_release(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @gs_imager_state_release(ptr noundef) local_unnamed_addr #2

declare void @rc_free_struct_only(ptr noundef, ptr noundef, ptr noundef) #2

declare float @gs_mapped_transfer(double noundef, ptr noundef) #2

declare void @gx_ht_order_release(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @igcd(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_path_add_point(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @gx_path_add_line_notes(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_path_add_curve_notes(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_path_close_subpath_notes(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @gx_path_current_point(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 160}
!6 = !{!"stream_band_read_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !10, i64 24, !11, i64 200, !11, i64 204, !14, i64 208}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"gx_band_page_info_s", !8, i64 0, !7, i64 64, !8, i64 72, !7, i64 136, !11, i64 144, !12, i64 152, !13, i64 160}
!11 = !{!"int", !8, i64 0}
!12 = !{!"long", !8, i64 0}
!13 = !{!"gx_band_params_s", !11, i64 0, !11, i64 4, !12, i64 8}
!14 = !{!"cmd_block_s", !11, i64 0, !11, i64 4, !12, i64 8}
!15 = !{!16, !7, i64 8}
!16 = !{!"stream_cursor_write_s", !7, i64 0, !7, i64 8, !7, i64 16}
!17 = !{!16, !7, i64 16}
!18 = !{!6, !7, i64 88}
!19 = !{!6, !11, i64 204}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = !{!6, !11, i64 208}
!23 = !{!6, !12, i64 176}
!24 = !{!6, !11, i64 212}
!25 = !{!6, !12, i64 216}
!26 = !{!6, !11, i64 200}
!27 = !{!8, !8, i64 0}
!28 = !{!29, !7, i64 488}
!29 = !{!"gx_device_ht_s", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !30, i64 48, !11, i64 64, !11, i64 68, !8, i64 72, !8, i64 80, !11, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !11, i64 160, !32, i64 168, !33, i64 192, !7, i64 488, !7, i64 496, !34, i64 504, !34, i64 512}
!30 = !{!"gx_device_color_info_s", !11, i64 0, !11, i64 4, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14}
!31 = !{!"short", !8, i64 0}
!32 = !{!"gx_page_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16}
!33 = !{!"gx_device_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!34 = !{!"gs_int_point_s", !11, i64 0, !11, i64 4}
!35 = !{!36, !11, i64 68}
!36 = !{!"gx_device_s", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !30, i64 48, !11, i64 64, !11, i64 68, !8, i64 72, !8, i64 80, !11, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !11, i64 160, !32, i64 168, !33, i64 192}
!37 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 2, !39, i64 10, i64 2, !39, i64 12, i64 2, !39, i64 14, i64 2, !39}
!38 = !{!11, !11, i64 0}
!39 = !{!31, !31, i64 0}
!40 = !{!41, !7, i64 528}
!41 = !{!"gx_device_memory_s", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !30, i64 48, !11, i64 64, !11, i64 68, !8, i64 72, !8, i64 80, !11, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !11, i64 160, !32, i64 168, !33, i64 192, !7, i64 488, !42, i64 496, !11, i64 520, !11, i64 524, !7, i64 528, !7, i64 536, !7, i64 544, !44, i64 552, !45, i64 568, !46, i64 592, !11, i64 600, !11, i64 604, !11, i64 608, !11, i64 612, !11, i64 616, !12, i64 624}
!42 = !{!"gs_matrix_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20}
!43 = !{!"float", !8, i64 0}
!44 = !{!"gs_const_string_s", !7, i64 0, !11, i64 8}
!45 = !{!"_c24", !12, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!46 = !{!"gs_log2_scale_point_s", !11, i64 0, !11, i64 4}
!47 = !{!6, !7, i64 0}
!48 = !{!6, !7, i64 8}
!49 = !{!36, !11, i64 64}
!50 = !{!41, !11, i64 64}
!51 = !{!41, !11, i64 68}
!52 = !{!41, !11, i64 520}
!53 = !{!41, !7, i64 192}
!54 = !{i64 0, i64 60, !27, i64 64, i64 8, !55, i64 72, i64 60, !27, i64 136, i64 8, !55, i64 144, i64 4, !38, i64 152, i64 8, !56, i64 160, i64 4, !38, i64 164, i64 4, !38, i64 168, i64 8, !56}
!55 = !{!7, !7, i64 0}
!56 = !{!12, !12, i64 0}
!57 = !{!58, !7, i64 0}
!58 = !{!"gx_placed_page_s", !7, i64 0, !34, i64 8}
!59 = !{!58, !11, i64 12}
!60 = !{!58, !11, i64 8}
!61 = !{!62, !8, i64 66}
!62 = !{!"stream_s", !7, i64 0, !7, i64 8, !7, i64 16, !8, i64 24, !7, i64 48, !11, i64 56, !11, i64 60, !31, i64 64, !8, i64 66, !8, i64 67, !63, i64 72, !12, i64 88, !64, i64 96, !7, i64 152, !11, i64 160, !11, i64 164, !7, i64 168, !31, i64 176, !31, i64 178, !7, i64 184, !7, i64 192, !11, i64 200, !7, i64 208, !11, i64 216, !7, i64 224}
!63 = !{!"gs_string_s", !7, i64 0, !11, i64 8}
!64 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!65 = !{!62, !7, i64 168}
!66 = !{!67, !7, i64 640}
!67 = !{!"gx_saved_page_s", !36, i64 0, !8, i64 488, !10, i64 504, !11, i64 680}
!68 = !{!67, !7, i64 568}
!69 = distinct !{!69, !21}
!70 = !{!71, !11, i64 52}
!71 = !{!"gx_device_clist_reader_s", !11, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !11, i64 40, !11, i64 44, !30, i64 48, !11, i64 64, !11, i64 68, !8, i64 72, !8, i64 80, !11, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !12, i64 144, !12, i64 152, !11, i64 160, !32, i64 168, !33, i64 192, !7, i64 488, !7, i64 496, !7, i64 504, !11, i64 512, !13, i64 520, !72, i64 536, !73, i64 560, !11, i64 584, !11, i64 588, !7, i64 592, !11, i64 600, !11, i64 604, !10, i64 608, !11, i64 784, !7, i64 792, !11, i64 800}
!72 = !{!"gx_bits_cache_chunk_s", !7, i64 0, !7, i64 8, !11, i64 16, !11, i64 20}
!73 = !{!"gx_bits_cache_s", !7, i64 0, !11, i64 8, !11, i64 12, !11, i64 16}
!74 = !{i64 0, i64 16, !27, i64 16, i64 4, !38, i64 24, i64 8, !56, i64 32, i64 4, !38, i64 36, i64 4, !38, i64 40, i64 16, !27, i64 56, i64 4, !38, i64 60, i64 4, !38, i64 64, i64 4, !38, i64 68, i64 4, !38, i64 72, i64 4, !38, i64 76, i64 2, !39, i64 78, i64 2, !39, i64 80, i64 2, !39, i64 82, i64 2, !39, i64 88, i64 8, !55, i64 96, i64 8, !55, i64 104, i64 8, !56}
!75 = !{!76, !12, i64 24}
!76 = !{!"gx_strip_bitmap_s", !7, i64 0, !11, i64 8, !34, i64 12, !12, i64 24, !31, i64 32, !31, i64 34, !31, i64 36, !31, i64 38}
!77 = !{!76, !31, i64 36}
!78 = !{!76, !31, i64 38}
!79 = !{!71, !11, i64 64}
!80 = !{!81, !12, i64 16}
!81 = !{!"gs_fixed_rect_s", !82, i64 0, !82, i64 16}
!82 = !{!"gs_fixed_point_s", !12, i64 0, !12, i64 8}
!83 = !{!71, !11, i64 68}
!84 = !{!81, !12, i64 24}
!85 = !{!36, !7, i64 480}
!86 = !{i64 0, i64 8, !55, i64 8, i64 4, !87, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 20, i64 4, !87, i64 24, i64 4, !87, i64 28, i64 4, !87, i64 32, i64 4, !87, i64 40, i64 8, !55, i64 48, i64 4, !38, i64 52, i64 4, !87, i64 56, i64 4, !38, i64 60, i64 4, !87, i64 64, i64 4, !38, i64 68, i64 4, !38, i64 72, i64 4, !87, i64 80, i64 4, !87, i64 84, i64 4, !87, i64 88, i64 4, !87, i64 92, i64 4, !87, i64 96, i64 4, !87, i64 100, i64 4, !87, i64 104, i64 8, !56, i64 112, i64 8, !56, i64 120, i64 4, !38, i64 128, i64 4, !38, i64 132, i64 2, !39, i64 136, i64 4, !38, i64 140, i64 4, !87, i64 144, i64 8, !56, i64 152, i64 8, !56, i64 160, i64 4, !38, i64 164, i64 4, !38, i64 168, i64 8, !55, i64 176, i64 16, !27, i64 192, i64 8, !55, i64 200, i64 8, !55, i64 208, i64 8, !55, i64 216, i64 8, !55, i64 224, i64 8, !55, i64 232, i64 32, !27, i64 232, i64 8, !55, i64 240, i64 8, !55, i64 248, i64 8, !55, i64 256, i64 8, !55, i64 264, i64 32, !27, i64 264, i64 8, !55, i64 272, i64 8, !55, i64 280, i64 8, !55, i64 288, i64 8, !55, i64 296, i64 8, !55, i64 304, i64 8, !55, i64 312, i64 8, !55}
!87 = !{!43, !43, i64 0}
!88 = !{!89, !7, i64 40}
!89 = !{!"gs_imager_state_s", !7, i64 0, !90, i64 8, !92, i64 80, !11, i64 128, !31, i64 132, !11, i64 136, !43, i64 140, !82, i64 144, !11, i64 160, !11, i64 164, !7, i64 168, !8, i64 176, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !8, i64 232, !8, i64 264, !7, i64 296, !7, i64 304, !7, i64 312}
!90 = !{!"gx_line_params_s", !43, i64 0, !11, i64 4, !11, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !43, i64 24, !91, i64 32}
!91 = !{!"gx_dash_params_s", !7, i64 0, !11, i64 8, !43, i64 12, !11, i64 16, !43, i64 20, !11, i64 24, !11, i64 28, !43, i64 32}
!92 = !{!"gs_matrix_fixed_s", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !43, i64 16, !43, i64 20, !12, i64 24, !12, i64 32, !11, i64 40}
!93 = !{!89, !7, i64 168}
!94 = !{!89, !7, i64 192}
!95 = !{!89, !7, i64 200}
!96 = !{!97, !11, i64 28}
!97 = !{!"gx_fill_params_s", !11, i64 0, !82, i64 8, !43, i64 24, !11, i64 28}
!98 = !{!99, !7, i64 0}
!99 = !{!"gs_memory_s", !100, i64 0}
!100 = !{!"gs_memory_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!101 = distinct !{!101, !21}
!102 = distinct !{!102, !21}
!103 = !{!104, !11, i64 32}
!104 = !{!"gx_clist_state_s", !8, i64 0, !11, i64 16, !12, i64 24, !34, i64 32, !8, i64 40, !105, i64 56, !11, i64 72, !31, i64 76, !31, i64 78, !31, i64 80, !31, i64 82, !106, i64 88, !12, i64 104}
!105 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12}
!106 = !{!"cmd_list_s", !7, i64 0, !7, i64 8}
!107 = !{!104, !11, i64 36}
!108 = !{!104, !11, i64 16}
!109 = !{!71, !7, i64 592}
!110 = !{!111, !12, i64 0}
!111 = !{!"", !12, i64 0}
!112 = !{!71, !7, i64 544}
!113 = !{i64 0, i64 4, !38, i64 4, i64 2, !39, i64 6, i64 2, !39, i64 8, i64 2, !39, i64 10, i64 2, !39, i64 12, i64 8, !56, i64 20, i64 1, !27, i64 21, i64 1, !27, i64 22, i64 2, !39, i64 24, i64 2, !39, i64 26, i64 2, !39}
!114 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 2, !39, i64 8, i64 8, !56, i64 16, i64 1, !27, i64 17, i64 1, !27, i64 18, i64 2, !39, i64 20, i64 2, !39, i64 22, i64 2, !39}
!115 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 8, !56, i64 14, i64 1, !27, i64 15, i64 1, !27, i64 16, i64 2, !39, i64 18, i64 2, !39, i64 20, i64 2, !39}
!116 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 8, !56, i64 12, i64 1, !27, i64 13, i64 1, !27, i64 14, i64 2, !39, i64 16, i64 2, !39, i64 18, i64 2, !39}
!117 = !{i64 0, i64 2, !39, i64 2, i64 8, !56, i64 10, i64 1, !27, i64 11, i64 1, !27, i64 12, i64 2, !39, i64 14, i64 2, !39, i64 16, i64 2, !39}
!118 = !{i64 0, i64 1, !27, i64 1, i64 1, !27, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 2, !39}
!119 = !{i64 0, i64 1, !27, i64 1, i64 2, !39, i64 3, i64 2, !39, i64 5, i64 2, !39}
!120 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39}
!121 = !{!76, !7, i64 0}
!122 = !{!123, !7, i64 0}
!123 = !{!"stream_cursor_read_s", !7, i64 0, !7, i64 8, !7, i64 16}
!124 = !{!123, !7, i64 8}
!125 = !{!126, !11, i64 24}
!126 = !{!"stream_RLD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32}
!127 = !{!126, !11, i64 28}
!128 = !{!129, !7, i64 8}
!129 = !{!"stream_CFD_state_s", !7, i64 0, !7, i64 8, !7, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !7, i64 80, !7, i64 88, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !11, i64 128, !8, i64 132, !11, i64 136, !11, i64 140, !11, i64 144}
!130 = !{!129, !11, i64 40}
!131 = !{!129, !11, i64 52}
!132 = !{!129, !11, i64 60}
!133 = !{!129, !11, i64 64}
!134 = !{!129, !11, i64 72}
!135 = !{!129, !11, i64 56}
!136 = distinct !{!136, !21}
!137 = !{!104, !11, i64 72}
!138 = !{!104, !31, i64 76}
!139 = !{!89, !11, i64 128}
!140 = !{!141, !12, i64 0}
!141 = !{!"gx_transfer_map_s", !142, i64 0, !7, i64 24, !12, i64 32, !8, i64 40}
!142 = !{!"rc_header_s", !12, i64 0, !7, i64 8, !7, i64 16}
!143 = !{!141, !7, i64 8}
!144 = !{!99, !7, i64 16}
!145 = !{!141, !7, i64 16}
!146 = !{!141, !7, i64 24}
!147 = !{!148, !11, i64 136}
!148 = !{!"gx_device_halftone_s", !149, i64 0, !142, i64 96, !12, i64 120, !7, i64 128, !11, i64 136, !8, i64 140, !11, i64 156, !11, i64 160}
!149 = !{!"gx_ht_order_s", !150, i64 0, !31, i64 40, !31, i64 42, !31, i64 44, !31, i64 46, !31, i64 48, !31, i64 50, !11, i64 52, !11, i64 56, !11, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88}
!150 = !{!"gx_ht_cell_params_s", !31, i64 0, !31, i64 2, !31, i64 4, !31, i64 6, !31, i64 8, !31, i64 10, !12, i64 16, !31, i64 24, !31, i64 26, !11, i64 28, !11, i64 32, !11, i64 36}
!151 = !{!148, !7, i64 128}
!152 = !{!153, !7, i64 72}
!153 = !{!"gx_ht_order_component_s", !149, i64 0, !11, i64 96}
!154 = !{!148, !7, i64 72}
!155 = distinct !{!155, !21}
!156 = !{!99, !7, i64 88}
!157 = !{!99, !7, i64 64}
!158 = !{!99, !7, i64 48}
!159 = !{!153, !11, i64 96}
!160 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 2, !39, i64 8, i64 2, !39, i64 10, i64 2, !39, i64 16, i64 8, !56, i64 24, i64 2, !39, i64 26, i64 2, !39, i64 28, i64 4, !38, i64 32, i64 4, !38, i64 36, i64 4, !38, i64 40, i64 2, !39, i64 42, i64 2, !39, i64 44, i64 2, !39, i64 46, i64 2, !39, i64 48, i64 2, !39, i64 50, i64 2, !39, i64 52, i64 4, !38, i64 56, i64 4, !38, i64 60, i64 4, !38, i64 64, i64 8, !55, i64 72, i64 8, !55, i64 80, i64 8, !55, i64 88, i64 8, !55}
!161 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !55}
!162 = !{!149, !7, i64 64}
!163 = !{!149, !7, i64 72}
!164 = !{!149, !11, i64 56}
!165 = !{!99, !7, i64 32}
!166 = !{!149, !11, i64 60}
!167 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 2, !39, i64 8, i64 2, !39, i64 10, i64 2, !39, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 20, i64 4, !38, i64 24, i64 8, !55, i64 32, i64 8, !55, i64 40, i64 8, !55, i64 48, i64 8, !55}
!168 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 2, !39, i64 8, i64 2, !39, i64 10, i64 4, !38, i64 14, i64 4, !38, i64 18, i64 4, !38, i64 22, i64 8, !55, i64 30, i64 8, !55, i64 38, i64 8, !55, i64 46, i64 8, !55}
!169 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 2, !39, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 20, i64 8, !55, i64 28, i64 8, !55, i64 36, i64 8, !55, i64 44, i64 8, !55}
!170 = !{i64 0, i64 2, !39, i64 2, i64 2, !39, i64 4, i64 2, !39, i64 6, i64 4, !38, i64 10, i64 4, !38, i64 14, i64 4, !38, i64 18, i64 8, !55, i64 26, i64 8, !55, i64 34, i64 8, !55, i64 42, i64 8, !55}
!171 = !{i64 0, i64 4, !38, i64 4, i64 4, !38, i64 8, i64 8, !55, i64 16, i64 8, !55, i64 24, i64 8, !55, i64 32, i64 8, !55}
!172 = !{i64 0, i64 4, !38, i64 4, i64 8, !55, i64 12, i64 8, !55, i64 20, i64 8, !55, i64 28, i64 8, !55}
!173 = !{!149, !31, i64 42}
!174 = !{!149, !11, i64 52}
!175 = distinct !{!175, !21}
!176 = !{!149, !7, i64 80}
!177 = !{!149, !31, i64 44}
!178 = !{!149, !31, i64 40}
!179 = !{!153, !7, i64 80}
!180 = !{!104, !31, i64 80}
!181 = !{!105, !11, i64 0}
!182 = !{!105, !11, i64 4}
!183 = !{!105, !11, i64 8}
!184 = !{!105, !11, i64 12}
!185 = !{!104, !11, i64 56}
!186 = !{!104, !11, i64 64}
!187 = !{!104, !11, i64 68}
!188 = !{!104, !11, i64 60}
!189 = !{!190, !11, i64 4}
!190 = !{!"", !191, i64 0, !31, i64 8, !31, i64 10, !31, i64 12, !31, i64 14, !12, i64 16, !8, i64 24, !8, i64 25, !31, i64 26, !31, i64 28, !31, i64 30}
!191 = !{!"gx_cached_bits_head_s", !11, i64 0, !11, i64 4}
!192 = !{!190, !31, i64 8}
!193 = !{!190, !31, i64 10}
!194 = !{!190, !31, i64 14}
!195 = !{!76, !11, i64 12}
!196 = !{!76, !11, i64 16}
!197 = !{!76, !11, i64 8}
!198 = !{!190, !8, i64 24}
!199 = !{!76, !31, i64 32}
!200 = !{!190, !8, i64 25}
!201 = !{!76, !31, i64 34}
!202 = !{!190, !31, i64 26}
!203 = !{!190, !31, i64 12}
!204 = distinct !{!204, !21}
!205 = distinct !{!205, !21}
!206 = !{!42, !43, i64 0}
!207 = !{!42, !43, i64 4}
!208 = !{!42, !43, i64 8}
!209 = !{!42, !43, i64 12}
!210 = !{!42, !43, i64 16}
!211 = !{!42, !43, i64 20}
!212 = !{!89, !43, i64 8}
!213 = !{!89, !11, i64 12}
!214 = !{!89, !11, i64 16}
!215 = !{!89, !11, i64 164}
!216 = !{!89, !11, i64 136}
!217 = !{!89, !11, i64 160}
!218 = !{!89, !11, i64 56}
!219 = !{i64 0, i64 8, !56, i64 8, i64 8, !56}
!220 = !{!89, !12, i64 152}
!221 = !{!89, !12, i64 144}
!222 = !{!81, !12, i64 0}
!223 = !{!81, !12, i64 8}
!224 = !{!225, !7, i64 0}
!225 = !{!"gs_color_space_s", !7, i64 0, !8, i64 8}
!226 = !{!227, !11, i64 0}
!227 = !{!"gs_image_s", !11, i64 0, !11, i64 4, !42, i64 8, !11, i64 32, !7, i64 40, !8, i64 48, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92}
!228 = !{!227, !11, i64 4}
!229 = !{!227, !43, i64 8}
!230 = !{!227, !43, i64 12}
!231 = !{!227, !43, i64 16}
!232 = !{!227, !43, i64 20}
!233 = !{!227, !43, i64 24}
!234 = !{!227, !43, i64 28}
!235 = !{!227, !11, i64 32}
!236 = !{!227, !7, i64 40}
!237 = !{!227, !11, i64 84}
!238 = !{!227, !11, i64 80}
!239 = distinct !{!239, !21}
!240 = !{!227, !11, i64 88}
!241 = !{!227, !11, i64 92}
!242 = !{!243, !11, i64 0}
!243 = !{!"gs_int_rect_s", !34, i64 0, !34, i64 8}
!244 = !{!243, !11, i64 4}
!245 = !{!243, !11, i64 8}
!246 = !{!243, !11, i64 12}
!247 = !{!248, !7, i64 0}
!248 = !{!"gx_device_color_s", !7, i64 0, !8, i64 8, !34, i64 48, !249, i64 56}
!249 = !{!"_mask", !250, i64 0, !12, i64 24, !7, i64 32}
!250 = !{!"gs_client_color_s", !251, i64 0, !7, i64 16}
!251 = !{!"gs_paint_color_s", !8, i64 0}
!252 = !{!36, !7, i64 440}
!253 = !{!36, !7, i64 456}
!254 = !{!36, !7, i64 448}
!255 = distinct !{!255, !21}
!256 = distinct !{!256, !21}
!257 = distinct !{!257, !21}
!258 = !{!97, !11, i64 0}
!259 = !{i64 0, i64 8, !55, i64 8, i64 4, !38, i64 12, i64 4, !38, i64 16, i64 4, !38, i64 24, i64 8, !56, i64 32, i64 2, !39, i64 34, i64 2, !39, i64 36, i64 2, !39, i64 38, i64 2, !39}
!260 = !{i64 0, i64 4, !38, i64 4, i64 4, !38}
!261 = !{i64 0, i64 4, !38}
!262 = !{!263, !7, i64 0}
!263 = !{!"gx_device_color_procs_s", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!264 = !{!89, !43, i64 140}
!265 = !{!97, !43, i64 24}
!266 = !{!36, !7, i64 384}
!267 = !{!268, !43, i64 0}
!268 = !{!"gx_stroke_params_s", !43, i64 0}
!269 = distinct !{!269, !21}
!270 = !{!36, !7, i64 248}
!271 = !{!36, !7, i64 472}
!272 = !{!36, !7, i64 464}
!273 = !{!36, !7, i64 400}
!274 = !{!36, !7, i64 264}
!275 = !{!36, !7, i64 360}
!276 = !{!36, !7, i64 272}
!277 = !{!62, !31, i64 64}
