; ModuleID = 'gdevps.c'
source_filename = "gdevps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gs_memory_struct_type_s = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.stream_template_s = type { ptr, ptr, ptr, i32, i32, ptr, ptr, ptr }
%struct.gx_device_pswrite_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64, %struct.psdf_distiller_params_s, float, i32, i32, i64, ptr, ptr, [137 x i64] }
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
%struct.psdf_distiller_params_s = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.psdf_image_params_s, i32, i32, i32, %struct.psdf_image_params_s, %struct.psdf_image_params_s, %struct.gs_param_string_array_s, %struct.gs_param_string_array_s, i32, i32, i32 }
%struct.psdf_image_params_s = type { i32, i32, i32, i32, i32, i32, ptr, i32, ptr }
%struct.gs_param_string_array_s = type { ptr, i32, i32 }
%struct.gs_ptr_procs_s = type { ptr, ptr, ptr }
%struct.gx_device_vector_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_color_procs_s = type { ptr, ptr, ptr, ptr, ptr }
%struct.stream_procs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gx_device_vector_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, ptr, [81 x i8], ptr, ptr, ptr, i32, %struct.gs_imager_state_s, [11 x float], %struct.gx_device_color_s, %struct.gx_device_color_s, i64, i64, %struct.gs_point_s, i32, ptr, i64, i64 }
%struct.stream_s = type { ptr, ptr, ptr, %union.stream_cursor_s, ptr, i32, i32, i16, i8, i8, %struct.gs_string_s, i64, %struct.stream_procs, ptr, i32, i32, ptr, i16, i16, ptr, ptr, i32, ptr, i32, ptr }
%union.stream_cursor_s = type { %struct.stream_cursor_read_s }
%struct.stream_cursor_read_s = type { ptr, ptr, ptr }
%struct.gs_string_s = type { ptr, i32 }
%struct.gs_rect_s = type { %struct.gs_point_s, %struct.gs_point_s }
%struct.gx_device_bbox_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, ptr, %struct.gs_fixed_rect_s, i64 }
%struct.gs_fixed_rect_s = type { %struct.gs_fixed_point_s, %struct.gs_fixed_point_s }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_matrix_s = type { float, float, float, float, float, float }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gs_image_s = type { i32, i32, %struct.gs_matrix_s, i32, ptr, [8 x float], i32, i32, i32, i32 }
%struct.gdev_vector_image_enum_s = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"pswrite\00", align 1
@st_device_pswrite = internal constant %struct.gs_memory_struct_type_s { i32 2648, ptr @.str.3, ptr null, ptr null, ptr @device_pswrite_enum_ptrs, ptr @device_pswrite_reloc_ptrs, ptr @gx_device_finalize }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"CCITTFaxEncode\00", align 1
@s_CFE_template = external constant %struct.stream_template_s, align 8
@gs_pswrite_device = dso_local local_unnamed_addr global %struct.gx_device_pswrite_s { i32 2648, ptr null, ptr @.str, ptr null, ptr @st_device_pswrite, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 6120, i32 7920, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @psw_open, ptr @gx_upright_get_initial_matrix, ptr null, ptr @psw_output_page, ptr @psw_close, ptr @gx_default_rgb_map_rgb_color, ptr @gx_default_rgb_map_color_rgb, ptr @gdev_vector_fill_rectangle, ptr null, ptr @psw_copy_mono, ptr @psw_copy_color, ptr null, ptr null, ptr @psw_get_params, ptr @psw_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr @gdev_vector_fill_path, ptr @gdev_vector_stroke_path, ptr @psw_fill_mask, ptr @gdev_vector_fill_trapezoid, ptr @gdev_vector_fill_parallelogram, ptr @gdev_vector_fill_triangle, ptr null, ptr @psw_begin_image, ptr @psw_image_data, ptr @psw_end_image, ptr null, ptr null, ptr null }, ptr null, ptr null, [81 x i8] zeroinitializer, ptr null, ptr null, ptr null, i32 0, %struct.gs_imager_state_s zeroinitializer, [11 x float] zeroinitializer, %struct.gx_device_color_s zeroinitializer, %struct.gx_device_color_s zeroinitializer, i64 0, i64 0, %struct.gs_point_s { double 1.000000e+01, double 1.000000e+01 }, i32 0, ptr null, i64 -1, i64 -1, %struct.psdf_distiller_params_s { i32 0, i32 0, i32 1, i64 250000, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr null, i32 72, ptr null }, i32 0, i32 1, i32 0, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr null, i32 72, ptr null }, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr @.str.1, i32 72, ptr @s_CFE_template }, %struct.gs_param_string_array_s { ptr null, i32 0, i32 1 }, %struct.gs_param_string_array_s { ptr null, i32 0, i32 1 }, i32 1, i32 1, i32 20 }, float 2.000000e+00, i32 0, i32 0, i64 0, ptr null, ptr null, [137 x i64] zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"epswrite\00", align 1
@gs_epswrite_device = dso_local local_unnamed_addr global %struct.gx_device_pswrite_s { i32 2648, ptr null, ptr @.str.2, ptr null, ptr @st_device_pswrite, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 6120, i32 7920, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] [float 7.200000e+02, float 7.200000e+02], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s { ptr @psw_open, ptr @gx_upright_get_initial_matrix, ptr null, ptr @psw_output_page, ptr @psw_close, ptr @gx_default_rgb_map_rgb_color, ptr @gx_default_rgb_map_color_rgb, ptr @gdev_vector_fill_rectangle, ptr null, ptr @psw_copy_mono, ptr @psw_copy_color, ptr null, ptr null, ptr @psw_get_params, ptr @psw_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr @gdev_vector_fill_path, ptr @gdev_vector_stroke_path, ptr @psw_fill_mask, ptr @gdev_vector_fill_trapezoid, ptr @gdev_vector_fill_parallelogram, ptr @gdev_vector_fill_triangle, ptr null, ptr @psw_begin_image, ptr @psw_image_data, ptr @psw_end_image, ptr null, ptr null, ptr null }, ptr null, ptr null, [81 x i8] zeroinitializer, ptr null, ptr null, ptr null, i32 0, %struct.gs_imager_state_s zeroinitializer, [11 x float] zeroinitializer, %struct.gx_device_color_s zeroinitializer, %struct.gx_device_color_s zeroinitializer, i64 0, i64 0, %struct.gs_point_s { double 1.000000e+01, double 1.000000e+01 }, i32 0, ptr null, i64 -1, i64 -1, %struct.psdf_distiller_params_s { i32 0, i32 0, i32 1, i64 250000, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr null, i32 72, ptr null }, i32 0, i32 1, i32 0, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr null, i32 72, ptr null }, %struct.psdf_image_params_s { i32 0, i32 0, i32 -1, i32 0, i32 1, i32 1, ptr @.str.1, i32 72, ptr @s_CFE_template }, %struct.gs_param_string_array_s { ptr null, i32 0, i32 1 }, %struct.gs_param_string_array_s { ptr null, i32 0, i32 1 }, i32 1, i32 1, i32 20 }, float 2.000000e+00, i32 1, i32 0, i64 0, ptr null, ptr null, [137 x i64] zeroinitializer }, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"gx_device_pswrite\00", align 1
@st_device_vector = external local_unnamed_addr constant %struct.gs_memory_struct_type_s, align 8
@ptr_struct_procs = external constant %struct.gs_ptr_procs_s, align 8
@psw_vector_procs = internal constant %struct.gx_device_vector_procs_s { ptr @psw_beginpage, ptr @psdf_setlinewidth, ptr @psdf_setlinecap, ptr @psdf_setlinejoin, ptr @psdf_setmiterlimit, ptr @psdf_setdash, ptr @psdf_setflat, ptr @psdf_setlogop, ptr @psw_setcolors, ptr @psw_setcolors, ptr @gdev_vector_dopath, ptr @psdf_dorect, ptr @psdf_beginpath, ptr @psdf_moveto, ptr @psdf_lineto, ptr @psdf_curveto, ptr @psdf_closepath, ptr @psw_endpath }, align 8
@psw_eps_header = internal unnamed_addr constant [2 x ptr] [ptr @.str.18, ptr null], align 16
@psw_ps_header = internal unnamed_addr constant [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr null], align 16
@.str.4 = private unnamed_addr constant [24 x i8] c"%%BoundingBox: (atend)\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"................................................................\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"%%%%Creator: %s \00", align 1
@gs_product = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [5 x i8] c"%ld \00", align 1
@gs_revision = external local_unnamed_addr global i64, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"%d/%02d/%02d %02d:%02d:%02d\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"%%%%CreationDate: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"%%DocumentData: Clean7Bit\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%%LanguageLevel: 2\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"%%Extensions: CMYK\0A\00", align 1
@psw_header = internal unnamed_addr constant [4 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr null], align 16
@.str.14 = private unnamed_addr constant [7 x i8] c"%% %s\0A\00", align 1
@gs_copyright = external local_unnamed_addr global ptr, align 8
@psw_prolog = internal unnamed_addr constant [14 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr null], align 16
@psw_end_prolog = internal unnamed_addr constant [4 x ptr] [ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr null], align 16
@.str.15 = private unnamed_addr constant [38 x i8] c"%%%%Page: %ld %ld\0A%%%%BeginPageSetup\0A\00", align 1
@.str.16 = private unnamed_addr constant [60 x i8] c"save GS_pswrite_ProcSet begin %g %g scale\0A%%%%EndPageSetup\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"%!PS-Adobe-3.0 EPSF-3.0\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"%!PS-Adobe-3.0\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"%%Pages: (atend)\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"%%EndComments\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"%%BeginProlog\00", align 1
@.str.23 = private unnamed_addr constant [73 x i8] c"% This copyright applies to everything between here and the %%EndProlog:\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"%%BeginResource: procset GS_pswrite_ProcSet\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"/GS_pswrite_ProcSet 40 dict dup begin\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"/!{bind def}bind def/X{load def}!\00", align 1
@.str.27 = private unnamed_addr constant [62 x i8] c"/rg/setrgbcolor X/g/setgray X/w/setlinewidth X/J/setlinecap X\00", align 1
@.str.28 = private unnamed_addr constant [59 x i8] c"/j/setlinejoin X/M/setmiterlimit X/d/setdash X/i/setflat X\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"/m/moveto X/l/lineto X/c/curveto X/h/closepath X\00", align 1
@.str.30 = private unnamed_addr constant [77 x i8] c"/lx{0 rlineto}!/ly{0 exch rlineto}!/v{currentpoint 6 2 roll c}!/y{2 copy c}!\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"/re{4 -2 roll m exch dup lx exch ly neg lx h}!\00", align 1
@.str.32 = private unnamed_addr constant [66 x i8] c"/q/gsave X/Q/grestore X/f/fill X/f*/eofill X/S/stroke X/rf{re f}!\00", align 1
@.str.33 = private unnamed_addr constant [66 x i8] c"/Y{initclip clip newpath}!/Y*{initclip eoclip newpath}!/rY{re Y}!\00", align 1
@.str.34 = private unnamed_addr constant [43 x i8] c"/@/currentfile X/|{string readstring pop}!\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"/Ix{[1 0 0 1 9 -1 roll neg 9 -1 roll neg]exch}!\00", align 1
@.str.36 = private unnamed_addr constant [76 x i8] c"/It{true exch Ix imagemask}!/If{false exch Ix imagemask}!/I{exch Ix image}!\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"/Ic{Ix false 1 colorimage}!\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"/@85{@/ASCII85Decode filter}!\00", align 1
@.str.39 = private unnamed_addr constant [8 x i8] c"end def\00", align 1
@.str.40 = private unnamed_addr constant [14 x i8] c"%%EndResource\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"%%EndProlog\00", align 1
@.str.42 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.43 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"q f%s Q \00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"f%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"q S Q \00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"S\0A\00", align 1
@.str.48 = private unnamed_addr constant [5 x i8] c"Y%s\0A\00", align 1
@.str.49 = private unnamed_addr constant [26 x i8] c"userdict /#copies %d put\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"end %s restore\0A%%%%PageTrailer\0A\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"showpage\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"copypage\00", align 1
@.str.53 = private unnamed_addr constant [28 x i8] c"%%%%Trailer\0A%%%%Pages: %ld\0A\00", align 1
@.str.54 = private unnamed_addr constant [30 x i8] c"%%%%BoundingBox: %d %d %d %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"%%EOF\0A\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"LanguageLevel\00", align 1
@gx_dc_procs_pure = external constant %struct.gx_device_color_procs_s, align 8
@.str.57 = private unnamed_addr constant [3 x i8] c"If\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"1 I\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"It\00", align 1
@.str.60 = private unnamed_addr constant [13 x i8] c"%d %d %d %d \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"I%ld \00", align 1
@.str.62 = private unnamed_addr constant [4 x i8] c"@85\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.64 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.65 = private unnamed_addr constant [16 x i8] c"/I%ld %s %ld |\0A\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"\0Adef I%ld \00", align 1
@.str.67 = private unnamed_addr constant [26 x i8] c"psw_set_image_stream(buf)\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"psw_set_image_stream(stream)\00", align 1
@filter_write_procs = internal constant %struct.stream_procs { ptr @s_std_noavailable, ptr @s_std_noseek, ptr @s_std_write_reset, ptr @s_std_write_flush, ptr @s_filter_close, ptr null, ptr null }, align 8
@s_A85E_template = external constant %struct.stream_template_s, align 8
@.str.69 = private unnamed_addr constant [26 x i8] c"psw_image_cleanup(stream)\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"psw_image_cleanup(buf)\00", align 1
@.str.71 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"Ic\00", align 1
@st_vector_image_enum = external constant %struct.gs_memory_struct_type_s, align 8
@.str.73 = private unnamed_addr constant [16 x i8] c"psw_begin_image\00", align 1
@.str.74 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"concat\0A%d %d \00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.77 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"%s imagemask\0A\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.80 = private unnamed_addr constant [10 x i8] c"%s image\0A\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"%s false\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"%s %strue\00", align 1
@.str.83 = private unnamed_addr constant [13 x i8] c"dup dup dup \00", align 1
@.str.84 = private unnamed_addr constant [16 x i8] c" %d colorimage\0A\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"[%g %g %g %g %g %g]\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"\0AQ\0A\00", align 1

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_open(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !5
  %4 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 22
  store ptr %3, ptr %4, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 23
  store ptr @psw_vector_procs, ptr %5, align 8, !tbaa !31
  %6 = tail call i32 @gdev_vector_open_file_bbox(ptr noundef %0, i32 noundef 512, i32 noundef 1) #10
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  tail call void @gdev_vector_init(ptr noundef %0) #10
  %9 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 43
  store i32 1, ptr %9, align 8, !tbaa !32
  %10 = getelementptr i8, ptr %0, i64 1552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %10, i8 0, i64 1096, i1 false), !tbaa !37
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi i32 [ %6, %1 ], [ 0, %8 ]
  ret i32 %12
}

declare void @gx_upright_get_initial_matrix(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @psw_output_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call ptr @gdev_vector_stream(ptr noundef %0) #10
  %5 = icmp eq i32 %1, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @pprintd1(ptr noundef %4, ptr noundef nonnull @.str.49, i32 noundef %1) #10
  br label %8

8:                                                ; preds = %6, %3
  %9 = icmp eq i32 %2, 0
  %10 = select i1 %9, ptr @.str.52, ptr @.str.51
  %11 = tail call ptr @pprints1(ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef nonnull %10) #10
  %12 = getelementptr inbounds %struct.stream_s, ptr %4, i64 0, i32 12, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = tail call i32 %13(ptr noundef %4) #10
  %15 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 36
  store i32 0, ptr %15, align 8, !tbaa !42
  %16 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 43
  store i32 0, ptr %16, align 8, !tbaa !32
  tail call void @gdev_vector_reset(ptr noundef %0) #10
  %17 = getelementptr i8, ptr %0, i64 1552
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %17, i8 0, i64 1096, i1 false), !tbaa !37
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @psw_close(ptr noundef %0) #1 {
  %2 = alloca %struct.gs_rect_s, align 8
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 25
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 17
  %6 = load i64, ptr %5, align 8, !tbaa !44
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.53, i64 noundef %6)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #10
  %8 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %9 = load ptr, ptr %8, align 8, !tbaa !45
  call void @gx_device_bbox_bbox(ptr noundef %9, ptr noundef nonnull %2) #10
  %10 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 44
  %11 = load i64, ptr %10, align 8, !tbaa !46
  %12 = icmp sgt i64 %11, -1
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = call i64 @ftell(ptr noundef %4)
  %15 = load i64, ptr %10, align 8, !tbaa !46
  %16 = call i32 @fseek(ptr noundef %4, i64 noundef %15, i32 noundef 0)
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i64 [ %14, %13 ], [ undef, %1 ]
  %19 = load double, ptr %2, align 8, !tbaa !47
  %20 = call double @llvm.floor.f64(double %19)
  %21 = fptosi double %20 to i32
  %22 = getelementptr inbounds %struct.gs_point_s, ptr %2, i64 0, i32 1
  %23 = load double, ptr %22, align 8, !tbaa !49
  %24 = call double @llvm.floor.f64(double %23)
  %25 = fptosi double %24 to i32
  %26 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1
  %27 = load double, ptr %26, align 8, !tbaa !50
  %28 = call double @llvm.ceil.f64(double %27)
  %29 = fptosi double %28 to i32
  %30 = getelementptr inbounds %struct.gs_rect_s, ptr %2, i64 0, i32 1, i32 1
  %31 = load double, ptr %30, align 8, !tbaa !51
  %32 = call double @llvm.ceil.f64(double %31)
  %33 = fptosi double %32 to i32
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.54, i32 noundef %21, i32 noundef %25, i32 noundef %29, i32 noundef %33)
  %35 = load i64, ptr %10, align 8, !tbaa !46
  %36 = icmp sgt i64 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = call i32 @fputc(i32 noundef 37, ptr noundef %4)
  %39 = call i32 @fseek(ptr noundef %4, i64 noundef %18, i32 noundef 0)
  br label %40

40:                                               ; preds = %37, %17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #10
  %41 = call i64 @fwrite(ptr nonnull @.str.55, i64 6, i64 1, ptr %4)
  call void @gdev_vector_close_file(ptr noundef %0) #10
  ret i32 0
}

declare i64 @gx_default_rgb_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare i32 @gx_default_rgb_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #0

declare i32 @gdev_vector_fill_rectangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_copy_mono(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #1 {
  %12 = alloca %struct.gx_device_color_s, align 8
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %12) #10
  %13 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %14, i64 0, i32 21, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = tail call i32 %16(ptr noundef %14, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9, i64 noundef %10) #10
  %18 = icmp eq i64 %10, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.gx_device_color_s, ptr %12, i64 0, i32 1
  store i64 %9, ptr %20, align 8, !tbaa !55
  br label %38

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 38
  %23 = load i64, ptr %22, align 8, !tbaa !56
  %24 = icmp eq i64 %23, %9
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 39
  %27 = load i64, ptr %26, align 8, !tbaa !57
  %28 = icmp eq i64 %27, %10
  br i1 %28, label %42, label %29

29:                                               ; preds = %25, %21
  %30 = icmp eq i64 %9, -1
  br i1 %30, label %36, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !58
  %34 = tail call i32 %33(ptr noundef %0, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i64 noundef %9) #10
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %55, label %36

36:                                               ; preds = %31, %29
  %37 = getelementptr inbounds %struct.gx_device_color_s, ptr %12, i64 0, i32 1
  store i64 %10, ptr %37, align 8, !tbaa !55
  br label %38

38:                                               ; preds = %19, %36
  %39 = phi ptr [ @.str.59, %36 ], [ @.str.57, %19 ]
  store ptr @gx_dc_procs_pure, ptr %12, align 8, !tbaa !59
  %40 = call i32 @gdev_vector_update_fill_color(ptr noundef %0, ptr noundef nonnull %12) #10
  %41 = icmp slt i32 %40, 0
  br label %42

42:                                               ; preds = %38, %25
  %43 = phi ptr [ @.str.58, %25 ], [ %39, %38 ]
  %44 = phi i1 [ false, %25 ], [ %41, %38 ]
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = icmp slt i32 %7, 1
  %47 = icmp slt i32 %8, 1
  %48 = or i1 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %51 = load ptr, ptr %50, align 8, !tbaa !60
  %52 = call ptr @pprintd2(ptr noundef %51, ptr noundef nonnull @.str.60, i32 noundef %7, i32 noundef %8) #10
  %53 = call ptr @pprintd2(ptr noundef %51, ptr noundef %52, i32 noundef %5, i32 noundef %6) #10
  %54 = call fastcc i32 @psw_image_write(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %7, i32 noundef %8), !range !61
  br label %55

55:                                               ; preds = %45, %49, %42, %31
  %56 = phi i32 [ %34, %31 ], [ 0, %42 ], [ %54, %49 ], [ 0, %45 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %12) #10
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @psw_copy_color(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #1 {
  %10 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !62
  %12 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %13 = load ptr, ptr %12, align 8, !tbaa !45
  %14 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %13, i64 0, i32 21, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !63
  %16 = tail call i32 %15(ptr noundef %13, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) #10
  %17 = icmp slt i32 %7, 1
  %18 = icmp slt i32 %8, 1
  %19 = or i1 %17, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %22 = load ptr, ptr %21, align 8, !tbaa !60
  %23 = tail call ptr @pprintd2(ptr noundef %22, ptr noundef nonnull @.str.60, i32 noundef %7, i32 noundef %8) #10
  %24 = tail call ptr @pprintd2(ptr noundef %22, ptr noundef %23, i32 noundef %5, i32 noundef %6) #10
  %25 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %26 = load ptr, ptr %25, align 8, !tbaa !60
  %27 = tail call ptr @pprintd1(ptr noundef %26, ptr noundef nonnull @.str.71, i32 noundef %11) #10
  %28 = mul nsw i32 %11, %2
  %29 = mul nsw i32 %11, %7
  %30 = tail call fastcc i32 @psw_image_write(ptr noundef %0, ptr noundef nonnull @.str.72, ptr noundef %1, i32 noundef %28, i32 noundef %3, i64 noundef %4, i32 noundef %29, i32 noundef %8), !range !61
  br label %31

31:                                               ; preds = %9, %20
  %32 = phi i32 [ %30, %20 ], [ 0, %9 ]
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_get_params(ptr noundef %0, ptr noundef %1) #1 {
  %3 = tail call i32 @gdev_psdf_get_params(ptr noundef %0, ptr noundef %1) #10
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %13, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 41
  %10 = tail call i32 %8(ptr noundef nonnull %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %9) #10
  %11 = icmp slt i32 %10, 0
  %12 = select i1 %11, i32 %10, i32 %3
  br label %13

13:                                               ; preds = %5, %2
  %14 = phi i32 [ %3, %2 ], [ %12, %5 ]
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_put_params(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca float, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %4 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 41
  %5 = load float, ptr %4, align 8, !tbaa !68
  store float %5, ptr %3, align 4, !tbaa !69
  %6 = load ptr, ptr %1, align 8, !tbaa !64
  %7 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !66
  %9 = call i32 %8(ptr noundef nonnull %1, ptr noundef nonnull @.str.56, ptr noundef nonnull %3) #10
  switch i32 %9, label %17 [
    i32 0, label %10
    i32 1, label %23
  ]

10:                                               ; preds = %2
  %11 = load float, ptr %3, align 4, !tbaa !69
  %12 = fcmp oeq float %11, 1.000000e+00
  %13 = fcmp oeq float %11, 1.500000e+00
  %14 = or i1 %12, %13
  %15 = fcmp oeq float %11, 2.000000e+00
  %16 = or i1 %15, %14
  br i1 %16, label %23, label %17

17:                                               ; preds = %10, %2
  %18 = phi i32 [ %9, %2 ], [ -15, %10 ]
  %19 = load ptr, ptr %1, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %19, i64 0, i32 15
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = call i32 %21(ptr noundef nonnull %1, ptr noundef nonnull @.str.56, i32 noundef %18) #10
  br label %23

23:                                               ; preds = %17, %2, %10
  %24 = phi i32 [ %18, %17 ], [ 0, %2 ], [ 0, %10 ]
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = call i32 @gdev_psdf_put_params(ptr noundef %0, ptr noundef nonnull %1) #10
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = load float, ptr %3, align 4, !tbaa !69
  store float %30, ptr %4, align 8, !tbaa !68
  br label %31

31:                                               ; preds = %26, %23, %29
  %32 = phi i32 [ %27, %29 ], [ %24, %23 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret i32 %32
}

declare ptr @gx_page_device_get_page_device(ptr noundef) #0

declare i32 @gdev_vector_fill_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

declare i32 @gdev_vector_stroke_path(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #1 {
  %14 = icmp sgt i32 %10, 1
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = tail call i32 @gdev_vector_update_fill_color(ptr noundef %0, ptr noundef %9) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = tail call i32 @gdev_vector_update_clip_path(ptr noundef %0, ptr noundef %12) #10
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = tail call i32 @gdev_vector_update_log_op(ptr noundef %0, i32 noundef %11) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %18, %15, %13
  %25 = tail call i32 @gx_default_fill_mask(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #10
  br label %41

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %28 = load ptr, ptr %27, align 8, !tbaa !45
  %29 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %28, i64 0, i32 21, i32 26
  %30 = load ptr, ptr %29, align 8, !tbaa !71
  %31 = tail call i32 %30(ptr noundef %28, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, ptr noundef %9, i32 noundef %10, i32 noundef %11, ptr noundef %12) #10
  %32 = icmp slt i32 %7, 1
  %33 = icmp slt i32 %8, 1
  %34 = or i1 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %37 = load ptr, ptr %36, align 8, !tbaa !60
  %38 = tail call ptr @pprintd2(ptr noundef %37, ptr noundef nonnull @.str.60, i32 noundef %7, i32 noundef %8) #10
  %39 = tail call ptr @pprintd2(ptr noundef %37, ptr noundef %38, i32 noundef %5, i32 noundef %6) #10
  %40 = tail call fastcc i32 @psw_image_write(ptr noundef %0, ptr noundef nonnull @.str.59, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i32 noundef %7, i32 noundef %8), !range !61
  br label %41

41:                                               ; preds = %26, %35, %24
  %42 = phi i32 [ %25, %24 ], [ %40, %35 ], [ 0, %26 ]
  ret i32 %42
}

declare i32 @gdev_vector_fill_trapezoid(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) #0

declare i32 @gdev_vector_fill_parallelogram(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

declare i32 @gdev_vector_fill_triangle(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nocapture noundef writeonly %8) #1 {
  %10 = alloca %struct.gs_matrix_s, align 4
  %11 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !72
  %13 = tail call ptr %12(ptr noundef %7, ptr noundef nonnull @st_vector_image_enum, ptr noundef nonnull @.str.73) #10
  %14 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !75
  %16 = icmp eq ptr %4, null
  %17 = zext i1 %16 to i32
  %18 = icmp eq ptr %13, null
  br i1 %18, label %208, label %19

19:                                               ; preds = %9
  store ptr %7, ptr %13, align 8, !tbaa !78
  store ptr %13, ptr %8, align 8, !tbaa !80
  %20 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 7
  %21 = load i32, ptr %20, align 4, !tbaa !81
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = tail call i32 @gs_color_space_get_index(ptr noundef %15) #10
  %25 = tail call i32 @gs_color_space_num_components(ptr noundef %15) #10
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i32 [ undef, %19 ], [ %25, %23 ]
  %28 = phi i32 [ undef, %19 ], [ %24, %23 ]
  %29 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 41
  %30 = load float, ptr %29, align 8, !tbaa !68
  %31 = fcmp olt float %30, 2.000000e+00
  br i1 %31, label %32, label %63

32:                                               ; preds = %26
  %33 = load i32, ptr %20, align 4, !tbaa !81
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %63

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %37 = load i32, ptr %36, align 8, !tbaa !82
  %38 = icmp sgt i32 %37, 8
  br i1 %38, label %63, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 9
  %41 = load i32, ptr %40, align 4, !tbaa !83
  %42 = icmp eq i32 %41, 0
  %43 = icmp ult i32 %28, 3
  %44 = select i1 %42, i1 %43, i1 false
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = icmp sgt i32 %27, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %45
  %48 = shl nuw i32 %27, 1
  %49 = tail call i32 @llvm.smax.i32(i32 %48, i32 1)
  %50 = zext nneg i32 %49 to i64
  br label %51

51:                                               ; preds = %47, %51
  %52 = phi i64 [ 0, %47 ], [ %61, %51 ]
  %53 = phi i32 [ %17, %47 ], [ %60, %51 ]
  %54 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5, i64 %52
  %55 = load float, ptr %54, align 4, !tbaa !69
  %56 = trunc i64 %52 to i32
  %57 = and i32 %56, 1
  %58 = sitofp i32 %57 to float
  %59 = fcmp une float %55, %58
  %60 = select i1 %59, i32 0, i32 %53
  %61 = add nuw nsw i64 %52, 1
  %62 = icmp eq i64 %61, %50
  br i1 %62, label %63, label %51, !llvm.loop !84

63:                                               ; preds = %51, %45, %35, %39, %32, %26
  %64 = phi i32 [ %17, %32 ], [ %17, %26 ], [ 0, %39 ], [ 0, %35 ], [ %17, %45 ], [ %60, %51 ]
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %95, label %66

66:                                               ; preds = %63
  %67 = tail call i32 @gdev_vector_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %13) #10
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %66
  %70 = tail call ptr @gdev_vector_stream(ptr noundef %0) #10
  %71 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 45
  store ptr %70, ptr %71, align 8, !tbaa !86
  %72 = load float, ptr %29, align 8, !tbaa !68
  %73 = fcmp ult float %72, 2.000000e+00
  br i1 %73, label %92, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 40
  %76 = load i32, ptr %75, align 8, !tbaa !87
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %92, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 22
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = load ptr, ptr %80, align 8, !tbaa !89
  %82 = tail call ptr %81(ptr noundef nonnull %80, i32 noundef 200, ptr noundef nonnull @.str.67) #10
  %83 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  store ptr %82, ptr %83, align 8, !tbaa !90
  %84 = tail call ptr @s_alloc(ptr noundef nonnull %80, ptr noundef nonnull @.str.68) #10
  store ptr %84, ptr %71, align 8, !tbaa !86
  %85 = icmp eq ptr %84, null
  %86 = icmp eq ptr %82, null
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %78
  tail call void @s_std_init(ptr noundef %84, ptr noundef %82, i32 noundef 200, ptr noundef nonnull @filter_write_procs, i32 noundef 2) #10
  store ptr @s_A85E_template, ptr %84, align 8, !tbaa !91
  %89 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_A85E_template, i64 0, i32 2), align 8, !tbaa !92
  %90 = getelementptr inbounds %struct.stream_s, ptr %84, i64 0, i32 12, i32 5
  store ptr %89, ptr %90, align 8, !tbaa !94
  %91 = getelementptr inbounds %struct.stream_s, ptr %84, i64 0, i32 13
  store ptr %70, ptr %91, align 8, !tbaa !95
  br label %92

92:                                               ; preds = %69, %74, %78, %88
  %93 = phi i1 [ false, %88 ], [ true, %78 ], [ false, %74 ], [ false, %69 ]
  %94 = phi ptr [ @.str.62, %88 ], [ @.str.62, %78 ], [ @.str.63, %74 ], [ @.str.63, %69 ]
  br i1 %93, label %95, label %98

95:                                               ; preds = %92, %66, %63
  %96 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %13, i64 0, i32 1
  %97 = tail call i32 @gx_default_begin_image(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef nonnull %96) #10
  br label %208

98:                                               ; preds = %92
  %99 = tail call ptr @gdev_vector_stream(ptr noundef %0) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #10
  %100 = tail call i32 @pputs(ptr noundef %99, ptr noundef nonnull @.str.74) #10
  %101 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 21, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !96
  call void %102(ptr noundef %0, ptr noundef nonnull %10) #10
  %103 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13
  %104 = load float, ptr %103, align 4, !tbaa !69
  %105 = fpext float %104 to double
  %106 = fdiv double 7.200000e+01, %105
  %107 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 13, i64 1
  %108 = load float, ptr %107, align 4, !tbaa !69
  %109 = fpext float %108 to double
  %110 = fdiv double 7.200000e+01, %109
  %111 = call i32 @gs_matrix_scale(ptr noundef nonnull %10, double noundef %106, double noundef %110, ptr noundef nonnull %10) #10
  %112 = call i32 @gs_matrix_invert(ptr noundef nonnull %10, ptr noundef nonnull %10) #10
  %113 = getelementptr inbounds %struct.gs_imager_state_s, ptr %1, i64 0, i32 2
  %114 = call i32 @gs_matrix_multiply(ptr noundef nonnull %113, ptr noundef nonnull %10, ptr noundef nonnull %10) #10
  %115 = load float, ptr %10, align 4, !tbaa !97
  %116 = fpext float %115 to double
  %117 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 1
  %118 = load float, ptr %117, align 4, !tbaa !98
  %119 = fpext float %118 to double
  %120 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 2
  %121 = load float, ptr %120, align 4, !tbaa !99
  %122 = fpext float %121 to double
  %123 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 3
  %124 = load float, ptr %123, align 4, !tbaa !100
  %125 = fpext float %124 to double
  %126 = call ptr @pprintg4(ptr noundef %99, ptr noundef nonnull @.str.85, double noundef %116, double noundef %119, double noundef %122, double noundef %125) #10
  %127 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 4
  %128 = load float, ptr %127, align 4, !tbaa !101
  %129 = fpext float %128 to double
  %130 = getelementptr inbounds %struct.gs_matrix_s, ptr %10, i64 0, i32 5
  %131 = load float, ptr %130, align 4, !tbaa !102
  %132 = fpext float %131 to double
  %133 = call ptr @pprintg2(ptr noundef %99, ptr noundef %126, double noundef %129, double noundef %132) #10
  %134 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %13, i64 0, i32 3
  %135 = load i32, ptr %134, align 8, !tbaa !103
  %136 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %13, i64 0, i32 4
  %137 = load i32, ptr %136, align 4, !tbaa !104
  %138 = call ptr @pprintd2(ptr noundef %99, ptr noundef nonnull @.str.75, i32 noundef %135, i32 noundef %137) #10
  %139 = load i32, ptr %20, align 4, !tbaa !81
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %98
  %142 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 5
  %143 = load float, ptr %142, align 8, !tbaa !69
  %144 = fcmp oeq float %143, 0.000000e+00
  %145 = select i1 %144, ptr @.str.76, ptr @.str.77
  %146 = call i32 @pputs(ptr noundef %99, ptr noundef nonnull %145) #10
  %147 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %148 = load float, ptr %147, align 4, !tbaa !97
  %149 = fpext float %148 to double
  %150 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 1
  %151 = load float, ptr %150, align 4, !tbaa !98
  %152 = fpext float %151 to double
  %153 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 2
  %154 = load float, ptr %153, align 4, !tbaa !99
  %155 = fpext float %154 to double
  %156 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 3
  %157 = load float, ptr %156, align 4, !tbaa !100
  %158 = fpext float %157 to double
  %159 = call ptr @pprintg4(ptr noundef %99, ptr noundef nonnull @.str.85, double noundef %149, double noundef %152, double noundef %155, double noundef %158) #10
  %160 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 4
  %161 = load float, ptr %160, align 4, !tbaa !101
  %162 = fpext float %161 to double
  %163 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 5
  %164 = load float, ptr %163, align 4, !tbaa !102
  %165 = fpext float %164 to double
  %166 = call ptr @pprintg2(ptr noundef %99, ptr noundef %159, double noundef %162, double noundef %165) #10
  %167 = call ptr @pprints1(ptr noundef %99, ptr noundef nonnull @.str.78, ptr noundef nonnull %94) #10
  br label %207

168:                                              ; preds = %98
  %169 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 3
  %170 = load i32, ptr %169, align 8, !tbaa !82
  %171 = call ptr @pprintd1(ptr noundef %99, ptr noundef nonnull @.str.79, i32 noundef %170) #10
  %172 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2
  %173 = load float, ptr %172, align 4, !tbaa !97
  %174 = fpext float %173 to double
  %175 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 1
  %176 = load float, ptr %175, align 4, !tbaa !98
  %177 = fpext float %176 to double
  %178 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 2
  %179 = load float, ptr %178, align 4, !tbaa !99
  %180 = fpext float %179 to double
  %181 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 3
  %182 = load float, ptr %181, align 4, !tbaa !100
  %183 = fpext float %182 to double
  %184 = call ptr @pprintg4(ptr noundef %99, ptr noundef nonnull @.str.85, double noundef %174, double noundef %177, double noundef %180, double noundef %183) #10
  %185 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 4
  %186 = load float, ptr %185, align 4, !tbaa !101
  %187 = fpext float %186 to double
  %188 = getelementptr inbounds %struct.gs_image_s, ptr %2, i64 0, i32 2, i32 5
  %189 = load float, ptr %188, align 4, !tbaa !102
  %190 = fpext float %189 to double
  %191 = call ptr @pprintg2(ptr noundef %99, ptr noundef %184, double noundef %187, double noundef %190) #10
  %192 = icmp eq i32 %28, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %168
  %194 = call ptr @pprints1(ptr noundef %99, ptr noundef nonnull @.str.80, ptr noundef nonnull %94) #10
  br label %207

195:                                              ; preds = %168
  %196 = icmp eq i32 %3, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %195
  %198 = call ptr @pprints1(ptr noundef %99, ptr noundef nonnull @.str.81, ptr noundef nonnull %94) #10
  br label %205

199:                                              ; preds = %195
  %200 = shl nsw i32 %27, 2
  %201 = sub nsw i32 16, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8, ptr @.str.83, i64 %202
  %204 = call ptr @pprints2(ptr noundef %99, ptr noundef nonnull @.str.82, ptr noundef nonnull %94, ptr noundef nonnull %203) #10
  br label %205

205:                                              ; preds = %199, %197
  %206 = call ptr @pprintd1(ptr noundef %99, ptr noundef nonnull @.str.84, i32 noundef %27) #10
  br label %207

207:                                              ; preds = %193, %205, %141
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #10
  br label %208

208:                                              ; preds = %9, %207, %95
  %209 = phi i32 [ %97, %95 ], [ 0, %207 ], [ -25, %9 ]
  ret i32 %209
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_image_data(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #1 {
  %7 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !105
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 @gx_default_image_data(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #10
  br label %65

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 37
  %14 = load ptr, ptr %13, align 8, !tbaa !45
  %15 = getelementptr inbounds %struct.gx_device_bbox_s, ptr %14, i64 0, i32 21, i32 32
  %16 = load ptr, ptr %15, align 8, !tbaa !106
  %17 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = tail call i32 %16(ptr noundef %14, ptr noundef %18, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #10
  %20 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 5
  %21 = load i32, ptr %20, align 8, !tbaa !108
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %12
  %24 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 45
  %25 = icmp sgt i32 %5, 0
  %26 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 7
  %27 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 6
  %28 = zext nneg i32 %5 to i64
  br label %29

29:                                               ; preds = %23, %52
  %30 = phi i64 [ 0, %23 ], [ %53, %52 ]
  %31 = load ptr, ptr %24, align 8, !tbaa !86
  br i1 %25, label %32, label %52

32:                                               ; preds = %29
  %33 = load i32, ptr %26, align 8, !tbaa !109
  %34 = load i32, ptr %27, align 4, !tbaa !110
  %35 = mul nsw i32 %34, %3
  %36 = getelementptr inbounds ptr, ptr %2, i64 %30
  %37 = load ptr, ptr %36, align 8, !tbaa !80
  %38 = ashr i32 %35, 3
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = add i32 %33, 7
  %42 = lshr i32 %41, 3
  br label %43

43:                                               ; preds = %43, %32
  %44 = phi i64 [ 0, %32 ], [ %50, %43 ]
  %45 = trunc i64 %44 to i32
  %46 = mul i32 %45, %4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i8, ptr %40, i64 %47
  %49 = tail call i32 @pwrite(ptr noundef %31, ptr noundef %48, i32 noundef %42) #10
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %28
  br i1 %51, label %52, label %43, !llvm.loop !111

52:                                               ; preds = %43, %29
  %53 = add nuw nsw i64 %30, 1
  %54 = load i32, ptr %20, align 8, !tbaa !108
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %29, label %57, !llvm.loop !112

57:                                               ; preds = %52, %12
  %58 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 8
  %59 = load i32, ptr %58, align 4, !tbaa !113
  %60 = add nsw i32 %59, %5
  store i32 %60, ptr %58, align 4, !tbaa !113
  %61 = getelementptr inbounds %struct.gdev_vector_image_enum_s, ptr %1, i64 0, i32 4
  %62 = load i32, ptr %61, align 4, !tbaa !104
  %63 = icmp sge i32 %60, %62
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %57, %10
  %66 = phi i32 [ %11, %10 ], [ %64, %57 ]
  ret i32 %66
}

; Function Attrs: nounwind uwtable
define internal i32 @psw_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 39
  %5 = load i64, ptr %4, align 8, !tbaa !114
  %6 = tail call i32 @gdev_vector_end_image(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %5) #10
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 22
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 45
  %12 = load ptr, ptr %11, align 8, !tbaa !86
  %13 = icmp eq ptr %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %16 = load ptr, ptr %15, align 8, !tbaa !60
  %17 = icmp eq ptr %12, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @sclose(ptr noundef nonnull %12) #10
  %20 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %10, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !115
  %22 = load ptr, ptr %11, align 8, !tbaa !86
  tail call void %21(ptr noundef %10, ptr noundef %22, ptr noundef nonnull @.str.69) #10
  store ptr null, ptr %11, align 8, !tbaa !86
  br label %23

23:                                               ; preds = %18, %14, %8
  %24 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %10, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !115
  tail call void %29(ptr noundef %10, ptr noundef nonnull %25, ptr noundef nonnull @.str.70) #10
  store ptr null, ptr %24, align 8, !tbaa !90
  br label %30

30:                                               ; preds = %23, %27
  %31 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %32 = load ptr, ptr %31, align 8, !tbaa !60
  %33 = tail call i32 @pputs(ptr noundef %32, ptr noundef nonnull @.str.86) #10
  br label %34

34:                                               ; preds = %30, %3
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define internal ptr @device_pswrite_enum_ptrs(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #1 {
  switch i32 %2, label %5 [
    i32 0, label %9
    i32 1, label %12
  ]

5:                                                ; preds = %4
  %6 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_vector, i64 0, i32 4), align 8, !tbaa !116
  %7 = add i32 %2, -2
  %8 = tail call ptr %6(ptr noundef %0, i32 noundef %1, i32 noundef %7, ptr noundef %3) #10
  br label %15

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 45
  %11 = load ptr, ptr %10, align 8, !tbaa !86
  store ptr %11, ptr %3, align 8, !tbaa !80
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  store ptr %14, ptr %3, align 8, !tbaa !80
  br label %15

15:                                               ; preds = %5, %9, %12
  %16 = phi ptr [ %8, %5 ], [ @ptr_struct_procs, %12 ], [ @ptr_struct_procs, %9 ]
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define internal void @device_pswrite_reloc_ptrs(ptr noundef %0, i32 noundef %1, ptr noundef %2) #1 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_struct_type_s, ptr @st_device_vector, i64 0, i32 5), align 8, !tbaa !118
  tail call void %4(ptr noundef %0, i32 noundef %1, ptr noundef %2) #10
  %5 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 45
  %6 = load ptr, ptr %5, align 8, !tbaa !86
  %7 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %6, ptr noundef %2) #10
  store ptr %7, ptr %5, align 8, !tbaa !86
  %8 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  %10 = tail call ptr @gs_reloc_struct_ptr(ptr noundef %9, ptr noundef %2) #10
  store ptr %10, ptr %8, align 8, !tbaa !90
  ret void
}

declare void @gx_device_finalize(ptr noundef) #0

declare ptr @gs_reloc_struct_ptr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gdev_vector_open_file_bbox(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

declare void @gdev_vector_init(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @psw_beginpage(ptr nocapture noundef %0) #1 {
  %2 = alloca i64, align 8
  %3 = alloca [25 x i8], align 16
  %4 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 17
  %7 = load i64, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 43
  %9 = load i32, ptr %8, align 8, !tbaa !32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %114, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 42
  %13 = load i32, ptr %12, align 4, !tbaa !121
  %14 = icmp eq i32 %13, 0
  %15 = select i1 %14, ptr @psw_ps_header, ptr @psw_eps_header
  %16 = load ptr, ptr %15, align 16, !tbaa !80
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %11, %18
  %19 = phi i64 [ %22, %18 ], [ 0, %11 ]
  %20 = phi ptr [ %24, %18 ], [ %16, %11 ]
  %21 = tail call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %20) #10
  %22 = add nuw i64 %19, 1
  %23 = getelementptr inbounds ptr, ptr %15, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !80
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %18, !llvm.loop !122

26:                                               ; preds = %18, %11
  %27 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 25
  %28 = load ptr, ptr %27, align 8, !tbaa !43
  %29 = tail call i64 @ftell(ptr noundef %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = tail call i64 @stell(ptr noundef %5) #10
  br label %33

33:                                               ; preds = %26, %31
  %34 = phi i64 [ %32, %31 ], [ -1, %26 ]
  %35 = phi ptr [ @.str.5, %31 ], [ @.str.4, %26 ]
  %36 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 44
  store i64 %34, ptr %36, align 8, !tbaa !46
  %37 = tail call i32 @pputs(ptr noundef %5, ptr noundef nonnull %35) #10
  %38 = load ptr, ptr @gs_product, align 8, !tbaa !80
  %39 = tail call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.6, ptr noundef %38) #10
  %40 = load i64, ptr @gs_revision, align 8, !tbaa !37
  %41 = tail call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.7, i64 noundef %40) #10
  %42 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !123
  %44 = tail call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.8, ptr noundef %43) #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %3) #10
  %45 = call i64 @time(ptr noundef nonnull %2) #10
  %46 = call ptr @localtime(ptr noundef nonnull %2) #10
  %47 = load i32, ptr %46, align 8, !tbaa.struct !124
  %48 = getelementptr inbounds i8, ptr %46, i64 4
  %49 = load i32, ptr %48, align 4, !tbaa.struct !126
  %50 = getelementptr inbounds i8, ptr %46, i64 8
  %51 = load i32, ptr %50, align 8, !tbaa.struct !127
  %52 = getelementptr inbounds i8, ptr %46, i64 12
  %53 = load i32, ptr %52, align 4, !tbaa.struct !128
  %54 = getelementptr inbounds i8, ptr %46, i64 16
  %55 = load i32, ptr %54, align 8, !tbaa.struct !129
  %56 = getelementptr inbounds i8, ptr %46, i64 20
  %57 = load i32, ptr %56, align 4, !tbaa.struct !130
  %58 = add nsw i32 %57, 1900
  %59 = add nsw i32 %55, 1
  %60 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %58, i32 noundef %59, i32 noundef %53, i32 noundef %51, i32 noundef %49, i32 noundef %47) #10
  %61 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #10
  %62 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 40
  %63 = load i32, ptr %62, align 8, !tbaa !87
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %33
  %66 = call i32 @pputs(ptr noundef %5, ptr noundef nonnull @.str.11) #10
  br label %67

67:                                               ; preds = %65, %33
  %68 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 41
  %69 = load float, ptr %68, align 8, !tbaa !68
  %70 = fcmp oeq float %69, 2.000000e+00
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = fcmp oeq float %69, 1.500000e+00
  br i1 %72, label %73, label %76

73:                                               ; preds = %71, %67
  %74 = phi ptr [ @.str.12, %67 ], [ @.str.13, %71 ]
  %75 = call i32 @pputs(ptr noundef %5, ptr noundef nonnull %74) #10
  br label %76

76:                                               ; preds = %73, %71
  br label %77

77:                                               ; preds = %76, %77
  %78 = phi i64 [ %81, %77 ], [ 0, %76 ]
  %79 = phi ptr [ %83, %77 ], [ @.str.21, %76 ]
  %80 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %79) #10
  %81 = add nuw i64 %78, 1
  %82 = getelementptr inbounds ptr, ptr @psw_header, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !80
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %77, !llvm.loop !122

85:                                               ; preds = %77
  %86 = load ptr, ptr @gs_copyright, align 8, !tbaa !80
  %87 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef %86) #10
  br label %88

88:                                               ; preds = %85, %88
  %89 = phi i64 [ %92, %88 ], [ 0, %85 ]
  %90 = phi ptr [ %94, %88 ], [ @.str.24, %85 ]
  %91 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %90) #10
  %92 = add nuw i64 %89, 1
  %93 = getelementptr inbounds ptr, ptr @psw_prolog, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !80
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %88, !llvm.loop !122

96:                                               ; preds = %88
  %97 = load float, ptr %68, align 8, !tbaa !68
  %98 = fcmp olt float %97, 1.500000e+00
  br i1 %98, label %105, label %99

99:                                               ; preds = %96
  %100 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.37) #10
  %101 = load float, ptr %68, align 8, !tbaa !68
  %102 = fcmp ule float %101, 1.500000e+00
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.38) #10
  br label %105

105:                                              ; preds = %99, %103, %96
  br label %106

106:                                              ; preds = %105, %106
  %107 = phi i64 [ %110, %106 ], [ 0, %105 ]
  %108 = phi ptr [ %112, %106 ], [ @.str.39, %105 ]
  %109 = call ptr @pprints1(ptr noundef %5, ptr noundef nonnull @.str.17, ptr noundef nonnull %108) #10
  %110 = add nuw i64 %107, 1
  %111 = getelementptr inbounds ptr, ptr @psw_end_prolog, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !80
  %113 = icmp eq ptr %112, null
  br i1 %113, label %114, label %106, !llvm.loop !122

114:                                              ; preds = %106, %1
  %115 = add nsw i64 %7, 1
  %116 = call ptr @pprintld1(ptr noundef %5, ptr noundef nonnull @.str.15, i64 noundef %115) #10
  %117 = call ptr @pprintld1(ptr noundef %5, ptr noundef %116, i64 noundef %115) #10
  %118 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 13
  %119 = load float, ptr %118, align 4, !tbaa !69
  %120 = fpext float %119 to double
  %121 = fdiv double 7.200000e+01, %120
  %122 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 13, i64 1
  %123 = load float, ptr %122, align 4, !tbaa !69
  %124 = fpext float %123 to double
  %125 = fdiv double 7.200000e+01, %124
  %126 = call ptr @pprintg2(ptr noundef %5, ptr noundef nonnull @.str.16, double noundef %121, double noundef %125) #10
  ret i32 0
}

declare i32 @psdf_setlinewidth(ptr noundef, double noundef) #0

declare i32 @psdf_setlinecap(ptr noundef, i32 noundef) #0

declare i32 @psdf_setlinejoin(ptr noundef, i32 noundef) #0

declare i32 @psdf_setmiterlimit(ptr noundef, double noundef) #0

declare i32 @psdf_setdash(ptr noundef, ptr noundef, i32 noundef, double noundef) #0

declare i32 @psdf_setflat(ptr noundef, double noundef) #0

declare i32 @psdf_setlogop(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @psw_setcolors(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !131
  %4 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false), !tbaa.struct !131
  %5 = tail call i32 @psdf_setfillcolor(ptr noundef %0, ptr noundef %1) #10
  ret i32 %5
}

declare i32 @gdev_vector_dopath(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @psdf_dorect(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef) #0

declare i32 @psdf_beginpath(ptr noundef, i32 noundef) #0

declare i32 @psdf_moveto(ptr noundef, double noundef, double noundef, double noundef, double noundef, i32 noundef) #0

declare i32 @psdf_lineto(ptr noundef, double noundef, double noundef, double noundef, double noundef) #0

declare i32 @psdf_curveto(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef, double noundef) #0

declare i32 @psdf_closepath(ptr noundef, double noundef, double noundef, double noundef, double noundef) #0

; Function Attrs: nounwind uwtable
define internal noundef i32 @psw_endpath(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_vector_s, ptr %0, i64 0, i32 26
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = and i32 %1, 8
  %6 = icmp eq i32 %5, 0
  %7 = select i1 %6, ptr @.str.43, ptr @.str.42
  %8 = and i32 %1, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = and i32 %1, 6
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %12, ptr @.str.45, ptr @.str.44
  %14 = tail call ptr @pprints1(ptr noundef %4, ptr noundef nonnull %13, ptr noundef nonnull %7) #10
  br label %15

15:                                               ; preds = %10, %2
  %16 = and i32 %1, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = and i32 %1, 4
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.47, ptr @.str.46
  %22 = tail call i32 @pputs(ptr noundef %4, ptr noundef nonnull %21) #10
  br label %23

23:                                               ; preds = %18, %15
  %24 = and i32 %1, 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @pprints1(ptr noundef %4, ptr noundef nonnull @.str.48, ptr noundef nonnull %7) #10
  br label %28

28:                                               ; preds = %26, %23
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @pputs(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i64 @stell(ptr noundef) local_unnamed_addr #0

declare ptr @pprints1(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @pprintld1(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare ptr @pprintg2(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #0

declare i32 @psdf_setfillcolor(ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @gdev_vector_stream(ptr noundef) local_unnamed_addr #0

declare ptr @pprintd1(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @gdev_vector_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

declare void @gx_device_bbox_bbox(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare void @gdev_vector_close_file(ptr noundef) local_unnamed_addr #0

declare i32 @gdev_psdf_get_params(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gdev_psdf_put_params(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gdev_vector_update_fill_color(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @psw_image_write(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #1 {
  %9 = alloca [40 x i8], align 16
  %10 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !60
  %12 = icmp eq i64 %5, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %8
  %14 = urem i64 %5, 137
  %15 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 47, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !37
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = tail call ptr @pprintld1(ptr noundef %11, ptr noundef nonnull @.str.61, i64 noundef %5) #10
  %20 = tail call ptr @pprints1(ptr noundef %11, ptr noundef nonnull @.str.17, ptr noundef %1) #10
  br label %153

21:                                               ; preds = %8, %13
  %22 = tail call ptr @gdev_vector_stream(ptr noundef %0) #10
  %23 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 45
  store ptr %22, ptr %23, align 8, !tbaa !86
  %24 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 41
  %25 = load float, ptr %24, align 8, !tbaa !68
  %26 = fcmp ult float %25, 2.000000e+00
  br i1 %26, label %45, label %27

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 40
  %29 = load i32, ptr %28, align 8, !tbaa !87
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %45, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 22
  %33 = load ptr, ptr %32, align 8, !tbaa !88
  %34 = load ptr, ptr %33, align 8, !tbaa !89
  %35 = tail call ptr %34(ptr noundef nonnull %33, i32 noundef 200, ptr noundef nonnull @.str.67) #10
  %36 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  store ptr %35, ptr %36, align 8, !tbaa !90
  %37 = tail call ptr @s_alloc(ptr noundef nonnull %33, ptr noundef nonnull @.str.68) #10
  store ptr %37, ptr %23, align 8, !tbaa !86
  %38 = icmp eq ptr %37, null
  %39 = icmp eq ptr %35, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %31
  tail call void @s_std_init(ptr noundef %37, ptr noundef %35, i32 noundef 200, ptr noundef nonnull @filter_write_procs, i32 noundef 2) #10
  store ptr @s_A85E_template, ptr %37, align 8, !tbaa !91
  %42 = load ptr, ptr getelementptr inbounds (%struct.stream_template_s, ptr @s_A85E_template, i64 0, i32 2), align 8, !tbaa !92
  %43 = getelementptr inbounds %struct.stream_s, ptr %37, i64 0, i32 12, i32 5
  store ptr %42, ptr %43, align 8, !tbaa !94
  %44 = getelementptr inbounds %struct.stream_s, ptr %37, i64 0, i32 13
  store ptr %22, ptr %44, align 8, !tbaa !95
  br label %45

45:                                               ; preds = %21, %27, %31, %41
  %46 = phi i1 [ false, %41 ], [ true, %31 ], [ false, %27 ], [ false, %21 ]
  %47 = phi ptr [ @.str.62, %41 ], [ @.str.62, %31 ], [ @.str.63, %27 ], [ @.str.63, %21 ]
  %48 = phi i32 [ 1, %41 ], [ -25, %31 ], [ 0, %27 ], [ 0, %21 ]
  br i1 %46, label %153, label %49

49:                                               ; preds = %45
  br i1 %12, label %59, label %50

50:                                               ; preds = %49
  %51 = zext i32 %6 to i64
  %52 = sext i32 %7 to i64
  %53 = mul nsw i64 %52, %51
  %54 = icmp ugt i64 %53, 8000
  %55 = icmp eq i32 %6, 0
  %56 = or i1 %55, %54
  %57 = icmp eq i32 %7, 0
  %58 = or i1 %57, %56
  br i1 %58, label %59, label %101

59:                                               ; preds = %50, %49
  %60 = tail call ptr @pprints2(ptr noundef %11, ptr noundef nonnull @.str.64, ptr noundef nonnull %47, ptr noundef %1) #10
  %61 = load ptr, ptr %23, align 8, !tbaa !86
  %62 = icmp sgt i32 %7, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %59
  %64 = ashr i32 %3, 3
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, ptr %2, i64 %65
  %67 = add i32 %6, 7
  %68 = lshr i32 %67, 3
  %69 = zext nneg i32 %7 to i64
  br label %70

70:                                               ; preds = %70, %63
  %71 = phi i64 [ 0, %63 ], [ %77, %70 ]
  %72 = trunc i64 %71 to i32
  %73 = mul i32 %72, %4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %66, i64 %74
  %76 = tail call i32 @pwrite(ptr noundef %61, ptr noundef %75, i32 noundef %68) #10
  %77 = add nuw nsw i64 %71, 1
  %78 = icmp eq i64 %77, %69
  br i1 %78, label %79, label %70, !llvm.loop !111

79:                                               ; preds = %70, %59
  %80 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 22
  %81 = load ptr, ptr %80, align 8, !tbaa !88
  %82 = load ptr, ptr %23, align 8, !tbaa !86
  %83 = icmp eq ptr %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %10, align 8, !tbaa !60
  %86 = icmp eq ptr %82, %85
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = tail call i32 @sclose(ptr noundef nonnull %82) #10
  %89 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %81, i64 0, i32 11
  %90 = load ptr, ptr %89, align 8, !tbaa !115
  %91 = load ptr, ptr %23, align 8, !tbaa !86
  tail call void %90(ptr noundef %81, ptr noundef %91, ptr noundef nonnull @.str.69) #10
  store ptr null, ptr %23, align 8, !tbaa !86
  br label %92

92:                                               ; preds = %87, %84, %79
  %93 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  %94 = load ptr, ptr %93, align 8, !tbaa !90
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %81, i64 0, i32 11
  %98 = load ptr, ptr %97, align 8, !tbaa !115
  tail call void %98(ptr noundef %81, ptr noundef nonnull %94, ptr noundef nonnull @.str.70) #10
  store ptr null, ptr %93, align 8, !tbaa !90
  br label %99

99:                                               ; preds = %92, %96
  %100 = tail call i32 @spputc(ptr noundef %11, i8 noundef zeroext 10) #10
  br label %153

101:                                              ; preds = %50
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #10
  %102 = urem i64 %5, 137
  %103 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 47, i64 %102
  %104 = load i64, ptr %103, align 8, !tbaa !37
  %105 = icmp eq i64 %104, %5
  br i1 %105, label %107, label %106

106:                                              ; preds = %101
  store i64 %5, ptr %103, align 8, !tbaa !37
  br label %107

107:                                              ; preds = %101, %106
  %108 = add i32 %6, 7
  %109 = lshr i32 %108, 3
  %110 = zext nneg i32 %109 to i64
  %111 = mul nsw i64 %110, %52
  %112 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str.65, i64 noundef %5, ptr noundef nonnull %47, i64 noundef %111) #10
  %113 = call i32 @pputs(ptr noundef %11, ptr noundef nonnull %9) #10
  %114 = load ptr, ptr %23, align 8, !tbaa !86
  %115 = icmp sgt i32 %7, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %107
  %117 = ashr i32 %3, 3
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, ptr %2, i64 %118
  %120 = zext nneg i32 %7 to i64
  br label %121

121:                                              ; preds = %121, %116
  %122 = phi i64 [ 0, %116 ], [ %128, %121 ]
  %123 = trunc i64 %122 to i32
  %124 = mul i32 %123, %4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i8, ptr %119, i64 %125
  %127 = call i32 @pwrite(ptr noundef %114, ptr noundef %126, i32 noundef %109) #10
  %128 = add nuw nsw i64 %122, 1
  %129 = icmp eq i64 %128, %120
  br i1 %129, label %130, label %121, !llvm.loop !111

130:                                              ; preds = %121, %107
  %131 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 22
  %132 = load ptr, ptr %131, align 8, !tbaa !88
  %133 = load ptr, ptr %23, align 8, !tbaa !86
  %134 = icmp eq ptr %133, null
  br i1 %134, label %143, label %135

135:                                              ; preds = %130
  %136 = load ptr, ptr %10, align 8, !tbaa !60
  %137 = icmp eq ptr %133, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = call i32 @sclose(ptr noundef nonnull %133) #10
  %140 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %132, i64 0, i32 11
  %141 = load ptr, ptr %140, align 8, !tbaa !115
  %142 = load ptr, ptr %23, align 8, !tbaa !86
  call void %141(ptr noundef %132, ptr noundef %142, ptr noundef nonnull @.str.69) #10
  store ptr null, ptr %23, align 8, !tbaa !86
  br label %143

143:                                              ; preds = %138, %135, %130
  %144 = getelementptr inbounds %struct.gx_device_pswrite_s, ptr %0, i64 0, i32 46
  %145 = load ptr, ptr %144, align 8, !tbaa !90
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.gs_memory_procs_s, ptr %132, i64 0, i32 11
  %149 = load ptr, ptr %148, align 8, !tbaa !115
  call void %149(ptr noundef %132, ptr noundef nonnull %145, ptr noundef nonnull @.str.70) #10
  store ptr null, ptr %144, align 8, !tbaa !90
  br label %150

150:                                              ; preds = %143, %147
  %151 = call ptr @pprintld1(ptr noundef %11, ptr noundef nonnull @.str.66, i64 noundef %5) #10
  %152 = call ptr @pprints1(ptr noundef %11, ptr noundef nonnull @.str.17, ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #10
  br label %153

153:                                              ; preds = %99, %150, %45, %18
  %154 = phi i32 [ 0, %18 ], [ %48, %45 ], [ 0, %150 ], [ 0, %99 ]
  ret i32 %154
}

declare ptr @pprintd2(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare ptr @pprints2(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @spputc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

declare ptr @s_alloc(ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @s_std_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @s_std_noavailable(ptr noundef, ptr noundef) #0

declare i32 @s_std_noseek(ptr noundef, i64 noundef) #0

declare void @s_std_write_reset(ptr noundef) #0

declare i32 @s_std_write_flush(ptr noundef) #0

declare i32 @s_filter_close(ptr noundef) #0

declare i32 @pwrite(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @sclose(ptr noundef) local_unnamed_addr #0

declare i32 @gdev_vector_update_clip_path(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gdev_vector_update_log_op(ptr noundef, i32 noundef) local_unnamed_addr #0

declare i32 @gx_default_fill_mask(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_color_space_get_index(ptr noundef) local_unnamed_addr #0

declare i32 @gs_color_space_num_components(ptr noundef) local_unnamed_addr #0

declare i32 @gdev_vector_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gx_default_begin_image(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_matrix_scale(ptr noundef, double noundef, double noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_matrix_invert(ptr noundef, ptr noundef) local_unnamed_addr #0

declare i32 @gs_matrix_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare ptr @pprintg4(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #0

declare i32 @gx_default_image_data(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

declare i32 @gdev_vector_end_image(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !10, i64 24}
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
!16 = !{!17, !10, i64 488}
!17 = !{!"gx_device_vector_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !18, i64 624, !8, i64 944, !24, i64 992, !24, i64 1088, !13, i64 1184, !13, i64 1192, !29, i64 1200, !7, i64 1216, !10, i64 1224, !13, i64 1232, !13, i64 1240}
!18 = !{!"gs_imager_state_s", !10, i64 0, !19, i64 8, !22, i64 80, !7, i64 128, !12, i64 132, !7, i64 136, !20, i64 140, !23, i64 144, !7, i64 160, !7, i64 164, !10, i64 168, !8, i64 176, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !8, i64 232, !8, i64 264, !10, i64 296, !10, i64 304, !10, i64 312}
!19 = !{!"gx_line_params_s", !20, i64 0, !7, i64 4, !7, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !20, i64 24, !21, i64 32}
!20 = !{!"float", !8, i64 0}
!21 = !{!"gx_dash_params_s", !10, i64 0, !7, i64 8, !20, i64 12, !7, i64 16, !20, i64 20, !7, i64 24, !7, i64 28, !20, i64 32}
!22 = !{!"gs_matrix_fixed_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20, !13, i64 24, !13, i64 32, !7, i64 40}
!23 = !{!"gs_fixed_point_s", !13, i64 0, !13, i64 8}
!24 = !{!"gx_device_color_s", !10, i64 0, !8, i64 8, !25, i64 48, !26, i64 56}
!25 = !{!"gs_int_point_s", !7, i64 0, !7, i64 4}
!26 = !{!"_mask", !27, i64 0, !13, i64 24, !10, i64 32}
!27 = !{!"gs_client_color_s", !28, i64 0, !10, i64 16}
!28 = !{!"gs_paint_color_s", !8, i64 0}
!29 = !{!"gs_point_s", !30, i64 0, !30, i64 8}
!30 = !{!"double", !8, i64 0}
!31 = !{!17, !10, i64 496}
!32 = !{!33, !7, i64 1520}
!33 = !{!"gx_device_pswrite_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !10, i64 496, !8, i64 504, !10, i64 592, !10, i64 600, !10, i64 608, !7, i64 616, !18, i64 624, !8, i64 944, !24, i64 992, !24, i64 1088, !13, i64 1184, !13, i64 1192, !29, i64 1200, !7, i64 1216, !10, i64 1224, !13, i64 1232, !13, i64 1240, !34, i64 1248, !20, i64 1512, !7, i64 1516, !7, i64 1520, !13, i64 1528, !10, i64 1536, !10, i64 1544, !8, i64 1552}
!34 = !{!"psdf_distiller_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !13, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !35, i64 56, !7, i64 104, !7, i64 108, !7, i64 112, !35, i64 120, !35, i64 168, !36, i64 216, !36, i64 232, !7, i64 248, !7, i64 252, !7, i64 256}
!35 = !{!"psdf_image_params_s", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !10, i64 24, !7, i64 32, !10, i64 40}
!36 = !{!"gs_param_string_array_s", !10, i64 0, !7, i64 8, !7, i64 12}
!37 = !{!13, !13, i64 0}
!38 = !{!39, !10, i64 120}
!39 = !{!"stream_s", !10, i64 0, !10, i64 8, !10, i64 16, !8, i64 24, !10, i64 48, !7, i64 56, !7, i64 60, !12, i64 64, !8, i64 66, !8, i64 67, !40, i64 72, !13, i64 88, !41, i64 96, !10, i64 152, !7, i64 160, !7, i64 164, !10, i64 168, !12, i64 176, !12, i64 178, !10, i64 184, !10, i64 192, !7, i64 200, !10, i64 208, !7, i64 216, !10, i64 224}
!40 = !{!"gs_string_s", !10, i64 0, !7, i64 8}
!41 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!42 = !{!17, !7, i64 1216}
!43 = !{!17, !10, i64 592}
!44 = !{!6, !13, i64 144}
!45 = !{!17, !10, i64 1224}
!46 = !{!33, !13, i64 1528}
!47 = !{!48, !30, i64 0}
!48 = !{!"gs_rect_s", !29, i64 0, !29, i64 16}
!49 = !{!48, !30, i64 8}
!50 = !{!48, !30, i64 16}
!51 = !{!48, !30, i64 24}
!52 = !{!53, !10, i64 264}
!53 = !{!"gx_device_bbox_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !10, i64 488, !54, i64 496, !13, i64 528}
!54 = !{!"gs_fixed_rect_s", !23, i64 0, !23, i64 16}
!55 = !{!8, !8, i64 0}
!56 = !{!17, !13, i64 1232}
!57 = !{!17, !13, i64 1240}
!58 = !{!6, !10, i64 248}
!59 = !{!24, !10, i64 0}
!60 = !{!33, !10, i64 600}
!61 = !{i32 -25, i32 1}
!62 = !{!6, !7, i64 52}
!63 = !{!53, !10, i64 272}
!64 = !{!65, !10, i64 0}
!65 = !{!"gs_param_list_s", !10, i64 0}
!66 = !{!67, !10, i64 32}
!67 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!68 = !{!33, !20, i64 1512}
!69 = !{!20, !20, i64 0}
!70 = !{!67, !10, i64 120}
!71 = !{!53, !10, i64 400}
!72 = !{!73, !10, i64 16}
!73 = !{!"gs_memory_s", !74, i64 0}
!74 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!75 = !{!76, !10, i64 40}
!76 = !{!"gs_image_s", !7, i64 0, !7, i64 4, !77, i64 8, !7, i64 32, !10, i64 40, !8, i64 48, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92}
!77 = !{!"gs_matrix_s", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !20, i64 16, !20, i64 20}
!78 = !{!79, !10, i64 0}
!79 = !{!"gdev_vector_image_enum_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!80 = !{!10, !10, i64 0}
!81 = !{!76, !7, i64 84}
!82 = !{!76, !7, i64 32}
!83 = !{!76, !7, i64 92}
!84 = distinct !{!84, !85}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!33, !10, i64 1536}
!87 = !{!33, !7, i64 1248}
!88 = !{!33, !10, i64 488}
!89 = !{!73, !10, i64 0}
!90 = !{!33, !10, i64 1544}
!91 = !{!39, !10, i64 0}
!92 = !{!93, !10, i64 16}
!93 = !{!"stream_template_s", !10, i64 0, !10, i64 8, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !10, i64 40, !10, i64 48}
!94 = !{!39, !10, i64 136}
!95 = !{!39, !10, i64 152}
!96 = !{!6, !10, i64 200}
!97 = !{!77, !20, i64 0}
!98 = !{!77, !20, i64 4}
!99 = !{!77, !20, i64 8}
!100 = !{!77, !20, i64 12}
!101 = !{!77, !20, i64 16}
!102 = !{!77, !20, i64 20}
!103 = !{!79, !7, i64 24}
!104 = !{!79, !7, i64 28}
!105 = !{!79, !10, i64 8}
!106 = !{!53, !10, i64 448}
!107 = !{!79, !10, i64 16}
!108 = !{!79, !7, i64 32}
!109 = !{!79, !7, i64 40}
!110 = !{!79, !7, i64 36}
!111 = distinct !{!111, !85}
!112 = distinct !{!112, !85}
!113 = !{!79, !7, i64 44}
!114 = !{!33, !13, i64 1240}
!115 = !{!73, !10, i64 88}
!116 = !{!117, !10, i64 32}
!117 = !{!"gs_memory_struct_type_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!118 = !{!117, !10, i64 40}
!119 = !{!17, !10, i64 600}
!120 = !{!17, !13, i64 144}
!121 = !{!33, !7, i64 1516}
!122 = distinct !{!122, !85}
!123 = !{!17, !10, i64 16}
!124 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125, i64 16, i64 4, !125, i64 20, i64 4, !125, i64 24, i64 4, !125, i64 28, i64 4, !125, i64 32, i64 4, !125, i64 40, i64 8, !37, i64 48, i64 8, !80}
!125 = !{!7, !7, i64 0}
!126 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125, i64 16, i64 4, !125, i64 20, i64 4, !125, i64 24, i64 4, !125, i64 28, i64 4, !125, i64 36, i64 8, !37, i64 44, i64 8, !80}
!127 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125, i64 16, i64 4, !125, i64 20, i64 4, !125, i64 24, i64 4, !125, i64 32, i64 8, !37, i64 40, i64 8, !80}
!128 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125, i64 16, i64 4, !125, i64 20, i64 4, !125, i64 28, i64 8, !37, i64 36, i64 8, !80}
!129 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125, i64 16, i64 4, !125, i64 24, i64 8, !37, i64 32, i64 8, !80}
!130 = !{i64 0, i64 4, !125, i64 4, i64 4, !125, i64 8, i64 4, !125, i64 12, i64 4, !125, i64 20, i64 8, !37, i64 28, i64 8, !80}
!131 = !{i64 0, i64 8, !80, i64 8, i64 8, !37, i64 8, i64 8, !80, i64 16, i64 16, !55, i64 32, i64 4, !125, i64 40, i64 8, !80, i64 8, i64 8, !80, i64 16, i64 4, !55, i64 20, i64 16, !55, i64 36, i64 2, !132, i64 8, i64 8, !80, i64 48, i64 4, !125, i64 52, i64 4, !125, i64 56, i64 16, !55, i64 72, i64 8, !80, i64 80, i64 8, !37, i64 88, i64 8, !80}
!132 = !{!12, !12, i64 0}
