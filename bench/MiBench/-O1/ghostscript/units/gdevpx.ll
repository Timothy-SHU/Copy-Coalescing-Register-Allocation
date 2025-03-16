; ModuleID = 'gdevpx.c'
source_filename = "gdevpx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_pclxl_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64, i32, i32, i32, i32, %struct.pal_, %struct.pts_, %struct.ch_, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_imager_state_s = type { ptr, %struct.gx_line_params_s, %struct.gs_matrix_fixed_s, i32, i16, i32, float, %struct.gs_fixed_point_s, i32, i32, ptr, [2 x %struct.gs_int_point_s], ptr, ptr, ptr, ptr, ptr, %union.gx_transfer_s, %union.gx_transfer_s, ptr, ptr, ptr }
%struct.gx_line_params_s = type { float, i32, i32, float, float, float, float, %struct.gx_dash_params_s }
%struct.gx_dash_params_s = type { ptr, i32, float, i32, float, i32, i32, float }
%struct.gs_matrix_fixed_s = type { float, float, float, float, float, float, i64, i64, i32 }
%struct.gs_fixed_point_s = type { i64, i64 }
%struct.gs_int_point_s = type { i32, i32 }
%union.gx_transfer_s = type { [4 x ptr] }
%struct.gx_device_color_s = type { ptr, %union._c, %struct.gs_int_point_s, %struct._mask }
%union._c = type { %struct._bin }
%struct._bin = type { ptr, [2 x i64], i32, ptr }
%struct._mask = type { %struct.gs_client_color_s, i64, ptr }
%struct.gs_client_color_s = type { %struct.gs_paint_color_s, ptr }
%struct.gs_paint_color_s = type { [4 x float] }
%struct.gs_point_s = type { double, double }
%struct.pal_ = type { i32, [768 x i8] }
%struct.pts_ = type { %struct.gs_int_point_s, i32, i32, [100 x %struct.gs_int_point_s] }
%struct.ch_ = type { [600 x i16], [400 x %struct.cd_], i32, i32, i32, i64 }
%struct.cd_ = type { i64, i32 }
%struct.gx_device_vector_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i32, float, float }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_vector_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_color_space_s = type { ptr, %union.anon }
%union.anon = type { %struct.gs_pattern_params_s }
%struct.gs_pattern_params_s = type { i32, %struct.gs_paint_color_space_s }
%struct.gs_paint_color_space_s = type { ptr, %union.anon.2 }
%union.anon.2 = type { %struct.gs_indexed_params_s }
%struct.gs_indexed_params_s = type { %struct.gs_base_color_space_s, i32, %union.anon.1, i32 }
%struct.gs_base_color_space_s = type { ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { %struct.gs_const_string_s }
%struct.gs_const_string_s = type { ptr, i32 }
%struct.pclxl_image_enum_s = type { ptr, ptr, i32, i32, i32, i32 }
%struct.gs_color_space_type_s = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_RLE_state_s = type { ptr, ptr, ptr, i32, i64, i64, i32 }
%struct.stream_cursor_write_s = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"gx_device_pclxl\00", align 1
@st_device_pclxl = dso_local constant %struct.gs_memory_struct_type_s { i32 10488, ptr @.str, ptr null, ptr null, ptr @device_pclxl_enum_ptrs, ptr @device_pclxl_reloc_ptrs, ptr @gx_device_finalize }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"pxlmono\00", align 1
@gs_pxlmono_device = dso_local local_unnamed_addr global %struct.gx_device_pclxl_s { i32 10488, ptr null, ptr @.str.1, ptr null, ptr @st_device_pclxl, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 8, i16 255, i16 0, i16 256, i16 1 }, i32 5100, i32 6600, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @pclxl_open_device, ptr null, ptr null, ptr @pclxl_output_page, ptr @pclxl_close_device, ptr @gx_default_gray_map_rgb_color, ptr @gx_default_gray_map_color_rgb, ptr @gdev_vector_fill_rectangle, ptr null, ptr @pclxl_copy_mono, ptr @pclxl_copy_color, ptr null, ptr null, ptr @gdev_vector_get_params, ptr @gdev_vector_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr @gdev_vector_fill_path, ptr @gdev_vector_stroke_path, ptr @pclxl_fill_mask, ptr @gdev_vector_fill_trapezoid, ptr @gdev_vector_fill_parallelogram, ptr @gdev_vector_fill_triangle, ptr null, ptr @pclxl_begin_image, ptr @pclxl_image_data, ptr @pclxl_end_image, ptr null, ptr @pclxl_strip_copy_rop, ptr null }, ptr null, ptr null, [81 x i8] zeroinitializer, ptr null, ptr null, ptr null, i32 0, %struct.gs_imager_state_s zeroinitializer, [11 x float] zeroinitializer, %struct.gx_device_color_s zeroinitializer, %struct.gx_device_color_s zeroinitializer, i64 0, i64 0, %struct.gs_point_s zeroinitializer, i32 0, ptr null, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, %struct.pal_ zeroinitializer, %struct.pts_ zeroinitializer, %struct.ch_ zeroinitializer, i32 0 }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"pxlcolor\00", align 1
@gs_pxlcolor_device = dso_local local_unnamed_addr global %struct.gx_device_pclxl_s { i32 10488, ptr null, ptr @.str.2, ptr null, ptr @st_device_pclxl, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 5100, i32 6600, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] [float 6.000000e+02, float 6.000000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @pclxl_open_device, ptr null, ptr null, ptr @pclxl_output_page, ptr @pclxl_close_device, ptr @gx_default_rgb_map_rgb_color, ptr @gx_default_rgb_map_color_rgb, ptr @gdev_vector_fill_rectangle, ptr null, ptr @pclxl_copy_mono, ptr @pclxl_copy_color, ptr null, ptr null, ptr @gdev_vector_get_params, ptr @gdev_vector_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr @gdev_vector_fill_path, ptr @gdev_vector_stroke_path, ptr @pclxl_fill_mask, ptr @gdev_vector_fill_trapezoid, ptr @gdev_vector_fill_parallelogram, ptr @gdev_vector_fill_triangle, ptr null, ptr @pclxl_begin_image, ptr @pclxl_image_data, ptr @pclxl_end_image, ptr null, ptr @pclxl_strip_copy_rop, ptr null }, ptr null, ptr null, [81 x i8] zeroinitializer, ptr null, ptr null, ptr null, i32 0, %struct.gs_imager_state_s zeroinitializer, [11 x float] zeroinitializer, %struct.gx_device_color_s zeroinitializer, %struct.gx_device_color_s zeroinitializer, i64 0, i64 0, %struct.gs_point_s zeroinitializer, i32 0, ptr null, i64 0, i64 0, i32 0, i32 0, i32 0, i32 0, %struct.pal_ zeroinitializer, %struct.pts_ zeroinitializer, %struct.ch_ zeroinitializer, i32 0 }, align 8
@st_device_vector = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@.str.3 = private unnamed_addr constant [98 x i8] c"\1B%-12345X@PJL ENTER LANGUAGE = PCLXL\0A) HP-PCL XL;1;1;Comment Copyright Aladdin Enterprises 1996\00\0A\00", align 1
@pclxl_open_device.stream_header = internal constant [20 x i8] c"\F8\89\C0\00\F8\86\C0\03\F8\8FA\C0\00\F8\88\C0\01\F8\82H", align 16
@pclxl_vector_procs = internal constant %struct.gx_device_vector_procs_s { ptr @pclxl_beginpage, ptr @pclxl_setlinewidth, ptr @pclxl_setlinecap, ptr @pclxl_setlinejoin, ptr @pclxl_setmiterlimit, ptr @pclxl_setdash, ptr @gdev_vector_setflat, ptr @pclxl_setlogop, ptr @pclxl_setfillcolor, ptr @pclxl_setstrokecolor, ptr @gdev_vector_dopath, ptr @pclxl_dorect, ptr @pclxl_beginpath, ptr @pclxl_moveto, ptr @pclxl_lineto, ptr @pclxl_curveto, ptr @pclxl_closepath, ptr @pclxl_endpath }, align 8
@pclxl_beginpage.page_header_1 = internal constant [4 x i8] c"\C0\00\F8(", align 1
@pclxl_beginpage.media_sizes = internal unnamed_addr constant [12 x %struct.anon] [%struct.anon { i32 0, float 8.500000e+00, float 1.100000e+01 }, %struct.anon { i32 1, float 8.500000e+00, float 0x4031AAAAA0000000 }, %struct.anon { i32 2, float 0x4020888880000000, float 0x40276147A0000000 }, %struct.anon { i32 3, float 7.250000e+00, float 1.050000e+01 }, %struct.anon { i32 4, float 1.100000e+01, float 1.700000e+01 }, %struct.anon { i32 5, float 0x40276147A0000000, float 0x4030888880000000 }, %struct.anon { i32 6, float 0x40107E4B20000000, float 9.500000e+00 }, %struct.anon { i32 7, float 0x400EFC9620000000, float 7.500000e+00 }, %struct.anon { i32 8, float 0x401981B4E0000000, float 0x402206D3A0000000 }, %struct.anon { i32 9, float 0x401151EB80000000, float 0x402151EB80000000 }, %struct.anon { i32 12, float 0x401BB4E820000000, float 0x4023AE1480000000 }, %struct.anon { i32 16, float 0.000000e+00, float 0.000000e+00 }], align 16
@pclxl_beginpage.page_header_2 = internal constant [4 x i8] c"\C0\01\F8&", align 1
@pclxl_setlinewidth.ac_ = internal constant [3 x i8] c"\F8Kz", align 1
@pclxl_setlinecap.ac_ = internal constant [3 x i8] c"\F8Gq", align 1
@pclxl_setlinejoin.ac_ = internal constant [3 x i8] c"\F8Hr", align 1
@pclxl_setmiterlimit.ac_ = internal constant [3 x i8] c"\F8Is", align 1
@pclxl_setdash.nac_ = internal constant [4 x i8] c"\C0\00\F8N", align 1
@pclxl_setlogop.ac_ = internal constant [3 x i8] c"\F8-|", align 1
@pclxl_setlogop.ac_.4 = internal constant [3 x i8] c"\F8-x", align 1
@pclxl_setlogop.ac_.5 = internal constant [3 x i8] c"\F8,{", align 1
@gx_dc_type_pure = external local_unnamed_addr global ptr, align 8
@gx_dc_type_null = external local_unnamed_addr global ptr, align 8
@pclxl_set_color_space.ac_ = internal constant [3 x i8] c"\F8\03j", align 1
@pclxl_dorect.ac_ = internal constant [3 x i8] c"\F8B\A0", align 1
@pclxl_dorect.cr_ = internal constant [7 x i8] c"\F8B\C0\00\F8Sh", align 1
@pclxl_set_paints.nac_ = internal constant [5 x i8] c"\C0\00\F8\04c", align 1
@pclxl_set_paints.ac_ = internal constant [3 x i8] c"\F8Fn", align 1
@pclxl_set_paints.nac_.6 = internal constant [5 x i8] c"\C0\00\F8\05y", align 1
@pclxl_set_cursor.ac_ = internal constant [3 x i8] c"\F8Lk", align 1
@pclxl_endpath.scr_ = internal constant [5 x i8] c"\C0\00\F8Sb", align 1
@pclxl_endpath.ac_ = internal constant [3 x i8] c"\F8T\7F", align 1
@pclxl_close_device.file_trailer = internal constant [11 x i8] c"IB\1B%-12345X", align 1
@pclxl_copy_mono.mi_ = internal constant [8 x i8] c"\C0\00\F8b\C0\01\F8d", align 1
@pclxl_copy_text_char.ac_ = internal constant [3 x i8] c"\F8\AB\A8", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@pclxl_define_bitmap_font.bfh_ = internal constant [29 x i8] c"\F8\A8\C0\00\F8\A9O\C1\18\00\F8\A7P\FB\18\00\00\00\00\FE\00\02\00BR\00\00\00\04", align 16
@pclxl_define_bitmap_font.efh_ = internal constant [7 x i8] c"\FF\FF\00\00\00\00Q", align 1
@pclxl_set_font.sf_ = internal constant [12 x i8] c"\F8\A8\C0\01\F8\A6\C1\00\00\F8\AAo", align 1
@pclxl_define_bitmap_char.ac_ = internal constant [3 x i8] c"\F8\A8R", align 1
@pclxl_define_bitmap_char.ac_.8 = internal constant [3 x i8] c"\F8\A3S", align 1
@.str.9 = private unnamed_addr constant [7 x i8] zeroinitializer, align 1
@pclxl_set_color_palette.csp_ = internal constant [7 x i8] c"\F8\03\C0\02\F8\02\C8", align 1
@pclxl_set_color_palette.ac_ = internal constant [3 x i8] c"\F8\06j", align 1
@pclxl_write_begin_image.ac_ = internal constant [3 x i8] c"\F8g\B0", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"pclxl_write_image_data\00", align 1
@s_RLE_template = external local_unnamed_addr constant %struct.stream_template_s, align 8
@.str.11 = private unnamed_addr constant [6 x i8] zeroinitializer, align 1
@pclxl_write_image_data.ac_ = internal constant [3 x i8] c"\F8e\B1", align 1
@pclxl_write_image_data.ac_.12 = internal constant [3 x i8] c"\F8e\B1", align 1
@.str.13 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@pclxl_copy_color.ci_ = internal constant [6 x i8] c"\F8b\C0\00\F8d", align 1
@eBit_values = internal unnamed_addr constant [9 x i8] c"\00\00\00\00\01\00\00\00\02", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\FF\00\00", align 1
@pclxl_fill_mask.mi_ = internal constant [8 x i8] c"\C0\00\F8b\C0\01\F8d", align 1
@st_pclxl_image_enum = internal constant %struct.gs_memory_struct_type_s { i32 32, ptr @.str.16, ptr null, ptr null, ptr @pclxl_image_enum_enum_ptrs, ptr @pclxl_image_enum_reloc_ptrs, ptr null }, align 8
@.str.15 = private unnamed_addr constant [18 x i8] c"pclxl_begin_image\00", align 1
@pclxl_begin_image.ii_ = internal constant [6 x i8] c"\F8b\C0\01\F8d", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"pclxl_image_enum_t\00", align 1
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"pclxl_end_image(fill)\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"pclxl_end_image\00", align 1

; Function Attrs: nounwind uwtable
define internal ptr @device_pclxl_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_vector, i64 0, i32 4), align 8, !tbaa !5
  %6 = tail call ptr %5(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #11
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define internal void @device_pclxl_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_vector, i64 0, i32 5), align 8, !tbaa !11
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #11
  ret void
}

declare void @gx_device_finalize(ptr noundef) #1

declare i32 @gx_default_install(ptr noundef, ptr noundef) #1

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #1

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_open_device(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !12
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 22
  store ptr %5, ptr %6, align 8, !tbaa !19
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  store ptr @pclxl_vector_procs, ptr %7, align 8, !tbaa !34
  %8 = tail call i32 @gdev_vector_open_file_bbox(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %32, label %10

10:                                               ; preds = %1
  tail call void @gdev_vector_init(ptr noundef %0) #11
  %11 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %11, align 8, !tbaa !35
  %12 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 41
  %13 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 47
  store i32 0, ptr %13, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  %14 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %16 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull @.str.3, i32 noundef 97, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %17 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %18 = load float, ptr %17, align 4, !tbaa !42
  %19 = fpext float %18 to double
  %20 = fadd double %19, 5.000000e-01
  %21 = fptoui double %20 to i32
  %22 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %23 = load float, ptr %22, align 4, !tbaa !42
  %24 = fpext float %23 to double
  %25 = fadd double %24, 5.000000e-01
  %26 = fptoui double %25 to i32
  call fastcc void @put_usp(ptr noundef %15, i32 noundef %21, i32 noundef %26)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %27 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull @pclxl_open_device.stream_header, i32 noundef 20, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %28 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 40
  store i32 16, ptr %28, align 8, !tbaa !43
  %29 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7624) %29, i8 0, i64 7624, i1 false)
  %30 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 3
  store i32 2, ptr %30, align 4, !tbaa !44
  %31 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 2
  store i32 2, ptr %31, align 8, !tbaa !45
  br label %32

32:                                               ; preds = %1, %10
  %33 = phi i32 [ 0, %10 ], [ %8, %1 ]
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_output_page(ptr noundef %0, i32 %1, i32 %2) #0 {
  %4 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 36
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext 68) #11
  %11 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 12, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !46
  %13 = tail call i32 %12(ptr noundef %9) #11
  tail call void @gdev_vector_init(ptr noundef %0) #11
  store i32 0, ptr %4, align 8, !tbaa !35
  %14 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 41
  %15 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 47
  store i32 0, ptr %15, align 8, !tbaa !40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  br label %16

16:                                               ; preds = %7, %3
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_close_device(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 36
  %5 = load i32, ptr %4, align 8, !tbaa !35
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @fputc(i32 noundef 68, ptr noundef %3)
  br label %9

9:                                                ; preds = %7, %1
  %10 = tail call i64 @fwrite(ptr noundef nonnull @pclxl_close_device.file_trailer, i64 noundef 1, i64 noundef 11, ptr noundef %3)
  tail call void @gdev_vector_close_file(ptr noundef %0) #11
  ret i32 0
}

declare i64 @gx_default_gray_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare i32 @gx_default_gray_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @gdev_vector_fill_rectangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [6 x i8], align 1
  %15 = alloca %struct.gx_device_color_s, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %14) #11
  %16 = or i32 %6, %5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %11
  %19 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %20 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %21 = add nsw i32 %20, %7
  %22 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %23 = sub nsw i32 %2, %22
  %24 = icmp slt i32 %6, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = add nsw i32 %8, %6
  %27 = mul nsw i32 %6, %3
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  br label %31

31:                                               ; preds = %18, %25, %11
  %32 = phi i64 [ 0, %25 ], [ %4, %18 ], [ %4, %11 ]
  %33 = phi i32 [ %19, %25 ], [ %19, %18 ], [ %5, %11 ]
  %34 = phi i32 [ 0, %25 ], [ %6, %18 ], [ %6, %11 ]
  %35 = phi i32 [ %21, %25 ], [ %21, %18 ], [ %7, %11 ]
  %36 = phi i32 [ %26, %25 ], [ %8, %18 ], [ %8, %11 ]
  %37 = phi i32 [ %23, %25 ], [ %23, %18 ], [ %2, %11 ]
  %38 = phi ptr [ %30, %25 ], [ %1, %18 ], [ %1, %11 ]
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !51
  %41 = sub nsw i32 %40, %35
  %42 = icmp sgt i32 %33, %41
  %43 = sub nsw i32 %40, %33
  %44 = select i1 %42, i32 %43, i32 %35
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !52
  %47 = sub nsw i32 %46, %36
  %48 = icmp sgt i32 %34, %47
  %49 = sub nsw i32 %46, %34
  %50 = select i1 %48, i32 %49, i32 %36
  %51 = icmp slt i32 %44, 1
  %52 = icmp slt i32 %50, 1
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %133, label %54

54:                                               ; preds = %31
  %55 = tail call i32 @gdev_vector_update_clip_path(ptr noundef %0, ptr noundef null) #11
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %133, label %57

57:                                               ; preds = %54
  %58 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  tail call fastcc void @put_ssp(ptr noundef %58, i32 noundef %33, i32 noundef %34)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  %59 = call i32 @sputs(ptr noundef %58, ptr noundef nonnull @pclxl_set_cursor.ac_, i32 noundef 3, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  %60 = icmp ne i64 %32, 0
  %61 = icmp eq i64 %9, -1
  %62 = icmp ne i64 %10, -1
  %63 = and i1 %62, %60
  %64 = and i1 %61, %63
  %65 = icmp eq i32 %37, 0
  %66 = select i1 %64, i1 %65, i1 false
  br i1 %66, label %67, label %73

67:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %15) #11
  %68 = getelementptr inbounds %struct.gx_device_color_s, ptr %15, i64 0, i32 1
  store i64 %10, ptr %68, align 8, !tbaa !53
  %69 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !54
  store ptr %69, ptr %15, align 8, !tbaa !55
  %70 = call fastcc noundef i32 @pclxl_set_color(ptr noundef %0, ptr noundef nonnull %15, i32 noundef 4, i32 noundef 99), !range !56
  %71 = call fastcc i32 @pclxl_copy_text_char(ptr noundef %0, ptr noundef %38, i32 noundef %3, i64 noundef %32, i32 noundef %44, i32 noundef %50), !range !57
  %72 = icmp slt i32 %71, 0
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %15) #11
  br i1 %72, label %73, label %133

73:                                               ; preds = %67, %57
  %74 = icmp eq i64 %10, -1
  br i1 %61, label %75, label %82

75:                                               ; preds = %73
  br i1 %74, label %133, label %76

76:                                               ; preds = %75
  %77 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !58
  %79 = shl nsw i32 -1, %78
  %80 = xor i32 %79, -1
  %81 = zext nneg i32 %80 to i64
  br label %89

82:                                               ; preds = %73
  br i1 %74, label %83, label %89

83:                                               ; preds = %82
  %84 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !58
  %86 = shl nsw i32 -1, %85
  %87 = xor i32 %86, -1
  %88 = zext nneg i32 %87 to i64
  br label %89

89:                                               ; preds = %82, %83, %76
  %90 = phi i64 [ %81, %76 ], [ %9, %83 ], [ %9, %82 ]
  %91 = phi i64 [ %10, %76 ], [ %88, %83 ], [ %10, %82 ]
  %92 = phi i32 [ 460, %76 ], [ 460, %83 ], [ 204, %82 ]
  %93 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %94 = load i32, ptr %93, align 8, !tbaa !59
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %104, label %96

96:                                               ; preds = %89
  %97 = lshr i64 %90, 8
  %98 = and i64 %90, 65535
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = lshr i64 %91, 8
  %102 = and i64 %91, 65535
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %89
  %105 = trunc i64 %90 to i8
  store i8 %105, ptr %14, align 1, !tbaa !53
  br label %119

106:                                              ; preds = %100, %96
  %107 = lshr i64 %90, 16
  %108 = trunc i64 %107 to i8
  store i8 %108, ptr %14, align 1, !tbaa !53
  %109 = trunc i64 %97 to i8
  %110 = getelementptr inbounds [6 x i8], ptr %14, i64 0, i64 1
  store i8 %109, ptr %110, align 1, !tbaa !53
  %111 = trunc i64 %90 to i8
  %112 = getelementptr inbounds [6 x i8], ptr %14, i64 0, i64 2
  store i8 %111, ptr %112, align 1, !tbaa !53
  %113 = lshr i64 %91, 16
  %114 = trunc i64 %113 to i8
  %115 = getelementptr inbounds [6 x i8], ptr %14, i64 0, i64 3
  store i8 %114, ptr %115, align 1, !tbaa !53
  %116 = lshr i64 %91, 8
  %117 = trunc i64 %116 to i8
  %118 = getelementptr inbounds [6 x i8], ptr %14, i64 0, i64 4
  store i8 %117, ptr %118, align 1, !tbaa !53
  br label %119

119:                                              ; preds = %106, %104
  %120 = phi i64 [ 5, %106 ], [ 1, %104 ]
  %121 = phi i32 [ 6, %106 ], [ 2, %104 ]
  %122 = phi i32 [ 2, %106 ], [ 1, %104 ]
  %123 = trunc i64 %91 to i8
  %124 = getelementptr inbounds [6 x i8], ptr %14, i64 0, i64 %120
  store i8 %123, ptr %124, align 1, !tbaa !53
  %125 = call i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef %92) #11
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %119
  call fastcc void @pclxl_set_color_palette(ptr noundef %0, i32 noundef %122, ptr noundef nonnull %14, i32 noundef %121)
  %128 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %129 = call i32 @sputs(ptr noundef %128, ptr noundef nonnull @pclxl_copy_mono.mi_, i32 noundef 8, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  call fastcc void @pclxl_write_begin_image(ptr noundef %0, i32 noundef %44, i32 noundef %50, i32 noundef %44, i32 noundef %50)
  call fastcc void @pclxl_write_image_data(ptr noundef %0, ptr noundef %38, i32 noundef %3, i32 noundef %44, i32 noundef 0, i32 noundef %50)
  %130 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 26
  %131 = load ptr, ptr %130, align 8, !tbaa !60
  %132 = call i32 @spputc(ptr noundef %131, i8 noundef zeroext -78) #11
  br label %133

133:                                              ; preds = %119, %75, %54, %31, %67, %127
  %134 = phi i32 [ 0, %127 ], [ 0, %67 ], [ 0, %31 ], [ %55, %54 ], [ 0, %75 ], [ 0, %119 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %14) #11
  ret i32 %134
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = or i32 %6, %5
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %16 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %17 = add nsw i32 %16, %7
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

27:                                               ; preds = %14, %21, %9
  %28 = phi i64 [ 0, %21 ], [ %4, %14 ], [ %4, %9 ]
  %29 = phi i32 [ %15, %21 ], [ %15, %14 ], [ %5, %9 ]
  %30 = phi i32 [ 0, %21 ], [ %6, %14 ], [ %6, %9 ]
  %31 = phi i32 [ %17, %21 ], [ %17, %14 ], [ %7, %9 ]
  %32 = phi i32 [ %22, %21 ], [ %8, %14 ], [ %8, %9 ]
  %33 = phi i32 [ %19, %21 ], [ %19, %14 ], [ %2, %9 ]
  %34 = phi ptr [ %26, %21 ], [ %1, %14 ], [ %1, %9 ]
  %35 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !51
  %37 = sub nsw i32 %36, %31
  %38 = icmp sgt i32 %29, %37
  %39 = sub nsw i32 %36, %29
  %40 = select i1 %38, i32 %39, i32 %31
  %41 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %42 = load i32, ptr %41, align 4, !tbaa !52
  %43 = sub nsw i32 %42, %32
  %44 = icmp sgt i32 %30, %43
  %45 = sub nsw i32 %42, %30
  %46 = select i1 %44, i32 %45, i32 %32
  %47 = icmp slt i32 %40, 1
  %48 = icmp slt i32 %46, 1
  %49 = select i1 %47, i1 true, i1 %48
  br i1 %49, label %97, label %50

50:                                               ; preds = %27
  %51 = tail call i32 @gdev_vector_update_clip_path(ptr noundef %0, ptr noundef null) #11
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %97, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !58
  %56 = mul nsw i32 %55, %33
  %57 = and i32 %56, 7
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = tail call i32 @gx_default_copy_color(ptr noundef %0, ptr noundef %34, i32 noundef %33, i32 noundef %3, i64 noundef %28, i32 noundef %29, i32 noundef %30, i32 noundef %40, i32 noundef %46) #11
  br label %97

61:                                               ; preds = %53
  %62 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %63 = tail call i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef 204) #11
  %64 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  tail call fastcc void @put_ssp(ptr noundef %64, i32 noundef %29, i32 noundef %30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %65 = call i32 @sputs(ptr noundef %64, ptr noundef nonnull @pclxl_set_cursor.ac_, i32 noundef 3, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %66 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  %67 = load i32, ptr %54, align 4, !tbaa !58
  %68 = load i32, ptr %62, align 8, !tbaa !59
  %69 = sdiv i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [9 x i8], ptr @eBit_values, i64 0, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !53
  %73 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 3, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !53
  %75 = getelementptr inbounds %struct.stream_s, ptr %66, i64 0, i32 3, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !53
  %77 = icmp ult ptr %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %61
  %79 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %79, ptr %73, align 8, !tbaa !53
  store i8 -64, ptr %79, align 1, !tbaa !53
  br label %82

80:                                               ; preds = %61
  %81 = call i32 @spputc(ptr noundef %66, i8 noundef zeroext -64) #11
  br label %82

82:                                               ; preds = %80, %78
  %83 = load ptr, ptr %73, align 8, !tbaa !53
  %84 = load ptr, ptr %75, align 8, !tbaa !53
  %85 = icmp ult ptr %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = getelementptr inbounds i8, ptr %83, i64 1
  store ptr %87, ptr %73, align 8, !tbaa !53
  store i8 %72, ptr %87, align 1, !tbaa !53
  br label %90

88:                                               ; preds = %82
  %89 = call i32 @spputc(ptr noundef %66, i8 noundef zeroext %72) #11
  br label %90

90:                                               ; preds = %86, %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %91 = call i32 @sputs(ptr noundef %66, ptr noundef nonnull @pclxl_copy_color.ci_, i32 noundef 6, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call fastcc void @pclxl_write_begin_image(ptr noundef %0, i32 noundef %40, i32 noundef %46, i32 noundef %40, i32 noundef %46)
  %92 = load i32, ptr %54, align 4, !tbaa !58
  %93 = mul nsw i32 %92, %40
  call fastcc void @pclxl_write_image_data(ptr noundef %0, ptr noundef %34, i32 noundef %3, i32 noundef %93, i32 noundef 0, i32 noundef %46)
  %94 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 26
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  %96 = call i32 @spputc(ptr noundef %95, i8 noundef zeroext -78) #11
  br label %97

97:                                               ; preds = %50, %27, %90, %59
  %98 = phi i32 [ %60, %59 ], [ 0, %90 ], [ 0, %27 ], [ %51, %50 ]
  ret i32 %98
}

declare i32 @gdev_vector_get_params(ptr noundef, ptr noundef) #1

declare i32 @gdev_vector_put_params(ptr noundef, ptr noundef) #1

declare ptr @gx_page_device_get_page_device(ptr noundef) #1

declare i32 @gdev_vector_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @gdev_vector_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = or i32 %6, %5
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %13
  %19 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %20 = add nsw i32 %19, %7
  %21 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %22 = tail call i32 @llvm.smin.i32(i32 %5, i32 0)
  %23 = sub nsw i32 %2, %22
  %24 = icmp slt i32 %6, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = add nsw i32 %8, %6
  %27 = mul nsw i32 %6, %3
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 0, %28
  %30 = getelementptr inbounds i8, ptr %1, i64 %29
  br label %31

31:                                               ; preds = %18, %25, %13
  %32 = phi i32 [ 0, %25 ], [ %6, %18 ], [ %6, %13 ]
  %33 = phi i32 [ %20, %25 ], [ %20, %18 ], [ %7, %13 ]
  %34 = phi i32 [ %26, %25 ], [ %8, %18 ], [ %8, %13 ]
  %35 = phi i32 [ %21, %25 ], [ %21, %18 ], [ %5, %13 ]
  %36 = phi i64 [ 0, %25 ], [ %4, %18 ], [ %4, %13 ]
  %37 = phi i32 [ %23, %25 ], [ %23, %18 ], [ %2, %13 ]
  %38 = phi ptr [ %30, %25 ], [ %1, %18 ], [ %1, %13 ]
  %39 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 8
  %40 = load i32, ptr %39, align 8, !tbaa !51
  %41 = sub nsw i32 %40, %33
  %42 = icmp sgt i32 %35, %41
  %43 = sub nsw i32 %40, %35
  %44 = select i1 %42, i32 %43, i32 %33
  %45 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 9
  %46 = load i32, ptr %45, align 4, !tbaa !52
  %47 = sub nsw i32 %46, %34
  %48 = icmp sgt i32 %32, %47
  %49 = sub nsw i32 %46, %32
  %50 = select i1 %48, i32 %49, i32 %34
  %51 = icmp slt i32 %44, 1
  %52 = icmp slt i32 %50, 1
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %93, label %54

54:                                               ; preds = %31
  %55 = and i32 %37, 7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load ptr, ptr %9, align 8, !tbaa !55
  %59 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !54
  %60 = icmp ne ptr %58, %59
  %61 = icmp sgt i32 %10, 1
  %62 = or i1 %61, %60
  br i1 %62, label %63, label %65

63:                                               ; preds = %57, %54
  %64 = tail call i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %38, i32 noundef %37, i32 noundef %3, i64 noundef %36, i32 noundef %35, i32 noundef %32, i32 noundef %44, i32 noundef %50, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #11
  br label %93

65:                                               ; preds = %57
  %66 = tail call i32 @gdev_vector_update_clip_path(ptr noundef %0, ptr noundef %12) #11
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %93, label %68

68:                                               ; preds = %65
  %69 = tail call i32 @gdev_vector_update_fill_color(ptr noundef %0, ptr noundef nonnull %9) #11
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %68
  %72 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  tail call fastcc void @put_ssp(ptr noundef %72, i32 noundef %35, i32 noundef %32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  %73 = call i32 @sputs(ptr noundef %72, ptr noundef nonnull @pclxl_set_cursor.ac_, i32 noundef 3, ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  %74 = icmp ne i64 %36, 0
  %75 = icmp eq i32 %37, 0
  %76 = select i1 %74, i1 %75, i1 false
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = call i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef %11) #11
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %77
  %81 = call fastcc i32 @pclxl_copy_text_char(ptr noundef %0, ptr noundef %38, i32 noundef %3, i64 noundef %36, i32 noundef %44, i32 noundef %50), !range !57
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %93, label %83

83:                                               ; preds = %80, %71
  %84 = or i32 %11, 460
  %85 = call i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef %84) #11
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  call fastcc void @pclxl_set_color_palette(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.14, i32 noundef 2)
  %88 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  %89 = call i32 @sputs(ptr noundef %88, ptr noundef nonnull @pclxl_fill_mask.mi_, i32 noundef 8, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  call fastcc void @pclxl_write_begin_image(ptr noundef %0, i32 noundef %44, i32 noundef %50, i32 noundef %44, i32 noundef %50)
  call fastcc void @pclxl_write_image_data(ptr noundef %0, ptr noundef %38, i32 noundef %3, i32 noundef %44, i32 noundef 0, i32 noundef %50)
  %90 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 26
  %91 = load ptr, ptr %90, align 8, !tbaa !60
  %92 = call i32 @spputc(ptr noundef %91, i8 noundef zeroext -78) #11
  br label %93

93:                                               ; preds = %83, %80, %77, %68, %65, %31, %87, %63
  %94 = phi i32 [ %64, %63 ], [ 0, %87 ], [ 0, %31 ], [ %66, %65 ], [ 0, %68 ], [ 0, %77 ], [ 0, %80 ], [ 0, %83 ]
  ret i32 %94
}

declare i32 @gdev_vector_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #1

declare i32 @gdev_vector_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

declare i32 @gdev_vector_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gs_matrix_s, align 4
  %13 = alloca [768 x i8], align 16
  %14 = alloca %struct.gs_client_color_s, align 8
  %15 = alloca %struct.gx_device_color_s, align 8
  %16 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #11
  %18 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !64
  %20 = tail call ptr %19(ptr noundef %7, ptr noundef nonnull @st_pclxl_image_enum, ptr noundef nonnull @.str.15) #11
  %21 = icmp eq ptr %20, null
  br i1 %21, label %230, label %22

22:                                               ; preds = %9
  store ptr %7, ptr %20, align 8, !tbaa !67
  store ptr %20, ptr %8, align 8, !tbaa !54
  %23 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !69
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = tail call i32 @gs_color_space_num_components(ptr noundef %17) #11
  %28 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %29 = load i32, ptr %28, align 8, !tbaa !70
  %30 = mul nsw i32 %29, %27
  br label %31

31:                                               ; preds = %22, %26
  %32 = phi i32 [ %30, %26 ], [ 1, %22 ]
  %33 = phi i32 [ %27, %26 ], [ 1, %22 ]
  %34 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %35 = call i32 @gs_matrix_invert(ptr noundef nonnull %34, ptr noundef nonnull %12) #11
  %36 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %37 = call i32 @gs_matrix_multiply(ptr noundef nonnull %12, ptr noundef nonnull %36, ptr noundef nonnull %12) #11
  %38 = load float, ptr %12, align 4, !tbaa !71
  %39 = fcmp ole float %38, 0.000000e+00
  %40 = getelementptr inbounds %struct.gs_matrix_s, ptr %12, i64 0, i32 1
  %41 = load float, ptr %40, align 4
  %42 = fcmp une float %41, 0.000000e+00
  %43 = select i1 %39, i1 true, i1 %42
  %44 = getelementptr inbounds %struct.gs_matrix_s, ptr %12, i64 0, i32 2
  %45 = load float, ptr %44, align 4
  %46 = fcmp une float %45, 0.000000e+00
  %47 = select i1 %43, i1 true, i1 %46
  %48 = getelementptr inbounds %struct.gs_matrix_s, ptr %12, i64 0, i32 3
  %49 = load float, ptr %48, align 4
  %50 = fcmp ole float %49, 0.000000e+00
  %51 = select i1 %47, i1 true, i1 %50
  br i1 %51, label %81, label %52

52:                                               ; preds = %31
  %53 = load i32, ptr %23, align 4, !tbaa !69
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr %5, align 8, !tbaa !55
  %57 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !54
  %58 = icmp eq ptr %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %61 = load i32, ptr %60, align 4, !tbaa !72
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %77, label %81

63:                                               ; preds = %52
  %64 = load ptr, ptr %16, align 8, !tbaa !61
  %65 = call i32 @gs_color_space_get_index(ptr noundef %64) #11
  %66 = icmp eq i32 %65, 8
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gs_color_space_s, ptr %64, i64 0, i32 1, i32 0, i32 1, i32 1, i32 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !53
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = call ptr @gs_color_space_indexed_base(ptr noundef %64) #11
  %73 = call i32 @gs_color_space_get_index(ptr noundef %72) #11
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi i32 [ %73, %71 ], [ %65, %63 ]
  switch i32 %75, label %76 [
    i32 9, label %81
    i32 7, label %81
  ]

76:                                               ; preds = %74
  switch i32 %32, label %81 [
    i32 8, label %77
    i32 4, label %77
    i32 1, label %77
  ]

77:                                               ; preds = %76, %76, %76, %59
  %78 = icmp ne i32 %3, 0
  %79 = icmp ne ptr %4, null
  %80 = or i1 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %74, %74, %67, %76, %77, %59, %55, %31
  %82 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %20, i64 0, i32 1
  %83 = call i32 @gx_default_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %82) #11
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %230

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !73
  call void %87(ptr noundef %7, ptr noundef nonnull %20, ptr noundef nonnull @.str.15) #11
  br label %230

88:                                               ; preds = %77
  %89 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %20, i64 0, i32 1
  store ptr null, ptr %89, align 8, !tbaa !74
  %90 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  %91 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !75
  %93 = load i32, ptr %23, align 4, !tbaa !69
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %88
  %96 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %97 = load i32, ptr %96, align 4, !tbaa !72
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = shl i32 %92, 4
  %101 = and i32 %100, 240
  %102 = and i32 %92, -241
  %103 = or disjoint i32 %101, %102
  br label %104

104:                                              ; preds = %88, %95, %99
  %105 = phi i32 [ %103, %99 ], [ %92, %95 ], [ %92, %88 ]
  %106 = call i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef %105) #11
  %107 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %108 = load i32, ptr %107, align 8, !tbaa !70
  %109 = shl nsw i32 -1, %108
  %110 = xor i32 %109, -1
  call void @llvm.lifetime.start.p0(i64 768, ptr nonnull %13) #11
  %111 = icmp slt i32 %106, 0
  br i1 %111, label %228, label %112

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %20, i64 0, i32 3
  store i32 %32, ptr %113, align 4, !tbaa !76
  %114 = load i32, ptr %2, align 8, !tbaa !77
  %115 = mul nsw i32 %114, %32
  %116 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %20, i64 0, i32 2
  store i32 %115, ptr %116, align 8, !tbaa !78
  %117 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %20, i64 0, i32 4
  store i32 0, ptr %117, align 8, !tbaa !79
  %118 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !80
  %120 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %20, i64 0, i32 5
  store i32 %119, ptr %120, align 4, !tbaa !81
  %121 = getelementptr inbounds %struct.gs_matrix_s, ptr %12, i64 0, i32 4
  %122 = load float, ptr %121, align 4, !tbaa !82
  %123 = fpext float %122 to double
  %124 = fadd double %123, 5.000000e-01
  %125 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 35
  %126 = load double, ptr %125, align 8, !tbaa !83
  %127 = fdiv double %124, %126
  %128 = fptosi double %127 to i32
  %129 = getelementptr inbounds %struct.gs_matrix_s, ptr %12, i64 0, i32 5
  %130 = load float, ptr %129, align 4, !tbaa !84
  %131 = fpext float %130 to double
  %132 = fadd double %131, 5.000000e-01
  %133 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 35, i32 1
  %134 = load double, ptr %133, align 8, !tbaa !85
  %135 = fdiv double %132, %134
  %136 = fptosi double %135 to i32
  %137 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  call fastcc void @put_ssp(ptr noundef %137, i32 noundef %128, i32 noundef %136)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %138 = call i32 @sputs(ptr noundef %137, ptr noundef nonnull @pclxl_set_cursor.ac_, i32 noundef 3, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %139 = shl nuw i32 1, %32
  %140 = icmp eq i32 %32, 31
  br i1 %140, label %205, label %141

141:                                              ; preds = %112
  %142 = icmp sgt i32 %33, 0
  %143 = sitofp i32 %110 to float
  %144 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %145 = getelementptr inbounds %struct.gx_device_color_s, ptr %15, i64 0, i32 1
  %146 = getelementptr inbounds %struct.gx_device_color_s, ptr %15, i64 0, i32 1
  %147 = zext i32 %33 to i64
  %148 = call i32 @llvm.smax.i32(i32 %139, i32 1)
  %149 = zext nneg i32 %148 to i64
  br label %150

150:                                              ; preds = %141, %202
  %151 = phi i64 [ 0, %141 ], [ %203, %202 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %15) #11
  br i1 %142, label %152, label %176

152:                                              ; preds = %150
  %153 = trunc i64 %151 to i32
  br label %154

154:                                              ; preds = %152, %154
  %155 = phi i64 [ %147, %152 ], [ %157, %154 ]
  %156 = phi i32 [ %153, %152 ], [ %174, %154 ]
  %157 = add nsw i64 %155, -1
  %158 = trunc i64 %157 to i32
  %159 = shl nuw nsw i32 %158, 1
  %160 = zext nneg i32 %159 to i64
  %161 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %160
  %162 = load float, ptr %161, align 4, !tbaa !42
  %163 = and i32 %156, %110
  %164 = sitofp i32 %163 to float
  %165 = or disjoint i32 %159, 1
  %166 = zext nneg i32 %165 to i64
  %167 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %166
  %168 = load float, ptr %167, align 4, !tbaa !42
  %169 = fsub float %168, %162
  %170 = fmul float %169, %164
  %171 = fdiv float %170, %143
  %172 = fadd float %162, %171
  %173 = getelementptr inbounds [4 x float], ptr %14, i64 0, i64 %157
  store float %172, ptr %173, align 4, !tbaa !42
  %174 = lshr i32 %156, %108
  %175 = icmp sgt i64 %155, 1
  br i1 %175, label %154, label %176, !llvm.loop !86

176:                                              ; preds = %154, %150
  %177 = load ptr, ptr %17, align 8, !tbaa !88
  %178 = getelementptr inbounds %struct.gs_color_space_type_s, ptr %177, i64 0, i32 7
  %179 = load ptr, ptr %178, align 8, !tbaa !90
  %180 = call i32 %179(ptr noundef nonnull %14, ptr noundef nonnull %17, ptr noundef nonnull %15, ptr noundef %1, ptr noundef %0, i32 noundef 1) #11
  %181 = load ptr, ptr %15, align 8, !tbaa !55
  %182 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !54
  %183 = icmp eq ptr %181, %182
  br i1 %183, label %184, label %227

184:                                              ; preds = %176
  %185 = load i32, ptr %144, align 8, !tbaa !59
  %186 = icmp eq i32 %185, 1
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i64, ptr %146, align 8, !tbaa !53
  %189 = trunc i64 %188 to i8
  %190 = getelementptr inbounds [768 x i8], ptr %13, i64 0, i64 %151
  store i8 %189, ptr %190, align 1, !tbaa !53
  br label %202

191:                                              ; preds = %184
  %192 = load i64, ptr %145, align 8, !tbaa !53
  %193 = mul nuw nsw i64 %151, 3
  %194 = getelementptr inbounds [768 x i8], ptr %13, i64 0, i64 %193
  %195 = lshr i64 %192, 16
  %196 = trunc i64 %195 to i8
  store i8 %196, ptr %194, align 1, !tbaa !53
  %197 = lshr i64 %192, 8
  %198 = trunc i64 %197 to i8
  %199 = getelementptr inbounds i8, ptr %194, i64 1
  store i8 %198, ptr %199, align 1, !tbaa !53
  %200 = trunc i64 %192 to i8
  %201 = getelementptr inbounds i8, ptr %194, i64 2
  store i8 %200, ptr %201, align 1, !tbaa !53
  br label %202

202:                                              ; preds = %187, %191
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  %203 = add nuw nsw i64 %151, 1
  %204 = icmp eq i64 %203, %149
  br i1 %204, label %205, label %150, !llvm.loop !92

205:                                              ; preds = %202, %112
  %206 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %207 = load i32, ptr %206, align 8, !tbaa !59
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  call fastcc void @pclxl_set_color_palette(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %13, i32 noundef %139)
  br label %212

210:                                              ; preds = %205
  %211 = shl i32 3, %32
  call fastcc void @pclxl_set_color_palette(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %13, i32 noundef %211)
  br label %212

212:                                              ; preds = %210, %209
  %213 = sext i32 %32 to i64
  %214 = getelementptr inbounds [9 x i8], ptr @eBit_values, i64 0, i64 %213
  %215 = load i8, ptr %214, align 1, !tbaa !53
  call fastcc void @put_ub(ptr noundef %90, i8 noundef zeroext %215)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %216 = call i32 @sputs(ptr noundef %90, ptr noundef nonnull @pclxl_begin_image.ii_, i32 noundef 6, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %217 = load i32, ptr %2, align 8, !tbaa !77
  %218 = load i32, ptr %118, align 4, !tbaa !80
  %219 = sitofp i32 %217 to float
  %220 = load float, ptr %12, align 4, !tbaa !71
  %221 = fmul float %220, %219
  %222 = fptoui float %221 to i32
  %223 = sitofp i32 %218 to float
  %224 = load float, ptr %48, align 4, !tbaa !93
  %225 = fmul float %224, %223
  %226 = fptoui float %225 to i32
  call fastcc void @pclxl_write_begin_image(ptr noundef %0, i32 noundef %217, i32 noundef %218, i32 noundef %222, i32 noundef %226)
  br label %228

227:                                              ; preds = %176
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  br label %228

228:                                              ; preds = %227, %104, %212
  %229 = phi i32 [ 0, %212 ], [ %106, %104 ], [ -100, %227 ]
  call void @llvm.lifetime.end.p0(i64 768, ptr nonnull %13) #11
  br label %230

230:                                              ; preds = %228, %81, %85, %9
  %231 = phi i32 [ -25, %9 ], [ %83, %85 ], [ %83, %81 ], [ %229, %228 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #11
  ret i32 %231
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_image_data(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @gx_default_image_data(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #11
  br label %27

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !81
  %15 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !79
  %17 = sub nsw i32 %14, %16
  %18 = tail call i32 @llvm.smin.i32(i32 %17, i32 %5)
  %19 = load ptr, ptr %2, align 8, !tbaa !54
  %20 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !78
  tail call fastcc void @pclxl_write_image_data(ptr noundef %0, ptr noundef %19, i32 noundef %4, i32 noundef %21, i32 noundef %16, i32 noundef %18)
  %22 = load i32, ptr %15, align 8, !tbaa !79
  %23 = add nsw i32 %22, %18
  store i32 %23, ptr %15, align 8, !tbaa !79
  %24 = load i32, ptr %13, align 4, !tbaa !81
  %25 = icmp sge i32 %23, %24
  %26 = zext i1 %25 to i32
  br label %27

27:                                               ; preds = %12, %10
  %28 = phi i32 [ %11, %10 ], [ %26, %12 ]
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = tail call i32 @gx_default_end_image(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %2) #11
  br label %44

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !81
  %12 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !79
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !78
  %18 = add i32 %17, 7
  %19 = lshr i32 %18, 3
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  %21 = load ptr, ptr %20, align 8, !tbaa !94
  %22 = tail call ptr %21(ptr noundef nonnull %20, i32 noundef %19, ptr noundef nonnull @.str.17) #11
  %23 = icmp eq ptr %22, null
  br i1 %23, label %49, label %24

24:                                               ; preds = %15
  %25 = zext nneg i32 %19 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %22, i8 0, i64 %25, i1 false)
  %26 = load i32, ptr %12, align 8, !tbaa !79
  %27 = load i32, ptr %10, align 4, !tbaa !81
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %29
  %30 = phi i32 [ %33, %29 ], [ %26, %24 ]
  %31 = load i32, ptr %16, align 8, !tbaa !78
  tail call fastcc void @pclxl_write_image_data(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %19, i32 noundef %31, i32 noundef %30, i32 noundef 1)
  %32 = load i32, ptr %12, align 8, !tbaa !79
  %33 = add nsw i32 %32, 1
  store i32 %33, ptr %12, align 8, !tbaa !79
  %34 = load i32, ptr %10, align 4, !tbaa !81
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %29, label %36, !llvm.loop !95

36:                                               ; preds = %29, %24
  %37 = load ptr, ptr %1, align 8, !tbaa !67
  %38 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %37, i64 0, i32 11
  %39 = load ptr, ptr %38, align 8, !tbaa !73
  tail call void %39(ptr noundef %37, ptr noundef nonnull %22, ptr noundef nonnull @.str.17) #11
  br label %40

40:                                               ; preds = %36, %9
  %41 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 26
  %42 = load ptr, ptr %41, align 8, !tbaa !60
  %43 = tail call i32 @spputc(ptr noundef %42, i8 noundef zeroext -78) #11
  br label %44

44:                                               ; preds = %40, %7
  %45 = phi i32 [ %8, %7 ], [ 0, %40 ]
  %46 = load ptr, ptr %1, align 8, !tbaa !67
  %47 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %46, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !73
  tail call void %48(ptr noundef %46, ptr noundef nonnull %1, ptr noundef nonnull @.str.18) #11
  br label %49

49:                                               ; preds = %15, %44
  %50 = phi i32 [ %45, %44 ], [ -25, %15 ]
  ret i32 %50
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @pclxl_strip_copy_rop(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3, i64 %4, ptr nocapture readnone %5, ptr nocapture readnone %6, ptr nocapture readnone %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #2 {
  ret i32 0
}

declare i64 @gx_default_rgb_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #1

declare i32 @gx_default_rgb_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

declare i32 @gdev_vector_open_file_bbox(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @put_usp(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp ult ptr %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %10, ptr %4, align 8, !tbaa !53
  store i8 -47, ptr %10, align 1, !tbaa !53
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -47) #11
  br label %13

13:                                               ; preds = %11, %9
  %14 = load ptr, ptr %4, align 8, !tbaa !53
  %15 = load ptr, ptr %6, align 8, !tbaa !53
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %18, ptr %4, align 8, !tbaa !53
  %19 = trunc i32 %1 to i8
  store i8 %19, ptr %18, align 1, !tbaa !53
  br label %23

20:                                               ; preds = %13
  %21 = trunc i32 %1 to i8
  %22 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %21) #11
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %4, align 8, !tbaa !53
  %25 = load ptr, ptr %6, align 8, !tbaa !53
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %28, ptr %4, align 8, !tbaa !53
  %29 = lshr i32 %1, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %28, align 1, !tbaa !53
  br label %35

31:                                               ; preds = %23
  %32 = lshr i32 %1, 8
  %33 = trunc i32 %32 to i8
  %34 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %33) #11
  br label %35

35:                                               ; preds = %27, %31
  %36 = load ptr, ptr %4, align 8, !tbaa !53
  %37 = load ptr, ptr %6, align 8, !tbaa !53
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %40, ptr %4, align 8, !tbaa !53
  %41 = trunc i32 %2 to i8
  store i8 %41, ptr %40, align 1, !tbaa !53
  br label %45

42:                                               ; preds = %35
  %43 = trunc i32 %2 to i8
  %44 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %43) #11
  br label %45

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr %4, align 8, !tbaa !53
  %47 = load ptr, ptr %6, align 8, !tbaa !53
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %50, ptr %4, align 8, !tbaa !53
  %51 = lshr i32 %2, 8
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %50, align 1, !tbaa !53
  br label %57

53:                                               ; preds = %45
  %54 = lshr i32 %2, 8
  %55 = trunc i32 %54 to i8
  %56 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %55) #11
  br label %57

57:                                               ; preds = %49, %53
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_beginpage(ptr nocapture noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %6 = call i32 @sputs(ptr noundef %5, ptr noundef nonnull @pclxl_beginpage.page_header_1, i32 noundef 4, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %7 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 8
  %8 = load i32, ptr %7, align 8, !tbaa !96
  %9 = sitofp i32 %8 to float
  %10 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 13
  %11 = load float, ptr %10, align 4, !tbaa !42
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 9
  %14 = load i32, ptr %13, align 4, !tbaa !97
  %15 = sitofp i32 %14 to float
  %16 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 13, i64 1
  %17 = load float, ptr %16, align 4, !tbaa !42
  %18 = fdiv float %15, %17
  br label %19

19:                                               ; preds = %1, %34
  %20 = phi i64 [ 10, %1 ], [ %35, %34 ]
  %21 = getelementptr inbounds [12 x %struct.anon], ptr @pclxl_beginpage.media_sizes, i64 0, i64 %20, i32 1
  %22 = load float, ptr %21, align 4, !tbaa !98
  %23 = fsub float %22, %12
  %24 = call float @llvm.fabs.f32(float %23)
  %25 = fpext float %24 to double
  %26 = fcmp olt double %25, 0x3FB1C71C71C71C72
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = getelementptr inbounds [12 x %struct.anon], ptr @pclxl_beginpage.media_sizes, i64 0, i64 %20, i32 2
  %29 = load float, ptr %28, align 4, !tbaa !100
  %30 = fsub float %29, %18
  %31 = call float @llvm.fabs.f32(float %30)
  %32 = fpext float %31 to double
  %33 = fcmp olt double %32, 0x3FB1C71C71C71C72
  br i1 %33, label %37, label %34

34:                                               ; preds = %19, %27
  %35 = add nsw i64 %20, -1
  %36 = icmp ugt i64 %20, 1
  br i1 %36, label %19, label %37, !llvm.loop !101

37:                                               ; preds = %27, %34
  %38 = phi i64 [ %20, %27 ], [ 0, %34 ]
  %39 = shl i64 %38, 32
  %40 = ashr exact i64 %39, 32
  %41 = getelementptr inbounds [12 x %struct.anon], ptr @pclxl_beginpage.media_sizes, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !102
  %43 = trunc i32 %42 to i8
  %44 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 3, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !53
  %46 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 3, i32 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = icmp ult ptr %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %50, ptr %44, align 8, !tbaa !53
  store i8 -64, ptr %50, align 1, !tbaa !53
  br label %53

51:                                               ; preds = %37
  %52 = call i32 @spputc(ptr noundef %5, i8 noundef zeroext -64) #11
  br label %53

53:                                               ; preds = %51, %49
  %54 = load ptr, ptr %44, align 8, !tbaa !53
  %55 = load ptr, ptr %46, align 8, !tbaa !53
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %58, ptr %44, align 8, !tbaa !53
  store i8 %43, ptr %58, align 1, !tbaa !53
  br label %61

59:                                               ; preds = %53
  %60 = call i32 @spputc(ptr noundef %5, i8 noundef zeroext %43) #11
  br label %61

61:                                               ; preds = %57, %59
  %62 = load ptr, ptr %44, align 8, !tbaa !53
  %63 = load ptr, ptr %46, align 8, !tbaa !53
  %64 = icmp ult ptr %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %66, ptr %44, align 8, !tbaa !53
  store i8 -8, ptr %66, align 1, !tbaa !53
  br label %69

67:                                               ; preds = %61
  %68 = call i32 @spputc(ptr noundef %5, i8 noundef zeroext -8) #11
  br label %69

69:                                               ; preds = %67, %65
  %70 = load ptr, ptr %44, align 8, !tbaa !53
  %71 = load ptr, ptr %46, align 8, !tbaa !53
  %72 = icmp ult ptr %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %74, ptr %44, align 8, !tbaa !53
  store i8 37, ptr %74, align 1, !tbaa !53
  br label %77

75:                                               ; preds = %69
  %76 = call i32 @spputc(ptr noundef %5, i8 noundef zeroext 37) #11
  br label %77

77:                                               ; preds = %73, %75
  %78 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 40
  %79 = load i32, ptr %78, align 8, !tbaa !43
  %80 = icmp eq i32 %42, %79
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %82 = call i32 @sputs(ptr noundef %5, ptr noundef nonnull @pclxl_beginpage.page_header_2, i32 noundef 4, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  store i32 %42, ptr %78, align 8, !tbaa !43
  br label %83

83:                                               ; preds = %81, %77
  %84 = call i32 @spputc(ptr noundef %5, i8 noundef zeroext 67) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setlinewidth(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %5 = fptoui double %1 to i32
  %6 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %12, ptr %6, align 8, !tbaa !53
  store i8 -63, ptr %12, align 1, !tbaa !53
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext -63) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = load ptr, ptr %8, align 8, !tbaa !53
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %20, ptr %6, align 8, !tbaa !53
  %21 = trunc i32 %5 to i8
  store i8 %21, ptr %20, align 1, !tbaa !53
  br label %25

22:                                               ; preds = %15
  %23 = trunc i32 %5 to i8
  %24 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext %23) #11
  br label %25

25:                                               ; preds = %22, %19
  %26 = load ptr, ptr %6, align 8, !tbaa !53
  %27 = load ptr, ptr %8, align 8, !tbaa !53
  %28 = icmp ult ptr %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds i8, ptr %26, i64 1
  store ptr %30, ptr %6, align 8, !tbaa !53
  %31 = lshr i32 %5, 8
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr %30, align 1, !tbaa !53
  br label %37

33:                                               ; preds = %25
  %34 = lshr i32 %5, 8
  %35 = trunc i32 %34 to i8
  %36 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext %35) #11
  br label %37

37:                                               ; preds = %29, %33
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %38 = call i32 @sputs(ptr noundef %4, ptr noundef nonnull @pclxl_setlinewidth.ac_, i32 noundef 3, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setlinecap(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %12, ptr %6, align 8, !tbaa !53
  store i8 -64, ptr %12, align 1, !tbaa !53
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext -64) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = load ptr, ptr %8, align 8, !tbaa !53
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %20, ptr %6, align 8, !tbaa !53
  store i8 %5, ptr %20, align 1, !tbaa !53
  br label %23

21:                                               ; preds = %15
  %22 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext %5) #11
  br label %23

23:                                               ; preds = %19, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %24 = call i32 @sputs(ptr noundef %4, ptr noundef nonnull @pclxl_setlinecap.ac_, i32 noundef 3, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setlinejoin(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %12, ptr %6, align 8, !tbaa !53
  store i8 -64, ptr %12, align 1, !tbaa !53
  br label %15

13:                                               ; preds = %2
  %14 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext -64) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = load ptr, ptr %8, align 8, !tbaa !53
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %20, ptr %6, align 8, !tbaa !53
  store i8 %5, ptr %20, align 1, !tbaa !53
  br label %23

21:                                               ; preds = %15
  %22 = tail call i32 @spputc(ptr noundef %4, i8 noundef zeroext %5) #11
  br label %23

23:                                               ; preds = %19, %21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %24 = call i32 @sputs(ptr noundef %4, ptr noundef nonnull @pclxl_setlinejoin.ac_, i32 noundef 3, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setmiterlimit(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %5 = fadd double %1, 5.000000e-01
  %6 = fptosi double %5 to i32
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1)
  tail call fastcc void @put_u(ptr noundef %4, i32 noundef %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %8 = call i32 @sputs(ptr noundef %4, ptr noundef nonnull @pclxl_setmiterlimit.ac_, i32 noundef 3, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setdash(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, double noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %9 = call i32 @sputs(ptr noundef %6, ptr noundef nonnull @pclxl_setdash.nac_, i32 noundef 4, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %84

10:                                               ; preds = %4
  %11 = icmp ugt i32 %2, 255
  br i1 %11, label %86, label %12

12:                                               ; preds = %10
  %13 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext -51) #11
  %14 = trunc i32 %2 to i8
  %15 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 3, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !53
  %19 = icmp ult ptr %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %21, ptr %15, align 8, !tbaa !53
  store i8 -64, ptr %21, align 1, !tbaa !53
  br label %24

22:                                               ; preds = %12
  %23 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext -64) #11
  br label %24

24:                                               ; preds = %22, %20
  %25 = load ptr, ptr %15, align 8, !tbaa !53
  %26 = load ptr, ptr %17, align 8, !tbaa !53
  %27 = icmp ult ptr %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %29, ptr %15, align 8, !tbaa !53
  store i8 %14, ptr %29, align 1, !tbaa !53
  br label %32

30:                                               ; preds = %24
  %31 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext %14) #11
  br label %32

32:                                               ; preds = %28, %30
  %33 = tail call i32 @llvm.umax.i32(i32 %2, i32 1)
  %34 = zext nneg i32 %33 to i64
  br label %35

35:                                               ; preds = %32, %35
  %36 = phi i64 [ 0, %32 ], [ %40, %35 ]
  %37 = getelementptr inbounds float, ptr %1, i64 %36
  %38 = load float, ptr %37, align 4, !tbaa !42
  %39 = fpext float %38 to double
  tail call fastcc void @put_r(ptr noundef %6, double noundef %39)
  %40 = add nuw nsw i64 %36, 1
  %41 = icmp eq i64 %40, %34
  br i1 %41, label %42, label %35, !llvm.loop !103

42:                                               ; preds = %35
  %43 = load ptr, ptr %15, align 8, !tbaa !53
  %44 = load ptr, ptr %17, align 8, !tbaa !53
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %47, ptr %15, align 8, !tbaa !53
  store i8 -8, ptr %47, align 1, !tbaa !53
  br label %50

48:                                               ; preds = %42
  %49 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext -8) #11
  br label %50

50:                                               ; preds = %48, %46
  %51 = load ptr, ptr %15, align 8, !tbaa !53
  %52 = load ptr, ptr %17, align 8, !tbaa !53
  %53 = icmp ult ptr %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = getelementptr inbounds i8, ptr %51, i64 1
  store ptr %55, ptr %15, align 8, !tbaa !53
  store i8 74, ptr %55, align 1, !tbaa !53
  br label %58

56:                                               ; preds = %50
  %57 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext 74) #11
  br label %58

58:                                               ; preds = %54, %56
  %59 = fcmp une double %3, 0.000000e+00
  br i1 %59, label %60, label %84

60:                                               ; preds = %58
  %61 = load ptr, ptr %15, align 8, !tbaa !53
  %62 = load ptr, ptr %17, align 8, !tbaa !53
  %63 = icmp ult ptr %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1
  store ptr %65, ptr %15, align 8, !tbaa !53
  store i8 -59, ptr %65, align 1, !tbaa !53
  br label %68

66:                                               ; preds = %60
  %67 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext -59) #11
  br label %68

68:                                               ; preds = %64, %66
  tail call fastcc void @put_r(ptr noundef %6, double noundef %3)
  %69 = load ptr, ptr %15, align 8, !tbaa !53
  %70 = load ptr, ptr %17, align 8, !tbaa !53
  %71 = icmp ult ptr %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %73, ptr %15, align 8, !tbaa !53
  store i8 -8, ptr %73, align 1, !tbaa !53
  br label %76

74:                                               ; preds = %68
  %75 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext -8) #11
  br label %76

76:                                               ; preds = %74, %72
  %77 = load ptr, ptr %15, align 8, !tbaa !53
  %78 = load ptr, ptr %17, align 8, !tbaa !53
  %79 = icmp ult ptr %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = getelementptr inbounds i8, ptr %77, i64 1
  store ptr %81, ptr %15, align 8, !tbaa !53
  store i8 67, ptr %81, align 1, !tbaa !53
  br label %84

82:                                               ; preds = %76
  %83 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext 67) #11
  br label %84

84:                                               ; preds = %82, %80, %58, %8
  %85 = call i32 @spputc(ptr noundef %6, i8 noundef zeroext 112) #11
  br label %86

86:                                               ; preds = %10, %84
  %87 = phi i32 [ 0, %84 ], [ -13, %10 ]
  ret i32 %87
}

declare i32 @gdev_vector_setflat(ptr noundef, double noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setlogop(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %8 = and i32 %2, 256
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %3
  %11 = lshr i32 %1, 8
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !53
  %16 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = icmp ult ptr %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %20, ptr %14, align 8, !tbaa !53
  store i8 -64, ptr %20, align 1, !tbaa !53
  br label %23

21:                                               ; preds = %10
  %22 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -64) #11
  br label %23

23:                                               ; preds = %21, %19
  %24 = load ptr, ptr %14, align 8, !tbaa !53
  %25 = load ptr, ptr %16, align 8, !tbaa !53
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %28, ptr %14, align 8, !tbaa !53
  store i8 %13, ptr %28, align 1, !tbaa !53
  br label %31

29:                                               ; preds = %23
  %30 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext %13) #11
  br label %31

31:                                               ; preds = %27, %29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %32 = call i32 @sputs(ptr noundef %7, ptr noundef nonnull @pclxl_setlogop.ac_, i32 noundef 3, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  br label %33

33:                                               ; preds = %31, %3
  %34 = and i32 %2, 512
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = lshr i32 %1, 9
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 1
  %40 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !53
  %42 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !53
  %44 = icmp ult ptr %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %46, ptr %40, align 8, !tbaa !53
  store i8 -64, ptr %46, align 1, !tbaa !53
  br label %49

47:                                               ; preds = %36
  %48 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -64) #11
  br label %49

49:                                               ; preds = %47, %45
  %50 = load ptr, ptr %40, align 8, !tbaa !53
  %51 = load ptr, ptr %42, align 8, !tbaa !53
  %52 = icmp ult ptr %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %54, ptr %40, align 8, !tbaa !53
  store i8 %39, ptr %54, align 1, !tbaa !53
  br label %57

55:                                               ; preds = %49
  %56 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %39) #11
  br label %57

57:                                               ; preds = %53, %55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %58 = call i32 @sputs(ptr noundef %7, ptr noundef nonnull @pclxl_setlogop.ac_.4, i32 noundef 3, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  br label %59

59:                                               ; preds = %57, %33
  %60 = and i32 %2, 255
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %83, label %62

62:                                               ; preds = %59
  %63 = trunc i32 %1 to i8
  %64 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !53
  %66 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !53
  %68 = icmp ult ptr %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = getelementptr inbounds i8, ptr %65, i64 1
  store ptr %70, ptr %64, align 8, !tbaa !53
  store i8 -64, ptr %70, align 1, !tbaa !53
  br label %73

71:                                               ; preds = %62
  %72 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -64) #11
  br label %73

73:                                               ; preds = %71, %69
  %74 = load ptr, ptr %64, align 8, !tbaa !53
  %75 = load ptr, ptr %66, align 8, !tbaa !53
  %76 = icmp ult ptr %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %78, ptr %64, align 8, !tbaa !53
  store i8 %63, ptr %78, align 1, !tbaa !53
  br label %81

79:                                               ; preds = %73
  %80 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %63) #11
  br label %81

81:                                               ; preds = %77, %79
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %82 = call i32 @sputs(ptr noundef %7, ptr noundef nonnull @pclxl_setlogop.ac_.5, i32 noundef 3, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  br label %83

83:                                               ; preds = %81, %59
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setfillcolor(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @pclxl_set_color(ptr noundef %0, ptr noundef %1, i32 noundef 4, i32 noundef 99), !range !56
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_setstrokecolor(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = tail call fastcc i32 @pclxl_set_color(ptr noundef %0, ptr noundef %1, i32 noundef 5, i32 noundef 121), !range !56
  ret i32 %3
}

declare i32 @gdev_vector_dopath(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_dorect(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i32 noundef %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %10 = and i32 %5, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  tail call fastcc void @pclxl_set_paints(ptr noundef %0, i32 noundef %5)
  tail call fastcc void @put_usq_fixed(ptr noundef %9, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %13 = call i32 @sputs(ptr noundef %9, ptr noundef nonnull @pclxl_dorect.ac_, i32 noundef 3, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %14

14:                                               ; preds = %12, %6
  %15 = and i32 %5, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  call fastcc void @put_usq_fixed(ptr noundef %9, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %18 = call i32 @sputs(ptr noundef %9, ptr noundef nonnull @pclxl_dorect.cr_, i32 noundef 7, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %19

19:                                               ; preds = %17, %14
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_beginpath(ptr noundef %0, i32 %1) #0 {
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %4 = tail call i32 @spputc(ptr noundef %3, i8 noundef zeroext -123) #11
  %5 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 1
  store i32 0, ptr %5, align 4, !tbaa !104
  %6 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 2
  store i32 0, ptr %6, align 4, !tbaa !105
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_moveto(ptr noundef %0, double %1, double %2, double noundef %3, double noundef %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = tail call fastcc i32 @pclxl_flush_points(ptr noundef %0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = fptosi double %3 to i32
  %12 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45
  store i32 %11, ptr %12, align 4, !tbaa !106
  %13 = fptosi double %4 to i32
  %14 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !107
  %15 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  tail call fastcc void @put_ssp(ptr noundef %15, i32 noundef %11, i32 noundef %13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %16 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull @pclxl_set_cursor.ac_, i32 noundef 3, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %17

17:                                               ; preds = %6, %10
  %18 = phi i32 [ 0, %10 ], [ -1, %6 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_lineto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4) #0 {
  %6 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45
  %7 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !104
  switch i32 %8, label %15 [
    i32 1, label %9
    i32 0, label %18
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !105
  %12 = icmp sgt i32 %11, 99
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = icmp eq i32 %8, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %5, %13
  %16 = tail call fastcc i32 @pclxl_flush_points(ptr noundef %0)
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %31

18:                                               ; preds = %5, %15, %13
  %19 = fptosi double %1 to i32
  store i32 %19, ptr %6, align 4, !tbaa !106
  %20 = fptosi double %2 to i32
  %21 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !107
  store i32 1, ptr %7, align 4, !tbaa !104
  br label %22

22:                                               ; preds = %18, %9
  %23 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !105
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %23, align 4, !tbaa !105
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %26
  %28 = fptosi double %3 to i32
  store i32 %28, ptr %27, align 4, !tbaa !108
  %29 = fptosi double %4 to i32
  %30 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %26, i32 1
  store i32 %29, ptr %30, align 4, !tbaa !109
  br label %31

31:                                               ; preds = %15, %22
  %32 = phi i32 [ %16, %15 ], [ 0, %22 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @pclxl_curveto(ptr noundef %0, double noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8) #0 {
  %10 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45
  %11 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !104
  switch i32 %12, label %19 [
    i32 2, label %13
    i32 0, label %22
  ]

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 2
  %15 = load i32, ptr %14, align 4, !tbaa !105
  %16 = icmp sgt i32 %15, 97
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = icmp eq i32 %12, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %9, %17
  %20 = tail call fastcc i32 @pclxl_flush_points(ptr noundef %0)
  %21 = icmp sgt i32 %20, -1
  br i1 %21, label %22, label %43

22:                                               ; preds = %9, %19, %17
  %23 = fptosi double %1 to i32
  store i32 %23, ptr %10, align 4, !tbaa !106
  %24 = fptosi double %2 to i32
  %25 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 0, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !107
  store i32 2, ptr %11, align 4, !tbaa !104
  br label %26

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !105
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %29
  %31 = fptosi double %3 to i32
  store i32 %31, ptr %30, align 4, !tbaa !108
  %32 = fptosi double %4 to i32
  %33 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %29, i32 1
  store i32 %32, ptr %33, align 4, !tbaa !109
  %34 = getelementptr inbounds %struct.gs_int_point_s, ptr %30, i64 1
  %35 = fptosi double %5 to i32
  store i32 %35, ptr %34, align 4, !tbaa !108
  %36 = fptosi double %6 to i32
  %37 = getelementptr inbounds %struct.gs_int_point_s, ptr %30, i64 1, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !109
  %38 = getelementptr inbounds %struct.gs_int_point_s, ptr %30, i64 2
  %39 = fptosi double %7 to i32
  store i32 %39, ptr %38, align 4, !tbaa !108
  %40 = fptosi double %8 to i32
  %41 = getelementptr inbounds %struct.gs_int_point_s, ptr %30, i64 2, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !109
  %42 = add nsw i32 %28, 3
  store i32 %42, ptr %27, align 4, !tbaa !105
  br label %43

43:                                               ; preds = %19, %26
  %44 = phi i32 [ %20, %19 ], [ 0, %26 ]
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_closepath(ptr noundef %0, double %1, double %2, double noundef %3, double noundef %4) #0 {
  %6 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %7 = tail call fastcc i32 @pclxl_flush_points(ptr noundef %0)
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @spputc(ptr noundef %6, i8 noundef zeroext -124) #11
  %11 = fptosi double %3 to i32
  %12 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45
  store i32 %11, ptr %12, align 4, !tbaa !106
  %13 = fptosi double %4 to i32
  %14 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 0, i32 1
  store i32 %13, ptr %14, align 4, !tbaa !107
  br label %15

15:                                               ; preds = %5, %9
  %16 = phi i32 [ 0, %9 ], [ -1, %5 ]
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pclxl_endpath(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %6 = tail call fastcc i32 @pclxl_flush_points(ptr noundef %0)
  %7 = and i32 %1, 8
  %8 = icmp slt i32 %6, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %2
  %10 = and i32 %1, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  tail call fastcc void @pclxl_set_paints(ptr noundef %0, i32 noundef %1)
  %13 = tail call i32 @spputc(ptr noundef %5, i8 noundef zeroext -122) #11
  br label %14

14:                                               ; preds = %12, %9
  %15 = and i32 %1, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %45, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 42
  %19 = load i32, ptr %18, align 8, !tbaa !110
  %20 = icmp eq i32 %7, %19
  br i1 %20, label %43, label %21

21:                                               ; preds = %17
  %22 = lshr exact i32 %7, 3
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.stream_s, ptr %5, i64 0, i32 3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp ult ptr %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %30, ptr %24, align 8, !tbaa !53
  store i8 -64, ptr %30, align 1, !tbaa !53
  br label %33

31:                                               ; preds = %21
  %32 = tail call i32 @spputc(ptr noundef %5, i8 noundef zeroext -64) #11
  br label %33

33:                                               ; preds = %31, %29
  %34 = load ptr, ptr %24, align 8, !tbaa !53
  %35 = load ptr, ptr %26, align 8, !tbaa !53
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %38, ptr %24, align 8, !tbaa !53
  store i8 %23, ptr %38, align 1, !tbaa !53
  br label %41

39:                                               ; preds = %33
  %40 = tail call i32 @spputc(ptr noundef %5, i8 noundef zeroext %23) #11
  br label %41

41:                                               ; preds = %37, %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %42 = call i32 @sputs(ptr noundef %5, ptr noundef nonnull @pclxl_endpath.ac_, i32 noundef 3, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  store i32 %7, ptr %18, align 8, !tbaa !110
  br label %43

43:                                               ; preds = %41, %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %44 = call i32 @sputs(ptr noundef %5, ptr noundef nonnull @pclxl_endpath.scr_, i32 noundef 5, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  br label %45

45:                                               ; preds = %14, %43, %2
  %46 = phi i32 [ -1, %2 ], [ 0, %43 ], [ 0, %14 ]
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ub(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %9, ptr %3, align 8, !tbaa !53
  store i8 -64, ptr %9, align 1, !tbaa !53
  br label %12

10:                                               ; preds = %2
  %11 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -64) #11
  br label %12

12:                                               ; preds = %10, %8
  %13 = load ptr, ptr %3, align 8, !tbaa !53
  %14 = load ptr, ptr %5, align 8, !tbaa !53
  %15 = icmp ult ptr %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  store ptr %17, ptr %3, align 8, !tbaa !53
  store i8 %1, ptr %17, align 1, !tbaa !53
  br label %20

18:                                               ; preds = %12
  %19 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %1) #11
  br label %20

20:                                               ; preds = %18, %16
  ret void
}

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare ptr @gdev_vector_stream(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @put_u(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp ult i32 %1, 256
  br i1 %3, label %4, label %23

4:                                                ; preds = %2
  %5 = trunc i32 %1 to i8
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %12, ptr %6, align 8, !tbaa !53
  store i8 -64, ptr %12, align 1, !tbaa !53
  br label %15

13:                                               ; preds = %4
  %14 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -64) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = load ptr, ptr %6, align 8, !tbaa !53
  %17 = load ptr, ptr %8, align 8, !tbaa !53
  %18 = icmp ult ptr %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  store ptr %20, ptr %6, align 8, !tbaa !53
  store i8 %5, ptr %20, align 1, !tbaa !53
  br label %55

21:                                               ; preds = %15
  %22 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %5) #11
  br label %55

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp ult ptr %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %30, ptr %24, align 8, !tbaa !53
  store i8 -63, ptr %30, align 1, !tbaa !53
  br label %33

31:                                               ; preds = %23
  %32 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -63) #11
  br label %33

33:                                               ; preds = %31, %29
  %34 = load ptr, ptr %24, align 8, !tbaa !53
  %35 = load ptr, ptr %26, align 8, !tbaa !53
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %38, ptr %24, align 8, !tbaa !53
  %39 = trunc i32 %1 to i8
  store i8 %39, ptr %38, align 1, !tbaa !53
  br label %43

40:                                               ; preds = %33
  %41 = trunc i32 %1 to i8
  %42 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %41) #11
  br label %43

43:                                               ; preds = %40, %37
  %44 = load ptr, ptr %24, align 8, !tbaa !53
  %45 = load ptr, ptr %26, align 8, !tbaa !53
  %46 = icmp ult ptr %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds i8, ptr %44, i64 1
  store ptr %48, ptr %24, align 8, !tbaa !53
  %49 = lshr i32 %1, 8
  %50 = trunc i32 %49 to i8
  store i8 %50, ptr %48, align 1, !tbaa !53
  br label %55

51:                                               ; preds = %43
  %52 = lshr i32 %1, 8
  %53 = trunc i32 %52 to i8
  %54 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %53) #11
  br label %55

55:                                               ; preds = %51, %47, %21, %19
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_r(ptr noundef %0, double noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %4 = call double @frexp(double noundef %1, ptr noundef nonnull %3) #11
  %5 = fmul double %4, 0x4170000000000000
  %6 = fptosi double %5 to i64
  %7 = load i32, ptr %3, align 4, !tbaa !111
  %8 = icmp slt i32 %7, -126
  %9 = select i1 %8, i32 0, i32 %7
  store i32 %9, ptr %3, align 4
  %10 = select i1 %8, i64 0, i64 %6
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = add nsw i32 %9, 128
  store i32 %13, ptr %3, align 4, !tbaa !111
  %14 = sub nsw i64 0, %10
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi i64 [ %14, %12 ], [ %10, %2 ]
  %17 = trunc i64 %16 to i8
  %18 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %17) #11
  %19 = lshr i64 %16, 8
  %20 = trunc i64 %19 to i8
  %21 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %20) #11
  %22 = load i32, ptr %3, align 4, !tbaa !111
  %23 = shl i32 %22, 7
  %24 = xor i32 %23, 128
  %25 = zext i32 %24 to i64
  %26 = lshr i64 %16, 16
  %27 = and i64 %26, 127
  %28 = or disjoint i64 %27, %25
  %29 = trunc i64 %28 to i8
  %30 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %29) #11
  %31 = add nsw i32 %22, 127
  %32 = lshr i32 %31, 1
  %33 = trunc i32 %32 to i8
  %34 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %33) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pclxl_set_color(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %8 = load ptr, ptr %1, align 8, !tbaa !55
  %9 = load ptr, ptr @gx_dc_type_pure, align 8, !tbaa !54
  %10 = icmp eq ptr %8, %9
  br i1 %10, label %11, label %148

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gx_device_color_s, ptr %1, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !53
  %14 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !112
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = lshr i64 %13, 8
  %19 = and i64 %13, 65535
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %81

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 43
  %23 = load i32, ptr %22, align 4, !tbaa !113
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %46, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %27 = getelementptr inbounds %struct.stream_s, ptr %26, i64 0, i32 3, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = getelementptr inbounds %struct.stream_s, ptr %26, i64 0, i32 3, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = icmp ult ptr %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %33, ptr %27, align 8, !tbaa !53
  store i8 -64, ptr %33, align 1, !tbaa !53
  br label %36

34:                                               ; preds = %25
  %35 = tail call i32 @spputc(ptr noundef %26, i8 noundef zeroext -64) #11
  br label %36

36:                                               ; preds = %34, %32
  %37 = load ptr, ptr %27, align 8, !tbaa !53
  %38 = load ptr, ptr %29, align 8, !tbaa !53
  %39 = icmp ult ptr %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = getelementptr inbounds i8, ptr %37, i64 1
  store ptr %41, ptr %27, align 8, !tbaa !53
  store i8 1, ptr %41, align 1, !tbaa !53
  br label %44

42:                                               ; preds = %36
  %43 = tail call i32 @spputc(ptr noundef %26, i8 noundef zeroext 1) #11
  br label %44

44:                                               ; preds = %42, %40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %45 = call i32 @sputs(ptr noundef %26, ptr noundef nonnull @pclxl_set_color_space.ac_, i32 noundef 3, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  store i32 1, ptr %22, align 4, !tbaa !113
  br label %46

46:                                               ; preds = %21, %44
  %47 = trunc i64 %13 to i8
  %48 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !53
  %50 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp ult ptr %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %54, ptr %48, align 8, !tbaa !53
  store i8 -64, ptr %54, align 1, !tbaa !53
  br label %57

55:                                               ; preds = %46
  %56 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -64) #11
  br label %57

57:                                               ; preds = %55, %53
  %58 = load ptr, ptr %48, align 8, !tbaa !53
  %59 = load ptr, ptr %50, align 8, !tbaa !53
  %60 = icmp ult ptr %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  store ptr %62, ptr %48, align 8, !tbaa !53
  store i8 %47, ptr %62, align 1, !tbaa !53
  br label %65

63:                                               ; preds = %57
  %64 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %47) #11
  br label %65

65:                                               ; preds = %61, %63
  %66 = load ptr, ptr %48, align 8, !tbaa !53
  %67 = load ptr, ptr %50, align 8, !tbaa !53
  %68 = icmp ult ptr %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %70, ptr %48, align 8, !tbaa !53
  store i8 -8, ptr %70, align 1, !tbaa !53
  br label %73

71:                                               ; preds = %65
  %72 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -8) #11
  br label %73

73:                                               ; preds = %71, %69
  %74 = load ptr, ptr %48, align 8, !tbaa !53
  %75 = load ptr, ptr %50, align 8, !tbaa !53
  %76 = icmp ult ptr %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %78, ptr %48, align 8, !tbaa !53
  store i8 9, ptr %78, align 1, !tbaa !53
  br label %187

79:                                               ; preds = %73
  %80 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext 9) #11
  br label %187

81:                                               ; preds = %17
  %82 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 43
  %83 = load i32, ptr %82, align 4, !tbaa !113
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %106, label %85

85:                                               ; preds = %81
  %86 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %87 = getelementptr inbounds %struct.stream_s, ptr %86, i64 0, i32 3, i32 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !53
  %89 = getelementptr inbounds %struct.stream_s, ptr %86, i64 0, i32 3, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !53
  %91 = icmp ult ptr %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %93, ptr %87, align 8, !tbaa !53
  store i8 -64, ptr %93, align 1, !tbaa !53
  br label %96

94:                                               ; preds = %85
  %95 = tail call i32 @spputc(ptr noundef %86, i8 noundef zeroext -64) #11
  br label %96

96:                                               ; preds = %94, %92
  %97 = load ptr, ptr %87, align 8, !tbaa !53
  %98 = load ptr, ptr %89, align 8, !tbaa !53
  %99 = icmp ult ptr %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = getelementptr inbounds i8, ptr %97, i64 1
  store ptr %101, ptr %87, align 8, !tbaa !53
  store i8 2, ptr %101, align 1, !tbaa !53
  br label %104

102:                                              ; preds = %96
  %103 = tail call i32 @spputc(ptr noundef %86, i8 noundef zeroext 2) #11
  br label %104

104:                                              ; preds = %102, %100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %105 = call i32 @sputs(ptr noundef %86, ptr noundef nonnull @pclxl_set_color_space.ac_, i32 noundef 3, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  store i32 2, ptr %82, align 4, !tbaa !113
  br label %106

106:                                              ; preds = %81, %104
  %107 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -56) #11
  %108 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !53
  %110 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %111 = load ptr, ptr %110, align 8, !tbaa !53
  %112 = icmp ult ptr %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %106
  %114 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %114, ptr %108, align 8, !tbaa !53
  store i8 -64, ptr %114, align 1, !tbaa !53
  br label %117

115:                                              ; preds = %106
  %116 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -64) #11
  br label %117

117:                                              ; preds = %115, %113
  %118 = load ptr, ptr %108, align 8, !tbaa !53
  %119 = load ptr, ptr %110, align 8, !tbaa !53
  %120 = icmp ult ptr %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = getelementptr inbounds i8, ptr %118, i64 1
  store ptr %122, ptr %108, align 8, !tbaa !53
  store i8 3, ptr %122, align 1, !tbaa !53
  br label %125

123:                                              ; preds = %117
  %124 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext 3) #11
  br label %125

125:                                              ; preds = %121, %123
  %126 = lshr i64 %13, 16
  %127 = trunc i64 %126 to i8
  %128 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %127) #11
  %129 = trunc i64 %18 to i8
  %130 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %129) #11
  %131 = trunc i64 %13 to i8
  %132 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %131) #11
  %133 = load ptr, ptr %108, align 8, !tbaa !53
  %134 = load ptr, ptr %110, align 8, !tbaa !53
  %135 = icmp ult ptr %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %125
  %137 = getelementptr inbounds i8, ptr %133, i64 1
  store ptr %137, ptr %108, align 8, !tbaa !53
  store i8 -8, ptr %137, align 1, !tbaa !53
  br label %140

138:                                              ; preds = %125
  %139 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext -8) #11
  br label %140

140:                                              ; preds = %138, %136
  %141 = load ptr, ptr %108, align 8, !tbaa !53
  %142 = load ptr, ptr %110, align 8, !tbaa !53
  %143 = icmp ult ptr %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = getelementptr inbounds i8, ptr %141, i64 1
  store ptr %145, ptr %108, align 8, !tbaa !53
  store i8 11, ptr %145, align 1, !tbaa !53
  br label %187

146:                                              ; preds = %140
  %147 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext 11) #11
  br label %187

148:                                              ; preds = %4
  %149 = load ptr, ptr @gx_dc_type_null, align 8, !tbaa !54
  %150 = icmp eq ptr %8, %149
  br i1 %150, label %151, label %190

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !53
  %154 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !53
  %156 = icmp ult ptr %153, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %151
  %158 = getelementptr inbounds i8, ptr %153, i64 1
  store ptr %158, ptr %152, align 8, !tbaa !53
  store i8 -64, ptr %158, align 1, !tbaa !53
  br label %161

159:                                              ; preds = %151
  %160 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -64) #11
  br label %161

161:                                              ; preds = %159, %157
  %162 = load ptr, ptr %152, align 8, !tbaa !53
  %163 = load ptr, ptr %154, align 8, !tbaa !53
  %164 = icmp ult ptr %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = getelementptr inbounds i8, ptr %162, i64 1
  store ptr %166, ptr %152, align 8, !tbaa !53
  store i8 0, ptr %166, align 1, !tbaa !53
  br label %169

167:                                              ; preds = %161
  %168 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext 0) #11
  br label %169

169:                                              ; preds = %165, %167
  %170 = load ptr, ptr %152, align 8, !tbaa !53
  %171 = load ptr, ptr %154, align 8, !tbaa !53
  %172 = icmp ult ptr %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = getelementptr inbounds i8, ptr %170, i64 1
  store ptr %174, ptr %152, align 8, !tbaa !53
  store i8 -8, ptr %174, align 1, !tbaa !53
  br label %177

175:                                              ; preds = %169
  %176 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -8) #11
  br label %177

177:                                              ; preds = %175, %173
  %178 = load ptr, ptr %152, align 8, !tbaa !53
  %179 = load ptr, ptr %154, align 8, !tbaa !53
  %180 = icmp ult ptr %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %178, i64 1
  store ptr %182, ptr %152, align 8, !tbaa !53
  %183 = trunc i32 %2 to i8
  store i8 %183, ptr %182, align 1, !tbaa !53
  br label %187

184:                                              ; preds = %177
  %185 = trunc i32 %2 to i8
  %186 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext %185) #11
  br label %187

187:                                              ; preds = %184, %181, %146, %144, %79, %77
  %188 = trunc i32 %3 to i8
  %189 = call i32 @spputc(ptr noundef %7, i8 noundef zeroext %188) #11
  br label %190

190:                                              ; preds = %148, %187
  %191 = phi i32 [ 0, %187 ], [ -15, %148 ]
  ret i32 %191
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pclxl_set_paints(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %7 = and i32 %1, 8
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %43

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !114
  %13 = load ptr, ptr @gx_dc_type_null, align 8, !tbaa !54
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %43, label %15

15:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %16 = call i32 @sputs(ptr noundef %6, ptr noundef nonnull @pclxl_set_paints.nac_, i32 noundef 5, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  %17 = load ptr, ptr @gx_dc_type_null, align 8, !tbaa !54
  store ptr %17, ptr %11, align 8, !tbaa !114
  %18 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 41
  %19 = load i32, ptr %18, align 4, !tbaa !115
  %20 = icmp eq i32 %7, %19
  br i1 %20, label %43, label %21

21:                                               ; preds = %15
  %22 = lshr exact i32 %7, 3
  %23 = trunc i32 %22 to i8
  %24 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = getelementptr inbounds %struct.stream_s, ptr %6, i64 0, i32 3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = icmp ult ptr %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %30, ptr %24, align 8, !tbaa !53
  store i8 -64, ptr %30, align 1, !tbaa !53
  br label %33

31:                                               ; preds = %21
  %32 = call i32 @spputc(ptr noundef %6, i8 noundef zeroext -64) #11
  br label %33

33:                                               ; preds = %31, %29
  %34 = load ptr, ptr %24, align 8, !tbaa !53
  %35 = load ptr, ptr %26, align 8, !tbaa !53
  %36 = icmp ult ptr %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %38, ptr %24, align 8, !tbaa !53
  store i8 %23, ptr %38, align 1, !tbaa !53
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @spputc(ptr noundef %6, i8 noundef zeroext %23) #11
  br label %41

41:                                               ; preds = %37, %39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  %42 = call i32 @sputs(ptr noundef %6, ptr noundef nonnull @pclxl_set_paints.ac_, i32 noundef 3, ptr noundef nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  store i32 %7, ptr %18, align 4, !tbaa !115
  br label %43

43:                                               ; preds = %15, %41, %10, %2
  %44 = and i32 %1, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 32
  %48 = load ptr, ptr %47, align 8, !tbaa !116
  %49 = load ptr, ptr @gx_dc_type_null, align 8, !tbaa !54
  %50 = icmp eq ptr %48, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  %52 = call i32 @sputs(ptr noundef %6, ptr noundef nonnull @pclxl_set_paints.nac_.6, i32 noundef 5, ptr noundef nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  %53 = load ptr, ptr @gx_dc_type_null, align 8, !tbaa !54
  store ptr %53, ptr %47, align 8, !tbaa !116
  br label %54

54:                                               ; preds = %51, %46, %43
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_usq_fixed(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = getelementptr inbounds i8, ptr %7, i64 1
  store ptr %12, ptr %6, align 8, !tbaa !53
  store i8 -31, ptr %12, align 1, !tbaa !53
  br label %15

13:                                               ; preds = %5
  %14 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -31) #11
  br label %15

15:                                               ; preds = %13, %11
  %16 = lshr i64 %1, 12
  %17 = load ptr, ptr %6, align 8, !tbaa !53
  %18 = load ptr, ptr %8, align 8, !tbaa !53
  %19 = icmp ult ptr %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = getelementptr inbounds i8, ptr %17, i64 1
  store ptr %21, ptr %6, align 8, !tbaa !53
  %22 = trunc i64 %16 to i8
  store i8 %22, ptr %21, align 1, !tbaa !53
  br label %26

23:                                               ; preds = %15
  %24 = trunc i64 %16 to i8
  %25 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %24) #11
  br label %26

26:                                               ; preds = %23, %20
  %27 = load ptr, ptr %6, align 8, !tbaa !53
  %28 = load ptr, ptr %8, align 8, !tbaa !53
  %29 = icmp ult ptr %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %31, ptr %6, align 8, !tbaa !53
  %32 = lshr i64 %1, 20
  %33 = trunc i64 %32 to i8
  store i8 %33, ptr %31, align 1, !tbaa !53
  br label %38

34:                                               ; preds = %26
  %35 = lshr i64 %1, 20
  %36 = trunc i64 %35 to i8
  %37 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %36) #11
  br label %38

38:                                               ; preds = %30, %34
  %39 = lshr i64 %2, 12
  %40 = load ptr, ptr %6, align 8, !tbaa !53
  %41 = load ptr, ptr %8, align 8, !tbaa !53
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %44, ptr %6, align 8, !tbaa !53
  %45 = trunc i64 %39 to i8
  store i8 %45, ptr %44, align 1, !tbaa !53
  br label %49

46:                                               ; preds = %38
  %47 = trunc i64 %39 to i8
  %48 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %47) #11
  br label %49

49:                                               ; preds = %46, %43
  %50 = load ptr, ptr %6, align 8, !tbaa !53
  %51 = load ptr, ptr %8, align 8, !tbaa !53
  %52 = icmp ult ptr %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  store ptr %54, ptr %6, align 8, !tbaa !53
  %55 = lshr i64 %2, 20
  %56 = trunc i64 %55 to i8
  store i8 %56, ptr %54, align 1, !tbaa !53
  br label %61

57:                                               ; preds = %49
  %58 = lshr i64 %2, 20
  %59 = trunc i64 %58 to i8
  %60 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %59) #11
  br label %61

61:                                               ; preds = %53, %57
  %62 = lshr i64 %3, 12
  %63 = load ptr, ptr %6, align 8, !tbaa !53
  %64 = load ptr, ptr %8, align 8, !tbaa !53
  %65 = icmp ult ptr %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = getelementptr inbounds i8, ptr %63, i64 1
  store ptr %67, ptr %6, align 8, !tbaa !53
  %68 = trunc i64 %62 to i8
  store i8 %68, ptr %67, align 1, !tbaa !53
  br label %72

69:                                               ; preds = %61
  %70 = trunc i64 %62 to i8
  %71 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %70) #11
  br label %72

72:                                               ; preds = %69, %66
  %73 = load ptr, ptr %6, align 8, !tbaa !53
  %74 = load ptr, ptr %8, align 8, !tbaa !53
  %75 = icmp ult ptr %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = getelementptr inbounds i8, ptr %73, i64 1
  store ptr %77, ptr %6, align 8, !tbaa !53
  %78 = lshr i64 %3, 20
  %79 = trunc i64 %78 to i8
  store i8 %79, ptr %77, align 1, !tbaa !53
  br label %84

80:                                               ; preds = %72
  %81 = lshr i64 %3, 20
  %82 = trunc i64 %81 to i8
  %83 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %82) #11
  br label %84

84:                                               ; preds = %76, %80
  %85 = lshr i64 %4, 12
  %86 = load ptr, ptr %6, align 8, !tbaa !53
  %87 = load ptr, ptr %8, align 8, !tbaa !53
  %88 = icmp ult ptr %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = getelementptr inbounds i8, ptr %86, i64 1
  store ptr %90, ptr %6, align 8, !tbaa !53
  %91 = trunc i64 %85 to i8
  store i8 %91, ptr %90, align 1, !tbaa !53
  br label %95

92:                                               ; preds = %84
  %93 = trunc i64 %85 to i8
  %94 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %93) #11
  br label %95

95:                                               ; preds = %92, %89
  %96 = load ptr, ptr %6, align 8, !tbaa !53
  %97 = load ptr, ptr %8, align 8, !tbaa !53
  %98 = icmp ult ptr %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %100, ptr %6, align 8, !tbaa !53
  %101 = lshr i64 %4, 20
  %102 = trunc i64 %101 to i8
  store i8 %102, ptr %100, align 1, !tbaa !53
  br label %107

103:                                              ; preds = %95
  %104 = lshr i64 %4, 20
  %105 = trunc i64 %104 to i8
  %106 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %105) #11
  br label %107

107:                                              ; preds = %99, %103
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pclxl_flush_points(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca [200 x i8], align 16
  %4 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !105
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %249, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45
  %9 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %10 = load i32, ptr %8, align 4, !tbaa !106
  %11 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #11
  %13 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !104
  switch i32 %14, label %174 [
    i32 0, label %246
    i32 1, label %19
    i32 2, label %15
  ]

15:                                               ; preds = %7
  %16 = icmp sgt i32 %5, 0
  br i1 %16, label %17, label %168

17:                                               ; preds = %15
  %18 = zext nneg i32 %5 to i64
  br label %100

19:                                               ; preds = %7
  %20 = icmp slt i32 %5, 3
  br i1 %20, label %23, label %21

21:                                               ; preds = %19
  %22 = zext nneg i32 %5 to i64
  br label %54

23:                                               ; preds = %19
  %24 = icmp sgt i32 %5, 0
  br i1 %24, label %25, label %245

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 3, i32 0, i32 1
  %27 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 3, i32 0, i32 2
  %28 = zext nneg i32 %5 to i64
  br label %29

29:                                               ; preds = %25, %50
  %30 = phi i64 [ 0, %25 ], [ %52, %50 ]
  %31 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !108
  %33 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %30, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !109
  tail call fastcc void @put_ssp(ptr noundef %9, i32 noundef %32, i32 noundef %34)
  %35 = load ptr, ptr %26, align 8, !tbaa !53
  %36 = load ptr, ptr %27, align 8, !tbaa !53
  %37 = icmp ult ptr %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = getelementptr inbounds i8, ptr %35, i64 1
  store ptr %39, ptr %26, align 8, !tbaa !53
  store i8 -8, ptr %39, align 1, !tbaa !53
  br label %42

40:                                               ; preds = %29
  %41 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext -8) #11
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr %26, align 8, !tbaa !53
  %44 = load ptr, ptr %27, align 8, !tbaa !53
  %45 = icmp ult ptr %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = getelementptr inbounds i8, ptr %43, i64 1
  store ptr %47, ptr %26, align 8, !tbaa !53
  store i8 69, ptr %47, align 1, !tbaa !53
  br label %50

48:                                               ; preds = %42
  %49 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext 69) #11
  br label %50

50:                                               ; preds = %46, %48
  %51 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext -101) #11
  %52 = add nuw nsw i64 %30, 1
  %53 = icmp eq i64 %52, %28
  br i1 %53, label %245, label %29, !llvm.loop !117

54:                                               ; preds = %21, %54
  %55 = phi i64 [ 0, %21 ], [ %79, %54 ]
  %56 = phi i64 [ 0, %21 ], [ %78, %54 ]
  %57 = phi i32 [ %10, %21 ], [ %62, %54 ]
  %58 = phi i32 [ %12, %21 ], [ %65, %54 ]
  %59 = phi i32 [ 0, %21 ], [ %73, %54 ]
  %60 = phi i32 [ 0, %21 ], [ %77, %54 ]
  %61 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %56
  %62 = load i32, ptr %61, align 4, !tbaa !108
  %63 = sub nsw i32 %62, %57
  %64 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %56, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !109
  %66 = sub nsw i32 %65, %58
  %67 = trunc i32 %63 to i8
  %68 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %55
  store i8 %67, ptr %68, align 2, !tbaa !53
  %69 = trunc i32 %66 to i8
  %70 = or disjoint i64 %55, 1
  %71 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %70
  store i8 %69, ptr %71, align 1, !tbaa !53
  %72 = or i32 %63, %59
  %73 = or i32 %72, %66
  %74 = add nsw i32 %63, 128
  %75 = add nsw i32 %66, 128
  %76 = or i32 %74, %60
  %77 = or i32 %76, %75
  %78 = add nuw nsw i64 %56, 1
  %79 = add nuw nsw i64 %55, 2
  %80 = icmp eq i64 %78, %22
  br i1 %80, label %81, label %54, !llvm.loop !118

81:                                               ; preds = %54
  %82 = icmp ult i32 %73, 256
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = icmp ult i32 %77, 256
  br i1 %84, label %85, label %175

85:                                               ; preds = %168, %81, %83
  %86 = phi i32 [ 0, %81 ], [ 1, %83 ], [ %173, %168 ]
  %87 = phi i8 [ -99, %81 ], [ -99, %83 ], [ -107, %168 ]
  tail call fastcc void @put_np(ptr noundef %9, i32 noundef %5, i32 noundef %86)
  %88 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %87) #11
  %89 = shl nsw i32 %5, 1
  %90 = icmp ugt i32 %89, 255
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext -6) #11
  %93 = zext i32 %89 to i64
  tail call fastcc void @put_l(ptr noundef %9, i64 noundef %93)
  br label %98

94:                                               ; preds = %85
  %95 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext -5) #11
  %96 = trunc i32 %89 to i8
  %97 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %96) #11
  br label %98

98:                                               ; preds = %91, %94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %99 = call i32 @sputs(ptr noundef %9, ptr noundef nonnull %3, i32 noundef %89, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %245

100:                                              ; preds = %17, %100
  %101 = phi i64 [ 0, %17 ], [ %163, %100 ]
  %102 = phi i64 [ 0, %17 ], [ %162, %100 ]
  %103 = phi i32 [ %10, %17 ], [ %122, %100 ]
  %104 = phi i32 [ %12, %17 ], [ %125, %100 ]
  %105 = phi i32 [ 0, %17 ], [ %149, %100 ]
  %106 = phi i32 [ 0, %17 ], [ %161, %100 ]
  %107 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %102
  %108 = load i32, ptr %107, align 4, !tbaa !108
  %109 = sub nsw i32 %108, %103
  %110 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %102, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !109
  %112 = sub nsw i32 %111, %104
  %113 = add nuw nsw i64 %102, 1
  %114 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !108
  %116 = sub nsw i32 %115, %103
  %117 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %113, i32 1
  %118 = load i32, ptr %117, align 4, !tbaa !109
  %119 = sub nsw i32 %118, %104
  %120 = add nuw nsw i64 %102, 2
  %121 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %120
  %122 = load i32, ptr %121, align 4, !tbaa !108
  %123 = sub nsw i32 %122, %103
  %124 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %120, i32 1
  %125 = load i32, ptr %124, align 4, !tbaa !109
  %126 = sub nsw i32 %125, %104
  %127 = trunc i32 %109 to i8
  %128 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %101
  store i8 %127, ptr %128, align 2, !tbaa !53
  %129 = trunc i32 %112 to i8
  %130 = or disjoint i64 %101, 1
  %131 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %130
  store i8 %129, ptr %131, align 1, !tbaa !53
  %132 = trunc i32 %116 to i8
  %133 = add nuw nsw i64 %101, 2
  %134 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %133
  store i8 %132, ptr %134, align 2, !tbaa !53
  %135 = trunc i32 %119 to i8
  %136 = add nuw nsw i64 %101, 3
  %137 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %136
  store i8 %135, ptr %137, align 1, !tbaa !53
  %138 = trunc i32 %123 to i8
  %139 = add nuw nsw i64 %101, 4
  %140 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %139
  store i8 %138, ptr %140, align 2, !tbaa !53
  %141 = trunc i32 %126 to i8
  %142 = add nuw nsw i64 %101, 5
  %143 = getelementptr inbounds [200 x i8], ptr %3, i64 0, i64 %142
  store i8 %141, ptr %143, align 1, !tbaa !53
  %144 = or i32 %109, %105
  %145 = or i32 %144, %112
  %146 = or i32 %145, %116
  %147 = or i32 %146, %119
  %148 = or i32 %147, %123
  %149 = or i32 %148, %126
  %150 = add nsw i32 %109, 128
  %151 = add nsw i32 %112, 128
  %152 = add nsw i32 %116, 128
  %153 = add nsw i32 %119, 128
  %154 = add nsw i32 %123, 128
  %155 = add nsw i32 %126, 128
  %156 = or i32 %150, %106
  %157 = or i32 %156, %151
  %158 = or i32 %157, %152
  %159 = or i32 %158, %153
  %160 = or i32 %159, %154
  %161 = or i32 %160, %155
  %162 = add nuw nsw i64 %102, 3
  %163 = add nuw nsw i64 %101, 6
  %164 = icmp ult i64 %162, %18
  br i1 %164, label %100, label %165, !llvm.loop !119

165:                                              ; preds = %100
  %166 = icmp ult i32 %149, 256
  %167 = icmp ult i32 %161, 256
  br label %168

168:                                              ; preds = %165, %15
  %169 = phi i1 [ true, %15 ], [ %167, %165 ]
  %170 = phi i1 [ true, %15 ], [ %166, %165 ]
  %171 = select i1 %170, i1 true, i1 %169
  %172 = xor i1 %170, true
  %173 = zext i1 %172 to i32
  br i1 %171, label %85, label %175

174:                                              ; preds = %7
  br label %246

175:                                              ; preds = %168, %83
  %176 = phi i8 [ -101, %83 ], [ -109, %168 ]
  tail call fastcc void @put_np(ptr noundef %9, i32 noundef %5, i32 noundef 3)
  %177 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %176) #11
  %178 = shl nsw i32 %5, 2
  %179 = icmp ugt i32 %178, 255
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext -6) #11
  %182 = zext i32 %178 to i64
  tail call fastcc void @put_l(ptr noundef %9, i64 noundef %182)
  br label %187

183:                                              ; preds = %175
  %184 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext -5) #11
  %185 = trunc i32 %178 to i8
  %186 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %185) #11
  br label %187

187:                                              ; preds = %180, %183
  %188 = icmp sgt i32 %5, 0
  br i1 %188, label %189, label %245

189:                                              ; preds = %187
  %190 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 3, i32 0, i32 1
  %191 = getelementptr inbounds %struct.stream_s, ptr %9, i64 0, i32 3, i32 0, i32 2
  %192 = zext nneg i32 %5 to i64
  br label %193

193:                                              ; preds = %189, %242
  %194 = phi i64 [ 0, %189 ], [ %243, %242 ]
  %195 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %194
  %196 = load i32, ptr %195, align 4, !tbaa !108
  %197 = load ptr, ptr %190, align 8, !tbaa !53
  %198 = load ptr, ptr %191, align 8, !tbaa !53
  %199 = icmp ult ptr %197, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = getelementptr inbounds i8, ptr %197, i64 1
  store ptr %201, ptr %190, align 8, !tbaa !53
  %202 = trunc i32 %196 to i8
  store i8 %202, ptr %201, align 1, !tbaa !53
  br label %206

203:                                              ; preds = %193
  %204 = trunc i32 %196 to i8
  %205 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %204) #11
  br label %206

206:                                              ; preds = %203, %200
  %207 = load ptr, ptr %190, align 8, !tbaa !53
  %208 = load ptr, ptr %191, align 8, !tbaa !53
  %209 = icmp ult ptr %207, %208
  br i1 %209, label %210, label %214

210:                                              ; preds = %206
  %211 = getelementptr inbounds i8, ptr %207, i64 1
  store ptr %211, ptr %190, align 8, !tbaa !53
  %212 = lshr i32 %196, 8
  %213 = trunc i32 %212 to i8
  store i8 %213, ptr %211, align 1, !tbaa !53
  br label %218

214:                                              ; preds = %206
  %215 = lshr i32 %196, 8
  %216 = trunc i32 %215 to i8
  %217 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %216) #11
  br label %218

218:                                              ; preds = %210, %214
  %219 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 45, i32 3, i64 %194, i32 1
  %220 = load i32, ptr %219, align 4, !tbaa !109
  %221 = load ptr, ptr %190, align 8, !tbaa !53
  %222 = load ptr, ptr %191, align 8, !tbaa !53
  %223 = icmp ult ptr %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = getelementptr inbounds i8, ptr %221, i64 1
  store ptr %225, ptr %190, align 8, !tbaa !53
  %226 = trunc i32 %220 to i8
  store i8 %226, ptr %225, align 1, !tbaa !53
  br label %230

227:                                              ; preds = %218
  %228 = trunc i32 %220 to i8
  %229 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %228) #11
  br label %230

230:                                              ; preds = %227, %224
  %231 = load ptr, ptr %190, align 8, !tbaa !53
  %232 = load ptr, ptr %191, align 8, !tbaa !53
  %233 = icmp ult ptr %231, %232
  br i1 %233, label %234, label %238

234:                                              ; preds = %230
  %235 = getelementptr inbounds i8, ptr %231, i64 1
  store ptr %235, ptr %190, align 8, !tbaa !53
  %236 = lshr i32 %220, 8
  %237 = trunc i32 %236 to i8
  store i8 %237, ptr %235, align 1, !tbaa !53
  br label %242

238:                                              ; preds = %230
  %239 = lshr i32 %220, 8
  %240 = trunc i32 %239 to i8
  %241 = tail call i32 @spputc(ptr noundef %9, i8 noundef zeroext %240) #11
  br label %242

242:                                              ; preds = %234, %238
  %243 = add nuw nsw i64 %194, 1
  %244 = icmp eq i64 %243, %192
  br i1 %244, label %245, label %193, !llvm.loop !120

245:                                              ; preds = %242, %50, %187, %23, %98
  store i32 0, ptr %13, align 4, !tbaa !104
  store i32 0, ptr %4, align 4, !tbaa !105
  br label %246

246:                                              ; preds = %7, %245, %174
  %247 = phi i1 [ false, %174 ], [ true, %245 ], [ false, %7 ]
  %248 = phi i32 [ -1, %174 ], [ undef, %245 ], [ %14, %7 ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #11
  br i1 %247, label %249, label %250

249:                                              ; preds = %246, %1
  br label %250

250:                                              ; preds = %246, %249
  %251 = phi i32 [ 0, %249 ], [ %248, %246 ]
  ret i32 %251
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_ssp(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  %8 = icmp ult ptr %5, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %5, i64 1
  store ptr %10, ptr %4, align 8, !tbaa !53
  store i8 -45, ptr %10, align 1, !tbaa !53
  br label %13

11:                                               ; preds = %3
  %12 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -45) #11
  br label %13

13:                                               ; preds = %11, %9
  %14 = load ptr, ptr %4, align 8, !tbaa !53
  %15 = load ptr, ptr %6, align 8, !tbaa !53
  %16 = icmp ult ptr %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds i8, ptr %14, i64 1
  store ptr %18, ptr %4, align 8, !tbaa !53
  %19 = trunc i32 %1 to i8
  store i8 %19, ptr %18, align 1, !tbaa !53
  br label %23

20:                                               ; preds = %13
  %21 = trunc i32 %1 to i8
  %22 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %21) #11
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %4, align 8, !tbaa !53
  %25 = load ptr, ptr %6, align 8, !tbaa !53
  %26 = icmp ult ptr %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %28, ptr %4, align 8, !tbaa !53
  %29 = lshr i32 %1, 8
  %30 = trunc i32 %29 to i8
  store i8 %30, ptr %28, align 1, !tbaa !53
  br label %35

31:                                               ; preds = %23
  %32 = lshr i32 %1, 8
  %33 = trunc i32 %32 to i8
  %34 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %33) #11
  br label %35

35:                                               ; preds = %27, %31
  %36 = load ptr, ptr %4, align 8, !tbaa !53
  %37 = load ptr, ptr %6, align 8, !tbaa !53
  %38 = icmp ult ptr %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %40, ptr %4, align 8, !tbaa !53
  %41 = trunc i32 %2 to i8
  store i8 %41, ptr %40, align 1, !tbaa !53
  br label %45

42:                                               ; preds = %35
  %43 = trunc i32 %2 to i8
  %44 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %43) #11
  br label %45

45:                                               ; preds = %42, %39
  %46 = load ptr, ptr %4, align 8, !tbaa !53
  %47 = load ptr, ptr %6, align 8, !tbaa !53
  %48 = icmp ult ptr %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %50, ptr %4, align 8, !tbaa !53
  %51 = lshr i32 %2, 8
  %52 = trunc i32 %51 to i8
  store i8 %52, ptr %50, align 1, !tbaa !53
  br label %57

53:                                               ; preds = %45
  %54 = lshr i32 %2, 8
  %55 = trunc i32 %54 to i8
  %56 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %55) #11
  br label %57

57:                                               ; preds = %49, %53
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_np(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %11, ptr %5, align 8, !tbaa !53
  store i8 -64, ptr %11, align 1, !tbaa !53
  br label %14

12:                                               ; preds = %3
  %13 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -64) #11
  br label %14

14:                                               ; preds = %12, %10
  %15 = load ptr, ptr %5, align 8, !tbaa !53
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %5, align 8, !tbaa !53
  store i8 %4, ptr %19, align 1, !tbaa !53
  br label %22

20:                                               ; preds = %14
  %21 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %4) #11
  br label %22

22:                                               ; preds = %18, %20
  %23 = load ptr, ptr %5, align 8, !tbaa !53
  %24 = load ptr, ptr %7, align 8, !tbaa !53
  %25 = icmp ult ptr %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %27, ptr %5, align 8, !tbaa !53
  store i8 -8, ptr %27, align 1, !tbaa !53
  br label %30

28:                                               ; preds = %22
  %29 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -8) #11
  br label %30

30:                                               ; preds = %28, %26
  %31 = load ptr, ptr %5, align 8, !tbaa !53
  %32 = load ptr, ptr %7, align 8, !tbaa !53
  %33 = icmp ult ptr %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  store ptr %35, ptr %5, align 8, !tbaa !53
  store i8 77, ptr %35, align 1, !tbaa !53
  br label %38

36:                                               ; preds = %30
  %37 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext 77) #11
  br label %38

38:                                               ; preds = %34, %36
  %39 = trunc i32 %2 to i8
  %40 = load ptr, ptr %5, align 8, !tbaa !53
  %41 = load ptr, ptr %7, align 8, !tbaa !53
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %44, ptr %5, align 8, !tbaa !53
  store i8 -64, ptr %44, align 1, !tbaa !53
  br label %47

45:                                               ; preds = %38
  %46 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -64) #11
  br label %47

47:                                               ; preds = %45, %43
  %48 = load ptr, ptr %5, align 8, !tbaa !53
  %49 = load ptr, ptr %7, align 8, !tbaa !53
  %50 = icmp ult ptr %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %52, ptr %5, align 8, !tbaa !53
  store i8 %39, ptr %52, align 1, !tbaa !53
  br label %55

53:                                               ; preds = %47
  %54 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %39) #11
  br label %55

55:                                               ; preds = %51, %53
  %56 = load ptr, ptr %5, align 8, !tbaa !53
  %57 = load ptr, ptr %7, align 8, !tbaa !53
  %58 = icmp ult ptr %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %60, ptr %5, align 8, !tbaa !53
  store i8 -8, ptr %60, align 1, !tbaa !53
  br label %63

61:                                               ; preds = %55
  %62 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext -8) #11
  br label %63

63:                                               ; preds = %61, %59
  %64 = load ptr, ptr %5, align 8, !tbaa !53
  %65 = load ptr, ptr %7, align 8, !tbaa !53
  %66 = icmp ult ptr %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %68, ptr %5, align 8, !tbaa !53
  store i8 80, ptr %68, align 1, !tbaa !53
  br label %71

69:                                               ; preds = %63
  %70 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext 80) #11
  br label %71

71:                                               ; preds = %67, %69
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_l(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = getelementptr inbounds %struct.stream_s, ptr %0, i64 0, i32 3, i32 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %9, ptr %3, align 8, !tbaa !53
  %10 = trunc i64 %1 to i8
  store i8 %10, ptr %9, align 1, !tbaa !53
  br label %14

11:                                               ; preds = %2
  %12 = trunc i64 %1 to i8
  %13 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %12) #11
  br label %14

14:                                               ; preds = %11, %8
  %15 = load ptr, ptr %3, align 8, !tbaa !53
  %16 = load ptr, ptr %5, align 8, !tbaa !53
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %3, align 8, !tbaa !53
  %20 = lshr i64 %1, 8
  %21 = trunc i64 %20 to i8
  store i8 %21, ptr %19, align 1, !tbaa !53
  br label %26

22:                                               ; preds = %14
  %23 = lshr i64 %1, 8
  %24 = trunc i64 %23 to i8
  %25 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %24) #11
  br label %26

26:                                               ; preds = %18, %22
  %27 = lshr i64 %1, 16
  %28 = load ptr, ptr %3, align 8, !tbaa !53
  %29 = load ptr, ptr %5, align 8, !tbaa !53
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %32, ptr %3, align 8, !tbaa !53
  %33 = trunc i64 %27 to i8
  store i8 %33, ptr %32, align 1, !tbaa !53
  br label %37

34:                                               ; preds = %26
  %35 = trunc i64 %27 to i8
  %36 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %35) #11
  br label %37

37:                                               ; preds = %34, %31
  %38 = load ptr, ptr %3, align 8, !tbaa !53
  %39 = load ptr, ptr %5, align 8, !tbaa !53
  %40 = icmp ult ptr %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = getelementptr inbounds i8, ptr %38, i64 1
  store ptr %42, ptr %3, align 8, !tbaa !53
  %43 = lshr i64 %1, 24
  %44 = trunc i64 %43 to i8
  store i8 %44, ptr %42, align 1, !tbaa !53
  br label %49

45:                                               ; preds = %37
  %46 = lshr i64 %1, 24
  %47 = trunc i64 %46 to i8
  %48 = tail call i32 @spputc(ptr noundef %0, i8 noundef zeroext %47) #11
  br label %49

49:                                               ; preds = %41, %45
  ret void
}

declare void @gdev_vector_init(ptr noundef) local_unnamed_addr #1

declare i32 @sputs(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

declare void @gdev_vector_close_file(ptr noundef) local_unnamed_addr #1

declare i32 @gdev_vector_update_clip_path(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @pclxl_copy_text_char(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i8], align 1
  %18 = add nuw i32 %4, 7
  %19 = ashr i32 %18, 3
  %20 = mul i32 %19, %5
  %21 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %22 = icmp ugt i32 %20, 5000
  br i1 %22, label %358, label %23

23:                                               ; preds = %6
  %24 = mul i64 %3, 247
  %25 = urem i64 %24, 600
  %26 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46
  br label %27

27:                                               ; preds = %47, %23
  %28 = phi i64 [ %25, %23 ], [ %51, %47 ]
  %29 = phi i32 [ -1, %23 ], [ %48, %47 ]
  %30 = trunc i64 %28 to i32
  %31 = shl i64 %28, 32
  %32 = ashr exact i64 %31, 32
  %33 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !121
  switch i16 %34, label %42 [
    i16 0, label %35
    i16 1, label %38
  ]

35:                                               ; preds = %27
  %36 = icmp slt i32 %29, 0
  %37 = select i1 %36, i32 %30, i32 %29
  br label %52

38:                                               ; preds = %27
  %39 = icmp slt i32 %29, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %38
  %41 = icmp eq i32 %29, %30
  br i1 %41, label %52, label %47

42:                                               ; preds = %27
  %43 = zext i16 %34 to i64
  %44 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !122
  %46 = icmp eq i64 %45, %3
  br i1 %46, label %52, label %47

47:                                               ; preds = %42, %40, %38
  %48 = phi i32 [ %29, %40 ], [ %29, %42 ], [ %30, %38 ]
  %49 = icmp eq i32 %30, 0
  %50 = add nsw i64 %32, -1
  %51 = select i1 %49, i64 599, i64 %50
  br label %27, !llvm.loop !124

52:                                               ; preds = %40, %42, %35
  %53 = phi i32 [ %37, %35 ], [ %30, %42 ], [ %30, %40 ]
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !121
  %57 = zext i16 %56 to i32
  %58 = icmp ult i16 %56, 2
  br i1 %58, label %59, label %308

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 4
  %61 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 5
  %62 = zext nneg i32 %20 to i64
  %63 = load i64, ptr %61, align 8, !tbaa !125
  %64 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 3
  %65 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 4
  br label %66

66:                                               ; preds = %59, %136
  %67 = phi i64 [ %63, %59 ], [ %137, %136 ]
  %68 = add i64 %67, %62
  %69 = icmp ugt i64 %68, 500000
  br i1 %69, label %73, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %60, align 8, !tbaa !126
  %72 = icmp sgt i32 %71, 397
  br i1 %72, label %73, label %141

73:                                               ; preds = %66, %70
  %74 = load i32, ptr %64, align 4, !tbaa !44
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !122
  %78 = mul i64 %77, 247
  %79 = urem i64 %78, 600
  br label %80

80:                                               ; preds = %100, %73
  %81 = phi i64 [ %79, %73 ], [ %104, %100 ]
  %82 = phi i32 [ -1, %73 ], [ %101, %100 ]
  %83 = trunc i64 %81 to i32
  %84 = shl i64 %81, 32
  %85 = ashr exact i64 %84, 32
  %86 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !121
  switch i16 %87, label %95 [
    i16 0, label %88
    i16 1, label %91
  ]

88:                                               ; preds = %80
  %89 = icmp slt i32 %82, 0
  %90 = select i1 %89, i32 %83, i32 %82
  br label %105

91:                                               ; preds = %80
  %92 = icmp slt i32 %82, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %91
  %94 = icmp eq i32 %82, %83
  br i1 %94, label %105, label %100

95:                                               ; preds = %80
  %96 = zext i16 %87 to i64
  %97 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %96
  %98 = load i64, ptr %97, align 8, !tbaa !122
  %99 = icmp eq i64 %98, %77
  br i1 %99, label %105, label %100

100:                                              ; preds = %95, %93, %91
  %101 = phi i32 [ %82, %93 ], [ %82, %95 ], [ %83, %91 ]
  %102 = icmp eq i32 %83, 0
  %103 = add nsw i64 %85, -1
  %104 = select i1 %102, i64 599, i64 %103
  br label %80, !llvm.loop !124

105:                                              ; preds = %93, %95, %88
  %106 = phi i32 [ %90, %88 ], [ %83, %95 ], [ %83, %93 ]
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %107
  %109 = load i16, ptr %108, align 2, !tbaa !121
  %110 = icmp ult i16 %109, 2
  br i1 %110, label %136, label %111

111:                                              ; preds = %105
  %112 = load i32, ptr %65, align 8, !tbaa !126
  %113 = add nsw i32 %112, -1
  store i32 %113, ptr %65, align 8, !tbaa !126
  %114 = zext i16 %109 to i64
  %115 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %114, i32 1
  %116 = load i32, ptr %115, align 8, !tbaa !127
  %117 = zext i32 %116 to i64
  %118 = sub i64 %67, %117
  store i64 %118, ptr %61, align 8, !tbaa !125
  store i16 1, ptr %108, align 2, !tbaa !121
  %119 = icmp eq i32 %106, 0
  %120 = add i32 %106, -1
  %121 = select i1 %119, i32 599, i32 %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !121
  %125 = icmp eq i16 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %111, %126
  %127 = phi ptr [ %133, %126 ], [ %108, %111 ]
  %128 = phi i32 [ %131, %126 ], [ %106, %111 ]
  store i16 0, ptr %127, align 2, !tbaa !121
  %129 = icmp eq i32 %128, 599
  %130 = add nsw i32 %128, 1
  %131 = select i1 %129, i32 0, i32 %130
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %132
  %134 = load i16, ptr %133, align 2, !tbaa !121
  %135 = icmp eq i16 %134, 1
  br i1 %135, label %126, label %136, !llvm.loop !128

136:                                              ; preds = %126, %105, %111
  %137 = phi i64 [ %67, %105 ], [ %118, %111 ], [ %118, %126 ]
  %138 = icmp eq i32 %74, 399
  %139 = add i32 %74, 1
  %140 = select i1 %138, i32 2, i32 %139
  store i32 %140, ptr %64, align 4, !tbaa !44
  br label %66, !llvm.loop !129

141:                                              ; preds = %70, %161
  %142 = phi i64 [ %165, %161 ], [ %25, %70 ]
  %143 = phi i32 [ %162, %161 ], [ -1, %70 ]
  %144 = trunc i64 %142 to i32
  %145 = shl i64 %142, 32
  %146 = ashr exact i64 %145, 32
  %147 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %146
  %148 = load i16, ptr %147, align 2, !tbaa !121
  switch i16 %148, label %156 [
    i16 0, label %149
    i16 1, label %152
  ]

149:                                              ; preds = %141
  %150 = icmp slt i32 %143, 0
  %151 = select i1 %150, i32 %144, i32 %143
  br label %166

152:                                              ; preds = %141
  %153 = icmp slt i32 %143, 0
  br i1 %153, label %161, label %154

154:                                              ; preds = %152
  %155 = icmp eq i32 %143, %144
  br i1 %155, label %166, label %161

156:                                              ; preds = %141
  %157 = zext i16 %148 to i64
  %158 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !122
  %160 = icmp eq i64 %159, %3
  br i1 %160, label %166, label %161

161:                                              ; preds = %156, %154, %152
  %162 = phi i32 [ %143, %154 ], [ %143, %156 ], [ %144, %152 ]
  %163 = icmp eq i32 %144, 0
  %164 = add nsw i64 %146, -1
  %165 = select i1 %163, i64 599, i64 %164
  br label %141, !llvm.loop !124

166:                                              ; preds = %154, %156, %149
  %167 = phi i32 [ %151, %149 ], [ %144, %156 ], [ %144, %154 ]
  %168 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !45
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %170
  store i64 %3, ptr %171, align 8, !tbaa !122
  %172 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 46, i32 1, i64 %170, i32 1
  store i32 %20, ptr %172, align 8, !tbaa !127
  %173 = trunc i32 %169 to i16
  %174 = sext i32 %167 to i64
  %175 = getelementptr inbounds [600 x i16], ptr %26, i64 0, i64 %174
  store i16 %173, ptr %175, align 2, !tbaa !121
  %176 = icmp eq i32 %169, 399
  %177 = add i32 %169, 1
  %178 = select i1 %176, i32 2, i32 %177
  store i32 %178, ptr %168, align 8, !tbaa !45
  %179 = add nsw i32 %71, 1
  store i32 %179, ptr %60, align 8, !tbaa !126
  %180 = icmp eq i32 %71, 0
  br i1 %180, label %181, label %205

181:                                              ; preds = %166
  tail call fastcc void @pclxl_write_font_name(ptr noundef %0)
  %182 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #11
  %183 = call i32 @sputs(ptr noundef %182, ptr noundef nonnull @pclxl_define_bitmap_font.bfh_, i32 noundef 29, ptr noundef nonnull %16) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #11
  %184 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 13
  %185 = load float, ptr %184, align 4, !tbaa !42
  %186 = fpext float %185 to double
  %187 = fadd double %186, 5.000000e-01
  %188 = fptoui double %187 to i32
  %189 = lshr i32 %188, 8
  %190 = trunc i32 %189 to i8
  %191 = call i32 @spputc(ptr noundef %182, i8 noundef zeroext %190) #11
  %192 = trunc i32 %188 to i8
  %193 = call i32 @spputc(ptr noundef %182, i8 noundef zeroext %192) #11
  %194 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 13, i64 1
  %195 = load float, ptr %194, align 4, !tbaa !42
  %196 = fpext float %195 to double
  %197 = fadd double %196, 5.000000e-01
  %198 = fptoui double %197 to i32
  %199 = lshr i32 %198, 8
  %200 = trunc i32 %199 to i8
  %201 = call i32 @spputc(ptr noundef %182, i8 noundef zeroext %200) #11
  %202 = trunc i32 %198 to i8
  %203 = call i32 @spputc(ptr noundef %182, i8 noundef zeroext %202) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #11
  %204 = call i32 @sputs(ptr noundef %182, ptr noundef nonnull @pclxl_define_bitmap_font.efh_, i32 noundef 7, ptr noundef nonnull %15) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #11
  br label %205

205:                                              ; preds = %181, %166
  %206 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 47
  %207 = load i32, ptr %206, align 8, !tbaa !40
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  call fastcc void @pclxl_write_font_name(ptr noundef %0)
  %210 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #11
  %211 = call i32 @sputs(ptr noundef %210, ptr noundef nonnull @pclxl_set_font.sf_, i32 noundef 12, ptr noundef nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #11
  store i32 1, ptr %206, align 8, !tbaa !40
  br label %212

212:                                              ; preds = %209, %205
  %213 = load i64, ptr %61, align 8, !tbaa !125
  %214 = add i64 %213, %62
  store i64 %214, ptr %61, align 8, !tbaa !125
  call fastcc void @pclxl_write_font_name(ptr noundef %0)
  %215 = call ptr @gdev_vector_stream(ptr noundef %0) #11
  %216 = lshr i32 %18, 3
  %217 = mul i32 %216, %5
  %218 = add i32 %217, 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #11
  %219 = call i32 @sputs(ptr noundef %215, ptr noundef nonnull @pclxl_define_bitmap_char.ac_, i32 noundef 3, ptr noundef nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #11
  call fastcc void @put_u(ptr noundef %215, i32 noundef %169)
  %220 = getelementptr inbounds %struct.stream_s, ptr %215, i64 0, i32 3, i32 0, i32 1
  %221 = load ptr, ptr %220, align 8, !tbaa !53
  %222 = getelementptr inbounds %struct.stream_s, ptr %215, i64 0, i32 3, i32 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !53
  %224 = icmp ult ptr %221, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %212
  %226 = getelementptr inbounds i8, ptr %221, i64 1
  store ptr %226, ptr %220, align 8, !tbaa !53
  store i8 -8, ptr %226, align 1, !tbaa !53
  br label %229

227:                                              ; preds = %212
  %228 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext -8) #11
  br label %229

229:                                              ; preds = %227, %225
  %230 = load ptr, ptr %220, align 8, !tbaa !53
  %231 = load ptr, ptr %222, align 8, !tbaa !53
  %232 = icmp ult ptr %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = getelementptr inbounds i8, ptr %230, i64 1
  store ptr %234, ptr %220, align 8, !tbaa !53
  store i8 -94, ptr %234, align 1, !tbaa !53
  br label %237

235:                                              ; preds = %229
  %236 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext -94) #11
  br label %237

237:                                              ; preds = %235, %233
  %238 = icmp ugt i32 %218, 65535
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext -62) #11
  %241 = zext i32 %218 to i64
  call fastcc void @put_l(ptr noundef %215, i64 noundef %241)
  br label %272

242:                                              ; preds = %237
  %243 = load ptr, ptr %220, align 8, !tbaa !53
  %244 = load ptr, ptr %222, align 8, !tbaa !53
  %245 = icmp ult ptr %243, %244
  br i1 %245, label %246, label %248

246:                                              ; preds = %242
  %247 = getelementptr inbounds i8, ptr %243, i64 1
  store ptr %247, ptr %220, align 8, !tbaa !53
  store i8 -63, ptr %247, align 1, !tbaa !53
  br label %250

248:                                              ; preds = %242
  %249 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext -63) #11
  br label %250

250:                                              ; preds = %248, %246
  %251 = load ptr, ptr %220, align 8, !tbaa !53
  %252 = load ptr, ptr %222, align 8, !tbaa !53
  %253 = icmp ult ptr %251, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %250
  %255 = getelementptr inbounds i8, ptr %251, i64 1
  store ptr %255, ptr %220, align 8, !tbaa !53
  %256 = trunc i32 %218 to i8
  store i8 %256, ptr %255, align 1, !tbaa !53
  br label %260

257:                                              ; preds = %250
  %258 = trunc i32 %218 to i8
  %259 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %258) #11
  br label %260

260:                                              ; preds = %257, %254
  %261 = load ptr, ptr %220, align 8, !tbaa !53
  %262 = load ptr, ptr %222, align 8, !tbaa !53
  %263 = icmp ult ptr %261, %262
  br i1 %263, label %264, label %268

264:                                              ; preds = %260
  %265 = getelementptr inbounds i8, ptr %261, i64 1
  store ptr %265, ptr %220, align 8, !tbaa !53
  %266 = lshr i32 %218, 8
  %267 = trunc i32 %266 to i8
  store i8 %267, ptr %265, align 1, !tbaa !53
  br label %272

268:                                              ; preds = %260
  %269 = lshr i32 %218, 8
  %270 = trunc i32 %269 to i8
  %271 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %270) #11
  br label %272

272:                                              ; preds = %268, %264, %239
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #11
  %273 = call i32 @sputs(ptr noundef %215, ptr noundef nonnull @pclxl_define_bitmap_char.ac_.8, i32 noundef 3, ptr noundef nonnull %12) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #11
  %274 = icmp ugt i32 %218, 255
  br i1 %274, label %275, label %278

275:                                              ; preds = %272
  %276 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext -6) #11
  %277 = zext i32 %218 to i64
  call fastcc void @put_l(ptr noundef %215, i64 noundef %277)
  br label %282

278:                                              ; preds = %272
  %279 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext -5) #11
  %280 = trunc i32 %218 to i8
  %281 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %280) #11
  br label %282

282:                                              ; preds = %278, %275
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %283 = call i32 @sputs(ptr noundef %215, ptr noundef nonnull @.str.9, i32 noundef 6, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %284 = lshr i32 %4, 8
  %285 = trunc i32 %284 to i8
  %286 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %285) #11
  %287 = trunc i32 %4 to i8
  %288 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %287) #11
  %289 = lshr i32 %5, 8
  %290 = trunc i32 %289 to i8
  %291 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %290) #11
  %292 = trunc i32 %5 to i8
  %293 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext %292) #11
  %294 = icmp eq i32 %5, 0
  br i1 %294, label %306, label %295

295:                                              ; preds = %282
  %296 = zext i32 %5 to i64
  br label %297

297:                                              ; preds = %297, %295
  %298 = phi i64 [ 0, %295 ], [ %304, %297 ]
  %299 = trunc i64 %298 to i32
  %300 = mul i32 %299, %2
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i8, ptr %1, i64 %301
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %303 = call i32 @sputs(ptr noundef %215, ptr noundef %302, i32 noundef %216, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  %304 = add nuw nsw i64 %298, 1
  %305 = icmp eq i64 %304, %296
  br i1 %305, label %306, label %297, !llvm.loop !130

306:                                              ; preds = %297, %282
  %307 = call i32 @spputc(ptr noundef %215, i8 noundef zeroext 84) #11
  br label %308

308:                                              ; preds = %306, %52
  %309 = phi i32 [ %169, %306 ], [ %57, %52 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #11
  %310 = trunc i32 %309 to i8
  store i8 %310, ptr %17, align 1, !tbaa !53
  %311 = lshr i32 %309, 8
  %312 = trunc i32 %311 to i8
  %313 = getelementptr inbounds [2 x i8], ptr %17, i64 0, i64 1
  store i8 %312, ptr %313, align 1, !tbaa !53
  %314 = and i32 %309, 65280
  %315 = icmp eq i32 %314, 0
  %316 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 3, i32 0, i32 1
  %317 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 3, i32 0, i32 2
  br i1 %315, label %337, label %318

318:                                              ; preds = %308
  %319 = call i32 @spputc(ptr noundef %21, i8 noundef zeroext -55) #11
  %320 = load ptr, ptr %316, align 8, !tbaa !53
  %321 = load ptr, ptr %317, align 8, !tbaa !53
  %322 = icmp ult ptr %320, %321
  br i1 %322, label %323, label %325

323:                                              ; preds = %318
  %324 = getelementptr inbounds i8, ptr %320, i64 1
  store ptr %324, ptr %316, align 8, !tbaa !53
  store i8 -64, ptr %324, align 1, !tbaa !53
  br label %327

325:                                              ; preds = %318
  %326 = call i32 @spputc(ptr noundef %21, i8 noundef zeroext -64) #11
  br label %327

327:                                              ; preds = %325, %323
  %328 = load ptr, ptr %316, align 8, !tbaa !53
  %329 = load ptr, ptr %317, align 8, !tbaa !53
  %330 = icmp ult ptr %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %327
  %332 = getelementptr inbounds i8, ptr %328, i64 1
  store ptr %332, ptr %316, align 8, !tbaa !53
  store i8 1, ptr %332, align 1, !tbaa !53
  br label %335

333:                                              ; preds = %327
  %334 = call i32 @spputc(ptr noundef %21, i8 noundef zeroext 1) #11
  br label %335

335:                                              ; preds = %333, %331
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %336 = call i32 @sputs(ptr noundef %21, ptr noundef nonnull %17, i32 noundef 2, ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %356

337:                                              ; preds = %308
  %338 = call i32 @spputc(ptr noundef %21, i8 noundef zeroext -56) #11
  %339 = load ptr, ptr %316, align 8, !tbaa !53
  %340 = load ptr, ptr %317, align 8, !tbaa !53
  %341 = icmp ult ptr %339, %340
  br i1 %341, label %342, label %344

342:                                              ; preds = %337
  %343 = getelementptr inbounds i8, ptr %339, i64 1
  store ptr %343, ptr %316, align 8, !tbaa !53
  store i8 -64, ptr %343, align 1, !tbaa !53
  br label %346

344:                                              ; preds = %337
  %345 = call i32 @spputc(ptr noundef %21, i8 noundef zeroext -64) #11
  br label %346

346:                                              ; preds = %344, %342
  %347 = load ptr, ptr %316, align 8, !tbaa !53
  %348 = load ptr, ptr %317, align 8, !tbaa !53
  %349 = icmp ult ptr %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %346
  %351 = getelementptr inbounds i8, ptr %347, i64 1
  store ptr %351, ptr %316, align 8, !tbaa !53
  store i8 1, ptr %351, align 1, !tbaa !53
  br label %354

352:                                              ; preds = %346
  %353 = call i32 @spputc(ptr noundef %21, i8 noundef zeroext 1) #11
  br label %354

354:                                              ; preds = %352, %350
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %355 = call i32 @sputs(ptr noundef %21, ptr noundef nonnull %17, i32 noundef 1, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  br label %356

356:                                              ; preds = %335, %354
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %357 = call i32 @sputs(ptr noundef %21, ptr noundef nonnull @pclxl_copy_text_char.ac_, i32 noundef 3, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  br label %358

358:                                              ; preds = %6, %356
  %359 = phi i32 [ 0, %356 ], [ -1, %6 ]
  ret i32 %359
}

declare i32 @gdev_vector_update_log_op(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @pclxl_set_color_palette(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 43
  %9 = load i32, ptr %8, align 4, !tbaa !113
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %11, label %20

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 44
  %13 = load i32, ptr %12, align 8, !tbaa !131
  %14 = icmp eq i32 %13, %3
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 44, i32 1
  %17 = zext i32 %3 to i64
  %18 = tail call i32 @bcmp(ptr nonnull %16, ptr %2, i64 %17)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %47, label %20

20:                                               ; preds = %15, %11, %4
  %21 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %22 = trunc i32 %1 to i8
  %23 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 3, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !53
  %25 = getelementptr inbounds %struct.stream_s, ptr %21, i64 0, i32 3, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = icmp ult ptr %24, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %29, ptr %23, align 8, !tbaa !53
  store i8 -64, ptr %29, align 1, !tbaa !53
  br label %32

30:                                               ; preds = %20
  %31 = tail call i32 @spputc(ptr noundef %21, i8 noundef zeroext -64) #11
  br label %32

32:                                               ; preds = %30, %28
  %33 = load ptr, ptr %23, align 8, !tbaa !53
  %34 = load ptr, ptr %25, align 8, !tbaa !53
  %35 = icmp ult ptr %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store ptr %37, ptr %23, align 8, !tbaa !53
  store i8 %22, ptr %37, align 1, !tbaa !53
  br label %40

38:                                               ; preds = %32
  %39 = tail call i32 @spputc(ptr noundef %21, i8 noundef zeroext %22) #11
  br label %40

40:                                               ; preds = %36, %38
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %41 = call i32 @sputs(ptr noundef %21, ptr noundef nonnull @pclxl_set_color_palette.csp_, i32 noundef 7, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  call fastcc void @put_u(ptr noundef %21, i32 noundef %3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %42 = call i32 @sputs(ptr noundef %21, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #11
  %43 = call i32 @sputs(ptr noundef %21, ptr noundef nonnull @pclxl_set_color_palette.ac_, i32 noundef 3, ptr noundef nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #11
  store i32 %1, ptr %8, align 4, !tbaa !113
  %44 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 44
  store i32 %3, ptr %44, align 8, !tbaa !131
  %45 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 44, i32 1
  %46 = zext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %45, ptr align 1 %2, i64 %46, i1 false)
  br label %47

47:                                               ; preds = %40, %15
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pclxl_write_begin_image(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %8 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !53
  %10 = getelementptr inbounds %struct.stream_s, ptr %7, i64 0, i32 3, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = icmp ult ptr %9, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = getelementptr inbounds i8, ptr %9, i64 1
  store ptr %14, ptr %8, align 8, !tbaa !53
  store i8 -63, ptr %14, align 1, !tbaa !53
  br label %17

15:                                               ; preds = %5
  %16 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -63) #11
  br label %17

17:                                               ; preds = %15, %13
  %18 = load ptr, ptr %8, align 8, !tbaa !53
  %19 = load ptr, ptr %10, align 8, !tbaa !53
  %20 = icmp ult ptr %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %22, ptr %8, align 8, !tbaa !53
  %23 = trunc i32 %1 to i8
  store i8 %23, ptr %22, align 1, !tbaa !53
  br label %27

24:                                               ; preds = %17
  %25 = trunc i32 %1 to i8
  %26 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext %25) #11
  br label %27

27:                                               ; preds = %24, %21
  %28 = load ptr, ptr %8, align 8, !tbaa !53
  %29 = load ptr, ptr %10, align 8, !tbaa !53
  %30 = icmp ult ptr %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %32, ptr %8, align 8, !tbaa !53
  %33 = lshr i32 %1, 8
  %34 = trunc i32 %33 to i8
  store i8 %34, ptr %32, align 1, !tbaa !53
  br label %39

35:                                               ; preds = %27
  %36 = lshr i32 %1, 8
  %37 = trunc i32 %36 to i8
  %38 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext %37) #11
  br label %39

39:                                               ; preds = %31, %35
  %40 = load ptr, ptr %8, align 8, !tbaa !53
  %41 = load ptr, ptr %10, align 8, !tbaa !53
  %42 = icmp ult ptr %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = getelementptr inbounds i8, ptr %40, i64 1
  store ptr %44, ptr %8, align 8, !tbaa !53
  store i8 -8, ptr %44, align 1, !tbaa !53
  br label %47

45:                                               ; preds = %39
  %46 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -8) #11
  br label %47

47:                                               ; preds = %45, %43
  %48 = load ptr, ptr %8, align 8, !tbaa !53
  %49 = load ptr, ptr %10, align 8, !tbaa !53
  %50 = icmp ult ptr %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %52, ptr %8, align 8, !tbaa !53
  store i8 108, ptr %52, align 1, !tbaa !53
  br label %55

53:                                               ; preds = %47
  %54 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext 108) #11
  br label %55

55:                                               ; preds = %51, %53
  %56 = load ptr, ptr %8, align 8, !tbaa !53
  %57 = load ptr, ptr %10, align 8, !tbaa !53
  %58 = icmp ult ptr %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %60, ptr %8, align 8, !tbaa !53
  store i8 -63, ptr %60, align 1, !tbaa !53
  br label %63

61:                                               ; preds = %55
  %62 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -63) #11
  br label %63

63:                                               ; preds = %61, %59
  %64 = load ptr, ptr %8, align 8, !tbaa !53
  %65 = load ptr, ptr %10, align 8, !tbaa !53
  %66 = icmp ult ptr %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1
  store ptr %68, ptr %8, align 8, !tbaa !53
  %69 = trunc i32 %2 to i8
  store i8 %69, ptr %68, align 1, !tbaa !53
  br label %73

70:                                               ; preds = %63
  %71 = trunc i32 %2 to i8
  %72 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext %71) #11
  br label %73

73:                                               ; preds = %70, %67
  %74 = load ptr, ptr %8, align 8, !tbaa !53
  %75 = load ptr, ptr %10, align 8, !tbaa !53
  %76 = icmp ult ptr %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = getelementptr inbounds i8, ptr %74, i64 1
  store ptr %78, ptr %8, align 8, !tbaa !53
  %79 = lshr i32 %2, 8
  %80 = trunc i32 %79 to i8
  store i8 %80, ptr %78, align 1, !tbaa !53
  br label %85

81:                                               ; preds = %73
  %82 = lshr i32 %2, 8
  %83 = trunc i32 %82 to i8
  %84 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext %83) #11
  br label %85

85:                                               ; preds = %77, %81
  %86 = load ptr, ptr %8, align 8, !tbaa !53
  %87 = load ptr, ptr %10, align 8, !tbaa !53
  %88 = icmp ult ptr %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %86, i64 1
  store ptr %90, ptr %8, align 8, !tbaa !53
  store i8 -8, ptr %90, align 1, !tbaa !53
  br label %93

91:                                               ; preds = %85
  %92 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext -8) #11
  br label %93

93:                                               ; preds = %91, %89
  %94 = load ptr, ptr %8, align 8, !tbaa !53
  %95 = load ptr, ptr %10, align 8, !tbaa !53
  %96 = icmp ult ptr %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %94, i64 1
  store ptr %98, ptr %8, align 8, !tbaa !53
  store i8 107, ptr %98, align 1, !tbaa !53
  br label %101

99:                                               ; preds = %93
  %100 = tail call i32 @spputc(ptr noundef %7, i8 noundef zeroext 107) #11
  br label %101

101:                                              ; preds = %97, %99
  tail call fastcc void @put_usp(ptr noundef %7, i32 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  %102 = call i32 @sputs(ptr noundef %7, ptr noundef nonnull @pclxl_write_begin_image.ac_, i32 noundef 3, ptr noundef nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pclxl_write_image_data(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.stream_RLE_state_s, align 8
  %13 = alloca %struct.stream_cursor_write_s, align 8
  %14 = alloca %struct.stream_cursor_read_s, align 8
  %15 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %16 = add i32 %3, 7
  %17 = lshr i32 %16, 3
  %18 = icmp ugt i32 %16, 63
  %19 = add nuw nsw i32 %17, 3
  %20 = and i32 %19, 1073741820
  %21 = mul i32 %20, %5
  %22 = getelementptr inbounds %struct.stream_s, ptr %15, i64 0, i32 3, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = getelementptr inbounds %struct.stream_s, ptr %15, i64 0, i32 3, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !53
  %26 = icmp ult ptr %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = getelementptr inbounds i8, ptr %23, i64 1
  store ptr %28, ptr %22, align 8, !tbaa !53
  store i8 -63, ptr %28, align 1, !tbaa !53
  br label %31

29:                                               ; preds = %6
  %30 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext -63) #11
  br label %31

31:                                               ; preds = %29, %27
  %32 = load ptr, ptr %22, align 8, !tbaa !53
  %33 = load ptr, ptr %24, align 8, !tbaa !53
  %34 = icmp ult ptr %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds i8, ptr %32, i64 1
  store ptr %36, ptr %22, align 8, !tbaa !53
  %37 = trunc i32 %4 to i8
  store i8 %37, ptr %36, align 1, !tbaa !53
  br label %41

38:                                               ; preds = %31
  %39 = trunc i32 %4 to i8
  %40 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext %39) #11
  br label %41

41:                                               ; preds = %38, %35
  %42 = load ptr, ptr %22, align 8, !tbaa !53
  %43 = load ptr, ptr %24, align 8, !tbaa !53
  %44 = icmp ult ptr %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds i8, ptr %42, i64 1
  store ptr %46, ptr %22, align 8, !tbaa !53
  %47 = lshr i32 %4, 8
  %48 = trunc i32 %47 to i8
  store i8 %48, ptr %46, align 1, !tbaa !53
  br label %53

49:                                               ; preds = %41
  %50 = lshr i32 %4, 8
  %51 = trunc i32 %50 to i8
  %52 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext %51) #11
  br label %53

53:                                               ; preds = %45, %49
  %54 = load ptr, ptr %22, align 8, !tbaa !53
  %55 = load ptr, ptr %24, align 8, !tbaa !53
  %56 = icmp ult ptr %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = getelementptr inbounds i8, ptr %54, i64 1
  store ptr %58, ptr %22, align 8, !tbaa !53
  store i8 -8, ptr %58, align 1, !tbaa !53
  br label %61

59:                                               ; preds = %53
  %60 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext -8) #11
  br label %61

61:                                               ; preds = %59, %57
  %62 = load ptr, ptr %22, align 8, !tbaa !53
  %63 = load ptr, ptr %24, align 8, !tbaa !53
  %64 = icmp ult ptr %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1
  store ptr %66, ptr %22, align 8, !tbaa !53
  store i8 109, ptr %66, align 1, !tbaa !53
  br label %69

67:                                               ; preds = %61
  %68 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext 109) #11
  br label %69

69:                                               ; preds = %65, %67
  %70 = load ptr, ptr %22, align 8, !tbaa !53
  %71 = load ptr, ptr %24, align 8, !tbaa !53
  %72 = icmp ult ptr %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = getelementptr inbounds i8, ptr %70, i64 1
  store ptr %74, ptr %22, align 8, !tbaa !53
  store i8 -63, ptr %74, align 1, !tbaa !53
  br label %77

75:                                               ; preds = %69
  %76 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext -63) #11
  br label %77

77:                                               ; preds = %75, %73
  %78 = load ptr, ptr %22, align 8, !tbaa !53
  %79 = load ptr, ptr %24, align 8, !tbaa !53
  %80 = icmp ult ptr %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = getelementptr inbounds i8, ptr %78, i64 1
  store ptr %82, ptr %22, align 8, !tbaa !53
  %83 = trunc i32 %5 to i8
  store i8 %83, ptr %82, align 1, !tbaa !53
  br label %87

84:                                               ; preds = %77
  %85 = trunc i32 %5 to i8
  %86 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext %85) #11
  br label %87

87:                                               ; preds = %84, %81
  %88 = load ptr, ptr %22, align 8, !tbaa !53
  %89 = load ptr, ptr %24, align 8, !tbaa !53
  %90 = icmp ult ptr %88, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds i8, ptr %88, i64 1
  store ptr %92, ptr %22, align 8, !tbaa !53
  %93 = lshr i32 %5, 8
  %94 = trunc i32 %93 to i8
  store i8 %94, ptr %92, align 1, !tbaa !53
  br label %99

95:                                               ; preds = %87
  %96 = lshr i32 %5, 8
  %97 = trunc i32 %96 to i8
  %98 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext %97) #11
  br label %99

99:                                               ; preds = %91, %95
  %100 = load ptr, ptr %22, align 8, !tbaa !53
  %101 = load ptr, ptr %24, align 8, !tbaa !53
  %102 = icmp ult ptr %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = getelementptr inbounds i8, ptr %100, i64 1
  store ptr %104, ptr %22, align 8, !tbaa !53
  store i8 -8, ptr %104, align 1, !tbaa !53
  br label %107

105:                                              ; preds = %99
  %106 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext -8) #11
  br label %107

107:                                              ; preds = %105, %103
  %108 = load ptr, ptr %22, align 8, !tbaa !53
  %109 = load ptr, ptr %24, align 8, !tbaa !53
  %110 = icmp ult ptr %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = getelementptr inbounds i8, ptr %108, i64 1
  store ptr %112, ptr %22, align 8, !tbaa !53
  store i8 99, ptr %112, align 1, !tbaa !53
  br label %115

113:                                              ; preds = %107
  %114 = tail call i32 @spputc(ptr noundef %15, i8 noundef zeroext 99) #11
  br label %115

115:                                              ; preds = %111, %113
  br i1 %18, label %116, label %211

116:                                              ; preds = %115
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %12) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %14) #11
  %117 = getelementptr inbounds %struct.gx_device_pclxl_s, ptr %0, i64 0, i32 22
  %118 = load ptr, ptr %117, align 8, !tbaa !132
  %119 = load ptr, ptr %118, align 8, !tbaa !94
  %120 = tail call ptr %119(ptr noundef nonnull %118, i32 noundef %21, ptr noundef nonnull @.str.10) #11
  %121 = icmp eq ptr %120, null
  br i1 %121, label %210, label %122

122:                                              ; preds = %116
  %123 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 3
  store i32 1, ptr %123, align 8, !tbaa !133
  %124 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 4
  store i64 0, ptr %124, align 8, !tbaa !135
  store i32 0, ptr %123, align 8, !tbaa !133
  store i64 4294967295, ptr %124, align 8, !tbaa !135
  %125 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 5
  store i64 4294967295, ptr %125, align 8, !tbaa !136
  %126 = getelementptr inbounds %struct.stream_RLE_state_s, ptr %12, i64 0, i32 6
  store i32 0, ptr %126, align 8, !tbaa !137
  %127 = getelementptr inbounds i8, ptr %120, i64 -1
  %128 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %13, i64 0, i32 1
  store ptr %127, ptr %128, align 8, !tbaa !138
  %129 = zext i32 %21 to i64
  %130 = getelementptr inbounds i8, ptr %127, i64 %129
  %131 = getelementptr inbounds %struct.stream_cursor_write_s, ptr %13, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !140
  %132 = getelementptr i8, ptr %1, i64 -1
  %133 = icmp sgt i32 %5, 0
  br i1 %133, label %134, label %166

134:                                              ; preds = %122
  %135 = zext nneg i32 %17 to i64
  %136 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %14, i64 0, i32 1
  %137 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_RLE_template, i64 0, i32 2), align 8, !tbaa !141
  %138 = sub nsw i32 0, %17
  %139 = and i32 %138, 3
  %140 = zext nneg i32 %139 to i64
  %141 = getelementptr inbounds i8, ptr @.str.11, i64 %140
  %142 = zext nneg i32 %5 to i64
  br label %146

143:                                              ; preds = %162
  %144 = add nuw nsw i64 %147, 1
  %145 = icmp eq i64 %144, %142
  br i1 %145, label %166, label %146, !llvm.loop !143

146:                                              ; preds = %134, %143
  %147 = phi i64 [ 0, %134 ], [ %144, %143 ]
  %148 = trunc i64 %147 to i32
  %149 = mul i32 %148, %2
  %150 = zext i32 %149 to i64
  %151 = getelementptr i8, ptr %132, i64 %150
  store ptr %151, ptr %14, align 8, !tbaa !144
  %152 = getelementptr inbounds i8, ptr %151, i64 %135
  store ptr %152, ptr %136, align 8, !tbaa !146
  %153 = call i32 %137(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, i32 noundef 0) #11
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %206

155:                                              ; preds = %146
  %156 = load ptr, ptr %14, align 8, !tbaa !144
  %157 = load ptr, ptr %136, align 8, !tbaa !146
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %159, label %206

159:                                              ; preds = %155
  store ptr @.str.11, ptr %14, align 8, !tbaa !144
  store ptr %141, ptr %136, align 8, !tbaa !146
  %160 = call i32 %137(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, i32 noundef 0) #11
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %206

162:                                              ; preds = %159
  %163 = load ptr, ptr %14, align 8, !tbaa !144
  %164 = load ptr, ptr %136, align 8, !tbaa !146
  %165 = icmp eq ptr %163, %164
  br i1 %165, label %143, label %206

166:                                              ; preds = %143, %122
  %167 = getelementptr inbounds %struct.stream_cursor_read_s, ptr %14, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !146
  store ptr %168, ptr %14, align 8, !tbaa !144
  %169 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_RLE_template, i64 0, i32 2), align 8, !tbaa !141
  %170 = call i32 %169(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %13, i32 noundef 1) #11
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %166
  %173 = load ptr, ptr %128, align 8, !tbaa !138
  %174 = getelementptr inbounds i8, ptr %173, i64 1
  %175 = ptrtoint ptr %174 to i64
  %176 = ptrtoint ptr %120 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = load ptr, ptr %22, align 8, !tbaa !53
  %180 = load ptr, ptr %24, align 8, !tbaa !53
  %181 = icmp ult ptr %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %172
  %183 = getelementptr inbounds i8, ptr %179, i64 1
  store ptr %183, ptr %22, align 8, !tbaa !53
  store i8 -64, ptr %183, align 1, !tbaa !53
  br label %186

184:                                              ; preds = %172
  %185 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext -64) #11
  br label %186

186:                                              ; preds = %184, %182
  %187 = load ptr, ptr %22, align 8, !tbaa !53
  %188 = load ptr, ptr %24, align 8, !tbaa !53
  %189 = icmp ult ptr %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %191, ptr %22, align 8, !tbaa !53
  store i8 1, ptr %191, align 1, !tbaa !53
  br label %194

192:                                              ; preds = %186
  %193 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext 1) #11
  br label %194

194:                                              ; preds = %190, %192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #11
  %195 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull @pclxl_write_image_data.ac_, i32 noundef 3, ptr noundef nonnull %11) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #11
  %196 = icmp ugt i32 %178, 255
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext -6) #11
  %199 = and i64 %177, 4294967295
  call fastcc void @put_l(ptr noundef %15, i64 noundef %199)
  br label %204

200:                                              ; preds = %194
  %201 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext -5) #11
  %202 = trunc i64 %177 to i8
  %203 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext %202) #11
  br label %204

204:                                              ; preds = %197, %200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #11
  %205 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull %120, i32 noundef %178, ptr noundef nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #11
  br label %253

206:                                              ; preds = %159, %162, %146, %155, %166
  %207 = load ptr, ptr %117, align 8, !tbaa !132
  %208 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %207, i64 0, i32 11
  %209 = load ptr, ptr %208, align 8, !tbaa !73
  call void %209(ptr noundef %207, ptr noundef nonnull %120, ptr noundef nonnull @.str.10) #11
  br label %210

210:                                              ; preds = %206, %116
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %14) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #11
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %12) #11
  br label %211

211:                                              ; preds = %210, %115
  %212 = load ptr, ptr %22, align 8, !tbaa !53
  %213 = load ptr, ptr %24, align 8, !tbaa !53
  %214 = icmp ult ptr %212, %213
  br i1 %214, label %215, label %217

215:                                              ; preds = %211
  %216 = getelementptr inbounds i8, ptr %212, i64 1
  store ptr %216, ptr %22, align 8, !tbaa !53
  store i8 -64, ptr %216, align 1, !tbaa !53
  br label %219

217:                                              ; preds = %211
  %218 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext -64) #11
  br label %219

219:                                              ; preds = %217, %215
  %220 = load ptr, ptr %22, align 8, !tbaa !53
  %221 = load ptr, ptr %24, align 8, !tbaa !53
  %222 = icmp ult ptr %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %224, ptr %22, align 8, !tbaa !53
  store i8 0, ptr %224, align 1, !tbaa !53
  br label %227

225:                                              ; preds = %219
  %226 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext 0) #11
  br label %227

227:                                              ; preds = %223, %225
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  %228 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull @pclxl_write_image_data.ac_.12, i32 noundef 3, ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  %229 = icmp ugt i32 %21, 255
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext -6) #11
  %232 = zext i32 %21 to i64
  call fastcc void @put_l(ptr noundef %15, i64 noundef %232)
  br label %237

233:                                              ; preds = %227
  %234 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext -5) #11
  %235 = trunc i32 %21 to i8
  %236 = call i32 @spputc(ptr noundef %15, i8 noundef zeroext %235) #11
  br label %237

237:                                              ; preds = %230, %233
  %238 = icmp sgt i32 %5, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %237
  %240 = sub nsw i32 0, %17
  %241 = and i32 %240, 3
  %242 = zext nneg i32 %5 to i64
  br label %243

243:                                              ; preds = %239, %243
  %244 = phi i64 [ 0, %239 ], [ %251, %243 ]
  %245 = trunc i64 %244 to i32
  %246 = mul i32 %245, %2
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i8, ptr %1, i64 %247
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  %249 = call i32 @sputs(ptr noundef %15, ptr noundef %248, i32 noundef %17, ptr noundef nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  %250 = call i32 @sputs(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %241, ptr noundef nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  %251 = add nuw nsw i64 %244, 1
  %252 = icmp eq i64 %251, %242
  br i1 %252, label %253, label %243, !llvm.loop !147

253:                                              ; preds = %243, %237, %204
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pclxl_write_font_name(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call ptr @gdev_vector_stream(ptr noundef %0) #11
  %4 = tail call i32 @spputc(ptr noundef %3, i8 noundef zeroext -56) #11
  %5 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = getelementptr inbounds %struct.stream_s, ptr %3, i64 0, i32 3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %11, ptr %5, align 8, !tbaa !53
  store i8 -64, ptr %11, align 1, !tbaa !53
  br label %14

12:                                               ; preds = %1
  %13 = tail call i32 @spputc(ptr noundef %3, i8 noundef zeroext -64) #11
  br label %14

14:                                               ; preds = %12, %10
  %15 = load ptr, ptr %5, align 8, !tbaa !53
  %16 = load ptr, ptr %7, align 8, !tbaa !53
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = getelementptr inbounds i8, ptr %15, i64 1
  store ptr %19, ptr %5, align 8, !tbaa !53
  store i8 1, ptr %19, align 1, !tbaa !53
  br label %22

20:                                               ; preds = %14
  %21 = tail call i32 @spputc(ptr noundef %3, i8 noundef zeroext 1) #11
  br label %22

22:                                               ; preds = %18, %20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  %23 = call i32 @sputs(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 1, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare i32 @gx_default_copy_color(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gdev_vector_update_fill_color(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #1

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef ptr @pclxl_image_enum_enum_ptrs(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #8 {
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !74
  store ptr %8, ptr %3, align 8, !tbaa !54
  br label %9

9:                                                ; preds = %4, %6
  %10 = phi ptr [ @ptr_struct_procs, %6 ], [ null, %4 ]
  ret ptr %10
}

; Function Attrs: nounwind uwtable
define internal void @pclxl_image_enum_reloc_ptrs(ptr nocapture noundef %0, i32 %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.pclxl_image_enum_s, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !74
  %6 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %5, ptr noundef %2) #11
  store ptr %6, ptr %4, align 8, !tbaa !74
  ret void
}

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @gs_color_space_get_index(ptr noundef) local_unnamed_addr #1

declare ptr @gs_color_space_indexed_base(ptr noundef) local_unnamed_addr #1

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @gx_default_end_image(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 32}
!6 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!6, !10, i64 40}
!12 = !{!13, !10, i64 24}
!13 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192}
!14 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14}
!15 = !{!"short", !8, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!18 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!19 = !{!20, !10, i64 488}
!20 = !{!"gx_device_vector_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !21, i64 624, !8, i64 944, !27, i64 992, !27, i64 1088, !16, i64 1184, !16, i64 1192, !32, i64 1200, !7, i64 1216, !10, i64 1224, !16, i64 1232, !16, i64 1240}
!21 = !{!"gs_imager_state_s", !10, i64 0, !22, i64 8, !25, i64 80, !7, i64 128, !15, i64 132, !7, i64 136, !23, i64 140, !26, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!22 = !{!"gx_line_params_s", !23, i64 0, !7, i64 4, !7, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !24, i64 32}
!23 = !{!"float", !8, i64 0}
!24 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !23, i64 12, !7, i64 16, !23, i64 20, !7, i64 24, !7, i64 28, !23, i64 32}
!25 = !{!"gs_matrix_fixed_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !16, i64 24, !16, i64 32, !7, i64 40}
!26 = !{!"gs_fixed_point_s", !16, i64 0, !16, i64 8}
!27 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !28, i64 48, !29, i64 56}
!28 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!29 = !{!"_mask", !30, i64 0, !16, i64 24, !10, i64 32}
!30 = !{!"gs_client_color_s", !31, i64 0, !10, i64 16}
!31 = !{!"gs_paint_color_s", !8, i64 0}
!32 = !{!"gs_point_s", !33, i64 0, !33, i64 8}
!33 = !{!"double", !8, i64 0}
!34 = !{!20, !10, i64 496}
!35 = !{!36, !7, i64 1216}
!36 = !{!"gx_device_pclxl_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !14, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !16, i64 144, !16, i64 152, !7, i64 160, !17, i64 168, !18, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !21, i64 624, !8, i64 944, !27, i64 992, !27, i64 1088, !16, i64 1184, !16, i64 1192, !32, i64 1200, !7, i64 1216, !10, i64 1224, !16, i64 1232, !16, i64 1240, !7, i64 1248, !7, i64 1252, !7, i64 1256, !7, i64 1260, !37, i64 1264, !38, i64 2036, !39, i64 2856, !7, i64 10480}
!37 = !{!"pal_", !7, i64 0, !8, i64 4}
!38 = !{!"pts_", !28, i64 0, !7, i64 8, !7, i64 12, !8, i64 16}
!39 = !{!"ch_", !8, i64 0, !8, i64 1200, !7, i64 7600, !7, i64 7604, !7, i64 7608, !16, i64 7616}
!40 = !{!36, !7, i64 10480}
!41 = !{!20, !10, i64 600}
!42 = !{!23, !23, i64 0}
!43 = !{!36, !7, i64 1248}
!44 = !{!36, !7, i64 10460}
!45 = !{!36, !7, i64 10456}
!46 = !{!47, !10, i64 120}
!47 = !{!"stream_s", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !10, i64 48, !7, i64 56, !7, i64 60, !15, i64 64, !8, i64 66, !8, i64 67, !48, i64 72, !16, i64 88, !49, i64 96, !10, i64 152, !7, i64 160, !7, i64 164, !10, i64 168, !15, i64 176, !15, i64 178, !10, i64 184, !10, i64 192, !7, i64 200, !10, i64 208, !7, i64 216, !10, i64 224}
!48 = !{!"gs_string_s", !10, i64 0, !7, i64 8}
!49 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!50 = !{!20, !10, i64 592}
!51 = !{!13, !7, i64 64}
!52 = !{!13, !7, i64 68}
!53 = !{!8, !8, i64 0}
!54 = !{!10, !10, i64 0}
!55 = !{!27, !10, i64 0}
!56 = !{i32 -15, i32 1}
!57 = !{i32 -1, i32 1}
!58 = !{!13, !7, i64 52}
!59 = !{!13, !7, i64 48}
!60 = !{!36, !10, i64 600}
!61 = !{!62, !10, i64 40}
!62 = !{!"gs_image_s", !7, i64 0, !7, i64 4, !63, i64 8, !7, i64 32, !10, i64 40, !8, i64 48, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!63 = !{!"gs_matrix_s", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20}
!64 = !{!65, !10, i64 16}
!65 = !{!"gs_memory_s", !66, i64 0}
!66 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!67 = !{!68, !10, i64 0}
!68 = !{!"pclxl_image_enum_s", !10, i64 0, !10, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28}
!69 = !{!62, !7, i64 84}
!70 = !{!62, !7, i64 32}
!71 = !{!63, !23, i64 0}
!72 = !{!62, !7, i64 92}
!73 = !{!65, !10, i64 88}
!74 = !{!68, !10, i64 8}
!75 = !{!21, !7, i64 128}
!76 = !{!68, !7, i64 20}
!77 = !{!62, !7, i64 0}
!78 = !{!68, !7, i64 16}
!79 = !{!68, !7, i64 24}
!80 = !{!62, !7, i64 4}
!81 = !{!68, !7, i64 28}
!82 = !{!63, !23, i64 16}
!83 = !{!36, !33, i64 1200}
!84 = !{!63, !23, i64 20}
!85 = !{!36, !33, i64 1208}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!89, !10, i64 0}
!89 = !{!"gs_color_space_s", !10, i64 0, !8, i64 8}
!90 = !{!91, !10, i64 48}
!91 = !{!"gs_color_space_type_s", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88}
!92 = distinct !{!92, !87}
!93 = !{!63, !23, i64 12}
!94 = !{!65, !10, i64 0}
!95 = distinct !{!95, !87}
!96 = !{!20, !7, i64 64}
!97 = !{!20, !7, i64 68}
!98 = !{!99, !23, i64 4}
!99 = !{!"", !7, i64 0, !23, i64 4, !23, i64 8}
!100 = !{!99, !23, i64 8}
!101 = distinct !{!101, !87}
!102 = !{!99, !7, i64 0}
!103 = distinct !{!103, !87}
!104 = !{!36, !7, i64 2044}
!105 = !{!36, !7, i64 2048}
!106 = !{!36, !7, i64 2036}
!107 = !{!36, !7, i64 2040}
!108 = !{!28, !7, i64 0}
!109 = !{!28, !7, i64 4}
!110 = !{!36, !7, i64 1256}
!111 = !{!7, !7, i64 0}
!112 = !{!36, !7, i64 48}
!113 = !{!36, !7, i64 1260}
!114 = !{!36, !10, i64 992}
!115 = !{!36, !7, i64 1252}
!116 = !{!36, !10, i64 1088}
!117 = distinct !{!117, !87}
!118 = distinct !{!118, !87}
!119 = distinct !{!119, !87}
!120 = distinct !{!120, !87}
!121 = !{!15, !15, i64 0}
!122 = !{!123, !16, i64 0}
!123 = !{!"cd_", !16, i64 0, !7, i64 8}
!124 = distinct !{!124, !87}
!125 = !{!36, !16, i64 10472}
!126 = !{!36, !7, i64 10464}
!127 = !{!123, !7, i64 8}
!128 = distinct !{!128, !87}
!129 = distinct !{!129, !87}
!130 = distinct !{!130, !87}
!131 = !{!36, !7, i64 1264}
!132 = !{!36, !10, i64 488}
!133 = !{!134, !7, i64 24}
!134 = !{!"stream_RLE_state_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !16, i64 32, !16, i64 40, !7, i64 48}
!135 = !{!134, !16, i64 32}
!136 = !{!134, !16, i64 40}
!137 = !{!134, !7, i64 48}
!138 = !{!139, !10, i64 8}
!139 = !{!"stream_cursor_write_s", !10, i64 0, !10, i64 8, !10, i64 16}
!140 = !{!139, !10, i64 16}
!141 = !{!142, !10, i64 16}
!142 = !{!"stream_template_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !10, i64 40, !10, i64 48}
!143 = distinct !{!143, !87}
!144 = !{!145, !10, i64 0}
!145 = !{!"stream_cursor_read_s", !10, i64 0, !10, i64 8, !10, i64 16}
!146 = !{!145, !10, i64 8}
!147 = distinct !{!147, !87}
