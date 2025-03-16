; ModuleID = 'gdevpbm.c'
source_filename = "gdevpbm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gx_device_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_pbm_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [944 x i8], %struct.gx_printer_device_procs_s, %struct.gdev_prn_space_params_s, [80 x i8], i32, i32, i32, i32, i32, i32, ptr, i64, ptr, %struct.gx_device_procs_s, i8, [71 x i8], i8, i8, i8, i32, i32 }
%struct.gx_device_color_info_s = type { i32, i32, i16, i16, i16, i16 }
%struct.gx_page_device_procs_s = type { ptr, ptr, ptr }
%struct.gx_printer_device_procs_s = type { ptr, ptr, ptr }
%struct.gdev_prn_space_params_s = type { i64, i64, %struct.gx_band_params_s }
%struct.gx_band_params_s = type { i32, i32, i64 }
%struct.gs_memory_s = type { %struct.gs_memory_procs_s }
%struct.gs_memory_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s }
%struct.gs_param_list_procs_s = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gx_device_printer_s = type { i32, ptr, ptr, ptr, ptr, i32, i32, %struct.gx_device_color_info_s, i32, i32, [2 x float], [4 x float], i32, [2 x float], [2 x float], [2 x float], [4 x float], i64, i64, i32, %struct.gx_page_device_procs_s, %struct.gx_device_procs_s, [944 x i8], %struct.gx_printer_device_procs_s, %struct.gdev_prn_space_params_s, [80 x i8], i32, i32, i32, i32, i32, i32, ptr, i64, ptr, %struct.gx_device_procs_s }

@pbm_procs = internal global %struct.gx_device_procs_s { ptr @gdev_prn_open, ptr null, ptr null, ptr @ppm_output_page, ptr @gdev_prn_close, ptr @gx_default_b_w_map_rgb_color, ptr @gx_default_b_w_map_color_rgb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdev_prn_get_params, ptr @gdev_prn_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"pbm\00", align 1
@gs_pbm_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pbm_procs, ptr @.str, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 0, i16 2, i16 1 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pbm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 49, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"pbmraw\00", align 1
@gs_pbmraw_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pbm_procs, ptr @.str.1, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 1, i16 1, i16 1, i16 2, i16 2 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pbm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 52, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 1, i32 1 }, align 8
@pgm_procs = internal global %struct.gx_device_procs_s { ptr @ppm_open, ptr null, ptr null, ptr @ppm_output_page, ptr @gdev_prn_close, ptr @pgm_map_rgb_color, ptr @pgm_map_color_rgb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdev_prn_get_params, ptr @ppm_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr @ppm_get_alpha_bits, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"pgm\00", align 1
@gs_pgm_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pgm_procs, ptr @.str.2, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 8, i16 255, i16 0, i16 256, i16 1 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pgm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 50, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"pgmraw\00", align 1
@gs_pgmraw_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pgm_procs, ptr @.str.3, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 8, i16 255, i16 0, i16 256, i16 1 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pgm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 53, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"pgnm\00", align 1
@gs_pgnm_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pgm_procs, ptr @.str.4, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 8, i16 255, i16 0, i16 256, i16 1 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pgm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 50, [71 x i8] zeroinitializer, i8 0, i8 1, i8 0, i32 1, i32 1 }, align 8
@.str.5 = private unnamed_addr constant [8 x i8] c"pgnmraw\00", align 1
@gs_pgnmraw_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pgm_procs, ptr @.str.5, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 1, i32 8, i16 255, i16 0, i16 256, i16 1 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pgm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 53, [71 x i8] zeroinitializer, i8 1, i8 1, i8 0, i32 1, i32 1 }, align 8
@ppm_procs = internal global %struct.gx_device_procs_s { ptr @ppm_open, ptr null, ptr null, ptr @ppm_output_page, ptr @gdev_prn_close, ptr @ppm_map_rgb_color, ptr @ppm_map_color_rgb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdev_prn_get_params, ptr @ppm_put_params, ptr null, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr @ppm_get_alpha_bits, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"ppm\00", align 1
@gs_ppm_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @ppm_procs, ptr @.str.6, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @ppm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 51, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"ppmraw\00", align 1
@gs_ppmraw_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @ppm_procs, ptr @.str.7, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @ppm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 54, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"pnm\00", align 1
@gs_pnm_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @ppm_procs, ptr @.str.8, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @ppm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 51, [71 x i8] zeroinitializer, i8 0, i8 1, i8 0, i32 1, i32 1 }, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"pnmraw\00", align 1
@gs_pnmraw_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @ppm_procs, ptr @.str.9, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 3, i32 24, i16 255, i16 255, i16 256, i16 256 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @ppm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 54, [71 x i8] zeroinitializer, i8 1, i8 1, i8 0, i32 1, i32 1 }, align 8
@pkm_procs = internal global %struct.gx_device_procs_s { ptr @ppm_open, ptr null, ptr null, ptr @ppm_output_page, ptr @gdev_prn_close, ptr null, ptr @pkm_map_color_rgb, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gdev_prn_get_params, ptr @ppm_put_params, ptr @pkm_map_cmyk_color, ptr null, ptr null, ptr null, ptr @gx_page_device_get_page_device, ptr @ppm_get_alpha_bits, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"pkm\00", align 1
@gs_pkm_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pkm_procs, ptr @.str.10, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i16 1, i16 1, i16 2, i16 2 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pkm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 51, [71 x i8] zeroinitializer, i8 0, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.11 = private unnamed_addr constant [7 x i8] c"pkmraw\00", align 1
@gs_pkmraw_device = dso_local local_unnamed_addr global %struct.gx_device_pbm_s { i32 2000, ptr @pkm_procs, ptr @.str.11, ptr null, ptr null, i32 0, i32 0, %struct.gx_device_color_info_s { i32 4, i32 4, i16 1, i16 1, i16 2, i16 2 }, i32 612, i32 792, [2 x float] [float 6.120000e+02, float 7.920000e+02], [4 x float] zeroinitializer, i32 0, [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] [float 7.200000e+01, float 7.200000e+01], [2 x float] zeroinitializer, [4 x float] zeroinitializer, i64 0, i64 0, i32 0, %struct.gx_page_device_procs_s { ptr @gx_default_install, ptr @gx_default_begin_page, ptr @gx_default_end_page }, %struct.gx_device_procs_s zeroinitializer, [944 x i8] zeroinitializer, %struct.gx_printer_device_procs_s { ptr @pkm_print_page, ptr @gx_default_print_page_copies, ptr @gx_default_make_buffer_device }, %struct.gdev_prn_space_params_s { i64 10000000, i64 1000000, %struct.gx_band_params_s zeroinitializer }, [80 x i8] zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 -1, i32 0, ptr null, i64 0, ptr null, %struct.gx_device_procs_s zeroinitializer, i8 54, [71 x i8] zeroinitializer, i8 1, i8 0, i8 0, i32 1, i32 1 }, align 8
@.str.12 = private unnamed_addr constant [11 x i8] c"GrayValues\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"RedValues\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"GreenValues\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"BlueValues\00", align 1
@ppm_put_params.depths = internal unnamed_addr constant <{ [16 x i8], [16 x i8], <{ [8 x i8], [8 x i8] }>, <{ [8 x i8], [8 x i8] }> }> <{ [16 x i8] c"\01\02\00\04\00\00\00\08\00\00\00\00\00\00\00\10", [16 x i8] zeroinitializer, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\04\08\00\10\10\00\00\18", [8 x i8] zeroinitializer }>, <{ [8 x i8], [8 x i8] }> <{ [8 x i8] c"\04\08\00\10\00\00\00\18", [8 x i8] zeroinitializer }> }>, align 16
@.str.16 = private unnamed_addr constant [14 x i8] c"TextAlphaBits\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"GraphicsAlphaBits\00", align 1
@gs_memory_default = external global %struct.gs_memory_s, align 8
@.str.18 = private unnamed_addr constant [15 x i8] c"pbm_begin_page\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"P%c\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"# Image generated by %s (device=%s)\0A\00", align 1
@gs_product = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"pbm_print_page_loop\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"%d %d \00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%d %d %d%c\00", align 1

declare i32 @gx_default_install(ptr noundef, ptr noundef) #0

declare i32 @gx_default_begin_page(ptr noundef, ptr noundef) #0

declare i32 @gx_default_end_page(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @pbm_print_page(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 36
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %4, ptr noundef %1, ptr noundef nonnull @pbm_print_row)
  ret i32 %5
}

declare i32 @gx_default_print_page_copies(ptr noundef, ptr noundef, i32 noundef) #0

declare i32 @gx_default_make_buffer_device(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @pgm_print_page(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  %4 = load i8, ptr %3, align 2, !tbaa !19
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 39
  %8 = load i8, ptr %7, align 1, !tbaa !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 36
  %12 = load i8, ptr %11, align 8, !tbaa !5
  %13 = add i8 %12, -1
  %14 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %13, ptr noundef %1, ptr noundef nonnull @pxm_pbm_print_row)
  br label %19

15:                                               ; preds = %6, %2
  %16 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 36
  %17 = load i8, ptr %16, align 8, !tbaa !5
  %18 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %17, ptr noundef %1, ptr noundef nonnull @pgm_print_row)
  br label %19

19:                                               ; preds = %15, %10
  %20 = phi i32 [ %14, %10 ], [ %18, %15 ]
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal i32 @ppm_print_page(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  %4 = load i8, ptr %3, align 2, !tbaa !19
  %5 = icmp ugt i8 %4, 1
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 39
  %8 = load i8, ptr %7, align 1, !tbaa !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 36
  %12 = load i8, ptr %11, align 8, !tbaa !5
  %13 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %12, ptr noundef %1, ptr noundef nonnull @ppm_print_row)
  br label %24

14:                                               ; preds = %6
  %15 = icmp eq i8 %4, 1
  %16 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 36
  %17 = load i8, ptr %16, align 8, !tbaa !5
  br i1 %15, label %18, label %21

18:                                               ; preds = %14
  %19 = add i8 %17, -1
  %20 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %19, ptr noundef %1, ptr noundef nonnull @ppm_pgm_print_row)
  br label %24

21:                                               ; preds = %14
  %22 = add i8 %17, -2
  %23 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %22, ptr noundef %1, ptr noundef nonnull @pxm_pbm_print_row)
  br label %24

24:                                               ; preds = %18, %21, %10
  %25 = phi i32 [ %13, %10 ], [ %20, %18 ], [ %23, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define internal i32 @pkm_print_page(ptr noundef %0, ptr noundef %1) #1 {
  %3 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 36
  %4 = load i8, ptr %3, align 8, !tbaa !5
  %5 = tail call fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %4, ptr noundef %1, ptr noundef nonnull @pkm_print_row)
  ret i32 %5
}

declare i32 @gdev_prn_open(ptr noundef) #0

; Function Attrs: nounwind uwtable
define internal i32 @ppm_output_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = tail call i32 @gdev_prn_output_page(ptr noundef %0, i32 noundef %1, i32 noundef %2) #10
  %5 = icmp slt i32 %4, 0
  %6 = icmp eq i32 %2, 0
  %7 = or i1 %6, %5
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  store i8 0, ptr %9, align 2, !tbaa !19
  br label %10

10:                                               ; preds = %8, %3
  ret i32 %4
}

declare i32 @gdev_prn_close(ptr noundef) #0

declare i64 @gx_default_b_w_map_rgb_color(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) #0

declare i32 @gx_default_b_w_map_color_rgb(ptr noundef, i64 noundef, ptr noundef) #0

declare i32 @gdev_prn_get_params(ptr noundef, ptr noundef) #0

declare i32 @gdev_prn_put_params(ptr noundef, ptr noundef) #0

declare ptr @gx_page_device_get_page_device(ptr noundef) #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare i32 @gdev_prn_output_page(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define internal i32 @ppm_open(ptr noundef %0) #1 {
  %2 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  store i8 0, ptr %2, align 2, !tbaa !19
  %3 = tail call i32 @gdev_prn_open(ptr noundef %0) #10
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i64 @pgm_map_rgb_color(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #3 {
  %5 = zext i16 %1 to i64
  %6 = mul nuw nsw i64 %5, 30
  %7 = zext i16 %2 to i64
  %8 = mul nuw nsw i64 %7, 59
  %9 = zext i16 %3 to i64
  %10 = mul nuw nsw i64 %9, 11
  %11 = add nuw nsw i64 %6, 50
  %12 = add nuw nsw i64 %11, %8
  %13 = add nuw nsw i64 %12, %10
  %14 = udiv i64 %13, 100
  %15 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %16 = load i16, ptr %15, align 8, !tbaa !21
  %17 = zext i16 %16 to i64
  %18 = mul nuw nsw i64 %14, %17
  %19 = udiv i64 %18, 65535
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 0
  %22 = trunc i64 %19 to i16
  %23 = icmp eq i16 %16, %22
  %24 = or i1 %21, %23
  br i1 %24, label %27, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  store i8 1, ptr %26, align 2, !tbaa !19
  br label %27

27:                                               ; preds = %25, %4
  ret i64 %20
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @pgm_map_color_rgb(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = mul i64 %1, 65535
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  %6 = load i16, ptr %5, align 8, !tbaa !21
  %7 = zext i16 %6 to i64
  %8 = udiv i64 %4, %7
  %9 = trunc i64 %8 to i16
  store i16 %9, ptr %2, align 2, !tbaa !23
  %10 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %9, ptr %10, align 2, !tbaa !23
  %11 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %9, ptr %11, align 2, !tbaa !23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @ppm_put_params(ptr noundef %0, ptr noundef %1) #1 {
  %3 = alloca %struct.gx_device_color_info_s, align 4
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3)
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !24
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !25
  %9 = sdiv i32 %8, %6
  %10 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 41
  %11 = load i32, ptr %10, align 4, !tbaa !26
  %12 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 42
  %13 = load i32, ptr %12, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !28
  %14 = load ptr, ptr %1, align 8, !tbaa !30
  %15 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !32
  %17 = call i32 %16(ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %4) #10
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %37

19:                                               ; preds = %2
  %20 = load ptr, ptr %1, align 8, !tbaa !30
  %21 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %20, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !32
  %23 = call i32 %22(ptr noundef nonnull %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %4) #10
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %37

25:                                               ; preds = %19
  %26 = load ptr, ptr %1, align 8, !tbaa !30
  %27 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !32
  %29 = call i32 %28(ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %4) #10
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load ptr, ptr %1, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !32
  %35 = call i32 %34(ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull %4) #10
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %89, label %37

37:                                               ; preds = %31, %25, %19, %2
  %38 = phi i32 [ %17, %2 ], [ %23, %19 ], [ %29, %25 ], [ %35, %31 ]
  %39 = phi ptr [ @.str.12, %2 ], [ @.str.13, %19 ], [ @.str.14, %25 ], [ @.str.15, %31 ]
  %40 = icmp slt i32 %38, 0
  br i1 %40, label %70, label %41

41:                                               ; preds = %37
  %42 = load i64, ptr %4, align 8, !tbaa !34
  %43 = icmp slt i64 %42, 2
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 38
  %46 = load i8, ptr %45, align 8, !tbaa !35
  %47 = icmp ne i8 %46, 0
  %48 = icmp sgt i32 %6, 1
  %49 = or i1 %48, %47
  %50 = select i1 %49, i64 256, i64 65536
  %51 = icmp sgt i64 %42, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %44, %41
  %53 = load ptr, ptr %1, align 8, !tbaa !30
  %54 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %53, i64 0, i32 15
  %55 = load ptr, ptr %54, align 8, !tbaa !36
  %56 = call i32 %55(ptr noundef nonnull %1, ptr noundef nonnull %39, i32 noundef -15) #10
  br label %70

57:                                               ; preds = %44
  %58 = icmp eq i64 %42, 2
  br i1 %58, label %70, label %59

59:                                               ; preds = %57
  %60 = icmp slt i64 %42, 5
  br i1 %60, label %70, label %61

61:                                               ; preds = %59
  %62 = icmp slt i64 %42, 17
  br i1 %62, label %70, label %63

63:                                               ; preds = %61
  %64 = icmp slt i64 %42, 33
  %65 = icmp eq i32 %6, 3
  %66 = and i1 %65, %64
  br i1 %66, label %70, label %67

67:                                               ; preds = %63
  %68 = icmp slt i64 %42, 257
  %69 = select i1 %68, i32 8, i32 16
  br label %70

70:                                               ; preds = %67, %63, %61, %59, %57, %37, %52
  %71 = phi i32 [ -15, %52 ], [ %38, %37 ], [ 0, %57 ], [ 0, %59 ], [ 0, %61 ], [ 0, %63 ], [ 0, %67 ]
  %72 = phi i32 [ %9, %52 ], [ %9, %37 ], [ 1, %57 ], [ 2, %59 ], [ 4, %61 ], [ 5, %63 ], [ %69, %67 ]
  %73 = icmp sgt i32 %71, -1
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = add nsw i32 %6, -1
  %76 = sext i32 %75 to i64
  %77 = add nsw i32 %72, -1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x [16 x i8]], ptr @ppm_put_params.depths, i64 0, i64 %76, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !37
  %81 = zext i8 %80 to i32
  store i32 %81, ptr %7, align 4, !tbaa !25
  %82 = load i64, ptr %4, align 8, !tbaa !34
  %83 = trunc i64 %82 to i16
  %84 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 5
  store i16 %83, ptr %84, align 2, !tbaa !38
  %85 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 4
  store i16 %83, ptr %85, align 4, !tbaa !39
  %86 = add i16 %83, -1
  %87 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  store i16 %86, ptr %87, align 2, !tbaa !40
  %88 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 2
  store i16 %86, ptr %88, align 8, !tbaa !21
  br label %89

89:                                               ; preds = %70, %74, %31
  %90 = phi i32 [ 0, %74 ], [ %71, %70 ], [ 0, %31 ]
  %91 = phi i32 [ %72, %74 ], [ %72, %70 ], [ %9, %31 ]
  %92 = icmp slt i32 %91, 5
  %93 = load ptr, ptr %1, align 8, !tbaa !30
  %94 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !41
  %96 = call i32 %95(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, ptr noundef nonnull %10) #10
  switch i32 %96, label %100 [
    i32 0, label %97
    i32 1, label %106
  ]

97:                                               ; preds = %89
  %98 = load i32, ptr %10, align 4, !tbaa !29
  switch i32 %98, label %100 [
    i32 1, label %106
    i32 2, label %99
    i32 4, label %99
  ]

99:                                               ; preds = %97, %97
  br i1 %92, label %100, label %106

100:                                              ; preds = %99, %97, %89
  %101 = phi i32 [ %96, %89 ], [ -15, %99 ], [ -15, %97 ]
  %102 = load ptr, ptr %1, align 8, !tbaa !30
  %103 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %102, i64 0, i32 15
  %104 = load ptr, ptr %103, align 8, !tbaa !36
  %105 = call i32 %104(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, i32 noundef %101) #10
  br label %106

106:                                              ; preds = %89, %97, %99, %100
  %107 = phi i32 [ 0, %97 ], [ 0, %99 ], [ %101, %100 ], [ %96, %89 ]
  %108 = icmp slt i32 %107, 0
  %109 = select i1 %108, i32 %107, i32 %90
  %110 = load ptr, ptr %1, align 8, !tbaa !30
  %111 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !41
  %113 = call i32 %112(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef nonnull %12) #10
  switch i32 %113, label %117 [
    i32 0, label %114
    i32 1, label %123
  ]

114:                                              ; preds = %106
  %115 = load i32, ptr %12, align 4, !tbaa !29
  switch i32 %115, label %117 [
    i32 1, label %123
    i32 2, label %116
    i32 4, label %116
  ]

116:                                              ; preds = %114, %114
  br i1 %92, label %117, label %123

117:                                              ; preds = %116, %114, %106
  %118 = phi i32 [ %113, %106 ], [ -15, %116 ], [ -15, %114 ]
  %119 = load ptr, ptr %1, align 8, !tbaa !30
  %120 = getelementptr inbounds %struct.gs_param_list_procs_s, ptr %119, i64 0, i32 15
  %121 = load ptr, ptr %120, align 8, !tbaa !36
  %122 = call i32 %121(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, i32 noundef %118) #10
  br label %123

123:                                              ; preds = %106, %114, %116, %117
  %124 = phi i32 [ 0, %114 ], [ 0, %116 ], [ %118, %117 ], [ %113, %106 ]
  %125 = icmp slt i32 %124, 0
  %126 = select i1 %125, i32 %124, i32 %109
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %123
  %129 = call i32 @gdev_prn_put_params(ptr noundef %0, ptr noundef nonnull %1) #10
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128, %123
  %132 = phi i32 [ %126, %123 ], [ %129, %128 ]
  store i32 %11, ptr %10, align 4, !tbaa !26
  store i32 %13, ptr %12, align 8, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !28
  br label %133

133:                                              ; preds = %131, %128
  %134 = phi i32 [ %132, %131 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3)
  ret i32 %134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @ppm_get_alpha_bits(ptr nocapture noundef readonly %0, i32 noundef %1) #4 {
  %3 = icmp eq i32 %1, 0
  %4 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 41
  %5 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 42
  %6 = select i1 %3, ptr %4, ptr %5
  %7 = load i32, ptr %6, align 4, !tbaa !29
  ret i32 %7
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal i64 @ppm_map_rgb_color(ptr nocapture noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3) #3 {
  %5 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !25
  %7 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !40
  %9 = zext i16 %8 to i64
  %10 = zext i16 %1 to i64
  %11 = mul nuw nsw i64 %9, %10
  %12 = udiv i64 %11, 65535
  %13 = zext i16 %2 to i64
  %14 = mul nuw nsw i64 %9, %13
  %15 = udiv i64 %14, 65535
  %16 = zext i16 %3 to i64
  %17 = mul nuw nsw i64 %9, %16
  %18 = udiv i64 %17, 65535
  %19 = trunc i64 %12 to i32
  %20 = and i32 %19, 65535
  %21 = trunc i64 %15 to i32
  %22 = and i32 %21, 65535
  %23 = icmp eq i32 %20, %22
  %24 = trunc i64 %18 to i32
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %22, %25
  %27 = select i1 %23, i1 %26, i1 false
  br i1 %27, label %28, label %37

28:                                               ; preds = %4
  %29 = icmp eq i32 %20, 0
  %30 = trunc i64 %12 to i16
  %31 = icmp eq i16 %8, %30
  %32 = or i1 %31, %29
  br i1 %32, label %39, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  %35 = load i8, ptr %34, align 2, !tbaa !19
  %36 = or i8 %35, 1
  store i8 %36, ptr %34, align 2, !tbaa !19
  br label %39

37:                                               ; preds = %4
  %38 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 40
  store i8 2, ptr %38, align 2, !tbaa !19
  br label %39

39:                                               ; preds = %28, %33, %37
  %40 = sdiv i32 %6, 3
  %41 = and i64 %12, 65535
  %42 = zext i32 %40 to i64
  %43 = shl i64 %41, %42
  %44 = and i64 %15, 65535
  %45 = add i64 %43, %44
  %46 = shl i64 %45, %42
  %47 = and i64 %18, 65535
  %48 = add i64 %46, %47
  ret i64 %48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @ppm_map_color_rgb(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = sdiv i32 %5, 3
  %7 = shl nsw i32 -1, %6
  %8 = xor i32 %7, -1
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !40
  %11 = shl nsw i32 %6, 1
  %12 = zext nneg i32 %11 to i64
  %13 = lshr i64 %1, %12
  %14 = zext nneg i32 %8 to i64
  %15 = and i64 %13, %14
  %16 = mul nuw nsw i64 %15, 65535
  %17 = zext i16 %10 to i64
  %18 = udiv i64 %16, %17
  %19 = trunc i64 %18 to i16
  store i16 %19, ptr %2, align 2, !tbaa !23
  %20 = zext nneg i32 %6 to i64
  %21 = lshr i64 %1, %20
  %22 = and i64 %21, %14
  %23 = mul nuw nsw i64 %22, 65535
  %24 = udiv i64 %23, %17
  %25 = trunc i64 %24 to i16
  %26 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %25, ptr %26, align 2, !tbaa !23
  %27 = and i64 %14, %1
  %28 = mul nuw nsw i64 %27, 65535
  %29 = udiv i64 %28, %17
  %30 = trunc i64 %29 to i16
  %31 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %30, ptr %31, align 2, !tbaa !23
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i32 @pkm_map_color_rgb(ptr nocapture noundef readonly %0, i64 noundef %1, ptr nocapture noundef writeonly %2) #3 {
  %4 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !25
  %6 = ashr i32 %5, 2
  %7 = shl nsw i32 -1, %6
  %8 = xor i32 %7, -1
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !40
  %11 = zext i16 %10 to i32
  %12 = trunc i64 %1 to i32
  %13 = and i32 %8, %12
  %14 = zext i32 %6 to i64
  %15 = lshr i64 %1, %14
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, %8
  %18 = lshr i64 %15, %14
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, %8
  %21 = lshr i64 %18, %14
  %22 = trunc i64 %21 to i32
  %23 = sub i32 %11, %22
  %24 = sub nsw i32 %11, %13
  %25 = mul i32 %23, %24
  %26 = udiv i32 %25, %11
  %27 = zext i32 %26 to i64
  %28 = mul nuw nsw i64 %27, 65535
  %29 = zext i16 %10 to i64
  %30 = udiv i64 %28, %29
  %31 = trunc i64 %30 to i16
  store i16 %31, ptr %2, align 2, !tbaa !23
  %32 = sub nsw i32 %11, %20
  %33 = mul i32 %32, %24
  %34 = udiv i32 %33, %11
  %35 = zext i32 %34 to i64
  %36 = mul nuw nsw i64 %35, 65535
  %37 = udiv i64 %36, %29
  %38 = trunc i64 %37 to i16
  %39 = getelementptr inbounds i16, ptr %2, i64 1
  store i16 %38, ptr %39, align 2, !tbaa !23
  %40 = sub nsw i32 %11, %17
  %41 = mul i32 %40, %24
  %42 = udiv i32 %41, %11
  %43 = zext i32 %42 to i64
  %44 = mul nuw nsw i64 %43, 65535
  %45 = udiv i64 %44, %29
  %46 = trunc i64 %45 to i16
  %47 = getelementptr inbounds i16, ptr %2, i64 2
  store i16 %46, ptr %47, align 2, !tbaa !23
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @pkm_map_cmyk_color(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) #6 {
  %6 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !25
  %8 = ashr i32 %7, 2
  %9 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 3
  %10 = load i16, ptr %9, align 2, !tbaa !40
  %11 = zext i16 %10 to i64
  %12 = zext i16 %1 to i64
  %13 = mul nuw nsw i64 %11, %12
  %14 = udiv i64 %13, 65535
  %15 = zext i16 %2 to i64
  %16 = mul nuw nsw i64 %11, %15
  %17 = udiv i64 %16, 65535
  %18 = zext i16 %3 to i64
  %19 = mul nuw nsw i64 %11, %18
  %20 = udiv i64 %19, 65535
  %21 = zext i16 %4 to i64
  %22 = mul nuw nsw i64 %11, %21
  %23 = udiv i64 %22, 65535
  %24 = zext i32 %8 to i64
  %25 = shl i64 %14, %24
  %26 = add i64 %25, %17
  %27 = shl i64 %26, %24
  %28 = add i64 %27, %20
  %29 = shl i64 %28, %24
  %30 = add i64 %29, %23
  %31 = tail call i64 @llvm.umin.i64(i64 %30, i64 -2)
  ret i64 %31
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @pbm_print_page_loop(ptr noundef %0, i8 noundef signext %1, ptr noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #1 {
  %5 = alloca ptr, align 8
  %6 = tail call i32 @gx_device_raster(ptr noundef %0, i32 noundef 0) #10
  %7 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 4), align 8, !tbaa !42
  %8 = tail call ptr %7(ptr noundef nonnull @gs_memory_default, i32 noundef %6, i32 noundef 1, ptr noundef nonnull @.str.18) #10
  %9 = icmp eq ptr %8, null
  br i1 %9, label %61, label %10

10:                                               ; preds = %4
  %11 = sext i8 %1 to i32
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.19, i32 noundef %11)
  %13 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 37
  %14 = load i8, ptr %13, align 1, !tbaa !37
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %13)
  br label %23

18:                                               ; preds = %10
  %19 = load ptr, ptr @gs_product, align 8, !tbaa !45
  %20 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.21, ptr noundef %19, ptr noundef %21)
  br label %23

23:                                               ; preds = %18, %16
  %24 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %25 = load i32, ptr %24, align 8, !tbaa !48
  %26 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 9
  %27 = load i32, ptr %26, align 4, !tbaa !49
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.22, i32 noundef %25, i32 noundef %27)
  switch i8 %1, label %29 [
    i8 49, label %34
    i8 52, label %34
  ]

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 7, i32 2
  %31 = load i16, ptr %30, align 8, !tbaa !50
  %32 = zext i16 %31 to i32
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.23, i32 noundef %32)
  br label %34

34:                                               ; preds = %23, %23, %29
  %35 = load i32, ptr %26, align 4, !tbaa !49
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 7, i32 1
  br label %43

39:                                               ; preds = %53
  %40 = add nuw nsw i32 %44, 1
  %41 = load i32, ptr %26, align 4, !tbaa !49
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57, !llvm.loop !51

43:                                               ; preds = %37, %39
  %44 = phi i32 [ 0, %37 ], [ %40, %39 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #10
  %45 = call i32 @gdev_prn_get_bits(ptr noundef %0, i32 noundef %44, ptr noundef nonnull %8, ptr noundef nonnull %5) #10
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %5, align 8, !tbaa !45
  %49 = load i32, ptr %38, align 4, !tbaa !53
  %50 = call i32 %3(ptr noundef %0, ptr noundef %48, i32 noundef %49, ptr noundef %2) #10
  %51 = icmp slt i32 %50, 0
  %52 = select i1 %51, i32 3, i32 0
  br label %53

53:                                               ; preds = %47, %43
  %54 = phi i32 [ %45, %43 ], [ %50, %47 ]
  %55 = phi i32 [ 3, %43 ], [ %52, %47 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %39, label %57

57:                                               ; preds = %39, %53, %34
  %58 = phi i32 [ 0, %34 ], [ %54, %53 ], [ %54, %39 ]
  %59 = load ptr, ptr getelementptr inbounds (%struct.gs_memory_s, ptr @gs_memory_default, i64 0, i32 0, i32 11), align 8, !tbaa !54
  call void %59(ptr noundef nonnull @gs_memory_default, ptr noundef nonnull %8, ptr noundef nonnull @.str.24) #10
  %60 = call i32 @llvm.smin.i32(i32 %58, i32 0)
  br label %61

61:                                               ; preds = %4, %57
  %62 = phi i32 [ %60, %57 ], [ -25, %4 ]
  ret i32 %62
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @pbm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 %2, ptr nocapture noundef %3) #7 {
  %5 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 38
  %6 = load i8, ptr %5, align 8, !tbaa !35
  %7 = icmp eq i8 %6, 0
  %8 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %9 = load i32, ptr %8, align 8, !tbaa !48
  br i1 %7, label %10, label %12

10:                                               ; preds = %4
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %43, label %17

12:                                               ; preds = %4
  %13 = add nsw i32 %9, 7
  %14 = ashr i32 %13, 3
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %15, ptr noundef %3)
  br label %43

17:                                               ; preds = %10, %35
  %18 = phi i32 [ %40, %35 ], [ 128, %10 ]
  %19 = phi i32 [ %27, %35 ], [ 0, %10 ]
  %20 = phi ptr [ %39, %35 ], [ %1, %10 ]
  %21 = load i8, ptr %20, align 1, !tbaa !37
  %22 = zext i8 %21 to i32
  %23 = and i32 %18, %22
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 48, i32 49
  %26 = tail call i32 @putc(i32 noundef %25, ptr noundef %3)
  %27 = add nuw i32 %19, 1
  %28 = load i32, ptr %8, align 8, !tbaa !48
  %29 = icmp eq i32 %27, %28
  %30 = and i32 %27, 63
  %31 = icmp eq i32 %30, 0
  %32 = or i1 %31, %29
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = tail call i32 @putc(i32 noundef 10, ptr noundef %3)
  br label %35

35:                                               ; preds = %17, %33
  %36 = lshr i32 %18, 1
  %37 = icmp ult i32 %18, 2
  %38 = zext i1 %37 to i64
  %39 = getelementptr inbounds i8, ptr %20, i64 %38
  %40 = select i1 %37, i32 128, i32 %36
  %41 = load i32, ptr %8, align 8, !tbaa !48
  %42 = icmp ult i32 %27, %41
  br i1 %42, label %17, label %43, !llvm.loop !55

43:                                               ; preds = %35, %10, %12
  ret i32 0
}

declare i32 @gx_device_raster(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

declare i32 @gdev_prn_get_bits(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @pxm_pbm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  %5 = add nsw i32 %2, 7
  %6 = ashr i32 %5, 3
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds i8, ptr %1, i64 %7
  %9 = getelementptr inbounds i8, ptr %8, i64 -1
  %10 = icmp sgt i32 %2, 7
  br i1 %10, label %11, label %38

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %73

15:                                               ; preds = %11, %30
  %16 = phi i8 [ %33, %30 ], [ 0, %11 ]
  %17 = phi i8 [ %32, %30 ], [ -128, %11 ]
  %18 = phi i32 [ %34, %30 ], [ 0, %11 ]
  %19 = phi ptr [ %31, %30 ], [ %1, %11 ]
  %20 = phi ptr [ %35, %30 ], [ %9, %11 ]
  %21 = load i8, ptr %20, align 1, !tbaa !37
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  %24 = select i1 %23, i8 %17, i8 0
  %25 = or i8 %24, %16
  %26 = lshr i8 %17, 1
  %27 = icmp ult i8 %17, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 %25, ptr %19, align 1, !tbaa !37
  br label %30

30:                                               ; preds = %15, %28
  %31 = phi ptr [ %19, %15 ], [ %29, %28 ]
  %32 = phi i8 [ %26, %15 ], [ -128, %28 ]
  %33 = phi i8 [ %25, %15 ], [ 0, %28 ]
  %34 = add nuw nsw i32 %18, 1
  %35 = getelementptr inbounds i8, ptr %20, i64 %7
  %36 = load i32, ptr %12, align 8, !tbaa !48
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %15, label %73, !llvm.loop !56

38:                                               ; preds = %4
  %39 = lshr i32 256, %2
  %40 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %41 = load i32, ptr %40, align 8, !tbaa !48
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %73

43:                                               ; preds = %38, %66
  %44 = phi i32 [ %61, %66 ], [ %39, %38 ]
  %45 = phi i8 [ %69, %66 ], [ 0, %38 ]
  %46 = phi i8 [ %68, %66 ], [ -128, %38 ]
  %47 = phi i32 [ %70, %66 ], [ 0, %38 ]
  %48 = phi ptr [ %67, %66 ], [ %1, %38 ]
  %49 = phi ptr [ %60, %66 ], [ %9, %38 ]
  %50 = load i8, ptr %49, align 1, !tbaa !37
  %51 = zext i8 %50 to i32
  %52 = and i32 %44, 255
  %53 = and i32 %44, %51
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i8 %46, i8 0
  %56 = or i8 %55, %45
  %57 = lshr i32 %52, %2
  %58 = icmp eq i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = getelementptr inbounds i8, ptr %49, i64 %59
  %61 = select i1 %58, i32 %39, i32 %57
  %62 = lshr i8 %46, 1
  %63 = icmp ult i8 %46, 2
  br i1 %63, label %64, label %66

64:                                               ; preds = %43
  %65 = getelementptr inbounds i8, ptr %48, i64 1
  store i8 %56, ptr %48, align 1, !tbaa !37
  br label %66

66:                                               ; preds = %43, %64
  %67 = phi ptr [ %48, %43 ], [ %65, %64 ]
  %68 = phi i8 [ %62, %43 ], [ -128, %64 ]
  %69 = phi i8 [ %56, %43 ], [ 0, %64 ]
  %70 = add nuw nsw i32 %47, 1
  %71 = load i32, ptr %40, align 8, !tbaa !48
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %43, label %73, !llvm.loop !57

73:                                               ; preds = %66, %30, %38, %11
  %74 = phi ptr [ %1, %11 ], [ %1, %38 ], [ %31, %30 ], [ %67, %66 ]
  %75 = phi i8 [ -128, %11 ], [ -128, %38 ], [ %32, %30 ], [ %68, %66 ]
  %76 = phi i8 [ 0, %11 ], [ 0, %38 ], [ %33, %30 ], [ %69, %66 ]
  %77 = icmp eq i8 %75, -128
  br i1 %77, label %79, label %78

78:                                               ; preds = %73
  store i8 %76, ptr %74, align 1, !tbaa !37
  br label %79

79:                                               ; preds = %78, %73
  %80 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 38
  %81 = load i8, ptr %80, align 8, !tbaa !35
  %82 = icmp eq i8 %81, 0
  %83 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %84 = load i32, ptr %83, align 8, !tbaa !48
  br i1 %82, label %85, label %87

85:                                               ; preds = %79
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %118, label %92

87:                                               ; preds = %79
  %88 = add nsw i32 %84, 7
  %89 = ashr i32 %88, 3
  %90 = sext i32 %89 to i64
  %91 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %90, ptr noundef %3)
  br label %118

92:                                               ; preds = %85, %110
  %93 = phi i32 [ %115, %110 ], [ 128, %85 ]
  %94 = phi i32 [ %102, %110 ], [ 0, %85 ]
  %95 = phi ptr [ %114, %110 ], [ %1, %85 ]
  %96 = load i8, ptr %95, align 1, !tbaa !37
  %97 = zext i8 %96 to i32
  %98 = and i32 %93, %97
  %99 = icmp eq i32 %98, 0
  %100 = select i1 %99, i32 48, i32 49
  %101 = tail call i32 @putc(i32 noundef %100, ptr noundef %3)
  %102 = add nuw i32 %94, 1
  %103 = load i32, ptr %83, align 8, !tbaa !48
  %104 = icmp eq i32 %102, %103
  %105 = and i32 %102, 63
  %106 = icmp eq i32 %105, 0
  %107 = or i1 %106, %104
  br i1 %107, label %108, label %110

108:                                              ; preds = %92
  %109 = tail call i32 @putc(i32 noundef 10, ptr noundef %3)
  br label %110

110:                                              ; preds = %108, %92
  %111 = lshr i32 %93, 1
  %112 = icmp ult i32 %93, 2
  %113 = zext i1 %112 to i64
  %114 = getelementptr inbounds i8, ptr %95, i64 %113
  %115 = select i1 %112, i32 128, i32 %111
  %116 = load i32, ptr %83, align 8, !tbaa !48
  %117 = icmp ult i32 %102, %116
  br i1 %117, label %92, label %118, !llvm.loop !55

118:                                              ; preds = %110, %85, %87
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @pgm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  %5 = shl nsw i32 -1, %2
  %6 = xor i32 %5, -1
  %7 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 38
  %8 = load i8, ptr %7, align 8, !tbaa !35
  %9 = icmp ne i8 %8, 0
  %10 = icmp eq i32 %2, 8
  %11 = and i1 %10, %9
  %12 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !48
  br i1 %11, label %14, label %17

14:                                               ; preds = %4
  %15 = sext i32 %13 to i64
  %16 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %15, ptr noundef %3)
  br label %63

17:                                               ; preds = %4
  %18 = icmp eq i32 %13, 0
  br i1 %18, label %63, label %19

19:                                               ; preds = %17
  %20 = sub nsw i32 8, %2
  br label %21

21:                                               ; preds = %19, %60
  %22 = phi i32 [ %61, %60 ], [ %13, %19 ]
  %23 = phi i32 [ %46, %60 ], [ %20, %19 ]
  %24 = phi i32 [ %48, %60 ], [ 0, %19 ]
  %25 = phi ptr [ %45, %60 ], [ %1, %19 ]
  %26 = icmp slt i32 %23, 0
  %27 = load i8, ptr %25, align 1, !tbaa !37
  %28 = zext i8 %27 to i32
  br i1 %26, label %29, label %36

29:                                               ; preds = %21
  %30 = shl nuw nsw i32 %28, 8
  %31 = getelementptr inbounds i8, ptr %25, i64 1
  %32 = load i8, ptr %31, align 1, !tbaa !37
  %33 = zext i8 %32 to i32
  %34 = or disjoint i32 %30, %33
  %35 = getelementptr inbounds i8, ptr %25, i64 2
  br label %44

36:                                               ; preds = %21
  %37 = lshr i32 %28, %23
  %38 = and i32 %37, %6
  %39 = sub nsw i32 %23, %2
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds i8, ptr %25, i64 1
  %43 = add nsw i32 %39, 8
  br label %44

44:                                               ; preds = %36, %41, %29
  %45 = phi ptr [ %35, %29 ], [ %42, %41 ], [ %25, %36 ]
  %46 = phi i32 [ %23, %29 ], [ %43, %41 ], [ %39, %36 ]
  %47 = phi i32 [ %34, %29 ], [ %38, %41 ], [ %38, %36 ]
  %48 = add nuw i32 %24, 1
  %49 = load i8, ptr %7, align 8, !tbaa !35
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %44
  %52 = tail call i32 @putc(i32 noundef %47, ptr noundef %3)
  br label %60

53:                                               ; preds = %44
  %54 = icmp eq i32 %48, %22
  %55 = and i32 %48, 15
  %56 = icmp eq i32 %55, 0
  %57 = or i1 %54, %56
  %58 = select i1 %57, i32 10, i32 32
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %47, i32 noundef %58)
  br label %60

60:                                               ; preds = %53, %51
  %61 = load i32, ptr %12, align 8, !tbaa !48
  %62 = icmp ult i32 %48, %61
  br i1 %62, label %21, label %63, !llvm.loop !58

63:                                               ; preds = %60, %17, %14
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @ppm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  tail call fastcc void @ppgm_print_row(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @ppm_pgm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  tail call fastcc void @ppgm_print_row(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @ppgm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef %3, i32 noundef %4) unnamed_addr #7 {
  %6 = sdiv i32 %2, 3
  %7 = shl nsw i32 -1, %6
  %8 = xor i32 %7, -1
  %9 = icmp ne i32 %4, 0
  %10 = select i1 %9, i32 7, i32 15
  %11 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 38
  %12 = load i8, ptr %11, align 8, !tbaa !35
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq i32 %2, 24
  %15 = and i1 %14, %13
  %16 = and i1 %9, %15
  %17 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %18 = load i32, ptr %17, align 8, !tbaa !48
  br i1 %16, label %19, label %23

19:                                               ; preds = %5
  %20 = mul nsw i32 %18, 3
  %21 = sext i32 %20 to i64
  %22 = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %21, ptr noundef %3)
  br label %101

23:                                               ; preds = %5
  %24 = icmp eq i32 %18, 0
  br i1 %24, label %101, label %25

25:                                               ; preds = %23
  %26 = sub nsw i32 8, %2
  %27 = ashr i32 %2, 3
  br label %28

28:                                               ; preds = %25, %98
  %29 = phi ptr [ %1, %25 ], [ %72, %98 ]
  %30 = phi i32 [ 0, %25 ], [ %73, %98 ]
  %31 = phi i32 [ %26, %25 ], [ %71, %98 ]
  switch i32 %27, label %69 [
    i32 4, label %32
    i32 3, label %37
    i32 2, label %45
    i32 1, label %53
    i32 0, label %60
  ]

32:                                               ; preds = %28
  %33 = load i8, ptr %29, align 1, !tbaa !37
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  br label %37

37:                                               ; preds = %28, %32
  %38 = phi i32 [ 0, %28 ], [ %35, %32 ]
  %39 = phi ptr [ %29, %28 ], [ %36, %32 ]
  %40 = load i8, ptr %39, align 1, !tbaa !37
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = or disjoint i32 %42, %38
  %44 = getelementptr inbounds i8, ptr %39, i64 1
  br label %45

45:                                               ; preds = %28, %37
  %46 = phi i32 [ 0, %28 ], [ %43, %37 ]
  %47 = phi ptr [ %29, %28 ], [ %44, %37 ]
  %48 = load i8, ptr %47, align 1, !tbaa !37
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = add nuw i32 %50, %46
  %52 = getelementptr inbounds i8, ptr %47, i64 1
  br label %53

53:                                               ; preds = %28, %45
  %54 = phi i32 [ 0, %28 ], [ %51, %45 ]
  %55 = phi ptr [ %29, %28 ], [ %52, %45 ]
  %56 = load i8, ptr %55, align 1, !tbaa !37
  %57 = zext i8 %56 to i32
  %58 = add nuw i32 %54, %57
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  br label %69

60:                                               ; preds = %28
  %61 = load i8, ptr %29, align 1, !tbaa !37
  %62 = zext i8 %61 to i32
  %63 = lshr i32 %62, %31
  %64 = sub nsw i32 %31, %2
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = getelementptr inbounds i8, ptr %29, i64 1
  %68 = add nsw i32 %64, 8
  br label %69

69:                                               ; preds = %60, %66, %28, %53
  %70 = phi i32 [ 0, %28 ], [ %63, %66 ], [ %63, %60 ], [ %58, %53 ]
  %71 = phi i32 [ %31, %28 ], [ %68, %66 ], [ %64, %60 ], [ %31, %53 ]
  %72 = phi ptr [ %29, %28 ], [ %67, %66 ], [ %29, %60 ], [ %59, %53 ]
  %73 = add nuw i32 %30, 1
  %74 = and i32 %70, %8
  %75 = lshr i32 %70, %6
  %76 = and i32 %75, %8
  %77 = lshr i32 %75, %6
  %78 = and i32 %77, %8
  %79 = load i8, ptr %11, align 8, !tbaa !35
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %69
  br i1 %9, label %82, label %85

82:                                               ; preds = %81
  %83 = tail call i32 @putc(i32 noundef %78, ptr noundef %3)
  %84 = tail call i32 @putc(i32 noundef %76, ptr noundef %3)
  br label %85

85:                                               ; preds = %82, %81
  %86 = tail call i32 @putc(i32 noundef %74, ptr noundef %3)
  br label %98

87:                                               ; preds = %69
  br i1 %9, label %88, label %90

88:                                               ; preds = %87
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.26, i32 noundef %78, i32 noundef %76)
  br label %90

90:                                               ; preds = %88, %87
  %91 = load i32, ptr %17, align 8, !tbaa !48
  %92 = icmp eq i32 %73, %91
  %93 = and i32 %73, %10
  %94 = icmp eq i32 %93, 0
  %95 = or i1 %94, %92
  %96 = select i1 %95, i32 10, i32 32
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.25, i32 noundef %74, i32 noundef %96)
  br label %98

98:                                               ; preds = %90, %85
  %99 = load i32, ptr %17, align 8, !tbaa !48
  %100 = icmp ult i32 %73, %99
  br i1 %100, label %28, label %101, !llvm.loop !59

101:                                              ; preds = %98, %23, %19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal noundef i32 @pkm_print_row(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef %3) #7 {
  %5 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 7, i32 3
  %6 = load i16, ptr %5, align 2, !tbaa !60
  %7 = zext i16 %6 to i64
  %8 = icmp sgt i32 %2, 7
  %9 = shl nsw i32 -1, %2
  %10 = xor i32 %9, -1
  %11 = select i1 %8, i32 255, i32 %10
  %12 = getelementptr inbounds %struct.gx_device_printer_s, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !48
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %133, label %15

15:                                               ; preds = %4
  %16 = sub nsw i32 8, %2
  %17 = ashr i32 %2, 3
  %18 = getelementptr inbounds %struct.gx_device_s, ptr %0, i64 0, i32 7, i32 1
  %19 = getelementptr inbounds %struct.gx_device_pbm_s, ptr %0, i64 0, i32 38
  br label %20

20:                                               ; preds = %15, %130
  %21 = phi i32 [ %13, %15 ], [ %131, %130 ]
  %22 = phi ptr [ %1, %15 ], [ %66, %130 ]
  %23 = phi i32 [ 0, %15 ], [ %67, %130 ]
  %24 = phi i32 [ %16, %15 ], [ %65, %130 ]
  switch i32 %17, label %63 [
    i32 4, label %25
    i32 3, label %30
    i32 2, label %38
    i32 1, label %46
    i32 0, label %53
  ]

25:                                               ; preds = %20
  %26 = load i8, ptr %22, align 1, !tbaa !37
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = getelementptr inbounds i8, ptr %22, i64 1
  br label %30

30:                                               ; preds = %20, %25
  %31 = phi i32 [ 0, %20 ], [ %28, %25 ]
  %32 = phi ptr [ %22, %20 ], [ %29, %25 ]
  %33 = load i8, ptr %32, align 1, !tbaa !37
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 16
  %36 = or disjoint i32 %35, %31
  %37 = getelementptr inbounds i8, ptr %32, i64 1
  br label %38

38:                                               ; preds = %20, %30
  %39 = phi i32 [ 0, %20 ], [ %36, %30 ]
  %40 = phi ptr [ %22, %20 ], [ %37, %30 ]
  %41 = load i8, ptr %40, align 1, !tbaa !37
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = add nuw i32 %43, %39
  %45 = getelementptr inbounds i8, ptr %40, i64 1
  br label %46

46:                                               ; preds = %20, %38
  %47 = phi i32 [ 0, %20 ], [ %44, %38 ]
  %48 = phi ptr [ %22, %20 ], [ %45, %38 ]
  %49 = load i8, ptr %48, align 1, !tbaa !37
  %50 = zext i8 %49 to i32
  %51 = add nuw i32 %47, %50
  %52 = getelementptr inbounds i8, ptr %48, i64 1
  br label %63

53:                                               ; preds = %20
  %54 = load i8, ptr %22, align 1, !tbaa !37
  %55 = zext i8 %54 to i32
  %56 = lshr i32 %55, %24
  %57 = and i32 %56, %11
  %58 = sub nsw i32 %24, %2
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = getelementptr inbounds i8, ptr %22, i64 1
  %62 = add nsw i32 %58, 8
  br label %63

63:                                               ; preds = %53, %60, %20, %46
  %64 = phi i32 [ 0, %20 ], [ %57, %60 ], [ %57, %53 ], [ %51, %46 ]
  %65 = phi i32 [ %24, %20 ], [ %62, %60 ], [ %58, %53 ], [ %24, %46 ]
  %66 = phi ptr [ %22, %20 ], [ %61, %60 ], [ %22, %53 ], [ %52, %46 ]
  %67 = add nuw i32 %23, 1
  %68 = zext i32 %64 to i64
  %69 = load i32, ptr %18, align 4, !tbaa !25
  %70 = ashr i32 %69, 2
  %71 = shl nsw i32 -1, %70
  %72 = xor i32 %71, -1
  %73 = load i16, ptr %5, align 2, !tbaa !40
  %74 = zext i16 %73 to i32
  %75 = and i32 %64, %72
  %76 = zext i32 %70 to i64
  %77 = lshr i64 %68, %76
  %78 = trunc i64 %77 to i32
  %79 = and i32 %78, %72
  %80 = lshr i64 %77, %76
  %81 = trunc i64 %80 to i32
  %82 = and i32 %81, %72
  %83 = lshr i64 %80, %76
  %84 = trunc i64 %83 to i32
  %85 = sub i32 %74, %84
  %86 = sub nsw i32 %74, %75
  %87 = mul i32 %85, %86
  %88 = udiv i32 %87, %74
  %89 = zext i32 %88 to i64
  %90 = mul nuw nsw i64 %89, 65535
  %91 = zext i16 %73 to i64
  %92 = udiv i64 %90, %91
  %93 = sub nsw i32 %74, %82
  %94 = mul i32 %93, %86
  %95 = udiv i32 %94, %74
  %96 = zext i32 %95 to i64
  %97 = mul nuw nsw i64 %96, 65535
  %98 = udiv i64 %97, %91
  %99 = sub nsw i32 %74, %79
  %100 = mul i32 %99, %86
  %101 = udiv i32 %100, %74
  %102 = zext i32 %101 to i64
  %103 = mul nuw nsw i64 %102, 65535
  %104 = udiv i64 %103, %91
  %105 = and i64 %92, 65535
  %106 = mul nuw nsw i64 %105, %7
  %107 = udiv i64 %106, 65535
  %108 = trunc i64 %107 to i32
  %109 = and i64 %98, 65535
  %110 = mul nuw nsw i64 %109, %7
  %111 = udiv i64 %110, 65535
  %112 = trunc i64 %111 to i32
  %113 = and i64 %104, 65535
  %114 = mul nuw nsw i64 %113, %7
  %115 = udiv i64 %114, 65535
  %116 = trunc i64 %115 to i32
  %117 = load i8, ptr %19, align 8, !tbaa !35
  %118 = icmp eq i8 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %63
  %120 = tail call i32 @putc(i32 noundef %108, ptr noundef %3)
  %121 = tail call i32 @putc(i32 noundef %112, ptr noundef %3)
  %122 = tail call i32 @putc(i32 noundef %116, ptr noundef %3)
  br label %130

123:                                              ; preds = %63
  %124 = icmp eq i32 %67, %21
  %125 = and i32 %67, 7
  %126 = icmp eq i32 %125, 0
  %127 = or i1 %124, %126
  %128 = select i1 %127, i32 10, i32 32
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef nonnull @.str.27, i32 noundef %108, i32 noundef %112, i32 noundef %116, i32 noundef %128)
  br label %130

130:                                              ; preds = %123, %119
  %131 = load i32, ptr %12, align 8, !tbaa !48
  %132 = icmp ult i32 %67, %131
  br i1 %132, label %20, label %133, !llvm.loop !61

133:                                              ; preds = %130, %4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !8, i64 1912}
!6 = !{!"gx_device_pbm_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !8, i64 488, !16, i64 1432, !17, i64 1456, !8, i64 1488, !7, i64 1568, !7, i64 1572, !7, i64 1576, !7, i64 1580, !7, i64 1584, !7, i64 1588, !10, i64 1592, !13, i64 1600, !10, i64 1608, !15, i64 1616, !8, i64 1912, !8, i64 1913, !8, i64 1984, !8, i64 1985, !8, i64 1986, !7, i64 1988, !7, i64 1992}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"any pointer", !8, i64 0}
!11 = !{!"gx_device_color_info_s", !7, i64 0, !7, i64 4, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14}
!12 = !{!"short", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"gx_page_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!15 = !{!"gx_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !10, i64 272, !10, i64 280, !10, i64 288}
!16 = !{!"gx_printer_device_procs_s", !10, i64 0, !10, i64 8, !10, i64 16}
!17 = !{!"gdev_prn_space_params_s", !13, i64 0, !13, i64 8, !18, i64 16}
!18 = !{!"gx_band_params_s", !7, i64 0, !7, i64 4, !13, i64 8}
!19 = !{!6, !8, i64 1986}
!20 = !{!6, !8, i64 1985}
!21 = !{!22, !12, i64 56}
!22 = !{!"gx_device_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192}
!23 = !{!12, !12, i64 0}
!24 = !{!22, !7, i64 48}
!25 = !{!22, !7, i64 52}
!26 = !{!6, !7, i64 1988}
!27 = !{!6, !7, i64 1992}
!28 = !{i64 0, i64 4, !29, i64 4, i64 4, !29, i64 8, i64 2, !23, i64 10, i64 2, !23, i64 12, i64 2, !23, i64 14, i64 2, !23}
!29 = !{!7, !7, i64 0}
!30 = !{!31, !10, i64 0}
!31 = !{!"gs_param_list_s", !10, i64 0}
!32 = !{!33, !10, i64 24}
!33 = !{!"gs_param_list_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128}
!34 = !{!13, !13, i64 0}
!35 = !{!6, !8, i64 1984}
!36 = !{!33, !10, i64 120}
!37 = !{!8, !8, i64 0}
!38 = !{!22, !12, i64 62}
!39 = !{!22, !12, i64 60}
!40 = !{!22, !12, i64 58}
!41 = !{!33, !10, i64 16}
!42 = !{!43, !10, i64 32}
!43 = !{!"gs_memory_s", !44, i64 0}
!44 = !{!"gs_memory_procs_s", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152}
!45 = !{!10, !10, i64 0}
!46 = !{!47, !10, i64 16}
!47 = !{!"gx_device_printer_s", !7, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !7, i64 40, !7, i64 44, !11, i64 48, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 116, !8, i64 124, !13, i64 144, !13, i64 152, !7, i64 160, !14, i64 168, !15, i64 192, !8, i64 488, !16, i64 1432, !17, i64 1456, !8, i64 1488, !7, i64 1568, !7, i64 1572, !7, i64 1576, !7, i64 1580, !7, i64 1584, !7, i64 1588, !10, i64 1592, !13, i64 1600, !10, i64 1608, !15, i64 1616}
!48 = !{!47, !7, i64 64}
!49 = !{!47, !7, i64 68}
!50 = !{!47, !12, i64 56}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.unroll.disable"}
!53 = !{!47, !7, i64 52}
!54 = !{!43, !10, i64 88}
!55 = distinct !{!55, !52}
!56 = distinct !{!56, !52}
!57 = distinct !{!57, !52}
!58 = distinct !{!58, !52}
!59 = distinct !{!59, !52}
!60 = !{!47, !12, i64 58}
!61 = distinct !{!61, !52}
