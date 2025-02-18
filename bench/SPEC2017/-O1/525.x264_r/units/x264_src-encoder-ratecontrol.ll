; ModuleID = 'x264_src/encoder/ratecontrol.c'
source_filename = "x264_src/encoder/ratecontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.2, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.8, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.9, %struct.anon.10, ptr, %struct.anon.13, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.anon.2 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.3, i32, %struct.anon.4, i32 }
%struct.anon.3 = type { i32, i32, i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.5 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.6]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.7], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.6 = type { i32, i32 }
%struct.anon.7 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.8 = type { ptr, [2 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.anon.9 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.10 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, ptr, [16 x ptr], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], %struct.anon.11, %struct.anon.12, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [32 x [4 x i16]]], ptr, [2 x [32 x [4 x i8]]], ptr, [18 x i8], i32, [34 x i8], [14 x i8] }
%struct.anon.11 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], i32, i32, [8 x i8], [4 x [64 x i16]], [16 x [16 x i16]], [9 x i64], [8 x i8], [32 x i32], [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [32 x ptr], [2 x [16 x ptr]], [3 x i32] }
%struct.anon.12 = type { [40 x i8], [8 x i8], [48 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [8 x i8] }
%struct.anon.13 = type { %struct.anon.14, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [2 x i32], [2 x i32], [3 x i32] }
%struct.anon.14 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_deblock_function_t = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr }
%struct.x264_ratecontrol_t = type { i32, i32, i32, i32, double, double, double, double, i32, [5 x i32], ptr, i32, float, float, float, float, i32, double, double, double, double, double, ptr, i32, double, i32, double, double, double, double, double, double, double, double, double, double, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, double, [5 x double], i32, double, double, double, [5 x double], [5 x double], double, [2 x ptr], i32, float, double, double, double, double, ptr, [5 x [2 x %struct.predictor_t]], ptr, i32, i32, i32, ptr, ptr, i32, i32, double, double }
%struct.predictor_t = type { double, double, double, double }
%struct.ratecontrol_entry_t = type { i32, i32, i32, double, i32, i32, i32, i64, double, double, i32, i32, i32, i32, float, i8, [2 x i16], i16, [16 x i32], i32, i32, i32 }
%struct.x264_zone_t = type { i32, i32, i32, i32, float, ptr }

@.str = private unnamed_addr constant [57 x i8] c"MB-tree frametype %d doesn't match actual frametype %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Incomplete MB-tree stats file.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"VBV buffer size cannot be smaller than one frame, using %d kbit\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"VBV parameters cannot be changed when NAL HRD is in use\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"CRF max must be greater than CRF\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"constant rate-factor is incompatible with 2pass.\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"bitrate tolerance too small, using .01\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"failed to parse zones\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"h->param.rc.psz_stat_in\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"x264_src/encoder/ratecontrol.c\00", align 1
@__PRETTY_FUNCTION__.x264_ratecontrol_new = private unnamed_addr constant [35 x i8] c"int x264_ratecontrol_new(x264_t *)\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"ratecontrol_init: can't open stats file\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"ratecontrol_init: can't open mbtree stats file\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"#options:\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"#options: %dx%d\00", align 1
@.str.16 = private unnamed_addr constant [46 x i8] c"resolution specified in stats file not valid\0A\00", align 1
@.str.17 = private unnamed_addr constant [77 x i8] c"MB-tree doesn't support different resolution than 1st pass (%dx%d vs %dx%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"timebase=\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"timebase=%u/%u\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"timebase specified in stats file not valid\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"timebase mismatch with 1st pass (%u/%u vs %u/%u)\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"weightp=\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"weightp=%d\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"different weightp setting than first pass (%d vs %d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"bframes=\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"bframes=%d\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"different bframes setting than first pass (%d vs %d)\0A\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"b_pyramid=\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"b_pyramid=%d\00", align 1
@.str.30 = private unnamed_addr constant [56 x i8] c"different b_pyramid setting than first pass (%d vs %d)\0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"intra_refresh=\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"intra_refresh=%d\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"different intra_refresh setting than first pass (%d vs %d)\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"keyint=\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"keyint=%d\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"different keyint setting than first pass (%d vs %d)\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"qp=0\00", align 1
@.str.38 = private unnamed_addr constant [62 x i8] c"1st pass was lossless, bitrate prediction will be inaccurate\0A\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"direct=3\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"direct=auto not used on the first pass\0A\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"b_adapt=\00", align 1
@.str.42 = private unnamed_addr constant [11 x i8] c"b_adapt=%d\00", align 1
@.str.43 = private unnamed_addr constant [50 x i8] c"b_adapt method specified in stats file not valid\0A\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"rc_lookahead=\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"rc_lookahead=%d\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"empty stats file\0A\00", align 1
@.str.47 = private unnamed_addr constant [52 x i8] c"2nd pass has fewer frames than 1st pass (%d vs %d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"2nd pass has more frames than 1st pass (%d vs %d)\0A\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c" in:%d \00", align 1
@.str.50 = private unnamed_addr constant [40 x i8] c"bad frame number (%d) at stats line %d\0A\00", align 1
@.str.51 = private unnamed_addr constant [93 x i8] c" in:%*d out:%*d type:%c dur:%d cpbdur:%d q:%f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"ref:\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"w:%hd,%hd,%hd\00", align 1
@.str.55 = private unnamed_addr constant [50 x i8] c"statistics are damaged at line %d, parser out=%d\0A\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c".temp\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"#options: %s\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c".mbtree.temp\00", align 1
@.str.60 = private unnamed_addr constant [24 x i8] c"final ratefactor: %.2f\0A\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"failed to rename \22%s\22 to \22%s\22\0A\00", align 1
@.str.62 = private unnamed_addr constant [38 x i8] c"frame >= 0 && frame < rc->num_entries\00", align 1
@__PRETTY_FUNCTION__.x264_ratecontrol_start = private unnamed_addr constant [48 x i8] c"void x264_ratecontrol_start(x264_t *, int, int)\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.63 = private unnamed_addr constant [45 x i8] c"2nd pass has more frames than 1st pass (%d)\0A\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"continuing anyway, at constant QP=%d\0A\00", align 1
@.str.65 = private unnamed_addr constant [29 x i8] c"disabling adaptive B-frames\0A\00", align 1
@.str.66 = private unnamed_addr constant [97 x i8] c"in:%d out:%d type:%c dur:%d cpbdur:%d q:%.2f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c ref:\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"w:%d,%d,%d\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"ratecontrol_end: stats file could not be written to\0A\00", align 1
@.str.71 = private unnamed_addr constant [42 x i8] c"CPB %s: %.0lf bits in a %.0lf-bit buffer\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@x264_log2_lut = external local_unnamed_addr constant [128 x float], align 16
@x264_log2_lz_lut = external local_unnamed_addr constant [32 x float], align 16
@x264_exp2_lut = external local_unnamed_addr constant [64 x i8], align 16
@.str.74 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.75 = private unnamed_addr constant [31 x i8] c"invalid zone: start=%d end=%d\0A\00", align 1
@.str.76 = private unnamed_addr constant [33 x i8] c"invalid zone: bitrate_factor=%f\0A\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"%d,%d,q=%d%n\00", align 1
@.str.78 = private unnamed_addr constant [13 x i8] c"%d,%d,b=%f%n\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"invalid zone: \22%s\22\0A\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.82 = private unnamed_addr constant [29 x i8] c"invalid zone param: %s = %s\0A\00", align 1
@.str.83 = private unnamed_addr constant [37 x i8] c"VBV underflow (frame %d, %.0f bits)\0A\00", align 1
@.str.84 = private unnamed_addr constant [33 x i8] c"slice=%c but 2pass stats say %c\0A\00", align 1
@slice_type_to_char = internal unnamed_addr constant [5 x i8] c"PBISS", align 1
@.str.85 = private unnamed_addr constant [60 x i8] c"requested bitrate is too low. estimated minimum is %d kbps\0A\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"qscale[i] >= 0\00", align 1
@__PRETTY_FUNCTION__.init_pass2 = private unnamed_addr constant [25 x i8] c"int init_pass2(x264_t *)\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"rce->new_qscale >= 0\00", align 1
@.str.89 = private unnamed_addr constant [39 x i8] c"Error: 2pass curve failed to converge\0A\00", align 1
@.str.90 = private unnamed_addr constant [58 x i8] c"target: %.2f kbit/s, expected: %.2f kbit/s, avg QP: %.4f\0A\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"try reducing target bitrate or reducing qp_min (currently %d)\0A\00", align 1
@.str.92 = private unnamed_addr constant [29 x i8] c"try reducing target bitrate\0A\00", align 1
@.str.93 = private unnamed_addr constant [67 x i8] c"try increasing target bitrate or increasing qp_max (currently %d)\0A\00", align 1
@.str.94 = private unnamed_addr constant [31 x i8] c"try increasing target bitrate\0A\00", align 1
@.str.95 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@.str.96 = private unnamed_addr constant [49 x i8] c"vbv-maxrate issue, qpmax or vbv-maxrate too low\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @x264_adaptive_quant_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %4 = load float, ptr %3, align 4, !tbaa !34
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %6, label %33

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %10 = load i32, ptr %9, align 16, !tbaa !67
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %12, i1 false)
  %13 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 61
  %14 = load ptr, ptr %13, align 16, !tbaa !68
  %15 = load i32, ptr %9, align 16, !tbaa !67
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %19 = load i32, ptr %18, align 16, !tbaa !69
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %195, label %21

21:                                               ; preds = %6
  %22 = load i32, ptr %9, align 16, !tbaa !67
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %195

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 65
  %26 = load ptr, ptr %25, align 16, !tbaa !70
  %27 = zext nneg i32 %22 to i64
  br label %28

28:                                               ; preds = %24, %28
  %29 = phi i64 [ 0, %24 ], [ %31, %28 ]
  %30 = getelementptr inbounds i16, ptr %26, i64 %29
  store i16 256, ptr %30, align 2, !tbaa !71
  %31 = add nuw nsw i64 %29, 1
  %32 = icmp eq i64 %31, %27
  br i1 %32, label %195, label %28, !llvm.loop !73

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %35 = load i32, ptr %34, align 8, !tbaa !76
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %97

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %39 = load ptr, ptr %38, align 16, !tbaa !77
  %40 = getelementptr inbounds %struct.x264_sps_t, ptr %39, i64 0, i32 17
  %41 = load i32, ptr %40, align 4, !tbaa !78
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  br label %46

46:                                               ; preds = %43, %68
  %47 = phi float [ 0.000000e+00, %43 ], [ %70, %68 ]
  %48 = phi i32 [ 0, %43 ], [ %71, %68 ]
  %49 = phi float [ 0.000000e+00, %43 ], [ %69, %68 ]
  %50 = load ptr, ptr %38, align 16, !tbaa !77
  %51 = getelementptr inbounds %struct.x264_sps_t, ptr %50, i64 0, i32 16
  %52 = load i32, ptr %51, align 4, !tbaa !83
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %76, label %68

54:                                               ; preds = %68, %37
  %55 = phi float [ 0.000000e+00, %37 ], [ %69, %68 ]
  %56 = phi float [ 0.000000e+00, %37 ], [ %70, %68 ]
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %58 = load i32, ptr %57, align 16, !tbaa !67
  %59 = sitofp i32 %58 to float
  %60 = fdiv float %56, %59
  %61 = fdiv float %55, %59
  %62 = load float, ptr %3, align 4, !tbaa !34
  %63 = fmul float %62, %60
  %64 = fadd float %61, -1.400000e+01
  %65 = fmul float %64, 5.000000e-01
  %66 = fdiv float %65, %60
  %67 = fsub float %60, %66
  br label %99

68:                                               ; preds = %76, %46
  %69 = phi float [ %49, %46 ], [ %91, %76 ]
  %70 = phi float [ %47, %46 ], [ %90, %76 ]
  %71 = add nuw nsw i32 %48, 1
  %72 = load ptr, ptr %38, align 16, !tbaa !77
  %73 = getelementptr inbounds %struct.x264_sps_t, ptr %72, i64 0, i32 17
  %74 = load i32, ptr %73, align 4, !tbaa !78
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %46, label %54, !llvm.loop !84

76:                                               ; preds = %46, %76
  %77 = phi float [ %90, %76 ], [ %47, %46 ]
  %78 = phi i32 [ %92, %76 ], [ 0, %46 ]
  %79 = phi float [ %91, %76 ], [ %49, %46 ]
  %80 = tail call fastcc i32 @ac_energy_mb(ptr noundef %0, i32 noundef %78, i32 noundef %48, ptr noundef %1)
  %81 = add i32 %80, 1
  %82 = uitofp i32 %81 to float
  %83 = tail call float @powf(float noundef %82, float noundef 1.250000e-01) #17
  %84 = load ptr, ptr %44, align 8, !tbaa !64
  %85 = load i32, ptr %45, align 4, !tbaa !85
  %86 = mul nsw i32 %85, %48
  %87 = add nsw i32 %86, %78
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, ptr %84, i64 %88
  store float %83, ptr %89, align 4, !tbaa !86
  %90 = fadd float %77, %83
  %91 = tail call float @llvm.fmuladd.f32(float %83, float %83, float %79)
  %92 = add nuw nsw i32 %78, 1
  %93 = load ptr, ptr %38, align 16, !tbaa !77
  %94 = getelementptr inbounds %struct.x264_sps_t, ptr %93, i64 0, i32 16
  %95 = load i32, ptr %94, align 4, !tbaa !83
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %76, label %68, !llvm.loop !87

97:                                               ; preds = %33
  %98 = fmul float %4, 0x3FF0A29C80000000
  br label %99

99:                                               ; preds = %97, %54
  %100 = phi float [ %67, %54 ], [ 0.000000e+00, %97 ]
  %101 = phi float [ %63, %54 ], [ %98, %97 ]
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %103 = load ptr, ptr %102, align 16, !tbaa !77
  %104 = getelementptr inbounds %struct.x264_sps_t, ptr %103, i64 0, i32 17
  %105 = load i32, ptr %104, align 4, !tbaa !78
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %195

107:                                              ; preds = %99
  %108 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %110 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 61
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %112 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %114 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 65
  br label %115

115:                                              ; preds = %107, %121
  %116 = phi i32 [ 0, %107 ], [ %122, %121 ]
  %117 = load ptr, ptr %102, align 16, !tbaa !77
  %118 = getelementptr inbounds %struct.x264_sps_t, ptr %117, i64 0, i32 16
  %119 = load i32, ptr %118, align 4, !tbaa !83
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %189, %115
  %122 = add nuw nsw i32 %116, 1
  %123 = load ptr, ptr %102, align 16, !tbaa !77
  %124 = getelementptr inbounds %struct.x264_sps_t, ptr %123, i64 0, i32 17
  %125 = load i32, ptr %124, align 4, !tbaa !78
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %115, label %195, !llvm.loop !88

127:                                              ; preds = %115, %189
  %128 = phi i32 [ %190, %189 ], [ 0, %115 ]
  %129 = load i32, ptr %34, align 8, !tbaa !76
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load ptr, ptr %108, align 8, !tbaa !64
  %133 = load i32, ptr %109, align 4, !tbaa !85
  %134 = mul nsw i32 %133, %116
  %135 = add nsw i32 %134, %128
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, ptr %132, i64 %136
  %138 = load float, ptr %137, align 4, !tbaa !86
  %139 = fsub float %138, %100
  br label %155

140:                                              ; preds = %127
  %141 = tail call fastcc i32 @ac_energy_mb(ptr noundef %0, i32 noundef %128, i32 noundef %116, ptr noundef %1)
  %142 = tail call i32 @llvm.umax.i32(i32 %141, i32 1)
  %143 = tail call i32 @llvm.ctlz.i32(i32 %142, i1 true), !range !89
  %144 = shl i32 %142, %143
  %145 = lshr i32 %144, 24
  %146 = and i32 %145, 127
  %147 = zext nneg i32 %146 to i64
  %148 = getelementptr inbounds [128 x float], ptr @x264_log2_lut, i64 0, i64 %147
  %149 = load float, ptr %148, align 4, !tbaa !86
  %150 = zext nneg i32 %143 to i64
  %151 = getelementptr inbounds [32 x float], ptr @x264_log2_lz_lut, i64 0, i64 %150
  %152 = load float, ptr %151, align 4, !tbaa !86
  %153 = fadd float %149, %152
  %154 = fadd float %153, 0xC02CDA9FC0000000
  br label %155

155:                                              ; preds = %140, %131
  %156 = phi float [ %139, %131 ], [ %154, %140 ]
  %157 = fmul float %101, %156
  %158 = load ptr, ptr %110, align 16, !tbaa !68
  %159 = load i32, ptr %111, align 4, !tbaa !85
  %160 = mul nsw i32 %159, %116
  %161 = add nsw i32 %160, %128
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, ptr %158, i64 %162
  store float %157, ptr %163, align 4, !tbaa !86
  %164 = load ptr, ptr %112, align 8, !tbaa !64
  %165 = getelementptr inbounds float, ptr %164, i64 %162
  store float %157, ptr %165, align 4, !tbaa !86
  %166 = load i32, ptr %113, align 16, !tbaa !69
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %189, label %168

168:                                              ; preds = %155
  %169 = tail call float @llvm.fmuladd.f32(float %157, float 0xC025555560000000, float 5.125000e+02)
  %170 = fptosi float %169 to i32
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %184, label %172

172:                                              ; preds = %168
  %173 = icmp sgt i32 %170, 1023
  br i1 %173, label %184, label %174

174:                                              ; preds = %172
  %175 = and i32 %170, 63
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds [64 x i8], ptr @x264_exp2_lut, i64 0, i64 %176
  %178 = load i8, ptr %177, align 1, !tbaa !90
  %179 = zext i8 %178 to i32
  %180 = or disjoint i32 %179, 256
  %181 = lshr i32 %170, 6
  %182 = shl i32 %180, %181
  %183 = lshr i32 %182, 8
  br label %184

184:                                              ; preds = %168, %172, %174
  %185 = phi i32 [ %183, %174 ], [ 0, %168 ], [ 65535, %172 ]
  %186 = trunc i32 %185 to i16
  %187 = load ptr, ptr %114, align 16, !tbaa !70
  %188 = getelementptr inbounds i16, ptr %187, i64 %162
  store i16 %186, ptr %188, align 2, !tbaa !71
  br label %189

189:                                              ; preds = %184, %155
  %190 = add nuw nsw i32 %128, 1
  %191 = load ptr, ptr %102, align 16, !tbaa !77
  %192 = getelementptr inbounds %struct.x264_sps_t, ptr %191, i64 0, i32 16
  %193 = load i32, ptr %192, align 4, !tbaa !83
  %194 = icmp slt i32 %190, %193
  br i1 %194, label %127, label %121, !llvm.loop !91

195:                                              ; preds = %121, %28, %99, %21, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @ac_energy_mb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 24, i64 0
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !93
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = and i32 %2, 268435454
  %12 = mul i32 %6, %11
  %13 = add i32 %12, %1
  %14 = shl i32 %13, 4
  %15 = and i32 %2, 1
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 0, i32 %6
  %18 = add nsw i32 %14, %17
  br label %23

19:                                               ; preds = %4
  %20 = mul nsw i32 %6, %2
  %21 = add nsw i32 %20, %1
  %22 = shl i32 %21, 4
  br label %23

23:                                               ; preds = %10, %19
  %24 = phi i32 [ %18, %10 ], [ %22, %19 ]
  %25 = shl i32 %6, %8
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 12, i64 0
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 30, i64 0
  %29 = load ptr, ptr %28, align 8, !tbaa !94
  %30 = sext i32 %24 to i64
  %31 = getelementptr inbounds i8, ptr %29, i64 %30
  %32 = tail call i64 %27(ptr noundef %31, i32 noundef %25) #17
  %33 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 24, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !92
  %35 = load i32, ptr %7, align 4, !tbaa !93
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %46, label %37

37:                                               ; preds = %23
  %38 = and i32 %2, 536870910
  %39 = mul i32 %34, %38
  %40 = add i32 %39, %1
  %41 = shl i32 %40, 3
  %42 = and i32 %2, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 %34
  %45 = add nsw i32 %41, %44
  br label %50

46:                                               ; preds = %23
  %47 = mul nsw i32 %34, %2
  %48 = add nsw i32 %47, %1
  %49 = shl i32 %48, 3
  br label %50

50:                                               ; preds = %37, %46
  %51 = phi i32 [ %45, %37 ], [ %49, %46 ]
  %52 = shl i32 %34, %35
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 12, i64 3
  %54 = load ptr, ptr %53, align 8, !tbaa !94
  %55 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 30, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !94
  %57 = sext i32 %51 to i64
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = tail call i64 %54(ptr noundef %58, i32 noundef %52) #17
  %60 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 24, i64 2
  %61 = load i32, ptr %60, align 4, !tbaa !92
  %62 = load i32, ptr %7, align 4, !tbaa !93
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %50
  %65 = and i32 %2, 536870910
  %66 = mul i32 %61, %65
  %67 = add i32 %66, %1
  %68 = shl i32 %67, 3
  %69 = and i32 %2, 1
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %70, i32 0, i32 %61
  %72 = add nsw i32 %68, %71
  br label %77

73:                                               ; preds = %50
  %74 = mul nsw i32 %61, %2
  %75 = add nsw i32 %74, %1
  %76 = shl i32 %75, 3
  br label %77

77:                                               ; preds = %64, %73
  %78 = phi i32 [ %72, %64 ], [ %76, %73 ]
  %79 = lshr i64 %32, 32
  %80 = trunc i64 %79 to i32
  %81 = trunc i64 %32 to i32
  %82 = mul i32 %81, %81
  %83 = lshr i32 %82, 8
  %84 = lshr i64 %59, 32
  %85 = trunc i64 %84 to i32
  %86 = trunc i64 %59 to i32
  %87 = mul i32 %86, %86
  %88 = lshr i32 %87, 6
  %89 = shl i32 %61, %62
  %90 = load ptr, ptr %53, align 8, !tbaa !94
  %91 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 30, i64 2
  %92 = load ptr, ptr %91, align 8, !tbaa !94
  %93 = sext i32 %78 to i64
  %94 = getelementptr inbounds i8, ptr %92, i64 %93
  %95 = tail call i64 %90(ptr noundef %94, i32 noundef %89) #17
  %96 = trunc i64 %95 to i32
  %97 = lshr i64 %95, 32
  %98 = trunc i64 %97 to i32
  %99 = mul i32 %96, %96
  %100 = lshr i32 %99, 6
  %101 = add i32 %80, %85
  %102 = add nuw nsw i32 %83, %88
  %103 = add i32 %101, %98
  %104 = add nuw nsw i32 %102, %100
  %105 = sub i32 %103, %104
  ret i32 %105
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_macroblock_tree_read(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !95
  %6 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 43
  %7 = load ptr, ptr %6, align 8, !tbaa !96
  %8 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !99
  %13 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %7, i64 %10, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !101
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %107, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #17
  %17 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 54
  %18 = load i32, ptr %17, align 8, !tbaa !102
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 41
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %23 = and i32 %12, 255
  %24 = trunc i32 %12 to i8
  br label %25

25:                                               ; preds = %20, %51
  %26 = load i32, ptr %17, align 8, !tbaa !102
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %17, align 8, !tbaa !102
  %28 = load ptr, ptr %21, align 8, !tbaa !103
  %29 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %105, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %17, align 8, !tbaa !102
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 53, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !94
  %36 = load i32, ptr %22, align 16, !tbaa !67
  %37 = sext i32 %36 to i64
  %38 = load ptr, ptr %21, align 8, !tbaa !103
  %39 = tail call i64 @fread(ptr noundef %35, i64 noundef 2, i64 noundef %37, ptr noundef %38)
  %40 = trunc i64 %39 to i32
  %41 = load i32, ptr %22, align 16, !tbaa !67
  %42 = icmp eq i32 %41, %40
  br i1 %42, label %43, label %105

43:                                               ; preds = %31
  %44 = load i8, ptr %3, align 1, !tbaa !90
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %23, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, ptr %17, align 8, !tbaa !102
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %45, i32 noundef %23) #17
  br label %105

51:                                               ; preds = %43, %47
  %52 = icmp eq i8 %44, %24
  br i1 %52, label %53, label %25, !llvm.loop !104

53:                                               ; preds = %51, %16
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %55 = load i32, ptr %54, align 16, !tbaa !67
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load i32, ptr %17, align 8, !tbaa !102
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 53, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !94
  %62 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %63 = load ptr, ptr %62, align 8, !tbaa !64
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %65 = load i32, ptr %64, align 16, !tbaa !69
  %66 = icmp eq i32 %65, 0
  %67 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 65
  %68 = zext nneg i32 %55 to i64
  br label %72

69:                                               ; preds = %102, %53
  %70 = load i32, ptr %17, align 8, !tbaa !102
  %71 = add nsw i32 %70, -1
  store i32 %71, ptr %17, align 8, !tbaa !102
  br label %105

72:                                               ; preds = %57, %102
  %73 = phi i64 [ 0, %57 ], [ %103, %102 ]
  %74 = getelementptr inbounds i16, ptr %61, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !71
  %76 = tail call i16 @llvm.bswap.i16(i16 %75)
  %77 = sitofp i16 %76 to double
  %78 = fmul double %77, 3.906250e-03
  %79 = fptrunc double %78 to float
  %80 = getelementptr inbounds float, ptr %63, i64 %73
  store float %79, ptr %80, align 4, !tbaa !86
  br i1 %66, label %102, label %81

81:                                               ; preds = %72
  %82 = tail call float @llvm.fmuladd.f32(float %79, float 0xC025555560000000, float 5.125000e+02)
  %83 = fptosi float %82 to i32
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %97, label %85

85:                                               ; preds = %81
  %86 = icmp sgt i32 %83, 1023
  br i1 %86, label %97, label %87

87:                                               ; preds = %85
  %88 = and i32 %83, 63
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [64 x i8], ptr @x264_exp2_lut, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !90
  %92 = zext i8 %91 to i32
  %93 = or disjoint i32 %92, 256
  %94 = lshr i32 %83, 6
  %95 = shl i32 %93, %94
  %96 = lshr i32 %95, 8
  br label %97

97:                                               ; preds = %81, %85, %87
  %98 = phi i32 [ %96, %87 ], [ 0, %81 ], [ 65535, %85 ]
  %99 = trunc i32 %98 to i16
  %100 = load ptr, ptr %67, align 16, !tbaa !70
  %101 = getelementptr inbounds i16, ptr %100, i64 %73
  store i16 %99, ptr %101, align 2, !tbaa !71
  br label %102

102:                                              ; preds = %72, %97
  %103 = add nuw nsw i64 %73, 1
  %104 = icmp eq i64 %103, %68
  br i1 %104, label %69, label %72, !llvm.loop !105

105:                                              ; preds = %31, %25, %69, %50
  %106 = phi i32 [ 1, %50 ], [ 0, %69 ], [ 4, %25 ], [ 4, %31 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #17
  switch i32 %106, label %110 [
    i32 0, label %108
    i32 4, label %109
  ]

107:                                              ; preds = %2
  tail call void @x264_adaptive_quant_frame(ptr noundef %0, ptr noundef %1)
  br label %108

108:                                              ; preds = %105, %107
  br label %110

109:                                              ; preds = %105
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.1) #17
  br label %110

110:                                              ; preds = %109, %108, %105
  %111 = phi i32 [ -1, %105 ], [ -1, %109 ], [ 0, %108 ]
  ret i32 %111
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_reference_build_list_optimal(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = alloca [16 x ptr], align 16
  %3 = alloca [16 x [3 x %struct.x264_weight_t]], align 16
  %4 = alloca [16 x i32], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !95
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %3) #17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #17
  %9 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %8, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !107
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %12 = load i32, ptr %11, align 8, !tbaa !108
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 16 dereferenceable(128) %15, i64 128, i1 false)
  %16 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %8, i64 0, i32 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %16, i64 64, i1 false)
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = getelementptr inbounds %struct.x264_frame, ptr %18, i64 0, i32 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %3, ptr noundef nonnull align 16 dereferenceable(3072) %19, i64 3072, i1 false)
  %20 = getelementptr inbounds %struct.x264_frame, ptr %18, i64 0, i32 37, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %20, i8 0, i64 2880, i1 false)
  %21 = load i32, ptr %11, align 8, !tbaa !108
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %55

23:                                               ; preds = %14, %29
  %24 = phi i64 [ %39, %29 ], [ 1, %14 ]
  %25 = phi i32 [ %40, %29 ], [ %21, %14 ]
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = zext nneg i32 %25 to i64
  br label %43

29:                                               ; preds = %43, %23
  %30 = phi i32 [ 1, %23 ], [ %52, %43 ]
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %31
  store i32 -1, ptr %32, align 4, !tbaa !92
  %33 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %24
  store ptr %34, ptr %35, align 8, !tbaa !94
  %36 = load ptr, ptr %17, align 8, !tbaa !109
  %37 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 37, i64 %24
  %38 = getelementptr inbounds [16 x [3 x %struct.x264_weight_t]], ptr %3, i64 0, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %37, ptr noundef nonnull align 16 dereferenceable(192) %38, i64 192, i1 false)
  %39 = add nuw nsw i64 %24, 1
  %40 = load i32, ptr %11, align 8, !tbaa !108
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %23, label %55, !llvm.loop !110

43:                                               ; preds = %27, %43
  %44 = phi i64 [ 1, %27 ], [ %53, %43 ]
  %45 = phi i32 [ 1, %27 ], [ %52, %43 ]
  %46 = phi i32 [ -1, %27 ], [ %50, %43 ]
  %47 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %44
  %48 = load i32, ptr %47, align 4, !tbaa !92
  %49 = icmp sgt i32 %48, %46
  %50 = tail call i32 @llvm.smax.i32(i32 %48, i32 %46)
  %51 = trunc i64 %44 to i32
  %52 = select i1 %49, i32 %51, i32 %45
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %53, %28
  br i1 %54, label %29, label %43, !llvm.loop !111

55:                                               ; preds = %29, %14, %1
  %56 = phi i32 [ -1, %1 ], [ 0, %14 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #17
  ret i32 %56
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_init_reconfigurable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !95
  %5 = icmp ne i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !112
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %240

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !113
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %16 = load i32, ptr %15, align 16, !tbaa !67
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !114
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 80, i32 120
  %21 = mul nsw i32 %20, %16
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !115
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %28 = load float, ptr %27, align 8, !tbaa !116
  %29 = fpext float %28 to double
  %30 = fsub double 1.000000e+00, %29
  %31 = fmul double %30, 1.350000e+01
  br label %32

32:                                               ; preds = %14, %26
  %33 = phi double [ %31, %26 ], [ 0.000000e+00, %14 ]
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 7
  %35 = load double, ptr %34, align 8, !tbaa !117
  %36 = fsub double 1.000000e+00, %35
  %37 = tail call double @pow(double noundef %22, double noundef %36) #17
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %39 = load float, ptr %38, align 8, !tbaa !118
  %40 = fpext float %39 to double
  %41 = fadd double %33, %40
  %42 = fadd double %41, -1.200000e+01
  %43 = fdiv double %42, 6.000000e+00
  %44 = tail call double @exp2(double %43) #17
  %45 = fmul double %44, 8.500000e-01
  %46 = fdiv double %37, %45
  %47 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 33
  store double %46, ptr %47, align 8, !tbaa !119
  br label %48

48:                                               ; preds = %32, %10
  %49 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %50 = load i32, ptr %49, align 4, !tbaa !120
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %240

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %54 = load i32, ptr %53, align 8, !tbaa !121
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %240

56:                                               ; preds = %52
  %57 = sitofp i32 %50 to double
  %58 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 4
  %59 = load double, ptr %58, align 8, !tbaa !122
  %60 = fdiv double %57, %59
  %61 = fptosi double %60 to i32
  %62 = icmp slt i32 %54, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 %61, ptr %53, align 8, !tbaa !121
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %61) #17
  br label %64

64:                                               ; preds = %63, %56
  %65 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !123
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !124
  store i32 %70, ptr %49, align 4, !tbaa !120
  br label %71

71:                                               ; preds = %68, %64
  %72 = load i32, ptr %53, align 8, !tbaa !121
  %73 = mul nsw i32 %72, 1000
  %74 = load i32, ptr %49, align 4, !tbaa !120
  %75 = mul nsw i32 %74, 1000
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %77 = load i32, ptr %76, align 8, !tbaa !125
  %78 = icmp ne i32 %77, 0
  %79 = and i1 %5, %78
  br i1 %79, label %80, label %153

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %82 = load ptr, ptr %81, align 16, !tbaa !77
  %83 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21
  store i32 1, ptr %83, align 4, !tbaa !126
  %84 = icmp eq i32 %77, 2
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 7
  store i32 %85, ptr %86, align 4, !tbaa !127
  %87 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 11
  store i32 0, ptr %87, align 4, !tbaa !128
  %88 = tail call i32 @llvm.cttz.i32(i32 %75, i1 true), !range !129
  %89 = tail call i32 @llvm.smin.i32(i32 %88, i32 21)
  %90 = tail call i32 @llvm.smax.i32(i32 %89, i32 6)
  %91 = add nsw i32 %90, -6
  %92 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 1
  store i32 %91, ptr %92, align 4, !tbaa !130
  %93 = ashr i32 %75, %90
  %94 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 3
  store i32 %93, ptr %94, align 4, !tbaa !131
  %95 = shl i32 %93, %90
  %96 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 5
  store i32 %95, ptr %96, align 4, !tbaa !132
  %97 = tail call i32 @llvm.cttz.i32(i32 %73, i1 true), !range !129
  %98 = tail call i32 @llvm.smin.i32(i32 %97, i32 19)
  %99 = tail call i32 @llvm.smax.i32(i32 %98, i32 4)
  %100 = add nsw i32 %99, -4
  %101 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 2
  store i32 %100, ptr %101, align 4, !tbaa !133
  %102 = ashr i32 %73, %99
  %103 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 4
  store i32 %102, ptr %103, align 4, !tbaa !134
  %104 = shl i32 %102, %99
  %105 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 6
  store i32 %104, ptr %105, align 4, !tbaa !135
  %106 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %107 = load i32, ptr %106, align 4, !tbaa !136
  %108 = sitofp i32 %107 to double
  %109 = fmul double %108, 5.000000e-01
  %110 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 17
  %111 = load i32, ptr %110, align 4, !tbaa !137
  %112 = uitofp i32 %111 to double
  %113 = fmul double %109, %112
  %114 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 16
  %115 = load i32, ptr %114, align 4, !tbaa !138
  %116 = uitofp i32 %115 to double
  %117 = fdiv double %113, %116
  %118 = fptosi double %117 to i32
  %119 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 30
  %120 = load i32, ptr %119, align 4, !tbaa !139
  %121 = sitofp i32 %120 to double
  %122 = fmul double %121, 5.000000e-01
  %123 = fmul double %122, %112
  %124 = fdiv double %123, %116
  %125 = fptosi double %124 to i32
  %126 = sitofp i32 %104 to double
  %127 = fmul double %126, 9.000000e+04
  %128 = sitofp i32 %95 to double
  %129 = fdiv double %127, %128
  %130 = fadd double %129, 5.000000e-01
  %131 = fptosi double %130 to i32
  %132 = tail call i32 @llvm.ctlz.i32(i32 %131, i1 true), !range !89
  %133 = sub nuw nsw i32 32, %132
  %134 = icmp ult i32 %131, 8
  %135 = tail call i32 @llvm.smin.i32(i32 %133, i32 22)
  %136 = add nuw nsw i32 %135, 2
  %137 = select i1 %134, i32 6, i32 %136
  %138 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 8
  store i32 %137, ptr %138, align 4, !tbaa !140
  %139 = tail call i32 @llvm.ctlz.i32(i32 %118, i1 true), !range !89
  %140 = sub nuw nsw i32 32, %139
  %141 = icmp ult i32 %118, 8
  %142 = tail call i32 @llvm.smin.i32(i32 %140, i32 32)
  %143 = select i1 %141, i32 4, i32 %142
  %144 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 9
  store i32 %143, ptr %144, align 4, !tbaa !141
  %145 = tail call i32 @llvm.ctlz.i32(i32 %125, i1 true), !range !89
  %146 = sub nuw nsw i32 32, %145
  %147 = icmp ult i32 %125, 8
  %148 = tail call i32 @llvm.smin.i32(i32 %146, i32 32)
  %149 = select i1 %147, i32 4, i32 %148
  %150 = getelementptr inbounds %struct.x264_sps_t, ptr %82, i64 0, i32 24, i32 21, i32 10
  store i32 %149, ptr %150, align 4, !tbaa !142
  %151 = tail call i32 @llvm.smin.i32(i32 %73, i32 %104)
  %152 = tail call i32 @llvm.smin.i32(i32 %75, i32 %95)
  br label %157

153:                                              ; preds = %71
  %154 = icmp eq i32 %77, 0
  %155 = or i1 %5, %154
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.3) #17
  br label %240

157:                                              ; preds = %153, %80
  %158 = phi i32 [ %152, %80 ], [ %75, %153 ]
  %159 = phi i32 [ %151, %80 ], [ %73, %153 ]
  %160 = sitofp i32 %158 to double
  %161 = load double, ptr %58, align 8, !tbaa !122
  %162 = fdiv double %160, %161
  %163 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  store double %162, ptr %163, align 8, !tbaa !143
  %164 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 21
  store double %160, ptr %164, align 8, !tbaa !144
  %165 = sitofp i32 %159 to double
  %166 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  store double %165, ptr %166, align 8, !tbaa !145
  %167 = fmul double %162, 1.100000e+00
  %168 = fcmp ogt double %167, %165
  %169 = zext i1 %168 to i32
  %170 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23
  store i32 %169, ptr %170, align 8, !tbaa !146
  %171 = fdiv double %162, %165
  %172 = fmul double %161, %162
  %173 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 5
  %174 = load double, ptr %173, align 8, !tbaa !147
  %175 = fdiv double %172, %174
  %176 = fsub double 1.500000e+00, %175
  %177 = fcmp olt double %176, 0.000000e+00
  %178 = select i1 %177, double 0.000000e+00, double %176
  %179 = fmul double %171, -5.000000e-01
  %180 = tail call double @llvm.fmuladd.f64(double %179, double %178, double 1.000000e+00)
  %181 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 30
  store double %180, ptr %181, align 8, !tbaa !148
  %182 = load i32, ptr %11, align 8, !tbaa !113
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %196

184:                                              ; preds = %157
  %185 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 7
  %186 = load float, ptr %185, align 4, !tbaa !149
  %187 = fcmp une float %186, 0.000000e+00
  br i1 %187, label %188, label %196

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %190 = load float, ptr %189, align 8, !tbaa !118
  %191 = fsub float %186, %190
  %192 = fpext float %191 to double
  %193 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 24
  store double %192, ptr %193, align 8, !tbaa !150
  %194 = fcmp ugt float %191, 0.000000e+00
  br i1 %194, label %196, label %195

195:                                              ; preds = %188
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.4) #17
  store double 0.000000e+00, ptr %193, align 8, !tbaa !150
  br label %196

196:                                              ; preds = %188, %195, %184, %157
  br i1 %5, label %197, label %240

197:                                              ; preds = %196
  %198 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %199 = load float, ptr %198, align 4, !tbaa !151
  %200 = fcmp ogt float %199, 1.000000e+00
  br i1 %200, label %201, label %209

201:                                              ; preds = %197
  %202 = load i32, ptr %53, align 8, !tbaa !121
  %203 = sitofp i32 %202 to float
  %204 = fdiv float %199, %203
  %205 = fcmp olt float %204, 0.000000e+00
  %206 = fcmp ogt float %204, 1.000000e+00
  %207 = select i1 %206, float 1.000000e+00, float %204
  %208 = select i1 %205, float 0.000000e+00, float %207
  store float %208, ptr %198, align 4, !tbaa !151
  br label %209

209:                                              ; preds = %201, %197
  %210 = load float, ptr %198, align 4, !tbaa !151
  %211 = fpext float %210 to double
  %212 = load double, ptr %163, align 8, !tbaa !143
  %213 = load double, ptr %166, align 8, !tbaa !145
  %214 = fdiv double %212, %213
  %215 = fcmp olt double %214, %211
  %216 = select i1 %215, double %211, double %214
  %217 = fcmp olt double %216, 0.000000e+00
  %218 = fcmp ogt double %216, 1.000000e+00
  %219 = select i1 %218, double 1.000000e+00, double %216
  %220 = select i1 %217, double 0.000000e+00, double %219
  %221 = fptrunc double %220 to float
  store float %221, ptr %198, align 4, !tbaa !151
  %222 = fpext float %221 to double
  %223 = fmul double %213, %222
  %224 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 18
  store double %223, ptr %224, align 8, !tbaa !152
  %225 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  store i32 1, ptr %225, align 8, !tbaa !153
  %226 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !112
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %238

229:                                              ; preds = %209
  %230 = load i32, ptr %11, align 8, !tbaa !113
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = load i32, ptr %49, align 4, !tbaa !120
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %235 = load i32, ptr %234, align 4, !tbaa !124
  %236 = icmp sle i32 %233, %235
  %237 = zext i1 %236 to i32
  br label %238

238:                                              ; preds = %232, %229, %209
  %239 = phi i32 [ 0, %229 ], [ 0, %209 ], [ %237, %232 ]
  store i32 %239, ptr %65, align 4, !tbaa !123
  br label %240

240:                                              ; preds = %48, %52, %196, %238, %156, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_ratecontrol_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca float, align 4
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !154
  %14 = mul i32 %13, 936
  %15 = tail call ptr @x264_malloc(i32 noundef %14) #17
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  store ptr %15, ptr %16, align 16, !tbaa !95
  %17 = icmp eq ptr %15, null
  br i1 %17, label %1936, label %18

18:                                               ; preds = %1
  %19 = load i32, ptr %12, align 4, !tbaa !154
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 936
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %15, i8 0, i64 %21, i1 false)
  %22 = load ptr, ptr %16, align 16, !tbaa !95
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %24 = load i32, ptr %23, align 8, !tbaa !113
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %28 = load i32, ptr %27, align 8, !tbaa !155
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %26, %18
  %31 = phi i1 [ false, %18 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  store i32 %32, ptr %22, align 8, !tbaa !156
  %33 = icmp eq i32 %24, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %36 = load i32, ptr %35, align 8, !tbaa !155
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 1
  store i32 %40, ptr %41, align 4, !tbaa !112
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %43 = load i32, ptr %42, align 4, !tbaa !157
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %47 = load i32, ptr %46, align 16, !tbaa !158
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = uitofp i32 %43 to float
  %51 = uitofp i32 %47 to float
  %52 = fdiv float %50, %51
  %53 = fpext float %52 to double
  br label %54

54:                                               ; preds = %38, %45, %49
  %55 = phi double [ %53, %49 ], [ 2.500000e+01, %45 ], [ 2.500000e+01, %38 ]
  %56 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 4
  store double %55, ptr %56, align 8, !tbaa !122
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %58 = load i32, ptr %57, align 8, !tbaa !115
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  store float 1.000000e+00, ptr %61, align 4, !tbaa !159
  br label %66

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %64 = load float, ptr %63, align 8, !tbaa !116
  %65 = fpext float %64 to double
  br label %66

66:                                               ; preds = %62, %60
  %67 = phi double [ %65, %62 ], [ 1.000000e+00, %60 ]
  %68 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 7
  store double %67, ptr %68, align 8, !tbaa !117
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %70 = load i32, ptr %69, align 4, !tbaa !124
  %71 = sitofp i32 %70 to double
  %72 = fmul double %71, 1.000000e+03
  %73 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 5
  store double %72, ptr %73, align 8, !tbaa !147
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  %75 = load float, ptr %74, align 8, !tbaa !160
  %76 = fpext float %75 to double
  %77 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 6
  store double %76, ptr %77, align 8, !tbaa !161
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %79 = load i32, ptr %78, align 16, !tbaa !67
  %80 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 8
  store i32 %79, ptr %80, align 8, !tbaa !162
  %81 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 46
  store i32 -1, ptr %81, align 8, !tbaa !163
  %82 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 30
  store double 1.000000e+00, ptr %82, align 8, !tbaa !148
  %83 = icmp eq i32 %24, 1
  br i1 %83, label %84, label %89

84:                                               ; preds = %66
  %85 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %86 = load i32, ptr %85, align 8, !tbaa !155
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.5) #17
  br label %1936

89:                                               ; preds = %84, %66
  tail call void @x264_ratecontrol_init_reconfigurable(ptr noundef %0, i32 noundef 1)
  %90 = load double, ptr %77, align 8, !tbaa !161
  %91 = fcmp olt double %90, 1.000000e-02
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.6) #17
  store double 1.000000e-02, ptr %77, align 8, !tbaa !161
  br label %93

93:                                               ; preds = %92, %89
  %94 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 2
  %95 = load i32, ptr %94, align 8, !tbaa !153
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %99 = load i32, ptr %98, align 8, !tbaa !76
  %100 = icmp ne i32 %99, 0
  br label %101

101:                                              ; preds = %97, %93
  %102 = phi i1 [ true, %93 ], [ %100, %97 ]
  %103 = zext i1 %102 to i32
  %104 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 72
  store i32 %103, ptr %104, align 16, !tbaa !164
  %105 = load i32, ptr %22, align 8, !tbaa !156
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 48
  store double 1.000000e-02, ptr %108, align 8, !tbaa !165
  %109 = load i32, ptr %23, align 8, !tbaa !113
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %113 = load float, ptr %112, align 8, !tbaa !118
  br label %114

114:                                              ; preds = %107, %111
  %115 = phi float [ %113, %111 ], [ 2.400000e+01, %107 ]
  %116 = fpext float %115 to double
  %117 = fmul double %116, 1.000000e-02
  %118 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 47
  store double %117, ptr %118, align 8, !tbaa !166
  %119 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 7
  %120 = load double, ptr %119, align 8, !tbaa !117
  %121 = tail call double @pow(double noundef 7.000000e+05, double noundef %120) #17
  %122 = fmul double %121, 1.000000e-02
  %123 = load i32, ptr %78, align 16, !tbaa !67
  %124 = sitofp i32 %123 to double
  %125 = tail call double @sqrt(double %124)
  %126 = tail call double @llvm.fabs.f64(double %125)
  %127 = fmul double %122, %126
  %128 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 27
  store double %127, ptr %128, align 8, !tbaa !167
  %129 = load double, ptr %73, align 8, !tbaa !147
  %130 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 4
  %131 = load double, ptr %130, align 8, !tbaa !122
  %132 = fdiv double %129, %131
  %133 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 29
  store double %132, ptr %133, align 8, !tbaa !168
  store i32 2, ptr %81, align 8, !tbaa !163
  br label %134

134:                                              ; preds = %114, %101
  %135 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %136 = load float, ptr %135, align 8, !tbaa !169
  %137 = tail call float @log2f(float noundef %136) #17
  %138 = fpext float %137 to double
  %139 = fmul double %138, 6.000000e+00
  %140 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 34
  store double %139, ptr %140, align 8, !tbaa !170
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %142 = load float, ptr %141, align 4, !tbaa !159
  %143 = tail call float @log2f(float noundef %142) #17
  %144 = fpext float %143 to double
  %145 = fmul double %144, 6.000000e+00
  %146 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 35
  store double %145, ptr %146, align 8, !tbaa !171
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !172
  %149 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 9
  store i32 %148, ptr %149, align 4, !tbaa !92
  %150 = load i32, ptr %147, align 4, !tbaa !172
  %151 = sitofp i32 %150 to double
  %152 = load double, ptr %140, align 8, !tbaa !170
  %153 = fsub double %151, %152
  %154 = fadd double %153, 5.000000e-01
  %155 = fptosi double %154 to i32
  %156 = tail call i32 @llvm.smin.i32(i32 %155, i32 51)
  %157 = tail call i32 @llvm.smax.i32(i32 %156, i32 0)
  %158 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 9, i64 2
  store i32 %157, ptr %158, align 4, !tbaa !92
  %159 = load i32, ptr %147, align 4, !tbaa !172
  %160 = sitofp i32 %159 to double
  %161 = fadd double %145, %160
  %162 = fadd double %161, 5.000000e-01
  %163 = fptosi double %162 to i32
  %164 = tail call i32 @llvm.smin.i32(i32 %163, i32 51)
  %165 = tail call i32 @llvm.smax.i32(i32 %164, i32 0)
  %166 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 9, i64 1
  store i32 %165, ptr %166, align 4, !tbaa !92
  %167 = fadd double %152, 5.000000e-01
  %168 = fptosi double %167 to i32
  %169 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 64
  store i32 %168, ptr %169, align 4, !tbaa !173
  %170 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %171 = load i32, ptr %170, align 8, !tbaa !174
  %172 = sitofp i32 %171 to double
  %173 = fdiv double %172, 6.000000e+00
  %174 = tail call double @exp2(double %173) #17
  %175 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 52
  store double %174, ptr %175, align 8, !tbaa !175
  %176 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 44
  store double 0x4011228A8751D490, ptr %176, align 8, !tbaa !176
  %177 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %178 = load i32, ptr %177, align 8, !tbaa !177
  %179 = load i32, ptr %12, align 4, !tbaa !154
  %180 = mul nsw i32 %179, %178
  %181 = mul i32 %180, 160
  %182 = add i32 %181, 160
  %183 = tail call ptr @x264_malloc(i32 noundef %182) #17
  %184 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 22
  store ptr %183, ptr %184, align 8, !tbaa !178
  %185 = icmp eq ptr %183, null
  br i1 %185, label %1936, label %186

186:                                              ; preds = %134
  %187 = tail call ptr @x264_malloc(i32 noundef 32) #17
  %188 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 62
  store ptr %187, ptr %188, align 8, !tbaa !179
  %189 = icmp eq ptr %187, null
  br i1 %189, label %1936, label %190

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %193 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %194 = icmp slt i32 %180, 0
  %195 = add i32 %180, 1
  %196 = zext i32 %195 to i64
  br label %374

197:                                              ; preds = %415
  %198 = load ptr, ptr %188, align 8, !tbaa !179
  %199 = load ptr, ptr %184, align 8, !tbaa !178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %198, ptr noundef nonnull align 8 dereferenceable(32) %199, i64 32, i1 false), !tbaa.struct !180
  %200 = load ptr, ptr %16, align 16, !tbaa !95
  %201 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 27
  %202 = load ptr, ptr %201, align 8, !tbaa !182
  %203 = icmp eq ptr %202, null
  br i1 %203, label %303, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  %206 = load i32, ptr %205, align 8, !tbaa !183
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %303

208:                                              ; preds = %204
  %209 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %202) #18
  %210 = trunc i64 %209 to i32
  %211 = add i32 %210, 1
  %212 = tail call ptr @x264_malloc(i32 noundef %211) #17
  %213 = icmp eq ptr %212, null
  br i1 %213, label %426, label %214

214:                                              ; preds = %208
  %215 = load ptr, ptr %201, align 8, !tbaa !182
  %216 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %212, ptr noundef nonnull dereferenceable(1) %215) #17
  store i32 1, ptr %205, align 8, !tbaa !183
  %217 = load i8, ptr %212, align 1, !tbaa !90
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %214
  %220 = load i32, ptr %205, align 8, !tbaa !183
  br label %221

221:                                              ; preds = %219, %221
  %222 = phi i32 [ %220, %219 ], [ %227, %221 ]
  %223 = phi i8 [ %217, %219 ], [ %229, %221 ]
  %224 = phi ptr [ %212, %219 ], [ %228, %221 ]
  %225 = icmp eq i8 %223, 47
  %226 = zext i1 %225 to i32
  %227 = add nsw i32 %222, %226
  store i32 %227, ptr %205, align 8, !tbaa !183
  %228 = getelementptr inbounds i8, ptr %224, i64 1
  %229 = load i8, ptr %228, align 1, !tbaa !90
  %230 = icmp eq i8 %229, 0
  br i1 %230, label %231, label %221, !llvm.loop !184

231:                                              ; preds = %221, %214
  %232 = load i32, ptr %205, align 8, !tbaa !183
  %233 = shl i32 %232, 5
  %234 = tail call ptr @x264_malloc(i32 noundef %233) #17
  %235 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 25
  store ptr %234, ptr %235, align 8, !tbaa !185
  %236 = icmp eq ptr %234, null
  br i1 %236, label %426, label %237

237:                                              ; preds = %231
  %238 = load i32, ptr %205, align 8, !tbaa !183
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %240, label %302

240:                                              ; preds = %237, %293
  %241 = phi i64 [ %297, %293 ], [ 0, %237 ]
  %242 = phi ptr [ %296, %293 ], [ %212, %237 ]
  %243 = call i64 @strcspn(ptr noundef %242, ptr noundef nonnull @.str.74) #18
  %244 = shl i64 %243, 32
  %245 = ashr exact i64 %244, 32
  %246 = getelementptr inbounds i8, ptr %242, i64 %245
  store i8 0, ptr %246, align 1, !tbaa !90
  %247 = load ptr, ptr %235, align 8, !tbaa !185
  %248 = getelementptr inbounds %struct.x264_zone_t, ptr %247, i64 %241
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #17
  store i32 0, ptr %4, align 4, !tbaa !92
  %249 = getelementptr inbounds %struct.x264_zone_t, ptr %247, i64 %241, i32 5
  store ptr null, ptr %249, align 8, !tbaa !186
  %250 = getelementptr inbounds %struct.x264_zone_t, ptr %247, i64 %241, i32 4
  store float 1.000000e+00, ptr %250, align 8, !tbaa !188
  %251 = getelementptr inbounds %struct.x264_zone_t, ptr %247, i64 %241, i32 1
  %252 = getelementptr inbounds %struct.x264_zone_t, ptr %247, i64 %241, i32 3
  %253 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %242, ptr noundef nonnull @.str.77, ptr noundef %248, ptr noundef nonnull %251, ptr noundef nonnull %252, ptr noundef nonnull %4) #17
  %254 = icmp sgt i32 %253, 2
  br i1 %254, label %262, label %255

255:                                              ; preds = %240
  %256 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %242, ptr noundef nonnull @.str.78, ptr noundef %248, ptr noundef nonnull %251, ptr noundef nonnull %250, ptr noundef nonnull %4) #17
  %257 = icmp sgt i32 %256, 2
  br i1 %257, label %262, label %258

258:                                              ; preds = %255
  %259 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %242, ptr noundef nonnull @.str.79, ptr noundef %248, ptr noundef nonnull %251, ptr noundef nonnull %4) #17
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %262, label %261

261:                                              ; preds = %258
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.80, ptr noundef %242) #17
  br label %301

262:                                              ; preds = %258, %255, %240
  %263 = phi i32 [ 1, %240 ], [ 0, %255 ], [ 0, %258 ]
  %264 = getelementptr inbounds %struct.x264_zone_t, ptr %247, i64 %241, i32 2
  store i32 %263, ptr %264, align 8, !tbaa !189
  %265 = load i32, ptr %4, align 4, !tbaa !92
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, ptr %242, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !90
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %293, label %270

270:                                              ; preds = %262
  %271 = call ptr @x264_malloc(i32 noundef 704) #17
  store ptr %271, ptr %249, align 8, !tbaa !186
  %272 = icmp eq ptr %271, null
  br i1 %272, label %301, label %273

273:                                              ; preds = %270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %271, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false)
  %274 = load ptr, ptr %249, align 8, !tbaa !186
  %275 = getelementptr inbounds %struct.x264_param_t, ptr %274, i64 0, i32 59
  store ptr @x264_free, ptr %275, align 8, !tbaa !190
  br label %276

276:                                              ; preds = %291, %273
  %277 = phi ptr [ %267, %273 ], [ %292, %291 ]
  %278 = call ptr @strtok(ptr noundef %277, ptr noundef nonnull @.str.81) #17
  %279 = icmp eq ptr %278, null
  br i1 %279, label %293, label %280

280:                                              ; preds = %276
  %281 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %278, i32 noundef 61) #18
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %280
  store i8 0, ptr %281, align 1, !tbaa !90
  %284 = getelementptr inbounds i8, ptr %281, i64 1
  br label %285

285:                                              ; preds = %283, %280
  %286 = phi ptr [ %284, %283 ], [ null, %280 ]
  %287 = load ptr, ptr %249, align 8, !tbaa !186
  %288 = call i32 @x264_param_parse(ptr noundef %287, ptr noundef nonnull %278, ptr noundef %286) #17
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef nonnull %278, ptr noundef %286) #17
  br label %291

291:                                              ; preds = %290, %285
  %292 = phi ptr [ %277, %290 ], [ null, %285 ]
  br i1 %289, label %276, label %301, !llvm.loop !191

293:                                              ; preds = %276, %262
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  %294 = add i64 %244, 4294967296
  %295 = ashr exact i64 %294, 32
  %296 = getelementptr inbounds i8, ptr %242, i64 %295
  %297 = add nuw nsw i64 %241, 1
  %298 = load i32, ptr %205, align 8, !tbaa !183
  %299 = sext i32 %298 to i64
  %300 = icmp slt i64 %297, %299
  br i1 %300, label %240, label %302, !llvm.loop !192

301:                                              ; preds = %270, %291, %261
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #17
  br label %426

302:                                              ; preds = %293, %237
  call void @x264_free(ptr noundef nonnull %212) #17
  br label %303

303:                                              ; preds = %302, %204, %197
  %304 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  %305 = load i32, ptr %304, align 8, !tbaa !183
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %427

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 25
  %309 = load ptr, ptr %308, align 8, !tbaa !185
  %310 = zext nneg i32 %305 to i64
  br label %314

311:                                              ; preds = %324
  %312 = add nuw nsw i64 %315, 1
  %313 = icmp eq i64 %312, %310
  br i1 %313, label %334, label %314, !llvm.loop !193

314:                                              ; preds = %307, %311
  %315 = phi i64 [ 0, %307 ], [ %312, %311 ]
  %316 = getelementptr inbounds %struct.x264_zone_t, ptr %309, i64 %315
  %317 = load i32, ptr %316, align 8, !tbaa.struct !194
  %318 = getelementptr inbounds i8, ptr %316, i64 4
  %319 = load i32, ptr %318, align 4, !tbaa.struct !195
  %320 = icmp slt i32 %317, 0
  %321 = icmp sgt i32 %317, %319
  %322 = select i1 %320, i1 true, i1 %321
  br i1 %322, label %323, label %324

323:                                              ; preds = %314
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.75, i32 noundef %317, i32 noundef %319) #17
  br label %426

324:                                              ; preds = %314
  %325 = getelementptr inbounds i8, ptr %316, i64 16
  %326 = load float, ptr %325, align 8, !tbaa.struct !196
  %327 = getelementptr inbounds i8, ptr %316, i64 8
  %328 = load i32, ptr %327, align 8, !tbaa.struct !197
  %329 = icmp eq i32 %328, 0
  %330 = fcmp ole float %326, 0.000000e+00
  %331 = select i1 %329, i1 %330, i1 false
  br i1 %331, label %332, label %311

332:                                              ; preds = %324
  %333 = fpext float %326 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.76, double noundef %333) #17
  br label %426

334:                                              ; preds = %311
  %335 = add nuw nsw i32 %305, 1
  %336 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %200, i64 0, i32 65
  store i32 %335, ptr %336, align 8, !tbaa !198
  %337 = shl i32 %335, 5
  %338 = call ptr @x264_malloc(i32 noundef %337) #17
  %339 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %200, i64 0, i32 66
  store ptr %338, ptr %339, align 8, !tbaa !199
  %340 = icmp eq ptr %338, null
  br i1 %340, label %426, label %341

341:                                              ; preds = %334
  %342 = getelementptr inbounds %struct.x264_zone_t, ptr %338, i64 1
  %343 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 25
  %344 = load ptr, ptr %343, align 8, !tbaa !185
  %345 = load i32, ptr %336, align 8, !tbaa !198
  %346 = add nsw i32 %345, -1
  %347 = sext i32 %346 to i64
  %348 = shl nsw i64 %347, 5
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %342, ptr align 8 %344, i64 %348, i1 false)
  %349 = load ptr, ptr %339, align 8, !tbaa !199
  store i32 0, ptr %349, align 8, !tbaa !200
  %350 = getelementptr inbounds %struct.x264_zone_t, ptr %349, i64 0, i32 1
  store i32 2147483647, ptr %350, align 4, !tbaa !201
  %351 = getelementptr inbounds %struct.x264_zone_t, ptr %349, i64 0, i32 2
  store i32 0, ptr %351, align 8, !tbaa !189
  %352 = getelementptr inbounds %struct.x264_zone_t, ptr %349, i64 0, i32 4
  store float 1.000000e+00, ptr %352, align 8, !tbaa !188
  %353 = call ptr @x264_malloc(i32 noundef 704) #17
  %354 = load ptr, ptr %339, align 8, !tbaa !199
  %355 = getelementptr inbounds %struct.x264_zone_t, ptr %354, i64 0, i32 5
  store ptr %353, ptr %355, align 8, !tbaa !186
  %356 = icmp eq ptr %353, null
  br i1 %356, label %426, label %357

357:                                              ; preds = %341
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %353, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false)
  %358 = load i32, ptr %336, align 8, !tbaa !198
  %359 = icmp sgt i32 %358, 1
  br i1 %359, label %360, label %427

360:                                              ; preds = %357
  %361 = load ptr, ptr %339, align 8, !tbaa !199
  %362 = getelementptr inbounds %struct.x264_zone_t, ptr %361, i64 0, i32 5
  %363 = zext nneg i32 %358 to i64
  br label %364

364:                                              ; preds = %360, %371
  %365 = phi i64 [ 1, %360 ], [ %372, %371 ]
  %366 = getelementptr inbounds %struct.x264_zone_t, ptr %361, i64 %365, i32 5
  %367 = load ptr, ptr %366, align 8, !tbaa !186
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %371

369:                                              ; preds = %364
  %370 = load ptr, ptr %362, align 8, !tbaa !186
  store ptr %370, ptr %366, align 8, !tbaa !186
  br label %371

371:                                              ; preds = %369, %364
  %372 = add nuw nsw i64 %365, 1
  %373 = icmp eq i64 %372, %363
  br i1 %373, label %427, label %364, !llvm.loop !202

374:                                              ; preds = %190, %415
  %375 = phi i64 [ 0, %190 ], [ %416, %415 ]
  %376 = load i32, ptr %23, align 8, !tbaa !113
  %377 = icmp eq i32 %376, 1
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = load float, ptr %191, align 8, !tbaa !118
  br label %380

380:                                              ; preds = %374, %378
  %381 = phi float [ %379, %378 ], [ 2.400000e+01, %374 ]
  %382 = fpext float %381 to double
  %383 = fadd double %382, -1.200000e+01
  %384 = fdiv double %383, 6.000000e+00
  %385 = tail call double @exp2(double %384) #17
  %386 = fmul double %385, 8.500000e-01
  %387 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 45, i64 %375
  store double %386, ptr %387, align 8, !tbaa !181
  %388 = load i32, ptr %192, align 8, !tbaa !203
  %389 = sitofp i32 %388 to double
  %390 = fadd double %389, -1.200000e+01
  %391 = fdiv double %390, 6.000000e+00
  %392 = tail call double @exp2(double %391) #17
  %393 = fmul double %392, 8.500000e-01
  %394 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 50, i64 %375
  store double %393, ptr %394, align 8, !tbaa !181
  %395 = load i32, ptr %193, align 4, !tbaa !204
  %396 = sitofp i32 %395 to double
  %397 = fadd double %396, -1.200000e+01
  %398 = fdiv double %397, 6.000000e+00
  %399 = tail call double @exp2(double %398) #17
  %400 = fmul double %399, 8.500000e-01
  %401 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 51, i64 %375
  store double %400, ptr %401, align 8, !tbaa !181
  br i1 %194, label %402, label %403

402:                                              ; preds = %405, %380
  br label %418

403:                                              ; preds = %380
  %404 = load ptr, ptr %184, align 8, !tbaa !178
  br label %405

405:                                              ; preds = %403, %405
  %406 = phi i64 [ 0, %403 ], [ %413, %405 ]
  %407 = mul nuw nsw i64 %406, 5
  %408 = add nuw nsw i64 %407, %375
  %409 = getelementptr inbounds %struct.predictor_t, ptr %404, i64 %408
  store double 2.000000e+00, ptr %409, align 8, !tbaa !205
  %410 = getelementptr inbounds %struct.predictor_t, ptr %404, i64 %408, i32 1
  store double 1.000000e+00, ptr %410, align 8, !tbaa !206
  %411 = getelementptr inbounds %struct.predictor_t, ptr %404, i64 %408, i32 2
  store double 5.000000e-01, ptr %411, align 8, !tbaa !207
  %412 = getelementptr inbounds %struct.predictor_t, ptr %404, i64 %408, i32 3
  store double 0.000000e+00, ptr %412, align 8, !tbaa !208
  %413 = add nuw nsw i64 %406, 1
  %414 = icmp eq i64 %413, %196
  br i1 %414, label %402, label %405, !llvm.loop !209

415:                                              ; preds = %418
  %416 = add nuw nsw i64 %375, 1
  %417 = icmp eq i64 %416, 5
  br i1 %417, label %197, label %374, !llvm.loop !210

418:                                              ; preds = %402, %418
  %419 = phi i64 [ %424, %418 ], [ 0, %402 ]
  %420 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 61, i64 %375, i64 %419
  store double 2.500000e-01, ptr %420, align 8, !tbaa !205
  %421 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 61, i64 %375, i64 %419, i32 1
  store double 1.000000e+00, ptr %421, align 8, !tbaa !206
  %422 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 61, i64 %375, i64 %419, i32 2
  store double 5.000000e-01, ptr %422, align 8, !tbaa !207
  %423 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 61, i64 %375, i64 %419, i32 3
  store double 0.000000e+00, ptr %423, align 8, !tbaa !208
  %424 = add nuw nsw i64 %419, 1
  %425 = icmp eq i64 %419, 0
  br i1 %425, label %418, label %415, !llvm.loop !211

426:                                              ; preds = %341, %334, %332, %323, %231, %208, %301
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.7) #17
  br label %1936

427:                                              ; preds = %371, %357, %303
  %428 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %429 = load i32, ptr %428, align 8, !tbaa !155
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %1813, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  %433 = load ptr, ptr %432, align 8, !tbaa !212
  %434 = icmp eq ptr %433, null
  br i1 %434, label %435, label %436

435:                                              ; preds = %431
  call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 598, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_new) #19
  unreachable

436:                                              ; preds = %431
  %437 = call ptr @x264_slurp_file(ptr noundef nonnull %433) #17
  %438 = icmp eq ptr %437, null
  br i1 %438, label %439, label %440

439:                                              ; preds = %436
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.10) #17
  br label %1936

440:                                              ; preds = %436
  %441 = load i32, ptr %57, align 8, !tbaa !115
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %463, label %443

443:                                              ; preds = %440
  %444 = load ptr, ptr %432, align 8, !tbaa !212
  %445 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %444) #18
  %446 = trunc i64 %445 to i32
  %447 = add i32 %446, 8
  %448 = call ptr @x264_malloc(i32 noundef %447) #17
  %449 = icmp eq ptr %448, null
  br i1 %449, label %454, label %450

450:                                              ; preds = %443
  %451 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %448, ptr noundef nonnull dereferenceable(1) %444) #17
  %452 = call i64 @strlen(ptr nonnull dereferenceable(1) %448)
  %453 = getelementptr inbounds i8, ptr %448, i64 %452
  store i64 28540514901060910, ptr %453, align 1
  br label %454

454:                                              ; preds = %443, %450
  %455 = phi ptr [ %448, %450 ], [ null, %443 ]
  %456 = icmp eq ptr %455, null
  br i1 %456, label %1936, label %457

457:                                              ; preds = %454
  %458 = call noalias ptr @fopen(ptr noundef nonnull %455, ptr noundef nonnull @.str.12)
  %459 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 41
  store ptr %458, ptr %459, align 8, !tbaa !103
  call void @x264_free(ptr noundef nonnull %455) #17
  %460 = load ptr, ptr %459, align 8, !tbaa !103
  %461 = icmp eq ptr %460, null
  br i1 %461, label %462, label %463

462:                                              ; preds = %457
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.13) #17
  br label %1936

463:                                              ; preds = %457, %440
  %464 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(10) @.str.14, i64 noundef 9) #18
  %465 = icmp eq i32 %464, 0
  br i1 %465, label %466, label %626

466:                                              ; preds = %463
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #17
  %467 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %437, i32 noundef 10) #18
  %468 = icmp eq ptr %467, null
  br i1 %468, label %623, label %469

469:                                              ; preds = %466
  store i8 0, ptr %467, align 1, !tbaa !90
  %470 = getelementptr inbounds i8, ptr %467, i64 1
  %471 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %437, ptr noundef nonnull @.str.15, ptr noundef nonnull %5, ptr noundef nonnull %6) #17
  %472 = icmp eq i32 %471, 2
  br i1 %472, label %474, label %473

473:                                              ; preds = %469
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.16) #17
  br label %623

474:                                              ; preds = %469
  %475 = load i32, ptr %57, align 8, !tbaa !115
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %491, label %477

477:                                              ; preds = %474
  %478 = load i32, ptr %5, align 4, !tbaa !92
  %479 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %480 = load i32, ptr %479, align 4, !tbaa !213
  %481 = icmp eq i32 %478, %480
  br i1 %481, label %482, label %487

482:                                              ; preds = %477
  %483 = load i32, ptr %6, align 4, !tbaa !92
  %484 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %485 = load i32, ptr %484, align 8, !tbaa !214
  %486 = icmp eq i32 %483, %485
  br i1 %486, label %491, label %487

487:                                              ; preds = %482, %477
  %488 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %489 = load i32, ptr %488, align 8, !tbaa !214
  %490 = load i32, ptr %6, align 4, !tbaa !92
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %480, i32 noundef %489, i32 noundef %478, i32 noundef %490) #17
  br label %623

491:                                              ; preds = %474, %482
  %492 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.18) #18
  %493 = icmp eq ptr %492, null
  br i1 %493, label %498, label %494

494:                                              ; preds = %491
  %495 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %492, ptr noundef nonnull @.str.19, ptr noundef nonnull %7, ptr noundef nonnull %8) #17
  %496 = icmp eq i32 %495, 2
  br i1 %496, label %498, label %497

497:                                              ; preds = %494
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.20) #17
  br label %623

498:                                              ; preds = %494, %491
  %499 = load i32, ptr %7, align 4, !tbaa !92
  %500 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %501 = load i32, ptr %500, align 4, !tbaa !215
  %502 = icmp eq i32 %499, %501
  br i1 %502, label %503, label %508

503:                                              ; preds = %498
  %504 = load i32, ptr %8, align 4, !tbaa !92
  %505 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %506 = load i32, ptr %505, align 8, !tbaa !216
  %507 = icmp eq i32 %504, %506
  br i1 %507, label %512, label %508

508:                                              ; preds = %503, %498
  %509 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %510 = load i32, ptr %509, align 8, !tbaa !216
  %511 = load i32, ptr %8, align 4, !tbaa !92
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %501, i32 noundef %510, i32 noundef %499, i32 noundef %511) #17
  br label %623

512:                                              ; preds = %503
  %513 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.22) #18
  %514 = icmp eq ptr %513, null
  br i1 %514, label %525, label %515

515:                                              ; preds = %512
  %516 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %513, ptr noundef nonnull @.str.23, ptr noundef nonnull %5) #17
  %517 = icmp eq i32 %516, 0
  br i1 %517, label %525, label %518

518:                                              ; preds = %515
  %519 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %520 = load i32, ptr %519, align 4, !tbaa !217
  %521 = call i32 @llvm.smax.i32(i32 %520, i32 0)
  %522 = load i32, ptr %5, align 4, !tbaa !92
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %525, label %524

524:                                              ; preds = %518
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %521, i32 noundef %522) #17
  br label %623

525:                                              ; preds = %518, %515, %512
  %526 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.25) #18
  %527 = icmp eq ptr %526, null
  br i1 %527, label %537, label %528

528:                                              ; preds = %525
  %529 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %526, ptr noundef nonnull @.str.26, ptr noundef nonnull %5) #17
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %537, label %531

531:                                              ; preds = %528
  %532 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %533 = load i32, ptr %532, align 4, !tbaa !114
  %534 = load i32, ptr %5, align 4, !tbaa !92
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %537, label %536

536:                                              ; preds = %531
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %533, i32 noundef %534) #17
  br label %623

537:                                              ; preds = %531, %528, %525
  %538 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.28) #18
  %539 = icmp eq ptr %538, null
  br i1 %539, label %549, label %540

540:                                              ; preds = %537
  %541 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %538, ptr noundef nonnull @.str.29, ptr noundef nonnull %5) #17
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %549, label %543

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %545 = load i32, ptr %544, align 16, !tbaa !218
  %546 = load i32, ptr %5, align 4, !tbaa !92
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %549, label %548

548:                                              ; preds = %543
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %545, i32 noundef %546) #17
  br label %623

549:                                              ; preds = %543, %540, %537
  %550 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.31) #18
  %551 = icmp eq ptr %550, null
  br i1 %551, label %561, label %552

552:                                              ; preds = %549
  %553 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %550, ptr noundef nonnull @.str.32, ptr noundef nonnull %5) #17
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %561, label %555

555:                                              ; preds = %552
  %556 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %557 = load i32, ptr %556, align 16, !tbaa !219
  %558 = load i32, ptr %5, align 4, !tbaa !92
  %559 = icmp eq i32 %557, %558
  br i1 %559, label %561, label %560

560:                                              ; preds = %555
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %557, i32 noundef %558) #17
  br label %623

561:                                              ; preds = %555, %552, %549
  %562 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.34) #18
  %563 = icmp eq ptr %562, null
  br i1 %563, label %573, label %564

564:                                              ; preds = %561
  %565 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %562, ptr noundef nonnull @.str.35, ptr noundef nonnull %5) #17
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %573, label %567

567:                                              ; preds = %564
  %568 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %569 = load i32, ptr %568, align 4, !tbaa !136
  %570 = load i32, ptr %5, align 4, !tbaa !92
  %571 = icmp eq i32 %569, %570
  br i1 %571, label %573, label %572

572:                                              ; preds = %567
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %569, i32 noundef %570) #17
  br label %623

573:                                              ; preds = %567, %564, %561
  %574 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.37) #18
  %575 = icmp eq ptr %574, null
  br i1 %575, label %580, label %576

576:                                              ; preds = %573
  %577 = load i32, ptr %23, align 8, !tbaa !113
  %578 = icmp eq i32 %577, 2
  br i1 %578, label %579, label %580

579:                                              ; preds = %576
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.38) #17
  br label %580

580:                                              ; preds = %579, %576, %573
  %581 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.39) #18
  %582 = icmp eq ptr %581, null
  br i1 %582, label %583, label %589

583:                                              ; preds = %580
  %584 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %585 = load i32, ptr %584, align 4, !tbaa !220
  %586 = icmp eq i32 %585, 3
  br i1 %586, label %587, label %589

587:                                              ; preds = %583
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.40) #17
  %588 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  store i32 1, ptr %588, align 4, !tbaa !221
  br label %589

589:                                              ; preds = %587, %583, %580
  %590 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.41) #18
  %591 = icmp eq ptr %590, null
  br i1 %591, label %602, label %592

592:                                              ; preds = %589
  %593 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %590, ptr noundef nonnull @.str.42, ptr noundef nonnull %5) #17
  %594 = icmp ne i32 %593, 0
  %595 = load i32, ptr %5, align 4
  %596 = icmp sgt i32 %595, -1
  %597 = select i1 %594, i1 %596, i1 false
  %598 = icmp slt i32 %595, 3
  %599 = select i1 %597, i1 %598, i1 false
  br i1 %599, label %600, label %602

600:                                              ; preds = %592
  %601 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 %595, ptr %601, align 8, !tbaa !222
  br label %607

602:                                              ; preds = %592, %589
  %603 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %604 = load i32, ptr %603, align 4, !tbaa !114
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %607, label %606

606:                                              ; preds = %602
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.43) #17
  br label %623

607:                                              ; preds = %602, %600
  %608 = load i32, ptr %57, align 8, !tbaa !115
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %614

610:                                              ; preds = %607
  %611 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %612 = load i32, ptr %611, align 8, !tbaa !121
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %623, label %614

614:                                              ; preds = %610, %607
  %615 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %437, ptr noundef nonnull dereferenceable(1) @.str.44) #18
  %616 = icmp eq ptr %615, null
  br i1 %616, label %623, label %617

617:                                              ; preds = %614
  %618 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %615, ptr noundef nonnull @.str.45, ptr noundef nonnull %5) #17
  %619 = icmp eq i32 %618, 0
  br i1 %619, label %623, label %620

620:                                              ; preds = %617
  %621 = load i32, ptr %5, align 4, !tbaa !92
  %622 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 %621, ptr %622, align 4, !tbaa !223
  br label %623

623:                                              ; preds = %610, %614, %617, %620, %466, %606, %572, %560, %548, %536, %524, %508, %497, %487, %473
  %624 = phi ptr [ %470, %473 ], [ %470, %487 ], [ %470, %497 ], [ %470, %508 ], [ %470, %524 ], [ %470, %536 ], [ %470, %548 ], [ %470, %560 ], [ %470, %572 ], [ %470, %606 ], [ null, %466 ], [ %470, %620 ], [ %470, %617 ], [ %470, %614 ], [ %470, %610 ]
  %625 = phi i1 [ false, %473 ], [ false, %487 ], [ false, %497 ], [ false, %508 ], [ false, %524 ], [ false, %536 ], [ false, %548 ], [ false, %560 ], [ false, %572 ], [ false, %606 ], [ false, %466 ], [ true, %620 ], [ true, %617 ], [ true, %614 ], [ true, %610 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #17
  br i1 %625, label %626, label %1936

626:                                              ; preds = %623, %463
  %627 = phi ptr [ %437, %463 ], [ %624, %623 ]
  %628 = icmp eq ptr %627, null
  br i1 %628, label %636, label %629

629:                                              ; preds = %626, %629
  %630 = phi i32 [ %634, %629 ], [ -1, %626 ]
  %631 = phi ptr [ %633, %629 ], [ %627, %626 ]
  %632 = getelementptr inbounds i8, ptr %631, i64 1
  %633 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %632, i32 noundef 59) #18
  %634 = add nsw i32 %630, 1
  %635 = icmp eq ptr %633, null
  br i1 %635, label %636, label %629, !llvm.loop !224

636:                                              ; preds = %629, %626
  %637 = phi i32 [ -1, %626 ], [ %634, %629 ]
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %640

639:                                              ; preds = %636
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.46) #17
  br label %1936

640:                                              ; preds = %636
  %641 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 42
  store i32 %637, ptr %641, align 8, !tbaa !225
  %642 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9
  %643 = load i32, ptr %642, align 4, !tbaa !226
  %644 = icmp slt i32 %643, %637
  %645 = icmp sgt i32 %643, 0
  %646 = and i1 %644, %645
  br i1 %646, label %647, label %648

647:                                              ; preds = %640
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.47, i32 noundef %643, i32 noundef %637) #17
  br label %648

648:                                              ; preds = %647, %640
  %649 = load i32, ptr %642, align 4, !tbaa !226
  %650 = load i32, ptr %641, align 8, !tbaa !225
  %651 = icmp sgt i32 %649, %650
  br i1 %651, label %652, label %653

652:                                              ; preds = %648
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef %649, i32 noundef %650) #17
  br label %1936

653:                                              ; preds = %648
  %654 = mul i32 %650, 168
  %655 = call ptr @x264_malloc(i32 noundef %654) #17
  %656 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 43
  store ptr %655, ptr %656, align 8, !tbaa !96
  %657 = icmp eq ptr %655, null
  br i1 %657, label %1936, label %658

658:                                              ; preds = %653
  %659 = load i32, ptr %641, align 8, !tbaa !225
  %660 = sext i32 %659 to i64
  %661 = mul nsw i64 %660, 168
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %655, i8 0, i64 %661, i1 false)
  %662 = load i32, ptr %641, align 8, !tbaa !225
  %663 = icmp sgt i32 %662, 0
  br i1 %663, label %664, label %669

664:                                              ; preds = %658
  %665 = load ptr, ptr %656, align 8, !tbaa !96
  %666 = load i32, ptr %80, align 8, !tbaa !162
  %667 = add nsw i32 %666, 10
  %668 = zext nneg i32 %662 to i64
  br label %672

669:                                              ; preds = %672, %658
  %670 = load i32, ptr %641, align 8, !tbaa !225
  %671 = icmp sgt i32 %670, 0
  br i1 %671, label %685, label %779

672:                                              ; preds = %664, %672
  %673 = phi i64 [ 0, %664 ], [ %679, %672 ]
  %674 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %665, i64 %673
  store i32 0, ptr %674, align 8, !tbaa !99
  %675 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %665, i64 %673, i32 9
  store double 0x4001228A8751D490, ptr %675, align 8, !tbaa !227
  %676 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %665, i64 %673, i32 3
  store double 0x4001228A8751D490, ptr %676, align 8, !tbaa !228
  %677 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %665, i64 %673, i32 6
  store i32 %667, ptr %677, align 8, !tbaa !229
  %678 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %665, i64 %673, i32 10
  store i32 0, ptr %678, align 8, !tbaa !230
  %679 = add nuw nsw i64 %673, 1
  %680 = icmp eq i64 %679, %668
  br i1 %680, label %669, label %672, !llvm.loop !231

681:                                              ; preds = %775
  %682 = add nuw nsw i32 %687, 1
  %683 = load i32, ptr %641, align 8, !tbaa !225
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %779, !llvm.loop !232

685:                                              ; preds = %669, %681
  %686 = phi i1 [ %684, %681 ], [ %671, %669 ]
  %687 = phi i32 [ %682, %681 ], [ 0, %669 ]
  %688 = phi ptr [ %776, %681 ], [ %627, %669 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #17
  %689 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %688, i32 noundef 59) #18
  %690 = icmp eq ptr %689, null
  br i1 %690, label %693, label %691

691:                                              ; preds = %685
  %692 = getelementptr inbounds i8, ptr %689, i64 1
  store i8 0, ptr %689, align 1, !tbaa !90
  br label %693

693:                                              ; preds = %691, %685
  %694 = phi ptr [ %692, %691 ], [ null, %685 ]
  %695 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %688, ptr noundef nonnull @.str.49, ptr noundef nonnull %9) #17
  %696 = load i32, ptr %9, align 4, !tbaa !92
  %697 = icmp slt i32 %696, 0
  br i1 %697, label %701, label %698

698:                                              ; preds = %693
  %699 = load i32, ptr %641, align 8, !tbaa !225
  %700 = icmp slt i32 %696, %699
  br i1 %700, label %702, label %701

701:                                              ; preds = %698, %693
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %696, i32 noundef %687) #17
  br label %775

702:                                              ; preds = %698
  %703 = load ptr, ptr %656, align 8, !tbaa !96
  %704 = zext nneg i32 %696 to i64
  %705 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704
  %706 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 15
  store i8 0, ptr %706, align 4, !tbaa !233
  %707 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 20
  %708 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 21
  %709 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 5
  %710 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 4
  %711 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 6
  %712 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 11
  %713 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 12
  %714 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 13
  %715 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %688, ptr noundef nonnull @.str.51, ptr noundef nonnull %10, ptr noundef nonnull %707, ptr noundef nonnull %708, ptr noundef nonnull %11, ptr noundef nonnull %709, ptr noundef nonnull %710, ptr noundef nonnull %711, ptr noundef nonnull %712, ptr noundef nonnull %713, ptr noundef nonnull %714, ptr noundef nonnull %706) #17
  %716 = add nsw i32 %715, %695
  %717 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %688, ptr noundef nonnull dereferenceable(1) @.str.52) #18
  %718 = icmp eq ptr %717, null
  br i1 %718, label %764, label %719

719:                                              ; preds = %702
  %720 = getelementptr inbounds i8, ptr %717, i64 4
  br label %721

721:                                              ; preds = %719, %731
  %722 = phi i64 [ 0, %719 ], [ %732, %731 ]
  %723 = phi ptr [ %720, %719 ], [ %729, %731 ]
  %724 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 18, i64 %722
  %725 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %723, ptr noundef nonnull @.str.53, ptr noundef nonnull %724) #17
  %726 = icmp eq i32 %725, 1
  br i1 %726, label %727, label %734

727:                                              ; preds = %721
  %728 = getelementptr inbounds i8, ptr %723, i64 1
  %729 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %728, i32 noundef 32) #18
  %730 = icmp eq ptr %729, null
  br i1 %730, label %764, label %731

731:                                              ; preds = %727
  %732 = add nuw nsw i64 %722, 1
  %733 = icmp eq i64 %732, 16
  br i1 %733, label %736, label %721, !llvm.loop !234

734:                                              ; preds = %721
  %735 = trunc i64 %722 to i32
  br label %736

736:                                              ; preds = %731, %734
  %737 = phi ptr [ %723, %734 ], [ %729, %731 ]
  %738 = phi i32 [ %735, %734 ], [ 16, %731 ]
  %739 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 19
  store i32 %738, ptr %739, align 4, !tbaa !107
  %740 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 17
  store i16 -1, ptr %740, align 2, !tbaa !235
  %741 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %737, i32 noundef 119) #18
  %742 = icmp eq ptr %741, null
  br i1 %742, label %749, label %743

743:                                              ; preds = %736
  %744 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 16
  %745 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 16, i64 1
  %746 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %741, ptr noundef nonnull @.str.54, ptr noundef nonnull %740, ptr noundef nonnull %744, ptr noundef nonnull %745) #17
  %747 = icmp eq i32 %746, 3
  br i1 %747, label %749, label %748

748:                                              ; preds = %743
  store i16 -1, ptr %740, align 2, !tbaa !235
  br label %749

749:                                              ; preds = %743, %748, %736
  %750 = load i8, ptr %10, align 1, !tbaa !90
  %751 = icmp eq i8 %750, 98
  br i1 %751, label %757, label %752

752:                                              ; preds = %749
  %753 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 2
  store i32 1, ptr %753, align 8, !tbaa !101
  switch i8 %750, label %761 [
    i8 73, label %757
    i8 105, label %754
    i8 80, label %755
    i8 66, label %756
  ]

754:                                              ; preds = %752
  br label %757

755:                                              ; preds = %752
  br label %757

756:                                              ; preds = %752
  br label %757

757:                                              ; preds = %749, %752, %754, %755, %756
  %758 = phi i32 [ 4, %756 ], [ 3, %755 ], [ 2, %754 ], [ 1, %752 ], [ 5, %749 ]
  %759 = phi i32 [ 1, %756 ], [ 0, %755 ], [ 2, %754 ], [ 2, %752 ], [ 1, %749 ]
  %760 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 1
  store i32 %758, ptr %760, align 4, !tbaa !236
  store i32 %759, ptr %705, align 8, !tbaa !99
  br label %761

761:                                              ; preds = %757, %752
  %762 = phi i32 [ -1, %752 ], [ %716, %757 ]
  %763 = icmp slt i32 %762, 12
  br i1 %763, label %764, label %767

764:                                              ; preds = %727, %761, %702
  %765 = phi ptr [ %737, %761 ], [ null, %702 ], [ null, %727 ]
  %766 = phi i32 [ %762, %761 ], [ %716, %702 ], [ %716, %727 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %687, i32 noundef %766) #17
  br label %775

767:                                              ; preds = %761
  %768 = load float, ptr %11, align 4, !tbaa !86
  %769 = fpext float %768 to double
  %770 = fadd double %769, -1.200000e+01
  %771 = fdiv double %770, 6.000000e+00
  %772 = call double @exp2(double %771) #17
  %773 = fmul double %772, 8.500000e-01
  %774 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %703, i64 %704, i32 3
  store double %773, ptr %774, align 8, !tbaa !228
  br label %775

775:                                              ; preds = %767, %764, %701
  %776 = phi ptr [ %688, %701 ], [ %765, %764 ], [ %694, %767 ]
  %777 = phi i1 [ false, %701 ], [ false, %764 ], [ true, %767 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #17
  br i1 %777, label %681, label %778

778:                                              ; preds = %775
  br i1 %686, label %1936, label %779

779:                                              ; preds = %681, %669, %778
  call void @x264_free(ptr noundef nonnull %437) #17
  %780 = load i32, ptr %23, align 8, !tbaa !113
  %781 = icmp eq i32 %780, 2
  br i1 %781, label %782, label %1813

782:                                              ; preds = %779
  %783 = load ptr, ptr %16, align 16, !tbaa !95
  %784 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 42
  %785 = load i32, ptr %784, align 8, !tbaa !225
  %786 = icmp sgt i32 %785, 0
  br i1 %786, label %787, label %791

787:                                              ; preds = %782
  %788 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 43
  %789 = load ptr, ptr %788, align 8, !tbaa !96
  %790 = zext nneg i32 %785 to i64
  br label %821

791:                                              ; preds = %821, %782
  %792 = phi double [ 0.000000e+00, %782 ], [ %827, %821 ]
  %793 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %794 = load ptr, ptr %793, align 16, !tbaa !77
  %795 = getelementptr inbounds %struct.x264_sps_t, ptr %794, i64 0, i32 24, i32 16
  %796 = load i32, ptr %795, align 4, !tbaa !138
  %797 = uitofp i32 %796 to double
  %798 = getelementptr inbounds %struct.x264_sps_t, ptr %794, i64 0, i32 24, i32 17
  %799 = load i32, ptr %798, align 4, !tbaa !137
  %800 = uitofp i32 %799 to double
  %801 = fdiv double %797, %800
  %802 = fmul double %792, %801
  %803 = load i32, ptr %69, align 4, !tbaa !124
  %804 = sitofp i32 %803 to double
  %805 = fmul double %804, 1.000000e+03
  %806 = fmul double %805, %802
  %807 = fptoui double %806 to i64
  %808 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %809 = load float, ptr %808, align 4, !tbaa !237
  %810 = fpext float %809 to double
  %811 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %812 = load float, ptr %811, align 8, !tbaa !238
  %813 = fpext float %812 to double
  %814 = fmul double %810, 4.000000e+00
  %815 = fptosi double %814 to i32
  %816 = or i32 %815, 1
  br i1 %786, label %817, label %830

817:                                              ; preds = %791
  %818 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 43
  %819 = load ptr, ptr %818, align 8, !tbaa !96
  %820 = zext nneg i32 %785 to i64
  br label %840

821:                                              ; preds = %821, %787
  %822 = phi i64 [ 0, %787 ], [ %828, %821 ]
  %823 = phi double [ 0.000000e+00, %787 ], [ %827, %821 ]
  %824 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %789, i64 %822, i32 20
  %825 = load i32, ptr %824, align 8, !tbaa !239
  %826 = sitofp i32 %825 to double
  %827 = fadd double %823, %826
  %828 = add nuw nsw i64 %822, 1
  %829 = icmp eq i64 %828, %790
  br i1 %829, label %791, label %821, !llvm.loop !240

830:                                              ; preds = %840, %791
  %831 = phi i64 [ 0, %791 ], [ %846, %840 ]
  %832 = icmp ugt i64 %831, %807
  br i1 %832, label %849, label %833

833:                                              ; preds = %830
  br i1 %786, label %834, label %858

834:                                              ; preds = %833
  %835 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 43
  %836 = fmul double %813, 2.000000e+00
  %837 = fcmp ogt double %836, 1.000000e+00
  %838 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 8
  %839 = fcmp ult double %836, 0.000000e+00
  br label %863

840:                                              ; preds = %840, %817
  %841 = phi i64 [ 0, %817 ], [ %847, %840 ]
  %842 = phi i64 [ 0, %817 ], [ %846, %840 ]
  %843 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %819, i64 %841, i32 6
  %844 = load i32, ptr %843, align 8, !tbaa !229
  %845 = sext i32 %844 to i64
  %846 = add i64 %842, %845
  %847 = add nuw nsw i64 %841, 1
  %848 = icmp eq i64 %847, %820
  br i1 %848, label %830, label %840, !llvm.loop !241

849:                                              ; preds = %830
  %850 = uitofp i64 %831 to double
  %851 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 4
  %852 = load double, ptr %851, align 8, !tbaa !122
  %853 = fmul double %852, %850
  %854 = sitofp i32 %785 to double
  %855 = fmul double %854, 1.000000e+03
  %856 = fdiv double %853, %855
  %857 = fptosi double %856 to i32
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.85, i32 noundef %857) #17
  br label %1936

858:                                              ; preds = %986, %833
  %859 = phi i32 [ %785, %833 ], [ %993, %986 ]
  %860 = shl i32 %859, 3
  %861 = call ptr @x264_malloc(i32 noundef %860) #17
  %862 = icmp eq ptr %861, null
  br i1 %862, label %1936, label %996

863:                                              ; preds = %986, %834
  %864 = phi i64 [ 0, %834 ], [ %992, %986 ]
  %865 = load ptr, ptr %835, align 8, !tbaa !96
  br i1 %837, label %866, label %928

866:                                              ; preds = %863, %920
  %867 = phi i64 [ %923, %920 ], [ 1, %863 ]
  %868 = phi double [ %887, %920 ], [ 1.000000e+00, %863 ]
  %869 = phi double [ %922, %920 ], [ 0.000000e+00, %863 ]
  %870 = phi double [ %921, %920 ], [ 0.000000e+00, %863 ]
  %871 = load i32, ptr %784, align 8, !tbaa !225
  %872 = sext i32 %871 to i64
  %873 = sub nsw i64 %872, %864
  %874 = icmp slt i64 %867, %873
  br i1 %874, label %875, label %928

875:                                              ; preds = %866
  %876 = load ptr, ptr %835, align 8, !tbaa !96
  %877 = add nuw nsw i64 %867, %864
  %878 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %876, i64 %877, i32 11
  %879 = load i32, ptr %878, align 4, !tbaa !242
  %880 = sitofp i32 %879 to float
  %881 = load i32, ptr %838, align 8, !tbaa !162
  %882 = sitofp i32 %881 to float
  %883 = fdiv float %880, %882
  %884 = fpext float %883 to double
  %885 = fmul double %884, %884
  %886 = fsub double 1.000000e+00, %885
  %887 = fmul double %868, %886
  %888 = fcmp uge double %887, 1.000000e-04
  br i1 %888, label %889, label %920

889:                                              ; preds = %875
  %890 = trunc i64 %867 to i32
  %891 = mul i32 %890, %890
  %892 = sub i32 0, %891
  %893 = sitofp i32 %892 to double
  %894 = fdiv double %893, 2.000000e+02
  %895 = call double @exp(double noundef %894) #17
  %896 = fmul double %887, %895
  %897 = fadd double %870, %896
  %898 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %876, i64 %877, i32 5
  %899 = load i32, ptr %898, align 4, !tbaa !243
  %900 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %876, i64 %877, i32 3
  %901 = load double, ptr %900, align 8, !tbaa !228
  %902 = call double @pow(double noundef %901, double noundef 1.100000e+00) #17
  %903 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %876, i64 %877, i32 4
  %904 = load i32, ptr %903, align 8, !tbaa !244
  %905 = load double, ptr %900, align 8, !tbaa !228
  %906 = fcmp ogt double %905, 1.000000e+00
  %907 = select i1 %906, double %905, double 1.000000e+00
  %908 = sitofp i32 %904 to double
  %909 = sitofp i32 %899 to double
  %910 = fadd double %909, 1.000000e-01
  %911 = call double @pow(double noundef %907, double noundef 5.000000e-01) #17
  %912 = fmul double %911, %908
  %913 = call double @llvm.fmuladd.f64(double %910, double %902, double %912)
  %914 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %876, i64 %877, i32 6
  %915 = load i32, ptr %914, align 8, !tbaa !229
  %916 = sitofp i32 %915 to double
  %917 = fadd double %913, %916
  %918 = fsub double %917, %916
  %919 = call double @llvm.fmuladd.f64(double %896, double %918, double %869)
  br label %920

920:                                              ; preds = %889, %875
  %921 = phi double [ %897, %889 ], [ %870, %875 ]
  %922 = phi double [ %919, %889 ], [ %869, %875 ]
  %923 = add nuw nsw i64 %867, 1
  %924 = trunc i64 %923 to i32
  %925 = sitofp i32 %924 to double
  %926 = fcmp ogt double %836, %925
  %927 = select i1 %888, i1 %926, i1 false
  br i1 %927, label %866, label %928, !llvm.loop !245

928:                                              ; preds = %920, %866, %863
  %929 = phi double [ 0.000000e+00, %863 ], [ %921, %920 ], [ %870, %866 ]
  %930 = phi double [ 0.000000e+00, %863 ], [ %922, %920 ], [ %869, %866 ]
  br i1 %839, label %986, label %938

931:                                              ; preds = %938
  %932 = add nuw nsw i64 %939, 1
  %933 = trunc i64 %932 to i32
  %934 = sitofp i32 %933 to double
  %935 = fcmp oge double %836, %934
  %936 = icmp ult i64 %939, %864
  %937 = and i1 %936, %935
  br i1 %937, label %938, label %986, !llvm.loop !246

938:                                              ; preds = %928, %931
  %939 = phi i64 [ %932, %931 ], [ 0, %928 ]
  %940 = phi double [ %984, %931 ], [ 1.000000e+00, %928 ]
  %941 = phi double [ %974, %931 ], [ %930, %928 ]
  %942 = phi double [ %952, %931 ], [ %929, %928 ]
  %943 = load ptr, ptr %835, align 8, !tbaa !96
  %944 = sub nsw i64 %864, %939
  %945 = trunc i64 %939 to i32
  %946 = mul i32 %945, %945
  %947 = sub i32 0, %946
  %948 = sitofp i32 %947 to double
  %949 = fdiv double %948, 2.000000e+02
  %950 = call double @exp(double noundef %949) #17
  %951 = fmul double %940, %950
  %952 = fadd double %942, %951
  %953 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %943, i64 %944, i32 5
  %954 = load i32, ptr %953, align 4, !tbaa !243
  %955 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %943, i64 %944, i32 3
  %956 = load double, ptr %955, align 8, !tbaa !228
  %957 = call double @pow(double noundef %956, double noundef 1.100000e+00) #17
  %958 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %943, i64 %944, i32 4
  %959 = load i32, ptr %958, align 8, !tbaa !244
  %960 = load double, ptr %955, align 8, !tbaa !228
  %961 = fcmp ogt double %960, 1.000000e+00
  %962 = select i1 %961, double %960, double 1.000000e+00
  %963 = sitofp i32 %959 to double
  %964 = sitofp i32 %954 to double
  %965 = fadd double %964, 1.000000e-01
  %966 = call double @pow(double noundef %962, double noundef 5.000000e-01) #17
  %967 = fmul double %966, %963
  %968 = call double @llvm.fmuladd.f64(double %965, double %957, double %967)
  %969 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %943, i64 %944, i32 6
  %970 = load i32, ptr %969, align 8, !tbaa !229
  %971 = sitofp i32 %970 to double
  %972 = fadd double %968, %971
  %973 = fsub double %972, %971
  %974 = call double @llvm.fmuladd.f64(double %951, double %973, double %941)
  %975 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %943, i64 %944, i32 11
  %976 = load i32, ptr %975, align 4, !tbaa !242
  %977 = sitofp i32 %976 to float
  %978 = load i32, ptr %838, align 8, !tbaa !162
  %979 = sitofp i32 %978 to float
  %980 = fdiv float %977, %979
  %981 = fpext float %980 to double
  %982 = fmul double %981, %981
  %983 = fsub double 1.000000e+00, %982
  %984 = fmul double %940, %983
  %985 = fcmp uge double %984, 1.000000e-04
  br i1 %985, label %931, label %986

986:                                              ; preds = %938, %931, %928
  %987 = phi double [ %929, %928 ], [ %952, %931 ], [ %952, %938 ]
  %988 = phi double [ %930, %928 ], [ %974, %931 ], [ %974, %938 ]
  %989 = fdiv double %988, %987
  %990 = fptrunc double %989 to float
  %991 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %865, i64 %864, i32 14
  store float %990, ptr %991, align 8, !tbaa !247
  %992 = add nuw nsw i64 %864, 1
  %993 = load i32, ptr %784, align 8, !tbaa !225
  %994 = sext i32 %993 to i64
  %995 = icmp slt i64 %992, %994
  br i1 %995, label %863, label %858, !llvm.loop !248

996:                                              ; preds = %858
  %997 = icmp sgt i32 %816, 1
  br i1 %997, label %998, label %1003

998:                                              ; preds = %996
  %999 = load i32, ptr %784, align 8, !tbaa !225
  %1000 = shl i32 %999, 3
  %1001 = call ptr @x264_malloc(i32 noundef %1000) #17
  %1002 = icmp eq ptr %1001, null
  br i1 %1002, label %1936, label %1003

1003:                                             ; preds = %998, %996
  %1004 = phi ptr [ %1001, %998 ], [ %861, %996 ]
  %1005 = load i32, ptr %784, align 8, !tbaa !225
  %1006 = icmp sgt i32 %1005, 0
  br i1 %1006, label %1007, label %1009

1007:                                             ; preds = %1003
  %1008 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 43
  br label %1026

1009:                                             ; preds = %1103, %1003
  %1010 = phi double [ 1.000000e+00, %1003 ], [ %1132, %1103 ]
  %1011 = uitofp i64 %807 to double
  %1012 = fdiv double %1011, %1010
  %1013 = fmul double %1012, 1.000000e+04
  %1014 = fmul double %1012, 0x3E7AD7F29ABCAF48
  %1015 = fcmp ogt double %1013, %1014
  br i1 %1015, label %1016, label %1142

1016:                                             ; preds = %1009
  %1017 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 46
  %1018 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 49
  %1019 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 48
  %1020 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 43
  %1021 = icmp sgt i32 %815, -1
  %1022 = lshr i32 %815, 1
  %1023 = fcmp oeq float %809, 0.000000e+00
  %1024 = fmul double %810, %810
  %1025 = zext nneg i32 %816 to i64
  br label %1143

1026:                                             ; preds = %1103, %1007
  %1027 = phi i64 [ 0, %1007 ], [ %1138, %1103 ]
  %1028 = phi double [ 1.000000e+00, %1007 ], [ %1132, %1103 ]
  %1029 = load ptr, ptr %1008, align 8, !tbaa !96
  %1030 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1029, i64 %1027
  %1031 = load ptr, ptr %16, align 16, !tbaa !95
  %1032 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1031, i64 0, i32 65
  %1033 = load i32, ptr %1032, align 8, !tbaa !198
  %1034 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1031, i64 0, i32 66
  %1035 = zext i32 %1033 to i64
  br label %1036

1036:                                             ; preds = %1054, %1026
  %1037 = phi i64 [ %1039, %1054 ], [ %1035, %1026 ]
  %1038 = phi ptr [ %1056, %1054 ], [ undef, %1026 ]
  %1039 = add nsw i64 %1037, -1
  %1040 = trunc i64 %1037 to i32
  %1041 = icmp slt i32 %1040, 1
  br i1 %1041, label %1057, label %1042

1042:                                             ; preds = %1036
  %1043 = load ptr, ptr %1034, align 8, !tbaa !199
  %1044 = getelementptr inbounds %struct.x264_zone_t, ptr %1043, i64 %1039
  %1045 = load i32, ptr %1044, align 8, !tbaa !200
  %1046 = sext i32 %1045 to i64
  %1047 = icmp slt i64 %1027, %1046
  br i1 %1047, label %1053, label %1048

1048:                                             ; preds = %1042
  %1049 = getelementptr inbounds %struct.x264_zone_t, ptr %1043, i64 %1039, i32 1
  %1050 = load i32, ptr %1049, align 4, !tbaa !201
  %1051 = sext i32 %1050 to i64
  %1052 = icmp sgt i64 %1027, %1051
  br i1 %1052, label %1053, label %1054

1053:                                             ; preds = %1048, %1042
  br label %1054

1054:                                             ; preds = %1053, %1048
  %1055 = phi i1 [ true, %1053 ], [ false, %1048 ]
  %1056 = phi ptr [ %1038, %1053 ], [ %1044, %1048 ]
  br i1 %1055, label %1036, label %1057, !llvm.loop !249

1057:                                             ; preds = %1054, %1036
  %1058 = phi ptr [ %1056, %1054 ], [ null, %1036 ]
  %1059 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1029, i64 %1027, i32 14
  %1060 = load float, ptr %1059, align 8, !tbaa !247
  %1061 = fpext float %1060 to double
  %1062 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1031, i64 0, i32 7
  %1063 = load double, ptr %1062, align 8, !tbaa !117
  %1064 = fsub double 1.000000e+00, %1063
  %1065 = call double @pow(double noundef %1061, double noundef %1064) #17
  %1066 = call double @llvm.fabs.f64(double %1065)
  %1067 = fcmp ueq double %1066, 0x7FF0000000000000
  br i1 %1067, label %1075, label %1068

1068:                                             ; preds = %1057
  %1069 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1029, i64 %1027, i32 5
  %1070 = load i32, ptr %1069, align 4, !tbaa !243
  %1071 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1029, i64 %1027, i32 4
  %1072 = load i32, ptr %1071, align 8, !tbaa !244
  %1073 = sub i32 0, %1072
  %1074 = icmp eq i32 %1070, %1073
  br i1 %1074, label %1075, label %1080

1075:                                             ; preds = %1068, %1057
  %1076 = load i32, ptr %1030, align 8, !tbaa !99
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1031, i64 0, i32 45, i64 %1077
  %1079 = load double, ptr %1078, align 8, !tbaa !181
  br label %1083

1080:                                             ; preds = %1068
  %1081 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1031, i64 0, i32 26
  store double %1065, ptr %1081, align 8, !tbaa !250
  %1082 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1031, i64 0, i32 44
  store double %1065, ptr %1082, align 8, !tbaa !176
  br label %1083

1083:                                             ; preds = %1080, %1075
  %1084 = phi double [ %1079, %1075 ], [ %1065, %1080 ]
  %1085 = icmp eq ptr %1058, null
  br i1 %1085, label %1103, label %1086

1086:                                             ; preds = %1083
  %1087 = getelementptr inbounds %struct.x264_zone_t, ptr %1058, i64 0, i32 2
  %1088 = load i32, ptr %1087, align 8, !tbaa !189
  %1089 = icmp eq i32 %1088, 0
  br i1 %1089, label %1098, label %1090

1090:                                             ; preds = %1086
  %1091 = getelementptr inbounds %struct.x264_zone_t, ptr %1058, i64 0, i32 3
  %1092 = load i32, ptr %1091, align 4, !tbaa !251
  %1093 = sitofp i32 %1092 to double
  %1094 = fadd double %1093, -1.200000e+01
  %1095 = fdiv double %1094, 6.000000e+00
  %1096 = call double @exp2(double %1095) #17
  %1097 = fmul double %1096, 8.500000e-01
  br label %1103

1098:                                             ; preds = %1086
  %1099 = getelementptr inbounds %struct.x264_zone_t, ptr %1058, i64 0, i32 4
  %1100 = load float, ptr %1099, align 8, !tbaa !188
  %1101 = fpext float %1100 to double
  %1102 = fdiv double %1084, %1101
  br label %1103

1103:                                             ; preds = %1098, %1090, %1083
  %1104 = phi double [ %1097, %1090 ], [ %1102, %1098 ], [ %1084, %1083 ]
  %1105 = load ptr, ptr %1008, align 8, !tbaa !96
  %1106 = fcmp olt double %1104, 1.000000e-01
  %1107 = select i1 %1106, double 1.000000e-01, double %1104
  %1108 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1105, i64 %1027, i32 5
  %1109 = load i32, ptr %1108, align 4, !tbaa !243
  %1110 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1105, i64 %1027, i32 3
  %1111 = load double, ptr %1110, align 8, !tbaa !228
  %1112 = fdiv double %1111, %1107
  %1113 = call double @pow(double noundef %1112, double noundef 1.100000e+00) #17
  %1114 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1105, i64 %1027, i32 4
  %1115 = load i32, ptr %1114, align 8, !tbaa !244
  %1116 = load double, ptr %1110, align 8, !tbaa !228
  %1117 = fcmp ogt double %1116, 1.000000e+00
  %1118 = select i1 %1117, double %1116, double 1.000000e+00
  %1119 = sitofp i32 %1115 to double
  %1120 = sitofp i32 %1109 to double
  %1121 = fadd double %1120, 1.000000e-01
  %1122 = fcmp ogt double %1107, 1.000000e+00
  %1123 = select i1 %1122, double %1107, double 1.000000e+00
  %1124 = fdiv double %1118, %1123
  %1125 = call double @pow(double noundef %1124, double noundef 5.000000e-01) #17
  %1126 = fmul double %1125, %1119
  %1127 = call double @llvm.fmuladd.f64(double %1121, double %1113, double %1126)
  %1128 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1105, i64 %1027, i32 6
  %1129 = load i32, ptr %1128, align 8, !tbaa !229
  %1130 = sitofp i32 %1129 to double
  %1131 = fadd double %1127, %1130
  %1132 = fadd double %1028, %1131
  %1133 = load ptr, ptr %1008, align 8, !tbaa !96
  %1134 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1133, i64 %1027
  %1135 = load i32, ptr %1134, align 8, !tbaa !99
  %1136 = sext i32 %1135 to i64
  %1137 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 45, i64 %1136
  store double %1104, ptr %1137, align 8, !tbaa !181
  %1138 = add nuw nsw i64 %1027, 1
  %1139 = load i32, ptr %784, align 8, !tbaa !225
  %1140 = sext i32 %1139 to i64
  %1141 = icmp slt i64 %1138, %1140
  br i1 %1141, label %1026, label %1009, !llvm.loop !252

1142:                                             ; preds = %1429, %1009
  call void @x264_free(ptr noundef nonnull %861) #17
  br i1 %997, label %1480, label %1481

1143:                                             ; preds = %1429, %1016
  %1144 = phi double [ 0.000000e+00, %1016 ], [ %1433, %1429 ]
  %1145 = phi double [ %1013, %1016 ], [ %1434, %1429 ]
  %1146 = fadd double %1144, %1145
  store i32 -1, ptr %1017, align 8, !tbaa !163
  store double 1.000000e+00, ptr %1018, align 8, !tbaa !253
  store double 0.000000e+00, ptr %1019, align 8, !tbaa !165
  %1147 = load i32, ptr %784, align 8, !tbaa !225
  %1148 = icmp sgt i32 %1147, 0
  br i1 %1148, label %1152, label %1149

1149:                                             ; preds = %1229, %1143
  %1150 = phi i32 [ %1147, %1143 ], [ %1238, %1229 ]
  %1151 = zext i32 %1150 to i64
  br label %1241

1152:                                             ; preds = %1143, %1229
  %1153 = phi i64 [ %1237, %1229 ], [ 0, %1143 ]
  %1154 = load ptr, ptr %1020, align 8, !tbaa !96
  %1155 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1154, i64 %1153
  %1156 = load ptr, ptr %16, align 16, !tbaa !95
  %1157 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1156, i64 0, i32 65
  %1158 = load i32, ptr %1157, align 8, !tbaa !198
  %1159 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1156, i64 0, i32 66
  %1160 = zext i32 %1158 to i64
  br label %1161

1161:                                             ; preds = %1179, %1152
  %1162 = phi i64 [ %1164, %1179 ], [ %1160, %1152 ]
  %1163 = phi ptr [ %1181, %1179 ], [ undef, %1152 ]
  %1164 = add nsw i64 %1162, -1
  %1165 = trunc i64 %1162 to i32
  %1166 = icmp slt i32 %1165, 1
  br i1 %1166, label %1182, label %1167

1167:                                             ; preds = %1161
  %1168 = load ptr, ptr %1159, align 8, !tbaa !199
  %1169 = getelementptr inbounds %struct.x264_zone_t, ptr %1168, i64 %1164
  %1170 = load i32, ptr %1169, align 8, !tbaa !200
  %1171 = sext i32 %1170 to i64
  %1172 = icmp slt i64 %1153, %1171
  br i1 %1172, label %1178, label %1173

1173:                                             ; preds = %1167
  %1174 = getelementptr inbounds %struct.x264_zone_t, ptr %1168, i64 %1164, i32 1
  %1175 = load i32, ptr %1174, align 4, !tbaa !201
  %1176 = sext i32 %1175 to i64
  %1177 = icmp sgt i64 %1153, %1176
  br i1 %1177, label %1178, label %1179

1178:                                             ; preds = %1173, %1167
  br label %1179

1179:                                             ; preds = %1178, %1173
  %1180 = phi i1 [ true, %1178 ], [ false, %1173 ]
  %1181 = phi ptr [ %1163, %1178 ], [ %1169, %1173 ]
  br i1 %1180, label %1161, label %1182, !llvm.loop !249

1182:                                             ; preds = %1179, %1161
  %1183 = phi ptr [ %1181, %1179 ], [ null, %1161 ]
  %1184 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1154, i64 %1153, i32 14
  %1185 = load float, ptr %1184, align 8, !tbaa !247
  %1186 = fpext float %1185 to double
  %1187 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1156, i64 0, i32 7
  %1188 = load double, ptr %1187, align 8, !tbaa !117
  %1189 = fsub double 1.000000e+00, %1188
  %1190 = call double @pow(double noundef %1186, double noundef %1189) #17
  %1191 = call double @llvm.fabs.f64(double %1190)
  %1192 = fcmp ueq double %1191, 0x7FF0000000000000
  br i1 %1192, label %1200, label %1193

1193:                                             ; preds = %1182
  %1194 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1154, i64 %1153, i32 5
  %1195 = load i32, ptr %1194, align 4, !tbaa !243
  %1196 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1154, i64 %1153, i32 4
  %1197 = load i32, ptr %1196, align 8, !tbaa !244
  %1198 = sub i32 0, %1197
  %1199 = icmp eq i32 %1195, %1198
  br i1 %1199, label %1200, label %1205

1200:                                             ; preds = %1193, %1182
  %1201 = load i32, ptr %1155, align 8, !tbaa !99
  %1202 = sext i32 %1201 to i64
  %1203 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1156, i64 0, i32 45, i64 %1202
  %1204 = load double, ptr %1203, align 8, !tbaa !181
  br label %1209

1205:                                             ; preds = %1193
  %1206 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1156, i64 0, i32 26
  store double %1190, ptr %1206, align 8, !tbaa !250
  %1207 = fdiv double %1190, %1146
  %1208 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1156, i64 0, i32 44
  store double %1207, ptr %1208, align 8, !tbaa !176
  br label %1209

1209:                                             ; preds = %1205, %1200
  %1210 = phi double [ %1204, %1200 ], [ %1207, %1205 ]
  %1211 = icmp eq ptr %1183, null
  br i1 %1211, label %1229, label %1212

1212:                                             ; preds = %1209
  %1213 = getelementptr inbounds %struct.x264_zone_t, ptr %1183, i64 0, i32 2
  %1214 = load i32, ptr %1213, align 8, !tbaa !189
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1224, label %1216

1216:                                             ; preds = %1212
  %1217 = getelementptr inbounds %struct.x264_zone_t, ptr %1183, i64 0, i32 3
  %1218 = load i32, ptr %1217, align 4, !tbaa !251
  %1219 = sitofp i32 %1218 to double
  %1220 = fadd double %1219, -1.200000e+01
  %1221 = fdiv double %1220, 6.000000e+00
  %1222 = call double @exp2(double %1221) #17
  %1223 = fmul double %1222, 8.500000e-01
  br label %1229

1224:                                             ; preds = %1212
  %1225 = getelementptr inbounds %struct.x264_zone_t, ptr %1183, i64 0, i32 4
  %1226 = load float, ptr %1225, align 8, !tbaa !188
  %1227 = fpext float %1226 to double
  %1228 = fdiv double %1210, %1227
  br label %1229

1229:                                             ; preds = %1224, %1216, %1209
  %1230 = phi double [ %1223, %1216 ], [ %1228, %1224 ], [ %1210, %1209 ]
  %1231 = getelementptr inbounds double, ptr %861, i64 %1153
  store double %1230, ptr %1231, align 8, !tbaa !181
  %1232 = load ptr, ptr %1020, align 8, !tbaa !96
  %1233 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1232, i64 %1153
  %1234 = load i32, ptr %1233, align 8, !tbaa !99
  %1235 = sext i32 %1234 to i64
  %1236 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 45, i64 %1235
  store double %1230, ptr %1236, align 8, !tbaa !181
  %1237 = add nuw nsw i64 %1153, 1
  %1238 = load i32, ptr %784, align 8, !tbaa !225
  %1239 = sext i32 %1238 to i64
  %1240 = icmp slt i64 %1237, %1239
  br i1 %1240, label %1152, label %1149, !llvm.loop !254

1241:                                             ; preds = %1371, %1149
  %1242 = phi i64 [ %1151, %1149 ], [ %1243, %1371 ]
  %1243 = add nsw i64 %1242, -1
  %1244 = trunc i64 %1242 to i32
  %1245 = icmp sgt i32 %1244, 0
  br i1 %1245, label %1250, label %1246

1246:                                             ; preds = %1241
  br i1 %997, label %1247, label %1426

1247:                                             ; preds = %1246
  %1248 = load i32, ptr %784, align 8, !tbaa !225
  %1249 = icmp sgt i32 %1248, 0
  br i1 %1249, label %1374, label %1426

1250:                                             ; preds = %1241
  %1251 = load ptr, ptr %1020, align 8, !tbaa !96
  %1252 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1251, i64 %1243
  %1253 = getelementptr inbounds double, ptr %861, i64 %1243
  %1254 = load double, ptr %1253, align 8, !tbaa !181
  %1255 = load ptr, ptr %16, align 16, !tbaa !95
  %1256 = load i32, ptr %1252, align 8, !tbaa !99
  %1257 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 45
  %1258 = load double, ptr %1257, align 8, !tbaa !181
  %1259 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 46
  %1260 = load i32, ptr %1259, align 8, !tbaa !163
  %1261 = sext i32 %1260 to i64
  %1262 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 45, i64 %1261
  %1263 = load double, ptr %1262, align 8, !tbaa !181
  %1264 = icmp eq i32 %1256, 2
  br i1 %1264, label %1265, label %1293

1265:                                             ; preds = %1250
  %1266 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 47
  %1267 = load double, ptr %1266, align 8, !tbaa !166
  %1268 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 48
  %1269 = load double, ptr %1268, align 8, !tbaa !165
  %1270 = fdiv double %1267, %1269
  %1271 = fadd double %1270, -1.200000e+01
  %1272 = fdiv double %1271, 6.000000e+00
  %1273 = call double @exp2(double %1272) #17
  %1274 = fmul double %1273, 8.500000e-01
  %1275 = load float, ptr %135, align 8, !tbaa !169
  %1276 = call float @llvm.fabs.f32(float %1275)
  %1277 = fpext float %1276 to double
  %1278 = load double, ptr %1268, align 8, !tbaa !165
  %1279 = fcmp ugt double %1278, 0.000000e+00
  br i1 %1279, label %1280, label %1312

1280:                                             ; preds = %1265
  %1281 = fcmp olt float %1275, 0.000000e+00
  br i1 %1281, label %1282, label %1284

1282:                                             ; preds = %1280
  %1283 = fdiv double %1254, %1277
  br label %1312

1284:                                             ; preds = %1280
  %1285 = fcmp ult double %1278, 1.000000e+00
  br i1 %1285, label %1288, label %1286

1286:                                             ; preds = %1284
  %1287 = fdiv double %1274, %1277
  br label %1312

1288:                                             ; preds = %1284
  %1289 = fmul double %1274, %1278
  %1290 = fdiv double %1289, %1277
  %1291 = fsub double 1.000000e+00, %1278
  %1292 = call double @llvm.fmuladd.f64(double %1291, double %1254, double %1290)
  br label %1312

1293:                                             ; preds = %1250
  switch i32 %1256, label %1312 [
    i32 1, label %1294
    i32 0, label %1305
  ]

1294:                                             ; preds = %1293
  %1295 = load float, ptr %141, align 4, !tbaa !159
  %1296 = fcmp ogt float %1295, 0.000000e+00
  %1297 = select i1 %1296, double %1263, double %1254
  %1298 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1251, i64 %1243, i32 2
  %1299 = load i32, ptr %1298, align 8, !tbaa !101
  %1300 = icmp eq i32 %1299, 0
  br i1 %1300, label %1301, label %1312

1301:                                             ; preds = %1294
  %1302 = call float @llvm.fabs.f32(float %1295)
  %1303 = fpext float %1302 to double
  %1304 = fmul double %1297, %1303
  br label %1312

1305:                                             ; preds = %1293
  %1306 = icmp eq i32 %1260, 0
  br i1 %1306, label %1307, label %1312

1307:                                             ; preds = %1305
  %1308 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1251, i64 %1243, i32 5
  %1309 = load i32, ptr %1308, align 4, !tbaa !243
  %1310 = icmp eq i32 %1309, 0
  br i1 %1310, label %1311, label %1312

1311:                                             ; preds = %1307
  br label %1312

1312:                                             ; preds = %1311, %1307, %1305, %1301, %1294, %1293, %1288, %1286, %1282, %1265
  %1313 = phi double [ %1297, %1294 ], [ %1304, %1301 ], [ %1258, %1311 ], [ %1254, %1307 ], [ %1254, %1305 ], [ %1283, %1282 ], [ %1287, %1286 ], [ %1292, %1288 ], [ %1254, %1265 ], [ %1254, %1293 ]
  %1314 = load i32, ptr %1259, align 8, !tbaa !163
  %1315 = icmp eq i32 %1314, %1256
  br i1 %1315, label %1316, label %1333

1316:                                             ; preds = %1312
  br i1 %1264, label %1317, label %1321

1317:                                             ; preds = %1316
  %1318 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 49
  %1319 = load double, ptr %1318, align 8, !tbaa !253
  %1320 = fcmp olt double %1319, 1.000000e+00
  br i1 %1320, label %1321, label %1333

1321:                                             ; preds = %1317, %1316
  %1322 = sext i32 %1256 to i64
  %1323 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 45, i64 %1322
  %1324 = load double, ptr %1323, align 8, !tbaa !181
  %1325 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 52
  %1326 = load double, ptr %1325, align 8, !tbaa !175
  %1327 = fmul double %1324, %1326
  %1328 = fdiv double %1324, %1326
  %1329 = fcmp ogt double %1313, %1327
  br i1 %1329, label %1333, label %1330

1330:                                             ; preds = %1321
  %1331 = fcmp olt double %1313, %1328
  br i1 %1331, label %1332, label %1333

1332:                                             ; preds = %1330
  br label %1333

1333:                                             ; preds = %1332, %1330, %1321, %1317, %1312
  %1334 = phi double [ %1313, %1317 ], [ %1313, %1312 ], [ %1328, %1332 ], [ %1313, %1330 ], [ %1327, %1321 ]
  %1335 = sext i32 %1256 to i64
  %1336 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 45, i64 %1335
  store double %1334, ptr %1336, align 8, !tbaa !181
  %1337 = icmp eq i32 %1256, 1
  br i1 %1337, label %1339, label %1338

1338:                                             ; preds = %1333
  store i32 %1256, ptr %1259, align 8, !tbaa !163
  br label %1339

1339:                                             ; preds = %1338, %1333
  br i1 %1264, label %1340, label %1345

1340:                                             ; preds = %1339
  %1341 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 48
  %1342 = load double, ptr %1341, align 8, !tbaa !165
  %1343 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 49
  store double %1342, ptr %1343, align 8, !tbaa !253
  %1344 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1344, i8 0, i64 16, i1 false)
  br label %1345

1345:                                             ; preds = %1340, %1339
  %1346 = icmp eq i32 %1256, 0
  br i1 %1346, label %1347, label %1371

1347:                                             ; preds = %1345
  %1348 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1251, i64 %1243, i32 11
  %1349 = load i32, ptr %1348, align 4, !tbaa !242
  %1350 = sitofp i32 %1349 to float
  %1351 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 8
  %1352 = load i32, ptr %1351, align 8, !tbaa !162
  %1353 = sitofp i32 %1352 to float
  %1354 = fdiv float %1350, %1353
  %1355 = fpext float %1354 to double
  %1356 = fmul double %1355, %1355
  %1357 = fsub double 1.000000e+00, %1356
  %1358 = fptrunc double %1357 to float
  %1359 = fpext float %1358 to double
  %1360 = fdiv double %1334, 8.500000e-01
  %1361 = call double @log2(double noundef %1360) #17
  %1362 = call double @llvm.fmuladd.f64(double %1361, double 6.000000e+00, double 1.200000e+01)
  %1363 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 47
  %1364 = load double, ptr %1363, align 8, !tbaa !166
  %1365 = fadd double %1362, %1364
  %1366 = fmul double %1365, %1359
  store double %1366, ptr %1363, align 8, !tbaa !166
  %1367 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1255, i64 0, i32 48
  %1368 = load double, ptr %1367, align 8, !tbaa !165
  %1369 = fadd double %1368, 1.000000e+00
  %1370 = fmul double %1369, %1359
  store double %1370, ptr %1367, align 8, !tbaa !165
  br label %1371

1371:                                             ; preds = %1347, %1345
  store double %1334, ptr %1253, align 8, !tbaa !181
  %1372 = fcmp ult double %1334, 0.000000e+00
  br i1 %1372, label %1373, label %1241, !llvm.loop !255

1373:                                             ; preds = %1371
  call void @__assert_fail(ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.9, i32 noundef 2511, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #19
  unreachable

1374:                                             ; preds = %1247, %1383
  %1375 = phi i64 [ %1386, %1383 ], [ 0, %1247 ]
  %1376 = load ptr, ptr %1020, align 8, !tbaa !96
  %1377 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1376, i64 %1375
  br i1 %1021, label %1378, label %1383

1378:                                             ; preds = %1374
  %1379 = trunc i64 %1375 to i32
  %1380 = sub i32 %1379, %1022
  br label %1390

1381:                                             ; preds = %1421
  %1382 = fdiv double %1422, %1423
  br label %1383

1383:                                             ; preds = %1381, %1374
  %1384 = phi double [ 0x7FF8000000000000, %1374 ], [ %1382, %1381 ]
  %1385 = getelementptr inbounds double, ptr %1004, i64 %1375
  store double %1384, ptr %1385, align 8, !tbaa !181
  %1386 = add nuw nsw i64 %1375, 1
  %1387 = load i32, ptr %784, align 8, !tbaa !225
  %1388 = sext i32 %1387 to i64
  %1389 = icmp slt i64 %1386, %1388
  br i1 %1389, label %1374, label %1426, !llvm.loop !256

1390:                                             ; preds = %1421, %1378
  %1391 = phi i64 [ 0, %1378 ], [ %1424, %1421 ]
  %1392 = phi double [ 0.000000e+00, %1378 ], [ %1423, %1421 ]
  %1393 = phi double [ 0.000000e+00, %1378 ], [ %1422, %1421 ]
  %1394 = trunc i64 %1391 to i32
  %1395 = add i32 %1380, %1394
  br i1 %1023, label %1403, label %1396

1396:                                             ; preds = %1390
  %1397 = sub nsw i32 %1395, %1379
  %1398 = sitofp i32 %1397 to double
  %1399 = fneg double %1398
  %1400 = fmul double %1399, %1398
  %1401 = fdiv double %1400, %1024
  %1402 = call double @exp(double noundef %1401) #17
  br label %1403

1403:                                             ; preds = %1396, %1390
  %1404 = phi double [ %1402, %1396 ], [ 1.000000e+00, %1390 ]
  %1405 = icmp slt i32 %1395, 0
  br i1 %1405, label %1421, label %1406

1406:                                             ; preds = %1403
  %1407 = load i32, ptr %784, align 8, !tbaa !225
  %1408 = icmp slt i32 %1395, %1407
  br i1 %1408, label %1409, label %1421

1409:                                             ; preds = %1406
  %1410 = load i32, ptr %1377, align 8, !tbaa !99
  %1411 = load ptr, ptr %1020, align 8, !tbaa !96
  %1412 = zext nneg i32 %1395 to i64
  %1413 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1411, i64 %1412
  %1414 = load i32, ptr %1413, align 8, !tbaa !99
  %1415 = icmp eq i32 %1410, %1414
  br i1 %1415, label %1416, label %1421

1416:                                             ; preds = %1409
  %1417 = getelementptr inbounds double, ptr %861, i64 %1412
  %1418 = load double, ptr %1417, align 8, !tbaa !181
  %1419 = call double @llvm.fmuladd.f64(double %1418, double %1404, double %1393)
  %1420 = fadd double %1392, %1404
  br label %1421

1421:                                             ; preds = %1416, %1409, %1406, %1403
  %1422 = phi double [ %1419, %1416 ], [ %1393, %1406 ], [ %1393, %1403 ], [ %1393, %1409 ]
  %1423 = phi double [ %1420, %1416 ], [ %1392, %1406 ], [ %1392, %1403 ], [ %1392, %1409 ]
  %1424 = add nuw nsw i64 %1391, 1
  %1425 = icmp eq i64 %1424, %1025
  br i1 %1425, label %1381, label %1390, !llvm.loop !257

1426:                                             ; preds = %1383, %1247, %1246
  %1427 = load i32, ptr %784, align 8, !tbaa !225
  %1428 = icmp sgt i32 %1427, 0
  br i1 %1428, label %1436, label %1429

1429:                                             ; preds = %1448, %1426
  %1430 = phi double [ 0.000000e+00, %1426 ], [ %1475, %1448 ]
  %1431 = fcmp ogt double %1430, %1011
  %1432 = select i1 %1431, double %1145, double 0.000000e+00
  %1433 = fsub double %1146, %1432
  %1434 = fmul double %1145, 5.000000e-01
  %1435 = fcmp ogt double %1434, %1014
  br i1 %1435, label %1143, label %1142, !llvm.loop !258

1436:                                             ; preds = %1426, %1448
  %1437 = phi i64 [ %1476, %1448 ], [ 0, %1426 ]
  %1438 = phi double [ %1475, %1448 ], [ 0.000000e+00, %1426 ]
  %1439 = load ptr, ptr %1020, align 8, !tbaa !96
  %1440 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1439, i64 %1437
  %1441 = load i32, ptr %1440, align 8, !tbaa !99
  %1442 = getelementptr inbounds double, ptr %1004, i64 %1437
  %1443 = load double, ptr %1442, align 8, !tbaa !181
  %1444 = call fastcc double @clip_qscale(ptr noundef %0, i32 noundef %1441, double noundef %1443)
  %1445 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1439, i64 %1437, i32 9
  store double %1444, ptr %1445, align 8, !tbaa !227
  %1446 = fcmp ult double %1444, 0.000000e+00
  br i1 %1446, label %1447, label %1448

1447:                                             ; preds = %1436
  call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.9, i32 noundef 2544, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #19
  unreachable

1448:                                             ; preds = %1436
  %1449 = fcmp olt double %1444, 1.000000e-01
  %1450 = select i1 %1449, double 1.000000e-01, double %1444
  %1451 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1439, i64 %1437, i32 5
  %1452 = load i32, ptr %1451, align 4, !tbaa !243
  %1453 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1439, i64 %1437, i32 3
  %1454 = load double, ptr %1453, align 8, !tbaa !228
  %1455 = fdiv double %1454, %1450
  %1456 = call double @pow(double noundef %1455, double noundef 1.100000e+00) #17
  %1457 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1439, i64 %1437, i32 4
  %1458 = load i32, ptr %1457, align 8, !tbaa !244
  %1459 = load double, ptr %1453, align 8, !tbaa !228
  %1460 = fcmp ogt double %1459, 1.000000e+00
  %1461 = select i1 %1460, double %1459, double 1.000000e+00
  %1462 = sitofp i32 %1458 to double
  %1463 = sitofp i32 %1452 to double
  %1464 = fadd double %1463, 1.000000e-01
  %1465 = fcmp ogt double %1450, 1.000000e+00
  %1466 = select i1 %1465, double %1450, double 1.000000e+00
  %1467 = fdiv double %1461, %1466
  %1468 = call double @pow(double noundef %1467, double noundef 5.000000e-01) #17
  %1469 = fmul double %1468, %1462
  %1470 = call double @llvm.fmuladd.f64(double %1464, double %1456, double %1469)
  %1471 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1439, i64 %1437, i32 6
  %1472 = load i32, ptr %1471, align 8, !tbaa !229
  %1473 = sitofp i32 %1472 to double
  %1474 = fadd double %1470, %1473
  %1475 = fadd double %1438, %1474
  %1476 = add nuw nsw i64 %1437, 1
  %1477 = load i32, ptr %784, align 8, !tbaa !225
  %1478 = sext i32 %1477 to i64
  %1479 = icmp slt i64 %1476, %1478
  br i1 %1479, label %1436, label %1429, !llvm.loop !259

1480:                                             ; preds = %1142
  call void @x264_free(ptr noundef nonnull %1004) #17
  br label %1481

1481:                                             ; preds = %1480, %1142
  %1482 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 2
  %1483 = load i32, ptr %1482, align 8, !tbaa !153
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1692, label %1485

1485:                                             ; preds = %1481
  %1486 = load ptr, ptr %16, align 16, !tbaa !95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #17
  %1487 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %1488 = load i32, ptr %1487, align 8, !tbaa !203
  %1489 = sitofp i32 %1488 to double
  %1490 = fadd double %1489, -1.200000e+01
  %1491 = fdiv double %1490, 6.000000e+00
  %1492 = call double @exp2(double %1491) #17
  %1493 = fmul double %1492, 8.500000e-01
  %1494 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %1495 = load i32, ptr %1494, align 4, !tbaa !204
  %1496 = sitofp i32 %1495 to double
  %1497 = fadd double %1496, -1.200000e+01
  %1498 = fdiv double %1497, 6.000000e+00
  %1499 = call double @exp2(double %1498) #17
  %1500 = fmul double %1499, 8.500000e-01
  %1501 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1486, i64 0, i32 42
  %1502 = load i32, ptr %1501, align 8, !tbaa !225
  %1503 = shl i32 %1502, 3
  %1504 = add i32 %1503, 8
  %1505 = call ptr @x264_malloc(i32 noundef %1504) #17
  %1506 = icmp eq ptr %1505, null
  br i1 %1506, label %1812, label %1507

1507:                                             ; preds = %1485
  %1508 = getelementptr inbounds double, ptr %1505, i64 1
  %1509 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1486, i64 0, i32 17
  %1510 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %1511 = fmul double %1011, 0x3FEFD70A3D70A3D7
  br label %1512

1512:                                             ; preds = %1667, %1507
  %1513 = phi double [ 0.000000e+00, %1507 ], [ %1665, %1667 ]
  %1514 = fcmp une double %1513, 0.000000e+00
  br i1 %1514, label %1515, label %1567

1515:                                             ; preds = %1512
  %1516 = fdiv double %1513, %1011
  %1517 = fcmp olt double %1516, 0x3FEFF7CED916872B
  %1518 = select i1 %1517, double %1516, double 0x3FEFF7CED916872B
  %1519 = fcmp ogt double %1518, 9.000000e-01
  %1520 = select i1 %1519, double %1518, double 9.000000e-01
  %1521 = load double, ptr %1509, align 8, !tbaa !145
  %1522 = load float, ptr %1510, align 4, !tbaa !151
  %1523 = fpext float %1522 to double
  %1524 = fmul double %1521, %1523
  store double %1524, ptr %1505, align 8, !tbaa !181
  store i32 0, ptr %2, align 4, !tbaa !92
  br label %1530

1525:                                             ; preds = %1548
  %1526 = zext i1 %1563 to i32
  br label %1527

1527:                                             ; preds = %1533, %1525
  %1528 = phi i32 [ 0, %1533 ], [ %1526, %1525 ]
  store i32 %1535, ptr %2, align 4, !tbaa !92
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1567, label %1530, !llvm.loop !260

1530:                                             ; preds = %1527, %1515
  %1531 = call fastcc i32 @find_underflow(ptr noundef %0, ptr noundef nonnull %1508, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1), !range !261
  %1532 = icmp eq i32 %1531, 0
  br i1 %1532, label %1567, label %1533

1533:                                             ; preds = %1530
  %1534 = load i32, ptr %2, align 4, !tbaa !92
  %1535 = load i32, ptr %3, align 4, !tbaa !92
  %1536 = icmp sgt i32 %1534, 0
  %1537 = zext i1 %1536 to i32
  %1538 = add nuw nsw i32 %1534, %1537
  %1539 = icmp sgt i32 %1538, %1535
  br i1 %1539, label %1527, label %1540

1540:                                             ; preds = %1533
  %1541 = load ptr, ptr %16, align 16, !tbaa !95
  %1542 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1541, i64 0, i32 43
  %1543 = load ptr, ptr %1542, align 8, !tbaa !96
  %1544 = sext i32 %1534 to i64
  %1545 = zext i1 %1536 to i64
  %1546 = add nsw i64 %1545, %1544
  %1547 = add i32 %1535, 1
  br label %1548

1548:                                             ; preds = %1548, %1540
  %1549 = phi i64 [ %1546, %1540 ], [ %1564, %1548 ]
  %1550 = phi i1 [ false, %1540 ], [ %1563, %1548 ]
  %1551 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1543, i64 %1549, i32 9
  %1552 = load double, ptr %1551, align 8, !tbaa !227
  %1553 = fcmp olt double %1552, %1493
  %1554 = fcmp ogt double %1552, %1500
  %1555 = select i1 %1554, double %1500, double %1552
  %1556 = select i1 %1553, double %1493, double %1555
  %1557 = fmul double %1520, %1556
  %1558 = fcmp olt double %1557, %1493
  %1559 = fcmp ogt double %1557, %1500
  %1560 = select i1 %1559, double %1500, double %1557
  %1561 = select i1 %1558, double %1493, double %1560
  store double %1561, ptr %1551, align 8, !tbaa !227
  %1562 = fcmp une double %1561, %1556
  %1563 = select i1 %1550, i1 true, i1 %1562
  %1564 = add nsw i64 %1549, 1
  %1565 = trunc i64 %1564 to i32
  %1566 = icmp eq i32 %1547, %1565
  br i1 %1566, label %1525, label %1548, !llvm.loop !262

1567:                                             ; preds = %1530, %1527, %1512
  %1568 = load double, ptr %1509, align 8, !tbaa !145
  %1569 = load float, ptr %1510, align 4, !tbaa !151
  %1570 = fpext float %1569 to double
  %1571 = fsub double 1.000000e+00, %1570
  %1572 = fmul double %1568, %1571
  store double %1572, ptr %1505, align 8, !tbaa !181
  store i32 0, ptr %2, align 4, !tbaa !92
  %1573 = call fastcc i32 @find_underflow(ptr noundef %0, ptr noundef nonnull %1508, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0), !range !261
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1617, label %1583

1575:                                             ; preds = %1598
  %1576 = zext i1 %1613 to i32
  br label %1577

1577:                                             ; preds = %1583, %1575
  %1578 = phi i32 [ 0, %1583 ], [ %1576, %1575 ]
  %1579 = icmp eq i32 %1578, 0
  br i1 %1579, label %1617, label %1580, !llvm.loop !263

1580:                                             ; preds = %1577
  %1581 = call fastcc i32 @find_underflow(ptr noundef %0, ptr noundef nonnull %1508, ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 0), !range !261
  %1582 = icmp eq i32 %1581, 0
  br i1 %1582, label %1617, label %1583, !llvm.loop !263

1583:                                             ; preds = %1567, %1580
  %1584 = load i32, ptr %2, align 4, !tbaa !92
  %1585 = load i32, ptr %3, align 4, !tbaa !92
  %1586 = icmp sgt i32 %1584, 0
  %1587 = zext i1 %1586 to i32
  %1588 = add nuw nsw i32 %1584, %1587
  %1589 = icmp sgt i32 %1588, %1585
  br i1 %1589, label %1577, label %1590

1590:                                             ; preds = %1583
  %1591 = load ptr, ptr %16, align 16, !tbaa !95
  %1592 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1591, i64 0, i32 43
  %1593 = load ptr, ptr %1592, align 8, !tbaa !96
  %1594 = sext i32 %1584 to i64
  %1595 = zext i1 %1586 to i64
  %1596 = add nsw i64 %1595, %1594
  %1597 = add i32 %1585, 1
  br label %1598

1598:                                             ; preds = %1598, %1590
  %1599 = phi i64 [ %1596, %1590 ], [ %1614, %1598 ]
  %1600 = phi i1 [ false, %1590 ], [ %1613, %1598 ]
  %1601 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1593, i64 %1599, i32 9
  %1602 = load double, ptr %1601, align 8, !tbaa !227
  %1603 = fcmp olt double %1602, %1493
  %1604 = fcmp ogt double %1602, %1500
  %1605 = select i1 %1604, double %1500, double %1602
  %1606 = select i1 %1603, double %1493, double %1605
  %1607 = fmul double %1606, 1.001000e+00
  %1608 = fcmp olt double %1607, %1493
  %1609 = fcmp ogt double %1607, %1500
  %1610 = select i1 %1609, double %1500, double %1607
  %1611 = select i1 %1608, double %1493, double %1610
  store double %1611, ptr %1601, align 8, !tbaa !227
  %1612 = fcmp une double %1611, %1606
  %1613 = select i1 %1600, i1 true, i1 %1612
  %1614 = add nsw i64 %1599, 1
  %1615 = trunc i64 %1614 to i32
  %1616 = icmp eq i32 %1597, %1615
  br i1 %1616, label %1575, label %1598, !llvm.loop !262

1617:                                             ; preds = %1577, %1580, %1567
  %1618 = phi i1 [ false, %1567 ], [ %1579, %1580 ], [ %1579, %1577 ]
  %1619 = load ptr, ptr %16, align 16, !tbaa !95
  %1620 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1619, i64 0, i32 42
  %1621 = load i32, ptr %1620, align 8, !tbaa !225
  %1622 = icmp sgt i32 %1621, 0
  br i1 %1622, label %1623, label %1664

1623:                                             ; preds = %1617
  %1624 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1619, i64 0, i32 43
  br label %1625

1625:                                             ; preds = %1625, %1623
  %1626 = phi i64 [ 0, %1623 ], [ %1660, %1625 ]
  %1627 = phi double [ 0.000000e+00, %1623 ], [ %1659, %1625 ]
  %1628 = load ptr, ptr %1624, align 8, !tbaa !96
  %1629 = fptoui double %1627 to i64
  %1630 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1628, i64 %1626, i32 7
  store i64 %1629, ptr %1630, align 8, !tbaa !264
  %1631 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1628, i64 %1626, i32 9
  %1632 = load double, ptr %1631, align 8, !tbaa !227
  %1633 = fcmp olt double %1632, 1.000000e-01
  %1634 = select i1 %1633, double 1.000000e-01, double %1632
  %1635 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1628, i64 %1626, i32 5
  %1636 = load i32, ptr %1635, align 4, !tbaa !243
  %1637 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1628, i64 %1626, i32 3
  %1638 = load double, ptr %1637, align 8, !tbaa !228
  %1639 = fdiv double %1638, %1634
  %1640 = call double @pow(double noundef %1639, double noundef 1.100000e+00) #17
  %1641 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1628, i64 %1626, i32 4
  %1642 = load i32, ptr %1641, align 8, !tbaa !244
  %1643 = load double, ptr %1637, align 8, !tbaa !228
  %1644 = fcmp ogt double %1643, 1.000000e+00
  %1645 = select i1 %1644, double %1643, double 1.000000e+00
  %1646 = sitofp i32 %1642 to double
  %1647 = sitofp i32 %1636 to double
  %1648 = fadd double %1647, 1.000000e-01
  %1649 = fcmp ogt double %1634, 1.000000e+00
  %1650 = select i1 %1649, double %1634, double 1.000000e+00
  %1651 = fdiv double %1645, %1650
  %1652 = call double @pow(double noundef %1651, double noundef 5.000000e-01) #17
  %1653 = fmul double %1652, %1646
  %1654 = call double @llvm.fmuladd.f64(double %1648, double %1640, double %1653)
  %1655 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1628, i64 %1626, i32 6
  %1656 = load i32, ptr %1655, align 8, !tbaa !229
  %1657 = sitofp i32 %1656 to double
  %1658 = fadd double %1654, %1657
  %1659 = fadd double %1627, %1658
  %1660 = add nuw nsw i64 %1626, 1
  %1661 = load i32, ptr %1620, align 8, !tbaa !225
  %1662 = sext i32 %1661 to i64
  %1663 = icmp slt i64 %1660, %1662
  br i1 %1663, label %1625, label %1664, !llvm.loop !265

1664:                                             ; preds = %1625, %1617
  %1665 = phi double [ 0.000000e+00, %1617 ], [ %1659, %1625 ]
  %1666 = fcmp olt double %1665, %1511
  br i1 %1666, label %1667, label %1673

1667:                                             ; preds = %1664
  %1668 = fadd double %1665, 5.000000e-01
  %1669 = fptosi double %1668 to i64
  %1670 = fadd double %1513, 5.000000e-01
  %1671 = fptosi double %1670 to i64
  %1672 = icmp sgt i64 %1669, %1671
  br i1 %1672, label %1512, label %1673, !llvm.loop !266

1673:                                             ; preds = %1667, %1664
  br i1 %1618, label %1674, label %1675

1674:                                             ; preds = %1673
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.96) #17
  br label %1675

1675:                                             ; preds = %1674, %1673
  %1676 = load i32, ptr %1501, align 8, !tbaa !225
  %1677 = icmp sgt i32 %1676, 0
  br i1 %1677, label %1678, label %1683

1678:                                             ; preds = %1675
  %1679 = load double, ptr %1509, align 8, !tbaa !145
  %1680 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1486, i64 0, i32 43
  %1681 = load ptr, ptr %1680, align 8, !tbaa !96
  %1682 = zext nneg i32 %1676 to i64
  br label %1684

1683:                                             ; preds = %1684, %1675
  call void @x264_free(ptr noundef nonnull %1505) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %1692

1684:                                             ; preds = %1684, %1678
  %1685 = phi i64 [ 0, %1678 ], [ %1690, %1684 ]
  %1686 = getelementptr inbounds double, ptr %1508, i64 %1685
  %1687 = load double, ptr %1686, align 8, !tbaa !181
  %1688 = fsub double %1679, %1687
  %1689 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1681, i64 %1685, i32 8
  store double %1688, ptr %1689, align 8, !tbaa !267
  %1690 = add nuw nsw i64 %1685, 1
  %1691 = icmp eq i64 %1690, %1682
  br i1 %1691, label %1683, label %1684, !llvm.loop !268

1692:                                             ; preds = %1683, %1481
  %1693 = load ptr, ptr %16, align 16, !tbaa !95
  %1694 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1693, i64 0, i32 42
  %1695 = load i32, ptr %1694, align 8, !tbaa !225
  %1696 = icmp sgt i32 %1695, 0
  br i1 %1696, label %1697, label %1738

1697:                                             ; preds = %1692
  %1698 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %1693, i64 0, i32 43
  br label %1699

1699:                                             ; preds = %1699, %1697
  %1700 = phi i64 [ 0, %1697 ], [ %1734, %1699 ]
  %1701 = phi double [ 0.000000e+00, %1697 ], [ %1733, %1699 ]
  %1702 = load ptr, ptr %1698, align 8, !tbaa !96
  %1703 = fptoui double %1701 to i64
  %1704 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1702, i64 %1700, i32 7
  store i64 %1703, ptr %1704, align 8, !tbaa !264
  %1705 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1702, i64 %1700, i32 9
  %1706 = load double, ptr %1705, align 8, !tbaa !227
  %1707 = fcmp olt double %1706, 1.000000e-01
  %1708 = select i1 %1707, double 1.000000e-01, double %1706
  %1709 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1702, i64 %1700, i32 5
  %1710 = load i32, ptr %1709, align 4, !tbaa !243
  %1711 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1702, i64 %1700, i32 3
  %1712 = load double, ptr %1711, align 8, !tbaa !228
  %1713 = fdiv double %1712, %1708
  %1714 = call double @pow(double noundef %1713, double noundef 1.100000e+00) #17
  %1715 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1702, i64 %1700, i32 4
  %1716 = load i32, ptr %1715, align 8, !tbaa !244
  %1717 = load double, ptr %1711, align 8, !tbaa !228
  %1718 = fcmp ogt double %1717, 1.000000e+00
  %1719 = select i1 %1718, double %1717, double 1.000000e+00
  %1720 = sitofp i32 %1716 to double
  %1721 = sitofp i32 %1710 to double
  %1722 = fadd double %1721, 1.000000e-01
  %1723 = fcmp ogt double %1708, 1.000000e+00
  %1724 = select i1 %1723, double %1708, double 1.000000e+00
  %1725 = fdiv double %1719, %1724
  %1726 = call double @pow(double noundef %1725, double noundef 5.000000e-01) #17
  %1727 = fmul double %1726, %1720
  %1728 = call double @llvm.fmuladd.f64(double %1722, double %1714, double %1727)
  %1729 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1702, i64 %1700, i32 6
  %1730 = load i32, ptr %1729, align 8, !tbaa !229
  %1731 = sitofp i32 %1730 to double
  %1732 = fadd double %1728, %1731
  %1733 = fadd double %1701, %1732
  %1734 = add nuw nsw i64 %1700, 1
  %1735 = load i32, ptr %1694, align 8, !tbaa !225
  %1736 = sext i32 %1735 to i64
  %1737 = icmp slt i64 %1734, %1736
  br i1 %1737, label %1699, label %1738, !llvm.loop !265

1738:                                             ; preds = %1699, %1692
  %1739 = phi double [ 0.000000e+00, %1692 ], [ %1733, %1699 ]
  %1740 = fdiv double %1739, %1011
  %1741 = fadd double %1740, -1.000000e+00
  %1742 = call double @llvm.fabs.f64(double %1741)
  %1743 = fcmp ogt double %1742, 1.000000e-02
  br i1 %1743, label %1744, label %1813

1744:                                             ; preds = %1738
  %1745 = load i32, ptr %784, align 8, !tbaa !225
  %1746 = icmp sgt i32 %1745, 0
  br i1 %1746, label %1747, label %1751

1747:                                             ; preds = %1744
  %1748 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 43
  %1749 = load ptr, ptr %1748, align 8, !tbaa !96
  %1750 = zext nneg i32 %1745 to i64
  br label %1759

1751:                                             ; preds = %1759, %1744
  %1752 = phi double [ 0.000000e+00, %1744 ], [ %1764, %1759 ]
  %1753 = sitofp i32 %1745 to double
  %1754 = fdiv double %1752, %1753
  %1755 = fdiv double %1754, 8.500000e-01
  %1756 = call double @log2(double noundef %1755) #17
  %1757 = call double @llvm.fmuladd.f64(double %1756, double 6.000000e+00, double 1.200000e+01)
  %1758 = fcmp ogt double %1739, %1011
  br i1 %1758, label %1770, label %1767

1759:                                             ; preds = %1759, %1747
  %1760 = phi i64 [ 0, %1747 ], [ %1765, %1759 ]
  %1761 = phi double [ 0.000000e+00, %1747 ], [ %1764, %1759 ]
  %1762 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1749, i64 %1760, i32 9
  %1763 = load double, ptr %1762, align 8, !tbaa !227
  %1764 = fadd double %1761, %1763
  %1765 = add nuw nsw i64 %1760, 1
  %1766 = icmp eq i64 %1765, %1750
  br i1 %1766, label %1751, label %1759, !llvm.loop !269

1767:                                             ; preds = %1751
  %1768 = load i32, ptr %1482, align 8, !tbaa !153
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %1770, label %1771

1770:                                             ; preds = %1767, %1751
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.89) #17
  br label %1771

1771:                                             ; preds = %1770, %1767
  %1772 = load i32, ptr %69, align 4, !tbaa !124
  %1773 = sitofp i32 %1772 to float
  %1774 = fpext float %1773 to double
  %1775 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 4
  %1776 = load double, ptr %1775, align 8, !tbaa !122
  %1777 = fmul double %1739, %1776
  %1778 = load i32, ptr %784, align 8, !tbaa !225
  %1779 = sitofp i32 %1778 to double
  %1780 = fmul double %1779, 1.000000e+03
  %1781 = fdiv double %1777, %1780
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.90, double noundef %1774, double noundef %1781, double noundef %1757) #17
  %1782 = fcmp olt double %1739, %1011
  br i1 %1782, label %1783, label %1793

1783:                                             ; preds = %1771
  %1784 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %1785 = load i32, ptr %1784, align 8, !tbaa !203
  %1786 = add nsw i32 %1785, 2
  %1787 = sitofp i32 %1786 to double
  %1788 = fcmp olt double %1757, %1787
  br i1 %1788, label %1789, label %1793

1789:                                             ; preds = %1783
  %1790 = icmp sgt i32 %1785, 0
  br i1 %1790, label %1791, label %1792

1791:                                             ; preds = %1789
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.91, i32 noundef %1785) #17
  br label %1813

1792:                                             ; preds = %1789
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.92) #17
  br label %1813

1793:                                             ; preds = %1783, %1771
  br i1 %1758, label %1794, label %1804

1794:                                             ; preds = %1793
  %1795 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %1796 = load i32, ptr %1795, align 4, !tbaa !204
  %1797 = add nsw i32 %1796, -2
  %1798 = sitofp i32 %1797 to double
  %1799 = fcmp ogt double %1757, %1798
  br i1 %1799, label %1800, label %1804

1800:                                             ; preds = %1794
  %1801 = icmp slt i32 %1796, 51
  br i1 %1801, label %1802, label %1803

1802:                                             ; preds = %1800
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.93, i32 noundef %1796) #17
  br label %1813

1803:                                             ; preds = %1800
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.94) #17
  br label %1813

1804:                                             ; preds = %1794, %1793
  %1805 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %783, i64 0, i32 1
  %1806 = load i32, ptr %1805, align 4, !tbaa !112
  %1807 = icmp eq i32 %1806, 0
  br i1 %1807, label %1811, label %1808

1808:                                             ; preds = %1804
  %1809 = load i32, ptr %1482, align 8, !tbaa !153
  %1810 = icmp eq i32 %1809, 0
  br i1 %1810, label %1811, label %1813

1811:                                             ; preds = %1808, %1804
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.95) #17
  br label %1813

1812:                                             ; preds = %1485
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #17
  br label %1936

1813:                                             ; preds = %1811, %1808, %1803, %1802, %1792, %1791, %1738, %779, %427
  %1814 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %1815 = load i32, ptr %1814, align 8, !tbaa !270
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1886, label %1817

1817:                                             ; preds = %1813
  %1818 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %1819 = load ptr, ptr %1818, align 8, !tbaa !271
  %1820 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1819) #18
  %1821 = trunc i64 %1820 to i32
  %1822 = add i32 %1821, 6
  %1823 = call ptr @x264_malloc(i32 noundef %1822) #17
  %1824 = icmp eq ptr %1823, null
  br i1 %1824, label %1829, label %1825

1825:                                             ; preds = %1817
  %1826 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1823, ptr noundef nonnull dereferenceable(1) %1819) #17
  %1827 = call i64 @strlen(ptr nonnull dereferenceable(1) %1823)
  %1828 = getelementptr inbounds i8, ptr %1823, i64 %1827
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %1828, ptr noundef nonnull align 1 dereferenceable(6) @.str.56, i64 6, i1 false)
  br label %1829

1829:                                             ; preds = %1817, %1825
  %1830 = phi ptr [ %1823, %1825 ], [ null, %1817 ]
  %1831 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 37
  store ptr %1830, ptr %1831, align 8, !tbaa !272
  %1832 = icmp eq ptr %1830, null
  br i1 %1832, label %1936, label %1833

1833:                                             ; preds = %1829
  %1834 = call noalias ptr @fopen(ptr noundef nonnull %1830, ptr noundef nonnull @.str.57)
  %1835 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 36
  store ptr %1834, ptr %1835, align 8, !tbaa !273
  %1836 = icmp eq ptr %1834, null
  br i1 %1836, label %1837, label %1838

1837:                                             ; preds = %1833
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.10) #17
  br label %1936

1838:                                             ; preds = %1833
  %1839 = call ptr @x264_param2string(ptr noundef %0, i32 noundef 1) #17
  %1840 = icmp eq ptr %1839, null
  br i1 %1840, label %1844, label %1841

1841:                                             ; preds = %1838
  %1842 = load ptr, ptr %1835, align 8, !tbaa !273
  %1843 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1842, ptr noundef nonnull @.str.58, ptr noundef nonnull %1839)
  br label %1844

1844:                                             ; preds = %1841, %1838
  call void @x264_free(ptr noundef %1839) #17
  %1845 = load i32, ptr %57, align 8, !tbaa !115
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %1886, label %1847

1847:                                             ; preds = %1844
  %1848 = load i32, ptr %428, align 8, !tbaa !155
  %1849 = icmp eq i32 %1848, 0
  br i1 %1849, label %1850, label %1886

1850:                                             ; preds = %1847
  %1851 = load ptr, ptr %1818, align 8, !tbaa !271
  %1852 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1851) #18
  %1853 = trunc i64 %1852 to i32
  %1854 = add i32 %1853, 13
  %1855 = call ptr @x264_malloc(i32 noundef %1854) #17
  %1856 = icmp eq ptr %1855, null
  br i1 %1856, label %1861, label %1857

1857:                                             ; preds = %1850
  %1858 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1855, ptr noundef nonnull dereferenceable(1) %1851) #17
  %1859 = call i64 @strlen(ptr nonnull dereferenceable(1) %1855)
  %1860 = getelementptr inbounds i8, ptr %1855, i64 %1859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %1860, ptr noundef nonnull align 1 dereferenceable(13) @.str.59, i64 13, i1 false)
  br label %1861

1861:                                             ; preds = %1850, %1857
  %1862 = phi ptr [ %1855, %1857 ], [ null, %1850 ]
  %1863 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 39
  store ptr %1862, ptr %1863, align 8, !tbaa !274
  %1864 = load ptr, ptr %1818, align 8, !tbaa !271
  %1865 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1864) #18
  %1866 = trunc i64 %1865 to i32
  %1867 = add i32 %1866, 8
  %1868 = call ptr @x264_malloc(i32 noundef %1867) #17
  %1869 = icmp eq ptr %1868, null
  br i1 %1869, label %1874, label %1870

1870:                                             ; preds = %1861
  %1871 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1868, ptr noundef nonnull dereferenceable(1) %1864) #17
  %1872 = call i64 @strlen(ptr nonnull dereferenceable(1) %1868)
  %1873 = getelementptr inbounds i8, ptr %1868, i64 %1872
  store i64 28540514901060910, ptr %1873, align 1
  br label %1874

1874:                                             ; preds = %1861, %1870
  %1875 = phi ptr [ %1868, %1870 ], [ null, %1861 ]
  %1876 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 40
  store ptr %1875, ptr %1876, align 8, !tbaa !275
  %1877 = load ptr, ptr %1863, align 8, !tbaa !274
  %1878 = icmp eq ptr %1877, null
  %1879 = icmp eq ptr %1875, null
  %1880 = or i1 %1879, %1878
  br i1 %1880, label %1936, label %1881

1881:                                             ; preds = %1874
  %1882 = call noalias ptr @fopen(ptr noundef nonnull %1877, ptr noundef nonnull @.str.57)
  %1883 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 38
  store ptr %1882, ptr %1883, align 8, !tbaa !276
  %1884 = icmp eq ptr %1882, null
  br i1 %1884, label %1885, label %1886

1885:                                             ; preds = %1881
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.13) #17
  br label %1936

1886:                                             ; preds = %1881, %1847, %1844, %1813
  %1887 = load i32, ptr %57, align 8, !tbaa !115
  %1888 = icmp eq i32 %1887, 0
  br i1 %1888, label %1916, label %1889

1889:                                             ; preds = %1886
  %1890 = load i32, ptr %428, align 8, !tbaa !155
  %1891 = icmp eq i32 %1890, 0
  br i1 %1891, label %1892, label %1895

1892:                                             ; preds = %1889
  %1893 = load i32, ptr %1814, align 8, !tbaa !270
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %1916, label %1895

1895:                                             ; preds = %1889, %1892
  %1896 = load i32, ptr %78, align 16, !tbaa !67
  %1897 = shl i32 %1896, 1
  %1898 = call ptr @x264_malloc(i32 noundef %1897) #17
  %1899 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 53
  store ptr %1898, ptr %1899, align 8, !tbaa !94
  %1900 = icmp eq ptr %1898, null
  br i1 %1900, label %1936, label %1901

1901:                                             ; preds = %1895
  %1902 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %1903 = load i32, ptr %1902, align 16, !tbaa !218
  %1904 = icmp eq i32 %1903, 0
  br i1 %1904, label %1914, label %1905

1905:                                             ; preds = %1901
  %1906 = load i32, ptr %428, align 8, !tbaa !155
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1914, label %1908

1908:                                             ; preds = %1905
  %1909 = load i32, ptr %78, align 16, !tbaa !67
  %1910 = shl i32 %1909, 1
  %1911 = call ptr @x264_malloc(i32 noundef %1910) #17
  %1912 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 53, i64 1
  store ptr %1911, ptr %1912, align 8, !tbaa !94
  %1913 = icmp eq ptr %1911, null
  br i1 %1913, label %1936, label %1914

1914:                                             ; preds = %1908, %1905, %1901
  %1915 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 0, i32 54
  store i32 -1, ptr %1915, align 8, !tbaa !102
  br label %1916

1916:                                             ; preds = %1914, %1892, %1886
  %1917 = load i32, ptr %12, align 4, !tbaa !154
  %1918 = icmp sgt i32 %1917, 0
  br i1 %1918, label %1919, label %1936

1919:                                             ; preds = %1916, %1931
  %1920 = phi i64 [ %1932, %1931 ], [ 0, %1916 ]
  %1921 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %22, i64 %1920
  %1922 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %1920
  %1923 = load ptr, ptr %1922, align 8, !tbaa !94
  %1924 = getelementptr inbounds %struct.x264_t, ptr %1923, i64 0, i32 56
  store ptr %1921, ptr %1924, align 16, !tbaa !95
  %1925 = icmp eq i64 %1920, 0
  br i1 %1925, label %1931, label %1926

1926:                                             ; preds = %1919
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %1921, ptr noundef nonnull align 8 dereferenceable(936) %22, i64 936, i1 false), !tbaa.struct !277
  %1927 = load ptr, ptr %1922, align 8, !tbaa !94
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %1927, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false), !tbaa.struct !278
  %1928 = load i32, ptr %104, align 16, !tbaa !164
  %1929 = load ptr, ptr %1922, align 8, !tbaa !94
  %1930 = getelementptr inbounds %struct.x264_t, ptr %1929, i64 0, i32 55, i32 72
  store i32 %1928, ptr %1930, align 16, !tbaa !164
  br label %1931

1931:                                             ; preds = %1919, %1926
  %1932 = add nuw nsw i64 %1920, 1
  %1933 = load i32, ptr %12, align 4, !tbaa !154
  %1934 = sext i32 %1933 to i64
  %1935 = icmp slt i64 %1932, %1934
  br i1 %1935, label %1919, label %1936, !llvm.loop !279

1936:                                             ; preds = %1931, %1916, %849, %998, %858, %1812, %623, %439, %652, %778, %639, %653, %454, %462, %1837, %1885, %1829, %1874, %1, %134, %186, %1895, %1908, %426, %88
  %1937 = phi i32 [ -1, %88 ], [ -1, %426 ], [ -1, %1908 ], [ -1, %1895 ], [ -1, %186 ], [ -1, %134 ], [ -1, %1 ], [ -1, %1874 ], [ -1, %1829 ], [ -1, %1885 ], [ -1, %1837 ], [ -1, %462 ], [ -1, %454 ], [ -1, %653 ], [ -1, %639 ], [ -1, %778 ], [ -1, %652 ], [ -1, %439 ], [ -1, %623 ], [ -1, %1812 ], [ -1, %858 ], [ -1, %998 ], [ -1, %849 ], [ 0, %1916 ], [ 0, %1931 ]
  ret i32 %1937
}

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

declare ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

declare void @x264_free(ptr noundef) #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #10

declare ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_summary(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !95
  %4 = load i32, ptr %3, align 8, !tbaa !156
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %48, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %8 = load i32, ptr %7, align 8, !tbaa !113
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %48

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 30
  %12 = load double, ptr %11, align 8, !tbaa !148
  %13 = fcmp ogt double %12, 9.999000e-01
  br i1 %13, label %14, label %48

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %16 = load i32, ptr %15, align 16, !tbaa !67
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !114
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 80, i32 120
  %21 = mul nsw i32 %20, %16
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !115
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %28 = load float, ptr %27, align 8, !tbaa !116
  %29 = fpext float %28 to double
  %30 = fsub double 1.000000e+00, %29
  %31 = fmul double %30, 1.350000e+01
  br label %32

32:                                               ; preds = %14, %26
  %33 = phi double [ %31, %26 ], [ 0.000000e+00, %14 ]
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 7
  %35 = load double, ptr %34, align 8, !tbaa !117
  %36 = fsub double 1.000000e+00, %35
  %37 = tail call double @pow(double noundef %22, double noundef %36) #17
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 27
  %39 = load double, ptr %38, align 8, !tbaa !167
  %40 = fmul double %37, %39
  %41 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 29
  %42 = load double, ptr %41, align 8, !tbaa !168
  %43 = fdiv double %40, %42
  %44 = fdiv double %43, 8.500000e-01
  %45 = tail call double @log2(double noundef %44) #17
  %46 = tail call double @llvm.fmuladd.f64(double %45, double 6.000000e+00, double 1.200000e+01)
  %47 = fsub double %46, %33
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.60, double noundef %47) #17
  br label %48

48:                                               ; preds = %32, %10, %6, %1
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !95
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 36
  %5 = load ptr, ptr %4, align 8, !tbaa !273
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @fclose(ptr noundef nonnull %5)
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !280
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !225
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !272
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !271
  %19 = tail call i32 @rename(ptr noundef %16, ptr noundef %18) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !272
  %23 = load ptr, ptr %17, align 8, !tbaa !271
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %22, ptr noundef %23) #17
  br label %24

24:                                               ; preds = %14, %21, %7
  %25 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37
  %26 = load ptr, ptr %25, align 8, !tbaa !272
  tail call void @x264_free(ptr noundef %26) #17
  br label %27

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 38
  %29 = load ptr, ptr %28, align 8, !tbaa !276
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @fclose(ptr noundef nonnull %29)
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !280
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %36 = load i32, ptr %35, align 8, !tbaa !225
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 39
  %40 = load ptr, ptr %39, align 8, !tbaa !274
  %41 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 40
  %42 = load ptr, ptr %41, align 8, !tbaa !275
  %43 = tail call i32 @rename(ptr noundef %40, ptr noundef %42) #17
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 8, !tbaa !274
  %47 = load ptr, ptr %41, align 8, !tbaa !275
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.61, ptr noundef %46, ptr noundef %47) #17
  br label %48

48:                                               ; preds = %38, %45, %31
  %49 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 39
  %50 = load ptr, ptr %49, align 8, !tbaa !274
  tail call void @x264_free(ptr noundef %50) #17
  %51 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 40
  %52 = load ptr, ptr %51, align 8, !tbaa !275
  tail call void @x264_free(ptr noundef %52) #17
  br label %53

53:                                               ; preds = %48, %27
  %54 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 41
  %55 = load ptr, ptr %54, align 8, !tbaa !103
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @fclose(ptr noundef nonnull %55)
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !178
  tail call void @x264_free(ptr noundef %61) #17
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 62
  %63 = load ptr, ptr %62, align 8, !tbaa !179
  tail call void @x264_free(ptr noundef %63) #17
  %64 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %65 = load ptr, ptr %64, align 8, !tbaa !96
  tail call void @x264_free(ptr noundef %65) #17
  %66 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 53
  %67 = load ptr, ptr %66, align 8, !tbaa !94
  tail call void @x264_free(ptr noundef %67) #17
  %68 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 53, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !94
  tail call void @x264_free(ptr noundef %69) #17
  %70 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 66
  %71 = load ptr, ptr %70, align 8, !tbaa !199
  %72 = icmp eq ptr %71, null
  br i1 %72, label %99, label %73

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.x264_zone_t, ptr %71, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !186
  tail call void @x264_free(ptr noundef %75) #17
  %76 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 65
  %77 = load i32, ptr %76, align 8, !tbaa !198
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %94, %73
  %80 = load ptr, ptr %70, align 8, !tbaa !199
  tail call void @x264_free(ptr noundef %80) #17
  br label %99

81:                                               ; preds = %73, %94
  %82 = phi i64 [ %95, %94 ], [ 1, %73 ]
  %83 = load ptr, ptr %70, align 8, !tbaa !199
  %84 = getelementptr inbounds %struct.x264_zone_t, ptr %83, i64 %82, i32 5
  %85 = load ptr, ptr %84, align 8, !tbaa !186
  %86 = getelementptr inbounds %struct.x264_zone_t, ptr %83, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !186
  %88 = icmp eq ptr %85, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %85, i64 0, i32 59
  %91 = load ptr, ptr %90, align 8, !tbaa !190
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %89
  tail call void %91(ptr noundef %85) #17
  br label %94

94:                                               ; preds = %81, %89, %93
  %95 = add nuw nsw i64 %82, 1
  %96 = load i32, ptr %76, align 8, !tbaa !198
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %95, %97
  br i1 %98, label %81, label %79, !llvm.loop !281

99:                                               ; preds = %79, %59
  tail call void @x264_free(ptr noundef %3) #17
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_start(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !95
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !109
  %8 = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 65
  %11 = load i32, ptr %10, align 8, !tbaa !198
  %12 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 66
  %13 = zext i32 %11 to i64
  br label %14

14:                                               ; preds = %31, %3
  %15 = phi i64 [ %18, %31 ], [ %13, %3 ]
  %16 = phi ptr [ %33, %31 ], [ undef, %3 ]
  %17 = add nsw i64 %15, -1
  %18 = add nsw i64 %15, -1
  %19 = trunc i64 %15 to i32
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %34, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %12, align 8, !tbaa !199
  %23 = getelementptr inbounds %struct.x264_zone_t, ptr %22, i64 %17
  %24 = load i32, ptr %23, align 8, !tbaa !200
  %25 = icmp sgt i32 %24, %9
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.x264_zone_t, ptr %22, i64 %17, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !201
  %29 = icmp slt i32 %28, %9
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %21
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i1 [ true, %30 ], [ false, %26 ]
  %33 = phi ptr [ %16, %30 ], [ %23, %26 ]
  br i1 %32, label %14, label %34, !llvm.loop !249

34:                                               ; preds = %14, %31
  %35 = phi ptr [ %33, %31 ], [ null, %14 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %51, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 67
  %39 = load ptr, ptr %38, align 8, !tbaa !282
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.x264_zone_t, ptr %35, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !186
  %44 = getelementptr inbounds %struct.x264_zone_t, ptr %39, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !186
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct.x264_zone_t, ptr %35, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !186
  %50 = tail call i32 @x264_encoder_reconfig(ptr noundef %0, ptr noundef %49) #17
  br label %51

51:                                               ; preds = %47, %41, %34
  %52 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 67
  store ptr %35, ptr %52, align 8, !tbaa !282
  %53 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 16
  store i32 %1, ptr %53, align 4, !tbaa !283
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %55 = load i32, ptr %54, align 8, !tbaa !155
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %91, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %6, align 8, !tbaa !109
  %59 = getelementptr inbounds %struct.x264_frame, ptr %58, i64 0, i32 10
  %60 = load i32, ptr %59, align 8, !tbaa !98
  %61 = icmp sgt i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 42
  %64 = load i32, ptr %63, align 8, !tbaa !225
  %65 = icmp slt i32 %60, %64
  br i1 %65, label %67, label %66

66:                                               ; preds = %62, %57
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.9, i32 noundef 1090, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_start) #19
  unreachable

67:                                               ; preds = %62
  %68 = load ptr, ptr %4, align 16, !tbaa !95
  %69 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %68, i64 0, i32 43
  %70 = load ptr, ptr %69, align 8, !tbaa !96
  %71 = zext nneg i32 %60 to i64
  %72 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %70, i64 %71
  %73 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %68, i64 0, i32 10
  store ptr %72, ptr %73, align 8, !tbaa !106
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %75 = load i32, ptr %74, align 16, !tbaa !284
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %91

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %79 = load i32, ptr %78, align 4, !tbaa !220
  %80 = icmp eq i32 %79, 3
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %70, i64 %71, i32 15
  %83 = load i8, ptr %82, align 4, !tbaa !233
  %84 = icmp eq i8 %83, 115
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  store i32 %85, ptr %86, align 8, !tbaa !285
  %87 = add i8 %83, -115
  %88 = icmp ult i8 %87, 2
  %89 = zext i1 %88 to i32
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 74
  store i32 %89, ptr %90, align 8, !tbaa !286
  br label %91

91:                                               ; preds = %67, %77, %81, %51
  %92 = phi ptr [ null, %51 ], [ %72, %81 ], [ %72, %77 ], [ %72, %67 ]
  %93 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 2
  %94 = load i32, ptr %93, align 8, !tbaa !153
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %247, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %98 = load ptr, ptr %97, align 16, !tbaa !287
  %99 = getelementptr inbounds %struct.x264_frame, ptr %98, i64 0, i32 58
  %100 = load ptr, ptr %99, align 8, !tbaa !288
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %102 = load ptr, ptr %101, align 16, !tbaa !77
  %103 = getelementptr inbounds %struct.x264_sps_t, ptr %102, i64 0, i32 17
  %104 = load i32, ptr %103, align 4, !tbaa !78
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %100, i8 0, i64 %106, i1 false)
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %108 = load i32, ptr %107, align 16, !tbaa !284
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 61, i64 %109
  %111 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 60
  store ptr %110, ptr %111, align 8, !tbaa !289
  %112 = load ptr, ptr %6, align 8, !tbaa !109
  %113 = getelementptr inbounds %struct.x264_frame, ptr %112, i64 0, i32 6
  %114 = load i32, ptr %113, align 4, !tbaa !290
  %115 = sitofp i32 %114 to double
  %116 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 21
  %117 = load double, ptr %116, align 8, !tbaa !144
  %118 = fmul double %117, %115
  %119 = load ptr, ptr %101, align 16, !tbaa !77
  %120 = getelementptr inbounds %struct.x264_sps_t, ptr %119, i64 0, i32 24, i32 16
  %121 = load i32, ptr %120, align 4, !tbaa !138
  %122 = uitofp i32 %121 to double
  %123 = fmul double %118, %122
  %124 = getelementptr inbounds %struct.x264_sps_t, ptr %119, i64 0, i32 24, i32 17
  %125 = load i32, ptr %124, align 4, !tbaa !137
  %126 = uitofp i32 %125 to double
  %127 = fdiv double %123, %126
  %128 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 20
  store double %127, ptr %128, align 8, !tbaa !143
  %129 = load ptr, ptr %4, align 16, !tbaa !95
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %131 = load ptr, ptr %130, align 16, !tbaa !94
  %132 = getelementptr inbounds %struct.x264_t, ptr %131, i64 0, i32 56
  %133 = load ptr, ptr %132, align 16, !tbaa !95
  %134 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %133, i64 0, i32 18
  %135 = load double, ptr %134, align 8, !tbaa !152
  %136 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %129, i64 0, i32 19
  store double %135, ptr %136, align 8, !tbaa !291
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %138 = load i32, ptr %137, align 4, !tbaa !292
  %139 = icmp sgt i32 %138, 1
  br i1 %139, label %140, label %180

140:                                              ; preds = %96
  %141 = ptrtoint ptr %129 to i64
  %142 = ptrtoint ptr %133 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 936
  %145 = trunc i64 %144 to i32
  %146 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %129, i64 0, i32 17
  br label %147

147:                                              ; preds = %140, %177
  %148 = phi i32 [ 1, %140 ], [ %178, %177 ]
  %149 = add nsw i32 %148, %145
  %150 = srem i32 %149, %138
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !94
  %154 = getelementptr inbounds %struct.x264_t, ptr %153, i64 0, i32 3
  %155 = load i32, ptr %154, align 4, !tbaa !293
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %177, label %157

157:                                              ; preds = %147
  %158 = getelementptr inbounds %struct.x264_t, ptr %153, i64 0, i32 56
  %159 = load ptr, ptr %158, align 16, !tbaa !95
  %160 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %159, i64 0, i32 57
  %161 = load double, ptr %160, align 8, !tbaa !294
  %162 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %159, i64 0, i32 55
  %163 = load float, ptr %162, align 4, !tbaa !295
  %164 = fpext float %163 to double
  %165 = fcmp ogt double %161, %164
  %166 = select i1 %165, double %161, double %164
  %167 = load double, ptr %136, align 8, !tbaa !291
  %168 = fsub double %167, %166
  %169 = fcmp ogt double %168, 0.000000e+00
  %170 = select i1 %169, double %168, double 0.000000e+00
  store double %170, ptr %136, align 8, !tbaa !291
  %171 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %159, i64 0, i32 20
  %172 = load double, ptr %171, align 8, !tbaa !143
  %173 = fadd double %172, %170
  store double %173, ptr %136, align 8, !tbaa !291
  %174 = load double, ptr %146, align 8, !tbaa !145
  %175 = fcmp olt double %173, %174
  %176 = select i1 %175, double %173, double %174
  store double %176, ptr %136, align 8, !tbaa !291
  br label %177

177:                                              ; preds = %157, %147
  %178 = add nuw nsw i32 %148, 1
  %179 = icmp eq i32 %178, %138
  br i1 %179, label %180, label %147, !llvm.loop !296

180:                                              ; preds = %177, %96
  %181 = load double, ptr %136, align 8, !tbaa !291
  %182 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %129, i64 0, i32 17
  %183 = load double, ptr %182, align 8, !tbaa !145
  %184 = fcmp olt double %181, %183
  %185 = select i1 %184, double %181, double %183
  %186 = sitofp i32 %2 to double
  %187 = fsub double %185, %186
  store double %187, ptr %136, align 8, !tbaa !291
  %188 = load i32, ptr @x264_levels, align 4, !tbaa !297
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %205, label %190

190:                                              ; preds = %180
  %191 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  %192 = load i32, ptr %191, align 16, !tbaa !299
  br label %193

193:                                              ; preds = %190, %197
  %194 = phi i32 [ %188, %190 ], [ %199, %197 ]
  %195 = phi ptr [ @x264_levels, %190 ], [ %198, %197 ]
  %196 = icmp eq i32 %194, %192
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.x264_level_t, ptr %195, i64 1
  %199 = load i32, ptr %198, align 4, !tbaa !297
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %193, !llvm.loop !300

201:                                              ; preds = %197, %193
  %202 = phi ptr [ %195, %193 ], [ %198, %197 ]
  %203 = phi i32 [ %194, %193 ], [ %199, %197 ]
  %204 = icmp eq i32 %203, 41
  br label %205

205:                                              ; preds = %201, %180
  %206 = phi ptr [ @x264_levels, %180 ], [ %202, %201 ]
  %207 = phi i1 [ false, %180 ], [ %204, %201 ]
  %208 = getelementptr inbounds %struct.x264_level_t, ptr %206, i64 0, i32 9
  %209 = load i32, ptr %208, align 4, !tbaa !301
  br i1 %207, label %210, label %215

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %212 = load i32, ptr %211, align 8, !tbaa !125
  %213 = icmp eq i32 %212, 0
  %214 = select i1 %213, i32 %209, i32 4
  br label %215

215:                                              ; preds = %210, %205
  %216 = phi i32 [ %209, %205 ], [ %214, %210 ]
  %217 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %218 = load i32, ptr %217, align 4, !tbaa !280
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %234

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.x264_sps_t, ptr %119, i64 0, i32 16
  %222 = load i32, ptr %221, align 4, !tbaa !83
  %223 = getelementptr inbounds %struct.x264_sps_t, ptr %119, i64 0, i32 17
  %224 = load i32, ptr %223, align 4, !tbaa !78
  %225 = mul nsw i32 %224, %222
  %226 = sitofp i32 %225 to double
  %227 = getelementptr inbounds %struct.x264_level_t, ptr %206, i64 0, i32 1
  %228 = load i32, ptr %227, align 4, !tbaa !302
  %229 = sitofp i32 %228 to double
  %230 = fmul double %229, 0x3F77D05F417D05F4
  %231 = fcmp olt double %230, %226
  %232 = select i1 %231, double %226, double %230
  %233 = fmul double %232, 3.072000e+03
  br label %242

234:                                              ; preds = %215
  %235 = fmul double %115, %122
  %236 = fdiv double %235, %126
  %237 = fmul double %236, 3.072000e+03
  %238 = getelementptr inbounds %struct.x264_level_t, ptr %206, i64 0, i32 1
  %239 = load i32, ptr %238, align 4, !tbaa !302
  %240 = sitofp i32 %239 to double
  %241 = fmul double %237, %240
  br label %242

242:                                              ; preds = %234, %220
  %243 = phi double [ %233, %220 ], [ %241, %234 ]
  %244 = sitofp i32 %216 to double
  %245 = fdiv double %243, %244
  %246 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 56
  store double %245, ptr %246, align 8, !tbaa !303
  br label %247

247:                                              ; preds = %242, %91
  %248 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %249 = load i32, ptr %248, align 16, !tbaa !284
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %257, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %6, align 8, !tbaa !109
  %253 = getelementptr inbounds %struct.x264_frame, ptr %252, i64 0, i32 19
  %254 = load i8, ptr %253, align 2, !tbaa !304
  %255 = zext i8 %254 to i32
  %256 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 63
  store i32 %255, ptr %256, align 8, !tbaa !305
  br label %257

257:                                              ; preds = %251, %247
  %258 = icmp eq i32 %1, 0
  br i1 %258, label %262, label %259

259:                                              ; preds = %257
  %260 = add nsw i32 %1, -1
  %261 = sitofp i32 %260 to float
  br label %322

262:                                              ; preds = %257
  %263 = load i32, ptr %5, align 8, !tbaa !156
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %272, label %265

265:                                              ; preds = %262
  %266 = tail call fastcc float @rate_estimate_qscale(ptr noundef %0)
  %267 = fpext float %266 to double
  %268 = fdiv double %267, 8.500000e-01
  %269 = tail call double @log2(double noundef %268) #17
  %270 = tail call double @llvm.fmuladd.f64(double %269, double 6.000000e+00, double 1.200000e+01)
  %271 = fptrunc double %270 to float
  br label %322

272:                                              ; preds = %262
  %273 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !112
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %284, label %276

276:                                              ; preds = %272
  %277 = tail call fastcc float @rate_estimate_qscale(ptr noundef %0)
  %278 = fpext float %277 to double
  %279 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %92, i64 0, i32 9
  store double %278, ptr %279, align 8, !tbaa !227
  %280 = fdiv double %278, 8.500000e-01
  %281 = tail call double @log2(double noundef %280) #17
  %282 = tail call double @llvm.fmuladd.f64(double %281, double 6.000000e+00, double 1.200000e+01)
  %283 = fptrunc double %282 to float
  br label %322

284:                                              ; preds = %272
  br i1 %250, label %285, label %298

285:                                              ; preds = %284
  %286 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %287 = load ptr, ptr %286, align 16, !tbaa !287
  %288 = getelementptr inbounds %struct.x264_frame, ptr %287, i64 0, i32 14
  %289 = load i32, ptr %288, align 8, !tbaa !306
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %298, label %291

291:                                              ; preds = %285
  %292 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9
  %293 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9, i64 1
  %294 = load i32, ptr %293, align 4, !tbaa !92
  %295 = load i32, ptr %292, align 4, !tbaa !92
  %296 = add nsw i32 %295, %294
  %297 = sdiv i32 %296, 2
  br label %302

298:                                              ; preds = %285, %284
  %299 = sext i32 %249 to i64
  %300 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !92
  br label %302

302:                                              ; preds = %298, %291
  %303 = phi i32 [ %297, %291 ], [ %301, %298 ]
  %304 = sitofp i32 %303 to float
  br i1 %36, label %322, label %305

305:                                              ; preds = %302
  %306 = getelementptr inbounds %struct.x264_zone_t, ptr %35, i64 0, i32 2
  %307 = load i32, ptr %306, align 8, !tbaa !189
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %317, label %309

309:                                              ; preds = %305
  %310 = getelementptr inbounds %struct.x264_zone_t, ptr %35, i64 0, i32 3
  %311 = load i32, ptr %310, align 4, !tbaa !251
  %312 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9
  %313 = load i32, ptr %312, align 4, !tbaa !92
  %314 = sub nsw i32 %311, %313
  %315 = sitofp i32 %314 to float
  %316 = fadd float %304, %315
  br label %322

317:                                              ; preds = %305
  %318 = getelementptr inbounds %struct.x264_zone_t, ptr %35, i64 0, i32 4
  %319 = load float, ptr %318, align 8, !tbaa !188
  %320 = tail call float @log2f(float noundef %319) #17
  %321 = tail call float @llvm.fmuladd.f32(float %320, float -6.000000e+00, float %304)
  br label %322

322:                                              ; preds = %265, %302, %317, %309, %276, %259
  %323 = phi float [ %261, %259 ], [ %271, %265 ], [ %283, %276 ], [ %316, %309 ], [ %321, %317 ], [ %304, %302 ]
  %324 = fpext float %323 to double
  %325 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %326 = load i32, ptr %325, align 8, !tbaa !203
  %327 = sitofp i32 %326 to double
  %328 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %329 = load i32, ptr %328, align 4, !tbaa !204
  %330 = sitofp i32 %329 to double
  %331 = fcmp olt double %324, %327
  %332 = fcmp ogt double %324, %330
  %333 = select i1 %332, double %330, double %324
  %334 = select i1 %331, double %327, double %333
  %335 = fptrunc double %334 to float
  %336 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 14
  store float 0.000000e+00, ptr %336, align 4, !tbaa !307
  %337 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 13
  store float 0.000000e+00, ptr %337, align 8, !tbaa !308
  %338 = fpext float %335 to double
  %339 = fadd double %338, 5.000000e-01
  %340 = fptosi double %339 to i32
  %341 = tail call i32 @llvm.smin.i32(i32 %340, i32 51)
  %342 = tail call i32 @llvm.smax.i32(i32 %341, i32 0)
  %343 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 11
  store i32 %342, ptr %343, align 8, !tbaa !309
  %344 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 12
  store float %335, ptr %344, align 4, !tbaa !310
  %345 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %346 = load ptr, ptr %345, align 16, !tbaa !287
  %347 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 21
  store float %335, ptr %347, align 4, !tbaa !311
  %348 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 20
  store float %335, ptr %348, align 8, !tbaa !312
  %349 = icmp eq ptr %92, null
  br i1 %349, label %352, label %350

350:                                              ; preds = %322
  %351 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %92, i64 0, i32 10
  store i32 %342, ptr %351, align 8, !tbaa !230
  br label %352

352:                                              ; preds = %350, %322
  %353 = load ptr, ptr %4, align 16, !tbaa !95
  %354 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %353, i64 0, i32 47
  %355 = load double, ptr %354, align 8, !tbaa !166
  %356 = fmul double %355, 0x3FEE666666666666
  store double %356, ptr %354, align 8, !tbaa !166
  %357 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %353, i64 0, i32 48
  %358 = load double, ptr %357, align 8, !tbaa !165
  %359 = fmul double %358, 0x3FEE666666666666
  %360 = fadd double %359, 1.000000e+00
  store double %360, ptr %357, align 8, !tbaa !165
  %361 = load i32, ptr %248, align 16, !tbaa !284
  %362 = icmp eq i32 %361, 2
  br i1 %362, label %363, label %367

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %353, i64 0, i32 34
  %365 = load double, ptr %364, align 8, !tbaa !170
  %366 = fadd double %365, %338
  br label %367

367:                                              ; preds = %352, %363
  %368 = phi double [ %366, %363 ], [ %338, %352 ]
  %369 = fadd double %356, %368
  store double %369, ptr %354, align 8, !tbaa !166
  %370 = icmp eq i32 %361, 1
  br i1 %370, label %373, label %371

371:                                              ; preds = %367
  %372 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 46
  store i32 %361, ptr %372, align 8, !tbaa !163
  br label %373

373:                                              ; preds = %371, %367
  ret void
}

declare i32 @x264_encoder_reconfig(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc float @rate_estimate_qscale(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !95
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %5 = load i32, ptr %4, align 16, !tbaa !284
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !313
  %9 = load i64, ptr %6, align 8, !tbaa !313
  %10 = add nsw i64 %9, %8
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !313
  %13 = add nsw i64 %10, %12
  %14 = shl nsw i64 %13, 3
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !112
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !106
  %21 = load i32, ptr %20, align 8, !tbaa.struct !314
  %22 = getelementptr inbounds i8, ptr %20, i64 16
  %23 = load double, ptr %22, align 8, !tbaa.struct !315
  %24 = getelementptr inbounds i8, ptr %20, i64 24
  %25 = load i32, ptr %24, align 8, !tbaa.struct !316
  %26 = getelementptr inbounds i8, ptr %20, i64 28
  %27 = load i32, ptr %26, align 4, !tbaa.struct !317
  %28 = getelementptr inbounds i8, ptr %20, i64 32
  %29 = load i32, ptr %28, align 8, !tbaa.struct !318
  %30 = getelementptr inbounds i8, ptr %20, i64 40
  %31 = load i64, ptr %30, align 8, !tbaa.struct !319
  %32 = getelementptr inbounds i8, ptr %20, i64 48
  %33 = load double, ptr %32, align 8, !tbaa.struct !320
  %34 = getelementptr inbounds i8, ptr %20, i64 56
  %35 = load double, ptr %34, align 8, !tbaa.struct !321
  %36 = icmp eq i32 %5, %21
  br i1 %36, label %46, label %37

37:                                               ; preds = %18
  %38 = sext i32 %5 to i64
  %39 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !90
  %41 = sext i8 %40 to i32
  %42 = sext i32 %21 to i64
  %43 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !90
  %45 = sext i8 %44 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.84, i32 noundef %41, i32 noundef %45) #17
  br label %46

46:                                               ; preds = %18, %37, %1
  %47 = phi double [ undef, %1 ], [ %35, %18 ], [ %35, %37 ]
  %48 = phi double [ undef, %1 ], [ %33, %18 ], [ %33, %37 ]
  %49 = phi i64 [ undef, %1 ], [ %31, %18 ], [ %31, %37 ]
  %50 = phi i32 [ undef, %1 ], [ %29, %18 ], [ %29, %37 ]
  %51 = phi i32 [ undef, %1 ], [ %27, %18 ], [ %27, %37 ]
  %52 = phi i32 [ undef, %1 ], [ %25, %18 ], [ %25, %37 ]
  %53 = phi double [ undef, %1 ], [ %23, %18 ], [ %23, %37 ]
  %54 = icmp eq i32 %5, 1
  br i1 %54, label %55, label %199

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %57 = load ptr, ptr %56, align 16, !tbaa !94
  %58 = getelementptr inbounds %struct.x264_frame, ptr %57, i64 0, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !322
  %60 = add i32 %59, -1
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %62 = load ptr, ptr %61, align 16, !tbaa !94
  %63 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !322
  %65 = add i32 %64, -1
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %67 = load ptr, ptr %66, align 8, !tbaa !109
  %68 = load i32, ptr %67, align 16, !tbaa !323
  %69 = load i32, ptr %57, align 16, !tbaa !323
  %70 = sub nsw i32 %68, %69
  %71 = tail call i32 @llvm.abs.i32(i32 %70, i1 true)
  %72 = load i32, ptr %62, align 16, !tbaa !323
  %73 = sub nsw i32 %68, %72
  %74 = tail call i32 @llvm.abs.i32(i32 %73, i1 true)
  %75 = getelementptr inbounds %struct.x264_frame, ptr %57, i64 0, i32 20
  %76 = load float, ptr %75, align 8, !tbaa !312
  %77 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 20
  %78 = load float, ptr %77, align 8, !tbaa !312
  %79 = icmp eq i32 %59, 4
  br i1 %79, label %80, label %87

80:                                               ; preds = %55
  %81 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %82 = load double, ptr %81, align 8, !tbaa !171
  %83 = fmul double %82, 5.000000e-01
  %84 = fpext float %76 to double
  %85 = fsub double %84, %83
  %86 = fptrunc double %85 to float
  br label %87

87:                                               ; preds = %80, %55
  %88 = phi float [ %86, %80 ], [ %76, %55 ]
  %89 = icmp eq i32 %64, 4
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %92 = load double, ptr %91, align 8, !tbaa !171
  %93 = fmul double %92, 5.000000e-01
  %94 = fpext float %78 to double
  %95 = fsub double %94, %93
  %96 = fptrunc double %95 to float
  br label %97

97:                                               ; preds = %90, %87
  %98 = phi float [ %96, %90 ], [ %78, %87 ]
  %99 = or i32 %65, %60
  %100 = icmp ult i32 %99, 2
  br i1 %100, label %101, label %109

101:                                              ; preds = %97
  %102 = fadd float %88, %98
  %103 = fmul float %102, 5.000000e-01
  %104 = fpext float %103 to double
  %105 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 34
  %106 = load double, ptr %105, align 8, !tbaa !170
  %107 = fadd double %106, %104
  %108 = fptrunc double %107 to float
  br label %121

109:                                              ; preds = %97
  %110 = icmp ult i32 %60, 2
  br i1 %110, label %121, label %111

111:                                              ; preds = %109
  %112 = icmp ult i32 %65, 2
  br i1 %112, label %121, label %113

113:                                              ; preds = %111
  %114 = sitofp i32 %74 to float
  %115 = sitofp i32 %71 to float
  %116 = fmul float %98, %115
  %117 = tail call float @llvm.fmuladd.f32(float %88, float %114, float %116)
  %118 = add nuw nsw i32 %74, %71
  %119 = sitofp i32 %118 to float
  %120 = fdiv float %117, %119
  br label %121

121:                                              ; preds = %111, %109, %113, %101
  %122 = phi float [ %108, %101 ], [ %120, %113 ], [ %98, %109 ], [ %88, %111 ]
  %123 = getelementptr inbounds %struct.x264_frame, ptr %67, i64 0, i32 14
  %124 = load i32, ptr %123, align 8, !tbaa !306
  %125 = icmp eq i32 %124, 0
  %126 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 35
  %127 = load double, ptr %126, align 8, !tbaa !171
  %128 = fmul double %127, 5.000000e-01
  %129 = select i1 %125, double %127, double %128
  %130 = fpext float %122 to double
  %131 = fadd double %129, %130
  %132 = fptrunc double %131 to float
  %133 = load i32, ptr %15, align 4, !tbaa !112
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %158, label %135

135:                                              ; preds = %121
  %136 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %137 = load i32, ptr %136, align 8, !tbaa !153
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %158, label %139

139:                                              ; preds = %135
  %140 = fpext float %132 to double
  %141 = fcmp olt double %140, 1.000000e-01
  %142 = select i1 %141, double 1.000000e-01, double %140
  %143 = fdiv double %53, %142
  %144 = tail call double @pow(double noundef %143, double noundef 1.100000e+00) #17
  %145 = fcmp ogt double %53, 1.000000e+00
  %146 = select i1 %145, double %53, double 1.000000e+00
  %147 = sitofp i32 %52 to double
  %148 = sitofp i32 %51 to double
  %149 = fadd double %148, 1.000000e-01
  %150 = fcmp ogt double %142, 1.000000e+00
  %151 = select i1 %150, double %142, double 1.000000e+00
  %152 = fdiv double %146, %151
  %153 = tail call double @pow(double noundef %152, double noundef 5.000000e-01) #17
  %154 = fmul double %153, %147
  %155 = tail call double @llvm.fmuladd.f64(double %149, double %144, double %154)
  %156 = sitofp i32 %50 to double
  %157 = fadd double %155, %156
  br label %179

158:                                              ; preds = %135, %121
  %159 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 62
  %160 = load ptr, ptr %159, align 8, !tbaa !179
  %161 = fpext float %132 to double
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %163 = load i32, ptr %162, align 8, !tbaa !324
  %164 = add nsw i32 %163, -1
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %165
  %167 = load ptr, ptr %166, align 8, !tbaa !94
  %168 = getelementptr inbounds %struct.x264_frame, ptr %167, i64 0, i32 54
  %169 = load i32, ptr %168, align 4, !tbaa !325
  %170 = sitofp i32 %169 to double
  %171 = load double, ptr %160, align 8, !tbaa !205
  %172 = getelementptr inbounds %struct.predictor_t, ptr %160, i64 0, i32 3
  %173 = load double, ptr %172, align 8, !tbaa !208
  %174 = tail call double @llvm.fmuladd.f64(double %171, double %170, double %173)
  %175 = getelementptr inbounds %struct.predictor_t, ptr %160, i64 0, i32 1
  %176 = load double, ptr %175, align 8, !tbaa !206
  %177 = fmul double %176, %161
  %178 = fdiv double %174, %177
  br label %179

179:                                              ; preds = %158, %139
  %180 = phi double [ %178, %158 ], [ %157, %139 ]
  %181 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  store double %180, ptr %181, align 8, !tbaa !294
  %182 = fptrunc double %180 to float
  %183 = load ptr, ptr %2, align 16, !tbaa !95
  %184 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %183, i64 0, i32 55
  store float %182, ptr %184, align 4, !tbaa !295
  %185 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %186 = load i32, ptr %185, align 8, !tbaa !153
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %179
  %189 = tail call i32 @x264_rc_analyse_slice(ptr noundef %0) #17
  %190 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 25
  store i32 %189, ptr %190, align 8, !tbaa !326
  br label %191

191:                                              ; preds = %188, %179
  %192 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 15
  store float %132, ptr %192, align 8, !tbaa !327
  %193 = fpext float %132 to double
  %194 = fadd double %193, -1.200000e+01
  %195 = fdiv double %194, 6.000000e+00
  %196 = tail call double @exp2(double %195) #17
  %197 = fmul double %196, 8.500000e-01
  %198 = fptrunc double %197 to float
  br label %813

199:                                              ; preds = %46
  %200 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 6
  %201 = load double, ptr %200, align 8, !tbaa !161
  %202 = fmul double %201, 2.000000e+00
  %203 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 5
  %204 = load double, ptr %203, align 8, !tbaa !147
  %205 = fmul double %202, %204
  %206 = load i32, ptr %15, align 4, !tbaa !112
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %414, label %208

208:                                              ; preds = %199
  %209 = sext i32 %5 to i64
  %210 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 50, i64 %209
  %211 = load double, ptr %210, align 8, !tbaa !181
  %212 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 51, i64 %209
  %213 = load double, ptr %212, align 8, !tbaa !181
  %214 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %215 = load i32, ptr %214, align 8, !tbaa !225
  %216 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %217 = load i32, ptr %216, align 4, !tbaa !280
  %218 = icmp sgt i32 %215, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %208
  %220 = sub nsw i32 %215, %217
  %221 = sitofp i32 %220 to double
  %222 = tail call double @sqrt(double noundef %221) #17
  %223 = fmul double %222, 5.000000e-01
  %224 = fmul double %205, %223
  br label %225

225:                                              ; preds = %219, %208
  %226 = phi double [ %224, %219 ], [ %205, %208 ]
  %227 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %228 = load i32, ptr %227, align 8, !tbaa !153
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %272, label %230

230:                                              ; preds = %225
  %231 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %232 = load i32, ptr %231, align 4, !tbaa !292
  %233 = icmp sgt i32 %232, 1
  br i1 %233, label %234, label %288

234:                                              ; preds = %230
  %235 = load ptr, ptr %2, align 16, !tbaa !95
  %236 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %237 = load ptr, ptr %236, align 16, !tbaa !94
  %238 = getelementptr inbounds %struct.x264_t, ptr %237, i64 0, i32 56
  %239 = load ptr, ptr %238, align 16, !tbaa !95
  %240 = ptrtoint ptr %235 to i64
  %241 = ptrtoint ptr %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 936
  %244 = trunc i64 %243 to i32
  br label %245

245:                                              ; preds = %234, %268
  %246 = phi i64 [ %14, %234 ], [ %269, %268 ]
  %247 = phi i32 [ 1, %234 ], [ %270, %268 ]
  %248 = add nsw i32 %247, %244
  %249 = srem i32 %248, %232
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !94
  %253 = getelementptr inbounds %struct.x264_t, ptr %252, i64 0, i32 3
  %254 = load i32, ptr %253, align 4, !tbaa !293
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %268, label %256

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct.x264_t, ptr %252, i64 0, i32 56
  %258 = load ptr, ptr %257, align 16, !tbaa !95
  %259 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %258, i64 0, i32 57
  %260 = load double, ptr %259, align 8, !tbaa !294
  %261 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %258, i64 0, i32 55
  %262 = load float, ptr %261, align 4, !tbaa !295
  %263 = fpext float %262 to double
  %264 = fcmp ogt double %260, %263
  %265 = select i1 %264, double %260, double %263
  %266 = fptosi double %265 to i64
  %267 = add nsw i64 %246, %266
  br label %268

268:                                              ; preds = %245, %256
  %269 = phi i64 [ %267, %256 ], [ %246, %245 ]
  %270 = add nuw nsw i32 %247, 1
  %271 = icmp eq i32 %270, %232
  br i1 %271, label %288, label %245, !llvm.loop !328

272:                                              ; preds = %225
  %273 = load i32, ptr %216, align 4, !tbaa !280
  %274 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %275 = load i32, ptr %274, align 4, !tbaa !292
  %276 = icmp slt i32 %273, %275
  %277 = add nsw i32 %275, -1
  %278 = select i1 %276, i32 %273, i32 %277
  %279 = sitofp i32 %278 to double
  %280 = load double, ptr %203, align 8, !tbaa !147
  %281 = fmul double %280, %279
  %282 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4
  %283 = load double, ptr %282, align 8, !tbaa !122
  %284 = fdiv double %281, %283
  %285 = sitofp i64 %14 to double
  %286 = fadd double %284, %285
  %287 = fptosi double %286 to i64
  br label %288

288:                                              ; preds = %268, %272, %230
  %289 = phi i64 [ %14, %230 ], [ %287, %272 ], [ %269, %268 ]
  %290 = sub nsw i64 %289, %49
  %291 = fptrunc double %47 to float
  %292 = sitofp i64 %290 to double
  %293 = fsub double %226, %292
  %294 = fdiv double %293, %226
  %295 = fcmp olt double %294, 5.000000e-01
  %296 = fcmp ogt double %294, 2.000000e+00
  %297 = select i1 %296, double 2.000000e+00, double %294
  %298 = select i1 %295, double 5.000000e-01, double %297
  %299 = fpext float %291 to double
  %300 = fdiv double %299, %298
  %301 = fptrunc double %300 to float
  %302 = load i32, ptr %216, align 4, !tbaa !280
  %303 = add nsw i32 %302, 1
  %304 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %305 = load i32, ptr %304, align 4, !tbaa !292
  %306 = sub i32 %303, %305
  %307 = sitofp i32 %306 to double
  %308 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4
  %309 = load double, ptr %308, align 8, !tbaa !122
  %310 = fcmp ugt double %309, %307
  br i1 %310, label %331, label %311

311:                                              ; preds = %288
  %312 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 28
  %313 = load double, ptr %312, align 8, !tbaa !329
  %314 = fcmp ogt double %313, 0.000000e+00
  br i1 %314, label %315, label %331

315:                                              ; preds = %311
  %316 = sitofp i32 %302 to double
  %317 = load i32, ptr %214, align 8, !tbaa !225
  %318 = sitofp i32 %317 to double
  %319 = fdiv double %316, %318
  %320 = fmul double %319, 1.000000e+02
  %321 = fcmp olt double %320, 0.000000e+00
  %322 = fcmp ogt double %320, 1.000000e+00
  %323 = select i1 %322, double 1.000000e+00, double %320
  %324 = select i1 %321, double 0.000000e+00, double %323
  %325 = sitofp i64 %14 to double
  %326 = fdiv double %325, %313
  %327 = tail call double @pow(double noundef %326, double noundef %324) #17
  %328 = fpext float %301 to double
  %329 = fmul double %327, %328
  %330 = fptrunc double %329 to float
  br label %331

331:                                              ; preds = %315, %311, %288
  %332 = phi float [ %330, %315 ], [ %301, %311 ], [ %301, %288 ]
  %333 = load i32, ptr %227, align 8, !tbaa !153
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %406, label %335

335:                                              ; preds = %331
  %336 = fpext float %332 to double
  %337 = fcmp olt double %336, 1.000000e-01
  %338 = select i1 %337, double 1.000000e-01, double %336
  %339 = fdiv double %53, %338
  %340 = tail call double @pow(double noundef %339, double noundef 1.100000e+00) #17
  %341 = fcmp ogt double %53, 1.000000e+00
  %342 = select i1 %341, double %53, double 1.000000e+00
  %343 = sitofp i32 %52 to double
  %344 = sitofp i32 %51 to double
  %345 = fadd double %344, 1.000000e-01
  %346 = fcmp ogt double %338, 1.000000e+00
  %347 = select i1 %346, double %338, double 1.000000e+00
  %348 = fdiv double %342, %347
  %349 = tail call double @pow(double noundef %348, double noundef 5.000000e-01) #17
  %350 = fmul double %349, %343
  %351 = tail call double @llvm.fmuladd.f64(double %345, double %340, double %350)
  %352 = sitofp i32 %50 to double
  %353 = fadd double %351, %352
  %354 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 19
  %355 = load double, ptr %354, align 8, !tbaa !291
  %356 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 20
  %357 = load double, ptr %356, align 8, !tbaa !143
  %358 = fadd double %355, %357
  %359 = fsub double %358, %353
  %360 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 17
  %361 = load double, ptr %360, align 8, !tbaa !145
  %362 = fdiv double %48, %361
  %363 = fsub double 2.000000e+00, %362
  %364 = fmul double %363, %336
  %365 = fadd double %362, 1.000000e+00
  %366 = fcmp ogt double %364, %47
  %367 = select i1 %366, double %364, double %47
  %368 = fcmp olt double %362, 5.000000e-02
  %369 = select i1 %368, double %213, double %367
  %370 = fcmp olt double %369, %213
  %371 = select i1 %370, double %369, double %213
  %372 = fdiv double %48, %365
  br label %373

373:                                              ; preds = %384, %335
  %374 = phi double [ %359, %335 ], [ %402, %384 ]
  %375 = phi float [ %332, %335 ], [ %386, %384 ]
  %376 = fcmp olt double %374, %372
  %377 = fpext float %375 to double
  %378 = fcmp ogt double %371, %377
  %379 = select i1 %376, i1 %378, i1 false
  br i1 %379, label %384, label %380

380:                                              ; preds = %373
  %381 = fcmp olt double %374, 0.000000e+00
  %382 = fcmp ogt double %213, %377
  %383 = select i1 %381, i1 %382, i1 false
  br i1 %383, label %384, label %403

384:                                              ; preds = %373, %380
  %385 = fmul double %377, 1.050000e+00
  %386 = fptrunc double %385 to float
  %387 = fpext float %386 to double
  %388 = fcmp olt double %387, 1.000000e-01
  %389 = select i1 %388, double 1.000000e-01, double %387
  %390 = fdiv double %53, %389
  %391 = tail call double @pow(double noundef %390, double noundef 1.100000e+00) #17
  %392 = fcmp ogt double %389, 1.000000e+00
  %393 = select i1 %392, double %389, double 1.000000e+00
  %394 = fdiv double %342, %393
  %395 = tail call double @pow(double noundef %394, double noundef 5.000000e-01) #17
  %396 = fmul double %395, %343
  %397 = tail call double @llvm.fmuladd.f64(double %345, double %391, double %396)
  %398 = fadd double %397, %352
  %399 = load double, ptr %354, align 8, !tbaa !291
  %400 = load double, ptr %356, align 8, !tbaa !143
  %401 = fadd double %399, %400
  %402 = fsub double %401, %398
  br label %373, !llvm.loop !330

403:                                              ; preds = %380
  %404 = tail call i32 @x264_rc_analyse_slice(ptr noundef %0) #17
  %405 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 25
  store i32 %404, ptr %405, align 8, !tbaa !326
  br label %406

406:                                              ; preds = %403, %331
  %407 = phi float [ %375, %403 ], [ %332, %331 ]
  %408 = fpext float %407 to double
  %409 = fcmp ogt double %211, %408
  %410 = fcmp olt double %213, %408
  %411 = select i1 %410, double %213, double %408
  %412 = select i1 %409, double %211, double %411
  %413 = sitofp i32 %52 to double
  br label %729

414:                                              ; preds = %199
  %415 = tail call i32 @x264_rc_analyse_slice(ptr noundef %0) #17
  %416 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 25
  store i32 %415, ptr %416, align 8, !tbaa !326
  %417 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 31
  %418 = load double, ptr %417, align 8, !tbaa !331
  %419 = fmul double %418, 5.000000e-01
  store double %419, ptr %417, align 8, !tbaa !331
  %420 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 32
  %421 = load double, ptr %420, align 8, !tbaa !332
  %422 = fmul double %421, 5.000000e-01
  store double %422, ptr %420, align 8, !tbaa !332
  %423 = sitofp i32 %415 to double
  %424 = fadd double %419, %423
  store double %424, ptr %417, align 8, !tbaa !331
  %425 = fadd double %422, 1.000000e+00
  store double %425, ptr %420, align 8, !tbaa !332
  %426 = fdiv double %424, %425
  %427 = fptrunc double %426 to float
  %428 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %429 = load i32, ptr %428, align 8, !tbaa !113
  %430 = icmp eq i32 %429, 1
  br i1 %430, label %431, label %504

431:                                              ; preds = %414
  %432 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 33
  %433 = load double, ptr %432, align 8, !tbaa !119
  %434 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %435 = load ptr, ptr %434, align 8, !tbaa !109
  %436 = getelementptr inbounds %struct.x264_frame, ptr %435, i64 0, i32 10
  %437 = load i32, ptr %436, align 8, !tbaa !98
  %438 = load ptr, ptr %2, align 16, !tbaa !95
  %439 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %438, i64 0, i32 65
  %440 = load i32, ptr %439, align 8, !tbaa !198
  %441 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %438, i64 0, i32 66
  %442 = zext i32 %440 to i64
  br label %443

443:                                              ; preds = %459, %431
  %444 = phi i64 [ %446, %459 ], [ %442, %431 ]
  %445 = phi ptr [ %461, %459 ], [ undef, %431 ]
  %446 = add nsw i64 %444, -1
  %447 = trunc i64 %444 to i32
  %448 = icmp slt i32 %447, 1
  br i1 %448, label %462, label %449

449:                                              ; preds = %443
  %450 = load ptr, ptr %441, align 8, !tbaa !199
  %451 = getelementptr inbounds %struct.x264_zone_t, ptr %450, i64 %446
  %452 = load i32, ptr %451, align 8, !tbaa !200
  %453 = icmp sgt i32 %452, %437
  br i1 %453, label %458, label %454

454:                                              ; preds = %449
  %455 = getelementptr inbounds %struct.x264_zone_t, ptr %450, i64 %446, i32 1
  %456 = load i32, ptr %455, align 4, !tbaa !201
  %457 = icmp slt i32 %456, %437
  br i1 %457, label %458, label %459

458:                                              ; preds = %454, %449
  br label %459

459:                                              ; preds = %458, %454
  %460 = phi i1 [ true, %458 ], [ false, %454 ]
  %461 = phi ptr [ %445, %458 ], [ %451, %454 ]
  br i1 %460, label %443, label %462, !llvm.loop !249

462:                                              ; preds = %459, %443
  %463 = phi ptr [ %461, %459 ], [ null, %443 ]
  %464 = fpext float %427 to double
  %465 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %438, i64 0, i32 7
  %466 = load double, ptr %465, align 8, !tbaa !117
  %467 = fsub double 1.000000e+00, %466
  %468 = tail call double @pow(double noundef %464, double noundef %467) #17
  %469 = tail call double @llvm.fabs.f64(double %468)
  %470 = fcmp ueq double %469, 0x7FF0000000000000
  %471 = icmp eq i32 %415, 0
  %472 = select i1 %470, i1 true, i1 %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %462
  %474 = sext i32 %5 to i64
  %475 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %438, i64 0, i32 45, i64 %474
  %476 = load double, ptr %475, align 8, !tbaa !181
  br label %481

477:                                              ; preds = %462
  %478 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %438, i64 0, i32 26
  store double %468, ptr %478, align 8, !tbaa !250
  %479 = fdiv double %468, %433
  %480 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %438, i64 0, i32 44
  store double %479, ptr %480, align 8, !tbaa !176
  br label %481

481:                                              ; preds = %477, %473
  %482 = phi double [ %476, %473 ], [ %479, %477 ]
  %483 = icmp eq ptr %463, null
  br i1 %483, label %501, label %484

484:                                              ; preds = %481
  %485 = getelementptr inbounds %struct.x264_zone_t, ptr %463, i64 0, i32 2
  %486 = load i32, ptr %485, align 8, !tbaa !189
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %496, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.x264_zone_t, ptr %463, i64 0, i32 3
  %490 = load i32, ptr %489, align 4, !tbaa !251
  %491 = sitofp i32 %490 to double
  %492 = fadd double %491, -1.200000e+01
  %493 = fdiv double %492, 6.000000e+00
  %494 = tail call double @exp2(double %493) #17
  %495 = fmul double %494, 8.500000e-01
  br label %501

496:                                              ; preds = %484
  %497 = getelementptr inbounds %struct.x264_zone_t, ptr %463, i64 0, i32 4
  %498 = load float, ptr %497, align 8, !tbaa !188
  %499 = fpext float %498 to double
  %500 = fdiv double %482, %499
  br label %501

501:                                              ; preds = %481, %488, %496
  %502 = phi double [ %495, %488 ], [ %500, %496 ], [ %482, %481 ]
  %503 = fptrunc double %502 to float
  br label %642

504:                                              ; preds = %414
  %505 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 29
  %506 = load double, ptr %505, align 8, !tbaa !168
  %507 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 27
  %508 = load double, ptr %507, align 8, !tbaa !167
  %509 = fdiv double %506, %508
  %510 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %511 = load ptr, ptr %510, align 8, !tbaa !109
  %512 = getelementptr inbounds %struct.x264_frame, ptr %511, i64 0, i32 10
  %513 = load i32, ptr %512, align 8, !tbaa !98
  %514 = load ptr, ptr %2, align 16, !tbaa !95
  %515 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %514, i64 0, i32 65
  %516 = load i32, ptr %515, align 8, !tbaa !198
  %517 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %514, i64 0, i32 66
  %518 = zext i32 %516 to i64
  br label %519

519:                                              ; preds = %535, %504
  %520 = phi i64 [ %522, %535 ], [ %518, %504 ]
  %521 = phi ptr [ %537, %535 ], [ undef, %504 ]
  %522 = add nsw i64 %520, -1
  %523 = trunc i64 %520 to i32
  %524 = icmp slt i32 %523, 1
  br i1 %524, label %538, label %525

525:                                              ; preds = %519
  %526 = load ptr, ptr %517, align 8, !tbaa !199
  %527 = getelementptr inbounds %struct.x264_zone_t, ptr %526, i64 %522
  %528 = load i32, ptr %527, align 8, !tbaa !200
  %529 = icmp sgt i32 %528, %513
  br i1 %529, label %534, label %530

530:                                              ; preds = %525
  %531 = getelementptr inbounds %struct.x264_zone_t, ptr %526, i64 %522, i32 1
  %532 = load i32, ptr %531, align 4, !tbaa !201
  %533 = icmp slt i32 %532, %513
  br i1 %533, label %534, label %535

534:                                              ; preds = %530, %525
  br label %535

535:                                              ; preds = %534, %530
  %536 = phi i1 [ true, %534 ], [ false, %530 ]
  %537 = phi ptr [ %521, %534 ], [ %527, %530 ]
  br i1 %536, label %519, label %538, !llvm.loop !249

538:                                              ; preds = %535, %519
  %539 = phi ptr [ %537, %535 ], [ null, %519 ]
  %540 = fpext float %427 to double
  %541 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %514, i64 0, i32 7
  %542 = load double, ptr %541, align 8, !tbaa !117
  %543 = fsub double 1.000000e+00, %542
  %544 = tail call double @pow(double noundef %540, double noundef %543) #17
  %545 = tail call double @llvm.fabs.f64(double %544)
  %546 = fcmp ueq double %545, 0x7FF0000000000000
  %547 = icmp eq i32 %415, 0
  %548 = select i1 %546, i1 true, i1 %547
  br i1 %548, label %549, label %553

549:                                              ; preds = %538
  %550 = sext i32 %5 to i64
  %551 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %514, i64 0, i32 45, i64 %550
  %552 = load double, ptr %551, align 8, !tbaa !181
  br label %557

553:                                              ; preds = %538
  %554 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %514, i64 0, i32 26
  store double %544, ptr %554, align 8, !tbaa !250
  %555 = fdiv double %544, %509
  %556 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %514, i64 0, i32 44
  store double %555, ptr %556, align 8, !tbaa !176
  br label %557

557:                                              ; preds = %553, %549
  %558 = phi double [ %552, %549 ], [ %555, %553 ]
  %559 = icmp eq ptr %539, null
  br i1 %559, label %577, label %560

560:                                              ; preds = %557
  %561 = getelementptr inbounds %struct.x264_zone_t, ptr %539, i64 0, i32 2
  %562 = load i32, ptr %561, align 8, !tbaa !189
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %572, label %564

564:                                              ; preds = %560
  %565 = getelementptr inbounds %struct.x264_zone_t, ptr %539, i64 0, i32 3
  %566 = load i32, ptr %565, align 4, !tbaa !251
  %567 = sitofp i32 %566 to double
  %568 = fadd double %567, -1.200000e+01
  %569 = fdiv double %568, 6.000000e+00
  %570 = tail call double @exp2(double %569) #17
  %571 = fmul double %570, 8.500000e-01
  br label %577

572:                                              ; preds = %560
  %573 = getelementptr inbounds %struct.x264_zone_t, ptr %539, i64 0, i32 4
  %574 = load float, ptr %573, align 8, !tbaa !188
  %575 = fpext float %574 to double
  %576 = fdiv double %558, %575
  br label %577

577:                                              ; preds = %557, %564, %572
  %578 = phi double [ %571, %564 ], [ %576, %572 ], [ %558, %557 ]
  %579 = fptrunc double %578 to float
  %580 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 3
  %581 = load i32, ptr %580, align 4, !tbaa !123
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %583, label %642

583:                                              ; preds = %577
  %584 = load i32, ptr %416, align 8, !tbaa !326
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %642, label %586

586:                                              ; preds = %583
  %587 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %588 = load i32, ptr %587, align 4, !tbaa !280
  %589 = add nsw i32 %588, 1
  %590 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %591 = load i32, ptr %590, align 4, !tbaa !292
  %592 = sub i32 %589, %591
  %593 = sitofp i32 %592 to double
  %594 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4
  %595 = load double, ptr %594, align 8, !tbaa !122
  %596 = fdiv double %593, %595
  %597 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %598 = load i32, ptr %597, align 8, !tbaa !333
  %599 = icmp ne i32 %598, 0
  %600 = icmp sgt i32 %592, 0
  %601 = select i1 %599, i1 %600, i1 false
  br i1 %601, label %602, label %618

602:                                              ; preds = %586
  %603 = load ptr, ptr %510, align 8, !tbaa !109
  %604 = getelementptr inbounds %struct.x264_frame, ptr %603, i64 0, i32 4
  %605 = load i64, ptr %604, align 8, !tbaa !334
  %606 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53
  %607 = load i64, ptr %606, align 8, !tbaa !335
  %608 = sub nsw i64 %605, %607
  %609 = sitofp i64 %608 to double
  %610 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %611 = load i32, ptr %610, align 4, !tbaa !215
  %612 = uitofp i32 %611 to double
  %613 = fmul double %609, %612
  %614 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %615 = load i32, ptr %614, align 8, !tbaa !216
  %616 = uitofp i32 %615 to double
  %617 = fdiv double %613, %616
  br label %618

618:                                              ; preds = %602, %586
  %619 = phi double [ %617, %602 ], [ %596, %586 ]
  %620 = load double, ptr %203, align 8, !tbaa !147
  %621 = fmul double %619, %620
  %622 = fcmp ogt double %621, 0.000000e+00
  br i1 %622, label %623, label %642

623:                                              ; preds = %618
  %624 = tail call double @sqrt(double noundef %619) #17
  %625 = fcmp olt double %624, 1.000000e+00
  br i1 %625, label %628, label %626

626:                                              ; preds = %623
  %627 = tail call double @sqrt(double noundef %619) #17
  br label %628

628:                                              ; preds = %623, %626
  %629 = phi double [ %627, %626 ], [ 1.000000e+00, %623 ]
  %630 = fmul double %205, %629
  %631 = sitofp i64 %14 to double
  %632 = fsub double %631, %621
  %633 = fdiv double %632, %630
  %634 = fadd double %633, 1.000000e+00
  %635 = fcmp olt double %634, 5.000000e-01
  %636 = fcmp ogt double %634, 2.000000e+00
  %637 = select i1 %636, double 2.000000e+00, double %634
  %638 = select i1 %635, double 5.000000e-01, double %637
  %639 = fpext float %579 to double
  %640 = fmul double %638, %639
  %641 = fptrunc double %640 to float
  br label %642

642:                                              ; preds = %618, %628, %577, %583, %501
  %643 = phi float [ %503, %501 ], [ %579, %577 ], [ %579, %583 ], [ %641, %628 ], [ %579, %618 ]
  %644 = phi double [ 1.000000e+00, %501 ], [ 1.000000e+00, %577 ], [ 1.000000e+00, %583 ], [ %638, %628 ], [ 1.000000e+00, %618 ]
  %645 = icmp eq i32 %5, 2
  br i1 %645, label %646, label %669

646:                                              ; preds = %642
  %647 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %648 = load i32, ptr %647, align 4, !tbaa !136
  %649 = icmp sgt i32 %648, 1
  br i1 %649, label %650, label %669

650:                                              ; preds = %646
  %651 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 46
  %652 = load i32, ptr %651, align 8, !tbaa !163
  %653 = icmp eq i32 %652, 2
  br i1 %653, label %669, label %654

654:                                              ; preds = %650
  %655 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 47
  %656 = load double, ptr %655, align 8, !tbaa !166
  %657 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 48
  %658 = load double, ptr %657, align 8, !tbaa !165
  %659 = fdiv double %656, %658
  %660 = fadd double %659, -1.200000e+01
  %661 = fdiv double %660, 6.000000e+00
  %662 = tail call double @exp2(double %661) #17
  %663 = fmul double %662, 8.500000e-01
  %664 = fptrunc double %663 to float
  %665 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %666 = load float, ptr %665, align 8, !tbaa !169
  %667 = tail call float @llvm.fabs.f32(float %666)
  %668 = fdiv float %664, %667
  br label %720

669:                                              ; preds = %650, %646, %642
  %670 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %671 = load i32, ptr %670, align 4, !tbaa !280
  %672 = icmp sgt i32 %671, 0
  br i1 %672, label %673, label %699

673:                                              ; preds = %669
  %674 = sext i32 %5 to i64
  %675 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 45, i64 %674
  %676 = load double, ptr %675, align 8, !tbaa !181
  %677 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 52
  %678 = load double, ptr %677, align 8, !tbaa !175
  %679 = fdiv double %676, %678
  %680 = fmul double %676, %678
  %681 = fcmp ogt double %644, 1.100000e+00
  %682 = icmp sgt i32 %671, 3
  %683 = and i1 %681, %682
  br i1 %683, label %684, label %686

684:                                              ; preds = %673
  %685 = fmul double %678, %680
  br label %690

686:                                              ; preds = %673
  %687 = fcmp olt double %644, 9.000000e-01
  br i1 %687, label %688, label %690

688:                                              ; preds = %686
  %689 = fdiv double %679, %678
  br label %690

690:                                              ; preds = %686, %688, %684
  %691 = phi double [ %679, %684 ], [ %689, %688 ], [ %679, %686 ]
  %692 = phi double [ %685, %684 ], [ %680, %688 ], [ %680, %686 ]
  %693 = fpext float %643 to double
  %694 = fcmp ogt double %691, %693
  %695 = fcmp olt double %692, %693
  %696 = select i1 %695, double %692, double %693
  %697 = select i1 %694, double %691, double %696
  %698 = fptrunc double %697 to float
  br label %720

699:                                              ; preds = %669
  %700 = load i32, ptr %428, align 8, !tbaa !113
  %701 = icmp eq i32 %700, 1
  br i1 %701, label %702, label %720

702:                                              ; preds = %699
  %703 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 7
  %704 = load double, ptr %703, align 8, !tbaa !117
  %705 = fcmp une double %704, 1.000000e+00
  br i1 %705, label %706, label %720

706:                                              ; preds = %702
  %707 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %708 = load float, ptr %707, align 8, !tbaa !118
  %709 = fpext float %708 to double
  %710 = fadd double %709, -1.200000e+01
  %711 = fdiv double %710, 6.000000e+00
  %712 = tail call double @exp2(double %711) #17
  %713 = fmul double %712, 8.500000e-01
  %714 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %715 = load float, ptr %714, align 8, !tbaa !169
  %716 = tail call float @llvm.fabs.f32(float %715)
  %717 = fpext float %716 to double
  %718 = fdiv double %713, %717
  %719 = fptrunc double %718 to float
  br label %720

720:                                              ; preds = %690, %706, %702, %699, %654
  %721 = phi float [ %668, %654 ], [ %698, %690 ], [ %719, %706 ], [ %643, %702 ], [ %643, %699 ]
  %722 = fpext float %721 to double
  %723 = fdiv double %722, 8.500000e-01
  %724 = tail call double @log2(double noundef %723) #17
  %725 = tail call double @llvm.fmuladd.f64(double %724, double 6.000000e+00, double 1.200000e+01)
  %726 = fptrunc double %725 to float
  %727 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 15
  store float %726, ptr %727, align 8, !tbaa !327
  %728 = tail call fastcc double @clip_qscale(ptr noundef %0, i32 noundef %5, double noundef %722)
  br label %729

729:                                              ; preds = %720, %406
  %730 = phi i32 [ %415, %720 ], [ %51, %406 ]
  %731 = phi double [ 0.000000e+00, %720 ], [ %413, %406 ]
  %732 = phi double [ 1.000000e+00, %720 ], [ %53, %406 ]
  %733 = phi double [ %728, %720 ], [ %412, %406 ]
  %734 = fptrunc double %733 to float
  %735 = fpext float %734 to double
  %736 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 44
  store double %735, ptr %736, align 8, !tbaa !176
  %737 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 45
  %738 = sext i32 %5 to i64
  %739 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 45, i64 %738
  store double %735, ptr %739, align 8, !tbaa !181
  %740 = load i32, ptr %15, align 4, !tbaa !112
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %746, label %742

742:                                              ; preds = %729
  %743 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %744 = load i32, ptr %743, align 8, !tbaa !153
  %745 = icmp eq i32 %744, 0
  br i1 %745, label %758, label %746

746:                                              ; preds = %742, %729
  %747 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %748 = load ptr, ptr %747, align 8, !tbaa !109
  %749 = getelementptr inbounds %struct.x264_frame, ptr %748, i64 0, i32 10
  %750 = load i32, ptr %749, align 8, !tbaa !98
  %751 = icmp eq i32 %750, 0
  br i1 %751, label %752, label %758

752:                                              ; preds = %746
  %753 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %754 = load float, ptr %753, align 8, !tbaa !169
  %755 = tail call float @llvm.fabs.f32(float %754)
  %756 = fpext float %755 to double
  %757 = fmul double %735, %756
  store double %757, ptr %737, align 8, !tbaa !181
  br label %758

758:                                              ; preds = %752, %746, %742
  br i1 %741, label %780, label %759

759:                                              ; preds = %758
  %760 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %761 = load i32, ptr %760, align 8, !tbaa !153
  %762 = icmp eq i32 %761, 0
  br i1 %762, label %780, label %763

763:                                              ; preds = %759
  %764 = fcmp olt double %735, 1.000000e-01
  %765 = select i1 %764, double 1.000000e-01, double %735
  %766 = fdiv double %732, %765
  %767 = tail call double @pow(double noundef %766, double noundef 1.100000e+00) #17
  %768 = fcmp ogt double %732, 1.000000e+00
  %769 = select i1 %768, double %732, double 1.000000e+00
  %770 = sitofp i32 %730 to double
  %771 = fadd double %770, 1.000000e-01
  %772 = fcmp ogt double %765, 1.000000e+00
  %773 = select i1 %772, double %765, double 1.000000e+00
  %774 = fdiv double %769, %773
  %775 = tail call double @pow(double noundef %774, double noundef 5.000000e-01) #17
  %776 = fmul double %731, %775
  %777 = tail call double @llvm.fmuladd.f64(double %771, double %767, double %776)
  %778 = sitofp i32 %50 to double
  %779 = fadd double %777, %778
  br label %797

780:                                              ; preds = %759, %758
  %781 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 22
  %782 = load ptr, ptr %781, align 8, !tbaa !178
  %783 = load i32, ptr %4, align 16, !tbaa !284
  %784 = sext i32 %783 to i64
  %785 = getelementptr inbounds %struct.predictor_t, ptr %782, i64 %784
  %786 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 25
  %787 = load i32, ptr %786, align 8, !tbaa !326
  %788 = sitofp i32 %787 to double
  %789 = load double, ptr %785, align 8, !tbaa !205
  %790 = getelementptr inbounds %struct.predictor_t, ptr %782, i64 %784, i32 3
  %791 = load double, ptr %790, align 8, !tbaa !208
  %792 = tail call double @llvm.fmuladd.f64(double %789, double %788, double %791)
  %793 = getelementptr inbounds %struct.predictor_t, ptr %782, i64 %784, i32 1
  %794 = load double, ptr %793, align 8, !tbaa !206
  %795 = fmul double %794, %735
  %796 = fdiv double %792, %795
  br label %797

797:                                              ; preds = %780, %763
  %798 = phi double [ %796, %780 ], [ %779, %763 ]
  %799 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  store double %798, ptr %799, align 8, !tbaa !294
  %800 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 23
  %801 = load i32, ptr %800, align 8, !tbaa !146
  %802 = icmp eq i32 %801, 0
  br i1 %802, label %807, label %803

803:                                              ; preds = %797
  %804 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 20
  %805 = load double, ptr %804, align 8, !tbaa !143
  %806 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  store double %805, ptr %806, align 8, !tbaa !294
  br label %807

807:                                              ; preds = %803, %797
  %808 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  %809 = load double, ptr %808, align 8, !tbaa !294
  %810 = fptrunc double %809 to float
  %811 = load ptr, ptr %2, align 16, !tbaa !95
  %812 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %811, i64 0, i32 55
  store float %810, ptr %812, align 4, !tbaa !295
  br label %813

813:                                              ; preds = %807, %191
  %814 = phi float [ %198, %191 ], [ %734, %807 ]
  ret float %814
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_mb(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !95
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !336
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 16, !tbaa !287
  %9 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !288
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !92
  %14 = add nsw i32 %13, %1
  store i32 %14, ptr %12, align 4, !tbaa !92
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 12
  %16 = load float, ptr %15, align 4, !tbaa !310
  %17 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 13
  %18 = load float, ptr %17, align 8, !tbaa !308
  %19 = fadd float %16, %18
  store float %19, ptr %17, align 8, !tbaa !308
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %21 = load i32, ptr %20, align 16, !tbaa !337
  %22 = sitofp i32 %21 to float
  %23 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 14
  %24 = load float, ptr %23, align 4, !tbaa !307
  %25 = fadd float %24, %22
  store float %25, ptr %23, align 4, !tbaa !307
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %27 = load i32, ptr %26, align 16, !tbaa !338
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %29 = load ptr, ptr %28, align 16, !tbaa !77
  %30 = getelementptr inbounds %struct.x264_sps_t, ptr %29, i64 0, i32 16
  %31 = load i32, ptr %30, align 4, !tbaa !83
  %32 = add nsw i32 %31, -1
  %33 = icmp eq i32 %27, %32
  br i1 %33, label %34, label %433

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !153
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %433, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 59
  %40 = load ptr, ptr %39, align 16, !tbaa !339
  %41 = getelementptr inbounds float, ptr %40, i64 %11
  store float %16, ptr %41, align 4, !tbaa !86
  %42 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 60
  %43 = load ptr, ptr %42, align 8, !tbaa !289
  %44 = load float, ptr %15, align 4, !tbaa !310
  %45 = fpext float %44 to double
  %46 = fadd double %45, -1.200000e+01
  %47 = fdiv double %46, 6.000000e+00
  %48 = tail call double @exp2(double %47) #17
  %49 = load ptr, ptr %7, align 16, !tbaa !287
  %50 = getelementptr inbounds %struct.x264_frame, ptr %49, i64 0, i32 57
  %51 = load ptr, ptr %50, align 16, !tbaa !340
  %52 = getelementptr inbounds i32, ptr %51, i64 %11
  %53 = load i32, ptr %52, align 4, !tbaa !92
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %91, label %55

55:                                               ; preds = %38
  %56 = sitofp i32 %53 to double
  %57 = getelementptr inbounds %struct.x264_frame, ptr %49, i64 0, i32 58
  %58 = load ptr, ptr %57, align 8, !tbaa !288
  %59 = getelementptr inbounds i32, ptr %58, i64 %11
  %60 = load i32, ptr %59, align 4, !tbaa !92
  %61 = sitofp i32 %60 to double
  %62 = fmul double %48, 8.500000e-01
  %63 = load double, ptr %43, align 8, !tbaa !205
  %64 = getelementptr inbounds %struct.predictor_t, ptr %43, i64 0, i32 1
  %65 = load double, ptr %64, align 8, !tbaa !206
  %66 = fdiv double %63, %65
  %67 = fmul double %62, %61
  %68 = fdiv double %67, %56
  %69 = fdiv double %66, 1.500000e+00
  %70 = fmul double %66, 1.500000e+00
  %71 = fcmp olt double %68, %69
  %72 = fcmp ogt double %68, %70
  %73 = select i1 %72, double %70, double %68
  %74 = select i1 %71, double %69, double %73
  %75 = fneg double %74
  %76 = fmul double %56, %75
  %77 = tail call double @llvm.fmuladd.f64(double %61, double %62, double %76)
  %78 = fcmp ult double %77, 0.000000e+00
  %79 = select i1 %78, double %68, double %74
  %80 = select i1 %78, double 0.000000e+00, double %77
  %81 = getelementptr inbounds %struct.predictor_t, ptr %43, i64 0, i32 2
  %82 = load double, ptr %81, align 8, !tbaa !207
  %83 = fmul double %65, %82
  store double %83, ptr %64, align 8, !tbaa !206
  %84 = fmul double %63, %82
  store double %84, ptr %43, align 8, !tbaa !205
  %85 = getelementptr inbounds %struct.predictor_t, ptr %43, i64 0, i32 3
  %86 = load double, ptr %85, align 8, !tbaa !208
  %87 = fmul double %82, %86
  store double %87, ptr %85, align 8, !tbaa !208
  %88 = fadd double %83, 1.000000e+00
  store double %88, ptr %64, align 8, !tbaa !206
  %89 = fadd double %84, %79
  store double %89, ptr %43, align 8, !tbaa !205
  %90 = fadd double %87, %80
  store double %90, ptr %85, align 8, !tbaa !208
  br label %91

91:                                               ; preds = %38, %55
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %93 = load i32, ptr %92, align 16, !tbaa !284
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %153

95:                                               ; preds = %91
  %96 = load float, ptr %15, align 4, !tbaa !310
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %98 = load ptr, ptr %97, align 16, !tbaa !94
  %99 = getelementptr inbounds %struct.x264_frame, ptr %98, i64 0, i32 59
  %100 = load ptr, ptr %99, align 16, !tbaa !339
  %101 = getelementptr inbounds float, ptr %100, i64 %11
  %102 = load float, ptr %101, align 4, !tbaa !86
  %103 = fcmp olt float %96, %102
  br i1 %103, label %104, label %153

104:                                              ; preds = %95
  %105 = load ptr, ptr %42, align 8, !tbaa !289
  %106 = fpext float %96 to double
  %107 = fadd double %106, -1.200000e+01
  %108 = fdiv double %107, 6.000000e+00
  %109 = tail call double @exp2(double %108) #17
  %110 = load ptr, ptr %7, align 16, !tbaa !287
  %111 = getelementptr inbounds %struct.x264_frame, ptr %110, i64 0, i32 56
  %112 = load ptr, ptr %111, align 16, !tbaa !94
  %113 = getelementptr inbounds i32, ptr %112, i64 %11
  %114 = load i32, ptr %113, align 4, !tbaa !92
  %115 = icmp slt i32 %114, 10
  br i1 %115, label %153, label %116

116:                                              ; preds = %104
  %117 = sitofp i32 %114 to double
  %118 = getelementptr inbounds %struct.x264_frame, ptr %110, i64 0, i32 58
  %119 = load ptr, ptr %118, align 8, !tbaa !288
  %120 = getelementptr inbounds i32, ptr %119, i64 %11
  %121 = load i32, ptr %120, align 4, !tbaa !92
  %122 = sitofp i32 %121 to double
  %123 = fmul double %109, 8.500000e-01
  %124 = getelementptr inbounds [2 x %struct.predictor_t], ptr %105, i64 1
  %125 = load double, ptr %124, align 8, !tbaa !205
  %126 = getelementptr inbounds [2 x %struct.predictor_t], ptr %105, i64 1, i64 0, i32 1
  %127 = load double, ptr %126, align 8, !tbaa !206
  %128 = fdiv double %125, %127
  %129 = fmul double %123, %122
  %130 = fdiv double %129, %117
  %131 = fdiv double %128, 1.500000e+00
  %132 = fmul double %128, 1.500000e+00
  %133 = fcmp olt double %130, %131
  %134 = fcmp ogt double %130, %132
  %135 = select i1 %134, double %132, double %130
  %136 = select i1 %133, double %131, double %135
  %137 = fneg double %136
  %138 = fmul double %117, %137
  %139 = tail call double @llvm.fmuladd.f64(double %122, double %123, double %138)
  %140 = fcmp ult double %139, 0.000000e+00
  %141 = select i1 %140, double %130, double %136
  %142 = select i1 %140, double 0.000000e+00, double %139
  %143 = getelementptr inbounds [2 x %struct.predictor_t], ptr %105, i64 1, i64 0, i32 2
  %144 = load double, ptr %143, align 8, !tbaa !207
  %145 = fmul double %127, %144
  store double %145, ptr %126, align 8, !tbaa !206
  %146 = fmul double %125, %144
  store double %146, ptr %124, align 8, !tbaa !205
  %147 = getelementptr inbounds [2 x %struct.predictor_t], ptr %105, i64 1, i64 0, i32 3
  %148 = load double, ptr %147, align 8, !tbaa !208
  %149 = fmul double %144, %148
  store double %149, ptr %147, align 8, !tbaa !208
  %150 = fadd double %145, 1.000000e+00
  store double %150, ptr %126, align 8, !tbaa !206
  %151 = fadd double %146, %141
  store double %151, ptr %124, align 8, !tbaa !205
  %152 = fadd double %149, %142
  store double %152, ptr %147, align 8, !tbaa !208
  br label %153

153:                                              ; preds = %116, %104, %95, %91
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %155 = load i32, ptr %154, align 8, !tbaa !341
  %156 = add nsw i32 %155, -1
  %157 = icmp slt i32 %6, %156
  br i1 %157, label %158, label %433

158:                                              ; preds = %153
  %159 = load ptr, ptr %7, align 16, !tbaa !287
  %160 = getelementptr inbounds %struct.x264_frame, ptr %159, i64 0, i32 59
  %161 = load ptr, ptr %160, align 16, !tbaa !339
  %162 = getelementptr inbounds float, ptr %161, i64 %11
  %163 = load float, ptr %162, align 4, !tbaa !86
  %164 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %165 = load i32, ptr %164, align 8, !tbaa !174
  %166 = sitofp i32 %165 to float
  %167 = fsub float %163, %166
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !203
  %170 = sitofp i32 %169 to float
  %171 = fcmp ogt float %167, %170
  %172 = select i1 %171, float %167, float %170
  %173 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %174 = load i32, ptr %173, align 4, !tbaa !204
  %175 = sitofp i32 %174 to float
  %176 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 24
  %177 = load double, ptr %176, align 8, !tbaa !150
  %178 = fcmp une double %177, 0.000000e+00
  br i1 %178, label %179, label %188

179:                                              ; preds = %158
  %180 = fpext float %175 to double
  %181 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  %182 = load float, ptr %181, align 8, !tbaa !327
  %183 = fpext float %182 to double
  %184 = fadd double %177, %183
  %185 = fcmp ogt double %184, %180
  %186 = fptrunc double %184 to float
  %187 = select i1 %185, float %175, float %186
  br label %188

188:                                              ; preds = %179, %158
  %189 = phi float [ %187, %179 ], [ %175, %158 ]
  %190 = fadd float %163, %166
  %191 = fcmp olt float %190, %189
  %192 = select i1 %191, float %190, float %189
  %193 = load i32, ptr %92, align 16, !tbaa !284
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %217

195:                                              ; preds = %188
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %197 = load ptr, ptr %196, align 16, !tbaa !94
  %198 = getelementptr inbounds %struct.x264_frame, ptr %197, i64 0, i32 59
  %199 = load ptr, ptr %198, align 16, !tbaa !339
  %200 = add nsw i32 %6, 1
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds float, ptr %199, i64 %201
  %203 = load float, ptr %202, align 4, !tbaa !86
  %204 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %205 = load ptr, ptr %204, align 16, !tbaa !94
  %206 = getelementptr inbounds %struct.x264_frame, ptr %205, i64 0, i32 59
  %207 = load ptr, ptr %206, align 16, !tbaa !339
  %208 = getelementptr inbounds float, ptr %207, i64 %201
  %209 = load float, ptr %208, align 4, !tbaa !86
  %210 = fcmp ogt float %203, %209
  %211 = select i1 %210, float %203, float %209
  %212 = fcmp ogt float %172, %211
  %213 = select i1 %212, float %172, float %211
  %214 = load float, ptr %15, align 4, !tbaa !310
  %215 = fcmp ogt float %214, %213
  %216 = select i1 %215, float %214, float %213
  store float %216, ptr %15, align 4, !tbaa !310
  br label %217

217:                                              ; preds = %195, %188
  %218 = phi float [ %213, %195 ], [ %172, %188 ]
  %219 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 19
  %220 = load double, ptr %219, align 8, !tbaa !291
  %221 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 57
  %222 = load double, ptr %221, align 8, !tbaa !294
  %223 = fsub double %220, %222
  %224 = fptrunc double %223 to float
  %225 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %226 = load i32, ptr %225, align 8, !tbaa !177
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %217
  %229 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 58
  %230 = load double, ptr %229, align 8, !tbaa !342
  br label %231

231:                                              ; preds = %217, %228
  %232 = phi double [ %230, %228 ], [ %222, %217 ]
  %233 = fptrunc double %232 to float
  br i1 %227, label %258, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !154
  %237 = icmp sgt i32 %236, 0
  br i1 %237, label %238, label %267

238:                                              ; preds = %234
  %239 = zext nneg i32 %236 to i64
  br label %242

240:                                              ; preds = %254
  %241 = fpext float %255 to double
  br label %267

242:                                              ; preds = %238, %254
  %243 = phi i64 [ 0, %238 ], [ %256, %254 ]
  %244 = phi float [ 0.000000e+00, %238 ], [ %255, %254 ]
  %245 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %243
  %246 = load ptr, ptr %245, align 8, !tbaa !94
  %247 = icmp eq ptr %246, %0
  br i1 %247, label %254, label %248

248:                                              ; preds = %242
  %249 = getelementptr inbounds %struct.x264_t, ptr %246, i64 0, i32 56
  %250 = load ptr, ptr %249, align 16, !tbaa !95
  %251 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %250, i64 0, i32 55
  %252 = load float, ptr %251, align 4, !tbaa !295
  %253 = fadd float %244, %252
  br label %254

254:                                              ; preds = %242, %248
  %255 = phi float [ %253, %248 ], [ %244, %242 ]
  %256 = add nuw nsw i64 %243, 1
  %257 = icmp eq i64 %256, %239
  br i1 %257, label %240, label %242, !llvm.loop !343

258:                                              ; preds = %231
  %259 = load ptr, ptr %28, align 16, !tbaa !77
  %260 = getelementptr inbounds %struct.x264_sps_t, ptr %259, i64 0, i32 16
  %261 = load i32, ptr %260, align 4, !tbaa !83
  %262 = sitofp i32 %261 to double
  %263 = fdiv double 1.000000e+00, %262
  %264 = fcmp olt double %263, 5.000000e-02
  %265 = select i1 %264, double 5.000000e-02, double %263
  %266 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 59
  store double %265, ptr %266, align 8, !tbaa !344
  br label %267

267:                                              ; preds = %234, %240, %258
  %268 = phi double [ 0.000000e+00, %258 ], [ 0.000000e+00, %234 ], [ %241, %240 ]
  %269 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %270 = load i32, ptr %269, align 4, !tbaa !154
  %271 = sitofp i32 %270 to float
  %272 = fdiv float %224, %271
  %273 = fpext float %272 to double
  %274 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 6
  %275 = load double, ptr %274, align 8, !tbaa !161
  %276 = fmul double %275, %273
  %277 = fptrunc double %276 to float
  %278 = load float, ptr %15, align 4, !tbaa !310
  %279 = fpext float %278 to double
  %280 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %279)
  %281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %282 = load i32, ptr %281, align 4, !tbaa !345
  %283 = icmp sgt i32 %282, %6
  br i1 %283, label %300, label %284

284:                                              ; preds = %267
  %285 = load ptr, ptr %7, align 16, !tbaa !287
  %286 = getelementptr inbounds %struct.x264_frame, ptr %285, i64 0, i32 58
  %287 = load ptr, ptr %286, align 8, !tbaa !288
  %288 = sext i32 %282 to i64
  %289 = add i32 %6, 1
  br label %290

290:                                              ; preds = %284, %290
  %291 = phi i64 [ %288, %284 ], [ %297, %290 ]
  %292 = phi double [ 0.000000e+00, %284 ], [ %296, %290 ]
  %293 = getelementptr inbounds i32, ptr %287, i64 %291
  %294 = load i32, ptr %293, align 4, !tbaa !92
  %295 = sitofp i32 %294 to double
  %296 = fadd double %292, %295
  %297 = add nsw i64 %291, 1
  %298 = trunc i64 %297 to i32
  %299 = icmp eq i32 %289, %298
  br i1 %299, label %300, label %290, !llvm.loop !346

300:                                              ; preds = %290, %267
  %301 = phi double [ 0.000000e+00, %267 ], [ %296, %290 ]
  %302 = fpext float %233 to double
  %303 = fmul double %302, 5.000000e-02
  %304 = fcmp uge double %301, %303
  br i1 %304, label %305, label %433

305:                                              ; preds = %300
  %306 = load i32, ptr %92, align 16, !tbaa !284
  %307 = icmp eq i32 %306, 2
  %308 = fmul float %277, 5.000000e-01
  %309 = select i1 %307, float %277, float %308
  %310 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 3
  %311 = load i32, ptr %310, align 4, !tbaa !123
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %305
  %314 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  %315 = load float, ptr %314, align 8, !tbaa !327
  %316 = fcmp ogt float %218, %315
  %317 = select i1 %316, float %218, float %315
  br label %318

318:                                              ; preds = %313, %305
  %319 = phi float [ %218, %305 ], [ %317, %313 ]
  %320 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  %321 = fadd double %268, %280
  %322 = fptosi double %321 to i32
  %323 = load float, ptr %15, align 4, !tbaa !310
  %324 = fcmp olt float %323, %192
  br i1 %324, label %325, label %353

325:                                              ; preds = %318
  %326 = fpext float %309 to double
  %327 = fpext float %224 to double
  %328 = fmul double %327, 5.000000e-01
  br label %329

329:                                              ; preds = %325, %345
  %330 = phi float [ %323, %325 ], [ %351, %345 ]
  %331 = phi i32 [ %322, %325 ], [ %350, %345 ]
  %332 = sitofp i32 %331 to double
  %333 = load double, ptr %221, align 8, !tbaa !294
  %334 = fadd double %333, %326
  %335 = fcmp olt double %334, %332
  br i1 %335, label %345, label %336

336:                                              ; preds = %329
  %337 = load double, ptr %219, align 8, !tbaa !291
  %338 = fsub double %337, %332
  %339 = fcmp olt double %338, %328
  br i1 %339, label %345, label %340

340:                                              ; preds = %336
  %341 = fcmp olt double %333, %332
  br i1 %341, label %342, label %353

342:                                              ; preds = %340
  %343 = load float, ptr %320, align 8, !tbaa !327
  %344 = fcmp olt float %330, %343
  br i1 %344, label %345, label %353

345:                                              ; preds = %336, %329, %342
  %346 = fadd float %330, 5.000000e-01
  store float %346, ptr %15, align 4, !tbaa !310
  %347 = fpext float %346 to double
  %348 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %347)
  %349 = fadd double %268, %348
  %350 = fptosi double %349 to i32
  %351 = load float, ptr %15, align 4, !tbaa !310
  %352 = fcmp olt float %351, %192
  br i1 %352, label %329, label %353, !llvm.loop !347

353:                                              ; preds = %342, %340, %345, %318
  %354 = phi i32 [ %322, %318 ], [ %331, %342 ], [ %331, %340 ], [ %350, %345 ]
  %355 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23
  %356 = load float, ptr %15, align 4, !tbaa !310
  %357 = fcmp ogt float %356, %319
  br i1 %357, label %358, label %395

358:                                              ; preds = %353
  %359 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  %360 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  br label %361

361:                                              ; preds = %358, %387
  %362 = phi float [ %356, %358 ], [ %393, %387 ]
  %363 = phi i32 [ %354, %358 ], [ %392, %387 ]
  %364 = load ptr, ptr %7, align 16, !tbaa !287
  %365 = getelementptr inbounds %struct.x264_frame, ptr %364, i64 0, i32 59
  %366 = load ptr, ptr %365, align 16, !tbaa !339
  %367 = load float, ptr %366, align 4, !tbaa !86
  %368 = fcmp ogt float %362, %367
  br i1 %368, label %372, label %369

369:                                              ; preds = %361
  %370 = load i32, ptr %355, align 8, !tbaa !146
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %395, label %372

372:                                              ; preds = %369, %361
  %373 = sitofp i32 %363 to double
  %374 = load double, ptr %221, align 8, !tbaa !294
  %375 = fmul double %374, 8.000000e-01
  %376 = fcmp ule double %375, %373
  %377 = fcmp ugt float %362, %163
  %378 = select i1 %376, i1 true, i1 %377
  br i1 %378, label %379, label %387

379:                                              ; preds = %372
  %380 = load double, ptr %219, align 8, !tbaa !291
  %381 = load double, ptr %359, align 8, !tbaa !145
  %382 = fsub double %380, %381
  %383 = load double, ptr %360, align 8, !tbaa !143
  %384 = fadd double %382, %383
  %385 = fmul double %384, 1.100000e+00
  %386 = fcmp ogt double %385, %373
  br i1 %386, label %387, label %395

387:                                              ; preds = %372, %379
  %388 = fadd float %362, -5.000000e-01
  store float %388, ptr %15, align 4, !tbaa !310
  %389 = fpext float %388 to double
  %390 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %389)
  %391 = fadd double %268, %390
  %392 = fptosi double %391 to i32
  %393 = load float, ptr %15, align 4, !tbaa !310
  %394 = fcmp ogt float %393, %319
  br i1 %394, label %361, label %395, !llvm.loop !348

395:                                              ; preds = %379, %387, %369, %353
  %396 = phi i32 [ %354, %353 ], [ %363, %379 ], [ %392, %387 ], [ %363, %369 ]
  %397 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 56
  %398 = load float, ptr %15, align 4, !tbaa !310
  %399 = fcmp olt float %398, %189
  br i1 %399, label %400, label %426

400:                                              ; preds = %395
  %401 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  %402 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 59
  br label %403

403:                                              ; preds = %400, %418
  %404 = phi float [ %398, %400 ], [ %424, %418 ]
  %405 = phi i32 [ %396, %400 ], [ %423, %418 ]
  %406 = load double, ptr %219, align 8, !tbaa !291
  %407 = sitofp i32 %405 to double
  %408 = fsub double %406, %407
  %409 = load double, ptr %401, align 8, !tbaa !143
  %410 = load double, ptr %402, align 8, !tbaa !344
  %411 = fmul double %409, %410
  %412 = fcmp olt double %408, %411
  br i1 %412, label %418, label %413

413:                                              ; preds = %403
  %414 = load double, ptr %397, align 8, !tbaa !303
  %415 = fsub double %414, %407
  %416 = fmul double %410, %414
  %417 = fcmp olt double %415, %416
  br i1 %417, label %418, label %426

418:                                              ; preds = %403, %413
  %419 = fadd float %404, 5.000000e-01
  store float %419, ptr %15, align 4, !tbaa !310
  %420 = fpext float %419 to double
  %421 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %420)
  %422 = fadd double %268, %421
  %423 = fptosi double %422 to i32
  %424 = load float, ptr %15, align 4, !tbaa !310
  %425 = fcmp olt float %424, %189
  br i1 %425, label %403, label %426, !llvm.loop !349

426:                                              ; preds = %413, %418, %395
  %427 = phi float [ %398, %395 ], [ %404, %413 ], [ %424, %418 ]
  %428 = fpext float %427 to double
  %429 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %428)
  %430 = fptrunc double %429 to float
  %431 = load ptr, ptr %3, align 16, !tbaa !95
  %432 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %431, i64 0, i32 55
  store float %430, ptr %432, align 4, !tbaa !295
  br label %433

433:                                              ; preds = %426, %300, %153, %2, %34
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc double @predict_row_size_sum(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !345
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %9 = load ptr, ptr %8, align 16, !tbaa !287
  %10 = getelementptr inbounds %struct.x264_frame, ptr %9, i64 0, i32 58
  %11 = load ptr, ptr %10, align 8, !tbaa !288
  %12 = sext i32 %5 to i64
  %13 = add i32 %1, 1
  br label %29

14:                                               ; preds = %29, %3
  %15 = phi double [ 0.000000e+00, %3 ], [ %35, %29 ]
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %17 = add nsw i32 %1, 1
  %18 = load i32, ptr %16, align 8, !tbaa !341
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %22 = fadd double %2, -1.200000e+01
  %23 = fdiv double %22, 6.000000e+00
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %28 = sext i32 %17 to i64
  br label %41

29:                                               ; preds = %7, %29
  %30 = phi i64 [ %12, %7 ], [ %36, %29 ]
  %31 = phi double [ 0.000000e+00, %7 ], [ %35, %29 ]
  %32 = getelementptr inbounds i32, ptr %11, i64 %30
  %33 = load i32, ptr %32, align 4, !tbaa !92
  %34 = sitofp i32 %33 to double
  %35 = fadd double %31, %34
  %36 = add nsw i64 %30, 1
  %37 = trunc i64 %36 to i32
  %38 = icmp eq i32 %13, %37
  br i1 %38, label %14, label %29, !llvm.loop !346

39:                                               ; preds = %140, %14
  %40 = phi double [ %15, %14 ], [ %142, %140 ]
  ret double %40

41:                                               ; preds = %20, %140
  %42 = phi i64 [ %28, %20 ], [ %143, %140 ]
  %43 = phi double [ %15, %20 ], [ %142, %140 ]
  %44 = load ptr, ptr %21, align 16, !tbaa !95
  %45 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %44, i64 0, i32 60
  %46 = load ptr, ptr %45, align 8, !tbaa !289
  %47 = tail call double @exp2(double %23) #17
  %48 = fmul double %47, 8.500000e-01
  %49 = load ptr, ptr %24, align 16, !tbaa !287
  %50 = getelementptr inbounds %struct.x264_frame, ptr %49, i64 0, i32 57
  %51 = load ptr, ptr %50, align 16, !tbaa !340
  %52 = getelementptr inbounds i32, ptr %51, i64 %42
  %53 = load i32, ptr %52, align 4, !tbaa !92
  %54 = sitofp i32 %53 to double
  %55 = load double, ptr %46, align 8, !tbaa !205
  %56 = getelementptr inbounds %struct.predictor_t, ptr %46, i64 0, i32 3
  %57 = load double, ptr %56, align 8, !tbaa !208
  %58 = tail call double @llvm.fmuladd.f64(double %55, double %54, double %57)
  %59 = getelementptr inbounds %struct.predictor_t, ptr %46, i64 0, i32 1
  %60 = load double, ptr %59, align 8, !tbaa !206
  %61 = fmul double %48, %60
  %62 = fdiv double %58, %61
  %63 = load i32, ptr %25, align 16, !tbaa !284
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %114, label %65

65:                                               ; preds = %41
  %66 = load ptr, ptr %26, align 16, !tbaa !94
  %67 = getelementptr inbounds %struct.x264_frame, ptr %66, i64 0, i32 59
  %68 = load ptr, ptr %67, align 16, !tbaa !339
  %69 = getelementptr inbounds float, ptr %68, i64 %42
  %70 = load float, ptr %69, align 4, !tbaa !86
  %71 = fpext float %70 to double
  %72 = fcmp ugt double %71, %2
  br i1 %72, label %120, label %73

73:                                               ; preds = %65
  %74 = icmp eq i32 %63, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %73
  %76 = load ptr, ptr %27, align 16, !tbaa !94
  %77 = getelementptr inbounds %struct.x264_frame, ptr %76, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !322
  %79 = getelementptr inbounds %struct.x264_frame, ptr %49, i64 0, i32 1
  %80 = load i32, ptr %79, align 4, !tbaa !322
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %114

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.x264_frame, ptr %76, i64 0, i32 57
  %84 = load ptr, ptr %83, align 16, !tbaa !340
  %85 = getelementptr inbounds i32, ptr %84, i64 %42
  %86 = load i32, ptr %85, align 4, !tbaa !92
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = sub nsw i32 %86, %53
  %90 = tail call i32 @llvm.abs.i32(i32 %89, i1 true)
  %91 = sdiv i32 %53, 2
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct.x264_frame, ptr %76, i64 0, i32 58
  %95 = load ptr, ptr %94, align 8, !tbaa !288
  %96 = getelementptr inbounds i32, ptr %95, i64 %42
  %97 = load i32, ptr %96, align 4, !tbaa !92
  %98 = mul nsw i32 %97, %53
  %99 = sdiv i32 %98, %86
  %100 = sitofp i32 %99 to double
  %101 = getelementptr inbounds %struct.x264_frame, ptr %76, i64 0, i32 59
  %102 = load ptr, ptr %101, align 16, !tbaa !339
  %103 = getelementptr inbounds float, ptr %102, i64 %42
  %104 = load float, ptr %103, align 4, !tbaa !86
  %105 = fpext float %104 to double
  %106 = fadd double %105, -1.200000e+01
  %107 = fdiv double %106, 6.000000e+00
  %108 = tail call double @exp2(double %107) #17
  %109 = fmul double %108, 8.500000e-01
  %110 = fmul double %109, %100
  %111 = tail call double @exp2(double %23) #17
  %112 = fmul double %111, 8.500000e-01
  %113 = fdiv double %110, %112
  br label %114

114:                                              ; preds = %41, %93, %88, %82, %75, %73
  %115 = phi double [ %113, %93 ], [ 0.000000e+00, %88 ], [ 0.000000e+00, %82 ], [ 0.000000e+00, %75 ], [ 0.000000e+00, %73 ], [ 0.000000e+00, %41 ]
  %116 = fcmp oeq double %115, 0.000000e+00
  %117 = select i1 %116, double %62, double %115
  %118 = fadd double %62, %117
  %119 = fmul double %118, 5.000000e-01
  br label %140

120:                                              ; preds = %65
  %121 = load ptr, ptr %45, align 8, !tbaa !289
  %122 = getelementptr inbounds [2 x %struct.predictor_t], ptr %121, i64 1
  %123 = tail call double @exp2(double %23) #17
  %124 = fmul double %123, 8.500000e-01
  %125 = load ptr, ptr %24, align 16, !tbaa !287
  %126 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 56
  %127 = load ptr, ptr %126, align 16, !tbaa !94
  %128 = getelementptr inbounds i32, ptr %127, i64 %42
  %129 = load i32, ptr %128, align 4, !tbaa !92
  %130 = sitofp i32 %129 to double
  %131 = load double, ptr %122, align 8, !tbaa !205
  %132 = getelementptr inbounds [2 x %struct.predictor_t], ptr %121, i64 1, i64 0, i32 3
  %133 = load double, ptr %132, align 8, !tbaa !208
  %134 = tail call double @llvm.fmuladd.f64(double %131, double %130, double %133)
  %135 = getelementptr inbounds [2 x %struct.predictor_t], ptr %121, i64 1, i64 0, i32 1
  %136 = load double, ptr %135, align 8, !tbaa !206
  %137 = fmul double %124, %136
  %138 = fdiv double %134, %137
  %139 = fadd double %62, %138
  br label %140

140:                                              ; preds = %114, %120
  %141 = phi double [ %119, %114 ], [ %139, %120 ]
  %142 = fadd double %43, %141
  %143 = add nsw i64 %42, 1
  %144 = load i32, ptr %16, align 8, !tbaa !341
  %145 = sext i32 %144 to i64
  %146 = icmp slt i64 %143, %145
  br i1 %146, label %41, label %39, !llvm.loop !350
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_ratecontrol_qp(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !95
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !310
  %6 = fpext float %5 to double
  %7 = fadd double %6, 5.000000e-01
  %8 = fptosi double %7 to i32
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !203
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !204
  %13 = icmp sgt i32 %10, %8
  %14 = tail call i32 @llvm.smin.i32(i32 %8, i32 %12)
  %15 = select i1 %13, i32 %10, i32 %14
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_ratecontrol_mb_qp(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !95
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !310
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !76
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %11 = load ptr, ptr %10, align 16, !tbaa !287
  %12 = getelementptr inbounds %struct.x264_frame, ptr %11, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !306
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !109
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !351
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 61
  %21 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 60
  %22 = select i1 %14, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = getelementptr inbounds float, ptr %23, i64 %19
  %25 = load float, ptr %24, align 4, !tbaa !86
  %26 = fadd float %5, %25
  br label %27

27:                                               ; preds = %9, %1
  %28 = phi float [ %26, %9 ], [ %5, %1 ]
  %29 = fpext float %28 to double
  %30 = fadd double %29, 5.000000e-01
  %31 = fptosi double %30 to i32
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !203
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !204
  %36 = icmp sgt i32 %33, %31
  %37 = tail call i32 @llvm.smin.i32(i32 %31, i32 %35)
  %38 = select i1 %36, i32 %33, i32 %37
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_ratecontrol_slice_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !95
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !155
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %104, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 42
  %10 = load i32, ptr %9, align 8, !tbaa !225
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %98, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !92
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 3
  %18 = load double, ptr %17, align 8, !tbaa !181
  %19 = sitofp i32 %14 to double
  %20 = fdiv double %18, %19
  %21 = fadd double %20, 1.000000e+00
  %22 = fptosi double %21 to i32
  br label %23

23:                                               ; preds = %12, %16
  %24 = phi i32 [ %22, %16 ], [ 24, %12 ]
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !172
  %26 = tail call i32 @llvm.smin.i32(i32 %24, i32 51)
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 0)
  %28 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9
  store i32 %27, ptr %28, align 4, !tbaa !92
  %29 = load i32, ptr %25, align 4, !tbaa !172
  %30 = sitofp i32 %29 to double
  %31 = fadd double %30, -1.200000e+01
  %32 = fdiv double %31, 6.000000e+00
  %33 = tail call double @exp2(double %32) #17
  %34 = fmul double %33, 8.500000e-01
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %36 = load float, ptr %35, align 8, !tbaa !169
  %37 = tail call float @llvm.fabs.f32(float %36)
  %38 = fpext float %37 to double
  %39 = fdiv double %34, %38
  %40 = fdiv double %39, 8.500000e-01
  %41 = tail call double @log2(double noundef %40) #17
  %42 = tail call double @llvm.fmuladd.f64(double %41, double 6.000000e+00, double 1.200000e+01)
  %43 = fadd double %42, 5.000000e-01
  %44 = fptosi double %43 to i32
  %45 = tail call i32 @llvm.smin.i32(i32 %44, i32 51)
  %46 = tail call i32 @llvm.smax.i32(i32 %45, i32 0)
  %47 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9, i64 2
  store i32 %46, ptr %47, align 4, !tbaa !92
  %48 = load i32, ptr %25, align 4, !tbaa !172
  %49 = sitofp i32 %48 to double
  %50 = fadd double %49, -1.200000e+01
  %51 = fdiv double %50, 6.000000e+00
  %52 = tail call double @exp2(double %51) #17
  %53 = fmul double %52, 8.500000e-01
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %55 = load float, ptr %54, align 4, !tbaa !159
  %56 = tail call float @llvm.fabs.f32(float %55)
  %57 = fpext float %56 to double
  %58 = fmul double %53, %57
  %59 = fdiv double %58, 8.500000e-01
  %60 = tail call double @log2(double noundef %59) #17
  %61 = tail call double @llvm.fmuladd.f64(double %60, double 6.000000e+00, double 1.200000e+01)
  %62 = fadd double %61, 5.000000e-01
  %63 = fptosi double %62 to i32
  %64 = tail call i32 @llvm.smin.i32(i32 %63, i32 51)
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0)
  %66 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9, i64 1
  store i32 %65, ptr %66, align 4, !tbaa !92
  %67 = load i32, ptr %9, align 8, !tbaa !225
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.63, i32 noundef %67) #17
  %68 = load i32, ptr %25, align 4, !tbaa !172
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %68) #17
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  %70 = load i32, ptr %69, align 8, !tbaa !222
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.65) #17
  br label %73

73:                                               ; preds = %72, %23
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !154
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %73
  %78 = zext nneg i32 %75 to i64
  br label %79

79:                                               ; preds = %77, %95
  %80 = phi i64 [ 0, %77 ], [ %96, %95 ]
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !94
  %83 = getelementptr inbounds %struct.x264_t, ptr %82, i64 0, i32 56
  %84 = load ptr, ptr %83, align 16, !tbaa !95
  store i32 0, ptr %84, align 8, !tbaa !156
  %85 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %84, i64 0, i32 1
  store i32 0, ptr %85, align 4, !tbaa !112
  %86 = getelementptr inbounds %struct.x264_param_t, ptr %82, i64 0, i32 42
  store i32 0, ptr %86, align 8, !tbaa !113
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %82, i64 0, i32 42, i32 20
  store i32 0, ptr %87, align 8, !tbaa !155
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %82, i64 0, i32 18
  store i32 0, ptr %88, align 8, !tbaa !222
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %82, i64 0, i32 15
  store i32 0, ptr %89, align 4, !tbaa !352
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %82, i64 0, i32 42, i32 16
  store i32 0, ptr %90, align 8, !tbaa !115
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %82, i64 0, i32 17
  %92 = load i32, ptr %91, align 4, !tbaa !114
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %79
  store i32 1, ptr %91, align 4, !tbaa !114
  br label %95

95:                                               ; preds = %79, %94
  %96 = add nuw nsw i64 %80, 1
  %97 = icmp eq i64 %96, %78
  br i1 %97, label %104, label %79, !llvm.loop !353

98:                                               ; preds = %8
  %99 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 43
  %100 = load ptr, ptr %99, align 8, !tbaa !96
  %101 = sext i32 %1 to i64
  %102 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %100, i64 %101, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !236
  br label %104

104:                                              ; preds = %95, %73, %2, %98
  %105 = phi i32 [ %103, %98 ], [ 0, %2 ], [ 0, %73 ], [ 0, %95 ]
  ret i32 %105
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nounwind uwtable
define dso_local void @x264_ratecontrol_set_weights(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !95
  %5 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !96
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !217
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %6, i64 %9, i32 17
  %15 = load i16, ptr %14, align 2, !tbaa !235
  %16 = icmp sgt i16 %15, -1
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %6, i64 %9, i32 16
  %19 = load i16, ptr %18, align 2, !tbaa !71
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37
  %22 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37, i64 0, i64 0, i32 3
  store i32 %20, ptr %22, align 4, !tbaa !354
  %23 = zext nneg i16 %15 to i32
  %24 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 %23, ptr %24, align 16, !tbaa !356
  %25 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %6, i64 %9, i32 16, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !71
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37, i64 0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !357
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !358
  tail call void %30(ptr noundef %0, ptr noundef nonnull %21) #17
  br label %31

31:                                               ; preds = %13, %17, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_ratecontrol_end(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !95
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 6
  %9 = load i32, ptr %8, align 4, !tbaa !92
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 18
  %11 = load i32, ptr %10, align 4, !tbaa !92
  %12 = add nsw i32 %11, %9
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 6
  store i32 %12, ptr %13, align 8, !tbaa !359
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !92
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !92
  %18 = add nsw i32 %17, %15
  %19 = load i32, ptr %7, align 4, !tbaa !92
  %20 = add nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 4
  store i32 %20, ptr %21, align 8, !tbaa !360
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !92
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 5
  %25 = load i32, ptr %24, align 4, !tbaa !92
  %26 = add nsw i32 %25, %23
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 5
  store i32 %26, ptr %27, align 4, !tbaa !361
  br label %46

28:                                               ; preds = %46
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %31 = load i32, ptr %30, align 16, !tbaa !67
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 13
  %34 = load float, ptr %33, align 8, !tbaa !308
  %35 = fdiv float %34, %32
  store float %35, ptr %33, align 8, !tbaa !308
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %37 = load ptr, ptr %36, align 16, !tbaa !287
  %38 = getelementptr inbounds %struct.x264_frame, ptr %37, i64 0, i32 20
  store float %35, ptr %38, align 8, !tbaa !312
  %39 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 14
  %40 = load float, ptr %39, align 4, !tbaa !307
  %41 = fdiv float %40, %32
  store float %41, ptr %39, align 4, !tbaa !307
  %42 = getelementptr inbounds %struct.x264_frame, ptr %37, i64 0, i32 21
  store float %41, ptr %42, align 4, !tbaa !311
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %44 = load i32, ptr %43, align 8, !tbaa !270
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %243, label %54

46:                                               ; preds = %3, %46
  %47 = phi i64 [ 7, %3 ], [ %52, %46 ]
  %48 = phi i32 [ %26, %3 ], [ %51, %46 ]
  %49 = getelementptr inbounds i32, ptr %7, i64 %47
  %50 = load i32, ptr %49, align 4, !tbaa !92
  %51 = add nsw i32 %48, %50
  store i32 %51, ptr %27, align 4, !tbaa !361
  %52 = add nuw nsw i64 %47, 1
  %53 = icmp eq i64 %52, 17
  br i1 %53, label %28, label %46, !llvm.loop !362

54:                                               ; preds = %28
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %56 = load i32, ptr %55, align 16, !tbaa !284
  switch i32 %56, label %63 [
    i32 2, label %57
    i32 0, label %70
  ]

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %59 = load ptr, ptr %58, align 8, !tbaa !109
  %60 = load i32, ptr %59, align 16, !tbaa !323
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 73, i32 105
  br label %70

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %65 = load ptr, ptr %64, align 8, !tbaa !109
  %66 = getelementptr inbounds %struct.x264_frame, ptr %65, i64 0, i32 14
  %67 = load i32, ptr %66, align 8, !tbaa !306
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, i32 98, i32 66
  br label %70

70:                                               ; preds = %54, %63, %57
  %71 = phi i32 [ %62, %57 ], [ %69, %63 ], [ 80, %54 ]
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 12
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 12, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !92
  %75 = load i32, ptr %72, align 8, !tbaa !92
  %76 = sub nsw i32 %74, %75
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %79 = load i32, ptr %78, align 4, !tbaa !92
  %80 = load i32, ptr %77, align 8, !tbaa !92
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  %82 = load i32, ptr %81, align 4, !tbaa !221
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %70
  %85 = icmp sgt i32 %76, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %84
  %87 = icmp slt i32 %76, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %86
  %89 = icmp sgt i32 %79, %80
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp eq i32 %79, %80
  %92 = select i1 %91, i32 45, i32 116
  br label %93

93:                                               ; preds = %70, %84, %90, %88, %86
  %94 = phi i32 [ 115, %84 ], [ 116, %86 ], [ %92, %90 ], [ 115, %88 ], [ 45, %70 ]
  %95 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 36
  %96 = load ptr, ptr %95, align 8, !tbaa !273
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %98 = load ptr, ptr %97, align 8, !tbaa !109
  %99 = getelementptr inbounds %struct.x264_frame, ptr %98, i64 0, i32 10
  %100 = load i32, ptr %99, align 8, !tbaa !98
  %101 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %102 = load i32, ptr %101, align 4, !tbaa !280
  %103 = getelementptr inbounds %struct.x264_frame, ptr %98, i64 0, i32 5
  %104 = load i32, ptr %103, align 16, !tbaa !363
  %105 = getelementptr inbounds %struct.x264_frame, ptr %98, i64 0, i32 6
  %106 = load i32, ptr %105, align 4, !tbaa !290
  %107 = fpext float %35 to double
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !364
  %110 = load i32, ptr %29, align 8, !tbaa !365
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 2
  %112 = load i32, ptr %111, align 8, !tbaa !366
  %113 = load i32, ptr %27, align 4, !tbaa !361
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %96, ptr noundef nonnull @.str.66, i32 noundef %100, i32 noundef %102, i32 noundef %71, i32 noundef %104, i32 noundef %106, double noundef %107, i32 noundef %109, i32 noundef %110, i32 noundef %112, i32 noundef %20, i32 noundef %113, i32 noundef %12, i32 noundef %94)
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %241, label %116

116:                                              ; preds = %93
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %118 = load i32, ptr %117, align 8, !tbaa !155
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %122 = load ptr, ptr %121, align 8, !tbaa !106
  %123 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %122, i64 0, i32 19
  %124 = load i32, ptr %123, align 4, !tbaa !107
  %125 = icmp sgt i32 %124, 1
  br label %126

126:                                              ; preds = %120, %116
  %127 = phi i1 [ false, %116 ], [ %125, %120 ]
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %129 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %130 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 8
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 8
  %133 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  br label %134

134:                                              ; preds = %163, %126
  %135 = phi i64 [ %168, %163 ], [ 0, %126 ]
  br i1 %127, label %136, label %139

136:                                              ; preds = %134
  %137 = load ptr, ptr %129, align 8, !tbaa !106
  %138 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %137, i64 0, i32 19
  br label %139

139:                                              ; preds = %134, %136
  %140 = phi ptr [ %138, %136 ], [ %128, %134 ]
  %141 = load i32, ptr %140, align 4, !tbaa !92
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %135, %142
  br i1 %143, label %144, label %169

144:                                              ; preds = %139
  br i1 %127, label %145, label %149

145:                                              ; preds = %144
  %146 = load ptr, ptr %133, align 8, !tbaa !106
  %147 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %146, i64 0, i32 18, i64 %135
  %148 = load i32, ptr %147, align 4, !tbaa !92
  br label %163

149:                                              ; preds = %144
  %150 = load i32, ptr %130, align 8, !tbaa !367
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %149
  %153 = shl nuw nsw i64 %135, 1
  %154 = getelementptr inbounds [32 x i32], ptr %131, i64 0, i64 %153
  %155 = load i32, ptr %154, align 4, !tbaa !92
  %156 = or disjoint i64 %153, 1
  %157 = getelementptr inbounds [32 x i32], ptr %131, i64 0, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !92
  %159 = add nsw i32 %158, %155
  br label %163

160:                                              ; preds = %149
  %161 = getelementptr inbounds [32 x i32], ptr %132, i64 0, i64 %135
  %162 = load i32, ptr %161, align 4, !tbaa !92
  br label %163

163:                                              ; preds = %152, %160, %145
  %164 = phi i32 [ %148, %145 ], [ %159, %152 ], [ %162, %160 ]
  %165 = load ptr, ptr %95, align 8, !tbaa !273
  %166 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %165, ptr noundef nonnull @.str.67, i32 noundef %164)
  %167 = icmp sgt i32 %166, -1
  %168 = add nuw nsw i64 %135, 1
  br i1 %167, label %134, label %169, !llvm.loop !368

169:                                              ; preds = %139, %163
  %170 = phi i32 [ 5, %163 ], [ 6, %139 ]
  br i1 %143, label %241, label %171

171:                                              ; preds = %169
  %172 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 5
  %173 = load ptr, ptr %172, align 16, !tbaa !369
  %174 = icmp eq ptr %173, null
  br i1 %174, label %185, label %175

175:                                              ; preds = %171
  %176 = load ptr, ptr %95, align 8, !tbaa !273
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  %178 = load i32, ptr %177, align 16, !tbaa !356
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 3
  %180 = load i32, ptr %179, align 4, !tbaa !354
  %181 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 4
  %182 = load i32, ptr %181, align 8, !tbaa !357
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %176, ptr noundef nonnull @.str.68, i32 noundef %178, i32 noundef %180, i32 noundef %182)
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %241, label %185

185:                                              ; preds = %175, %171
  %186 = load ptr, ptr %95, align 8, !tbaa !273
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %186, ptr noundef nonnull @.str.69)
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %241, label %189

189:                                              ; preds = %185
  %190 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %191 = load i32, ptr %190, align 8, !tbaa !115
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %240, label %193

193:                                              ; preds = %189
  %194 = load ptr, ptr %97, align 8, !tbaa !109
  %195 = getelementptr inbounds %struct.x264_frame, ptr %194, i64 0, i32 14
  %196 = load i32, ptr %195, align 8, !tbaa !306
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %240, label %198

198:                                              ; preds = %193
  %199 = load i32, ptr %117, align 8, !tbaa !155
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %240

201:                                              ; preds = %198
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #17
  %202 = load i32, ptr %55, align 16, !tbaa !284
  %203 = trunc i32 %202 to i8
  store i8 %203, ptr %4, align 1, !tbaa !90
  %204 = load i32, ptr %30, align 16, !tbaa !67
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.x264_frame, ptr %194, i64 0, i32 60
  %208 = load ptr, ptr %207, align 8, !tbaa !64
  %209 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 53
  %210 = load ptr, ptr %209, align 8, !tbaa !94
  %211 = zext nneg i32 %204 to i64
  br label %217

212:                                              ; preds = %217, %201
  %213 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 38
  %214 = load ptr, ptr %213, align 8, !tbaa !276
  %215 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef %214)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %237, label %226

217:                                              ; preds = %206, %217
  %218 = phi i64 [ 0, %206 ], [ %224, %217 ]
  %219 = getelementptr inbounds float, ptr %208, i64 %218
  %220 = load float, ptr %219, align 4, !tbaa !86
  %221 = fptosi float %220 to i16
  %222 = and i16 %221, 255
  %223 = getelementptr inbounds i16, ptr %210, i64 %218
  store i16 %222, ptr %223, align 2, !tbaa !71
  %224 = add nuw nsw i64 %218, 1
  %225 = icmp eq i64 %224, %211
  br i1 %225, label %212, label %217, !llvm.loop !370

226:                                              ; preds = %212
  %227 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 53
  %228 = load ptr, ptr %227, align 8, !tbaa !94
  %229 = load i32, ptr %30, align 16, !tbaa !67
  %230 = sext i32 %229 to i64
  %231 = load ptr, ptr %213, align 8, !tbaa !276
  %232 = tail call i64 @fwrite(ptr noundef %228, i64 noundef 2, i64 noundef %230, ptr noundef %231)
  %233 = trunc i64 %232 to i32
  %234 = load i32, ptr %30, align 16, !tbaa !67
  %235 = icmp sle i32 %234, %233
  %236 = select i1 %235, i32 0, i32 5
  br label %237

237:                                              ; preds = %226, %212
  %238 = phi i1 [ false, %212 ], [ %235, %226 ]
  %239 = phi i32 [ 5, %212 ], [ %236, %226 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #17
  br i1 %238, label %240, label %241

240:                                              ; preds = %237, %198, %193, %189
  br label %241

241:                                              ; preds = %240, %169, %237, %175, %185, %93
  %242 = phi i32 [ 5, %93 ], [ 0, %240 ], [ %239, %237 ], [ %170, %169 ], [ 5, %175 ], [ 5, %185 ]
  switch i32 %242, label %628 [
    i32 0, label %243
    i32 5, label %627
  ]

243:                                              ; preds = %241, %28
  %244 = load i32, ptr %6, align 8, !tbaa !156
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %297, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %248 = load i32, ptr %247, align 16, !tbaa !284
  %249 = icmp eq i32 %248, 1
  %250 = sitofp i32 %1 to double
  %251 = load float, ptr %33, align 8, !tbaa !308
  %252 = fpext float %251 to double
  %253 = fadd double %252, -1.200000e+01
  %254 = fdiv double %253, 6.000000e+00
  %255 = tail call double @exp2(double %254) #17
  %256 = fmul double %255, 8.500000e-01
  %257 = fmul double %256, %250
  %258 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 26
  %259 = load double, ptr %258, align 8, !tbaa !250
  br i1 %249, label %260, label %266

260:                                              ; preds = %246
  %261 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %262 = load float, ptr %261, align 4, !tbaa !159
  %263 = tail call float @llvm.fabs.f32(float %262)
  %264 = fpext float %263 to double
  %265 = fmul double %259, %264
  br label %266

266:                                              ; preds = %246, %260
  %267 = phi double [ %265, %260 ], [ %259, %246 ]
  %268 = fdiv double %257, %267
  %269 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 27
  %270 = load double, ptr %269, align 8, !tbaa !167
  %271 = fadd double %270, %268
  store double %271, ptr %269, align 8, !tbaa !167
  %272 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 30
  %273 = load double, ptr %272, align 8, !tbaa !148
  %274 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 27
  %275 = fmul double %273, %271
  store double %275, ptr %274, align 8, !tbaa !167
  %276 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %277 = load ptr, ptr %276, align 8, !tbaa !109
  %278 = getelementptr inbounds %struct.x264_frame, ptr %277, i64 0, i32 5
  %279 = load i32, ptr %278, align 16, !tbaa !363
  %280 = sitofp i32 %279 to double
  %281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %282 = load ptr, ptr %281, align 16, !tbaa !77
  %283 = getelementptr inbounds %struct.x264_sps_t, ptr %282, i64 0, i32 24, i32 16
  %284 = load i32, ptr %283, align 4, !tbaa !138
  %285 = uitofp i32 %284 to double
  %286 = fmul double %280, %285
  %287 = getelementptr inbounds %struct.x264_sps_t, ptr %282, i64 0, i32 24, i32 17
  %288 = load i32, ptr %287, align 4, !tbaa !137
  %289 = uitofp i32 %288 to double
  %290 = fdiv double %286, %289
  %291 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 5
  %292 = load double, ptr %291, align 8, !tbaa !147
  %293 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 29
  %294 = load double, ptr %293, align 8, !tbaa !168
  %295 = tail call double @llvm.fmuladd.f64(double %290, double %292, double %294)
  %296 = fmul double %273, %295
  store double %296, ptr %293, align 8, !tbaa !168
  br label %297

297:                                              ; preds = %266, %243
  %298 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 1
  %299 = load i32, ptr %298, align 4, !tbaa !112
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %340, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %303 = load ptr, ptr %302, align 8, !tbaa !106
  %304 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %303, i64 0, i32 10
  %305 = load i32, ptr %304, align 8, !tbaa !230
  %306 = sitofp i32 %305 to double
  %307 = fadd double %306, -1.200000e+01
  %308 = fdiv double %307, 6.000000e+00
  %309 = tail call double @exp2(double %308) #17
  %310 = fmul double %309, 8.500000e-01
  %311 = fcmp olt double %310, 1.000000e-01
  %312 = select i1 %311, double 1.000000e-01, double %310
  %313 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %303, i64 0, i32 5
  %314 = load i32, ptr %313, align 4, !tbaa !243
  %315 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %303, i64 0, i32 3
  %316 = load double, ptr %315, align 8, !tbaa !228
  %317 = fdiv double %316, %312
  %318 = tail call double @pow(double noundef %317, double noundef 1.100000e+00) #17
  %319 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %303, i64 0, i32 4
  %320 = load i32, ptr %319, align 8, !tbaa !244
  %321 = load double, ptr %315, align 8, !tbaa !228
  %322 = fcmp ogt double %321, 1.000000e+00
  %323 = select i1 %322, double %321, double 1.000000e+00
  %324 = sitofp i32 %320 to double
  %325 = sitofp i32 %314 to double
  %326 = fadd double %325, 1.000000e-01
  %327 = fcmp ogt double %312, 1.000000e+00
  %328 = select i1 %327, double %312, double 1.000000e+00
  %329 = fdiv double %323, %328
  %330 = tail call double @pow(double noundef %329, double noundef 5.000000e-01) #17
  %331 = fmul double %330, %324
  %332 = tail call double @llvm.fmuladd.f64(double %326, double %318, double %331)
  %333 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %303, i64 0, i32 6
  %334 = load i32, ptr %333, align 8, !tbaa !229
  %335 = sitofp i32 %334 to double
  %336 = fadd double %332, %335
  %337 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 28
  %338 = load double, ptr %337, align 8, !tbaa !329
  %339 = fadd double %338, %336
  store double %339, ptr %337, align 8, !tbaa !329
  br label %340

340:                                              ; preds = %301, %297
  %341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 72
  %342 = load i32, ptr %341, align 16, !tbaa !164
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %411, label %344

344:                                              ; preds = %340
  %345 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %346 = load i32, ptr %345, align 16, !tbaa !284
  %347 = icmp eq i32 %346, 1
  br i1 %347, label %348, label %411

348:                                              ; preds = %344
  %349 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 64
  %350 = load i32, ptr %349, align 4, !tbaa !371
  %351 = add nsw i32 %350, %1
  store i32 %351, ptr %349, align 4, !tbaa !371
  %352 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %353 = load ptr, ptr %352, align 8, !tbaa !109
  %354 = getelementptr inbounds %struct.x264_frame, ptr %353, i64 0, i32 18
  %355 = load i8, ptr %354, align 1, !tbaa !372
  %356 = icmp eq i8 %355, 0
  br i1 %356, label %411, label %357

357:                                              ; preds = %348
  %358 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 62
  %359 = load ptr, ptr %358, align 8, !tbaa !179
  %360 = load float, ptr %33, align 8, !tbaa !308
  %361 = fpext float %360 to double
  %362 = fadd double %361, -1.200000e+01
  %363 = fdiv double %362, 6.000000e+00
  %364 = tail call double @exp2(double %363) #17
  %365 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %366 = load i32, ptr %365, align 8, !tbaa !324
  %367 = add nsw i32 %366, -1
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !94
  %371 = getelementptr inbounds %struct.x264_frame, ptr %370, i64 0, i32 54
  %372 = load i32, ptr %371, align 4, !tbaa !325
  %373 = icmp slt i32 %372, 10
  br i1 %373, label %410, label %374

374:                                              ; preds = %357
  %375 = sitofp i32 %372 to double
  %376 = load i32, ptr %349, align 4, !tbaa !371
  %377 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 63
  %378 = load i32, ptr %377, align 8, !tbaa !305
  %379 = sdiv i32 %376, %378
  %380 = sitofp i32 %379 to double
  %381 = fmul double %364, 8.500000e-01
  %382 = load double, ptr %359, align 8, !tbaa !205
  %383 = getelementptr inbounds %struct.predictor_t, ptr %359, i64 0, i32 1
  %384 = load double, ptr %383, align 8, !tbaa !206
  %385 = fdiv double %382, %384
  %386 = fmul double %381, %380
  %387 = fdiv double %386, %375
  %388 = fdiv double %385, 1.500000e+00
  %389 = fmul double %385, 1.500000e+00
  %390 = fcmp olt double %387, %388
  %391 = fcmp ogt double %387, %389
  %392 = select i1 %391, double %389, double %387
  %393 = select i1 %390, double %388, double %392
  %394 = fneg double %393
  %395 = fmul double %375, %394
  %396 = tail call double @llvm.fmuladd.f64(double %380, double %381, double %395)
  %397 = fcmp ult double %396, 0.000000e+00
  %398 = select i1 %397, double %387, double %393
  %399 = select i1 %397, double 0.000000e+00, double %396
  %400 = getelementptr inbounds %struct.predictor_t, ptr %359, i64 0, i32 2
  %401 = load double, ptr %400, align 8, !tbaa !207
  %402 = fmul double %384, %401
  store double %402, ptr %383, align 8, !tbaa !206
  %403 = fmul double %382, %401
  store double %403, ptr %359, align 8, !tbaa !205
  %404 = getelementptr inbounds %struct.predictor_t, ptr %359, i64 0, i32 3
  %405 = load double, ptr %404, align 8, !tbaa !208
  %406 = fmul double %401, %405
  store double %406, ptr %404, align 8, !tbaa !208
  %407 = fadd double %402, 1.000000e+00
  store double %407, ptr %383, align 8, !tbaa !206
  %408 = fadd double %403, %398
  store double %408, ptr %359, align 8, !tbaa !205
  %409 = fadd double %406, %399
  store double %409, ptr %404, align 8, !tbaa !208
  br label %410

410:                                              ; preds = %357, %374
  store i32 0, ptr %349, align 4, !tbaa !371
  br label %411

411:                                              ; preds = %344, %410, %348, %340
  %412 = load ptr, ptr %5, align 16, !tbaa !95
  %413 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %414 = load ptr, ptr %413, align 16, !tbaa !94
  %415 = getelementptr inbounds %struct.x264_t, ptr %414, i64 0, i32 56
  %416 = load ptr, ptr %415, align 16, !tbaa !95
  %417 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %412, i64 0, i32 25
  %418 = load i32, ptr %417, align 8, !tbaa !326
  %419 = load i32, ptr %30, align 16, !tbaa !67
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %468, label %421

421:                                              ; preds = %411
  %422 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %416, i64 0, i32 22
  %423 = load ptr, ptr %422, align 8, !tbaa !178
  %424 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %425 = load i32, ptr %424, align 16, !tbaa !284
  %426 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %412, i64 0, i32 13
  %427 = load float, ptr %426, align 8, !tbaa !308
  %428 = fpext float %427 to double
  %429 = fadd double %428, -1.200000e+01
  %430 = fdiv double %429, 6.000000e+00
  %431 = tail call double @exp2(double %430) #17
  %432 = load i32, ptr %417, align 8, !tbaa !326
  %433 = icmp slt i32 %432, 10
  br i1 %433, label %468, label %434

434:                                              ; preds = %421
  %435 = sitofp i32 %432 to double
  %436 = sitofp i32 %1 to double
  %437 = fmul double %431, 8.500000e-01
  %438 = sext i32 %425 to i64
  %439 = getelementptr inbounds %struct.predictor_t, ptr %423, i64 %438
  %440 = load double, ptr %439, align 8, !tbaa !205
  %441 = getelementptr inbounds %struct.predictor_t, ptr %423, i64 %438, i32 1
  %442 = load double, ptr %441, align 8, !tbaa !206
  %443 = fdiv double %440, %442
  %444 = fmul double %437, %436
  %445 = fdiv double %444, %435
  %446 = fdiv double %443, 1.500000e+00
  %447 = fmul double %443, 1.500000e+00
  %448 = fcmp olt double %445, %446
  %449 = fcmp ogt double %445, %447
  %450 = select i1 %449, double %447, double %445
  %451 = select i1 %448, double %446, double %450
  %452 = fneg double %451
  %453 = fmul double %435, %452
  %454 = tail call double @llvm.fmuladd.f64(double %436, double %437, double %453)
  %455 = fcmp ult double %454, 0.000000e+00
  %456 = select i1 %455, double %445, double %451
  %457 = select i1 %455, double 0.000000e+00, double %454
  %458 = getelementptr inbounds %struct.predictor_t, ptr %423, i64 %438, i32 2
  %459 = load double, ptr %458, align 8, !tbaa !207
  %460 = fmul double %442, %459
  store double %460, ptr %441, align 8, !tbaa !206
  %461 = fmul double %440, %459
  store double %461, ptr %439, align 8, !tbaa !205
  %462 = getelementptr inbounds %struct.predictor_t, ptr %423, i64 %438, i32 3
  %463 = load double, ptr %462, align 8, !tbaa !208
  %464 = fmul double %459, %463
  store double %464, ptr %462, align 8, !tbaa !208
  %465 = fadd double %460, 1.000000e+00
  store double %465, ptr %441, align 8, !tbaa !206
  %466 = fadd double %461, %456
  store double %466, ptr %439, align 8, !tbaa !205
  %467 = fadd double %464, %457
  store double %467, ptr %462, align 8, !tbaa !208
  br label %468

468:                                              ; preds = %434, %421, %411
  %469 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %412, i64 0, i32 2
  %470 = load i32, ptr %469, align 8, !tbaa !153
  %471 = icmp eq i32 %470, 0
  br i1 %471, label %517, label %472

472:                                              ; preds = %468
  %473 = sitofp i32 %1 to double
  %474 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %416, i64 0, i32 18
  %475 = load double, ptr %474, align 8, !tbaa !152
  %476 = fsub double %475, %473
  store double %476, ptr %474, align 8, !tbaa !152
  %477 = fcmp olt double %476, 0.000000e+00
  br i1 %477, label %478, label %481

478:                                              ; preds = %472
  %479 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %480 = load i32, ptr %479, align 4, !tbaa !280
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.83, i32 noundef %480, double noundef %476) #17
  br label %481

481:                                              ; preds = %478, %472
  %482 = load double, ptr %474, align 8, !tbaa !152
  %483 = fcmp ogt double %482, 0.000000e+00
  %484 = select i1 %483, double %482, double 0.000000e+00
  store double %484, ptr %474, align 8, !tbaa !152
  %485 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %412, i64 0, i32 20
  %486 = load double, ptr %485, align 8, !tbaa !143
  %487 = fadd double %484, %486
  store double %487, ptr %474, align 8, !tbaa !152
  %488 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %489 = load ptr, ptr %488, align 16, !tbaa !77
  %490 = getelementptr inbounds %struct.x264_sps_t, ptr %489, i64 0, i32 24, i32 21, i32 7
  %491 = load i32, ptr %490, align 4, !tbaa !127
  %492 = icmp eq i32 %491, 0
  br i1 %492, label %509, label %493

493:                                              ; preds = %481
  %494 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %412, i64 0, i32 17
  %495 = load double, ptr %494, align 8, !tbaa !145
  %496 = fcmp ogt double %487, %495
  br i1 %496, label %497, label %509

497:                                              ; preds = %493
  %498 = fsub double %487, %495
  %499 = fmul double %498, 1.250000e-01
  %500 = tail call double @llvm.ceil.f64(double %499)
  %501 = fptosi double %500 to i32
  %502 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %503 = load i32, ptr %502, align 16, !tbaa !373
  %504 = sub nsw i32 6, %503
  %505 = tail call i32 @llvm.smax.i32(i32 %504, i32 %501)
  %506 = shl nsw i32 %505, 3
  %507 = sitofp i32 %506 to double
  %508 = fsub double %487, %507
  br label %514

509:                                              ; preds = %493, %481
  %510 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %412, i64 0, i32 17
  %511 = load double, ptr %510, align 8, !tbaa !145
  %512 = fcmp olt double %487, %511
  %513 = select i1 %512, double %487, double %511
  br label %514

514:                                              ; preds = %509, %497
  %515 = phi double [ %513, %509 ], [ %508, %497 ]
  %516 = phi i32 [ 0, %509 ], [ %501, %497 ]
  store double %515, ptr %474, align 8, !tbaa !152
  br label %517

517:                                              ; preds = %468, %514
  %518 = phi i32 [ %516, %514 ], [ 0, %468 ]
  store i32 %518, ptr %2, align 4, !tbaa !92
  %519 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %520 = load ptr, ptr %519, align 16, !tbaa !77
  %521 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 19
  %522 = load i32, ptr %521, align 4, !tbaa !374
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %628, label %524

524:                                              ; preds = %517
  %525 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %526 = load ptr, ptr %525, align 8, !tbaa !109
  %527 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 10
  %528 = load i32, ptr %527, align 8, !tbaa !98
  %529 = icmp eq i32 %528, 0
  %530 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70, i32 2
  br i1 %529, label %531, label %542

531:                                              ; preds = %524
  %532 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70
  store double 0.000000e+00, ptr %532, align 16, !tbaa !375
  %533 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  %534 = load i32, ptr %533, align 16, !tbaa !376
  %535 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 68
  store i32 %534, ptr %535, align 8, !tbaa !377
  %536 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52
  %537 = load i32, ptr %536, align 4, !tbaa !378
  %538 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 69
  store i32 %537, ptr %538, align 4, !tbaa !379
  %539 = sitofp i32 %534 to double
  %540 = fdiv double %539, 9.000000e+04
  %541 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 70
  store double %540, ptr %541, align 8, !tbaa !380
  store double %540, ptr %530, align 16, !tbaa !381
  br label %590

542:                                              ; preds = %524
  %543 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 70
  %544 = load double, ptr %543, align 8, !tbaa !380
  %545 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 7
  %546 = load i32, ptr %545, align 8, !tbaa !382
  %547 = sitofp i32 %546 to double
  %548 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 16
  %549 = load i32, ptr %548, align 4, !tbaa !138
  %550 = uitofp i32 %549 to double
  %551 = fmul double %547, %550
  %552 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 17
  %553 = load i32, ptr %552, align 4, !tbaa !137
  %554 = uitofp i32 %553 to double
  %555 = fdiv double %551, %554
  %556 = fadd double %544, %555
  store double %556, ptr %530, align 16, !tbaa !381
  %557 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 68
  %558 = load i32, ptr %557, align 8, !tbaa !377
  %559 = sitofp i32 %558 to double
  %560 = fdiv double %559, 9.000000e+04
  %561 = fsub double %556, %560
  %562 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 16
  %563 = load i32, ptr %562, align 16, !tbaa !383
  %564 = icmp eq i32 %563, 0
  br i1 %564, label %571, label %565

565:                                              ; preds = %542
  store double %556, ptr %543, align 8, !tbaa !380
  %566 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  %567 = load i32, ptr %566, align 16, !tbaa !376
  store i32 %567, ptr %557, align 8, !tbaa !377
  %568 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52
  %569 = load i32, ptr %568, align 4, !tbaa !378
  %570 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 69
  store i32 %569, ptr %570, align 4, !tbaa !379
  br label %577

571:                                              ; preds = %542
  %572 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 69
  %573 = load i32, ptr %572, align 4, !tbaa !379
  %574 = sitofp i32 %573 to double
  %575 = fdiv double %574, 9.000000e+04
  %576 = fsub double %561, %575
  br label %577

577:                                              ; preds = %571, %565
  %578 = phi double [ %561, %565 ], [ %576, %571 ]
  %579 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 21, i32 7
  %580 = load i32, ptr %579, align 4, !tbaa !127
  %581 = icmp eq i32 %580, 0
  %582 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 71
  %583 = load double, ptr %582, align 8, !tbaa !384
  br i1 %581, label %586, label %584

584:                                              ; preds = %577
  %585 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70
  store double %583, ptr %585, align 16, !tbaa !375
  br label %590

586:                                              ; preds = %577
  %587 = fcmp ogt double %583, %578
  %588 = select i1 %587, double %583, double %578
  %589 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70
  store double %588, ptr %589, align 16, !tbaa !375
  br label %590

590:                                              ; preds = %584, %586, %531
  %591 = load i32, ptr %2, align 4, !tbaa !92
  %592 = icmp eq i32 %591, 0
  br i1 %592, label %599, label %593

593:                                              ; preds = %590
  %594 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %595 = load i32, ptr %594, align 16, !tbaa !373
  %596 = sub nsw i32 6, %595
  %597 = tail call i32 @llvm.smax.i32(i32 %596, i32 %591)
  %598 = shl nsw i32 %597, 3
  br label %599

599:                                              ; preds = %590, %593
  %600 = phi i32 [ %598, %593 ], [ 0, %590 ]
  %601 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70
  %602 = load double, ptr %601, align 16, !tbaa !375
  %603 = add nsw i32 %600, %1
  %604 = sitofp i32 %603 to double
  %605 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 21, i32 5
  %606 = load i32, ptr %605, align 4, !tbaa !132
  %607 = sitofp i32 %606 to double
  %608 = fdiv double %604, %607
  %609 = fadd double %602, %608
  %610 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 71
  store double %609, ptr %610, align 8, !tbaa !384
  %611 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70, i32 1
  store double %609, ptr %611, align 8, !tbaa !385
  %612 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 8
  %613 = load i32, ptr %612, align 4, !tbaa !386
  %614 = sitofp i32 %613 to double
  %615 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 16
  %616 = load i32, ptr %615, align 4, !tbaa !138
  %617 = uitofp i32 %616 to double
  %618 = fmul double %614, %617
  %619 = getelementptr inbounds %struct.x264_sps_t, ptr %520, i64 0, i32 24, i32 17
  %620 = load i32, ptr %619, align 4, !tbaa !137
  %621 = uitofp i32 %620 to double
  %622 = fdiv double %618, %621
  %623 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70, i32 2
  %624 = load double, ptr %623, align 16, !tbaa !381
  %625 = fadd double %624, %622
  %626 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 70, i32 3
  store double %625, ptr %626, align 8, !tbaa !387
  br label %628

627:                                              ; preds = %241
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.70) #17
  br label %628

628:                                              ; preds = %517, %599, %627, %241
  %629 = phi i32 [ undef, %241 ], [ -1, %627 ], [ 0, %599 ], [ 0, %517 ]
  ret i32 %629
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_hrd_fullness(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 16, !tbaa !94
  %4 = getelementptr inbounds %struct.x264_t, ptr %3, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !95
  %6 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 18
  %7 = load double, ptr %6, align 8, !tbaa !152
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 16, !tbaa !77
  %10 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 24, i32 21, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !132
  %12 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 24, i32 21, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !135
  %14 = sitofp i32 %13 to double
  %15 = fcmp olt double %7, 0.000000e+00
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = fcmp ogt double %7, %14
  br i1 %17, label %18, label %20

18:                                               ; preds = %16, %1
  %19 = phi ptr [ @.str.73, %16 ], [ @.str.72, %1 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull %19, double noundef %7, double noundef %14) #17
  br label %20

20:                                               ; preds = %18, %16
  %21 = fmul double %7, 9.000000e+04
  %22 = sitofp i32 %11 to double
  %23 = fdiv double %21, %22
  %24 = fsub double %14, %7
  %25 = fmul double %24, 9.000000e+04
  %26 = fdiv double %25, %22
  %27 = fptosi double %26 to i32
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52
  store i32 %27, ptr %28, align 4, !tbaa !378
  %29 = fadd double %23, 5.000000e-01
  %30 = fmul double %14, 9.000000e+04
  %31 = fdiv double %30, %22
  %32 = fcmp olt double %29, 0.000000e+00
  %33 = fcmp ogt double %29, %31
  %34 = select i1 %33, double %31, double %29
  %35 = select i1 %32, double 0.000000e+00, double %34
  %36 = fptosi double %35 to i32
  ret i32 %36
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_threads_normalize_predictors(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !154
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %17

7:                                                ; preds = %17, %1
  %8 = phi double [ 0.000000e+00, %1 ], [ %26, %17 ]
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %10 = load ptr, ptr %9, align 16, !tbaa !95
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %10, i64 0, i32 57
  %12 = load double, ptr %11, align 8, !tbaa !294
  %13 = fdiv double %12, %8
  %14 = icmp sgt i32 %3, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %7
  %16 = zext nneg i32 %3 to i64
  br label %30

17:                                               ; preds = %5, %17
  %18 = phi i64 [ 0, %5 ], [ %27, %17 ]
  %19 = phi double [ 0.000000e+00, %5 ], [ %26, %17 ]
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %18
  %21 = load ptr, ptr %20, align 8, !tbaa !94
  %22 = getelementptr inbounds %struct.x264_t, ptr %21, i64 0, i32 56
  %23 = load ptr, ptr %22, align 16, !tbaa !95
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %23, i64 0, i32 58
  %25 = load double, ptr %24, align 8, !tbaa !342
  %26 = fadd double %19, %25
  %27 = add nuw nsw i64 %18, 1
  %28 = icmp eq i64 %27, %6
  br i1 %28, label %7, label %17, !llvm.loop !388

29:                                               ; preds = %30, %7
  ret void

30:                                               ; preds = %15, %30
  %31 = phi i64 [ 0, %15 ], [ %39, %30 ]
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !94
  %34 = getelementptr inbounds %struct.x264_t, ptr %33, i64 0, i32 56
  %35 = load ptr, ptr %34, align 16, !tbaa !95
  %36 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %35, i64 0, i32 58
  %37 = load double, ptr %36, align 8, !tbaa !342
  %38 = fmul double %13, %37
  store double %38, ptr %36, align 8, !tbaa !342
  %39 = add nuw nsw i64 %31, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %29, label %30, !llvm.loop !389
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_threads_distribute_ratecontrol(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !95
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !280
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !154
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 61
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %20, %13 ]
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.x264_t, ptr %16, i64 0, i32 56
  %18 = load ptr, ptr %17, align 16, !tbaa !95
  %19 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %18, i64 0, i32 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %19, ptr noundef nonnull align 8 dereferenceable(320) %12, i64 320, i1 false)
  %20 = add nuw nsw i64 %14, 1
  %21 = load i32, ptr %8, align 4, !tbaa !154
  %22 = sext i32 %21 to i64
  %23 = icmp slt i64 %20, %22
  br i1 %23, label %13, label %24, !llvm.loop !390

24:                                               ; preds = %13, %7, %1
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !154
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %30 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %31 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %33 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 22
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12
  br label %40

35:                                               ; preds = %96, %24
  %36 = phi i32 [ %26, %24 ], [ %100, %96 ]
  %37 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !153
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %222, label %103

40:                                               ; preds = %28, %96
  %41 = phi i64 [ 0, %28 ], [ %99, %96 ]
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !94
  %44 = getelementptr inbounds %struct.x264_t, ptr %43, i64 0, i32 56
  %45 = load ptr, ptr %44, align 16, !tbaa !95
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %45, ptr noundef nonnull align 8 dereferenceable(544) %3, i64 544, i1 false)
  %46 = load ptr, ptr %44, align 16, !tbaa !95
  %47 = load i32, ptr %29, align 16, !tbaa !284
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %46, i64 0, i32 61, i64 %48
  %50 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %46, i64 0, i32 60
  store ptr %49, ptr %50, align 8, !tbaa !289
  %51 = load i32, ptr %30, align 8, !tbaa !153
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %96, label %53

53:                                               ; preds = %40
  %54 = load double, ptr %31, align 8, !tbaa !294
  %55 = fcmp une double %54, 0.000000e+00
  br i1 %55, label %56, label %96

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.x264_t, ptr %43, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !345
  %59 = getelementptr inbounds %struct.x264_t, ptr %43, i64 0, i32 6
  %60 = load i32, ptr %59, align 8, !tbaa !341
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load ptr, ptr %32, align 16, !tbaa !287
  %64 = getelementptr inbounds %struct.x264_frame, ptr %63, i64 0, i32 57
  %65 = load ptr, ptr %64, align 16, !tbaa !340
  %66 = sext i32 %58 to i64
  %67 = sext i32 %60 to i64
  br label %68

68:                                               ; preds = %62, %68
  %69 = phi i64 [ %66, %62 ], [ %74, %68 ]
  %70 = phi i32 [ 0, %62 ], [ %73, %68 ]
  %71 = getelementptr inbounds i32, ptr %65, i64 %69
  %72 = load i32, ptr %71, align 4, !tbaa !92
  %73 = add nsw i32 %72, %70
  %74 = add nsw i64 %69, 1
  %75 = icmp eq i64 %74, %67
  br i1 %75, label %76, label %68, !llvm.loop !391

76:                                               ; preds = %68, %56
  %77 = phi i32 [ 0, %56 ], [ %73, %68 ]
  %78 = load ptr, ptr %33, align 8, !tbaa !178
  %79 = trunc i64 %41 to i32
  %80 = mul i32 %79, 5
  %81 = add i32 %80, 5
  %82 = add nsw i32 %81, %47
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.predictor_t, ptr %78, i64 %83
  %85 = load float, ptr %34, align 4, !tbaa !310
  %86 = fpext float %85 to double
  %87 = sitofp i32 %77 to double
  %88 = load double, ptr %84, align 8, !tbaa !205
  %89 = getelementptr inbounds %struct.predictor_t, ptr %78, i64 %83, i32 3
  %90 = load double, ptr %89, align 8, !tbaa !208
  %91 = tail call double @llvm.fmuladd.f64(double %88, double %87, double %90)
  %92 = getelementptr inbounds %struct.predictor_t, ptr %78, i64 %83, i32 1
  %93 = load double, ptr %92, align 8, !tbaa !206
  %94 = fmul double %93, %86
  %95 = fdiv double %91, %94
  br label %96

96:                                               ; preds = %40, %53, %76
  %97 = phi double [ %95, %76 ], [ 0.000000e+00, %53 ], [ 0.000000e+00, %40 ]
  %98 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %46, i64 0, i32 58
  store double %97, ptr %98, align 8, !tbaa !342
  %99 = add nuw nsw i64 %41, 1
  %100 = load i32, ptr %25, align 4, !tbaa !154
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %40, label %35, !llvm.loop !392

103:                                              ; preds = %35
  %104 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  %105 = load double, ptr %104, align 8, !tbaa !294
  %106 = fcmp une double %105, 0.000000e+00
  br i1 %106, label %107, label %222

107:                                              ; preds = %103
  %108 = icmp sgt i32 %36, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %107
  %110 = zext nneg i32 %36 to i64
  br label %120

111:                                              ; preds = %120, %107
  %112 = phi double [ 0.000000e+00, %107 ], [ %129, %120 ]
  %113 = load ptr, ptr %2, align 16, !tbaa !95
  %114 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %113, i64 0, i32 57
  %115 = load double, ptr %114, align 8, !tbaa !294
  %116 = fdiv double %115, %112
  %117 = icmp sgt i32 %36, 0
  br i1 %117, label %118, label %143

118:                                              ; preds = %111
  %119 = zext nneg i32 %36 to i64
  br label %132

120:                                              ; preds = %109, %120
  %121 = phi i64 [ 0, %109 ], [ %130, %120 ]
  %122 = phi double [ 0.000000e+00, %109 ], [ %129, %120 ]
  %123 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %121
  %124 = load ptr, ptr %123, align 8, !tbaa !94
  %125 = getelementptr inbounds %struct.x264_t, ptr %124, i64 0, i32 56
  %126 = load ptr, ptr %125, align 16, !tbaa !95
  %127 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %126, i64 0, i32 58
  %128 = load double, ptr %127, align 8, !tbaa !342
  %129 = fadd double %122, %128
  %130 = add nuw nsw i64 %121, 1
  %131 = icmp eq i64 %130, %110
  br i1 %131, label %111, label %120, !llvm.loop !388

132:                                              ; preds = %118, %132
  %133 = phi i64 [ 0, %118 ], [ %141, %132 ]
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %133
  %135 = load ptr, ptr %134, align 8, !tbaa !94
  %136 = getelementptr inbounds %struct.x264_t, ptr %135, i64 0, i32 56
  %137 = load ptr, ptr %136, align 16, !tbaa !95
  %138 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %137, i64 0, i32 58
  %139 = load double, ptr %138, align 8, !tbaa !342
  %140 = fmul double %116, %139
  store double %140, ptr %138, align 8, !tbaa !342
  %141 = add nuw nsw i64 %133, 1
  %142 = icmp eq i64 %141, %119
  br i1 %142, label %143, label %132, !llvm.loop !389

143:                                              ; preds = %132, %111
  %144 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 23
  %145 = load i32, ptr %144, align 8, !tbaa !146
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %206, label %147

147:                                              ; preds = %143
  %148 = icmp sgt i32 %36, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = zext nneg i32 %36 to i64
  br label %184

151:                                              ; preds = %184, %147
  %152 = icmp sgt i32 %36, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %151
  %154 = zext nneg i32 %36 to i64
  br label %161

155:                                              ; preds = %161, %151
  %156 = phi double [ 0.000000e+00, %151 ], [ %170, %161 ]
  %157 = fdiv double %115, %156
  %158 = icmp sgt i32 %36, 0
  br i1 %158, label %159, label %206

159:                                              ; preds = %155
  %160 = zext nneg i32 %36 to i64
  br label %173

161:                                              ; preds = %153, %161
  %162 = phi i64 [ 0, %153 ], [ %171, %161 ]
  %163 = phi double [ 0.000000e+00, %153 ], [ %170, %161 ]
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %162
  %165 = load ptr, ptr %164, align 8, !tbaa !94
  %166 = getelementptr inbounds %struct.x264_t, ptr %165, i64 0, i32 56
  %167 = load ptr, ptr %166, align 16, !tbaa !95
  %168 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %167, i64 0, i32 58
  %169 = load double, ptr %168, align 8, !tbaa !342
  %170 = fadd double %163, %169
  %171 = add nuw nsw i64 %162, 1
  %172 = icmp eq i64 %171, %154
  br i1 %172, label %155, label %161, !llvm.loop !388

173:                                              ; preds = %159, %173
  %174 = phi i64 [ 0, %159 ], [ %182, %173 ]
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %174
  %176 = load ptr, ptr %175, align 8, !tbaa !94
  %177 = getelementptr inbounds %struct.x264_t, ptr %176, i64 0, i32 56
  %178 = load ptr, ptr %177, align 16, !tbaa !95
  %179 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %178, i64 0, i32 58
  %180 = load double, ptr %179, align 8, !tbaa !342
  %181 = fmul double %157, %180
  store double %181, ptr %179, align 8, !tbaa !342
  %182 = add nuw nsw i64 %174, 1
  %183 = icmp eq i64 %182, %160
  br i1 %183, label %206, label %173, !llvm.loop !389

184:                                              ; preds = %149, %184
  %185 = phi i64 [ 0, %149 ], [ %204, %184 ]
  %186 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !94
  %188 = getelementptr inbounds %struct.x264_t, ptr %187, i64 0, i32 6
  %189 = load i32, ptr %188, align 8, !tbaa !341
  %190 = getelementptr inbounds %struct.x264_t, ptr %187, i64 0, i32 5
  %191 = load i32, ptr %190, align 4, !tbaa !345
  %192 = sub nsw i32 %189, %191
  %193 = sitofp i32 %192 to double
  %194 = fdiv double 1.000000e+00, %193
  %195 = fcmp olt double %194, 5.000000e-02
  %196 = select i1 %195, double 5.000000e-02, double %194
  %197 = getelementptr inbounds %struct.x264_t, ptr %187, i64 0, i32 56
  %198 = load ptr, ptr %197, align 16, !tbaa !95
  %199 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %198, i64 0, i32 59
  store double %196, ptr %199, align 8, !tbaa !344
  %200 = fmul double %196, 2.000000e+00
  %201 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %198, i64 0, i32 58
  %202 = load double, ptr %201, align 8, !tbaa !342
  %203 = tail call double @llvm.fmuladd.f64(double %200, double %105, double %202)
  store double %203, ptr %201, align 8, !tbaa !342
  %204 = add nuw nsw i64 %185, 1
  %205 = icmp eq i64 %204, %150
  br i1 %205, label %151, label %184, !llvm.loop !393

206:                                              ; preds = %173, %155, %143
  %207 = icmp sgt i32 %36, 0
  br i1 %207, label %208, label %222

208:                                              ; preds = %206
  %209 = zext nneg i32 %36 to i64
  br label %210

210:                                              ; preds = %208, %210
  %211 = phi i64 [ 0, %208 ], [ %220, %210 ]
  %212 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %211
  %213 = load ptr, ptr %212, align 8, !tbaa !94
  %214 = getelementptr inbounds %struct.x264_t, ptr %213, i64 0, i32 56
  %215 = load ptr, ptr %214, align 16, !tbaa !95
  %216 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %215, i64 0, i32 58
  %217 = load double, ptr %216, align 8, !tbaa !342
  %218 = fptrunc double %217 to float
  %219 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %215, i64 0, i32 55
  store float %218, ptr %219, align 4, !tbaa !295
  %220 = add nuw nsw i64 %211, 1
  %221 = icmp eq i64 %220, %209
  br i1 %221, label %222, label %210, !llvm.loop !394

222:                                              ; preds = %210, %206, %103, %35
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @x264_threads_merge_ratecontrol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !154
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 16, !tbaa !95
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 22
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %13 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 13
  %14 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 14
  br label %16

15:                                               ; preds = %117, %1
  ret void

16:                                               ; preds = %5, %117
  %17 = phi i64 [ 0, %5 ], [ %118, %117 ]
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !94
  %20 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 56
  %21 = load ptr, ptr %20, align 16, !tbaa !95
  %22 = load i32, ptr %8, align 8, !tbaa !121
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %106, label %24

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 5
  %26 = load i32, ptr %25, align 4, !tbaa !345
  %27 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 6
  %28 = load i32, ptr %27, align 8, !tbaa !341
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load ptr, ptr %9, align 16, !tbaa !287
  %32 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 57
  %33 = load ptr, ptr %32, align 16, !tbaa !340
  %34 = sext i32 %26 to i64
  %35 = sext i32 %28 to i64
  br label %98

36:                                               ; preds = %98, %24
  %37 = phi i32 [ 0, %24 ], [ %103, %98 ]
  %38 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 57
  %39 = load i32, ptr %38, align 8, !tbaa !365
  %40 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 57, i32 0, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !364
  %42 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 57, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !366
  %44 = sub nsw i32 %28, %26
  %45 = load ptr, ptr %10, align 16, !tbaa !77
  %46 = getelementptr inbounds %struct.x264_sps_t, ptr %45, i64 0, i32 16
  %47 = load i32, ptr %46, align 4, !tbaa !83
  %48 = mul nsw i32 %47, %44
  %49 = load ptr, ptr %11, align 8, !tbaa !178
  %50 = load i32, ptr %12, align 16, !tbaa !284
  %51 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %21, i64 0, i32 13
  %52 = load float, ptr %51, align 8, !tbaa !308
  %53 = sitofp i32 %48 to float
  %54 = fdiv float %52, %53
  %55 = fpext float %54 to double
  %56 = fadd double %55, -1.200000e+01
  %57 = fdiv double %56, 6.000000e+00
  %58 = tail call double @exp2(double %57) #17
  %59 = icmp slt i32 %37, 10
  br i1 %59, label %106, label %60

60:                                               ; preds = %36
  %61 = sitofp i32 %37 to double
  %62 = add nsw i32 %41, %39
  %63 = add nsw i32 %62, %43
  %64 = sitofp i32 %63 to double
  %65 = fmul double %58, 8.500000e-01
  %66 = mul nuw nsw i64 %17, 5
  %67 = sext i32 %50 to i64
  %68 = add nsw i64 %66, %67
  %69 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !205
  %71 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %68, i32 1
  %72 = load double, ptr %71, align 8, !tbaa !206
  %73 = fdiv double %70, %72
  %74 = fmul double %65, %64
  %75 = fdiv double %74, %61
  %76 = fdiv double %73, 1.500000e+00
  %77 = fmul double %73, 1.500000e+00
  %78 = fcmp olt double %75, %76
  %79 = fcmp ogt double %75, %77
  %80 = select i1 %79, double %77, double %75
  %81 = select i1 %78, double %76, double %80
  %82 = fneg double %81
  %83 = fmul double %61, %82
  %84 = tail call double @llvm.fmuladd.f64(double %64, double %65, double %83)
  %85 = fcmp ult double %84, 0.000000e+00
  %86 = select i1 %85, double %75, double %81
  %87 = select i1 %85, double 0.000000e+00, double %84
  %88 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %68, i32 2
  %89 = load double, ptr %88, align 8, !tbaa !207
  %90 = fmul double %72, %89
  store double %90, ptr %71, align 8, !tbaa !206
  %91 = fmul double %70, %89
  store double %91, ptr %69, align 8, !tbaa !205
  %92 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %68, i32 3
  %93 = load double, ptr %92, align 8, !tbaa !208
  %94 = fmul double %89, %93
  store double %94, ptr %92, align 8, !tbaa !208
  %95 = fadd double %90, 1.000000e+00
  store double %95, ptr %71, align 8, !tbaa !206
  %96 = fadd double %91, %86
  store double %96, ptr %69, align 8, !tbaa !205
  %97 = fadd double %94, %87
  store double %97, ptr %92, align 8, !tbaa !208
  br label %106

98:                                               ; preds = %30, %98
  %99 = phi i64 [ %34, %30 ], [ %104, %98 ]
  %100 = phi i32 [ 0, %30 ], [ %103, %98 ]
  %101 = getelementptr inbounds i32, ptr %33, i64 %99
  %102 = load i32, ptr %101, align 4, !tbaa !92
  %103 = add nsw i32 %102, %100
  %104 = add nsw i64 %99, 1
  %105 = icmp eq i64 %104, %35
  br i1 %105, label %36, label %98, !llvm.loop !395

106:                                              ; preds = %60, %36, %16
  %107 = icmp eq i64 %17, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %21, i64 0, i32 13
  %110 = load float, ptr %109, align 8, !tbaa !308
  %111 = load float, ptr %13, align 8, !tbaa !308
  %112 = fadd float %110, %111
  store float %112, ptr %13, align 8, !tbaa !308
  %113 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %21, i64 0, i32 14
  %114 = load float, ptr %113, align 4, !tbaa !307
  %115 = load float, ptr %14, align 4, !tbaa !307
  %116 = fadd float %114, %115
  store float %116, ptr %14, align 4, !tbaa !307
  br label %117

117:                                              ; preds = %106, %108
  %118 = add nuw nsw i64 %17, 1
  %119 = load i32, ptr %2, align 4, !tbaa !154
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %16, label %15, !llvm.loop !396
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_thread_sync_ratecontrol(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #12 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %97, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 16, !tbaa !95
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 47
  %9 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 56
  %10 = load ptr, ptr %9, align 16, !tbaa !95
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %10, i64 0, i32 47
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %8, align 8
  %13 = load ptr, ptr %6, align 16, !tbaa !95
  %14 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %13, i64 0, i32 48
  %15 = load ptr, ptr %9, align 16, !tbaa !95
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %15, i64 0, i32 48
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %14, align 8
  %18 = load ptr, ptr %6, align 16, !tbaa !95
  %19 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %18, i64 0, i32 25
  %20 = load ptr, ptr %9, align 16, !tbaa !95
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %20, i64 0, i32 25
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %19, align 8
  %23 = load ptr, ptr %6, align 16, !tbaa !95
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %23, i64 0, i32 26
  %25 = load ptr, ptr %9, align 16, !tbaa !95
  %26 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %25, i64 0, i32 26
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %24, align 8
  %28 = load ptr, ptr %6, align 16, !tbaa !95
  %29 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %28, i64 0, i32 45
  %30 = load ptr, ptr %9, align 16, !tbaa !95
  %31 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %30, i64 0, i32 45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false)
  %32 = load ptr, ptr %6, align 16, !tbaa !95
  %33 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %32, i64 0, i32 46
  %34 = load ptr, ptr %9, align 16, !tbaa !95
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %34, i64 0, i32 46
  %36 = load i32, ptr %35, align 8
  store i32 %36, ptr %33, align 8
  %37 = load ptr, ptr %6, align 16, !tbaa !95
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %37, i64 0, i32 31
  %39 = load ptr, ptr %9, align 16, !tbaa !95
  %40 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %39, i64 0, i32 31
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %38, align 8
  %42 = load ptr, ptr %6, align 16, !tbaa !95
  %43 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %42, i64 0, i32 32
  %44 = load ptr, ptr %9, align 16, !tbaa !95
  %45 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %44, i64 0, i32 32
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %43, align 8
  %47 = load ptr, ptr %6, align 16, !tbaa !95
  %48 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %47, i64 0, i32 63
  %49 = load ptr, ptr %9, align 16, !tbaa !95
  %50 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %49, i64 0, i32 63
  %51 = load i32, ptr %50, align 8
  store i32 %51, ptr %48, align 8
  %52 = load ptr, ptr %6, align 16, !tbaa !95
  %53 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %52, i64 0, i32 67
  %54 = load ptr, ptr %9, align 16, !tbaa !95
  %55 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %54, i64 0, i32 67
  %56 = load i64, ptr %55, align 8
  store i64 %56, ptr %53, align 8
  %57 = load ptr, ptr %6, align 16, !tbaa !95
  %58 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %57, i64 0, i32 54
  %59 = load ptr, ptr %9, align 16, !tbaa !95
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %59, i64 0, i32 54
  %61 = load i32, ptr %60, align 8
  store i32 %61, ptr %58, align 8
  %62 = load ptr, ptr %6, align 16, !tbaa !95
  %63 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %62, i64 0, i32 20
  %64 = load ptr, ptr %9, align 16, !tbaa !95
  %65 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %64, i64 0, i32 20
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %63, align 8
  %67 = load ptr, ptr %6, align 16, !tbaa !95
  %68 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %9, align 16, !tbaa !95
  %70 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %69, i64 0, i32 17
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %68, align 8
  %72 = load ptr, ptr %6, align 16, !tbaa !95
  %73 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %72, i64 0, i32 23
  %74 = load ptr, ptr %9, align 16, !tbaa !95
  %75 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %74, i64 0, i32 23
  %76 = load i32, ptr %75, align 8
  store i32 %76, ptr %73, align 8
  %77 = load ptr, ptr %6, align 16, !tbaa !95
  %78 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %77, i64 0, i32 30
  %79 = load ptr, ptr %9, align 16, !tbaa !95
  %80 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %79, i64 0, i32 30
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %78, align 8
  %82 = load ptr, ptr %6, align 16, !tbaa !95
  %83 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %9, align 16, !tbaa !95
  %85 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %84, i64 0, i32 3
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %83, align 4
  %87 = load ptr, ptr %6, align 16, !tbaa !95
  %88 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %87, i64 0, i32 33
  %89 = load ptr, ptr %9, align 16, !tbaa !95
  %90 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %89, i64 0, i32 33
  %91 = load i64, ptr %90, align 8
  store i64 %91, ptr %88, align 8
  %92 = load ptr, ptr %6, align 16, !tbaa !95
  %93 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %92, i64 0, i32 5
  %94 = load ptr, ptr %9, align 16, !tbaa !95
  %95 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %94, i64 0, i32 5
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %93, align 8
  br label %97

97:                                               ; preds = %5, %3
  %98 = icmp eq ptr %0, %2
  br i1 %98, label %128, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %101 = load ptr, ptr %100, align 16, !tbaa !95
  %102 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 27
  %103 = load double, ptr %102, align 8, !tbaa !167
  %104 = getelementptr inbounds %struct.x264_t, ptr %2, i64 0, i32 56
  %105 = load ptr, ptr %104, align 16, !tbaa !95
  %106 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 27
  store double %103, ptr %106, align 8, !tbaa !167
  %107 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 28
  %108 = load double, ptr %107, align 8, !tbaa !329
  %109 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 28
  store double %108, ptr %109, align 8, !tbaa !329
  %110 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 29
  %111 = load double, ptr %110, align 8, !tbaa !168
  %112 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 29
  store double %111, ptr %112, align 8, !tbaa !168
  %113 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 64
  %114 = load i32, ptr %113, align 4, !tbaa !371
  %115 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 64
  store i32 %114, ptr %115, align 4, !tbaa !371
  %116 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 68
  %117 = load i32, ptr %116, align 8, !tbaa !377
  %118 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 68
  store i32 %117, ptr %118, align 8, !tbaa !377
  %119 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 69
  %120 = load i32, ptr %119, align 4, !tbaa !379
  %121 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 69
  store i32 %120, ptr %121, align 4, !tbaa !379
  %122 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 70
  %123 = load double, ptr %122, align 8, !tbaa !380
  %124 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 70
  store double %123, ptr %124, align 8, !tbaa !380
  %125 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 71
  %126 = load double, ptr %125, align 8, !tbaa !384
  %127 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %105, i64 0, i32 71
  store double %126, ptr %127, align 8, !tbaa !384
  br label %128

128:                                              ; preds = %99, %97
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #14

declare i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log2(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

declare i32 @x264_rc_analyse_slice(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc double @clip_qscale(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #0 {
  %4 = alloca [3 x double], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !95
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 50, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !181
  %10 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 51, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !181
  %12 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 24
  %13 = load double, ptr %12, align 8, !tbaa !150
  %14 = fcmp une double %13, 0.000000e+00
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 15
  %17 = load float, ptr %16, align 8, !tbaa !327
  %18 = fpext float %17 to double
  %19 = fadd double %13, %18
  %20 = fadd double %19, -1.200000e+01
  %21 = fdiv double %20, 6.000000e+00
  %22 = tail call double @exp2(double %21) #17
  %23 = fmul double %22, 8.500000e-01
  %24 = fcmp olt double %11, %23
  br i1 %24, label %34, label %25

25:                                               ; preds = %15
  %26 = load float, ptr %16, align 8, !tbaa !327
  %27 = fpext float %26 to double
  %28 = load double, ptr %12, align 8, !tbaa !150
  %29 = fadd double %28, %27
  %30 = fadd double %29, -1.200000e+01
  %31 = fdiv double %30, 6.000000e+00
  %32 = tail call double @exp2(double %31) #17
  %33 = fmul double %32, 8.500000e-01
  br label %34

34:                                               ; preds = %25, %15, %3
  %35 = phi double [ %11, %3 ], [ %33, %25 ], [ %11, %15 ]
  %36 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 2
  %37 = load i32, ptr %36, align 8, !tbaa !153
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %358, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 25
  %41 = load i32, ptr %40, align 8, !tbaa !326
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %358

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %45 = load i32, ptr %44, align 4, !tbaa !223
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %177, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 22
  %49 = load ptr, ptr %48, align 8, !tbaa !178
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %51 = load i32, ptr %50, align 16, !tbaa !284
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %52
  %54 = sitofp i32 %41 to double
  %55 = load double, ptr %53, align 8, !tbaa !205
  %56 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %52, i32 3
  %57 = load double, ptr %56, align 8, !tbaa !208
  %58 = tail call double @llvm.fmuladd.f64(double %55, double %54, double %57)
  %59 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %52, i32 1
  %60 = load double, ptr %59, align 8, !tbaa !206
  %61 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %62 = load double, ptr %61, align 8, !tbaa !291
  %63 = icmp eq i32 %51, 2
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %66 = load float, ptr %65, align 4, !tbaa !159
  %67 = fpext float %66 to double
  %68 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %70 = load float, ptr %69, align 8, !tbaa !169
  %71 = fpext float %70 to double
  %72 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %73 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %75 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 21
  %76 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 21
  %77 = load double, ptr %76, align 8, !tbaa !144
  %78 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %79 = load double, ptr %78, align 8, !tbaa !145
  %80 = fmul double %79, 5.000000e-01
  %81 = fmul double %79, 8.000000e-01
  %82 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 3
  br label %88

83:                                               ; preds = %173
  %84 = add nuw nsw i32 %91, 1
  %85 = icmp ult i32 %91, 999
  %86 = icmp ne i32 %175, 3
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %256, !llvm.loop !397

88:                                               ; preds = %47, %83
  %89 = phi double [ %2, %47 ], [ %176, %83 ]
  %90 = phi i32 [ 0, %47 ], [ %175, %83 ]
  %91 = phi i32 [ 0, %47 ], [ %84, %83 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #17
  %92 = fmul double %89, %60
  %93 = fdiv double %58, %92
  %94 = fsub double %62, %93
  br i1 %63, label %95, label %99

95:                                               ; preds = %88
  %96 = load float, ptr %64, align 8, !tbaa !169
  %97 = fpext float %96 to double
  %98 = fmul double %89, %97
  br label %99

99:                                               ; preds = %88, %95
  %100 = phi double [ %98, %95 ], [ %89, %88 ]
  store double %100, ptr %4, align 16, !tbaa !181
  %101 = fmul double %100, %67
  store double %101, ptr %68, align 8, !tbaa !181
  %102 = fdiv double %100, %71
  store double %102, ptr %72, align 16, !tbaa !181
  %103 = fcmp ult double %94, 0.000000e+00
  br i1 %103, label %147, label %104

104:                                              ; preds = %99
  %105 = load double, ptr %73, align 8, !tbaa !145
  br label %106

106:                                              ; preds = %142, %104
  %107 = phi i64 [ %144, %142 ], [ 0, %104 ]
  %108 = phi double [ %143, %142 ], [ %94, %104 ]
  %109 = phi double [ %115, %142 ], [ 0.000000e+00, %104 ]
  %110 = fcmp ugt double %108, %105
  br i1 %110, label %147, label %111

111:                                              ; preds = %106
  %112 = load ptr, ptr %74, align 8, !tbaa !109
  %113 = getelementptr inbounds %struct.x264_frame, ptr %112, i64 0, i32 73, i64 %107
  %114 = load double, ptr %113, align 8, !tbaa !181
  %115 = fadd double %109, %114
  %116 = load double, ptr %75, align 8, !tbaa !144
  %117 = tail call double @llvm.fmuladd.f64(double %116, double %114, double %108)
  %118 = getelementptr inbounds %struct.x264_frame, ptr %112, i64 0, i32 71, i64 %107
  %119 = load i8, ptr %118, align 1, !tbaa !90
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %142, label %121

121:                                              ; preds = %111
  %122 = getelementptr inbounds %struct.x264_frame, ptr %112, i64 0, i32 72, i64 %107
  %123 = load i32, ptr %122, align 4, !tbaa !92
  %124 = icmp ult i8 %119, 3
  %125 = and i8 %119, -2
  %126 = icmp eq i8 %125, 4
  %127 = zext i1 %126 to i64
  %128 = select i1 %124, i64 2, i64 %127
  %129 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %128
  %130 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %128
  %131 = load double, ptr %130, align 8, !tbaa !181
  %132 = sitofp i32 %123 to double
  %133 = load double, ptr %129, align 8, !tbaa !205
  %134 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %128, i32 3
  %135 = load double, ptr %134, align 8, !tbaa !208
  %136 = tail call double @llvm.fmuladd.f64(double %133, double %132, double %135)
  %137 = getelementptr inbounds %struct.predictor_t, ptr %49, i64 %128, i32 1
  %138 = load double, ptr %137, align 8, !tbaa !206
  %139 = fmul double %131, %138
  %140 = fdiv double %136, %139
  %141 = fsub double %117, %140
  br label %142

142:                                              ; preds = %111, %121
  %143 = phi double [ %141, %121 ], [ %117, %111 ]
  %144 = add nuw i64 %107, 1
  %145 = fcmp ult double %143, 0.000000e+00
  %146 = select i1 %120, i1 true, i1 %145
  br i1 %146, label %147, label %106, !llvm.loop !398

147:                                              ; preds = %142, %106, %99
  %148 = phi double [ 0.000000e+00, %99 ], [ %115, %142 ], [ %109, %106 ]
  %149 = phi double [ %94, %99 ], [ %143, %142 ], [ %108, %106 ]
  %150 = fmul double %148, %77
  %151 = tail call double @llvm.fmuladd.f64(double %150, double 5.000000e-01, double %62)
  %152 = fcmp olt double %151, %80
  %153 = select i1 %152, double %151, double %80
  %154 = fcmp olt double %149, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = fmul double %89, 1.010000e+00
  %157 = or i32 %90, 1
  br label %173

158:                                              ; preds = %147
  %159 = fneg double %148
  %160 = fmul double %77, %159
  %161 = tail call double @llvm.fmuladd.f64(double %160, double 5.000000e-01, double %62)
  %162 = fcmp olt double %161, %81
  %163 = fcmp ogt double %161, %79
  %164 = select i1 %163, double %79, double %161
  %165 = select i1 %162, double %81, double %164
  %166 = load i32, ptr %82, align 4, !tbaa !123
  %167 = icmp ne i32 %166, 0
  %168 = fcmp ogt double %149, %165
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %173

170:                                              ; preds = %158
  %171 = fdiv double %89, 1.010000e+00
  %172 = or i32 %90, 2
  br label %173

173:                                              ; preds = %158, %170, %155
  %174 = phi i1 [ true, %155 ], [ true, %170 ], [ false, %158 ]
  %175 = phi i32 [ %157, %155 ], [ %172, %170 ], [ %90, %158 ]
  %176 = phi double [ %156, %155 ], [ %171, %170 ], [ %89, %158 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #17
  br i1 %174, label %83, label %256

177:                                              ; preds = %43
  switch i32 %1, label %197 [
    i32 0, label %182
    i32 2, label %178
  ]

178:                                              ; preds = %177
  %179 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 46
  %180 = load i32, ptr %179, align 8, !tbaa !163
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %182, label %197

182:                                              ; preds = %177, %178
  %183 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %184 = load double, ptr %183, align 8, !tbaa !291
  %185 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %186 = load double, ptr %185, align 8, !tbaa !145
  %187 = fdiv double %184, %186
  %188 = fcmp olt double %187, 5.000000e-01
  br i1 %188, label %189, label %197

189:                                              ; preds = %182
  %190 = fmul double %184, 2.000000e+00
  %191 = fdiv double %190, %186
  %192 = fcmp olt double %191, 5.000000e-01
  %193 = fcmp ogt double %191, 1.000000e+00
  %194 = select i1 %193, double 1.000000e+00, double %191
  %195 = select i1 %192, double 5.000000e-01, double %194
  %196 = fdiv double %2, %195
  br label %197

197:                                              ; preds = %177, %189, %182, %178
  %198 = phi double [ %196, %189 ], [ %2, %182 ], [ %2, %178 ], [ %2, %177 ]
  %199 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 22
  %200 = load ptr, ptr %199, align 8, !tbaa !178
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %202 = load i32, ptr %201, align 16, !tbaa !284
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.predictor_t, ptr %200, i64 %203
  %205 = sitofp i32 %41 to double
  %206 = load double, ptr %204, align 8, !tbaa !205
  %207 = getelementptr inbounds %struct.predictor_t, ptr %200, i64 %203, i32 3
  %208 = load double, ptr %207, align 8, !tbaa !208
  %209 = tail call double @llvm.fmuladd.f64(double %206, double %205, double %208)
  %210 = getelementptr inbounds %struct.predictor_t, ptr %200, i64 %203, i32 1
  %211 = load double, ptr %210, align 8, !tbaa !206
  %212 = fmul double %198, %211
  %213 = fdiv double %209, %212
  %214 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %215 = load i32, ptr %214, align 8, !tbaa !121
  %216 = sitofp i32 %215 to double
  %217 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %218 = load i32, ptr %217, align 4, !tbaa !120
  %219 = mul nsw i32 %218, 5
  %220 = sitofp i32 %219 to double
  %221 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 4
  %222 = load double, ptr %221, align 8, !tbaa !122
  %223 = fdiv double %220, %222
  %224 = fcmp ole double %223, %216
  %225 = select i1 %224, double 2.000000e+00, double 1.000000e+00
  %226 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 23
  %227 = load i32, ptr %226, align 8, !tbaa !146
  %228 = icmp eq i32 %227, 0
  %229 = select i1 %228, i32 2, i32 1
  %230 = sitofp i32 %229 to double
  %231 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %232 = load double, ptr %231, align 8, !tbaa !291
  %233 = fdiv double %232, %225
  %234 = fcmp ogt double %213, %233
  br i1 %234, label %235, label %242

235:                                              ; preds = %197
  %236 = fmul double %213, %225
  %237 = fdiv double %232, %236
  %238 = fcmp olt double %237, 2.000000e-01
  %239 = fcmp ogt double %237, 1.000000e+00
  %240 = select i1 %239, double 1.000000e+00, double %237
  %241 = select i1 %238, double 2.000000e-01, double %240
  br label %242

242:                                              ; preds = %235, %197
  %243 = phi double [ %241, %235 ], [ 1.000000e+00, %197 ]
  %244 = fdiv double %198, %243
  %245 = fmul double %213, %243
  %246 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 20
  %247 = load double, ptr %246, align 8, !tbaa !143
  %248 = fdiv double %247, %230
  %249 = fcmp olt double %245, %248
  %250 = fmul double %245, %230
  %251 = fdiv double %250, %247
  %252 = select i1 %249, double %251, double 1.000000e+00
  %253 = fmul double %244, %252
  %254 = fcmp olt double %253, %2
  %255 = select i1 %254, double %2, double %253
  br label %256

256:                                              ; preds = %173, %83, %242
  %257 = phi double [ %255, %242 ], [ %176, %83 ], [ %176, %173 ]
  %258 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 22
  %259 = load ptr, ptr %258, align 8, !tbaa !178
  %260 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %261 = load i32, ptr %260, align 16, !tbaa !284
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.predictor_t, ptr %259, i64 %262
  %264 = sitofp i32 %41 to double
  %265 = load double, ptr %263, align 8, !tbaa !205
  %266 = getelementptr inbounds %struct.predictor_t, ptr %259, i64 %262, i32 3
  %267 = load double, ptr %266, align 8, !tbaa !208
  %268 = tail call double @llvm.fmuladd.f64(double %265, double %264, double %267)
  %269 = getelementptr inbounds %struct.predictor_t, ptr %259, i64 %262, i32 1
  %270 = load double, ptr %269, align 8, !tbaa !206
  %271 = fmul double %257, %270
  %272 = fdiv double %268, %271
  %273 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 56
  %274 = load double, ptr %273, align 8, !tbaa !303
  %275 = fcmp ogt double %272, %274
  %276 = fdiv double %272, %274
  %277 = select i1 %275, double %276, double 1.000000e+00
  %278 = fmul double %257, %277
  %279 = fmul double %270, %278
  %280 = fdiv double %268, %279
  %281 = icmp eq i32 %261, 0
  br i1 %281, label %282, label %350

282:                                              ; preds = %256
  %283 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 23
  %284 = load i32, ptr %283, align 8, !tbaa !146
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %350

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 63
  %288 = load i32, ptr %287, align 8, !tbaa !305
  %289 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 62
  %290 = load ptr, ptr %289, align 8, !tbaa !179
  %291 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %292 = load float, ptr %291, align 4, !tbaa !159
  %293 = fpext float %292 to double
  %294 = fmul double %278, %293
  %295 = load double, ptr %290, align 8, !tbaa !205
  %296 = getelementptr inbounds %struct.predictor_t, ptr %290, i64 0, i32 3
  %297 = load double, ptr %296, align 8, !tbaa !208
  %298 = tail call double @llvm.fmuladd.f64(double %295, double %264, double %297)
  %299 = getelementptr inbounds %struct.predictor_t, ptr %290, i64 0, i32 1
  %300 = load double, ptr %299, align 8, !tbaa !206
  %301 = fmul double %294, %300
  %302 = fdiv double %298, %301
  %303 = icmp sgt i32 %288, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %286
  %305 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %306 = load ptr, ptr %305, align 8, !tbaa !109
  %307 = zext nneg i32 %288 to i64
  br label %330

308:                                              ; preds = %330, %286
  %309 = phi double [ 0.000000e+00, %286 ], [ %336, %330 ]
  %310 = sitofp i32 %288 to double
  %311 = fmul double %302, %310
  %312 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 21
  %313 = load double, ptr %312, align 8, !tbaa !144
  %314 = fmul double %309, %313
  %315 = fcmp ogt double %311, %314
  %316 = select i1 %315, double 0.000000e+00, double %310
  %317 = tail call double @llvm.fmuladd.f64(double %316, double %302, double %280)
  %318 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %319 = load ptr, ptr %318, align 8, !tbaa !109
  %320 = getelementptr inbounds %struct.x264_frame, ptr %319, i64 0, i32 73
  %321 = load double, ptr %320, align 8, !tbaa !181
  %322 = fadd double %309, %321
  %323 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %324 = load double, ptr %323, align 8, !tbaa !291
  %325 = tail call double @llvm.fmuladd.f64(double %322, double %313, double %324)
  %326 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %327 = load double, ptr %326, align 8, !tbaa !145
  %328 = fsub double %325, %327
  %329 = fcmp olt double %317, %328
  br i1 %329, label %338, label %345

330:                                              ; preds = %304, %330
  %331 = phi i64 [ 0, %304 ], [ %333, %330 ]
  %332 = phi double [ 0.000000e+00, %304 ], [ %336, %330 ]
  %333 = add nuw nsw i64 %331, 1
  %334 = getelementptr inbounds %struct.x264_frame, ptr %306, i64 0, i32 73, i64 %333
  %335 = load double, ptr %334, align 8, !tbaa !181
  %336 = fadd double %332, %335
  %337 = icmp eq i64 %333, %307
  br i1 %337, label %308, label %330, !llvm.loop !399

338:                                              ; preds = %308
  %339 = fdiv double %317, %328
  %340 = fmul double %327, 5.000000e-01
  %341 = fdiv double %280, %340
  %342 = fcmp ogt double %339, %341
  %343 = select i1 %342, double %339, double %341
  %344 = fmul double %278, %343
  br label %345

345:                                              ; preds = %338, %308
  %346 = phi double [ %344, %338 ], [ %278, %308 ]
  %347 = fadd double %2, -5.000000e+00
  %348 = fcmp ogt double %347, %346
  %349 = select i1 %348, double %347, double %346
  br label %350

350:                                              ; preds = %345, %282, %256
  %351 = phi double [ %278, %282 ], [ %349, %345 ], [ %278, %256 ]
  %352 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 3
  %353 = load i32, ptr %352, align 4, !tbaa !123
  %354 = icmp eq i32 %353, 0
  %355 = fcmp olt double %351, %2
  %356 = select i1 %354, i1 %355, i1 false
  %357 = select i1 %356, double %2, double %351
  br label %358

358:                                              ; preds = %350, %39, %34
  %359 = phi double [ %357, %350 ], [ %2, %39 ], [ %2, %34 ]
  %360 = fcmp oeq double %9, %35
  br i1 %360, label %384, label %361

361:                                              ; preds = %358
  %362 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 1
  %363 = load i32, ptr %362, align 4, !tbaa !112
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %379, label %365

365:                                              ; preds = %361
  %366 = tail call double @log(double noundef %9) #17
  %367 = tail call double @log(double noundef %35) #17
  %368 = tail call double @log(double noundef %359) #17
  %369 = fsub double %368, %366
  %370 = fsub double %367, %366
  %371 = fdiv double %369, %370
  %372 = fadd double %371, -5.000000e-01
  %373 = fmul double %372, -4.000000e+00
  %374 = tail call double @exp(double noundef %373) #17
  %375 = fadd double %374, 1.000000e+00
  %376 = fdiv double 1.000000e+00, %375
  %377 = tail call double @llvm.fmuladd.f64(double %376, double %370, double %366)
  %378 = tail call double @exp(double noundef %377) #17
  br label %384

379:                                              ; preds = %361
  %380 = fcmp olt double %359, %9
  %381 = fcmp ogt double %359, %35
  %382 = select i1 %381, double %35, double %359
  %383 = select i1 %380, double %9, double %382
  br label %384

384:                                              ; preds = %358, %379, %365
  %385 = phi double [ %378, %365 ], [ %383, %379 ], [ %9, %358 ]
  ret double %385
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc i32 @find_underflow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #15 {
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 16, !tbaa !95
  %8 = icmp eq i32 %4, 0
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 17
  %10 = load double, ptr %9, align 8, !tbaa !145
  %11 = fmul double %10, 1.000000e-01
  %12 = fmul double %10, 9.000000e-01
  %13 = load i32, ptr %2, align 4, !tbaa !92
  %14 = select i1 %8, double -1.000000e+00, double 1.000000e+00
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 42
  %16 = load i32, ptr %15, align 8, !tbaa !225
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %102

18:                                               ; preds = %5
  %19 = sext i32 %13 to i64
  %20 = getelementptr double, ptr %1, i64 %19
  %21 = getelementptr double, ptr %20, i64 -1
  %22 = load double, ptr %21, align 8, !tbaa !181
  %23 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 43
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 21
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %26 = sext i32 %13 to i64
  br label %27

27:                                               ; preds = %18, %95
  %28 = phi i64 [ %26, %18 ], [ %98, %95 ]
  %29 = phi i32 [ -1, %18 ], [ %97, %95 ]
  %30 = phi i32 [ -1, %18 ], [ %96, %95 ]
  %31 = phi double [ %22, %18 ], [ %81, %95 ]
  %32 = load ptr, ptr %23, align 8, !tbaa !96
  %33 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %32, i64 %28, i32 21
  %34 = load i32, ptr %33, align 4, !tbaa !400
  %35 = sitofp i32 %34 to double
  %36 = load double, ptr %24, align 8, !tbaa !144
  %37 = fmul double %36, %35
  %38 = load ptr, ptr %25, align 16, !tbaa !77
  %39 = getelementptr inbounds %struct.x264_sps_t, ptr %38, i64 0, i32 24, i32 16
  %40 = load i32, ptr %39, align 4, !tbaa !138
  %41 = uitofp i32 %40 to double
  %42 = fmul double %37, %41
  %43 = getelementptr inbounds %struct.x264_sps_t, ptr %38, i64 0, i32 24, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !137
  %45 = uitofp i32 %44 to double
  %46 = fdiv double %42, %45
  %47 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %32, i64 %28, i32 9
  %48 = load double, ptr %47, align 8, !tbaa !227
  %49 = fcmp olt double %48, 1.000000e-01
  %50 = select i1 %49, double 1.000000e-01, double %48
  %51 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %32, i64 %28, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !243
  %53 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %32, i64 %28, i32 3
  %54 = load double, ptr %53, align 8, !tbaa !228
  %55 = fdiv double %54, %50
  %56 = tail call double @pow(double noundef %55, double noundef 1.100000e+00) #17
  %57 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %32, i64 %28, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !244
  %59 = load double, ptr %53, align 8, !tbaa !228
  %60 = fcmp ogt double %59, 1.000000e+00
  %61 = select i1 %60, double %59, double 1.000000e+00
  %62 = sitofp i32 %58 to double
  %63 = sitofp i32 %52 to double
  %64 = fadd double %63, 1.000000e-01
  %65 = fcmp ogt double %50, 1.000000e+00
  %66 = select i1 %65, double %50, double 1.000000e+00
  %67 = fdiv double %61, %66
  %68 = tail call double @pow(double noundef %67, double noundef 5.000000e-01) #17
  %69 = fmul double %68, %62
  %70 = tail call double @llvm.fmuladd.f64(double %64, double %56, double %69)
  %71 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %32, i64 %28, i32 6
  %72 = load i32, ptr %71, align 8, !tbaa !229
  %73 = sitofp i32 %72 to double
  %74 = fadd double %70, %73
  %75 = fsub double %46, %74
  %76 = tail call double @llvm.fmuladd.f64(double %75, double %14, double %31)
  %77 = load double, ptr %9, align 8, !tbaa !145
  %78 = fcmp olt double %76, 0.000000e+00
  %79 = fcmp ogt double %76, %77
  %80 = select i1 %79, double %77, double %76
  %81 = select i1 %78, double 0.000000e+00, double %80
  %82 = getelementptr inbounds double, ptr %1, i64 %28
  store double %81, ptr %82, align 8, !tbaa !181
  %83 = fcmp ole double %81, %11
  %84 = icmp eq i64 %28, 0
  %85 = or i1 %84, %83
  br i1 %85, label %86, label %89

86:                                               ; preds = %27
  %87 = icmp sgt i32 %29, -1
  %88 = trunc i64 %28 to i32
  br i1 %87, label %102, label %95

89:                                               ; preds = %27
  %90 = fcmp oge double %81, %12
  %91 = icmp sgt i32 %30, -1
  %92 = select i1 %90, i1 %91, i1 false
  %93 = trunc i64 %28 to i32
  %94 = select i1 %92, i32 %93, i32 %29
  br label %95

95:                                               ; preds = %89, %86
  %96 = phi i32 [ %88, %86 ], [ %30, %89 ]
  %97 = phi i32 [ %29, %86 ], [ %94, %89 ]
  %98 = add nsw i64 %28, 1
  %99 = load i32, ptr %15, align 8, !tbaa !225
  %100 = sext i32 %99 to i64
  %101 = icmp slt i64 %98, %100
  br i1 %101, label %27, label %102, !llvm.loop !401

102:                                              ; preds = %95, %86, %5
  %103 = phi i32 [ -1, %5 ], [ %96, %95 ], [ %30, %86 ]
  %104 = phi i32 [ -1, %5 ], [ %97, %95 ], [ %29, %86 ]
  store i32 %103, ptr %2, align 4, !tbaa !92
  store i32 %104, ptr %3, align 4, !tbaa !92
  %105 = icmp sgt i32 %103, -1
  %106 = icmp sgt i32 %104, -1
  %107 = select i1 %105, i1 %106, i1 false
  %108 = zext i1 %107 to i32
  ret i32 %108
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #16

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 1, !"ProfileSummary", !5}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15}
!6 = !{!"ProfileFormat", !"InstrProf"}
!7 = !{!"TotalCount", i64 11233431}
!8 = !{!"MaxCount", i64 921600}
!9 = !{!"MaxInternalCount", i64 921600}
!10 = !{!"MaxFunctionCount", i64 921600}
!11 = !{!"NumCounts", i64 213}
!12 = !{!"NumFunctions", i64 14}
!13 = !{!"IsPartialProfile", i64 0}
!14 = !{!"PartialProfileRatio", double 0.000000e+00}
!15 = !{!"DetailedSummary", !16}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!17 = !{i32 10000, i64 921600, i32 8}
!18 = !{i32 100000, i64 921600, i32 8}
!19 = !{i32 200000, i64 921600, i32 8}
!20 = !{i32 300000, i64 921600, i32 8}
!21 = !{i32 400000, i64 921600, i32 8}
!22 = !{i32 500000, i64 921600, i32 8}
!23 = !{i32 600000, i64 921600, i32 8}
!24 = !{i32 700000, i64 915762, i32 9}
!25 = !{i32 800000, i64 908579, i32 10}
!26 = !{i32 900000, i64 460800, i32 13}
!27 = !{i32 950000, i64 460800, i32 13}
!28 = !{i32 990000, i64 115200, i32 14}
!29 = !{i32 999000, i64 12790, i32 20}
!30 = !{i32 999900, i64 536, i32 29}
!31 = !{i32 999990, i64 90, i32 32}
!32 = !{i32 999999, i64 1, i32 66}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!35, !43, i64 548}
!35 = !{!"x264_t", !36, i64 0, !38, i64 704, !37, i64 1736, !37, i64 1740, !37, i64 1744, !37, i64 1748, !37, i64 1752, !45, i64 1760, !41, i64 1832, !37, i64 1840, !37, i64 1844, !37, i64 1848, !37, i64 1852, !37, i64 1856, !37, i64 1860, !37, i64 1864, !37, i64 1868, !37, i64 1872, !37, i64 1876, !37, i64 1880, !37, i64 1884, !37, i64 1888, !37, i64 1892, !38, i64 1896, !41, i64 3200, !38, i64 3208, !41, i64 3328, !37, i64 3336, !37, i64 3340, !38, i64 3344, !38, i64 3376, !38, i64 3392, !38, i64 3424, !38, i64 3440, !38, i64 3472, !38, i64 3488, !38, i64 3520, !38, i64 3536, !38, i64 4272, !41, i64 7216, !48, i64 7232, !49, i64 13904, !50, i64 14416, !41, i64 14680, !41, i64 14688, !37, i64 14696, !38, i64 14704, !37, i64 14856, !38, i64 14864, !38, i64 15016, !37, i64 15024, !37, i64 15028, !47, i64 15032, !51, i64 15040, !52, i64 16368, !41, i64 26704, !55, i64 26712, !38, i64 30400, !38, i64 30912, !38, i64 31168, !41, i64 31176, !38, i64 31184, !38, i64 31232, !38, i64 31248, !38, i64 31304, !38, i64 31360, !38, i64 31456, !41, i64 31552, !58, i64 31560, !59, i64 32616, !60, i64 32912, !61, i64 33032, !62, i64 33080, !63, i64 33256, !41, i64 33328}
!36 = !{!"x264_param_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !40, i64 44, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !37, i64 96, !37, i64 100, !37, i64 104, !37, i64 108, !37, i64 112, !37, i64 116, !37, i64 120, !37, i64 124, !37, i64 128, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !41, i64 152, !38, i64 160, !38, i64 176, !38, i64 192, !38, i64 208, !38, i64 224, !38, i64 288, !41, i64 352, !41, i64 360, !37, i64 368, !37, i64 372, !41, i64 376, !42, i64 384, !44, i64 488, !37, i64 632, !37, i64 636, !37, i64 640, !37, i64 644, !37, i64 648, !37, i64 652, !37, i64 656, !37, i64 660, !37, i64 664, !37, i64 668, !37, i64 672, !37, i64 676, !37, i64 680, !37, i64 684, !37, i64 688, !37, i64 692, !41, i64 696}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32}
!41 = !{!"any pointer", !38, i64 0}
!42 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !43, i64 72, !43, i64 76, !37, i64 80, !38, i64 84, !37, i64 92, !37, i64 96}
!43 = !{!"float", !38, i64 0}
!44 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !43, i64 24, !43, i64 28, !43, i64 32, !37, i64 36, !37, i64 40, !43, i64 44, !43, i64 48, !43, i64 52, !37, i64 56, !43, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !41, i64 80, !37, i64 88, !41, i64 96, !43, i64 104, !43, i64 108, !43, i64 112, !41, i64 120, !37, i64 128, !41, i64 136}
!45 = !{!"", !37, i64 0, !37, i64 4, !41, i64 8, !37, i64 16, !41, i64 24, !46, i64 32}
!46 = !{!"bs_s", !41, i64 0, !41, i64 8, !41, i64 16, !47, i64 24, !37, i64 32, !37, i64 36}
!47 = !{!"long", !38, i64 0}
!48 = !{!"", !41, i64 0, !41, i64 8, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !38, i64 60, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !37, i64 84, !37, i64 88, !37, i64 92, !38, i64 96, !38, i64 352, !37, i64 6496, !37, i64 6500, !38, i64 6504, !37, i64 6632, !37, i64 6636, !37, i64 6640, !37, i64 6644, !37, i64 6648, !37, i64 6652, !37, i64 6656, !37, i64 6660}
!49 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !41, i64 16, !41, i64 24, !41, i64 32, !37, i64 48, !38, i64 52}
!50 = !{!"", !41, i64 0, !38, i64 8, !41, i64 24, !38, i64 32, !37, i64 176, !37, i64 180, !37, i64 184, !37, i64 188, !37, i64 192, !37, i64 196, !37, i64 200, !47, i64 208, !47, i64 216, !38, i64 224, !47, i64 240, !47, i64 248, !37, i64 256, !37, i64 260}
!51 = !{!"", !38, i64 0, !38, i64 32, !38, i64 48, !38, i64 560}
!52 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !38, i64 72, !38, i64 80, !38, i64 88, !38, i64 96, !38, i64 104, !38, i64 112, !37, i64 120, !38, i64 124, !38, i64 140, !37, i64 204, !37, i64 208, !37, i64 212, !37, i64 216, !37, i64 220, !37, i64 224, !37, i64 228, !37, i64 232, !37, i64 236, !37, i64 240, !37, i64 244, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !38, i64 304, !38, i64 320, !38, i64 336, !38, i64 352, !41, i64 864, !41, i64 872, !41, i64 880, !38, i64 888, !37, i64 1016, !37, i64 1020, !38, i64 1024, !37, i64 1028, !37, i64 1032, !37, i64 1036, !37, i64 1040, !37, i64 1044, !37, i64 1048, !37, i64 1052, !37, i64 1056, !37, i64 1060, !53, i64 1072, !54, i64 8656, !37, i64 9424, !37, i64 9428, !37, i64 9432, !37, i64 9436, !37, i64 9440, !37, i64 9444, !37, i64 9448, !37, i64 9452, !38, i64 9456, !37, i64 9472, !37, i64 9476, !38, i64 9480, !41, i64 9992, !38, i64 10000, !41, i64 10256, !38, i64 10264, !37, i64 10284, !38, i64 10288}
!53 = !{!"", !38, i64 0, !38, i64 384, !38, i64 1248, !38, i64 1504, !38, i64 1760, !38, i64 2144, !38, i64 2624, !38, i64 2640, !37, i64 2656, !37, i64 2660, !38, i64 2672, !38, i64 3184, !38, i64 3696, !38, i64 3776, !38, i64 3904, !38, i64 3928, !38, i64 3952, !38, i64 3976, !38, i64 3984, !38, i64 7056, !38, i64 7312, !38, i64 7568}
!54 = !{!"", !38, i64 0, !38, i64 48, !38, i64 96, !38, i64 176, !38, i64 496, !38, i64 656, !38, i64 696, !38, i64 728, !37, i64 736, !38, i64 740, !37, i64 744, !37, i64 748, !37, i64 752, !37, i64 756}
!55 = !{!"", !56, i64 0, !38, i64 704, !38, i64 728, !38, i64 768, !38, i64 808, !38, i64 880, !38, i64 920, !38, i64 960, !38, i64 1000, !38, i64 1040, !38, i64 1080, !38, i64 1120, !38, i64 1880, !38, i64 2152, !38, i64 2168, !38, i64 3192, !38, i64 3240, !38, i64 3656, !38, i64 3664, !38, i64 3672}
!56 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !38, i64 12, !37, i64 88, !37, i64 92, !37, i64 96, !38, i64 100, !38, i64 108, !38, i64 364, !38, i64 432, !38, i64 456, !38, i64 664, !38, i64 672, !57, i64 696}
!57 = !{!"double", !38, i64 0}
!58 = !{!"", !38, i64 0, !38, i64 56, !38, i64 112, !38, i64 168, !38, i64 224, !38, i64 256, !38, i64 312, !38, i64 368, !38, i64 424, !38, i64 480, !38, i64 536, !41, i64 592, !38, i64 600, !38, i64 632, !41, i64 664, !41, i64 672, !38, i64 680, !38, i64 736, !38, i64 792, !38, i64 848, !38, i64 904, !41, i64 960, !41, i64 968, !41, i64 976, !41, i64 984, !41, i64 992, !41, i64 1000, !41, i64 1008, !41, i64 1016, !41, i64 1024, !41, i64 1032, !41, i64 1040, !41, i64 1048}
!59 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !38, i64 24, !38, i64 104, !41, i64 160, !41, i64 168, !41, i64 176, !41, i64 184, !41, i64 192, !41, i64 200, !41, i64 208, !41, i64 216, !41, i64 224, !41, i64 232, !41, i64 240, !41, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288}
!60 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !41, i64 88, !41, i64 96, !41, i64 104, !41, i64 112}
!61 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40}
!62 = !{!"", !41, i64 0, !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !41, i64 56, !41, i64 64, !41, i64 72, !41, i64 80, !38, i64 88, !38, i64 136}
!63 = !{!"", !38, i64 0, !38, i64 16, !38, i64 32, !38, i64 48, !41, i64 64}
!64 = !{!65, !41, i64 12152}
!65 = !{!"x264_frame", !37, i64 0, !37, i64 4, !37, i64 8, !47, i64 16, !47, i64 24, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !41, i64 48, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !38, i64 84, !38, i64 85, !38, i64 86, !43, i64 88, !43, i64 92, !37, i64 96, !37, i64 100, !38, i64 104, !38, i64 116, !38, i64 128, !37, i64 140, !37, i64 144, !37, i64 148, !38, i64 152, !38, i64 176, !38, i64 208, !41, i64 240, !38, i64 248, !38, i64 280, !38, i64 320, !38, i64 3392, !37, i64 3520, !41, i64 3528, !41, i64 3536, !41, i64 3544, !38, i64 3552, !41, i64 3568, !38, i64 3576, !38, i64 3848, !38, i64 6440, !38, i64 6712, !38, i64 6728, !38, i64 6736, !38, i64 6864, !38, i64 6868, !38, i64 8164, !37, i64 9460, !38, i64 9464, !38, i64 9536, !41, i64 12128, !41, i64 12136, !41, i64 12144, !41, i64 12152, !41, i64 12160, !37, i64 12168, !41, i64 12176, !41, i64 12184, !41, i64 12192, !37, i64 12200, !38, i64 12204, !37, i64 12276, !47, i64 12280, !66, i64 12288, !38, i64 12320, !38, i64 12572, !38, i64 13576, !37, i64 15584, !37, i64 15588, !37, i64 15592, !37, i64 15596, !37, i64 15600, !37, i64 15604, !37, i64 15608, !43, i64 15612, !37, i64 15616, !37, i64 15620, !37, i64 15624}
!66 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24}
!67 = !{!35, !37, i64 16368}
!68 = !{!65, !41, i64 12160}
!69 = !{!35, !37, i64 14672}
!70 = !{!65, !41, i64 12192}
!71 = !{!72, !72, i64 0}
!72 = !{!"short", !38, i64 0}
!73 = distinct !{!73, !74, !75}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = !{!35, !37, i64 544}
!77 = !{!35, !41, i64 3200}
!78 = !{!79, !37, i64 1088}
!79 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !38, i64 52, !37, i64 1076, !37, i64 1080, !37, i64 1084, !37, i64 1088, !37, i64 1092, !37, i64 1096, !37, i64 1100, !37, i64 1104, !80, i64 1108, !37, i64 1124, !81, i64 1128, !37, i64 1296}
!80 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12}
!81 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48, !37, i64 52, !37, i64 56, !37, i64 60, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !37, i64 80, !82, i64 84, !37, i64 132, !37, i64 136, !37, i64 140, !37, i64 144, !37, i64 148, !37, i64 152, !37, i64 156, !37, i64 160, !37, i64 164}
!82 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44}
!83 = !{!79, !37, i64 1084}
!84 = distinct !{!84, !74, !75}
!85 = !{!35, !37, i64 16372}
!86 = !{!43, !43, i64 0}
!87 = distinct !{!87, !74, !75}
!88 = distinct !{!88, !74, !75}
!89 = !{i32 0, i32 33}
!90 = !{!38, !38, i64 0}
!91 = distinct !{!91, !74, !75}
!92 = !{!37, !37, i64 0}
!93 = !{!35, !37, i64 16436}
!94 = !{!41, !41, i64 0}
!95 = !{!35, !41, i64 26704}
!96 = !{!97, !41, i64 312}
!97 = !{!"x264_ratecontrol_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !37, i64 48, !38, i64 52, !41, i64 72, !37, i64 80, !43, i64 84, !43, i64 88, !43, i64 92, !43, i64 96, !37, i64 100, !57, i64 104, !57, i64 112, !57, i64 120, !57, i64 128, !57, i64 136, !41, i64 144, !37, i64 152, !57, i64 160, !37, i64 168, !57, i64 176, !57, i64 184, !57, i64 192, !57, i64 200, !57, i64 208, !57, i64 216, !57, i64 224, !57, i64 232, !57, i64 240, !57, i64 248, !41, i64 256, !41, i64 264, !41, i64 272, !41, i64 280, !41, i64 288, !41, i64 296, !37, i64 304, !41, i64 312, !57, i64 320, !38, i64 328, !37, i64 368, !57, i64 376, !57, i64 384, !57, i64 392, !38, i64 400, !38, i64 440, !57, i64 480, !38, i64 488, !37, i64 504, !43, i64 508, !57, i64 512, !57, i64 520, !57, i64 528, !57, i64 536, !41, i64 544, !38, i64 552, !41, i64 872, !37, i64 880, !37, i64 884, !37, i64 888, !41, i64 896, !41, i64 904, !37, i64 912, !37, i64 916, !57, i64 920, !57, i64 928}
!98 = !{!65, !37, i64 56}
!99 = !{!100, !37, i64 0}
!100 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !57, i64 16, !37, i64 24, !37, i64 28, !37, i64 32, !47, i64 40, !57, i64 48, !57, i64 56, !37, i64 64, !37, i64 68, !37, i64 72, !37, i64 76, !43, i64 80, !38, i64 84, !38, i64 86, !72, i64 90, !38, i64 92, !37, i64 156, !37, i64 160, !37, i64 164}
!101 = !{!100, !37, i64 8}
!102 = !{!97, !37, i64 504}
!103 = !{!97, !41, i64 296}
!104 = distinct !{!104, !74, !75}
!105 = distinct !{!105, !74, !75}
!106 = !{!97, !41, i64 72}
!107 = !{!100, !37, i64 156}
!108 = !{!35, !37, i64 14696}
!109 = !{!35, !41, i64 14680}
!110 = distinct !{!110, !74, !75}
!111 = distinct !{!111, !74, !75}
!112 = !{!97, !37, i64 4}
!113 = !{!35, !37, i64 488}
!114 = !{!35, !37, i64 100}
!115 = !{!35, !37, i64 552}
!116 = !{!35, !43, i64 592}
!117 = !{!97, !57, i64 40}
!118 = !{!35, !43, i64 512}
!119 = !{!97, !57, i64 232}
!120 = !{!35, !37, i64 524}
!121 = !{!35, !37, i64 528}
!122 = !{!97, !57, i64 16}
!123 = !{!97, !37, i64 12}
!124 = !{!35, !37, i64 508}
!125 = !{!35, !37, i64 40}
!126 = !{!79, !37, i64 1212}
!127 = !{!79, !37, i64 1240}
!128 = !{!79, !37, i64 1256}
!129 = !{i32 3, i32 33}
!130 = !{!79, !37, i64 1216}
!131 = !{!79, !37, i64 1224}
!132 = !{!79, !37, i64 1232}
!133 = !{!79, !37, i64 1220}
!134 = !{!79, !37, i64 1228}
!135 = !{!79, !37, i64 1236}
!136 = !{!35, !37, i64 84}
!137 = !{!79, !37, i64 1196}
!138 = !{!79, !37, i64 1192}
!139 = !{!79, !37, i64 1292}
!140 = !{!79, !37, i64 1244}
!141 = !{!79, !37, i64 1248}
!142 = !{!79, !37, i64 1252}
!143 = !{!97, !57, i64 128}
!144 = !{!97, !57, i64 136}
!145 = !{!97, !57, i64 104}
!146 = !{!97, !37, i64 152}
!147 = !{!97, !57, i64 24}
!148 = !{!97, !57, i64 208}
!149 = !{!35, !43, i64 516}
!150 = !{!97, !57, i64 160}
!151 = !{!35, !43, i64 532}
!152 = !{!97, !57, i64 112}
!153 = !{!97, !37, i64 8}
!154 = !{!35, !37, i64 4}
!155 = !{!35, !37, i64 576}
!156 = !{!97, !37, i64 0}
!157 = !{!35, !37, i64 652}
!158 = !{!35, !37, i64 656}
!159 = !{!35, !43, i64 540}
!160 = !{!35, !43, i64 520}
!161 = !{!97, !57, i64 32}
!162 = !{!97, !37, i64 48}
!163 = !{!97, !37, i64 368}
!164 = !{!35, !37, i64 25808}
!165 = !{!97, !57, i64 384}
!166 = !{!97, !57, i64 376}
!167 = !{!97, !57, i64 184}
!168 = !{!97, !57, i64 200}
!169 = !{!35, !43, i64 536}
!170 = !{!97, !57, i64 240}
!171 = !{!97, !57, i64 248}
!172 = !{!35, !37, i64 492}
!173 = !{!35, !37, i64 17428}
!174 = !{!35, !37, i64 504}
!175 = !{!97, !57, i64 480}
!176 = !{!97, !57, i64 320}
!177 = !{!35, !37, i64 8}
!178 = !{!97, !41, i64 144}
!179 = !{!97, !41, i64 872}
!180 = !{i64 0, i64 8, !181, i64 8, i64 8, !181, i64 16, i64 8, !181, i64 24, i64 8, !181}
!181 = !{!57, !57, i64 0}
!182 = !{!35, !41, i64 624}
!183 = !{!35, !37, i64 616}
!184 = distinct !{!184, !74, !75}
!185 = !{!35, !41, i64 608}
!186 = !{!187, !41, i64 24}
!187 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !43, i64 16, !41, i64 24}
!188 = !{!187, !43, i64 16}
!189 = !{!187, !37, i64 8}
!190 = !{!36, !41, i64 696}
!191 = distinct !{!191, !74, !75}
!192 = distinct !{!192, !74, !75}
!193 = distinct !{!193, !74, !75}
!194 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !86, i64 24, i64 8, !94}
!195 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !86, i64 20, i64 8, !94}
!196 = !{i64 0, i64 4, !86, i64 8, i64 8, !94}
!197 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !86, i64 16, i64 8, !94}
!198 = !{!97, !37, i64 888}
!199 = !{!97, !41, i64 896}
!200 = !{!187, !37, i64 0}
!201 = !{!187, !37, i64 4}
!202 = distinct !{!202, !74, !75}
!203 = !{!35, !37, i64 496}
!204 = !{!35, !37, i64 500}
!205 = !{!66, !57, i64 0}
!206 = !{!66, !57, i64 8}
!207 = !{!66, !57, i64 16}
!208 = !{!66, !57, i64 24}
!209 = distinct !{!209, !74, !75}
!210 = distinct !{!210, !74, !75}
!211 = distinct !{!211, !74, !75}
!212 = !{!35, !41, i64 584}
!213 = !{!35, !37, i64 20}
!214 = !{!35, !37, i64 24}
!215 = !{!35, !37, i64 660}
!216 = !{!35, !37, i64 664}
!217 = !{!35, !37, i64 396}
!218 = !{!35, !37, i64 112}
!219 = !{!35, !37, i64 96}
!220 = !{!35, !37, i64 404}
!221 = !{!35, !37, i64 25820}
!222 = !{!35, !37, i64 104}
!223 = !{!35, !37, i64 556}
!224 = distinct !{!224, !74, !75}
!225 = !{!97, !37, i64 304}
!226 = !{!35, !37, i64 36}
!227 = !{!100, !57, i64 56}
!228 = !{!100, !57, i64 16}
!229 = !{!100, !37, i64 32}
!230 = !{!100, !37, i64 64}
!231 = distinct !{!231, !74, !75}
!232 = distinct !{!232, !74, !75}
!233 = !{!100, !38, i64 84}
!234 = distinct !{!234, !74, !75}
!235 = !{!100, !72, i64 90}
!236 = !{!100, !37, i64 4}
!237 = !{!35, !43, i64 596}
!238 = !{!35, !43, i64 600}
!239 = !{!100, !37, i64 160}
!240 = distinct !{!240, !74, !75}
!241 = distinct !{!241, !74, !75}
!242 = !{!100, !37, i64 68}
!243 = !{!100, !37, i64 28}
!244 = !{!100, !37, i64 24}
!245 = distinct !{!245, !74, !75}
!246 = distinct !{!246, !74, !75}
!247 = !{!100, !43, i64 80}
!248 = distinct !{!248, !74, !75}
!249 = distinct !{!249, !74, !75}
!250 = !{!97, !57, i64 176}
!251 = !{!187, !37, i64 12}
!252 = distinct !{!252, !74, !75}
!253 = !{!97, !57, i64 392}
!254 = distinct !{!254, !74, !75}
!255 = distinct !{!255, !74, !75}
!256 = distinct !{!256, !74, !75}
!257 = distinct !{!257, !74, !75}
!258 = distinct !{!258, !74, !75}
!259 = distinct !{!259, !74, !75}
!260 = distinct !{!260, !74, !75}
!261 = !{i32 0, i32 2}
!262 = distinct !{!262, !74, !75}
!263 = distinct !{!263, !74, !75}
!264 = !{!100, !47, i64 40}
!265 = distinct !{!265, !74, !75}
!266 = distinct !{!266, !74, !75}
!267 = !{!100, !57, i64 48}
!268 = distinct !{!268, !74, !75}
!269 = distinct !{!269, !74, !75}
!270 = !{!35, !37, i64 560}
!271 = !{!35, !41, i64 568}
!272 = !{!97, !41, i64 264}
!273 = !{!97, !41, i64 256}
!274 = !{!97, !41, i64 280}
!275 = !{!97, !41, i64 288}
!276 = !{!97, !41, i64 272}
!277 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 8, !181, i64 24, i64 8, !181, i64 32, i64 8, !181, i64 40, i64 8, !181, i64 48, i64 4, !92, i64 52, i64 20, !90, i64 72, i64 8, !94, i64 80, i64 4, !92, i64 84, i64 4, !86, i64 88, i64 4, !86, i64 92, i64 4, !86, i64 96, i64 4, !86, i64 100, i64 4, !92, i64 104, i64 8, !181, i64 112, i64 8, !181, i64 120, i64 8, !181, i64 128, i64 8, !181, i64 136, i64 8, !181, i64 144, i64 8, !94, i64 152, i64 4, !92, i64 160, i64 8, !181, i64 168, i64 4, !92, i64 176, i64 8, !181, i64 184, i64 8, !181, i64 192, i64 8, !181, i64 200, i64 8, !181, i64 208, i64 8, !181, i64 216, i64 8, !181, i64 224, i64 8, !181, i64 232, i64 8, !181, i64 240, i64 8, !181, i64 248, i64 8, !181, i64 256, i64 8, !94, i64 264, i64 8, !94, i64 272, i64 8, !94, i64 280, i64 8, !94, i64 288, i64 8, !94, i64 296, i64 8, !94, i64 304, i64 4, !92, i64 312, i64 8, !94, i64 320, i64 8, !181, i64 328, i64 40, !90, i64 368, i64 4, !92, i64 376, i64 8, !181, i64 384, i64 8, !181, i64 392, i64 8, !181, i64 400, i64 40, !90, i64 440, i64 40, !90, i64 480, i64 8, !181, i64 488, i64 16, !90, i64 504, i64 4, !92, i64 508, i64 4, !86, i64 512, i64 8, !181, i64 520, i64 8, !181, i64 528, i64 8, !181, i64 536, i64 8, !181, i64 544, i64 8, !94, i64 552, i64 320, !90, i64 872, i64 8, !94, i64 880, i64 4, !92, i64 884, i64 4, !92, i64 888, i64 4, !92, i64 896, i64 8, !94, i64 904, i64 8, !94, i64 912, i64 4, !92, i64 916, i64 4, !92, i64 920, i64 8, !181, i64 928, i64 8, !181}
!278 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 4, !92, i64 28, i64 4, !92, i64 32, i64 4, !92, i64 36, i64 4, !92, i64 40, i64 4, !92, i64 44, i64 4, !92, i64 48, i64 4, !92, i64 52, i64 4, !92, i64 56, i64 4, !92, i64 60, i64 4, !92, i64 64, i64 4, !92, i64 68, i64 4, !92, i64 72, i64 4, !92, i64 76, i64 4, !92, i64 80, i64 4, !92, i64 84, i64 4, !92, i64 88, i64 4, !92, i64 92, i64 4, !92, i64 96, i64 4, !92, i64 100, i64 4, !92, i64 104, i64 4, !92, i64 108, i64 4, !92, i64 112, i64 4, !92, i64 116, i64 4, !92, i64 120, i64 4, !92, i64 124, i64 4, !92, i64 128, i64 4, !92, i64 132, i64 4, !92, i64 136, i64 4, !92, i64 140, i64 4, !92, i64 144, i64 4, !92, i64 152, i64 8, !94, i64 160, i64 16, !90, i64 176, i64 16, !90, i64 192, i64 16, !90, i64 208, i64 16, !90, i64 224, i64 64, !90, i64 288, i64 64, !90, i64 352, i64 8, !94, i64 360, i64 8, !94, i64 368, i64 4, !92, i64 372, i64 4, !92, i64 376, i64 8, !94, i64 384, i64 4, !92, i64 388, i64 4, !92, i64 392, i64 4, !92, i64 396, i64 4, !92, i64 400, i64 4, !92, i64 404, i64 4, !92, i64 408, i64 4, !92, i64 412, i64 4, !92, i64 416, i64 4, !92, i64 420, i64 4, !92, i64 424, i64 4, !92, i64 428, i64 4, !92, i64 432, i64 4, !92, i64 436, i64 4, !92, i64 440, i64 4, !92, i64 444, i64 4, !92, i64 448, i64 4, !92, i64 452, i64 4, !92, i64 456, i64 4, !86, i64 460, i64 4, !86, i64 464, i64 4, !92, i64 468, i64 8, !90, i64 476, i64 4, !92, i64 480, i64 4, !92, i64 488, i64 4, !92, i64 492, i64 4, !92, i64 496, i64 4, !92, i64 500, i64 4, !92, i64 504, i64 4, !92, i64 508, i64 4, !92, i64 512, i64 4, !86, i64 516, i64 4, !86, i64 520, i64 4, !86, i64 524, i64 4, !92, i64 528, i64 4, !92, i64 532, i64 4, !86, i64 536, i64 4, !86, i64 540, i64 4, !86, i64 544, i64 4, !92, i64 548, i64 4, !86, i64 552, i64 4, !92, i64 556, i64 4, !92, i64 560, i64 4, !92, i64 568, i64 8, !94, i64 576, i64 4, !92, i64 584, i64 8, !94, i64 592, i64 4, !86, i64 596, i64 4, !86, i64 600, i64 4, !86, i64 608, i64 8, !94, i64 616, i64 4, !92, i64 624, i64 8, !94, i64 632, i64 4, !92, i64 636, i64 4, !92, i64 640, i64 4, !92, i64 644, i64 4, !92, i64 648, i64 4, !92, i64 652, i64 4, !92, i64 656, i64 4, !92, i64 660, i64 4, !92, i64 664, i64 4, !92, i64 668, i64 4, !92, i64 672, i64 4, !92, i64 676, i64 4, !92, i64 680, i64 4, !92, i64 684, i64 4, !92, i64 688, i64 4, !92, i64 692, i64 4, !92, i64 696, i64 8, !94}
!279 = distinct !{!279, !74, !75}
!280 = !{!35, !37, i64 1844}
!281 = distinct !{!281, !74, !75}
!282 = !{!97, !41, i64 904}
!283 = !{!97, !37, i64 100}
!284 = !{!35, !37, i64 7248}
!285 = !{!35, !37, i64 7304}
!286 = !{!35, !37, i64 25816}
!287 = !{!35, !41, i64 14688}
!288 = !{!65, !41, i64 12136}
!289 = !{!97, !41, i64 544}
!290 = !{!65, !37, i64 36}
!291 = !{!97, !57, i64 120}
!292 = !{!35, !37, i64 1852}
!293 = !{!35, !37, i64 1740}
!294 = !{!97, !57, i64 520}
!295 = !{!97, !43, i64 508}
!296 = distinct !{!296, !74, !75}
!297 = !{!298, !37, i64 0}
!298 = !{!"", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !37, i64 16, !37, i64 20, !37, i64 24, !37, i64 28, !37, i64 32, !37, i64 36, !37, i64 40, !37, i64 44, !37, i64 48}
!299 = !{!35, !37, i64 32}
!300 = distinct !{!300, !74, !75}
!301 = !{!298, !37, i64 36}
!302 = !{!298, !37, i64 4}
!303 = !{!97, !57, i64 512}
!304 = !{!65, !38, i64 86}
!305 = !{!97, !37, i64 880}
!306 = !{!65, !37, i64 72}
!307 = !{!97, !43, i64 92}
!308 = !{!97, !43, i64 88}
!309 = !{!97, !37, i64 80}
!310 = !{!97, !43, i64 84}
!311 = !{!65, !43, i64 92}
!312 = !{!65, !43, i64 88}
!313 = !{!47, !47, i64 0}
!314 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 16, i64 8, !181, i64 24, i64 4, !92, i64 28, i64 4, !92, i64 32, i64 4, !92, i64 40, i64 8, !313, i64 48, i64 8, !181, i64 56, i64 8, !181, i64 64, i64 4, !92, i64 68, i64 4, !92, i64 72, i64 4, !92, i64 76, i64 4, !92, i64 80, i64 4, !86, i64 84, i64 1, !90, i64 86, i64 4, !90, i64 90, i64 2, !71, i64 92, i64 64, !90, i64 156, i64 4, !92, i64 160, i64 4, !92, i64 164, i64 4, !92}
!315 = !{i64 0, i64 8, !181, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 24, i64 8, !313, i64 32, i64 8, !181, i64 40, i64 8, !181, i64 48, i64 4, !92, i64 52, i64 4, !92, i64 56, i64 4, !92, i64 60, i64 4, !92, i64 64, i64 4, !86, i64 68, i64 1, !90, i64 70, i64 4, !90, i64 74, i64 2, !71, i64 76, i64 64, !90, i64 140, i64 4, !92, i64 144, i64 4, !92, i64 148, i64 4, !92}
!316 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 8, i64 4, !92, i64 16, i64 8, !313, i64 24, i64 8, !181, i64 32, i64 8, !181, i64 40, i64 4, !92, i64 44, i64 4, !92, i64 48, i64 4, !92, i64 52, i64 4, !92, i64 56, i64 4, !86, i64 60, i64 1, !90, i64 62, i64 4, !90, i64 66, i64 2, !71, i64 68, i64 64, !90, i64 132, i64 4, !92, i64 136, i64 4, !92, i64 140, i64 4, !92}
!317 = !{i64 0, i64 4, !92, i64 4, i64 4, !92, i64 12, i64 8, !313, i64 20, i64 8, !181, i64 28, i64 8, !181, i64 36, i64 4, !92, i64 40, i64 4, !92, i64 44, i64 4, !92, i64 48, i64 4, !92, i64 52, i64 4, !86, i64 56, i64 1, !90, i64 58, i64 4, !90, i64 62, i64 2, !71, i64 64, i64 64, !90, i64 128, i64 4, !92, i64 132, i64 4, !92, i64 136, i64 4, !92}
!318 = !{i64 0, i64 4, !92, i64 8, i64 8, !313, i64 16, i64 8, !181, i64 24, i64 8, !181, i64 32, i64 4, !92, i64 36, i64 4, !92, i64 40, i64 4, !92, i64 44, i64 4, !92, i64 48, i64 4, !86, i64 52, i64 1, !90, i64 54, i64 4, !90, i64 58, i64 2, !71, i64 60, i64 64, !90, i64 124, i64 4, !92, i64 128, i64 4, !92, i64 132, i64 4, !92}
!319 = !{i64 0, i64 8, !313, i64 8, i64 8, !181, i64 16, i64 8, !181, i64 24, i64 4, !92, i64 28, i64 4, !92, i64 32, i64 4, !92, i64 36, i64 4, !92, i64 40, i64 4, !86, i64 44, i64 1, !90, i64 46, i64 4, !90, i64 50, i64 2, !71, i64 52, i64 64, !90, i64 116, i64 4, !92, i64 120, i64 4, !92, i64 124, i64 4, !92}
!320 = !{i64 0, i64 8, !181, i64 8, i64 8, !181, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 4, !92, i64 28, i64 4, !92, i64 32, i64 4, !86, i64 36, i64 1, !90, i64 38, i64 4, !90, i64 42, i64 2, !71, i64 44, i64 64, !90, i64 108, i64 4, !92, i64 112, i64 4, !92, i64 116, i64 4, !92}
!321 = !{i64 0, i64 8, !181, i64 8, i64 4, !92, i64 12, i64 4, !92, i64 16, i64 4, !92, i64 20, i64 4, !92, i64 24, i64 4, !86, i64 28, i64 1, !90, i64 30, i64 4, !90, i64 34, i64 2, !71, i64 36, i64 64, !90, i64 100, i64 4, !92, i64 104, i64 4, !92, i64 108, i64 4, !92}
!322 = !{!65, !37, i64 4}
!323 = !{!65, !37, i64 0}
!324 = !{!35, !37, i64 14856}
!325 = !{!65, !37, i64 9460}
!326 = !{!97, !37, i64 168}
!327 = !{!97, !43, i64 96}
!328 = distinct !{!328, !74, !75}
!329 = !{!97, !57, i64 192}
!330 = distinct !{!330, !74, !75}
!331 = !{!97, !57, i64 216}
!332 = !{!97, !57, i64 224}
!333 = !{!35, !37, i64 648}
!334 = !{!65, !47, i64 24}
!335 = !{!35, !47, i64 15032}
!336 = !{!35, !37, i64 16388}
!337 = !{!35, !37, i64 25792}
!338 = !{!35, !37, i64 16384}
!339 = !{!65, !41, i64 12144}
!340 = !{!65, !41, i64 12128}
!341 = !{!35, !37, i64 1752}
!342 = !{!97, !57, i64 528}
!343 = distinct !{!343, !74, !75}
!344 = !{!97, !57, i64 536}
!345 = !{!35, !37, i64 1748}
!346 = distinct !{!346, !74, !75}
!347 = distinct !{!347, !74, !75}
!348 = distinct !{!348, !74, !75}
!349 = distinct !{!349, !74, !75}
!350 = distinct !{!350, !74, !75}
!351 = !{!35, !37, i64 16392}
!352 = !{!35, !37, i64 92}
!353 = distinct !{!353, !74, !75}
!354 = !{!355, !37, i64 36}
!355 = !{!"x264_weight_t", !38, i64 0, !38, i64 16, !37, i64 32, !37, i64 36, !37, i64 40, !41, i64 48}
!356 = !{!355, !37, i64 32}
!357 = !{!355, !37, i64 40}
!358 = !{!35, !41, i64 32896}
!359 = !{!35, !37, i64 26808}
!360 = !{!35, !37, i64 26800}
!361 = !{!35, !37, i64 26804}
!362 = distinct !{!362, !74, !75}
!363 = !{!65, !37, i64 32}
!364 = !{!35, !37, i64 26716}
!365 = !{!35, !37, i64 26712}
!366 = !{!35, !37, i64 26720}
!367 = !{!35, !37, i64 136}
!368 = distinct !{!368, !74, !75}
!369 = !{!355, !41, i64 48}
!370 = distinct !{!370, !74, !75}
!371 = !{!97, !37, i64 884}
!372 = !{!65, !38, i64 85}
!373 = !{!35, !37, i64 640}
!374 = !{!79, !37, i64 1204}
!375 = !{!65, !57, i64 12288}
!376 = !{!35, !37, i64 15024}
!377 = !{!97, !37, i64 912}
!378 = !{!35, !37, i64 15028}
!379 = !{!97, !37, i64 916}
!380 = !{!97, !57, i64 920}
!381 = !{!65, !57, i64 12304}
!382 = !{!65, !37, i64 40}
!383 = !{!65, !37, i64 80}
!384 = !{!97, !57, i64 928}
!385 = !{!65, !57, i64 12296}
!386 = !{!65, !37, i64 44}
!387 = !{!65, !57, i64 12312}
!388 = distinct !{!388, !74, !75}
!389 = distinct !{!389, !74, !75}
!390 = distinct !{!390, !74, !75}
!391 = distinct !{!391, !74, !75}
!392 = distinct !{!392, !74, !75}
!393 = distinct !{!393, !74, !75}
!394 = distinct !{!394, !74, !75}
!395 = distinct !{!395, !74, !75}
!396 = distinct !{!396, !74, !75}
!397 = distinct !{!397, !74, !75}
!398 = distinct !{!398, !74, !75}
!399 = distinct !{!399, !74, !75}
!400 = !{!100, !37, i64 164}
!401 = distinct !{!401, !74, !75}
