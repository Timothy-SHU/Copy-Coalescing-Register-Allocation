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

@x264_log2_lut = external local_unnamed_addr constant [128 x float], align 16
@x264_log2_lz_lut = external local_unnamed_addr constant [32 x float], align 16
@x264_exp2_lut = external local_unnamed_addr constant [64 x i8], align 16
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
@.str.11 = private unnamed_addr constant [8 x i8] c".mbtree\00", align 1
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
@.str.60 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.61 = private unnamed_addr constant [31 x i8] c"invalid zone: start=%d end=%d\0A\00", align 1
@.str.62 = private unnamed_addr constant [33 x i8] c"invalid zone: bitrate_factor=%f\0A\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"%d,%d,q=%d%n\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"%d,%d,b=%f%n\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"%d,%d%n\00", align 1
@.str.66 = private unnamed_addr constant [20 x i8] c"invalid zone: \22%s\22\0A\00", align 1
@.str.67 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.68 = private unnamed_addr constant [29 x i8] c"invalid zone param: %s = %s\0A\00", align 1
@.str.69 = private unnamed_addr constant [60 x i8] c"requested bitrate is too low. estimated minimum is %d kbps\0A\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"qscale[i] >= 0\00", align 1
@__PRETTY_FUNCTION__.init_pass2 = private unnamed_addr constant [25 x i8] c"int init_pass2(x264_t *)\00", align 1
@.str.72 = private unnamed_addr constant [21 x i8] c"rce->new_qscale >= 0\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"Error: 2pass curve failed to converge\0A\00", align 1
@.str.74 = private unnamed_addr constant [58 x i8] c"target: %.2f kbit/s, expected: %.2f kbit/s, avg QP: %.4f\0A\00", align 1
@.str.75 = private unnamed_addr constant [63 x i8] c"try reducing target bitrate or reducing qp_min (currently %d)\0A\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"try reducing target bitrate\0A\00", align 1
@.str.77 = private unnamed_addr constant [67 x i8] c"try increasing target bitrate or increasing qp_max (currently %d)\0A\00", align 1
@.str.78 = private unnamed_addr constant [31 x i8] c"try increasing target bitrate\0A\00", align 1
@.str.79 = private unnamed_addr constant [16 x i8] c"internal error\0A\00", align 1
@.str.80 = private unnamed_addr constant [49 x i8] c"vbv-maxrate issue, qpmax or vbv-maxrate too low\0A\00", align 1
@.str.81 = private unnamed_addr constant [24 x i8] c"final ratefactor: %.2f\0A\00", align 1
@.str.82 = private unnamed_addr constant [31 x i8] c"failed to rename \22%s\22 to \22%s\22\0A\00", align 1
@.str.83 = private unnamed_addr constant [38 x i8] c"frame >= 0 && frame < rc->num_entries\00", align 1
@__PRETTY_FUNCTION__.x264_ratecontrol_start = private unnamed_addr constant [48 x i8] c"void x264_ratecontrol_start(x264_t *, int, int)\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.84 = private unnamed_addr constant [33 x i8] c"slice=%c but 2pass stats say %c\0A\00", align 1
@slice_type_to_char = internal unnamed_addr constant [5 x i8] c"PBISS", align 1
@.str.85 = private unnamed_addr constant [45 x i8] c"2nd pass has more frames than 1st pass (%d)\0A\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"continuing anyway, at constant QP=%d\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"disabling adaptive B-frames\0A\00", align 1
@.str.88 = private unnamed_addr constant [97 x i8] c"in:%d out:%d type:%c dur:%d cpbdur:%d q:%.2f tex:%d mv:%d misc:%d imb:%d pmb:%d smb:%d d:%c ref:\00", align 1
@.str.89 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"w:%d,%d,%d\00", align 1
@.str.91 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"ratecontrol_end: stats file could not be written to\0A\00", align 1
@.str.93 = private unnamed_addr constant [37 x i8] c"VBV underflow (frame %d, %.0f bits)\0A\00", align 1
@.str.94 = private unnamed_addr constant [42 x i8] c"CPB %s: %.0lf bits in a %.0lf-bit buffer\0A\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"underflow\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_adaptive_quant_frame(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %4 = load float, ptr %3, align 4, !tbaa !35
  %5 = fcmp oeq float %4, 0.000000e+00
  br i1 %5, label %6, label %79

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %8 = load ptr, ptr %7, align 8, !tbaa !65
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %10 = load i32, ptr %9, align 16, !tbaa !68
  %11 = sext i32 %10 to i64
  %12 = shl nsw i64 %11, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %8, i8 0, i64 %12, i1 false)
  %13 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 61
  %14 = load ptr, ptr %13, align 16, !tbaa !69
  %15 = load i32, ptr %9, align 16, !tbaa !68
  %16 = sext i32 %15 to i64
  %17 = shl nsw i64 %16, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %14, i8 0, i64 %17, i1 false)
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %19 = load i32, ptr %18, align 16, !tbaa !70
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %220, label %21

21:                                               ; preds = %6
  %22 = load i32, ptr %9, align 16, !tbaa !68
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %220

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 65
  %26 = load ptr, ptr %25, align 16, !tbaa !71
  %27 = zext nneg i32 %22 to i64
  %28 = add nuw nsw i64 %27, 7
  %29 = and i64 %28, 4294967288
  %30 = add nsw i64 %27, -1
  %31 = insertelement <8 x i64> poison, i64 %30, i64 0
  %32 = shufflevector <8 x i64> %31, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %33

33:                                               ; preds = %75, %24
  %34 = phi i64 [ 0, %24 ], [ %76, %75 ]
  %35 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %24 ], [ %77, %75 ]
  %36 = icmp ule <8 x i64> %35, %32
  %37 = extractelement <8 x i1> %36, i64 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = getelementptr inbounds i16, ptr %26, i64 %34
  store i16 256, ptr %39, align 2, !tbaa !72
  br label %40

40:                                               ; preds = %38, %33
  %41 = extractelement <8 x i1> %36, i64 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %40
  %43 = or disjoint i64 %34, 1
  %44 = getelementptr inbounds i16, ptr %26, i64 %43
  store i16 256, ptr %44, align 2, !tbaa !72
  br label %45

45:                                               ; preds = %42, %40
  %46 = extractelement <8 x i1> %36, i64 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = or disjoint i64 %34, 2
  %49 = getelementptr inbounds i16, ptr %26, i64 %48
  store i16 256, ptr %49, align 2, !tbaa !72
  br label %50

50:                                               ; preds = %47, %45
  %51 = extractelement <8 x i1> %36, i64 3
  br i1 %51, label %52, label %55

52:                                               ; preds = %50
  %53 = or disjoint i64 %34, 3
  %54 = getelementptr inbounds i16, ptr %26, i64 %53
  store i16 256, ptr %54, align 2, !tbaa !72
  br label %55

55:                                               ; preds = %52, %50
  %56 = extractelement <8 x i1> %36, i64 4
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = or disjoint i64 %34, 4
  %59 = getelementptr inbounds i16, ptr %26, i64 %58
  store i16 256, ptr %59, align 2, !tbaa !72
  br label %60

60:                                               ; preds = %57, %55
  %61 = extractelement <8 x i1> %36, i64 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = or disjoint i64 %34, 5
  %64 = getelementptr inbounds i16, ptr %26, i64 %63
  store i16 256, ptr %64, align 2, !tbaa !72
  br label %65

65:                                               ; preds = %62, %60
  %66 = extractelement <8 x i1> %36, i64 6
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = or disjoint i64 %34, 6
  %69 = getelementptr inbounds i16, ptr %26, i64 %68
  store i16 256, ptr %69, align 2, !tbaa !72
  br label %70

70:                                               ; preds = %67, %65
  %71 = extractelement <8 x i1> %36, i64 7
  br i1 %71, label %72, label %75

72:                                               ; preds = %70
  %73 = or disjoint i64 %34, 7
  %74 = getelementptr inbounds i16, ptr %26, i64 %73
  store i16 256, ptr %74, align 2, !tbaa !72
  br label %75

75:                                               ; preds = %72, %70
  %76 = add i64 %34, 8
  %77 = add <8 x i64> %35, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %78 = icmp eq i64 %76, %29
  br i1 %78, label %220, label %33, !llvm.loop !74

79:                                               ; preds = %2
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %81 = load i32, ptr %80, align 8, !tbaa !78
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %146

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %85 = load ptr, ptr %84, align 16, !tbaa !79
  %86 = getelementptr inbounds %struct.x264_sps_t, ptr %85, i64 0, i32 17
  %87 = load i32, ptr %86, align 4, !tbaa !80
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  br label %92

92:                                               ; preds = %89, %117
  %93 = phi ptr [ %85, %89 ], [ %118, %117 ]
  %94 = phi float [ 0.000000e+00, %89 ], [ %120, %117 ]
  %95 = phi i32 [ 0, %89 ], [ %121, %117 ]
  %96 = phi float [ 0.000000e+00, %89 ], [ %119, %117 ]
  %97 = getelementptr inbounds %struct.x264_sps_t, ptr %93, i64 0, i32 16
  %98 = load i32, ptr %97, align 4, !tbaa !85
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %125, label %117

100:                                              ; preds = %117
  %101 = load float, ptr %3, align 4, !tbaa !35
  br label %102

102:                                              ; preds = %100, %83
  %103 = phi ptr [ %85, %83 ], [ %118, %100 ]
  %104 = phi float [ %4, %83 ], [ %101, %100 ]
  %105 = phi float [ 0.000000e+00, %83 ], [ %119, %100 ]
  %106 = phi float [ 0.000000e+00, %83 ], [ %120, %100 ]
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %108 = load i32, ptr %107, align 16, !tbaa !68
  %109 = sitofp i32 %108 to float
  %110 = fdiv float %106, %109
  %111 = fdiv float %105, %109
  %112 = fmul float %104, %110
  %113 = fadd float %111, -1.400000e+01
  %114 = fmul float %113, 5.000000e-01
  %115 = fdiv float %114, %110
  %116 = fsub float %110, %115
  br label %150

117:                                              ; preds = %125, %92
  %118 = phi ptr [ %93, %92 ], [ %142, %125 ]
  %119 = phi float [ %96, %92 ], [ %140, %125 ]
  %120 = phi float [ %94, %92 ], [ %139, %125 ]
  %121 = add nuw nsw i32 %95, 1
  %122 = getelementptr inbounds %struct.x264_sps_t, ptr %118, i64 0, i32 17
  %123 = load i32, ptr %122, align 4, !tbaa !80
  %124 = icmp slt i32 %121, %123
  br i1 %124, label %92, label %100, !llvm.loop !86

125:                                              ; preds = %92, %125
  %126 = phi float [ %139, %125 ], [ %94, %92 ]
  %127 = phi i32 [ %141, %125 ], [ 0, %92 ]
  %128 = phi float [ %140, %125 ], [ %96, %92 ]
  %129 = tail call fastcc i32 @ac_energy_mb(ptr noundef nonnull %0, i32 noundef %127, i32 noundef %95, ptr noundef %1) #23
  %130 = add i32 %129, 1
  %131 = uitofp i32 %130 to float
  %132 = tail call float @powf(float noundef %131, float noundef 1.250000e-01) #24
  %133 = load ptr, ptr %90, align 8, !tbaa !65
  %134 = load i32, ptr %91, align 4, !tbaa !87
  %135 = mul nsw i32 %134, %95
  %136 = add nsw i32 %135, %127
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds float, ptr %133, i64 %137
  store float %132, ptr %138, align 4, !tbaa !88
  %139 = fadd float %126, %132
  %140 = tail call float @llvm.fmuladd.f32(float %132, float %132, float %128)
  %141 = add nuw nsw i32 %127, 1
  %142 = load ptr, ptr %84, align 16, !tbaa !79
  %143 = getelementptr inbounds %struct.x264_sps_t, ptr %142, i64 0, i32 16
  %144 = load i32, ptr %143, align 4, !tbaa !85
  %145 = icmp slt i32 %141, %144
  br i1 %145, label %125, label %117, !llvm.loop !89

146:                                              ; preds = %79
  %147 = fmul float %4, 0x3FF0A29C80000000
  %148 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %149 = load ptr, ptr %148, align 16, !tbaa !79
  br label %150

150:                                              ; preds = %146, %102
  %151 = phi ptr [ %103, %102 ], [ %149, %146 ]
  %152 = phi float [ %116, %102 ], [ 0.000000e+00, %146 ]
  %153 = phi float [ %112, %102 ], [ %147, %146 ]
  %154 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %155 = getelementptr inbounds %struct.x264_sps_t, ptr %151, i64 0, i32 17
  %156 = load i32, ptr %155, align 4, !tbaa !80
  %157 = icmp sgt i32 %156, 0
  br i1 %157, label %158, label %220

158:                                              ; preds = %150
  %159 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 1
  %161 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 61
  %162 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %163 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 65
  br label %164

164:                                              ; preds = %158, %170
  %165 = phi ptr [ %151, %158 ], [ %171, %170 ]
  %166 = phi i32 [ 0, %158 ], [ %172, %170 ]
  %167 = getelementptr inbounds %struct.x264_sps_t, ptr %165, i64 0, i32 16
  %168 = load i32, ptr %167, align 4, !tbaa !85
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %214, %164
  %171 = phi ptr [ %165, %164 ], [ %216, %214 ]
  %172 = add nuw nsw i32 %166, 1
  %173 = getelementptr inbounds %struct.x264_sps_t, ptr %171, i64 0, i32 17
  %174 = load i32, ptr %173, align 4, !tbaa !80
  %175 = icmp slt i32 %172, %174
  br i1 %175, label %164, label %220, !llvm.loop !90

176:                                              ; preds = %164, %214
  %177 = phi i32 [ %215, %214 ], [ 0, %164 ]
  %178 = load i32, ptr %80, align 8, !tbaa !78
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %189

180:                                              ; preds = %176
  %181 = load ptr, ptr %159, align 8, !tbaa !65
  %182 = load i32, ptr %160, align 4, !tbaa !87
  %183 = mul nsw i32 %182, %166
  %184 = add nsw i32 %183, %177
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds float, ptr %181, i64 %185
  %187 = load float, ptr %186, align 4, !tbaa !88
  %188 = fsub float %187, %152
  br label %199

189:                                              ; preds = %176
  %190 = tail call fastcc i32 @ac_energy_mb(ptr noundef nonnull %0, i32 noundef %177, i32 noundef %166, ptr noundef %1) #23
  %191 = tail call i32 @llvm.umax.i32(i32 %190, i32 1)
  %192 = tail call fastcc float @x264_log2(i32 noundef %191) #23
  %193 = fadd float %192, 0xC02CDA9FC0000000
  %194 = load i32, ptr %160, align 4, !tbaa !87
  %195 = load ptr, ptr %159, align 8, !tbaa !65
  %196 = mul nsw i32 %194, %166
  %197 = add nsw i32 %196, %177
  %198 = sext i32 %197 to i64
  br label %199

199:                                              ; preds = %189, %180
  %200 = phi i64 [ %198, %189 ], [ %185, %180 ]
  %201 = phi ptr [ %195, %189 ], [ %181, %180 ]
  %202 = phi float [ %193, %189 ], [ %188, %180 ]
  %203 = fmul float %153, %202
  %204 = load ptr, ptr %161, align 16, !tbaa !69
  %205 = getelementptr inbounds float, ptr %204, i64 %200
  store float %203, ptr %205, align 4, !tbaa !88
  %206 = getelementptr inbounds float, ptr %201, i64 %200
  store float %203, ptr %206, align 4, !tbaa !88
  %207 = load i32, ptr %162, align 16, !tbaa !70
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %214, label %209

209:                                              ; preds = %199
  %210 = tail call fastcc i32 @x264_exp2fix8(float noundef %203) #23, !range !91
  %211 = trunc i32 %210 to i16
  %212 = load ptr, ptr %163, align 16, !tbaa !71
  %213 = getelementptr inbounds i16, ptr %212, i64 %200
  store i16 %211, ptr %213, align 2, !tbaa !72
  br label %214

214:                                              ; preds = %209, %199
  %215 = add nuw nsw i32 %177, 1
  %216 = load ptr, ptr %154, align 16, !tbaa !79
  %217 = getelementptr inbounds %struct.x264_sps_t, ptr %216, i64 0, i32 16
  %218 = load i32, ptr %217, align 4, !tbaa !85
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %176, label %170, !llvm.loop !92

220:                                              ; preds = %170, %75, %150, %21, %6
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ac_energy_mb(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !PGOFuncName !93 {
  %5 = tail call fastcc i32 @ac_energy_plane(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 0) #23
  %6 = tail call fastcc i32 @ac_energy_plane(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 1) #23
  %7 = add i32 %6, %5
  %8 = tail call fastcc i32 @ac_energy_plane(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef 2) #23
  %9 = add i32 %7, %8
  ret i32 %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc float @x264_log2(i32 noundef %0) unnamed_addr #5 !PGOFuncName !94 {
  %2 = tail call i32 @llvm.ctlz.i32(i32 %0, i1 true), !range !95
  %3 = shl i32 %0, %2
  %4 = lshr i32 %3, 24
  %5 = and i32 %4, 127
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds [128 x float], ptr @x264_log2_lut, i64 0, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !88
  %9 = zext nneg i32 %2 to i64
  %10 = getelementptr inbounds [32 x float], ptr @x264_log2_lz_lut, i64 0, i64 %9
  %11 = load float, ptr %10, align 4, !tbaa !88
  %12 = fadd float %8, %11
  ret float %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @x264_exp2fix8(float noundef %0) unnamed_addr #5 !PGOFuncName !96 {
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 0xC025555560000000, float 5.125000e+02)
  %3 = fptosi float %2 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = icmp ugt i32 %3, 1023
  br i1 %6, label %17, label %7

7:                                                ; preds = %5
  %8 = and i32 %3, 63
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds [64 x i8], ptr @x264_exp2_lut, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !97
  %12 = zext i8 %11 to i32
  %13 = or disjoint i32 %12, 256
  %14 = lshr i32 %3, 6
  %15 = shl nuw nsw i32 %13, %14
  %16 = lshr i32 %15, 8
  br label %17

17:                                               ; preds = %5, %1, %7
  %18 = phi i32 [ %16, %7 ], [ 0, %1 ], [ 65535, %5 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @ac_energy_plane(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) unnamed_addr #0 !PGOFuncName !98 {
  %6 = icmp eq i32 %4, 0
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 24, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 17
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %5
  %14 = and i32 %2, -2
  %15 = mul nsw i32 %9, %14
  %16 = add nsw i32 %15, %1
  %17 = select i1 %6, i32 4, i32 3
  %18 = shl i32 %16, %17
  %19 = and i32 %2, 1
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, i32 0, i32 %9
  %22 = add nsw i32 %18, %21
  br label %28

23:                                               ; preds = %5
  %24 = mul nsw i32 %9, %2
  %25 = add nsw i32 %24, %1
  %26 = select i1 %6, i32 4, i32 3
  %27 = shl i32 %25, %26
  br label %28

28:                                               ; preds = %23, %13
  %29 = phi i32 [ %22, %13 ], [ %27, %23 ]
  %30 = select i1 %6, i32 8, i32 6
  %31 = select i1 %6, i64 0, i64 3
  %32 = shl i32 %9, %11
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 12, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  %35 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 30, i64 %7
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = sext i32 %29 to i64
  %38 = getelementptr inbounds i8, ptr %36, i64 %37
  %39 = tail call i64 %34(ptr noundef %38, i32 noundef %32) #24
  %40 = trunc i64 %39 to i32
  %41 = lshr i64 %39, 32
  %42 = trunc i64 %41 to i32
  %43 = mul i32 %40, %40
  %44 = lshr i32 %43, %30
  %45 = sub i32 %42, %44
  ret i32 %45
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_macroblock_tree_read(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !102
  %6 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 43
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !105
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %7, i64 %10
  %12 = load i32, ptr %11, align 8, !tbaa !106
  %13 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %7, i64 %10, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !108
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %92, label %16

16:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  %17 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 54
  %18 = load i32, ptr %17, align 8, !tbaa !109
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %22 = load i32, ptr %21, align 16, !tbaa !68
  br label %58

23:                                               ; preds = %16
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 41
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %26 = and i32 %12, 255
  %27 = trunc i32 %12 to i8
  br label %28

28:                                               ; preds = %23, %54
  %29 = load i32, ptr %17, align 8, !tbaa !109
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %17, align 8, !tbaa !109
  %31 = load ptr, ptr %24, align 8, !tbaa !110
  %32 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 1, ptr noundef %31) #23
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %93, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %17, align 8, !tbaa !109
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 53, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !101
  %39 = load i32, ptr %25, align 16, !tbaa !68
  %40 = sext i32 %39 to i64
  %41 = load ptr, ptr %24, align 8, !tbaa !110
  %42 = tail call i64 @fread(ptr noundef %38, i64 noundef 2, i64 noundef %40, ptr noundef %41) #23
  %43 = trunc i64 %42 to i32
  %44 = load i32, ptr %25, align 16, !tbaa !68
  %45 = icmp eq i32 %44, %43
  br i1 %45, label %46, label %93

46:                                               ; preds = %34
  %47 = load i8, ptr %3, align 1, !tbaa !97
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %26, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, ptr %17, align 8, !tbaa !109
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str, i32 noundef %48, i32 noundef %26) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  br label %94

54:                                               ; preds = %46, %50
  %55 = icmp eq i8 %47, %27
  br i1 %55, label %56, label %28, !llvm.loop !111

56:                                               ; preds = %54
  %57 = load i32, ptr %17, align 8, !tbaa !109
  br label %58

58:                                               ; preds = %20, %56
  %59 = phi i32 [ %18, %20 ], [ %57, %56 ]
  %60 = phi i32 [ %22, %20 ], [ %43, %56 ]
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %90

62:                                               ; preds = %58
  %63 = sext i32 %59 to i64
  %64 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 53, i64 %63
  %65 = load ptr, ptr %64, align 8, !tbaa !101
  %66 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 60
  %67 = load ptr, ptr %66, align 8, !tbaa !65
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 16
  %69 = load i32, ptr %68, align 16, !tbaa !70
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 65
  %72 = zext nneg i32 %60 to i64
  br label %73

73:                                               ; preds = %62, %87
  %74 = phi i64 [ 0, %62 ], [ %88, %87 ]
  %75 = getelementptr inbounds i16, ptr %65, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !72
  %77 = tail call fastcc zeroext i16 @endian_fix16(i16 noundef zeroext %76) #23
  %78 = sitofp i16 %77 to double
  %79 = fmul double %78, 3.906250e-03
  %80 = fptrunc double %79 to float
  %81 = getelementptr inbounds float, ptr %67, i64 %74
  store float %80, ptr %81, align 4, !tbaa !88
  br i1 %70, label %87, label %82

82:                                               ; preds = %73
  %83 = tail call fastcc i32 @x264_exp2fix8(float noundef %80) #23, !range !91
  %84 = trunc i32 %83 to i16
  %85 = load ptr, ptr %71, align 16, !tbaa !71
  %86 = getelementptr inbounds i16, ptr %85, i64 %74
  store i16 %84, ptr %86, align 2, !tbaa !72
  br label %87

87:                                               ; preds = %73, %82
  %88 = add nuw nsw i64 %74, 1
  %89 = icmp eq i64 %88, %72
  br i1 %89, label %90, label %73, !llvm.loop !112

90:                                               ; preds = %87, %58
  %91 = add nsw i32 %59, -1
  store i32 %91, ptr %17, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  br label %94

92:                                               ; preds = %2
  tail call void @x264_adaptive_quant_frame(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  br label %94

93:                                               ; preds = %28, %34
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.1) #24
  br label %94

94:                                               ; preds = %92, %90, %53, %93
  %95 = phi i32 [ -1, %93 ], [ -1, %53 ], [ 0, %90 ], [ 0, %92 ]
  ret i32 %95
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i16 @endian_fix16(i16 noundef zeroext %0) unnamed_addr #5 !PGOFuncName !113 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_reference_build_list_optimal(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = alloca [16 x ptr], align 16
  %3 = alloca [16 x [3 x %struct.x264_weight_t]], align 16
  %4 = alloca [16 x i32], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !102
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 3072, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #25
  %9 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %8, i64 0, i32 19
  %10 = load i32, ptr %9, align 4, !tbaa !115
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %12 = load i32, ptr %11, align 8, !tbaa !116
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %55

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %2, ptr noundef nonnull align 16 dereferenceable(128) %15, i64 128, i1 false)
  %16 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %8, i64 0, i32 18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %16, i64 64, i1 false)
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %18 = load ptr, ptr %17, align 8, !tbaa !117
  %19 = getelementptr inbounds %struct.x264_frame, ptr %18, i64 0, i32 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3072) %3, ptr noundef nonnull align 16 dereferenceable(3072) %19, i64 3072, i1 false)
  %20 = getelementptr inbounds %struct.x264_frame, ptr %18, i64 0, i32 37, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2880) %20, i8 0, i64 2880, i1 false)
  %21 = load i32, ptr %11, align 8, !tbaa !116
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
  store i32 -1, ptr %32, align 4, !tbaa !99
  %33 = getelementptr inbounds [16 x ptr], ptr %2, i64 0, i64 %31
  %34 = load ptr, ptr %33, align 8, !tbaa !101
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %24
  store ptr %34, ptr %35, align 8, !tbaa !101
  %36 = load ptr, ptr %17, align 8, !tbaa !117
  %37 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 37, i64 %24
  %38 = getelementptr inbounds [16 x [3 x %struct.x264_weight_t]], ptr %3, i64 0, i64 %31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %37, ptr noundef nonnull align 16 dereferenceable(192) %38, i64 192, i1 false)
  %39 = add nuw nsw i64 %24, 1
  %40 = load i32, ptr %11, align 8, !tbaa !116
  %41 = sext i32 %40 to i64
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %23, label %55, !llvm.loop !118

43:                                               ; preds = %27, %43
  %44 = phi i64 [ 1, %27 ], [ %53, %43 ]
  %45 = phi i32 [ 1, %27 ], [ %52, %43 ]
  %46 = phi i32 [ -1, %27 ], [ %50, %43 ]
  %47 = getelementptr inbounds [16 x i32], ptr %4, i64 0, i64 %44
  %48 = load i32, ptr %47, align 4, !tbaa !99
  %49 = icmp sgt i32 %48, %46
  %50 = tail call i32 @llvm.smax.i32(i32 %48, i32 %46)
  %51 = trunc i64 %44 to i32
  %52 = select i1 %49, i32 %51, i32 %45
  %53 = add nuw nsw i64 %44, 1
  %54 = icmp eq i64 %53, %28
  br i1 %54, label %29, label %43, !llvm.loop !119

55:                                               ; preds = %29, %14, %1
  %56 = phi i32 [ -1, %1 ], [ 0, %14 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 3072, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #25
  ret i32 %56
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_ratecontrol_init_reconfigurable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = icmp ne i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !120
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %229

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !121
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %16 = load i32, ptr %15, align 16, !tbaa !68
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !122
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 80, i32 120
  %21 = mul nsw i32 %20, %16
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !123
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %28 = load float, ptr %27, align 8, !tbaa !124
  %29 = fpext float %28 to double
  %30 = fsub double 1.000000e+00, %29
  %31 = fmul double %30, 1.350000e+01
  br label %32

32:                                               ; preds = %14, %26
  %33 = phi double [ %31, %26 ], [ 0.000000e+00, %14 ]
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 7
  %35 = load double, ptr %34, align 8, !tbaa !125
  %36 = fsub double 1.000000e+00, %35
  %37 = tail call double @pow(double noundef %22, double noundef %36) #24
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %39 = load float, ptr %38, align 8, !tbaa !126
  %40 = fpext float %39 to double
  %41 = fadd double %33, %40
  %42 = tail call fastcc double @qp2qscale(double noundef %41) #23
  %43 = fdiv double %37, %42
  %44 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 33
  store double %43, ptr %44, align 8, !tbaa !127
  br label %45

45:                                               ; preds = %32, %10
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %47 = load i32, ptr %46, align 4, !tbaa !128
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %229

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %51 = load i32, ptr %50, align 8, !tbaa !129
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %229

53:                                               ; preds = %49
  %54 = sitofp i32 %47 to double
  %55 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 4
  %56 = load double, ptr %55, align 8, !tbaa !130
  %57 = fdiv double %54, %56
  %58 = fptosi double %57 to i32
  %59 = icmp slt i32 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  store i32 %58, ptr %50, align 8, !tbaa !129
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %58) #24
  br label %61

61:                                               ; preds = %60, %53
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 3
  %63 = load i32, ptr %62, align 4, !tbaa !131
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, ptr %46, align 4, !tbaa !128
  br label %70

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %69 = load i32, ptr %68, align 4, !tbaa !132
  store i32 %69, ptr %46, align 4, !tbaa !128
  br label %70

70:                                               ; preds = %65, %67
  %71 = phi i32 [ %66, %65 ], [ %69, %67 ]
  %72 = load i32, ptr %50, align 8, !tbaa !129
  %73 = mul nsw i32 %72, 1000
  %74 = mul nsw i32 %71, 1000
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %76 = load i32, ptr %75, align 8, !tbaa !133
  %77 = icmp ne i32 %76, 0
  %78 = and i1 %5, %77
  br i1 %78, label %79, label %146

79:                                               ; preds = %70
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %81 = load ptr, ptr %80, align 16, !tbaa !79
  %82 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21
  store i32 1, ptr %82, align 4, !tbaa !134
  %83 = icmp eq i32 %76, 2
  %84 = zext i1 %83 to i32
  %85 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 7
  store i32 %84, ptr %85, align 4, !tbaa !135
  %86 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 11
  store i32 0, ptr %86, align 4, !tbaa !136
  %87 = tail call i32 @llvm.cttz.i32(i32 %74, i1 true), !range !137
  %88 = add nsw i32 %87, -6
  %89 = tail call fastcc i32 @x264_clip3(i32 noundef %88, i32 noundef 0, i32 noundef 15) #23
  %90 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 1
  store i32 %89, ptr %90, align 4, !tbaa !138
  %91 = add nsw i32 %89, 6
  %92 = ashr i32 %74, %91
  %93 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 3
  store i32 %92, ptr %93, align 4, !tbaa !139
  %94 = shl i32 %92, %91
  %95 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 5
  store i32 %94, ptr %95, align 4, !tbaa !140
  %96 = tail call i32 @llvm.cttz.i32(i32 %73, i1 true), !range !137
  %97 = add nsw i32 %96, -4
  %98 = tail call fastcc i32 @x264_clip3(i32 noundef %97, i32 noundef 0, i32 noundef 15) #23
  %99 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 2
  store i32 %98, ptr %99, align 4, !tbaa !141
  %100 = add nsw i32 %98, 4
  %101 = ashr i32 %73, %100
  %102 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 4
  store i32 %101, ptr %102, align 4, !tbaa !142
  %103 = shl i32 %101, %100
  %104 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 6
  store i32 %103, ptr %104, align 4, !tbaa !143
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %106 = load i32, ptr %105, align 4, !tbaa !144
  %107 = sitofp i32 %106 to double
  %108 = fmul double %107, 5.000000e-01
  %109 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 17
  %110 = load i32, ptr %109, align 4, !tbaa !145
  %111 = uitofp i32 %110 to double
  %112 = fmul double %108, %111
  %113 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 16
  %114 = load i32, ptr %113, align 4, !tbaa !146
  %115 = uitofp i32 %114 to double
  %116 = fdiv double %112, %115
  %117 = fptosi double %116 to i32
  %118 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 30
  %119 = load i32, ptr %118, align 4, !tbaa !147
  %120 = sitofp i32 %119 to double
  %121 = fmul double %120, 5.000000e-01
  %122 = fmul double %121, %111
  %123 = fdiv double %122, %115
  %124 = fptosi double %123 to i32
  %125 = sitofp i32 %103 to double
  %126 = fmul double %125, 9.000000e+04
  %127 = sitofp i32 %94 to double
  %128 = fdiv double %126, %127
  %129 = fadd double %128, 5.000000e-01
  %130 = fptosi double %129 to i32
  %131 = tail call i32 @llvm.ctlz.i32(i32 %130, i1 true), !range !95
  %132 = sub nuw nsw i32 32, %131
  %133 = tail call fastcc i32 @x264_clip3(i32 noundef %132, i32 noundef 4, i32 noundef 22) #23
  %134 = add nsw i32 %133, 2
  %135 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 8
  store i32 %134, ptr %135, align 4, !tbaa !148
  %136 = tail call i32 @llvm.ctlz.i32(i32 %117, i1 true), !range !95
  %137 = sub nuw nsw i32 32, %136
  %138 = tail call fastcc i32 @x264_clip3(i32 noundef %137, i32 noundef 4, i32 noundef 32) #23
  %139 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 9
  store i32 %138, ptr %139, align 4, !tbaa !149
  %140 = tail call i32 @llvm.ctlz.i32(i32 %124, i1 true), !range !95
  %141 = sub nuw nsw i32 32, %140
  %142 = tail call fastcc i32 @x264_clip3(i32 noundef %141, i32 noundef 4, i32 noundef 32) #23
  %143 = getelementptr inbounds %struct.x264_sps_t, ptr %81, i64 0, i32 24, i32 21, i32 10
  store i32 %142, ptr %143, align 4, !tbaa !150
  %144 = tail call i32 @llvm.smin.i32(i32 %73, i32 %103)
  %145 = tail call i32 @llvm.smin.i32(i32 %74, i32 %94)
  br label %150

146:                                              ; preds = %70
  %147 = icmp eq i32 %76, 0
  %148 = or i1 %5, %147
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.3) #24
  br label %229

150:                                              ; preds = %146, %79
  %151 = phi i32 [ %145, %79 ], [ %74, %146 ]
  %152 = phi i32 [ %144, %79 ], [ %73, %146 ]
  %153 = sitofp i32 %151 to double
  %154 = load double, ptr %55, align 8, !tbaa !130
  %155 = fdiv double %153, %154
  %156 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  store double %155, ptr %156, align 8, !tbaa !151
  %157 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 21
  store double %153, ptr %157, align 8, !tbaa !152
  %158 = sitofp i32 %152 to double
  %159 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  store double %158, ptr %159, align 8, !tbaa !153
  %160 = fmul double %155, 1.100000e+00
  %161 = fcmp ogt double %160, %158
  %162 = zext i1 %161 to i32
  %163 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23
  store i32 %162, ptr %163, align 8, !tbaa !154
  %164 = fdiv double %155, %158
  %165 = fmul double %154, %155
  %166 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 5
  %167 = load double, ptr %166, align 8, !tbaa !155
  %168 = fdiv double %165, %167
  %169 = fsub double 1.500000e+00, %168
  %170 = fcmp olt double %169, 0.000000e+00
  %171 = select i1 %170, double 0.000000e+00, double %169
  %172 = fmul double %164, -5.000000e-01
  %173 = tail call double @llvm.fmuladd.f64(double %172, double %171, double 1.000000e+00)
  %174 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 30
  store double %173, ptr %174, align 8, !tbaa !156
  %175 = load i32, ptr %11, align 8, !tbaa !121
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %189

177:                                              ; preds = %150
  %178 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 7
  %179 = load float, ptr %178, align 4, !tbaa !157
  %180 = fcmp une float %179, 0.000000e+00
  br i1 %180, label %181, label %189

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %183 = load float, ptr %182, align 8, !tbaa !126
  %184 = fsub float %179, %183
  %185 = fpext float %184 to double
  %186 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 24
  store double %185, ptr %186, align 8, !tbaa !158
  %187 = fcmp ugt float %184, 0.000000e+00
  br i1 %187, label %189, label %188

188:                                              ; preds = %181
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.4) #24
  store double 0.000000e+00, ptr %186, align 8, !tbaa !158
  br label %189

189:                                              ; preds = %181, %188, %177, %150
  br i1 %5, label %190, label %229

190:                                              ; preds = %189
  %191 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %192 = load float, ptr %191, align 4, !tbaa !159
  %193 = fcmp ogt float %192, 1.000000e+00
  br i1 %193, label %194, label %201

194:                                              ; preds = %190
  %195 = load i32, ptr %50, align 8, !tbaa !129
  %196 = sitofp i32 %195 to float
  %197 = fdiv float %192, %196
  %198 = fpext float %197 to double
  %199 = tail call fastcc double @x264_clip3f(double noundef %198, double noundef 0.000000e+00, double noundef 1.000000e+00) #23
  %200 = fptrunc double %199 to float
  br label %201

201:                                              ; preds = %194, %190
  %202 = phi float [ %200, %194 ], [ %192, %190 ]
  %203 = fpext float %202 to double
  %204 = load double, ptr %156, align 8, !tbaa !151
  %205 = load double, ptr %159, align 8, !tbaa !153
  %206 = fdiv double %204, %205
  %207 = fcmp olt double %206, %203
  %208 = select i1 %207, double %203, double %206
  %209 = tail call fastcc double @x264_clip3f(double noundef %208, double noundef 0.000000e+00, double noundef 1.000000e+00) #23
  %210 = fptrunc double %209 to float
  store float %210, ptr %191, align 4, !tbaa !159
  %211 = fpext float %210 to double
  %212 = fmul double %205, %211
  %213 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 18
  store double %212, ptr %213, align 8, !tbaa !160
  %214 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  store i32 1, ptr %214, align 8, !tbaa !161
  %215 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1
  %216 = load i32, ptr %215, align 4, !tbaa !120
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %227

218:                                              ; preds = %201
  %219 = load i32, ptr %11, align 8, !tbaa !121
  %220 = icmp eq i32 %219, 2
  br i1 %220, label %221, label %227

221:                                              ; preds = %218
  %222 = load i32, ptr %46, align 4, !tbaa !128
  %223 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %224 = load i32, ptr %223, align 4, !tbaa !132
  %225 = icmp sle i32 %222, %224
  %226 = zext i1 %225 to i32
  br label %227

227:                                              ; preds = %221, %218, %201
  %228 = phi i32 [ 0, %218 ], [ 0, %201 ], [ %226, %221 ]
  store i32 %228, ptr %62, align 4, !tbaa !131
  br label %229

229:                                              ; preds = %45, %49, %189, %227, %149, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @qp2qscale(double noundef %0) unnamed_addr #0 !PGOFuncName !162 {
  %2 = fadd double %0, -1.200000e+01
  %3 = fdiv double %2, 6.000000e+00
  %4 = tail call double @exp2(double %3) #25
  %5 = fmul double %4, 8.500000e-01
  ret double %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 !PGOFuncName !163 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @x264_clip3f(double noundef %0, double noundef %1, double noundef %2) unnamed_addr #5 !PGOFuncName !164 {
  %4 = fcmp olt double %0, %1
  %5 = fcmp ogt double %0, %2
  %6 = select i1 %5, double %2, double %0
  %7 = select i1 %4, double %1, double %6
  ret double %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_ratecontrol_new(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca float, align 4
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !165
  %11 = mul i32 %10, 936
  %12 = tail call ptr @x264_malloc(i32 noundef %11) #24
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  store ptr %12, ptr %13, align 16, !tbaa !102
  %14 = icmp eq ptr %12, null
  br i1 %14, label %665, label %15

15:                                               ; preds = %1
  %16 = load i32, ptr %9, align 4, !tbaa !165
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %17, 936
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %12, i8 0, i64 %18, i1 false)
  %19 = load ptr, ptr %13, align 16, !tbaa !102
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %21 = load i32, ptr %20, align 8, !tbaa !121
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i32 0, ptr %19, align 8, !tbaa !166
  br label %32

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %26 = load i32, ptr %25, align 8, !tbaa !167
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, ptr %19, align 8, !tbaa !166
  %29 = icmp eq i32 %21, 2
  %30 = icmp ne i32 %26, 0
  %31 = select i1 %29, i1 %30, i1 false
  br label %32

32:                                               ; preds = %24, %23
  %33 = phi i1 [ false, %23 ], [ %31, %24 ]
  %34 = zext i1 %33 to i32
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 1
  store i32 %34, ptr %35, align 4, !tbaa !120
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %37 = load i32, ptr %36, align 4, !tbaa !168
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %41 = load i32, ptr %40, align 16, !tbaa !169
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %39
  %44 = uitofp i32 %37 to float
  %45 = uitofp i32 %41 to float
  %46 = fdiv float %44, %45
  %47 = fpext float %46 to double
  br label %48

48:                                               ; preds = %32, %39, %43
  %49 = phi double [ %47, %43 ], [ 2.500000e+01, %39 ], [ 2.500000e+01, %32 ]
  %50 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 4
  store double %49, ptr %50, align 8, !tbaa !130
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %52 = load i32, ptr %51, align 8, !tbaa !123
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  store float 1.000000e+00, ptr %55, align 4, !tbaa !170
  br label %60

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %58 = load float, ptr %57, align 8, !tbaa !124
  %59 = fpext float %58 to double
  br label %60

60:                                               ; preds = %56, %54
  %61 = phi double [ %59, %56 ], [ 1.000000e+00, %54 ]
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 7
  store double %61, ptr %62, align 8
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %64 = load i32, ptr %63, align 4, !tbaa !132
  %65 = sitofp i32 %64 to double
  %66 = fmul double %65, 1.000000e+03
  %67 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 5
  store double %66, ptr %67, align 8, !tbaa !155
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 8
  %69 = load float, ptr %68, align 8, !tbaa !171
  %70 = fpext float %69 to double
  %71 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 6
  store double %70, ptr %71, align 8, !tbaa !172
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %73 = load i32, ptr %72, align 16, !tbaa !68
  %74 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 8
  store i32 %73, ptr %74, align 8, !tbaa !173
  %75 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 46
  store i32 -1, ptr %75, align 8, !tbaa !174
  %76 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 30
  store double 1.000000e+00, ptr %76, align 8, !tbaa !156
  %77 = icmp eq i32 %21, 1
  br i1 %77, label %78, label %83

78:                                               ; preds = %60
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %80 = load i32, ptr %79, align 8, !tbaa !167
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %78
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.5) #24
  br label %665

83:                                               ; preds = %78, %60
  tail call void @x264_ratecontrol_init_reconfigurable(ptr noundef nonnull %0, i32 noundef 1) #23
  %84 = load double, ptr %71, align 8, !tbaa !172
  %85 = fcmp olt double %84, 1.000000e-02
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.6) #24
  store double 1.000000e-02, ptr %71, align 8, !tbaa !172
  br label %87

87:                                               ; preds = %86, %83
  %88 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 2
  %89 = load i32, ptr %88, align 8, !tbaa !161
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %93 = load i32, ptr %92, align 8, !tbaa !78
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %91, %87
  %96 = phi i1 [ true, %87 ], [ %94, %91 ]
  %97 = zext i1 %96 to i32
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 72
  store i32 %97, ptr %98, align 16, !tbaa !175
  %99 = load i32, ptr %19, align 8, !tbaa !166
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 48
  store double 1.000000e-02, ptr %102, align 8, !tbaa !176
  %103 = load i32, ptr %20, align 8, !tbaa !121
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %107 = load float, ptr %106, align 8, !tbaa !126
  br label %108

108:                                              ; preds = %101, %105
  %109 = phi float [ %107, %105 ], [ 2.400000e+01, %101 ]
  %110 = fpext float %109 to double
  %111 = fmul double %110, 1.000000e-02
  %112 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 47
  store double %111, ptr %112, align 8, !tbaa !177
  %113 = load double, ptr %62, align 8, !tbaa !125
  %114 = tail call double @pow(double noundef 7.000000e+05, double noundef %113) #24
  %115 = fmul double %114, 1.000000e-02
  %116 = load i32, ptr %72, align 16, !tbaa !68
  %117 = sitofp i32 %116 to double
  %118 = tail call double @sqrt(double %117)
  %119 = tail call double @llvm.fabs.f64(double %118)
  %120 = fmul double %115, %119
  %121 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 27
  store double %120, ptr %121, align 8, !tbaa !178
  %122 = load double, ptr %67, align 8, !tbaa !155
  %123 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 4
  %124 = load double, ptr %123, align 8, !tbaa !130
  %125 = fdiv double %122, %124
  %126 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 29
  store double %125, ptr %126, align 8, !tbaa !179
  store i32 2, ptr %75, align 8, !tbaa !174
  br label %127

127:                                              ; preds = %108, %95
  %128 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %129 = load float, ptr %128, align 8, !tbaa !180
  %130 = tail call float @log2f(float noundef %129) #24
  %131 = fpext float %130 to double
  %132 = fmul double %131, 6.000000e+00
  %133 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 34
  store double %132, ptr %133, align 8, !tbaa !181
  %134 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %135 = load float, ptr %134, align 4, !tbaa !170
  %136 = tail call float @log2f(float noundef %135) #24
  %137 = fpext float %136 to double
  %138 = fmul double %137, 6.000000e+00
  %139 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 35
  store double %138, ptr %139, align 8, !tbaa !182
  %140 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %141 = load i32, ptr %140, align 4, !tbaa !183
  %142 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 9
  store i32 %141, ptr %142, align 4, !tbaa !99
  %143 = sitofp i32 %141 to double
  %144 = load double, ptr %133, align 8, !tbaa !181
  %145 = fsub double %143, %144
  %146 = fadd double %145, 5.000000e-01
  %147 = fptosi double %146 to i32
  %148 = tail call fastcc i32 @x264_clip3(i32 noundef %147, i32 noundef 0, i32 noundef 51) #23
  %149 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 9, i64 2
  store i32 %148, ptr %149, align 4, !tbaa !99
  %150 = load i32, ptr %140, align 4, !tbaa !183
  %151 = sitofp i32 %150 to double
  %152 = fadd double %138, %151
  %153 = fadd double %152, 5.000000e-01
  %154 = fptosi double %153 to i32
  %155 = tail call fastcc i32 @x264_clip3(i32 noundef %154, i32 noundef 0, i32 noundef 51) #23
  %156 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 9, i64 1
  store i32 %155, ptr %156, align 4, !tbaa !99
  %157 = fadd double %144, 5.000000e-01
  %158 = fptosi double %157 to i32
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 64
  store i32 %158, ptr %159, align 4, !tbaa !184
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %161 = load i32, ptr %160, align 8, !tbaa !185
  %162 = sitofp i32 %161 to double
  %163 = fdiv double %162, 6.000000e+00
  %164 = tail call double @exp2(double %163) #25
  %165 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 52
  store double %164, ptr %165, align 8, !tbaa !186
  %166 = tail call fastcc double @qp2qscale(double noundef 2.600000e+01) #23
  %167 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 44
  store double %166, ptr %167, align 8, !tbaa !187
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !188
  %170 = load i32, ptr %9, align 4, !tbaa !165
  %171 = mul nsw i32 %170, %169
  %172 = mul i32 %171, 160
  %173 = add i32 %172, 160
  %174 = tail call ptr @x264_malloc(i32 noundef %173) #24
  %175 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 22
  store ptr %174, ptr %175, align 8, !tbaa !189
  %176 = icmp eq ptr %174, null
  br i1 %176, label %665, label %177

177:                                              ; preds = %127
  %178 = tail call ptr @x264_malloc(i32 noundef 32) #24
  %179 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 62
  store ptr %178, ptr %179, align 8, !tbaa !190
  %180 = icmp eq ptr %178, null
  br i1 %180, label %665, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %183 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %184 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %185 = icmp slt i32 %171, 0
  %186 = add i32 %171, 1
  %187 = zext i32 %186 to i64
  br label %193

188:                                              ; preds = %222
  %189 = load ptr, ptr %179, align 8, !tbaa !190
  %190 = load ptr, ptr %175, align 8, !tbaa !189
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %189, ptr noundef nonnull align 8 dereferenceable(32) %190, i64 32, i1 false), !tbaa.struct !191
  %191 = tail call fastcc i32 @parse_zones(ptr noundef %0) #23
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %229, label %230

193:                                              ; preds = %181, %222
  %194 = phi i64 [ 0, %181 ], [ %227, %222 ]
  %195 = load i32, ptr %20, align 8, !tbaa !121
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = load float, ptr %182, align 8, !tbaa !126
  br label %199

199:                                              ; preds = %193, %197
  %200 = phi float [ %198, %197 ], [ 2.400000e+01, %193 ]
  %201 = fpext float %200 to double
  %202 = tail call fastcc double @qp2qscale(double noundef %201) #23
  %203 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 45, i64 %194
  store double %202, ptr %203, align 8, !tbaa !192
  %204 = load i32, ptr %183, align 8, !tbaa !193
  %205 = sitofp i32 %204 to double
  %206 = tail call fastcc double @qp2qscale(double noundef %205) #23
  %207 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 50, i64 %194
  store double %206, ptr %207, align 8, !tbaa !192
  %208 = load i32, ptr %184, align 4, !tbaa !194
  %209 = sitofp i32 %208 to double
  %210 = tail call fastcc double @qp2qscale(double noundef %209) #23
  %211 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 51, i64 %194
  store double %210, ptr %211, align 8, !tbaa !192
  br i1 %185, label %222, label %212

212:                                              ; preds = %199
  %213 = load ptr, ptr %175, align 8, !tbaa !189
  br label %214

214:                                              ; preds = %212, %214
  %215 = phi i64 [ 0, %212 ], [ %220, %214 ]
  %216 = mul nuw nsw i64 %215, 5
  %217 = add nuw nsw i64 %216, %194
  %218 = getelementptr inbounds %struct.predictor_t, ptr %213, i64 %217
  store <2 x double> <double 2.000000e+00, double 1.000000e+00>, ptr %218, align 8, !tbaa !192
  %219 = getelementptr inbounds %struct.predictor_t, ptr %213, i64 %217, i32 2
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %219, align 8, !tbaa !192
  %220 = add nuw nsw i64 %215, 1
  %221 = icmp eq i64 %220, %187
  br i1 %221, label %222, label %214, !llvm.loop !195

222:                                              ; preds = %214, %199
  %223 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 61, i64 %194, i64 0
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %223, align 8, !tbaa !192
  %224 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 61, i64 %194, i64 0, i32 2
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %224, align 8, !tbaa !192
  %225 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 61, i64 %194, i64 1
  store <2 x double> <double 2.500000e-01, double 1.000000e+00>, ptr %225, align 8, !tbaa !192
  %226 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 61, i64 %194, i64 1, i32 2
  store <2 x double> <double 5.000000e-01, double 0.000000e+00>, ptr %226, align 8, !tbaa !192
  %227 = add nuw nsw i64 %194, 1
  %228 = icmp eq i64 %227, 5
  br i1 %228, label %188, label %193, !llvm.loop !196

229:                                              ; preds = %188
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.7) #24
  br label %665

230:                                              ; preds = %188
  %231 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %232 = load i32, ptr %231, align 8, !tbaa !167
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %570, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  %236 = load ptr, ptr %235, align 8, !tbaa !197
  %237 = icmp eq ptr %236, null
  br i1 %237, label %238, label %239

238:                                              ; preds = %234
  tail call void @__assert_fail(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef 598, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_new) #26
  unreachable

239:                                              ; preds = %234
  %240 = tail call ptr @x264_slurp_file(ptr noundef nonnull %236) #24
  %241 = icmp eq ptr %240, null
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10) #24
  br label %665

243:                                              ; preds = %239
  %244 = load i32, ptr %51, align 8, !tbaa !123
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %256, label %246

246:                                              ; preds = %243
  %247 = load ptr, ptr %235, align 8, !tbaa !197
  %248 = tail call fastcc ptr @x264_strcat_filename(ptr noundef %247, ptr noundef nonnull @.str.11) #23
  %249 = icmp eq ptr %248, null
  br i1 %249, label %665, label %250

250:                                              ; preds = %246
  %251 = tail call noalias ptr @fopen(ptr noundef nonnull %248, ptr noundef nonnull @.str.12) #23
  %252 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 41
  store ptr %251, ptr %252, align 8, !tbaa !110
  tail call void @x264_free(ptr noundef nonnull %248) #24
  %253 = load ptr, ptr %252, align 8, !tbaa !110
  %254 = icmp eq ptr %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13) #24
  br label %665

256:                                              ; preds = %250, %243
  %257 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(10) @.str.14, i64 noundef 9) #27
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %424

259:                                              ; preds = %256
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %260 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %240, i32 noundef 10) #27
  %261 = icmp eq ptr %260, null
  br i1 %261, label %422, label %262

262:                                              ; preds = %259
  store i8 0, ptr %260, align 1, !tbaa !97
  %263 = getelementptr inbounds i8, ptr %260, i64 1
  %264 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %240, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, ptr noundef nonnull %3) #24
  %265 = icmp eq i32 %264, 2
  br i1 %265, label %267, label %266

266:                                              ; preds = %262
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.16) #24
  br label %422

267:                                              ; preds = %262
  %268 = load i32, ptr %51, align 8, !tbaa !123
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %287, label %270

270:                                              ; preds = %267
  %271 = load i32, ptr %2, align 4, !tbaa !99
  %272 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %273 = load i32, ptr %272, align 4, !tbaa !198
  %274 = icmp eq i32 %271, %273
  br i1 %274, label %279, label %275

275:                                              ; preds = %270
  %276 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %277 = load i32, ptr %276, align 8, !tbaa !199
  %278 = load i32, ptr %3, align 4, !tbaa !99
  br label %284

279:                                              ; preds = %270
  %280 = load i32, ptr %3, align 4, !tbaa !99
  %281 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %282 = load i32, ptr %281, align 8, !tbaa !199
  %283 = icmp eq i32 %280, %282
  br i1 %283, label %287, label %284

284:                                              ; preds = %275, %279
  %285 = phi i32 [ %278, %275 ], [ %280, %279 ]
  %286 = phi i32 [ %277, %275 ], [ %282, %279 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.17, i32 noundef %273, i32 noundef %286, i32 noundef %271, i32 noundef %285) #24
  br label %422

287:                                              ; preds = %267, %279
  %288 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.18) #27
  %289 = icmp eq ptr %288, null
  br i1 %289, label %294, label %290

290:                                              ; preds = %287
  %291 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %288, ptr noundef nonnull @.str.19, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %292 = icmp eq i32 %291, 2
  br i1 %292, label %294, label %293

293:                                              ; preds = %290
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.20) #24
  br label %422

294:                                              ; preds = %290, %287
  %295 = load i32, ptr %4, align 4, !tbaa !99
  %296 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %297 = load i32, ptr %296, align 4, !tbaa !200
  %298 = icmp eq i32 %295, %297
  br i1 %298, label %303, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %301 = load i32, ptr %300, align 8, !tbaa !201
  %302 = load i32, ptr %5, align 4, !tbaa !99
  br label %308

303:                                              ; preds = %294
  %304 = load i32, ptr %5, align 4, !tbaa !99
  %305 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %306 = load i32, ptr %305, align 8, !tbaa !201
  %307 = icmp eq i32 %304, %306
  br i1 %307, label %311, label %308

308:                                              ; preds = %299, %303
  %309 = phi i32 [ %302, %299 ], [ %304, %303 ]
  %310 = phi i32 [ %301, %299 ], [ %306, %303 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.21, i32 noundef %297, i32 noundef %310, i32 noundef %295, i32 noundef %309) #24
  br label %422

311:                                              ; preds = %303
  %312 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.22) #27
  %313 = icmp eq ptr %312, null
  br i1 %313, label %324, label %314

314:                                              ; preds = %311
  %315 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %312, ptr noundef nonnull @.str.23, ptr noundef nonnull %2) #24
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %314
  %318 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %319 = load i32, ptr %318, align 4, !tbaa !202
  %320 = call i32 @llvm.smax.i32(i32 %319, i32 0)
  %321 = load i32, ptr %2, align 4, !tbaa !99
  %322 = icmp eq i32 %320, %321
  br i1 %322, label %324, label %323

323:                                              ; preds = %317
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %320, i32 noundef %321) #24
  br label %422

324:                                              ; preds = %317, %314, %311
  %325 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.25) #27
  %326 = icmp eq ptr %325, null
  br i1 %326, label %336, label %327

327:                                              ; preds = %324
  %328 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %325, ptr noundef nonnull @.str.26, ptr noundef nonnull %2) #24
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %336, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %332 = load i32, ptr %331, align 4, !tbaa !122
  %333 = load i32, ptr %2, align 4, !tbaa !99
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %336, label %335

335:                                              ; preds = %330
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.27, i32 noundef %332, i32 noundef %333) #24
  br label %422

336:                                              ; preds = %330, %327, %324
  %337 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.28) #27
  %338 = icmp eq ptr %337, null
  br i1 %338, label %348, label %339

339:                                              ; preds = %336
  %340 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %337, ptr noundef nonnull @.str.29, ptr noundef nonnull %2) #24
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %348, label %342

342:                                              ; preds = %339
  %343 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %344 = load i32, ptr %343, align 16, !tbaa !203
  %345 = load i32, ptr %2, align 4, !tbaa !99
  %346 = icmp eq i32 %344, %345
  br i1 %346, label %348, label %347

347:                                              ; preds = %342
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.30, i32 noundef %344, i32 noundef %345) #24
  br label %422

348:                                              ; preds = %342, %339, %336
  %349 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.31) #27
  %350 = icmp eq ptr %349, null
  br i1 %350, label %360, label %351

351:                                              ; preds = %348
  %352 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %349, ptr noundef nonnull @.str.32, ptr noundef nonnull %2) #24
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %360, label %354

354:                                              ; preds = %351
  %355 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %356 = load i32, ptr %355, align 16, !tbaa !204
  %357 = load i32, ptr %2, align 4, !tbaa !99
  %358 = icmp eq i32 %356, %357
  br i1 %358, label %360, label %359

359:                                              ; preds = %354
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.33, i32 noundef %356, i32 noundef %357) #24
  br label %422

360:                                              ; preds = %354, %351, %348
  %361 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.34) #27
  %362 = icmp eq ptr %361, null
  br i1 %362, label %372, label %363

363:                                              ; preds = %360
  %364 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %361, ptr noundef nonnull @.str.35, ptr noundef nonnull %2) #24
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %372, label %366

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %368 = load i32, ptr %367, align 4, !tbaa !144
  %369 = load i32, ptr %2, align 4, !tbaa !99
  %370 = icmp eq i32 %368, %369
  br i1 %370, label %372, label %371

371:                                              ; preds = %366
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.36, i32 noundef %368, i32 noundef %369) #24
  br label %422

372:                                              ; preds = %366, %363, %360
  %373 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.37) #27
  %374 = icmp eq ptr %373, null
  br i1 %374, label %379, label %375

375:                                              ; preds = %372
  %376 = load i32, ptr %20, align 8, !tbaa !121
  %377 = icmp eq i32 %376, 2
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.38) #24
  br label %379

379:                                              ; preds = %378, %375, %372
  %380 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.39) #27
  %381 = icmp eq ptr %380, null
  br i1 %381, label %382, label %388

382:                                              ; preds = %379
  %383 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %384 = load i32, ptr %383, align 4, !tbaa !205
  %385 = icmp eq i32 %384, 3
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.40) #24
  %387 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  store i32 1, ptr %387, align 4, !tbaa !206
  br label %388

388:                                              ; preds = %386, %382, %379
  %389 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.41) #27
  %390 = icmp eq ptr %389, null
  br i1 %390, label %401, label %391

391:                                              ; preds = %388
  %392 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %389, ptr noundef nonnull @.str.42, ptr noundef nonnull %2) #24
  %393 = icmp ne i32 %392, 0
  %394 = load i32, ptr %2, align 4
  %395 = icmp sgt i32 %394, -1
  %396 = select i1 %393, i1 %395, i1 false
  %397 = icmp slt i32 %394, 3
  %398 = select i1 %396, i1 %397, i1 false
  br i1 %398, label %399, label %401

399:                                              ; preds = %391
  %400 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 %394, ptr %400, align 8, !tbaa !207
  br label %406

401:                                              ; preds = %391, %388
  %402 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %403 = load i32, ptr %402, align 4, !tbaa !122
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %406, label %405

405:                                              ; preds = %401
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.43) #24
  br label %422

406:                                              ; preds = %401, %399
  %407 = load i32, ptr %51, align 8, !tbaa !123
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %413

409:                                              ; preds = %406
  %410 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %411 = load i32, ptr %410, align 8, !tbaa !129
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %423, label %413

413:                                              ; preds = %409, %406
  %414 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %240, ptr noundef nonnull dereferenceable(1) @.str.44) #27
  %415 = icmp eq ptr %414, null
  br i1 %415, label %423, label %416

416:                                              ; preds = %413
  %417 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %414, ptr noundef nonnull @.str.45, ptr noundef nonnull %2) #24
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %423, label %419

419:                                              ; preds = %416
  %420 = load i32, ptr %2, align 4, !tbaa !99
  %421 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  store i32 %420, ptr %421, align 4, !tbaa !208
  br label %423

422:                                              ; preds = %266, %284, %293, %308, %323, %335, %347, %359, %371, %405, %259
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %665

423:                                              ; preds = %409, %413, %416, %419
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  br label %424

424:                                              ; preds = %423, %256
  %425 = phi ptr [ %240, %256 ], [ %263, %423 ]
  br label %426

426:                                              ; preds = %424, %426
  %427 = phi i32 [ -1, %424 ], [ %431, %426 ]
  %428 = phi ptr [ %425, %424 ], [ %430, %426 ]
  %429 = getelementptr inbounds i8, ptr %428, i64 1
  %430 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %429, i32 noundef 59) #27
  %431 = add nsw i32 %427, 1
  %432 = icmp eq ptr %430, null
  br i1 %432, label %433, label %426, !llvm.loop !209

433:                                              ; preds = %426
  %434 = icmp eq i32 %431, 0
  br i1 %434, label %435, label %436

435:                                              ; preds = %433
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.46) #24
  br label %665

436:                                              ; preds = %433
  %437 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 42
  store i32 %431, ptr %437, align 8, !tbaa !210
  %438 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9
  %439 = load i32, ptr %438, align 4, !tbaa !211
  %440 = icmp sle i32 %439, %427
  %441 = icmp sgt i32 %439, 0
  %442 = and i1 %440, %441
  br i1 %442, label %443, label %446

443:                                              ; preds = %436
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.47, i32 noundef %439, i32 noundef %431) #24
  %444 = load i32, ptr %438, align 4, !tbaa !211
  %445 = load i32, ptr %437, align 8, !tbaa !210
  br label %446

446:                                              ; preds = %443, %436
  %447 = phi i32 [ %445, %443 ], [ %431, %436 ]
  %448 = phi i32 [ %444, %443 ], [ %439, %436 ]
  %449 = icmp sgt i32 %448, %447
  br i1 %449, label %450, label %451

450:                                              ; preds = %446
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.48, i32 noundef %448, i32 noundef %447) #24
  br label %665

451:                                              ; preds = %446
  %452 = mul i32 %447, 168
  %453 = call ptr @x264_malloc(i32 noundef %452) #24
  %454 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 43
  store ptr %453, ptr %454, align 8, !tbaa !103
  %455 = icmp eq ptr %453, null
  br i1 %455, label %665, label %456

456:                                              ; preds = %451
  %457 = load i32, ptr %437, align 8, !tbaa !210
  %458 = sext i32 %457 to i64
  %459 = mul nsw i64 %458, 168
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %453, i8 0, i64 %459, i1 false)
  %460 = load i32, ptr %437, align 8, !tbaa !210
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %464, label %564

462:                                              ; preds = %464
  %463 = icmp sgt i32 %476, 0
  br i1 %463, label %479, label %564

464:                                              ; preds = %456, %464
  %465 = phi i64 [ %475, %464 ], [ 0, %456 ]
  %466 = load ptr, ptr %454, align 8, !tbaa !103
  %467 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %466, i64 %465
  store i32 0, ptr %467, align 8, !tbaa !106
  %468 = call fastcc double @qp2qscale(double noundef 2.000000e+01) #23
  %469 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %466, i64 %465, i32 9
  store double %468, ptr %469, align 8, !tbaa !212
  %470 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %466, i64 %465, i32 3
  store double %468, ptr %470, align 8, !tbaa !213
  %471 = load i32, ptr %74, align 8, !tbaa !173
  %472 = add nsw i32 %471, 10
  %473 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %466, i64 %465, i32 6
  store i32 %472, ptr %473, align 8, !tbaa !214
  %474 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %466, i64 %465, i32 10
  store i32 0, ptr %474, align 8, !tbaa !215
  %475 = add nuw nsw i64 %465, 1
  %476 = load i32, ptr %437, align 8, !tbaa !210
  %477 = sext i32 %476 to i64
  %478 = icmp slt i64 %475, %477
  br i1 %478, label %464, label %462, !llvm.loop !216

479:                                              ; preds = %462, %554
  %480 = phi i32 [ %559, %554 ], [ 0, %462 ]
  %481 = phi ptr [ %487, %554 ], [ %425, %462 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #25
  %482 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %481, i32 noundef 59) #27
  %483 = icmp eq ptr %482, null
  br i1 %483, label %486, label %484

484:                                              ; preds = %479
  %485 = getelementptr inbounds i8, ptr %482, i64 1
  store i8 0, ptr %482, align 1, !tbaa !97
  br label %486

486:                                              ; preds = %484, %479
  %487 = phi ptr [ %485, %484 ], [ null, %479 ]
  %488 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %481, ptr noundef nonnull @.str.49, ptr noundef nonnull %6) #24
  %489 = load i32, ptr %6, align 4, !tbaa !99
  %490 = icmp slt i32 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %486
  %492 = load i32, ptr %437, align 8, !tbaa !210
  %493 = icmp slt i32 %489, %492
  br i1 %493, label %495, label %494

494:                                              ; preds = %486, %491
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %489, i32 noundef %480) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %665

495:                                              ; preds = %491
  %496 = load ptr, ptr %454, align 8, !tbaa !103
  %497 = zext nneg i32 %489 to i64
  %498 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497
  %499 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 15
  store i8 0, ptr %499, align 4, !tbaa !217
  %500 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 20
  %501 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 21
  %502 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 5
  %503 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 4
  %504 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 6
  %505 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 11
  %506 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 12
  %507 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 13
  %508 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %481, ptr noundef nonnull @.str.51, ptr noundef nonnull %7, ptr noundef nonnull %500, ptr noundef nonnull %501, ptr noundef nonnull %8, ptr noundef nonnull %502, ptr noundef nonnull %503, ptr noundef nonnull %504, ptr noundef nonnull %505, ptr noundef nonnull %506, ptr noundef nonnull %507, ptr noundef nonnull %499) #24
  %509 = add nsw i32 %508, %488
  %510 = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %481, ptr noundef nonnull dereferenceable(1) @.str.52) #27
  %511 = icmp eq ptr %510, null
  br i1 %511, label %512, label %513

512:                                              ; preds = %495
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %480, i32 noundef %509) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %665

513:                                              ; preds = %495
  %514 = getelementptr inbounds i8, ptr %510, i64 4
  br label %515

515:                                              ; preds = %513, %525
  %516 = phi i64 [ 0, %513 ], [ %526, %525 ]
  %517 = phi ptr [ %514, %513 ], [ %523, %525 ]
  %518 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 18, i64 %516
  %519 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %517, ptr noundef nonnull @.str.53, ptr noundef nonnull %518) #24
  %520 = icmp eq i32 %519, 1
  br i1 %520, label %521, label %528

521:                                              ; preds = %515
  %522 = getelementptr inbounds i8, ptr %517, i64 1
  %523 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %522, i32 noundef 32) #27
  %524 = icmp eq ptr %523, null
  br i1 %524, label %562, label %525

525:                                              ; preds = %521
  %526 = add nuw nsw i64 %516, 1
  %527 = icmp eq i64 %526, 16
  br i1 %527, label %530, label %515, !llvm.loop !218

528:                                              ; preds = %515
  %529 = trunc i64 %516 to i32
  br label %530

530:                                              ; preds = %525, %528
  %531 = phi ptr [ %517, %528 ], [ %523, %525 ]
  %532 = phi i32 [ %529, %528 ], [ 16, %525 ]
  %533 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 19
  store i32 %532, ptr %533, align 4, !tbaa !115
  %534 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 17
  store i16 -1, ptr %534, align 2, !tbaa !219
  %535 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %531, i32 noundef 119) #27
  %536 = icmp eq ptr %535, null
  br i1 %536, label %543, label %537

537:                                              ; preds = %530
  %538 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 16
  %539 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 16, i64 1
  %540 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %535, ptr noundef nonnull @.str.54, ptr noundef nonnull %534, ptr noundef nonnull %538, ptr noundef nonnull %539) #24
  %541 = icmp eq i32 %540, 3
  br i1 %541, label %543, label %542

542:                                              ; preds = %537
  store i16 -1, ptr %534, align 2, !tbaa !219
  br label %543

543:                                              ; preds = %537, %542, %530
  %544 = load i8, ptr %7, align 1, !tbaa !97
  %545 = icmp eq i8 %544, 98
  br i1 %545, label %551, label %546

546:                                              ; preds = %543
  %547 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 2
  store i32 1, ptr %547, align 8, !tbaa !108
  switch i8 %544, label %562 [
    i8 73, label %551
    i8 105, label %548
    i8 80, label %549
    i8 66, label %550
  ]

548:                                              ; preds = %546
  br label %551

549:                                              ; preds = %546
  br label %551

550:                                              ; preds = %546
  br label %551

551:                                              ; preds = %543, %546, %550, %549, %548
  %552 = phi <2 x i32> [ <i32 1, i32 4>, %550 ], [ <i32 0, i32 3>, %549 ], [ <i32 2, i32 2>, %548 ], [ <i32 2, i32 1>, %546 ], [ <i32 1, i32 5>, %543 ]
  store <2 x i32> %552, ptr %498, align 8, !tbaa !99
  %553 = icmp slt i32 %509, 12
  br i1 %553, label %562, label %554

554:                                              ; preds = %551
  %555 = load float, ptr %8, align 4, !tbaa !88
  %556 = fpext float %555 to double
  %557 = call fastcc double @qp2qscale(double noundef %556) #23
  %558 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %496, i64 %497, i32 3
  store double %557, ptr %558, align 8, !tbaa !213
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  %559 = add nuw nsw i32 %480, 1
  %560 = load i32, ptr %437, align 8, !tbaa !210
  %561 = icmp slt i32 %559, %560
  br i1 %561, label %479, label %564, !llvm.loop !220

562:                                              ; preds = %546, %551, %521
  %563 = phi i32 [ %509, %521 ], [ -1, %546 ], [ %509, %551 ]
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.55, i32 noundef %480, i32 noundef %563) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  br label %665

564:                                              ; preds = %554, %456, %462
  call void @x264_free(ptr noundef nonnull %240) #24
  %565 = load i32, ptr %20, align 8, !tbaa !121
  %566 = icmp eq i32 %565, 2
  br i1 %566, label %567, label %570

567:                                              ; preds = %564
  %568 = call fastcc i32 @init_pass2(ptr noundef nonnull %0) #23, !range !221
  %569 = icmp slt i32 %568, 0
  br i1 %569, label %665, label %570

570:                                              ; preds = %567, %564, %230
  %571 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %572 = load i32, ptr %571, align 8, !tbaa !222
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %613, label %574

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %576 = load ptr, ptr %575, align 8, !tbaa !223
  %577 = call fastcc ptr @x264_strcat_filename(ptr noundef %576, ptr noundef nonnull @.str.56) #23
  %578 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 37
  store ptr %577, ptr %578, align 8, !tbaa !224
  %579 = icmp eq ptr %577, null
  br i1 %579, label %665, label %580

580:                                              ; preds = %574
  %581 = call noalias ptr @fopen(ptr noundef nonnull %577, ptr noundef nonnull @.str.57) #23
  %582 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 36
  store ptr %581, ptr %582, align 8, !tbaa !225
  %583 = icmp eq ptr %581, null
  br i1 %583, label %584, label %585

584:                                              ; preds = %580
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.10) #24
  br label %665

585:                                              ; preds = %580
  %586 = call ptr @x264_param2string(ptr noundef nonnull %0, i32 noundef 1) #24
  %587 = icmp eq ptr %586, null
  br i1 %587, label %591, label %588

588:                                              ; preds = %585
  %589 = load ptr, ptr %582, align 8, !tbaa !225
  %590 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %589, ptr noundef nonnull @.str.58, ptr noundef nonnull %586) #23
  br label %591

591:                                              ; preds = %588, %585
  call void @x264_free(ptr noundef %586) #24
  %592 = load i32, ptr %51, align 8, !tbaa !123
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %643, label %594

594:                                              ; preds = %591
  %595 = load i32, ptr %231, align 8, !tbaa !167
  %596 = icmp eq i32 %595, 0
  br i1 %596, label %597, label %622

597:                                              ; preds = %594
  %598 = load ptr, ptr %575, align 8, !tbaa !223
  %599 = call fastcc ptr @x264_strcat_filename(ptr noundef %598, ptr noundef nonnull @.str.59) #23
  %600 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 39
  store ptr %599, ptr %600, align 8, !tbaa !226
  %601 = load ptr, ptr %575, align 8, !tbaa !223
  %602 = call fastcc ptr @x264_strcat_filename(ptr noundef %601, ptr noundef nonnull @.str.11) #23
  %603 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 40
  store ptr %602, ptr %603, align 8, !tbaa !227
  %604 = load ptr, ptr %600, align 8, !tbaa !226
  %605 = icmp eq ptr %604, null
  %606 = icmp eq ptr %602, null
  %607 = select i1 %605, i1 true, i1 %606
  br i1 %607, label %665, label %608

608:                                              ; preds = %597
  %609 = call noalias ptr @fopen(ptr noundef nonnull %604, ptr noundef nonnull @.str.57) #23
  %610 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 38
  store ptr %609, ptr %610, align 8, !tbaa !228
  %611 = icmp eq ptr %609, null
  br i1 %611, label %612, label %613

612:                                              ; preds = %608
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.13) #24
  br label %665

613:                                              ; preds = %608, %570
  %614 = load i32, ptr %51, align 8, !tbaa !123
  %615 = icmp eq i32 %614, 0
  br i1 %615, label %643, label %616

616:                                              ; preds = %613
  %617 = load i32, ptr %231, align 8, !tbaa !167
  %618 = icmp eq i32 %617, 0
  br i1 %618, label %619, label %622

619:                                              ; preds = %616
  %620 = load i32, ptr %571, align 8, !tbaa !222
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %643, label %622

622:                                              ; preds = %594, %616, %619
  %623 = load i32, ptr %72, align 16, !tbaa !68
  %624 = shl i32 %623, 1
  %625 = call ptr @x264_malloc(i32 noundef %624) #24
  %626 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 53
  store ptr %625, ptr %626, align 8, !tbaa !101
  %627 = icmp eq ptr %625, null
  br i1 %627, label %665, label %628

628:                                              ; preds = %622
  %629 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %630 = load i32, ptr %629, align 16, !tbaa !203
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %641, label %632

632:                                              ; preds = %628
  %633 = load i32, ptr %231, align 8, !tbaa !167
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %641, label %635

635:                                              ; preds = %632
  %636 = load i32, ptr %72, align 16, !tbaa !68
  %637 = shl i32 %636, 1
  %638 = call ptr @x264_malloc(i32 noundef %637) #24
  %639 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 53, i64 1
  store ptr %638, ptr %639, align 8, !tbaa !101
  %640 = icmp eq ptr %638, null
  br i1 %640, label %665, label %641

641:                                              ; preds = %635, %632, %628
  %642 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 0, i32 54
  store i32 -1, ptr %642, align 8, !tbaa !109
  br label %643

643:                                              ; preds = %591, %641, %619, %613
  %644 = load i32, ptr %9, align 4, !tbaa !165
  %645 = icmp sgt i32 %644, 0
  br i1 %645, label %646, label %665

646:                                              ; preds = %643, %660
  %647 = phi i32 [ %661, %660 ], [ %644, %643 ]
  %648 = phi i64 [ %662, %660 ], [ 0, %643 ]
  %649 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %19, i64 %648
  %650 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %648
  %651 = load ptr, ptr %650, align 8, !tbaa !101
  %652 = getelementptr inbounds %struct.x264_t, ptr %651, i64 0, i32 56
  store ptr %649, ptr %652, align 16, !tbaa !102
  %653 = icmp eq i64 %648, 0
  br i1 %653, label %660, label %654

654:                                              ; preds = %646
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(936) %649, ptr noundef nonnull align 8 dereferenceable(936) %19, i64 936, i1 false), !tbaa.struct !229
  %655 = load ptr, ptr %650, align 8, !tbaa !101
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %655, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false), !tbaa.struct !230
  %656 = load i32, ptr %98, align 16, !tbaa !175
  %657 = load ptr, ptr %650, align 8, !tbaa !101
  %658 = getelementptr inbounds %struct.x264_t, ptr %657, i64 0, i32 55, i32 72
  store i32 %656, ptr %658, align 16, !tbaa !175
  %659 = load i32, ptr %9, align 4, !tbaa !165
  br label %660

660:                                              ; preds = %646, %654
  %661 = phi i32 [ %647, %646 ], [ %659, %654 ]
  %662 = add nuw nsw i64 %648, 1
  %663 = sext i32 %661 to i64
  %664 = icmp slt i64 %662, %663
  br i1 %664, label %646, label %665, !llvm.loop !231

665:                                              ; preds = %660, %643, %562, %512, %494, %422, %255, %246, %567, %451, %435, %450, %242, %584, %612, %574, %597, %1, %127, %177, %622, %635, %229, %82
  %666 = phi i32 [ -1, %82 ], [ -1, %229 ], [ -1, %635 ], [ -1, %622 ], [ -1, %177 ], [ -1, %127 ], [ -1, %1 ], [ -1, %597 ], [ -1, %574 ], [ -1, %612 ], [ -1, %584 ], [ -1, %242 ], [ -1, %450 ], [ -1, %562 ], [ -1, %435 ], [ -1, %451 ], [ -1, %567 ], [ -1, %246 ], [ -1, %255 ], [ -1, %422 ], [ -1, %494 ], [ -1, %512 ], [ 0, %643 ], [ 0, %660 ]
  ret i32 %666
}

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @parse_zones(ptr noundef %0) unnamed_addr #0 !PGOFuncName !232 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 27
  %5 = load ptr, ptr %4, align 8, !tbaa !233
  %6 = icmp eq ptr %5, null
  br i1 %6, label %62, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  %9 = load i32, ptr %8, align 8, !tbaa !234
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %62

11:                                               ; preds = %7
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, 1
  %15 = tail call ptr @x264_malloc(i32 noundef %14) #24
  %16 = icmp eq ptr %15, null
  br i1 %16, label %132, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !233
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %18) #24
  store i32 1, ptr %8, align 8, !tbaa !234
  %20 = load i8, ptr %15, align 1, !tbaa !97
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %34, label %22

22:                                               ; preds = %17, %22
  %23 = phi i32 [ %28, %22 ], [ 1, %17 ]
  %24 = phi i8 [ %30, %22 ], [ %20, %17 ]
  %25 = phi ptr [ %29, %22 ], [ %15, %17 ]
  %26 = icmp eq i8 %24, 47
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %23, %27
  store i32 %28, ptr %8, align 8, !tbaa !234
  %29 = getelementptr inbounds i8, ptr %25, i64 1
  %30 = load i8, ptr %29, align 1, !tbaa !97
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %22, !llvm.loop !235

32:                                               ; preds = %22
  %33 = shl i32 %28, 5
  br label %34

34:                                               ; preds = %32, %17
  %35 = phi i32 [ %33, %32 ], [ 32, %17 ]
  %36 = tail call ptr @x264_malloc(i32 noundef %35) #24
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 25
  store ptr %36, ptr %37, align 8, !tbaa !236
  %38 = icmp eq ptr %36, null
  br i1 %38, label %132, label %39

39:                                               ; preds = %34
  %40 = load i32, ptr %8, align 8, !tbaa !234
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39, %53
  %43 = phi i64 [ %57, %53 ], [ 0, %39 ]
  %44 = phi ptr [ %56, %53 ], [ %15, %39 ]
  %45 = tail call i64 @strcspn(ptr noundef %44, ptr noundef nonnull @.str.60) #27
  %46 = shl i64 %45, 32
  %47 = ashr exact i64 %46, 32
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  store i8 0, ptr %48, align 1, !tbaa !97
  %49 = load ptr, ptr %37, align 8, !tbaa !236
  %50 = getelementptr inbounds %struct.x264_zone_t, ptr %49, i64 %43
  %51 = tail call fastcc i32 @parse_zone(ptr noundef nonnull %0, ptr noundef %50, ptr noundef %44) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %132

53:                                               ; preds = %42
  %54 = add i64 %46, 4294967296
  %55 = ashr exact i64 %54, 32
  %56 = getelementptr inbounds i8, ptr %44, i64 %55
  %57 = add nuw nsw i64 %43, 1
  %58 = load i32, ptr %8, align 8, !tbaa !234
  %59 = sext i32 %58 to i64
  %60 = icmp slt i64 %57, %59
  br i1 %60, label %42, label %61, !llvm.loop !237

61:                                               ; preds = %53, %39
  tail call void @x264_free(ptr noundef nonnull %15) #24
  br label %62

62:                                               ; preds = %61, %7, %1
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 26
  %64 = load i32, ptr %63, align 8, !tbaa !234
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %132

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 25
  %68 = load ptr, ptr %67, align 8, !tbaa !236
  %69 = zext nneg i32 %64 to i64
  br label %73

70:                                               ; preds = %83
  %71 = add nuw nsw i64 %74, 1
  %72 = icmp eq i64 %71, %69
  br i1 %72, label %93, label %73, !llvm.loop !238

73:                                               ; preds = %66, %70
  %74 = phi i64 [ 0, %66 ], [ %71, %70 ]
  %75 = getelementptr inbounds %struct.x264_zone_t, ptr %68, i64 %74
  %76 = load i32, ptr %75, align 8, !tbaa.struct !239
  %77 = getelementptr inbounds i8, ptr %75, i64 4
  %78 = load i32, ptr %77, align 4, !tbaa.struct !240
  %79 = icmp slt i32 %76, 0
  %80 = icmp sgt i32 %76, %78
  %81 = select i1 %79, i1 true, i1 %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %73
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.61, i32 noundef %76, i32 noundef %78) #24
  br label %132

83:                                               ; preds = %73
  %84 = getelementptr inbounds i8, ptr %75, i64 16
  %85 = load float, ptr %84, align 8, !tbaa.struct !241
  %86 = getelementptr inbounds i8, ptr %75, i64 8
  %87 = load i32, ptr %86, align 8, !tbaa.struct !242
  %88 = icmp eq i32 %87, 0
  %89 = fcmp ole float %85, 0.000000e+00
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %70

91:                                               ; preds = %83
  %92 = fpext float %85 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.62, double noundef %92) #24
  br label %132

93:                                               ; preds = %70
  %94 = add nuw nsw i32 %64, 1
  %95 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 65
  store i32 %94, ptr %95, align 8, !tbaa !243
  %96 = shl i32 %94, 5
  %97 = tail call ptr @x264_malloc(i32 noundef %96) #24
  %98 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 66
  store ptr %97, ptr %98, align 8, !tbaa !244
  %99 = icmp eq ptr %97, null
  br i1 %99, label %132, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.x264_zone_t, ptr %97, i64 1
  %102 = load ptr, ptr %67, align 8, !tbaa !236
  %103 = load i32, ptr %95, align 8, !tbaa !243
  %104 = add nsw i32 %103, -1
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %101, ptr align 8 %102, i64 %106, i1 false)
  %107 = load ptr, ptr %98, align 8, !tbaa !244
  store i32 0, ptr %107, align 8, !tbaa !245
  %108 = getelementptr inbounds %struct.x264_zone_t, ptr %107, i64 0, i32 1
  store i32 2147483647, ptr %108, align 4, !tbaa !247
  %109 = getelementptr inbounds %struct.x264_zone_t, ptr %107, i64 0, i32 2
  store i32 0, ptr %109, align 8, !tbaa !248
  %110 = getelementptr inbounds %struct.x264_zone_t, ptr %107, i64 0, i32 4
  store float 1.000000e+00, ptr %110, align 8, !tbaa !249
  %111 = tail call ptr @x264_malloc(i32 noundef 704) #24
  %112 = load ptr, ptr %98, align 8, !tbaa !244
  %113 = getelementptr inbounds %struct.x264_zone_t, ptr %112, i64 0, i32 5
  store ptr %111, ptr %113, align 8, !tbaa !250
  %114 = icmp eq ptr %111, null
  br i1 %114, label %132, label %115

115:                                              ; preds = %100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %111, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false)
  %116 = load i32, ptr %95, align 8, !tbaa !243
  %117 = icmp sgt i32 %116, 1
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load ptr, ptr %98, align 8, !tbaa !244
  %120 = getelementptr inbounds %struct.x264_zone_t, ptr %119, i64 0, i32 5
  %121 = zext nneg i32 %116 to i64
  br label %122

122:                                              ; preds = %118, %129
  %123 = phi i64 [ 1, %118 ], [ %130, %129 ]
  %124 = getelementptr inbounds %struct.x264_zone_t, ptr %119, i64 %123, i32 5
  %125 = load ptr, ptr %124, align 8, !tbaa !250
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %129

127:                                              ; preds = %122
  %128 = load ptr, ptr %120, align 8, !tbaa !250
  store ptr %128, ptr %124, align 8, !tbaa !250
  br label %129

129:                                              ; preds = %122, %127
  %130 = add nuw nsw i64 %123, 1
  %131 = icmp eq i64 %130, %121
  br i1 %131, label %132, label %122, !llvm.loop !251

132:                                              ; preds = %42, %129, %115, %34, %11, %91, %82, %93, %100, %62
  %133 = phi i32 [ 0, %62 ], [ -1, %100 ], [ -1, %93 ], [ -1, %82 ], [ -1, %91 ], [ -1, %11 ], [ -1, %34 ], [ 0, %115 ], [ 0, %129 ], [ -1, %42 ]
  ret i32 %133
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @x264_slurp_file(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @x264_strcat_filename(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !PGOFuncName !252 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #27
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %5 = add i64 %4, %3
  %6 = trunc i64 %5 to i32
  %7 = add i32 %6, 1
  %8 = tail call ptr @x264_malloc(i32 noundef %7) #24
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %0) #24
  %12 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #24
  br label %13

13:                                               ; preds = %2, %10
  ret ptr %8
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: optsize
declare void @x264_free(ptr noundef) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @init_pass2(ptr noundef %0) unnamed_addr #0 !PGOFuncName !253 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %5 = load i32, ptr %4, align 8, !tbaa !210
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %9 = load ptr, ptr %8, align 8, !tbaa !103
  %10 = zext nneg i32 %5 to i64
  br label %42

11:                                               ; preds = %42, %1
  %12 = phi double [ 0.000000e+00, %1 ], [ %48, %42 ]
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %14 = load ptr, ptr %13, align 16, !tbaa !79
  %15 = getelementptr inbounds %struct.x264_sps_t, ptr %14, i64 0, i32 24, i32 16
  %16 = load i32, ptr %15, align 4, !tbaa !146
  %17 = uitofp i32 %16 to double
  %18 = getelementptr inbounds %struct.x264_sps_t, ptr %14, i64 0, i32 24, i32 17
  %19 = load i32, ptr %18, align 4, !tbaa !145
  %20 = uitofp i32 %19 to double
  %21 = fdiv double %17, %20
  %22 = fmul double %12, %21
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %24 = load i32, ptr %23, align 4, !tbaa !132
  %25 = sitofp i32 %24 to double
  %26 = fmul double %25, 1.000000e+03
  %27 = fmul double %26, %22
  %28 = fptoui double %27 to i64
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %30 = load float, ptr %29, align 4, !tbaa !254
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %33 = load float, ptr %32, align 8, !tbaa !255
  %34 = fpext float %33 to double
  %35 = fmul double %31, 4.000000e+00
  %36 = fptosi double %35 to i32
  %37 = or i32 %36, 1
  br i1 %6, label %38, label %78

38:                                               ; preds = %11
  %39 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %40 = load ptr, ptr %39, align 8, !tbaa !103
  %41 = zext nneg i32 %5 to i64
  br label %60

42:                                               ; preds = %7, %42
  %43 = phi i64 [ 0, %7 ], [ %49, %42 ]
  %44 = phi double [ 0.000000e+00, %7 ], [ %48, %42 ]
  %45 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %9, i64 %43, i32 20
  %46 = load i32, ptr %45, align 8, !tbaa !256
  %47 = sitofp i32 %46 to double
  %48 = fadd double %44, %47
  %49 = add nuw nsw i64 %43, 1
  %50 = icmp eq i64 %49, %10
  br i1 %50, label %11, label %42, !llvm.loop !257

51:                                               ; preds = %60
  %52 = icmp ugt i64 %66, %28
  br i1 %52, label %69, label %53

53:                                               ; preds = %51
  br i1 %6, label %54, label %78

54:                                               ; preds = %53
  %55 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %56 = fmul double %34, 2.000000e+00
  %57 = fcmp ogt double %56, 1.000000e+00
  %58 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 8
  %59 = fcmp ult double %56, 0.000000e+00
  br label %83

60:                                               ; preds = %38, %60
  %61 = phi i64 [ 0, %38 ], [ %67, %60 ]
  %62 = phi i64 [ 0, %38 ], [ %66, %60 ]
  %63 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %40, i64 %61, i32 6
  %64 = load i32, ptr %63, align 8, !tbaa !214
  %65 = sext i32 %64 to i64
  %66 = add i64 %62, %65
  %67 = add nuw nsw i64 %61, 1
  %68 = icmp eq i64 %67, %41
  br i1 %68, label %51, label %60, !llvm.loop !258

69:                                               ; preds = %51
  %70 = uitofp i64 %66 to double
  %71 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4
  %72 = load double, ptr %71, align 8, !tbaa !130
  %73 = fmul double %72, %70
  %74 = sitofp i32 %5 to double
  %75 = fmul double %74, 1.000000e+03
  %76 = fdiv double %73, %75
  %77 = fptosi double %76 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %77) #24
  br label %443

78:                                               ; preds = %172, %11, %53
  %79 = phi i32 [ %5, %53 ], [ %5, %11 ], [ %179, %172 ]
  %80 = shl i32 %79, 3
  %81 = tail call ptr @x264_malloc(i32 noundef %80) #24
  %82 = icmp eq ptr %81, null
  br i1 %82, label %443, label %182

83:                                               ; preds = %54, %172
  %84 = phi i64 [ 0, %54 ], [ %178, %172 ]
  %85 = load ptr, ptr %55, align 8, !tbaa !103
  br i1 %57, label %86, label %129

86:                                               ; preds = %83, %109
  %87 = phi i64 [ %125, %109 ], [ 1, %83 ]
  %88 = phi double [ %107, %109 ], [ 1.000000e+00, %83 ]
  %89 = phi double [ %124, %109 ], [ 0.000000e+00, %83 ]
  %90 = phi double [ %118, %109 ], [ 0.000000e+00, %83 ]
  %91 = load i32, ptr %4, align 8, !tbaa !210
  %92 = sext i32 %91 to i64
  %93 = sub nsw i64 %92, %84
  %94 = icmp slt i64 %87, %93
  br i1 %94, label %95, label %129

95:                                               ; preds = %86
  %96 = load ptr, ptr %55, align 8, !tbaa !103
  %97 = add nuw nsw i64 %87, %84
  %98 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %96, i64 %97, i32 11
  %99 = load i32, ptr %98, align 4, !tbaa !259
  %100 = sitofp i32 %99 to float
  %101 = load i32, ptr %58, align 8, !tbaa !173
  %102 = sitofp i32 %101 to float
  %103 = fdiv float %100, %102
  %104 = fpext float %103 to double
  %105 = fmul double %104, %104
  %106 = fsub double 1.000000e+00, %105
  %107 = fmul double %88, %106
  %108 = fcmp uge double %107, 1.000000e-04
  br i1 %108, label %109, label %129

109:                                              ; preds = %95
  %110 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %96, i64 %97
  %111 = trunc i64 %87 to i32
  %112 = mul i32 %111, %111
  %113 = sub i32 0, %112
  %114 = sitofp i32 %113 to double
  %115 = fdiv double %114, 2.000000e+02
  %116 = tail call double @exp(double noundef %115) #24
  %117 = fmul double %107, %116
  %118 = fadd double %90, %117
  %119 = tail call fastcc double @qscale2bits(ptr noundef nonnull %110, double noundef 1.000000e+00) #23
  %120 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %96, i64 %97, i32 6
  %121 = load i32, ptr %120, align 8, !tbaa !214
  %122 = sitofp i32 %121 to double
  %123 = fsub double %119, %122
  %124 = tail call double @llvm.fmuladd.f64(double %117, double %123, double %89)
  %125 = add nuw nsw i64 %87, 1
  %126 = trunc i64 %125 to i32
  %127 = sitofp i32 %126 to double
  %128 = fcmp ogt double %56, %127
  br i1 %128, label %86, label %129, !llvm.loop !260

129:                                              ; preds = %109, %86, %95, %83
  %130 = phi double [ 0.000000e+00, %83 ], [ %90, %95 ], [ %90, %86 ], [ %118, %109 ]
  %131 = phi double [ 0.000000e+00, %83 ], [ %89, %95 ], [ %89, %86 ], [ %124, %109 ]
  br i1 %59, label %172, label %139

132:                                              ; preds = %139
  %133 = add nuw nsw i64 %140, 1
  %134 = trunc i64 %133 to i32
  %135 = sitofp i32 %134 to double
  %136 = fcmp oge double %56, %135
  %137 = icmp ult i64 %140, %84
  %138 = and i1 %137, %136
  br i1 %138, label %139, label %172, !llvm.loop !261

139:                                              ; preds = %129, %132
  %140 = phi i64 [ %133, %132 ], [ 0, %129 ]
  %141 = phi double [ %170, %132 ], [ 1.000000e+00, %129 ]
  %142 = phi double [ %160, %132 ], [ %131, %129 ]
  %143 = phi double [ %154, %132 ], [ %130, %129 ]
  %144 = load ptr, ptr %55, align 8, !tbaa !103
  %145 = sub nsw i64 %84, %140
  %146 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %144, i64 %145
  %147 = trunc i64 %140 to i32
  %148 = mul i32 %147, %147
  %149 = sub i32 0, %148
  %150 = sitofp i32 %149 to double
  %151 = fdiv double %150, 2.000000e+02
  %152 = tail call double @exp(double noundef %151) #24
  %153 = fmul double %141, %152
  %154 = fadd double %143, %153
  %155 = tail call fastcc double @qscale2bits(ptr noundef %146, double noundef 1.000000e+00) #23
  %156 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %144, i64 %145, i32 6
  %157 = load i32, ptr %156, align 8, !tbaa !214
  %158 = sitofp i32 %157 to double
  %159 = fsub double %155, %158
  %160 = tail call double @llvm.fmuladd.f64(double %153, double %159, double %142)
  %161 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %144, i64 %145, i32 11
  %162 = load i32, ptr %161, align 4, !tbaa !259
  %163 = sitofp i32 %162 to float
  %164 = load i32, ptr %58, align 8, !tbaa !173
  %165 = sitofp i32 %164 to float
  %166 = fdiv float %163, %165
  %167 = fpext float %166 to double
  %168 = fmul double %167, %167
  %169 = fsub double 1.000000e+00, %168
  %170 = fmul double %141, %169
  %171 = fcmp uge double %170, 1.000000e-04
  br i1 %171, label %132, label %172

172:                                              ; preds = %139, %132, %129
  %173 = phi double [ %130, %129 ], [ %154, %132 ], [ %154, %139 ]
  %174 = phi double [ %131, %129 ], [ %160, %132 ], [ %160, %139 ]
  %175 = fdiv double %174, %173
  %176 = fptrunc double %175 to float
  %177 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %85, i64 %84, i32 14
  store float %176, ptr %177, align 8, !tbaa !262
  %178 = add nuw nsw i64 %84, 1
  %179 = load i32, ptr %4, align 8, !tbaa !210
  %180 = sext i32 %179 to i64
  %181 = icmp slt i64 %178, %180
  br i1 %181, label %83, label %78, !llvm.loop !263

182:                                              ; preds = %78
  %183 = icmp sgt i32 %37, 1
  br i1 %183, label %184, label %189

184:                                              ; preds = %182
  %185 = load i32, ptr %4, align 8, !tbaa !210
  %186 = shl i32 %185, 3
  %187 = tail call ptr @x264_malloc(i32 noundef %186) #24
  %188 = icmp eq ptr %187, null
  br i1 %188, label %443, label %189

189:                                              ; preds = %182, %184
  %190 = phi ptr [ %187, %184 ], [ %81, %182 ]
  %191 = load i32, ptr %4, align 8, !tbaa !210
  %192 = icmp sgt i32 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %195 = load ptr, ptr %194, align 8, !tbaa !103
  br label %213

196:                                              ; preds = %213, %189
  %197 = phi i32 [ %191, %189 ], [ %230, %213 ]
  %198 = phi double [ 1.000000e+00, %189 ], [ %223, %213 ]
  %199 = uitofp i64 %28 to double
  %200 = fdiv double %199, %198
  %201 = fmul double %200, 1.000000e+04
  %202 = fmul double %200, 0x3E7AD7F29ABCAF48
  %203 = fcmp ogt double %201, %202
  br i1 %203, label %204, label %233

204:                                              ; preds = %196
  %205 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 46
  %206 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 48
  %207 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %208 = icmp sgt i32 %36, -1
  %209 = lshr i32 %36, 1
  %210 = fcmp oeq float %30, 0.000000e+00
  %211 = fmul double %31, %31
  %212 = zext nneg i32 %37 to i64
  br label %234

213:                                              ; preds = %193, %213
  %214 = phi ptr [ %195, %193 ], [ %224, %213 ]
  %215 = phi i64 [ 0, %193 ], [ %229, %213 ]
  %216 = phi double [ 1.000000e+00, %193 ], [ %223, %213 ]
  %217 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %214, i64 %215
  %218 = trunc i64 %215 to i32
  %219 = tail call fastcc double @get_qscale(ptr noundef %0, ptr noundef %217, double noundef 1.000000e+00, i32 noundef %218) #23
  %220 = load ptr, ptr %194, align 8, !tbaa !103
  %221 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %220, i64 %215
  %222 = tail call fastcc double @qscale2bits(ptr noundef %221, double noundef %219) #23
  %223 = fadd double %216, %222
  %224 = load ptr, ptr %194, align 8, !tbaa !103
  %225 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %224, i64 %215
  %226 = load i32, ptr %225, align 8, !tbaa !106
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 45, i64 %227
  store double %219, ptr %228, align 8, !tbaa !192
  %229 = add nuw nsw i64 %215, 1
  %230 = load i32, ptr %4, align 8, !tbaa !210
  %231 = sext i32 %230 to i64
  %232 = icmp slt i64 %229, %231
  br i1 %232, label %213, label %196, !llvm.loop !264

233:                                              ; preds = %336, %196
  tail call void @x264_free(ptr noundef nonnull %81) #24
  br i1 %183, label %363, label %364

234:                                              ; preds = %204, %336
  %235 = phi i32 [ %197, %204 ], [ %337, %336 ]
  %236 = phi double [ 0.000000e+00, %204 ], [ %341, %336 ]
  %237 = phi double [ %201, %204 ], [ %342, %336 ]
  %238 = fadd double %237, %236
  store i32 -1, ptr %205, align 8, !tbaa !174
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr %206, align 8, !tbaa !192
  %239 = icmp sgt i32 %235, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load ptr, ptr %207, align 8, !tbaa !103
  br label %245

242:                                              ; preds = %245, %234
  %243 = phi i32 [ %235, %234 ], [ %258, %245 ]
  %244 = zext i32 %243 to i64
  br label %261

245:                                              ; preds = %240, %245
  %246 = phi ptr [ %241, %240 ], [ %252, %245 ]
  %247 = phi i64 [ 0, %240 ], [ %257, %245 ]
  %248 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %246, i64 %247
  %249 = trunc i64 %247 to i32
  %250 = tail call fastcc double @get_qscale(ptr noundef %0, ptr noundef %248, double noundef %238, i32 noundef %249) #23
  %251 = getelementptr inbounds double, ptr %81, i64 %247
  store double %250, ptr %251, align 8, !tbaa !192
  %252 = load ptr, ptr %207, align 8, !tbaa !103
  %253 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %252, i64 %247
  %254 = load i32, ptr %253, align 8, !tbaa !106
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 45, i64 %255
  store double %250, ptr %256, align 8, !tbaa !192
  %257 = add nuw nsw i64 %247, 1
  %258 = load i32, ptr %4, align 8, !tbaa !210
  %259 = sext i32 %258 to i64
  %260 = icmp slt i64 %257, %259
  br i1 %260, label %245, label %242, !llvm.loop !265

261:                                              ; preds = %242, %269
  %262 = phi i64 [ %244, %242 ], [ %270, %269 ]
  %263 = trunc i64 %262 to i32
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %261
  %266 = load i32, ptr %4, align 8, !tbaa !210
  br i1 %183, label %267, label %333

267:                                              ; preds = %265
  %268 = icmp sgt i32 %266, 0
  br i1 %268, label %278, label %336

269:                                              ; preds = %261
  %270 = add nsw i64 %262, -1
  %271 = load ptr, ptr %207, align 8, !tbaa !103
  %272 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %271, i64 %270
  %273 = getelementptr inbounds double, ptr %81, i64 %270
  %274 = load double, ptr %273, align 8, !tbaa !192
  %275 = tail call fastcc double @get_diff_limited_q(ptr noundef %0, ptr noundef %272, double noundef %274) #23
  store double %275, ptr %273, align 8, !tbaa !192
  %276 = fcmp ult double %275, 0.000000e+00
  br i1 %276, label %277, label %261, !llvm.loop !266

277:                                              ; preds = %269
  tail call void @__assert_fail(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.9, i32 noundef 2511, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #26
  unreachable

278:                                              ; preds = %267, %290
  %279 = phi i32 [ %291, %290 ], [ %266, %267 ]
  %280 = phi i64 [ %294, %290 ], [ 0, %267 ]
  %281 = load ptr, ptr %207, align 8, !tbaa !103
  %282 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %281, i64 %280
  br i1 %208, label %283, label %290

283:                                              ; preds = %278
  %284 = trunc i64 %280 to i32
  %285 = sub i32 %284, %209
  %286 = trunc i64 %280 to i32
  br label %297

287:                                              ; preds = %328
  %288 = load i32, ptr %4, align 8, !tbaa !210
  %289 = fdiv double %329, %330
  br label %290

290:                                              ; preds = %287, %278
  %291 = phi i32 [ %279, %278 ], [ %288, %287 ]
  %292 = phi double [ 0x7FF8000000000000, %278 ], [ %289, %287 ]
  %293 = getelementptr inbounds double, ptr %190, i64 %280
  store double %292, ptr %293, align 8, !tbaa !192
  %294 = add nuw nsw i64 %280, 1
  %295 = sext i32 %291 to i64
  %296 = icmp slt i64 %294, %295
  br i1 %296, label %278, label %333, !llvm.loop !267

297:                                              ; preds = %283, %328
  %298 = phi i64 [ 0, %283 ], [ %331, %328 ]
  %299 = phi double [ 0.000000e+00, %283 ], [ %330, %328 ]
  %300 = phi double [ 0.000000e+00, %283 ], [ %329, %328 ]
  %301 = trunc i64 %298 to i32
  %302 = add i32 %285, %301
  br i1 %210, label %310, label %303

303:                                              ; preds = %297
  %304 = sub nsw i32 %302, %286
  %305 = sitofp i32 %304 to double
  %306 = fneg double %305
  %307 = fmul double %306, %305
  %308 = fdiv double %307, %211
  %309 = tail call double @exp(double noundef %308) #24
  br label %310

310:                                              ; preds = %297, %303
  %311 = phi double [ %309, %303 ], [ 1.000000e+00, %297 ]
  %312 = icmp slt i32 %302, 0
  br i1 %312, label %328, label %313

313:                                              ; preds = %310
  %314 = load i32, ptr %4, align 8, !tbaa !210
  %315 = icmp slt i32 %302, %314
  br i1 %315, label %316, label %328

316:                                              ; preds = %313
  %317 = load i32, ptr %282, align 8, !tbaa !106
  %318 = load ptr, ptr %207, align 8, !tbaa !103
  %319 = zext nneg i32 %302 to i64
  %320 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %318, i64 %319
  %321 = load i32, ptr %320, align 8, !tbaa !106
  %322 = icmp eq i32 %317, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %316
  %324 = getelementptr inbounds double, ptr %81, i64 %319
  %325 = load double, ptr %324, align 8, !tbaa !192
  %326 = tail call double @llvm.fmuladd.f64(double %325, double %311, double %300)
  %327 = fadd double %299, %311
  br label %328

328:                                              ; preds = %316, %310, %313, %323
  %329 = phi double [ %326, %323 ], [ %300, %313 ], [ %300, %310 ], [ %300, %316 ]
  %330 = phi double [ %327, %323 ], [ %299, %313 ], [ %299, %310 ], [ %299, %316 ]
  %331 = add nuw nsw i64 %298, 1
  %332 = icmp eq i64 %331, %212
  br i1 %332, label %287, label %297, !llvm.loop !268

333:                                              ; preds = %290, %265
  %334 = phi i32 [ %266, %265 ], [ %291, %290 ]
  %335 = icmp sgt i32 %334, 0
  br i1 %335, label %344, label %336

336:                                              ; preds = %356, %267, %333
  %337 = phi i32 [ %334, %333 ], [ %266, %267 ], [ %360, %356 ]
  %338 = phi double [ 0.000000e+00, %333 ], [ 0.000000e+00, %267 ], [ %358, %356 ]
  %339 = fcmp ogt double %338, %199
  %340 = select i1 %339, double %237, double 0.000000e+00
  %341 = fsub double %238, %340
  %342 = fmul double %237, 5.000000e-01
  %343 = fcmp ogt double %342, %202
  br i1 %343, label %234, label %233, !llvm.loop !269

344:                                              ; preds = %333, %356
  %345 = phi i64 [ %359, %356 ], [ 0, %333 ]
  %346 = phi double [ %358, %356 ], [ 0.000000e+00, %333 ]
  %347 = load ptr, ptr %207, align 8, !tbaa !103
  %348 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %347, i64 %345
  %349 = load i32, ptr %348, align 8, !tbaa !106
  %350 = getelementptr inbounds double, ptr %190, i64 %345
  %351 = load double, ptr %350, align 8, !tbaa !192
  %352 = tail call fastcc double @clip_qscale(ptr noundef %0, i32 noundef %349, double noundef %351) #23
  %353 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %347, i64 %345, i32 9
  store double %352, ptr %353, align 8, !tbaa !212
  %354 = fcmp ult double %352, 0.000000e+00
  br i1 %354, label %355, label %356

355:                                              ; preds = %344
  tail call void @__assert_fail(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.9, i32 noundef 2544, ptr noundef nonnull @__PRETTY_FUNCTION__.init_pass2) #26
  unreachable

356:                                              ; preds = %344
  %357 = tail call fastcc double @qscale2bits(ptr noundef nonnull %348, double noundef %352) #23
  %358 = fadd double %346, %357
  %359 = add nuw nsw i64 %345, 1
  %360 = load i32, ptr %4, align 8, !tbaa !210
  %361 = sext i32 %360 to i64
  %362 = icmp slt i64 %359, %361
  br i1 %362, label %344, label %336, !llvm.loop !270

363:                                              ; preds = %233
  tail call void @x264_free(ptr noundef nonnull %190) #24
  br label %364

364:                                              ; preds = %363, %233
  %365 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %366 = load i32, ptr %365, align 8, !tbaa !161
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %371, label %368

368:                                              ; preds = %364
  %369 = tail call fastcc i32 @vbv_pass2(ptr noundef %0, double noundef %199) #23, !range !221
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %443

371:                                              ; preds = %368, %364
  %372 = tail call fastcc double @count_expected_bits(ptr noundef %0) #23
  %373 = fdiv double %372, %199
  %374 = fadd double %373, -1.000000e+00
  %375 = tail call double @llvm.fabs.f64(double %374)
  %376 = fcmp ogt double %375, 1.000000e-02
  br i1 %376, label %377, label %443

377:                                              ; preds = %371
  %378 = load i32, ptr %4, align 8, !tbaa !210
  %379 = icmp sgt i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %382 = load ptr, ptr %381, align 8, !tbaa !103
  %383 = zext nneg i32 %378 to i64
  br label %390

384:                                              ; preds = %390, %377
  %385 = phi double [ 0.000000e+00, %377 ], [ %395, %390 ]
  %386 = sitofp i32 %378 to double
  %387 = fdiv double %385, %386
  %388 = tail call fastcc double @qscale2qp(double noundef %387) #23
  %389 = fcmp ogt double %372, %199
  br i1 %389, label %401, label %398

390:                                              ; preds = %380, %390
  %391 = phi i64 [ 0, %380 ], [ %396, %390 ]
  %392 = phi double [ 0.000000e+00, %380 ], [ %395, %390 ]
  %393 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %382, i64 %391, i32 9
  %394 = load double, ptr %393, align 8, !tbaa !212
  %395 = fadd double %392, %394
  %396 = add nuw nsw i64 %391, 1
  %397 = icmp eq i64 %396, %383
  br i1 %397, label %384, label %390, !llvm.loop !271

398:                                              ; preds = %384
  %399 = load i32, ptr %365, align 8, !tbaa !161
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %398, %384
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73) #24
  br label %402

402:                                              ; preds = %401, %398
  %403 = load i32, ptr %23, align 4, !tbaa !132
  %404 = sitofp i32 %403 to float
  %405 = fpext float %404 to double
  %406 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 4
  %407 = load double, ptr %406, align 8, !tbaa !130
  %408 = fmul double %372, %407
  %409 = load i32, ptr %4, align 8, !tbaa !210
  %410 = sitofp i32 %409 to double
  %411 = fmul double %410, 1.000000e+03
  %412 = fdiv double %408, %411
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.74, double noundef %405, double noundef %412, double noundef %388) #24
  %413 = fcmp olt double %372, %199
  br i1 %413, label %414, label %424

414:                                              ; preds = %402
  %415 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %416 = load i32, ptr %415, align 8, !tbaa !193
  %417 = add nsw i32 %416, 2
  %418 = sitofp i32 %417 to double
  %419 = fcmp olt double %388, %418
  br i1 %419, label %420, label %424

420:                                              ; preds = %414
  %421 = icmp sgt i32 %416, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %420
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.75, i32 noundef %416) #24
  br label %443

423:                                              ; preds = %420
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.76) #24
  br label %443

424:                                              ; preds = %414, %402
  br i1 %389, label %425, label %435

425:                                              ; preds = %424
  %426 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %427 = load i32, ptr %426, align 4, !tbaa !194
  %428 = add nsw i32 %427, -2
  %429 = sitofp i32 %428 to double
  %430 = fcmp ogt double %388, %429
  br i1 %430, label %431, label %435

431:                                              ; preds = %425
  %432 = icmp slt i32 %427, 51
  br i1 %432, label %433, label %434

433:                                              ; preds = %431
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.77, i32 noundef %427) #24
  br label %443

434:                                              ; preds = %431
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.78) #24
  br label %443

435:                                              ; preds = %425, %424
  %436 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 1
  %437 = load i32, ptr %436, align 4, !tbaa !120
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %442, label %439

439:                                              ; preds = %435
  %440 = load i32, ptr %365, align 8, !tbaa !161
  %441 = icmp eq i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %439, %435
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.79) #24
  br label %443

443:                                              ; preds = %78, %184, %371, %434, %433, %442, %439, %422, %423, %368, %69
  %444 = phi i32 [ -1, %69 ], [ -1, %368 ], [ 0, %423 ], [ 0, %422 ], [ 0, %439 ], [ 0, %442 ], [ 0, %433 ], [ 0, %434 ], [ 0, %371 ], [ -1, %184 ], [ -1, %78 ]
  ret i32 %444
}

; Function Attrs: optsize
declare ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @parse_zone(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !PGOFuncName !272 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  store i32 0, ptr %4, align 4, !tbaa !99
  %5 = getelementptr inbounds %struct.x264_zone_t, ptr %1, i64 0, i32 5
  store ptr null, ptr %5, align 8, !tbaa !250
  %6 = getelementptr inbounds %struct.x264_zone_t, ptr %1, i64 0, i32 4
  store float 1.000000e+00, ptr %6, align 8, !tbaa !249
  %7 = getelementptr inbounds %struct.x264_zone_t, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.x264_zone_t, ptr %1, i64 0, i32 3
  %9 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %2, ptr noundef nonnull @.str.63, ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %4) #24
  %10 = icmp sgt i32 %9, 2
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %2, ptr noundef nonnull @.str.64, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %4) #24
  %13 = icmp sgt i32 %12, 2
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %2, ptr noundef nonnull @.str.65, ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %4) #24
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.66, ptr noundef %2) #24
  br label %47

18:                                               ; preds = %14, %11, %3
  %19 = phi i32 [ 1, %3 ], [ 0, %11 ], [ 0, %14 ]
  %20 = getelementptr inbounds %struct.x264_zone_t, ptr %1, i64 0, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !248
  %21 = load i32, ptr %4, align 4, !tbaa !99
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !97
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %47, label %26

26:                                               ; preds = %18
  %27 = call ptr @x264_malloc(i32 noundef 704) #24
  store ptr %27, ptr %5, align 8, !tbaa !250
  %28 = icmp eq ptr %27, null
  br i1 %28, label %47, label %29

29:                                               ; preds = %26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %27, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false)
  %30 = load ptr, ptr %5, align 8, !tbaa !250
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %30, i64 0, i32 59
  store ptr @x264_free, ptr %31, align 8, !tbaa !273
  br label %32

32:                                               ; preds = %41, %29
  %33 = phi ptr [ %23, %29 ], [ null, %41 ]
  %34 = call ptr @strtok(ptr noundef %33, ptr noundef nonnull @.str.67) #24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %47, label %36

36:                                               ; preds = %32
  %37 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %34, i32 noundef 61) #27
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  store i8 0, ptr %37, align 1, !tbaa !97
  %40 = getelementptr inbounds i8, ptr %37, i64 1
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi ptr [ %40, %39 ], [ null, %36 ]
  %43 = load ptr, ptr %5, align 8, !tbaa !250
  %44 = call i32 @x264_param_parse(ptr noundef %43, ptr noundef nonnull %34, ptr noundef %42) #24
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %32, label %46, !llvm.loop !274

46:                                               ; preds = %41
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.68, ptr noundef nonnull %34, ptr noundef %42) #24
  br label %47

47:                                               ; preds = %32, %46, %26, %18, %17
  %48 = phi i32 [ -1, %17 ], [ 0, %18 ], [ -1, %26 ], [ -1, %46 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  ret i32 %48
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: optsize
declare i32 @x264_param_parse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable
define internal fastcc double @qscale2bits(ptr nocapture noundef readonly %0, double noundef %1) unnamed_addr #14 !PGOFuncName !275 {
  %3 = fcmp olt double %1, 1.000000e-01
  %4 = select i1 %3, double 1.000000e-01, double %1
  %5 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %0, i64 0, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !276
  %7 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %0, i64 0, i32 3
  %8 = load double, ptr %7, align 8, !tbaa !213
  %9 = fdiv double %8, %4
  %10 = tail call double @pow(double noundef %9, double noundef 1.100000e+00) #24
  %11 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %0, i64 0, i32 4
  %12 = load i32, ptr %11, align 8, !tbaa !277
  %13 = load double, ptr %7, align 8, !tbaa !213
  %14 = fcmp ogt double %13, 1.000000e+00
  %15 = select i1 %14, double %13, double 1.000000e+00
  %16 = sitofp i32 %12 to double
  %17 = sitofp i32 %6 to double
  %18 = fadd double %17, 1.000000e-01
  %19 = fcmp ogt double %4, 1.000000e+00
  %20 = select i1 %19, double %4, double 1.000000e+00
  %21 = fdiv double %15, %20
  %22 = tail call double @pow(double noundef %21, double noundef 5.000000e-01) #24
  %23 = fmul double %22, %16
  %24 = tail call double @llvm.fmuladd.f64(double %18, double %10, double %23)
  %25 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %0, i64 0, i32 6
  %26 = load i32, ptr %25, align 8, !tbaa !214
  %27 = sitofp i32 %26 to double
  %28 = fadd double %24, %27
  ret double %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @get_qscale(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2, i32 noundef %3) unnamed_addr #0 !PGOFuncName !278 {
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !102
  %7 = tail call fastcc ptr @get_zone(ptr noundef %0, i32 noundef %3) #23
  %8 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 0, i32 14
  %9 = load float, ptr %8, align 8, !tbaa !262
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 7
  %12 = load double, ptr %11, align 8, !tbaa !125
  %13 = fsub double 1.000000e+00, %12
  %14 = tail call double @pow(double noundef %10, double noundef %13) #24
  %15 = tail call double @llvm.fabs.f64(double %14)
  %16 = fcmp ueq double %15, 0x7FF0000000000000
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !276
  %20 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 0, i32 4
  %21 = load i32, ptr %20, align 8, !tbaa !277
  %22 = sub i32 0, %21
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %17, %4
  %25 = load i32, ptr %1, align 8, !tbaa !106
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 45, i64 %26
  %28 = load double, ptr %27, align 8, !tbaa !192
  br label %33

29:                                               ; preds = %17
  %30 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 26
  store double %14, ptr %30, align 8, !tbaa !279
  %31 = fdiv double %14, %2
  %32 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 44
  store double %31, ptr %32, align 8, !tbaa !187
  br label %33

33:                                               ; preds = %29, %24
  %34 = phi double [ %28, %24 ], [ %31, %29 ]
  %35 = icmp eq ptr %7, null
  br i1 %35, label %50, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.x264_zone_t, ptr %7, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !248
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.x264_zone_t, ptr %7, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !280
  %43 = sitofp i32 %42 to double
  %44 = tail call fastcc double @qp2qscale(double noundef %43) #23
  br label %50

45:                                               ; preds = %36
  %46 = getelementptr inbounds %struct.x264_zone_t, ptr %7, i64 0, i32 4
  %47 = load float, ptr %46, align 8, !tbaa !249
  %48 = fpext float %47 to double
  %49 = fdiv double %34, %48
  br label %50

50:                                               ; preds = %40, %45, %33
  %51 = phi double [ %44, %40 ], [ %49, %45 ], [ %34, %33 ]
  ret double %51
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @get_diff_limited_q(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, double noundef %2) unnamed_addr #0 !PGOFuncName !281 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !102
  %6 = load i32, ptr %1, align 8, !tbaa !106
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 45
  %8 = load double, ptr %7, align 8, !tbaa !192
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 46
  %10 = load i32, ptr %9, align 8, !tbaa !174
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 45, i64 %11
  %13 = load double, ptr %12, align 8, !tbaa !192
  %14 = icmp eq i32 %6, 2
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 47
  %17 = load double, ptr %16, align 8, !tbaa !177
  %18 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 48
  %19 = load double, ptr %18, align 8, !tbaa !176
  %20 = fdiv double %17, %19
  %21 = tail call fastcc double @qp2qscale(double noundef %20) #23
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %23 = load float, ptr %22, align 8, !tbaa !180
  %24 = tail call float @llvm.fabs.f32(float %23)
  %25 = fpext float %24 to double
  %26 = load double, ptr %18, align 8, !tbaa !176
  %27 = fcmp ugt double %26, 0.000000e+00
  br i1 %27, label %28, label %61

28:                                               ; preds = %15
  %29 = fcmp olt float %23, 0.000000e+00
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = fdiv double %2, %25
  br label %61

32:                                               ; preds = %28
  %33 = fcmp ult double %26, 1.000000e+00
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = fdiv double %21, %25
  br label %61

36:                                               ; preds = %32
  %37 = fmul double %21, %26
  %38 = fdiv double %37, %25
  %39 = fsub double 1.000000e+00, %26
  %40 = tail call double @llvm.fmuladd.f64(double %39, double %2, double %38)
  br label %61

41:                                               ; preds = %3
  switch i32 %6, label %61 [
    i32 1, label %42
    i32 0, label %54
  ]

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %44 = load float, ptr %43, align 4, !tbaa !170
  %45 = fcmp ogt float %44, 0.000000e+00
  %46 = select i1 %45, double %13, double %2
  %47 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !108
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %42
  %51 = tail call float @llvm.fabs.f32(float %44)
  %52 = fpext float %51 to double
  %53 = fmul double %46, %52
  br label %61

54:                                               ; preds = %41
  %55 = icmp eq i32 %10, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %54
  %57 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 0, i32 5
  %58 = load i32, ptr %57, align 4, !tbaa !276
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %41, %34, %36, %30, %15, %50, %42, %60, %56, %54
  %62 = phi double [ %46, %42 ], [ %53, %50 ], [ %8, %60 ], [ %2, %56 ], [ %2, %54 ], [ %31, %30 ], [ %35, %34 ], [ %40, %36 ], [ %2, %15 ], [ %2, %41 ]
  %63 = load i32, ptr %9, align 8, !tbaa !174
  %64 = icmp eq i32 %63, %6
  br i1 %64, label %67, label %65

65:                                               ; preds = %61
  %66 = sext i32 %6 to i64
  br label %86

67:                                               ; preds = %61
  br i1 %14, label %68, label %74

68:                                               ; preds = %67
  %69 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 49
  %70 = load double, ptr %69, align 8, !tbaa !282
  %71 = fcmp olt double %70, 1.000000e+00
  br i1 %71, label %74, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 45, i64 2
  store double %62, ptr %73, align 8, !tbaa !192
  store i32 2, ptr %9, align 8, !tbaa !174
  br label %92

74:                                               ; preds = %68, %67
  %75 = sext i32 %6 to i64
  %76 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 45, i64 %75
  %77 = load double, ptr %76, align 8, !tbaa !192
  %78 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 52
  %79 = load double, ptr %78, align 8, !tbaa !186
  %80 = fmul double %77, %79
  %81 = fdiv double %77, %79
  %82 = fcmp ogt double %62, %80
  br i1 %82, label %86, label %83

83:                                               ; preds = %74
  %84 = fcmp olt double %62, %81
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %65, %85, %83, %74
  %87 = phi i64 [ %66, %65 ], [ %75, %85 ], [ %75, %83 ], [ %75, %74 ]
  %88 = phi double [ %62, %65 ], [ %81, %85 ], [ %62, %83 ], [ %80, %74 ]
  %89 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 45, i64 %87
  store double %88, ptr %89, align 8, !tbaa !192
  %90 = icmp eq i32 %6, 1
  br i1 %90, label %121, label %91

91:                                               ; preds = %86
  store i32 %6, ptr %9, align 8, !tbaa !174
  br i1 %14, label %92, label %98

92:                                               ; preds = %72, %91
  %93 = phi double [ %62, %72 ], [ %88, %91 ]
  %94 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 48
  %95 = load double, ptr %94, align 8, !tbaa !176
  %96 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 49
  store double %95, ptr %96, align 8, !tbaa !282
  %97 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %97, i8 0, i64 16, i1 false)
  br label %121

98:                                               ; preds = %91
  %99 = icmp eq i32 %6, 0
  br i1 %99, label %100, label %121

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %1, i64 0, i32 11
  %102 = load i32, ptr %101, align 4, !tbaa !259
  %103 = sitofp i32 %102 to float
  %104 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 8
  %105 = load i32, ptr %104, align 8, !tbaa !173
  %106 = sitofp i32 %105 to float
  %107 = fdiv float %103, %106
  %108 = fpext float %107 to double
  %109 = fmul double %108, %108
  %110 = fsub double 1.000000e+00, %109
  %111 = fptrunc double %110 to float
  %112 = fpext float %111 to double
  %113 = tail call fastcc double @qscale2qp(double noundef %88) #23
  %114 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 47
  %115 = load <2 x double>, ptr %114, align 8, !tbaa !192
  %116 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %113, i64 0
  %117 = fadd <2 x double> %116, %115
  %118 = insertelement <2 x double> poison, double %112, i64 0
  %119 = shufflevector <2 x double> %118, <2 x double> poison, <2 x i32> zeroinitializer
  %120 = fmul <2 x double> %117, %119
  store <2 x double> %120, ptr %114, align 8, !tbaa !192
  br label %121

121:                                              ; preds = %86, %92, %100, %98
  %122 = phi double [ %88, %100 ], [ %88, %98 ], [ %93, %92 ], [ %88, %86 ]
  ret double %122
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @clip_qscale(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #0 !PGOFuncName !283 {
  %4 = alloca [3 x double], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !102
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 50, i64 %7
  %9 = load double, ptr %8, align 8, !tbaa !192
  %10 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 51, i64 %7
  %11 = load double, ptr %10, align 8, !tbaa !192
  %12 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 24
  %13 = load double, ptr %12, align 8, !tbaa !158
  %14 = fcmp une double %13, 0.000000e+00
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 15
  %17 = load float, ptr %16, align 8, !tbaa !284
  %18 = fpext float %17 to double
  %19 = fadd double %13, %18
  %20 = tail call fastcc double @qp2qscale(double noundef %19) #23
  %21 = fcmp olt double %11, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %15
  %23 = load float, ptr %16, align 8, !tbaa !284
  %24 = fpext float %23 to double
  %25 = load double, ptr %12, align 8, !tbaa !158
  %26 = fadd double %25, %24
  %27 = tail call fastcc double @qp2qscale(double noundef %26) #23
  br label %28

28:                                               ; preds = %22, %15, %3
  %29 = phi double [ %11, %3 ], [ %27, %22 ], [ %11, %15 ]
  %30 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !161
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %292, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 25
  %35 = load i32, ptr %34, align 8, !tbaa !285
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %292

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %39 = load i32, ptr %38, align 4, !tbaa !208
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %139, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 22
  %43 = load ptr, ptr %42, align 8, !tbaa !189
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %45 = load i32, ptr %44, align 16, !tbaa !286
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.predictor_t, ptr %43, i64 %46
  %48 = sitofp i32 %35 to double
  %49 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %50 = load double, ptr %49, align 8, !tbaa !287
  %51 = icmp eq i32 %45, 2
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %54 = load float, ptr %53, align 4, !tbaa !170
  %55 = fpext float %54 to double
  %56 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 1
  %57 = load float, ptr %52, align 8, !tbaa !180
  %58 = fpext float %57 to double
  %59 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 2
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 21
  %63 = load double, ptr %62, align 8, !tbaa !152
  %64 = load double, ptr %60, align 8, !tbaa !153
  %65 = fmul double %64, 5.000000e-01
  %66 = fmul double %64, 8.000000e-01
  %67 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 3
  %68 = select i1 %51, double %58, double 1.000000e+00
  br label %69

69:                                               ; preds = %41, %131
  %70 = phi double [ %2, %41 ], [ %133, %131 ]
  %71 = phi i32 [ 0, %41 ], [ %134, %131 ]
  %72 = phi i32 [ 0, %41 ], [ %135, %131 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %73 = tail call fastcc double @predict_size(ptr noundef %47, double noundef %70, double noundef %48) #23
  %74 = fsub double %50, %73
  %75 = fmul double %70, %68
  store double %75, ptr %4, align 16, !tbaa !192
  %76 = fmul double %75, %55
  store double %76, ptr %56, align 8, !tbaa !192
  %77 = fdiv double %75, %58
  store double %77, ptr %59, align 16, !tbaa !192
  %78 = fcmp ult double %74, 0.000000e+00
  br i1 %78, label %109, label %79

79:                                               ; preds = %69, %93
  %80 = phi i64 [ %107, %93 ], [ 0, %69 ]
  %81 = phi double [ %106, %93 ], [ %74, %69 ]
  %82 = phi double [ %88, %93 ], [ 0.000000e+00, %69 ]
  %83 = fcmp ugt double %81, %64
  br i1 %83, label %109, label %84

84:                                               ; preds = %79
  %85 = load ptr, ptr %61, align 8, !tbaa !117
  %86 = getelementptr inbounds %struct.x264_frame, ptr %85, i64 0, i32 73, i64 %80
  %87 = load double, ptr %86, align 8, !tbaa !192
  %88 = fadd double %82, %87
  %89 = tail call double @llvm.fmuladd.f64(double %63, double %87, double %81)
  %90 = getelementptr inbounds %struct.x264_frame, ptr %85, i64 0, i32 71, i64 %80
  %91 = load i8, ptr %90, align 1, !tbaa !97
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %84
  %94 = getelementptr inbounds %struct.x264_frame, ptr %85, i64 0, i32 72, i64 %80
  %95 = load i32, ptr %94, align 4, !tbaa !99
  %96 = icmp ult i8 %91, 3
  %97 = and i8 %91, -2
  %98 = icmp eq i8 %97, 4
  %99 = zext i1 %98 to i64
  %100 = select i1 %96, i64 2, i64 %99
  %101 = getelementptr inbounds %struct.predictor_t, ptr %43, i64 %100
  %102 = getelementptr inbounds [3 x double], ptr %4, i64 0, i64 %100
  %103 = load double, ptr %102, align 8, !tbaa !192
  %104 = sitofp i32 %95 to double
  %105 = tail call fastcc double @predict_size(ptr noundef %101, double noundef %103, double noundef %104) #23
  %106 = fsub double %89, %105
  %107 = add nuw i64 %80, 1
  %108 = fcmp ult double %106, 0.000000e+00
  br i1 %108, label %109, label %79, !llvm.loop !288

109:                                              ; preds = %93, %79, %84, %69
  %110 = phi double [ 0.000000e+00, %69 ], [ %88, %84 ], [ %82, %79 ], [ %88, %93 ]
  %111 = phi double [ %74, %69 ], [ %89, %84 ], [ %81, %79 ], [ %106, %93 ]
  %112 = fmul double %110, %63
  %113 = tail call double @llvm.fmuladd.f64(double %112, double 5.000000e-01, double %50)
  %114 = fcmp olt double %113, %65
  %115 = select i1 %114, double %113, double %65
  %116 = fcmp olt double %111, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %109
  %118 = fmul double %70, 1.010000e+00
  br label %131

119:                                              ; preds = %109
  %120 = fneg double %110
  %121 = fmul double %63, %120
  %122 = tail call double @llvm.fmuladd.f64(double %121, double 5.000000e-01, double %50)
  %123 = tail call fastcc double @x264_clip3f(double noundef %122, double noundef %66, double noundef %64) #23
  %124 = load i32, ptr %67, align 4, !tbaa !131
  %125 = icmp ne i32 %124, 0
  %126 = fcmp ogt double %111, %123
  %127 = and i1 %126, %125
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = fdiv double %70, 1.010000e+00
  br label %131

130:                                              ; preds = %119
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  br label %205

131:                                              ; preds = %117, %128
  %132 = phi i32 [ 1, %117 ], [ 2, %128 ]
  %133 = phi double [ %118, %117 ], [ %129, %128 ]
  %134 = or i32 %71, %132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  %135 = add nuw nsw i32 %72, 1
  %136 = icmp ult i32 %72, 999
  %137 = icmp ne i32 %134, 3
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %69, label %205, !llvm.loop !289

139:                                              ; preds = %37
  switch i32 %1, label %156 [
    i32 0, label %144
    i32 2, label %140
  ]

140:                                              ; preds = %139
  %141 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 46
  %142 = load i32, ptr %141, align 8, !tbaa !174
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %156

144:                                              ; preds = %139, %140
  %145 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %146 = load double, ptr %145, align 8, !tbaa !287
  %147 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %148 = load double, ptr %147, align 8, !tbaa !153
  %149 = fdiv double %146, %148
  %150 = fcmp olt double %149, 5.000000e-01
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = fmul double %146, 2.000000e+00
  %153 = fdiv double %152, %148
  %154 = tail call fastcc double @x264_clip3f(double noundef %153, double noundef 5.000000e-01, double noundef 1.000000e+00) #23
  %155 = fdiv double %2, %154
  br label %156

156:                                              ; preds = %139, %151, %144, %140
  %157 = phi double [ %155, %151 ], [ %2, %144 ], [ %2, %140 ], [ %2, %139 ]
  %158 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 22
  %159 = load ptr, ptr %158, align 8, !tbaa !189
  %160 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %161 = load i32, ptr %160, align 16, !tbaa !286
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.predictor_t, ptr %159, i64 %162
  %164 = sitofp i32 %35 to double
  %165 = tail call fastcc double @predict_size(ptr noundef %163, double noundef %157, double noundef %164) #23
  %166 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %167 = load i32, ptr %166, align 8, !tbaa !129
  %168 = sitofp i32 %167 to double
  %169 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %170 = load i32, ptr %169, align 4, !tbaa !128
  %171 = mul nsw i32 %170, 5
  %172 = sitofp i32 %171 to double
  %173 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 4
  %174 = load double, ptr %173, align 8, !tbaa !130
  %175 = fdiv double %172, %174
  %176 = fcmp ole double %175, %168
  %177 = select i1 %176, double 2.000000e+00, double 1.000000e+00
  %178 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 23
  %179 = load i32, ptr %178, align 8, !tbaa !154
  %180 = icmp eq i32 %179, 0
  %181 = select i1 %180, i32 2, i32 1
  %182 = sitofp i32 %181 to double
  %183 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 19
  %184 = load double, ptr %183, align 8, !tbaa !287
  %185 = fdiv double %184, %177
  %186 = fcmp ogt double %165, %185
  br i1 %186, label %187, label %191

187:                                              ; preds = %156
  %188 = fmul double %165, %177
  %189 = fdiv double %184, %188
  %190 = tail call fastcc double @x264_clip3f(double noundef %189, double noundef 2.000000e-01, double noundef 1.000000e+00) #23
  br label %191

191:                                              ; preds = %187, %156
  %192 = phi double [ %190, %187 ], [ 1.000000e+00, %156 ]
  %193 = fdiv double %157, %192
  %194 = fmul double %165, %192
  %195 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 20
  %196 = load double, ptr %195, align 8, !tbaa !151
  %197 = fdiv double %196, %182
  %198 = fcmp olt double %194, %197
  %199 = fmul double %194, %182
  %200 = fdiv double %199, %196
  %201 = select i1 %198, double %200, double 1.000000e+00
  %202 = fmul double %193, %201
  %203 = fcmp olt double %202, %2
  %204 = select i1 %203, double %2, double %202
  br label %205

205:                                              ; preds = %131, %130, %191
  %206 = phi double [ %48, %130 ], [ %164, %191 ], [ %48, %131 ]
  %207 = phi i64 [ %46, %130 ], [ %162, %191 ], [ %46, %131 ]
  %208 = phi double [ %50, %130 ], [ %184, %191 ], [ %50, %131 ]
  %209 = phi i32 [ %45, %130 ], [ %161, %191 ], [ %45, %131 ]
  %210 = phi ptr [ %43, %130 ], [ %159, %191 ], [ %43, %131 ]
  %211 = phi double [ %70, %130 ], [ %204, %191 ], [ %133, %131 ]
  %212 = getelementptr inbounds %struct.predictor_t, ptr %210, i64 %207
  %213 = tail call fastcc double @predict_size(ptr noundef %212, double noundef %211, double noundef %206) #23
  %214 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 56
  %215 = load double, ptr %214, align 8, !tbaa !290
  %216 = fcmp ogt double %213, %215
  %217 = fdiv double %213, %215
  %218 = select i1 %216, double %217, double 1.000000e+00
  %219 = fmul double %211, %218
  %220 = tail call fastcc double @predict_size(ptr noundef %212, double noundef %219, double noundef %206) #23
  %221 = icmp eq i32 %209, 0
  br i1 %221, label %222, label %284

222:                                              ; preds = %205
  %223 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 23
  %224 = load i32, ptr %223, align 8, !tbaa !154
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %284

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 63
  %228 = load i32, ptr %227, align 8, !tbaa !291
  %229 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 62
  %230 = load ptr, ptr %229, align 8, !tbaa !190
  %231 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %232 = load float, ptr %231, align 4, !tbaa !170
  %233 = fpext float %232 to double
  %234 = fmul double %219, %233
  %235 = tail call fastcc double @predict_size(ptr noundef %230, double noundef %234, double noundef %206) #23
  %236 = icmp sgt i32 %228, 0
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %238 = load ptr, ptr %237, align 8, !tbaa !117
  br i1 %236, label %239, label %241

239:                                              ; preds = %226
  %240 = zext nneg i32 %228 to i64
  br label %259

241:                                              ; preds = %259, %226
  %242 = phi double [ 0.000000e+00, %226 ], [ %265, %259 ]
  %243 = sitofp i32 %228 to double
  %244 = fmul double %235, %243
  %245 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 21
  %246 = load double, ptr %245, align 8, !tbaa !152
  %247 = fmul double %242, %246
  %248 = fcmp ogt double %244, %247
  %249 = select i1 %248, double 0.000000e+00, double %243
  %250 = tail call double @llvm.fmuladd.f64(double %249, double %235, double %220)
  %251 = getelementptr inbounds %struct.x264_frame, ptr %238, i64 0, i32 73
  %252 = load double, ptr %251, align 8, !tbaa !192
  %253 = fadd double %242, %252
  %254 = tail call double @llvm.fmuladd.f64(double %253, double %246, double %208)
  %255 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %256 = load double, ptr %255, align 8, !tbaa !153
  %257 = fsub double %254, %256
  %258 = fcmp olt double %250, %257
  br i1 %258, label %267, label %279

259:                                              ; preds = %239, %259
  %260 = phi i64 [ 0, %239 ], [ %262, %259 ]
  %261 = phi double [ 0.000000e+00, %239 ], [ %265, %259 ]
  %262 = add nuw nsw i64 %260, 1
  %263 = getelementptr inbounds %struct.x264_frame, ptr %238, i64 0, i32 73, i64 %262
  %264 = load double, ptr %263, align 8, !tbaa !192
  %265 = fadd double %261, %264
  %266 = icmp eq i64 %262, %240
  br i1 %266, label %241, label %259, !llvm.loop !292

267:                                              ; preds = %241
  %268 = fmul double %256, 5.000000e-01
  %269 = insertelement <2 x double> poison, double %250, i64 0
  %270 = insertelement <2 x double> %269, double %220, i64 1
  %271 = insertelement <2 x double> poison, double %257, i64 0
  %272 = insertelement <2 x double> %271, double %268, i64 1
  %273 = fdiv <2 x double> %270, %272
  %274 = extractelement <2 x double> %273, i64 0
  %275 = extractelement <2 x double> %273, i64 1
  %276 = fcmp ogt double %274, %275
  %277 = select i1 %276, double %274, double %275
  %278 = fmul double %219, %277
  br label %279

279:                                              ; preds = %267, %241
  %280 = phi double [ %278, %267 ], [ %219, %241 ]
  %281 = fadd double %2, -5.000000e+00
  %282 = fcmp ogt double %281, %280
  %283 = select i1 %282, double %281, double %280
  br label %284

284:                                              ; preds = %279, %222, %205
  %285 = phi double [ %219, %222 ], [ %283, %279 ], [ %219, %205 ]
  %286 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 3
  %287 = load i32, ptr %286, align 4, !tbaa !131
  %288 = icmp eq i32 %287, 0
  %289 = fcmp olt double %285, %2
  %290 = select i1 %288, i1 %289, i1 false
  %291 = select i1 %290, double %2, double %285
  br label %292

292:                                              ; preds = %284, %33, %28
  %293 = phi double [ %291, %284 ], [ %2, %33 ], [ %2, %28 ]
  %294 = fcmp oeq double %9, %29
  br i1 %294, label %315, label %295

295:                                              ; preds = %292
  %296 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 1
  %297 = load i32, ptr %296, align 4, !tbaa !120
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %313, label %299

299:                                              ; preds = %295
  %300 = tail call double @log(double noundef %9) #24
  %301 = tail call double @log(double noundef %29) #24
  %302 = tail call double @log(double noundef %293) #24
  %303 = fsub double %302, %300
  %304 = fsub double %301, %300
  %305 = fdiv double %303, %304
  %306 = fadd double %305, -5.000000e-01
  %307 = fmul double %306, -4.000000e+00
  %308 = tail call double @exp(double noundef %307) #24
  %309 = fadd double %308, 1.000000e+00
  %310 = fdiv double 1.000000e+00, %309
  %311 = tail call double @llvm.fmuladd.f64(double %310, double %304, double %300)
  %312 = tail call double @exp(double noundef %311) #24
  br label %315

313:                                              ; preds = %295
  %314 = tail call fastcc double @x264_clip3f(double noundef %293, double noundef %9, double noundef %29) #23
  br label %315

315:                                              ; preds = %292, %313, %299
  %316 = phi double [ %312, %299 ], [ %314, %313 ], [ %9, %292 ]
  ret double %316
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @vbv_pass2(ptr noundef %0, double noundef %1) unnamed_addr #0 !PGOFuncName !293 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !193
  %9 = sitofp i32 %8 to double
  %10 = tail call fastcc double @qp2qscale(double noundef %9) #23
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !194
  %13 = sitofp i32 %12 to double
  %14 = tail call fastcc double @qp2qscale(double noundef %13) #23
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 42
  %16 = load i32, ptr %15, align 8, !tbaa !210
  %17 = shl i32 %16, 3
  %18 = add i32 %17, 8
  %19 = tail call ptr @x264_malloc(i32 noundef %18) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %89, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds double, ptr %19, i64 1
  %23 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 17
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 11
  %25 = fmul double %1, 0x3FEFD70A3D70A3D7
  br label %26

26:                                               ; preds = %64, %21
  %27 = phi double [ 0.000000e+00, %21 ], [ %62, %64 ]
  %28 = fcmp une double %27, 0.000000e+00
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = fdiv double %27, %1
  %31 = fcmp olt double %30, 0x3FEFF7CED916872B
  %32 = select i1 %31, double %30, double 0x3FEFF7CED916872B
  %33 = fcmp ogt double %32, 9.000000e-01
  %34 = select i1 %33, double %32, double 9.000000e-01
  %35 = load double, ptr %23, align 8, !tbaa !153
  %36 = load float, ptr %24, align 4, !tbaa !159
  %37 = fpext float %36 to double
  %38 = fmul double %35, %37
  store double %38, ptr %19, align 8, !tbaa !192
  store i32 0, ptr %3, align 4, !tbaa !99
  br label %39

39:                                               ; preds = %29, %42
  %40 = call fastcc i32 @find_underflow(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #23, !range !294
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %3, align 4, !tbaa !99
  %44 = load i32, ptr %4, align 4, !tbaa !99
  %45 = tail call fastcc i32 @fix_underflow(ptr noundef %0, i32 noundef %43, i32 noundef %44, double noundef %34, double noundef %10, double noundef %14) #23, !range !294
  store i32 %44, ptr %3, align 4, !tbaa !99
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %39, !llvm.loop !295

47:                                               ; preds = %39, %42, %26
  %48 = load double, ptr %23, align 8, !tbaa !153
  %49 = load float, ptr %24, align 4, !tbaa !159
  %50 = fpext float %49 to double
  %51 = fsub double 1.000000e+00, %50
  %52 = fmul double %48, %51
  store double %52, ptr %19, align 8, !tbaa !192
  store i32 0, ptr %3, align 4, !tbaa !99
  br label %53

53:                                               ; preds = %47, %56
  %54 = call fastcc i32 @find_underflow(ptr noundef %0, ptr noundef nonnull %22, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #23, !range !294
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr %3, align 4, !tbaa !99
  %58 = load i32, ptr %4, align 4, !tbaa !99
  %59 = tail call fastcc i32 @fix_underflow(ptr noundef %0, i32 noundef %57, i32 noundef %58, double noundef 1.001000e+00, double noundef %10, double noundef %14) #23, !range !294
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %53, !llvm.loop !296

61:                                               ; preds = %56, %53
  %62 = tail call fastcc double @count_expected_bits(ptr noundef %0) #23
  %63 = fcmp olt double %62, %25
  br i1 %63, label %64, label %70

64:                                               ; preds = %61
  %65 = fadd double %62, 5.000000e-01
  %66 = fptosi double %65 to i64
  %67 = fadd double %27, 5.000000e-01
  %68 = fptosi double %67 to i64
  %69 = icmp sgt i64 %66, %68
  br i1 %69, label %26, label %70, !llvm.loop !297

70:                                               ; preds = %61, %64
  br i1 %55, label %72, label %71

71:                                               ; preds = %70
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.80) #24
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, ptr %15, align 8, !tbaa !210
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load double, ptr %23, align 8, !tbaa !153
  %77 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 43
  %78 = load ptr, ptr %77, align 8, !tbaa !103
  %79 = zext nneg i32 %73 to i64
  br label %81

80:                                               ; preds = %81, %72
  tail call void @x264_free(ptr noundef nonnull %19) #24
  br label %89

81:                                               ; preds = %75, %81
  %82 = phi i64 [ 0, %75 ], [ %87, %81 ]
  %83 = getelementptr inbounds double, ptr %22, i64 %82
  %84 = load double, ptr %83, align 8, !tbaa !192
  %85 = fsub double %76, %84
  %86 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %78, i64 %82, i32 8
  store double %85, ptr %86, align 8, !tbaa !298
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, %79
  br i1 %88, label %80, label %81, !llvm.loop !299

89:                                               ; preds = %2, %80
  %90 = phi i32 [ 0, %80 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %90
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc double @count_expected_bits(ptr nocapture noundef readonly %0) unnamed_addr #15 !PGOFuncName !300 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %5 = load i32, ptr %4, align 8, !tbaa !210
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  br label %11

9:                                                ; preds = %11, %1
  %10 = phi double [ 0.000000e+00, %1 ], [ %21, %11 ]
  ret double %10

11:                                               ; preds = %7, %11
  %12 = phi i64 [ 0, %7 ], [ %22, %11 ]
  %13 = phi double [ 0.000000e+00, %7 ], [ %21, %11 ]
  %14 = load ptr, ptr %8, align 8, !tbaa !103
  %15 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %14, i64 %12
  %16 = fptoui double %13 to i64
  %17 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %14, i64 %12, i32 7
  store i64 %16, ptr %17, align 8, !tbaa !301
  %18 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %14, i64 %12, i32 9
  %19 = load double, ptr %18, align 8, !tbaa !212
  %20 = tail call fastcc double @qscale2bits(ptr noundef %15, double noundef %19) #23
  %21 = fadd double %13, %20
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %4, align 8, !tbaa !210
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %11, label %9, !llvm.loop !302
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc double @qscale2qp(double noundef %0) unnamed_addr #16 !PGOFuncName !303 {
  %2 = fdiv double %0, 8.500000e-01
  %3 = tail call double @log2(double noundef %2) #24
  %4 = tail call double @llvm.fmuladd.f64(double %3, double 6.000000e+00, double 1.200000e+01)
  ret double %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @get_zone(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !PGOFuncName !304 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 65
  %6 = load i32, ptr %5, align 8, !tbaa !243
  %7 = icmp slt i32 %6, 1
  br i1 %7, label %24, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 66
  %10 = load ptr, ptr %9, align 8, !tbaa !244
  %11 = zext nneg i32 %6 to i64
  br label %12

12:                                               ; preds = %8, %22
  %13 = phi i64 [ %11, %8 ], [ %14, %22 ]
  %14 = add nsw i64 %13, -1
  %15 = getelementptr inbounds %struct.x264_zone_t, ptr %10, i64 %14
  %16 = load i32, ptr %15, align 8, !tbaa !245
  %17 = icmp sgt i32 %16, %1
  br i1 %17, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.x264_zone_t, ptr %10, i64 %14, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !247
  %21 = icmp slt i32 %20, %1
  br i1 %21, label %22, label %24

22:                                               ; preds = %12, %18
  %23 = icmp ult i64 %13, 2
  br i1 %23, label %24, label %12, !llvm.loop !305

24:                                               ; preds = %22, %18, %2
  %25 = phi ptr [ null, %2 ], [ %15, %18 ], [ null, %22 ]
  ret ptr %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc double @predict_size(ptr nocapture noundef readonly %0, double noundef %1, double noundef %2) unnamed_addr #18 !PGOFuncName !306 {
  %4 = load double, ptr %0, align 8, !tbaa !307
  %5 = getelementptr inbounds %struct.predictor_t, ptr %0, i64 0, i32 3
  %6 = load double, ptr %5, align 8, !tbaa !308
  %7 = tail call double @llvm.fmuladd.f64(double %4, double %2, double %6)
  %8 = getelementptr inbounds %struct.predictor_t, ptr %0, i64 0, i32 1
  %9 = load double, ptr %8, align 8, !tbaa !309
  %10 = fmul double %9, %1
  %11 = fdiv double %7, %10
  ret double %11
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #3

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable
define internal fastcc i32 @find_underflow(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4) unnamed_addr #15 !PGOFuncName !310 {
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 16, !tbaa !102
  %8 = icmp eq i32 %4, 0
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 17
  %10 = load double, ptr %9, align 8, !tbaa !153
  %11 = fmul double %10, 1.000000e-01
  %12 = fmul double %10, 9.000000e-01
  %13 = load i32, ptr %2, align 4, !tbaa !99
  %14 = select i1 %8, double -1.000000e+00, double 1.000000e+00
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 42
  %16 = load i32, ptr %15, align 8, !tbaa !210
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %5
  %19 = sext i32 %13 to i64
  %20 = getelementptr double, ptr %1, i64 %19
  %21 = getelementptr double, ptr %20, i64 -1
  %22 = load double, ptr %21, align 8, !tbaa !192
  %23 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 43
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 21
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  br label %26

26:                                               ; preds = %18, %67
  %27 = phi i64 [ %19, %18 ], [ %70, %67 ]
  %28 = phi i32 [ -1, %18 ], [ %69, %67 ]
  %29 = phi i32 [ -1, %18 ], [ %68, %67 ]
  %30 = phi double [ %22, %18 ], [ %53, %67 ]
  %31 = load ptr, ptr %23, align 8, !tbaa !103
  %32 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %31, i64 %27
  %33 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %31, i64 %27, i32 21
  %34 = load i32, ptr %33, align 4, !tbaa !311
  %35 = sitofp i32 %34 to double
  %36 = load double, ptr %24, align 8, !tbaa !152
  %37 = fmul double %36, %35
  %38 = load ptr, ptr %25, align 16, !tbaa !79
  %39 = getelementptr inbounds %struct.x264_sps_t, ptr %38, i64 0, i32 24, i32 16
  %40 = load i32, ptr %39, align 4, !tbaa !146
  %41 = uitofp i32 %40 to double
  %42 = fmul double %37, %41
  %43 = getelementptr inbounds %struct.x264_sps_t, ptr %38, i64 0, i32 24, i32 17
  %44 = load i32, ptr %43, align 4, !tbaa !145
  %45 = uitofp i32 %44 to double
  %46 = fdiv double %42, %45
  %47 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %31, i64 %27, i32 9
  %48 = load double, ptr %47, align 8, !tbaa !212
  %49 = tail call fastcc double @qscale2bits(ptr noundef %32, double noundef %48) #23
  %50 = fsub double %46, %49
  %51 = tail call double @llvm.fmuladd.f64(double %50, double %14, double %30)
  %52 = load double, ptr %9, align 8, !tbaa !153
  %53 = tail call fastcc double @x264_clip3f(double noundef %51, double noundef 0.000000e+00, double noundef %52) #23
  %54 = getelementptr inbounds double, ptr %1, i64 %27
  store double %53, ptr %54, align 8, !tbaa !192
  %55 = fcmp ole double %53, %11
  %56 = icmp eq i64 %27, 0
  %57 = or i1 %56, %55
  br i1 %57, label %58, label %61

58:                                               ; preds = %26
  %59 = icmp sgt i32 %28, -1
  %60 = trunc i64 %27 to i32
  br i1 %59, label %74, label %67

61:                                               ; preds = %26
  %62 = fcmp oge double %53, %12
  %63 = icmp sgt i32 %29, -1
  %64 = select i1 %62, i1 %63, i1 false
  %65 = trunc i64 %27 to i32
  %66 = select i1 %64, i32 %65, i32 %28
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i32 [ %60, %58 ], [ %29, %61 ]
  %69 = phi i32 [ %28, %58 ], [ %66, %61 ]
  %70 = add nsw i64 %27, 1
  %71 = load i32, ptr %15, align 8, !tbaa !210
  %72 = sext i32 %71 to i64
  %73 = icmp slt i64 %70, %72
  br i1 %73, label %26, label %74, !llvm.loop !312

74:                                               ; preds = %67, %58, %5
  %75 = phi i32 [ -1, %5 ], [ %29, %58 ], [ %68, %67 ]
  %76 = phi i32 [ -1, %5 ], [ %28, %58 ], [ %69, %67 ]
  store i32 %75, ptr %2, align 4, !tbaa !99
  store i32 %76, ptr %3, align 4, !tbaa !99
  %77 = icmp sgt i32 %75, -1
  %78 = icmp sgt i32 %76, -1
  %79 = select i1 %77, i1 %78, i1 false
  %80 = zext i1 %79 to i32
  ret i32 %80
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @fix_underflow(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, double noundef %3, double noundef %4, double noundef %5) unnamed_addr #8 !PGOFuncName !313 {
  %7 = icmp sgt i32 %1, 0
  %8 = zext i1 %7 to i32
  %9 = add nuw nsw i32 %8, %1
  %10 = icmp sgt i32 %9, %2
  br i1 %10, label %22, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %13 = load ptr, ptr %12, align 16, !tbaa !102
  %14 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %13, i64 0, i32 43
  %15 = load ptr, ptr %14, align 8, !tbaa !103
  %16 = sext i32 %1 to i64
  %17 = zext i1 %7 to i64
  %18 = add nsw i64 %16, %17
  %19 = add i32 %2, 1
  br label %24

20:                                               ; preds = %24
  %21 = zext i1 %33 to i32
  br label %22

22:                                               ; preds = %20, %6
  %23 = phi i32 [ 0, %6 ], [ %21, %20 ]
  ret i32 %23

24:                                               ; preds = %11, %24
  %25 = phi i64 [ %18, %11 ], [ %34, %24 ]
  %26 = phi i1 [ false, %11 ], [ %33, %24 ]
  %27 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %15, i64 %25, i32 9
  %28 = load double, ptr %27, align 8, !tbaa !212
  %29 = tail call fastcc double @x264_clip3f(double noundef %28, double noundef %4, double noundef %5) #23
  %30 = fmul double %29, %3
  %31 = tail call fastcc double @x264_clip3f(double noundef %30, double noundef %4, double noundef %5) #23
  store double %31, ptr %27, align 8, !tbaa !212
  %32 = fcmp une double %31, %29
  %33 = or i1 %26, %32
  %34 = add nsw i64 %25, 1
  %35 = trunc i64 %34 to i32
  %36 = icmp eq i32 %19, %35
  br i1 %36, label %20, label %24, !llvm.loop !314
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log2(double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_ratecontrol_summary(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = load i32, ptr %3, align 8, !tbaa !166
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %8 = load i32, ptr %7, align 8, !tbaa !121
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %46

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 30
  %12 = load double, ptr %11, align 8, !tbaa !156
  %13 = fcmp ogt double %12, 9.999000e-01
  br i1 %13, label %14, label %46

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %16 = load i32, ptr %15, align 16, !tbaa !68
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %18 = load i32, ptr %17, align 4, !tbaa !122
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 80, i32 120
  %21 = mul nsw i32 %20, %16
  %22 = sitofp i32 %21 to double
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %24 = load i32, ptr %23, align 8, !tbaa !123
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %28 = load float, ptr %27, align 8, !tbaa !124
  %29 = fpext float %28 to double
  %30 = fsub double 1.000000e+00, %29
  %31 = fmul double %30, 1.350000e+01
  br label %32

32:                                               ; preds = %14, %26
  %33 = phi double [ %31, %26 ], [ 0.000000e+00, %14 ]
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 7
  %35 = load double, ptr %34, align 8, !tbaa !125
  %36 = fsub double 1.000000e+00, %35
  %37 = tail call double @pow(double noundef %22, double noundef %36) #24
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 27
  %39 = load double, ptr %38, align 8, !tbaa !178
  %40 = fmul double %37, %39
  %41 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 29
  %42 = load double, ptr %41, align 8, !tbaa !179
  %43 = fdiv double %40, %42
  %44 = tail call fastcc double @qscale2qp(double noundef %43) #23
  %45 = fsub double %44, %33
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.81, double noundef %45) #24
  br label %46

46:                                               ; preds = %32, %10, %6, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_ratecontrol_delete(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 36
  %5 = load ptr, ptr %4, align 8, !tbaa !225
  %6 = icmp eq ptr %5, null
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @fclose(ptr noundef nonnull %5) #23
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %10 = load i32, ptr %9, align 4, !tbaa !315
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %12 = load i32, ptr %11, align 8, !tbaa !210
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37
  %16 = load ptr, ptr %15, align 8, !tbaa !224
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %18 = load ptr, ptr %17, align 8, !tbaa !223
  %19 = tail call i32 @rename(ptr noundef %16, ptr noundef %18) #24
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !224
  %23 = load ptr, ptr %17, align 8, !tbaa !223
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef %22, ptr noundef %23) #24
  br label %24

24:                                               ; preds = %14, %21, %7
  %25 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 37
  %26 = load ptr, ptr %25, align 8, !tbaa !224
  tail call void @x264_free(ptr noundef %26) #24
  br label %27

27:                                               ; preds = %24, %1
  %28 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 38
  %29 = load ptr, ptr %28, align 8, !tbaa !228
  %30 = icmp eq ptr %29, null
  br i1 %30, label %53, label %31

31:                                               ; preds = %27
  %32 = tail call i32 @fclose(ptr noundef nonnull %29) #23
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !315
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 42
  %36 = load i32, ptr %35, align 8, !tbaa !210
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %48, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 39
  %40 = load ptr, ptr %39, align 8, !tbaa !226
  %41 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 40
  %42 = load ptr, ptr %41, align 8, !tbaa !227
  %43 = tail call i32 @rename(ptr noundef %40, ptr noundef %42) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %39, align 8, !tbaa !226
  %47 = load ptr, ptr %41, align 8, !tbaa !227
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.82, ptr noundef %46, ptr noundef %47) #24
  br label %48

48:                                               ; preds = %38, %45, %31
  %49 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 39
  %50 = load ptr, ptr %49, align 8, !tbaa !226
  tail call void @x264_free(ptr noundef %50) #24
  %51 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 40
  %52 = load ptr, ptr %51, align 8, !tbaa !227
  tail call void @x264_free(ptr noundef %52) #24
  br label %53

53:                                               ; preds = %48, %27
  %54 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 41
  %55 = load ptr, ptr %54, align 8, !tbaa !110
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = tail call i32 @fclose(ptr noundef nonnull %55) #23
  br label %59

59:                                               ; preds = %57, %53
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 22
  %61 = load ptr, ptr %60, align 8, !tbaa !189
  tail call void @x264_free(ptr noundef %61) #24
  %62 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 62
  %63 = load ptr, ptr %62, align 8, !tbaa !190
  tail call void @x264_free(ptr noundef %63) #24
  %64 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 43
  %65 = load ptr, ptr %64, align 8, !tbaa !103
  tail call void @x264_free(ptr noundef %65) #24
  %66 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 53
  %67 = load ptr, ptr %66, align 8, !tbaa !101
  tail call void @x264_free(ptr noundef %67) #24
  %68 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 53, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  tail call void @x264_free(ptr noundef %69) #24
  %70 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 66
  %71 = load ptr, ptr %70, align 8, !tbaa !244
  %72 = icmp eq ptr %71, null
  br i1 %72, label %101, label %73

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.x264_zone_t, ptr %71, i64 0, i32 5
  %75 = load ptr, ptr %74, align 8, !tbaa !250
  tail call void @x264_free(ptr noundef %75) #24
  %76 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 65
  %77 = load i32, ptr %76, align 8, !tbaa !243
  %78 = icmp sgt i32 %77, 1
  br i1 %78, label %81, label %79

79:                                               ; preds = %96, %73
  %80 = load ptr, ptr %70, align 8, !tbaa !244
  tail call void @x264_free(ptr noundef %80) #24
  br label %101

81:                                               ; preds = %73, %96
  %82 = phi i32 [ %97, %96 ], [ %77, %73 ]
  %83 = phi i64 [ %98, %96 ], [ 1, %73 ]
  %84 = load ptr, ptr %70, align 8, !tbaa !244
  %85 = getelementptr inbounds %struct.x264_zone_t, ptr %84, i64 %83, i32 5
  %86 = load ptr, ptr %85, align 8, !tbaa !250
  %87 = getelementptr inbounds %struct.x264_zone_t, ptr %84, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !250
  %89 = icmp eq ptr %86, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %86, i64 0, i32 59
  %92 = load ptr, ptr %91, align 8, !tbaa !273
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94

94:                                               ; preds = %90
  tail call void %92(ptr noundef nonnull %86) #24
  %95 = load i32, ptr %76, align 8, !tbaa !243
  br label %96

96:                                               ; preds = %81, %90, %94
  %97 = phi i32 [ %82, %81 ], [ %82, %90 ], [ %95, %94 ]
  %98 = add nuw nsw i64 %83, 1
  %99 = sext i32 %97 to i64
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %81, label %79, !llvm.loop !316

101:                                              ; preds = %79, %59
  tail call void @x264_free(ptr noundef nonnull %3) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @rename(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_ratecontrol_start(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !102
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %7 = load ptr, ptr %6, align 8, !tbaa !117
  %8 = getelementptr inbounds %struct.x264_frame, ptr %7, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !105
  %10 = tail call fastcc ptr @get_zone(ptr noundef %0, i32 noundef %9) #23
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 67
  %14 = load ptr, ptr %13, align 8, !tbaa !317
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.x264_zone_t, ptr %10, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !250
  br i1 %15, label %22, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.x264_zone_t, ptr %14, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !250
  %21 = icmp eq ptr %17, %20
  br i1 %21, label %24, label %22

22:                                               ; preds = %12, %18
  %23 = tail call i32 @x264_encoder_reconfig(ptr noundef nonnull %0, ptr noundef %17) #24
  br label %24

24:                                               ; preds = %22, %18, %3
  %25 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 67
  store ptr %10, ptr %25, align 8, !tbaa !317
  %26 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 16
  store i32 %1, ptr %26, align 4, !tbaa !318
  %27 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %28 = load i32, ptr %27, align 8, !tbaa !167
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %6, align 8, !tbaa !117
  %32 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 10
  %33 = load i32, ptr %32, align 8, !tbaa !105
  %34 = icmp sgt i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 42
  %37 = load i32, ptr %36, align 8, !tbaa !210
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %30
  tail call void @__assert_fail(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.9, i32 noundef 1090, ptr noundef nonnull @__PRETTY_FUNCTION__.x264_ratecontrol_start) #26
  unreachable

40:                                               ; preds = %35
  %41 = load ptr, ptr %4, align 16, !tbaa !102
  %42 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %41, i64 0, i32 43
  %43 = load ptr, ptr %42, align 8, !tbaa !103
  %44 = zext nneg i32 %33 to i64
  %45 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %43, i64 %44
  %46 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %41, i64 0, i32 10
  store ptr %45, ptr %46, align 8, !tbaa !114
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %48 = load i32, ptr %47, align 16, !tbaa !286
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %52 = load i32, ptr %51, align 4, !tbaa !205
  %53 = icmp eq i32 %52, 3
  br i1 %53, label %54, label %64

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %43, i64 %44, i32 15
  %56 = load i8, ptr %55, align 4, !tbaa !217
  %57 = icmp eq i8 %56, 115
  %58 = zext i1 %57 to i32
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  store i32 %58, ptr %59, align 8, !tbaa !319
  %60 = add i8 %56, -115
  %61 = icmp ult i8 %60, 2
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 74
  store i32 %62, ptr %63, align 8, !tbaa !320
  br label %64

64:                                               ; preds = %40, %50, %54, %24
  %65 = phi ptr [ null, %24 ], [ %45, %54 ], [ %45, %50 ], [ %45, %40 ]
  %66 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 2
  %67 = load i32, ptr %66, align 8, !tbaa !161
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %173, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %71 = load ptr, ptr %70, align 16, !tbaa !321
  %72 = getelementptr inbounds %struct.x264_frame, ptr %71, i64 0, i32 58
  %73 = load ptr, ptr %72, align 8, !tbaa !322
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %75 = load ptr, ptr %74, align 16, !tbaa !79
  %76 = getelementptr inbounds %struct.x264_sps_t, ptr %75, i64 0, i32 17
  %77 = load i32, ptr %76, align 4, !tbaa !80
  %78 = sext i32 %77 to i64
  %79 = shl nsw i64 %78, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %73, i8 0, i64 %79, i1 false)
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %81 = load i32, ptr %80, align 16, !tbaa !286
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 61, i64 %82
  %84 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 60
  store ptr %83, ptr %84, align 8, !tbaa !323
  %85 = load ptr, ptr %6, align 8, !tbaa !117
  %86 = getelementptr inbounds %struct.x264_frame, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4, !tbaa !324
  %88 = sitofp i32 %87 to double
  %89 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 21
  %90 = load double, ptr %89, align 8, !tbaa !152
  %91 = fmul double %90, %88
  %92 = load ptr, ptr %74, align 16, !tbaa !79
  %93 = getelementptr inbounds %struct.x264_sps_t, ptr %92, i64 0, i32 24, i32 16
  %94 = load i32, ptr %93, align 4, !tbaa !146
  %95 = uitofp i32 %94 to double
  %96 = fmul double %91, %95
  %97 = getelementptr inbounds %struct.x264_sps_t, ptr %92, i64 0, i32 24, i32 17
  %98 = load i32, ptr %97, align 4, !tbaa !145
  %99 = uitofp i32 %98 to double
  %100 = fdiv double %96, %99
  %101 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 20
  store double %100, ptr %101, align 8, !tbaa !151
  tail call fastcc void @update_vbv_plan(ptr noundef nonnull %0, i32 noundef %2) #23
  %102 = load i32, ptr @x264_levels, align 4, !tbaa !325
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %69
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  %106 = load i32, ptr %105, align 16, !tbaa !327
  br label %111

107:                                              ; preds = %115, %69
  %108 = phi ptr [ @x264_levels, %69 ], [ %116, %115 ]
  %109 = getelementptr inbounds %struct.x264_level_t, ptr %108, i64 0, i32 9
  %110 = load i32, ptr %109, align 4, !tbaa !328
  br label %128

111:                                              ; preds = %104, %115
  %112 = phi i32 [ %102, %104 ], [ %117, %115 ]
  %113 = phi ptr [ @x264_levels, %104 ], [ %116, %115 ]
  %114 = icmp eq i32 %112, %106
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.x264_level_t, ptr %113, i64 1
  %117 = load i32, ptr %116, align 4, !tbaa !325
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %107, label %111, !llvm.loop !329

119:                                              ; preds = %111
  %120 = getelementptr inbounds %struct.x264_level_t, ptr %113, i64 0, i32 9
  %121 = load i32, ptr %120, align 4, !tbaa !328
  %122 = icmp eq i32 %106, 41
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %125 = load i32, ptr %124, align 8, !tbaa !133
  %126 = icmp eq i32 %125, 0
  %127 = select i1 %126, i32 %121, i32 4
  br label %128

128:                                              ; preds = %107, %123, %119
  %129 = phi ptr [ %113, %119 ], [ %113, %123 ], [ %108, %107 ]
  %130 = phi i32 [ %121, %119 ], [ %127, %123 ], [ %110, %107 ]
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %132 = load i32, ptr %131, align 4, !tbaa !315
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %128
  %135 = load ptr, ptr %74, align 16, !tbaa !79
  %136 = getelementptr inbounds %struct.x264_sps_t, ptr %135, i64 0, i32 16
  %137 = load i32, ptr %136, align 4, !tbaa !85
  %138 = getelementptr inbounds %struct.x264_sps_t, ptr %135, i64 0, i32 17
  %139 = load i32, ptr %138, align 4, !tbaa !80
  %140 = mul nsw i32 %139, %137
  %141 = sitofp i32 %140 to double
  %142 = getelementptr inbounds %struct.x264_level_t, ptr %129, i64 0, i32 1
  %143 = load i32, ptr %142, align 4, !tbaa !330
  %144 = sitofp i32 %143 to double
  %145 = fmul double %144, 0x3F77D05F417D05F4
  %146 = fcmp olt double %145, %141
  %147 = select i1 %146, double %141, double %145
  %148 = fmul double %147, 3.072000e+03
  br label %168

149:                                              ; preds = %128
  %150 = load ptr, ptr %6, align 8, !tbaa !117
  %151 = getelementptr inbounds %struct.x264_frame, ptr %150, i64 0, i32 6
  %152 = load i32, ptr %151, align 4, !tbaa !324
  %153 = sitofp i32 %152 to double
  %154 = load ptr, ptr %74, align 16, !tbaa !79
  %155 = getelementptr inbounds %struct.x264_sps_t, ptr %154, i64 0, i32 24, i32 16
  %156 = load i32, ptr %155, align 4, !tbaa !146
  %157 = uitofp i32 %156 to double
  %158 = fmul double %153, %157
  %159 = getelementptr inbounds %struct.x264_sps_t, ptr %154, i64 0, i32 24, i32 17
  %160 = load i32, ptr %159, align 4, !tbaa !145
  %161 = uitofp i32 %160 to double
  %162 = fdiv double %158, %161
  %163 = fmul double %162, 3.072000e+03
  %164 = getelementptr inbounds %struct.x264_level_t, ptr %129, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !330
  %166 = sitofp i32 %165 to double
  %167 = fmul double %163, %166
  br label %168

168:                                              ; preds = %149, %134
  %169 = phi double [ %148, %134 ], [ %167, %149 ]
  %170 = sitofp i32 %130 to double
  %171 = fdiv double %169, %170
  %172 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 56
  store double %171, ptr %172, align 8, !tbaa !290
  br label %173

173:                                              ; preds = %168, %64
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %175 = load i32, ptr %174, align 16, !tbaa !286
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %183, label %177

177:                                              ; preds = %173
  %178 = load ptr, ptr %6, align 8, !tbaa !117
  %179 = getelementptr inbounds %struct.x264_frame, ptr %178, i64 0, i32 19
  %180 = load i8, ptr %179, align 2, !tbaa !331
  %181 = zext i8 %180 to i32
  %182 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 63
  store i32 %181, ptr %182, align 8, !tbaa !291
  br label %183

183:                                              ; preds = %177, %173
  %184 = icmp eq i32 %1, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %183
  %186 = add nsw i32 %1, -1
  %187 = sitofp i32 %186 to float
  br label %244

188:                                              ; preds = %183
  %189 = load i32, ptr %5, align 8, !tbaa !166
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %196, label %191

191:                                              ; preds = %188
  %192 = tail call fastcc float @rate_estimate_qscale(ptr noundef nonnull %0) #23
  %193 = fpext float %192 to double
  %194 = tail call fastcc double @qscale2qp(double noundef %193) #23
  %195 = fptrunc double %194 to float
  br label %244

196:                                              ; preds = %188
  %197 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !120
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %196
  %201 = tail call fastcc float @rate_estimate_qscale(ptr noundef nonnull %0) #23
  %202 = fpext float %201 to double
  %203 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %65, i64 0, i32 9
  store double %202, ptr %203, align 8, !tbaa !212
  %204 = tail call fastcc double @qscale2qp(double noundef %202) #23
  %205 = fptrunc double %204 to float
  br label %244

206:                                              ; preds = %196
  br i1 %176, label %207, label %220

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %209 = load ptr, ptr %208, align 16, !tbaa !321
  %210 = getelementptr inbounds %struct.x264_frame, ptr %209, i64 0, i32 14
  %211 = load i32, ptr %210, align 8, !tbaa !332
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %220, label %213

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9
  %215 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9, i64 1
  %216 = load i32, ptr %215, align 4, !tbaa !99
  %217 = load i32, ptr %214, align 4, !tbaa !99
  %218 = add nsw i32 %217, %216
  %219 = sdiv i32 %218, 2
  br label %224

220:                                              ; preds = %207, %206
  %221 = sext i32 %175 to i64
  %222 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !99
  br label %224

224:                                              ; preds = %220, %213
  %225 = phi i32 [ %219, %213 ], [ %223, %220 ]
  %226 = sitofp i32 %225 to float
  br i1 %11, label %244, label %227

227:                                              ; preds = %224
  %228 = getelementptr inbounds %struct.x264_zone_t, ptr %10, i64 0, i32 2
  %229 = load i32, ptr %228, align 8, !tbaa !248
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %239, label %231

231:                                              ; preds = %227
  %232 = getelementptr inbounds %struct.x264_zone_t, ptr %10, i64 0, i32 3
  %233 = load i32, ptr %232, align 4, !tbaa !280
  %234 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 9
  %235 = load i32, ptr %234, align 4, !tbaa !99
  %236 = sub nsw i32 %233, %235
  %237 = sitofp i32 %236 to float
  %238 = fadd float %226, %237
  br label %244

239:                                              ; preds = %227
  %240 = getelementptr inbounds %struct.x264_zone_t, ptr %10, i64 0, i32 4
  %241 = load float, ptr %240, align 8, !tbaa !249
  %242 = tail call float @log2f(float noundef %241) #24
  %243 = tail call float @llvm.fmuladd.f32(float %242, float -6.000000e+00, float %226)
  br label %244

244:                                              ; preds = %191, %224, %239, %231, %200, %185
  %245 = phi float [ %187, %185 ], [ %195, %191 ], [ %205, %200 ], [ %238, %231 ], [ %243, %239 ], [ %226, %224 ]
  %246 = fpext float %245 to double
  %247 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %248 = load i32, ptr %247, align 8, !tbaa !193
  %249 = sitofp i32 %248 to double
  %250 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %251 = load i32, ptr %250, align 4, !tbaa !194
  %252 = sitofp i32 %251 to double
  %253 = tail call fastcc double @x264_clip3f(double noundef %246, double noundef %249, double noundef %252) #23
  %254 = fptrunc double %253 to float
  %255 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 13
  store <2 x float> zeroinitializer, ptr %255, align 8, !tbaa !88
  %256 = fpext float %254 to double
  %257 = fadd double %256, 5.000000e-01
  %258 = fptosi double %257 to i32
  %259 = tail call fastcc i32 @x264_clip3(i32 noundef %258, i32 noundef 0, i32 noundef 51) #23
  %260 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 11
  store i32 %259, ptr %260, align 8, !tbaa !333
  %261 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 12
  store float %254, ptr %261, align 4, !tbaa !334
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %263 = load ptr, ptr %262, align 16, !tbaa !321
  %264 = getelementptr inbounds %struct.x264_frame, ptr %263, i64 0, i32 21
  store float %254, ptr %264, align 4, !tbaa !335
  %265 = getelementptr inbounds %struct.x264_frame, ptr %263, i64 0, i32 20
  store float %254, ptr %265, align 8, !tbaa !336
  %266 = icmp eq ptr %65, null
  br i1 %266, label %269, label %267

267:                                              ; preds = %244
  %268 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %65, i64 0, i32 10
  store i32 %259, ptr %268, align 8, !tbaa !215
  br label %269

269:                                              ; preds = %267, %244
  tail call fastcc void @accum_p_qp_update(ptr noundef nonnull %0, float noundef %254) #23
  %270 = load i32, ptr %174, align 16, !tbaa !286
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %274, label %272

272:                                              ; preds = %269
  %273 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 46
  store i32 %270, ptr %273, align 8, !tbaa !174
  br label %274

274:                                              ; preds = %272, %269
  ret void
}

; Function Attrs: optsize
declare i32 @x264_encoder_reconfig(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @update_vbv_plan(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !337 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 16, !tbaa !101
  %7 = getelementptr inbounds %struct.x264_t, ptr %6, i64 0, i32 56
  %8 = load ptr, ptr %7, align 16, !tbaa !102
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %8, i64 0, i32 18
  %10 = load double, ptr %9, align 8, !tbaa !160
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 19
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %13 = load i32, ptr %12, align 4, !tbaa !338
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = ptrtoint ptr %4 to i64
  %17 = ptrtoint ptr %8 to i64
  %18 = sub i64 %16, %17
  %19 = sdiv exact i64 %18, 936
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  br label %22

22:                                               ; preds = %15, %52
  %23 = phi double [ %10, %15 ], [ %53, %52 ]
  %24 = phi i32 [ 1, %15 ], [ %54, %52 ]
  %25 = add nsw i32 %24, %20
  %26 = srem i32 %25, %13
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  %30 = getelementptr inbounds %struct.x264_t, ptr %29, i64 0, i32 3
  %31 = load i32, ptr %30, align 4, !tbaa !339
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %52, label %33

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.x264_t, ptr %29, i64 0, i32 56
  %35 = load ptr, ptr %34, align 16, !tbaa !102
  %36 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %35, i64 0, i32 57
  %37 = load double, ptr %36, align 8, !tbaa !340
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %35, i64 0, i32 55
  %39 = load float, ptr %38, align 4, !tbaa !341
  %40 = fpext float %39 to double
  %41 = fcmp ogt double %37, %40
  %42 = select i1 %41, double %37, double %40
  %43 = fsub double %23, %42
  %44 = fcmp ogt double %43, 0.000000e+00
  %45 = select i1 %44, double %43, double 0.000000e+00
  %46 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %35, i64 0, i32 20
  %47 = load double, ptr %46, align 8, !tbaa !151
  %48 = fadd double %47, %45
  %49 = load double, ptr %21, align 8, !tbaa !153
  %50 = fcmp olt double %48, %49
  %51 = select i1 %50, double %48, double %49
  store double %51, ptr %11, align 8, !tbaa !287
  br label %52

52:                                               ; preds = %22, %33
  %53 = phi double [ %23, %22 ], [ %51, %33 ]
  %54 = add nuw nsw i32 %24, 1
  %55 = icmp eq i32 %54, %13
  br i1 %55, label %56, label %22, !llvm.loop !342

56:                                               ; preds = %52, %2
  %57 = phi double [ %10, %2 ], [ %53, %52 ]
  %58 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  %59 = load double, ptr %58, align 8, !tbaa !153
  %60 = fcmp olt double %57, %59
  %61 = select i1 %60, double %57, double %59
  %62 = sitofp i32 %1 to double
  %63 = fsub double %61, %62
  store double %63, ptr %11, align 8, !tbaa !287
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc float @rate_estimate_qscale(ptr noundef %0) unnamed_addr #0 !PGOFuncName !343 {
  %2 = alloca %struct.ratecontrol_entry_t, align 8
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %2) #25
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %6 = load i32, ptr %5, align 16, !tbaa !286
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 2
  %9 = load i64, ptr %8, align 8, !tbaa !344
  %10 = load i64, ptr %7, align 8, !tbaa !344
  %11 = add nsw i64 %10, %9
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 1
  %13 = load i64, ptr %12, align 8, !tbaa !344
  %14 = add nsw i64 %11, %13
  %15 = shl nsw i64 %14, 3
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !120
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %2, ptr noundef nonnull align 8 dereferenceable(168) %21, i64 168, i1 false), !tbaa.struct !345
  %22 = load i32, ptr %2, align 8, !tbaa !106
  %23 = icmp eq i32 %6, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = sext i32 %6 to i64
  %26 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !97
  %28 = sext i8 %27 to i32
  %29 = sext i32 %22 to i64
  %30 = getelementptr inbounds [5 x i8], ptr @slice_type_to_char, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !97
  %32 = sext i8 %31 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.84, i32 noundef %28, i32 noundef %32) #24
  br label %33

33:                                               ; preds = %19, %24, %1
  %34 = icmp eq i32 %6, 1
  br i1 %34, label %35, label %153

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %37 = load ptr, ptr %36, align 16, !tbaa !101
  %38 = getelementptr inbounds %struct.x264_frame, ptr %37, i64 0, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !346
  %40 = add i32 %39, -1
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %42 = load ptr, ptr %41, align 16, !tbaa !101
  %43 = getelementptr inbounds %struct.x264_frame, ptr %42, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !346
  %45 = add i32 %44, -1
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %47 = load ptr, ptr %46, align 8, !tbaa !117
  %48 = load i32, ptr %47, align 16, !tbaa !347
  %49 = load i32, ptr %37, align 16, !tbaa !347
  %50 = sub nsw i32 %48, %49
  %51 = tail call i32 @llvm.abs.i32(i32 %50, i1 true)
  %52 = load i32, ptr %42, align 16, !tbaa !347
  %53 = sub nsw i32 %48, %52
  %54 = tail call i32 @llvm.abs.i32(i32 %53, i1 true)
  %55 = getelementptr inbounds %struct.x264_frame, ptr %37, i64 0, i32 20
  %56 = load float, ptr %55, align 8, !tbaa !336
  %57 = getelementptr inbounds %struct.x264_frame, ptr %42, i64 0, i32 20
  %58 = load float, ptr %57, align 8, !tbaa !336
  %59 = icmp eq i32 %39, 4
  br i1 %59, label %60, label %67

60:                                               ; preds = %35
  %61 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 35
  %62 = load double, ptr %61, align 8, !tbaa !182
  %63 = fmul double %62, 5.000000e-01
  %64 = fpext float %56 to double
  %65 = fsub double %64, %63
  %66 = fptrunc double %65 to float
  br label %67

67:                                               ; preds = %60, %35
  %68 = phi float [ %66, %60 ], [ %56, %35 ]
  %69 = icmp eq i32 %44, 4
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 35
  %72 = load double, ptr %71, align 8, !tbaa !182
  %73 = fmul double %72, 5.000000e-01
  %74 = fpext float %58 to double
  %75 = fsub double %74, %73
  %76 = fptrunc double %75 to float
  br label %77

77:                                               ; preds = %70, %67
  %78 = phi float [ %76, %70 ], [ %58, %67 ]
  %79 = or i32 %45, %40
  %80 = icmp ult i32 %79, 2
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = fadd float %68, %78
  %83 = fmul float %82, 5.000000e-01
  %84 = fpext float %83 to double
  %85 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 34
  %86 = load double, ptr %85, align 8, !tbaa !181
  %87 = fadd double %86, %84
  %88 = fptrunc double %87 to float
  br label %101

89:                                               ; preds = %77
  %90 = icmp ult i32 %40, 2
  br i1 %90, label %101, label %91

91:                                               ; preds = %89
  %92 = icmp ult i32 %45, 2
  br i1 %92, label %101, label %93

93:                                               ; preds = %91
  %94 = sitofp i32 %54 to float
  %95 = sitofp i32 %51 to float
  %96 = fmul float %78, %95
  %97 = tail call float @llvm.fmuladd.f32(float %68, float %94, float %96)
  %98 = add nuw nsw i32 %54, %51
  %99 = sitofp i32 %98 to float
  %100 = fdiv float %97, %99
  br label %101

101:                                              ; preds = %91, %89, %93, %81
  %102 = phi float [ %88, %81 ], [ %100, %93 ], [ %78, %89 ], [ %68, %91 ]
  %103 = getelementptr inbounds %struct.x264_frame, ptr %47, i64 0, i32 14
  %104 = load i32, ptr %103, align 8, !tbaa !332
  %105 = icmp eq i32 %104, 0
  %106 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 35
  %107 = load double, ptr %106, align 8, !tbaa !182
  %108 = fmul double %107, 5.000000e-01
  %109 = select i1 %105, double %107, double %108
  %110 = fpext float %102 to double
  %111 = fadd double %109, %110
  %112 = fptrunc double %111 to float
  %113 = load i32, ptr %16, align 4, !tbaa !120
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %101
  %116 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !161
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = fpext float %112 to double
  %121 = call fastcc double @qscale2bits(ptr noundef nonnull %2, double noundef %120) #23
  br label %136

122:                                              ; preds = %115, %101
  %123 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 62
  %124 = load ptr, ptr %123, align 8, !tbaa !190
  %125 = fpext float %112 to double
  %126 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %127 = load i32, ptr %126, align 8, !tbaa !348
  %128 = add nsw i32 %127, -1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %129
  %131 = load ptr, ptr %130, align 8, !tbaa !101
  %132 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 54
  %133 = load i32, ptr %132, align 4, !tbaa !349
  %134 = sitofp i32 %133 to double
  %135 = tail call fastcc double @predict_size(ptr noundef %124, double noundef %125, double noundef %134) #23
  br label %136

136:                                              ; preds = %122, %119
  %137 = phi double [ %135, %122 ], [ %121, %119 ]
  %138 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 57
  store double %137, ptr %138, align 8, !tbaa !340
  %139 = fptrunc double %137 to float
  %140 = load ptr, ptr %3, align 16, !tbaa !102
  %141 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %140, i64 0, i32 55
  store float %139, ptr %141, align 4, !tbaa !341
  %142 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %143 = load i32, ptr %142, align 8, !tbaa !161
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %136
  %146 = tail call i32 @x264_rc_analyse_slice(ptr noundef nonnull %0) #24
  %147 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 25
  store i32 %146, ptr %147, align 8, !tbaa !285
  br label %148

148:                                              ; preds = %145, %136
  %149 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  store float %112, ptr %149, align 8, !tbaa !284
  %150 = fpext float %112 to double
  %151 = tail call fastcc double @qp2qscale(double noundef %150) #23
  %152 = fptrunc double %151 to float
  br label %577

153:                                              ; preds = %33
  %154 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 6
  %155 = load double, ptr %154, align 8, !tbaa !172
  %156 = fmul double %155, 2.000000e+00
  %157 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 5
  %158 = load double, ptr %157, align 8, !tbaa !155
  %159 = fmul double %156, %158
  %160 = load i32, ptr %16, align 4, !tbaa !120
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %337, label %162

162:                                              ; preds = %153
  %163 = sext i32 %6 to i64
  %164 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 50, i64 %163
  %165 = load double, ptr %164, align 8, !tbaa !192
  %166 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 51, i64 %163
  %167 = load double, ptr %166, align 8, !tbaa !192
  %168 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 42
  %169 = load i32, ptr %168, align 8, !tbaa !210
  %170 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %171 = load i32, ptr %170, align 4, !tbaa !315
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %179

173:                                              ; preds = %162
  %174 = sub nsw i32 %169, %171
  %175 = sitofp i32 %174 to double
  %176 = tail call double @sqrt(double noundef %175) #24
  %177 = fmul double %176, 5.000000e-01
  %178 = fmul double %159, %177
  br label %179

179:                                              ; preds = %173, %162
  %180 = phi double [ %178, %173 ], [ %159, %162 ]
  %181 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !161
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %226, label %184

184:                                              ; preds = %179
  %185 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %186 = load i32, ptr %185, align 4, !tbaa !338
  %187 = icmp sgt i32 %186, 1
  br i1 %187, label %188, label %242

188:                                              ; preds = %184
  %189 = load ptr, ptr %3, align 16, !tbaa !102
  %190 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %191 = load ptr, ptr %190, align 16, !tbaa !101
  %192 = getelementptr inbounds %struct.x264_t, ptr %191, i64 0, i32 56
  %193 = load ptr, ptr %192, align 16, !tbaa !102
  %194 = ptrtoint ptr %189 to i64
  %195 = ptrtoint ptr %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 936
  %198 = trunc i64 %197 to i32
  br label %199

199:                                              ; preds = %188, %222
  %200 = phi i64 [ %15, %188 ], [ %223, %222 ]
  %201 = phi i32 [ 1, %188 ], [ %224, %222 ]
  %202 = add nsw i32 %201, %198
  %203 = srem i32 %202, %186
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %204
  %206 = load ptr, ptr %205, align 8, !tbaa !101
  %207 = getelementptr inbounds %struct.x264_t, ptr %206, i64 0, i32 3
  %208 = load i32, ptr %207, align 4, !tbaa !339
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %222, label %210

210:                                              ; preds = %199
  %211 = getelementptr inbounds %struct.x264_t, ptr %206, i64 0, i32 56
  %212 = load ptr, ptr %211, align 16, !tbaa !102
  %213 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %212, i64 0, i32 57
  %214 = load double, ptr %213, align 8, !tbaa !340
  %215 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %212, i64 0, i32 55
  %216 = load float, ptr %215, align 4, !tbaa !341
  %217 = fpext float %216 to double
  %218 = fcmp ogt double %214, %217
  %219 = select i1 %218, double %214, double %217
  %220 = fptosi double %219 to i64
  %221 = add nsw i64 %200, %220
  br label %222

222:                                              ; preds = %199, %210
  %223 = phi i64 [ %221, %210 ], [ %200, %199 ]
  %224 = add nuw nsw i32 %201, 1
  %225 = icmp eq i32 %224, %186
  br i1 %225, label %242, label %199, !llvm.loop !350

226:                                              ; preds = %179
  %227 = load i32, ptr %170, align 4, !tbaa !315
  %228 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %229 = load i32, ptr %228, align 4, !tbaa !338
  %230 = icmp slt i32 %227, %229
  %231 = add nsw i32 %229, -1
  %232 = select i1 %230, i32 %227, i32 %231
  %233 = sitofp i32 %232 to double
  %234 = load double, ptr %157, align 8, !tbaa !155
  %235 = fmul double %234, %233
  %236 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 4
  %237 = load double, ptr %236, align 8, !tbaa !130
  %238 = fdiv double %235, %237
  %239 = sitofp i64 %15 to double
  %240 = fadd double %238, %239
  %241 = fptosi double %240 to i64
  br label %242

242:                                              ; preds = %222, %226, %184
  %243 = phi i32 [ %186, %184 ], [ %229, %226 ], [ %186, %222 ]
  %244 = phi i64 [ %15, %184 ], [ %241, %226 ], [ %223, %222 ]
  %245 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 7
  %246 = load i64, ptr %245, align 8, !tbaa !301
  %247 = sub nsw i64 %244, %246
  %248 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 9
  %249 = load double, ptr %248, align 8
  %250 = fptrunc double %249 to float
  %251 = sitofp i64 %247 to double
  %252 = fsub double %180, %251
  %253 = fdiv double %252, %180
  %254 = tail call fastcc double @x264_clip3f(double noundef %253, double noundef 5.000000e-01, double noundef 2.000000e+00) #23
  %255 = fpext float %250 to double
  %256 = fdiv double %255, %254
  %257 = fptrunc double %256 to float
  %258 = load i32, ptr %170, align 4, !tbaa !315
  %259 = add nsw i32 %258, 1
  %260 = sub i32 %259, %243
  %261 = sitofp i32 %260 to double
  %262 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 4
  %263 = load double, ptr %262, align 8, !tbaa !130
  %264 = fcmp ugt double %263, %261
  br i1 %264, label %283, label %265

265:                                              ; preds = %242
  %266 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 28
  %267 = load double, ptr %266, align 8, !tbaa !351
  %268 = fcmp ogt double %267, 0.000000e+00
  br i1 %268, label %269, label %283

269:                                              ; preds = %265
  %270 = sitofp i32 %258 to double
  %271 = load i32, ptr %168, align 8, !tbaa !210
  %272 = sitofp i32 %271 to double
  %273 = fdiv double %270, %272
  %274 = fmul double %273, 1.000000e+02
  %275 = tail call fastcc double @x264_clip3f(double noundef %274, double noundef 0.000000e+00, double noundef 1.000000e+00) #23
  %276 = sitofp i64 %15 to double
  %277 = fdiv double %276, %267
  %278 = tail call double @pow(double noundef %277, double noundef %275) #24
  %279 = fpext float %257 to double
  %280 = fmul double %278, %279
  %281 = fptrunc double %280 to float
  %282 = load i32, ptr %181, align 8, !tbaa !161
  br label %283

283:                                              ; preds = %269, %265, %242
  %284 = phi i32 [ %282, %269 ], [ %182, %265 ], [ %182, %242 ]
  %285 = phi float [ %281, %269 ], [ %257, %265 ], [ %257, %242 ]
  %286 = icmp eq i32 %284, 0
  %287 = fpext float %285 to double
  br i1 %286, label %334, label %288

288:                                              ; preds = %283
  %289 = call fastcc double @qscale2bits(ptr noundef nonnull %2, double noundef %287) #23
  %290 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 19
  %291 = load double, ptr %290, align 8, !tbaa !287
  %292 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  %293 = load double, ptr %292, align 8, !tbaa !151
  %294 = fadd double %291, %293
  %295 = fsub double %294, %289
  %296 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 8
  %297 = load double, ptr %296, align 8, !tbaa !298
  %298 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  %299 = load double, ptr %298, align 8, !tbaa !153
  %300 = fdiv double %297, %299
  %301 = fsub double 2.000000e+00, %300
  %302 = fmul double %301, %287
  %303 = fadd double %300, 1.000000e+00
  %304 = fcmp ogt double %302, %249
  %305 = select i1 %304, double %302, double %249
  %306 = fcmp olt double %300, 5.000000e-02
  %307 = select i1 %306, double %167, double %305
  %308 = fcmp olt double %307, %167
  %309 = select i1 %308, double %307, double %167
  %310 = fdiv double %297, %303
  br label %311

311:                                              ; preds = %322, %288
  %312 = phi double [ %295, %288 ], [ %330, %322 ]
  %313 = phi float [ %285, %288 ], [ %324, %322 ]
  %314 = fcmp olt double %312, %310
  %315 = fpext float %313 to double
  %316 = fcmp ogt double %309, %315
  %317 = select i1 %314, i1 %316, i1 false
  br i1 %317, label %322, label %318

318:                                              ; preds = %311
  %319 = fcmp olt double %312, 0.000000e+00
  %320 = fcmp ogt double %167, %315
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %322, label %331

322:                                              ; preds = %311, %318
  %323 = fmul double %315, 1.050000e+00
  %324 = fptrunc double %323 to float
  %325 = fpext float %324 to double
  %326 = call fastcc double @qscale2bits(ptr noundef nonnull %2, double noundef %325) #23
  %327 = load double, ptr %290, align 8, !tbaa !287
  %328 = load double, ptr %292, align 8, !tbaa !151
  %329 = fadd double %327, %328
  %330 = fsub double %329, %326
  br label %311, !llvm.loop !352

331:                                              ; preds = %318
  %332 = tail call i32 @x264_rc_analyse_slice(ptr noundef %0) #24
  %333 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 25
  store i32 %332, ptr %333, align 8, !tbaa !285
  br label %334

334:                                              ; preds = %283, %331
  %335 = phi double [ %315, %331 ], [ %287, %283 ]
  %336 = tail call fastcc double @x264_clip3f(double noundef %335, double noundef %165, double noundef %167) #23
  br label %519

337:                                              ; preds = %153
  %338 = tail call i32 @x264_rc_analyse_slice(ptr noundef nonnull %0) #24
  %339 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 25
  store i32 %338, ptr %339, align 8, !tbaa !285
  %340 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 31
  %341 = sitofp i32 %338 to double
  %342 = load <2 x double>, ptr %340, align 8, !tbaa !192
  %343 = fmul <2 x double> %342, <double 5.000000e-01, double 5.000000e-01>
  %344 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %341, i64 0
  %345 = fadd <2 x double> %343, %344
  store <2 x double> %345, ptr %340, align 8, !tbaa !192
  %346 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 5
  store i32 %338, ptr %346, align 4, !tbaa !276
  %347 = extractelement <2 x double> %345, i64 0
  %348 = extractelement <2 x double> %345, i64 1
  %349 = fdiv double %347, %348
  %350 = fptrunc double %349 to float
  %351 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 14
  store float %350, ptr %351, align 8, !tbaa !262
  %352 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 4
  store i32 0, ptr %352, align 8, !tbaa !277
  %353 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 8
  %354 = load i32, ptr %353, align 8, !tbaa !173
  %355 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 12
  store i32 %354, ptr %355, align 8, !tbaa !353
  %356 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 11
  store i32 0, ptr %356, align 4, !tbaa !259
  %357 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 13
  store i32 0, ptr %357, align 4, !tbaa !354
  %358 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %2, i64 0, i32 3
  store double 1.000000e+00, ptr %358, align 8, !tbaa !213
  store i32 %6, ptr %2, align 8, !tbaa !106
  %359 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %360 = load i32, ptr %359, align 8, !tbaa !121
  %361 = icmp eq i32 %360, 1
  br i1 %361, label %362, label %371

362:                                              ; preds = %337
  %363 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 33
  %364 = load double, ptr %363, align 8, !tbaa !127
  %365 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %366 = load ptr, ptr %365, align 8, !tbaa !117
  %367 = getelementptr inbounds %struct.x264_frame, ptr %366, i64 0, i32 10
  %368 = load i32, ptr %367, align 8, !tbaa !105
  %369 = call fastcc double @get_qscale(ptr noundef nonnull %0, ptr noundef nonnull %2, double noundef %364, i32 noundef %368) #23
  %370 = fptrunc double %369 to float
  br label %442

371:                                              ; preds = %337
  %372 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 29
  %373 = load double, ptr %372, align 8, !tbaa !179
  %374 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 27
  %375 = load double, ptr %374, align 8, !tbaa !178
  %376 = fdiv double %373, %375
  %377 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %378 = load ptr, ptr %377, align 8, !tbaa !117
  %379 = getelementptr inbounds %struct.x264_frame, ptr %378, i64 0, i32 10
  %380 = load i32, ptr %379, align 8, !tbaa !105
  %381 = call fastcc double @get_qscale(ptr noundef nonnull %0, ptr noundef nonnull %2, double noundef %376, i32 noundef %380) #23
  %382 = fptrunc double %381 to float
  %383 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 3
  %384 = load i32, ptr %383, align 4, !tbaa !131
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %442

386:                                              ; preds = %371
  %387 = load i32, ptr %339, align 8, !tbaa !285
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %442, label %389

389:                                              ; preds = %386
  %390 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %391 = load i32, ptr %390, align 4, !tbaa !315
  %392 = add nsw i32 %391, 1
  %393 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %394 = load i32, ptr %393, align 4, !tbaa !338
  %395 = sub i32 %392, %394
  %396 = sitofp i32 %395 to double
  %397 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 4
  %398 = load double, ptr %397, align 8, !tbaa !130
  %399 = fdiv double %396, %398
  %400 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %401 = load i32, ptr %400, align 8, !tbaa !355
  %402 = icmp ne i32 %401, 0
  %403 = icmp sgt i32 %395, 0
  %404 = select i1 %402, i1 %403, i1 false
  br i1 %404, label %405, label %421

405:                                              ; preds = %389
  %406 = load ptr, ptr %377, align 8, !tbaa !117
  %407 = getelementptr inbounds %struct.x264_frame, ptr %406, i64 0, i32 4
  %408 = load i64, ptr %407, align 8, !tbaa !356
  %409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 53
  %410 = load i64, ptr %409, align 8, !tbaa !357
  %411 = sub nsw i64 %408, %410
  %412 = sitofp i64 %411 to double
  %413 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %414 = load i32, ptr %413, align 4, !tbaa !200
  %415 = uitofp i32 %414 to double
  %416 = fmul double %412, %415
  %417 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %418 = load i32, ptr %417, align 8, !tbaa !201
  %419 = uitofp i32 %418 to double
  %420 = fdiv double %416, %419
  br label %421

421:                                              ; preds = %405, %389
  %422 = phi double [ %420, %405 ], [ %399, %389 ]
  %423 = load double, ptr %157, align 8, !tbaa !155
  %424 = fmul double %422, %423
  %425 = fcmp ogt double %424, 0.000000e+00
  br i1 %425, label %426, label %442

426:                                              ; preds = %421
  %427 = tail call double @sqrt(double noundef %422) #24
  %428 = fcmp olt double %427, 1.000000e+00
  br i1 %428, label %431, label %429

429:                                              ; preds = %426
  %430 = tail call double @sqrt(double noundef %422) #24
  br label %431

431:                                              ; preds = %426, %429
  %432 = phi double [ %430, %429 ], [ 1.000000e+00, %426 ]
  %433 = fmul double %159, %432
  %434 = sitofp i64 %15 to double
  %435 = fsub double %434, %424
  %436 = fdiv double %435, %433
  %437 = fadd double %436, 1.000000e+00
  %438 = tail call fastcc double @x264_clip3f(double noundef %437, double noundef 5.000000e-01, double noundef 2.000000e+00) #23
  %439 = fpext float %382 to double
  %440 = fmul double %438, %439
  %441 = fptrunc double %440 to float
  br label %442

442:                                              ; preds = %421, %431, %371, %386, %362
  %443 = phi float [ %370, %362 ], [ %382, %371 ], [ %382, %386 ], [ %441, %431 ], [ %382, %421 ]
  %444 = phi double [ 1.000000e+00, %362 ], [ 1.000000e+00, %371 ], [ 1.000000e+00, %386 ], [ %438, %431 ], [ 1.000000e+00, %421 ]
  %445 = icmp eq i32 %6, 2
  br i1 %445, label %446, label %466

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %448 = load i32, ptr %447, align 4, !tbaa !144
  %449 = icmp sgt i32 %448, 1
  br i1 %449, label %450, label %466

450:                                              ; preds = %446
  %451 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 46
  %452 = load i32, ptr %451, align 8, !tbaa !174
  %453 = icmp eq i32 %452, 2
  br i1 %453, label %466, label %454

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 47
  %456 = load double, ptr %455, align 8, !tbaa !177
  %457 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 48
  %458 = load double, ptr %457, align 8, !tbaa !176
  %459 = fdiv double %456, %458
  %460 = tail call fastcc double @qp2qscale(double noundef %459) #23
  %461 = fptrunc double %460 to float
  %462 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %463 = load float, ptr %462, align 8, !tbaa !180
  %464 = tail call float @llvm.fabs.f32(float %463)
  %465 = fdiv float %461, %464
  br label %511

466:                                              ; preds = %450, %446, %442
  %467 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %468 = load i32, ptr %467, align 4, !tbaa !315
  %469 = icmp sgt i32 %468, 0
  br i1 %469, label %470, label %493

470:                                              ; preds = %466
  %471 = sext i32 %6 to i64
  %472 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 45, i64 %471
  %473 = load double, ptr %472, align 8, !tbaa !192
  %474 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 52
  %475 = load double, ptr %474, align 8, !tbaa !186
  %476 = fdiv double %473, %475
  %477 = fmul double %473, %475
  %478 = fcmp ogt double %444, 1.100000e+00
  %479 = icmp ugt i32 %468, 3
  %480 = and i1 %478, %479
  br i1 %480, label %481, label %483

481:                                              ; preds = %470
  %482 = fmul double %475, %477
  br label %487

483:                                              ; preds = %470
  %484 = fcmp olt double %444, 9.000000e-01
  br i1 %484, label %485, label %487

485:                                              ; preds = %483
  %486 = fdiv double %476, %475
  br label %487

487:                                              ; preds = %483, %485, %481
  %488 = phi double [ %476, %481 ], [ %486, %485 ], [ %476, %483 ]
  %489 = phi double [ %482, %481 ], [ %477, %485 ], [ %477, %483 ]
  %490 = fpext float %443 to double
  %491 = tail call fastcc double @x264_clip3f(double noundef %490, double noundef %488, double noundef %489) #23
  %492 = fptrunc double %491 to float
  br label %511

493:                                              ; preds = %466
  %494 = load i32, ptr %359, align 8, !tbaa !121
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %496, label %511

496:                                              ; preds = %493
  %497 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 7
  %498 = load double, ptr %497, align 8, !tbaa !125
  %499 = fcmp une double %498, 1.000000e+00
  br i1 %499, label %500, label %511

500:                                              ; preds = %496
  %501 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %502 = load float, ptr %501, align 8, !tbaa !126
  %503 = fpext float %502 to double
  %504 = tail call fastcc double @qp2qscale(double noundef %503) #23
  %505 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %506 = load float, ptr %505, align 8, !tbaa !180
  %507 = tail call float @llvm.fabs.f32(float %506)
  %508 = fpext float %507 to double
  %509 = fdiv double %504, %508
  %510 = fptrunc double %509 to float
  br label %511

511:                                              ; preds = %487, %500, %496, %493, %454
  %512 = phi float [ %465, %454 ], [ %492, %487 ], [ %510, %500 ], [ %443, %496 ], [ %443, %493 ]
  %513 = fpext float %512 to double
  %514 = tail call fastcc double @qscale2qp(double noundef %513) #23
  %515 = fptrunc double %514 to float
  %516 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  store float %515, ptr %516, align 8, !tbaa !284
  %517 = tail call fastcc double @clip_qscale(ptr noundef nonnull %0, i32 noundef %6, double noundef %513) #23
  %518 = sext i32 %6 to i64
  br label %519

519:                                              ; preds = %511, %334
  %520 = phi i64 [ %518, %511 ], [ %163, %334 ]
  %521 = phi double [ %517, %511 ], [ %336, %334 ]
  %522 = fptrunc double %521 to float
  %523 = fpext float %522 to double
  %524 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 44
  store double %523, ptr %524, align 8, !tbaa !187
  %525 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 45
  %526 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 45, i64 %520
  store double %523, ptr %526, align 8, !tbaa !192
  %527 = load i32, ptr %16, align 4, !tbaa !120
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %533, label %529

529:                                              ; preds = %519
  %530 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %531 = load i32, ptr %530, align 8, !tbaa !161
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %552, label %533

533:                                              ; preds = %529, %519
  %534 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %535 = load ptr, ptr %534, align 8, !tbaa !117
  %536 = getelementptr inbounds %struct.x264_frame, ptr %535, i64 0, i32 10
  %537 = load i32, ptr %536, align 8, !tbaa !105
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %533
  %540 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %541 = load float, ptr %540, align 8, !tbaa !180
  %542 = tail call float @llvm.fabs.f32(float %541)
  %543 = fpext float %542 to double
  %544 = fmul double %523, %543
  store double %544, ptr %525, align 8, !tbaa !192
  br label %545

545:                                              ; preds = %539, %533
  br i1 %528, label %552, label %546

546:                                              ; preds = %545
  %547 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %548 = load i32, ptr %547, align 8, !tbaa !161
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %552, label %550

550:                                              ; preds = %546
  %551 = call fastcc double @qscale2bits(ptr noundef nonnull %2, double noundef %523) #23
  br label %562

552:                                              ; preds = %529, %546, %545
  %553 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 22
  %554 = load ptr, ptr %553, align 8, !tbaa !189
  %555 = load i32, ptr %5, align 16, !tbaa !286
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds %struct.predictor_t, ptr %554, i64 %556
  %558 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 25
  %559 = load i32, ptr %558, align 8, !tbaa !285
  %560 = sitofp i32 %559 to double
  %561 = tail call fastcc double @predict_size(ptr noundef %557, double noundef %523, double noundef %560) #23
  br label %562

562:                                              ; preds = %552, %550
  %563 = phi double [ %561, %552 ], [ %551, %550 ]
  %564 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 57
  store double %563, ptr %564, align 8, !tbaa !340
  %565 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23
  %566 = load i32, ptr %565, align 8, !tbaa !154
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %572, label %568

568:                                              ; preds = %562
  %569 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  %570 = load double, ptr %569, align 8, !tbaa !151
  %571 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 57
  store double %570, ptr %571, align 8, !tbaa !340
  br label %572

572:                                              ; preds = %568, %562
  %573 = phi double [ %570, %568 ], [ %563, %562 ]
  %574 = fptrunc double %573 to float
  %575 = load ptr, ptr %3, align 16, !tbaa !102
  %576 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %575, i64 0, i32 55
  store float %574, ptr %576, align 4, !tbaa !341
  br label %577

577:                                              ; preds = %572, %148
  %578 = phi float [ %152, %148 ], [ %522, %572 ]
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %2) #25
  ret float %578
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @accum_p_qp_update(ptr nocapture noundef readonly %0, float noundef %1) unnamed_addr #19 !PGOFuncName !358 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 47
  %6 = load double, ptr %5, align 8, !tbaa !177
  %7 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 48
  %8 = load double, ptr %7, align 8, !tbaa !176
  %9 = fmul double %8, 0x3FEE666666666666
  %10 = fadd double %9, 1.000000e+00
  store double %10, ptr %7, align 8, !tbaa !176
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %12 = load i32, ptr %11, align 16, !tbaa !286
  %13 = icmp eq i32 %12, 2
  %14 = fpext float %1 to double
  br i1 %13, label %15, label %19

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 34
  %17 = load double, ptr %16, align 8, !tbaa !181
  %18 = fadd double %17, %14
  br label %19

19:                                               ; preds = %2, %15
  %20 = phi double [ %18, %15 ], [ %14, %2 ]
  %21 = fmul double %6, 0x3FEE666666666666
  %22 = fadd double %21, %20
  store double %22, ptr %5, align 8, !tbaa !177
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: optsize
declare i32 @x264_rc_analyse_slice(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_ratecontrol_mb(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %6 = load i32, ptr %5, align 4, !tbaa !359
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 16, !tbaa !321
  %9 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = sext i32 %6 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !99
  %14 = add nsw i32 %13, %1
  store i32 %14, ptr %12, align 4, !tbaa !99
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 12
  %16 = load float, ptr %15, align 4, !tbaa !334
  %17 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 13
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 68
  %19 = load i32, ptr %18, align 16, !tbaa !360
  %20 = sitofp i32 %19 to float
  %21 = load <2 x float>, ptr %17, align 8, !tbaa !88
  %22 = insertelement <2 x float> poison, float %16, i64 0
  %23 = insertelement <2 x float> %22, float %20, i64 1
  %24 = fadd <2 x float> %21, %23
  store <2 x float> %24, ptr %17, align 8, !tbaa !88
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %26 = load i32, ptr %25, align 16, !tbaa !361
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %28 = load ptr, ptr %27, align 16, !tbaa !79
  %29 = getelementptr inbounds %struct.x264_sps_t, ptr %28, i64 0, i32 16
  %30 = load i32, ptr %29, align 4, !tbaa !85
  %31 = add nsw i32 %30, -1
  %32 = icmp eq i32 %26, %31
  br i1 %32, label %33, label %344

33:                                               ; preds = %2
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !161
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %344, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 59
  %39 = load ptr, ptr %38, align 16, !tbaa !362
  %40 = getelementptr inbounds float, ptr %39, i64 %11
  store float %16, ptr %40, align 4, !tbaa !88
  %41 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 60
  %42 = load ptr, ptr %41, align 8, !tbaa !323
  %43 = load float, ptr %15, align 4, !tbaa !334
  %44 = fpext float %43 to double
  %45 = tail call fastcc double @qp2qscale(double noundef %44) #23
  %46 = load ptr, ptr %7, align 16, !tbaa !321
  %47 = getelementptr inbounds %struct.x264_frame, ptr %46, i64 0, i32 57
  %48 = load ptr, ptr %47, align 16, !tbaa !363
  %49 = getelementptr inbounds i32, ptr %48, i64 %11
  %50 = load i32, ptr %49, align 4, !tbaa !99
  %51 = sitofp i32 %50 to double
  %52 = getelementptr inbounds %struct.x264_frame, ptr %46, i64 0, i32 58
  %53 = load ptr, ptr %52, align 8, !tbaa !322
  %54 = getelementptr inbounds i32, ptr %53, i64 %11
  %55 = load i32, ptr %54, align 4, !tbaa !99
  %56 = sitofp i32 %55 to double
  tail call fastcc void @update_predictor(ptr noundef %42, double noundef %45, double noundef %51, double noundef %56) #23
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %58 = load i32, ptr %57, align 16, !tbaa !286
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %37
  %61 = load float, ptr %15, align 4, !tbaa !334
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %63 = load ptr, ptr %62, align 16, !tbaa !101
  %64 = getelementptr inbounds %struct.x264_frame, ptr %63, i64 0, i32 59
  %65 = load ptr, ptr %64, align 16, !tbaa !362
  %66 = getelementptr inbounds float, ptr %65, i64 %11
  %67 = load float, ptr %66, align 4, !tbaa !88
  %68 = fcmp olt float %61, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %60
  %70 = load ptr, ptr %41, align 8, !tbaa !323
  %71 = getelementptr inbounds [2 x %struct.predictor_t], ptr %70, i64 1
  %72 = fpext float %61 to double
  %73 = tail call fastcc double @qp2qscale(double noundef %72) #23
  %74 = load ptr, ptr %7, align 16, !tbaa !321
  %75 = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 56
  %76 = load ptr, ptr %75, align 16, !tbaa !101
  %77 = getelementptr inbounds i32, ptr %76, i64 %11
  %78 = load i32, ptr %77, align 4, !tbaa !99
  %79 = sitofp i32 %78 to double
  %80 = getelementptr inbounds %struct.x264_frame, ptr %74, i64 0, i32 58
  %81 = load ptr, ptr %80, align 8, !tbaa !322
  %82 = getelementptr inbounds i32, ptr %81, i64 %11
  %83 = load i32, ptr %82, align 4, !tbaa !99
  %84 = sitofp i32 %83 to double
  tail call fastcc void @update_predictor(ptr noundef nonnull %71, double noundef %73, double noundef %79, double noundef %84) #23
  br label %85

85:                                               ; preds = %69, %60, %37
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !364
  %88 = add nsw i32 %87, -1
  %89 = icmp slt i32 %6, %88
  br i1 %89, label %90, label %344

90:                                               ; preds = %85
  %91 = load ptr, ptr %7, align 16, !tbaa !321
  %92 = getelementptr inbounds %struct.x264_frame, ptr %91, i64 0, i32 59
  %93 = load ptr, ptr %92, align 16, !tbaa !362
  %94 = getelementptr inbounds float, ptr %93, i64 %11
  %95 = load float, ptr %94, align 4, !tbaa !88
  %96 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %97 = load i32, ptr %96, align 8, !tbaa !185
  %98 = sitofp i32 %97 to float
  %99 = fsub float %95, %98
  %100 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !193
  %102 = sitofp i32 %101 to float
  %103 = fcmp ogt float %99, %102
  %104 = select i1 %103, float %99, float %102
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %106 = load i32, ptr %105, align 4, !tbaa !194
  %107 = sitofp i32 %106 to float
  %108 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 24
  %109 = load double, ptr %108, align 8, !tbaa !158
  %110 = fcmp une double %109, 0.000000e+00
  br i1 %110, label %111, label %120

111:                                              ; preds = %90
  %112 = fpext float %107 to double
  %113 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  %114 = load float, ptr %113, align 8, !tbaa !284
  %115 = fpext float %114 to double
  %116 = fadd double %109, %115
  %117 = fcmp ogt double %116, %112
  %118 = fptrunc double %116 to float
  %119 = select i1 %117, float %107, float %118
  br label %120

120:                                              ; preds = %111, %90
  %121 = phi float [ %119, %111 ], [ %107, %90 ]
  %122 = fadd float %95, %98
  %123 = fcmp olt float %122, %121
  %124 = select i1 %123, float %122, float %121
  %125 = load i32, ptr %57, align 16, !tbaa !286
  %126 = icmp eq i32 %125, 1
  br i1 %126, label %127, label %149

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %129 = load ptr, ptr %128, align 16, !tbaa !101
  %130 = getelementptr inbounds %struct.x264_frame, ptr %129, i64 0, i32 59
  %131 = load ptr, ptr %130, align 16, !tbaa !362
  %132 = add nsw i32 %6, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, ptr %131, i64 %133
  %135 = load float, ptr %134, align 4, !tbaa !88
  %136 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %137 = load ptr, ptr %136, align 16, !tbaa !101
  %138 = getelementptr inbounds %struct.x264_frame, ptr %137, i64 0, i32 59
  %139 = load ptr, ptr %138, align 16, !tbaa !362
  %140 = getelementptr inbounds float, ptr %139, i64 %133
  %141 = load float, ptr %140, align 4, !tbaa !88
  %142 = fcmp ogt float %135, %141
  %143 = select i1 %142, float %135, float %141
  %144 = fcmp ogt float %104, %143
  %145 = select i1 %144, float %104, float %143
  %146 = load float, ptr %15, align 4, !tbaa !334
  %147 = fcmp ogt float %146, %145
  %148 = select i1 %147, float %146, float %145
  store float %148, ptr %15, align 4, !tbaa !334
  br label %149

149:                                              ; preds = %127, %120
  %150 = phi float [ %145, %127 ], [ %104, %120 ]
  %151 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 19
  %152 = load double, ptr %151, align 8, !tbaa !287
  %153 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 57
  %154 = load double, ptr %153, align 8, !tbaa !340
  %155 = fsub double %152, %154
  %156 = fptrunc double %155 to float
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %158 = load i32, ptr %157, align 8, !tbaa !188
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %186, label %160

160:                                              ; preds = %149
  %161 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 58
  %162 = load double, ptr %161, align 8, !tbaa !365
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %164 = load i32, ptr %163, align 4, !tbaa !165
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %197

166:                                              ; preds = %160
  %167 = zext nneg i32 %164 to i64
  br label %170

168:                                              ; preds = %182
  %169 = fpext float %183 to double
  br label %197

170:                                              ; preds = %166, %182
  %171 = phi i64 [ 0, %166 ], [ %184, %182 ]
  %172 = phi float [ 0.000000e+00, %166 ], [ %183, %182 ]
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !101
  %175 = icmp eq ptr %174, %0
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.x264_t, ptr %174, i64 0, i32 56
  %178 = load ptr, ptr %177, align 16, !tbaa !102
  %179 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %178, i64 0, i32 55
  %180 = load float, ptr %179, align 4, !tbaa !341
  %181 = fadd float %172, %180
  br label %182

182:                                              ; preds = %170, %176
  %183 = phi float [ %181, %176 ], [ %172, %170 ]
  %184 = add nuw nsw i64 %171, 1
  %185 = icmp eq i64 %184, %167
  br i1 %185, label %168, label %170, !llvm.loop !366

186:                                              ; preds = %149
  %187 = load ptr, ptr %27, align 16, !tbaa !79
  %188 = getelementptr inbounds %struct.x264_sps_t, ptr %187, i64 0, i32 16
  %189 = load i32, ptr %188, align 4, !tbaa !85
  %190 = sitofp i32 %189 to double
  %191 = fdiv double 1.000000e+00, %190
  %192 = fcmp olt double %191, 5.000000e-02
  %193 = select i1 %192, double 5.000000e-02, double %191
  %194 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 59
  store double %193, ptr %194, align 8, !tbaa !367
  %195 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !165
  br label %197

197:                                              ; preds = %160, %168, %186
  %198 = phi i32 [ %196, %186 ], [ %164, %168 ], [ %164, %160 ]
  %199 = phi double [ %154, %186 ], [ %162, %168 ], [ %162, %160 ]
  %200 = phi double [ 0.000000e+00, %186 ], [ %169, %168 ], [ 0.000000e+00, %160 ]
  %201 = fptrunc double %199 to float
  %202 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 6
  %203 = load double, ptr %202, align 8, !tbaa !172
  %204 = load float, ptr %15, align 4, !tbaa !334
  %205 = fpext float %204 to double
  %206 = tail call fastcc double @predict_row_size_sum(ptr noundef nonnull %0, i32 noundef %6, double noundef %205) #23
  %207 = tail call fastcc double @row_bits_so_far(ptr noundef nonnull %0, i32 noundef %6) #23
  %208 = fpext float %201 to double
  %209 = fmul double %208, 5.000000e-02
  %210 = fcmp uge double %207, %209
  br i1 %210, label %211, label %344

211:                                              ; preds = %197
  %212 = sitofp i32 %198 to float
  %213 = fdiv float %156, %212
  %214 = fpext float %213 to double
  %215 = fmul double %203, %214
  %216 = fptrunc double %215 to float
  %217 = load i32, ptr %57, align 16, !tbaa !286
  %218 = icmp eq i32 %217, 2
  %219 = fmul float %216, 5.000000e-01
  %220 = select i1 %218, float %216, float %219
  %221 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 3
  %222 = load i32, ptr %221, align 4, !tbaa !131
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %211
  %225 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  %226 = load float, ptr %225, align 8, !tbaa !284
  %227 = fcmp ogt float %150, %226
  %228 = select i1 %227, float %150, float %226
  br label %229

229:                                              ; preds = %224, %211
  %230 = phi float [ %150, %211 ], [ %228, %224 ]
  %231 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 15
  %232 = fadd double %200, %206
  %233 = fptosi double %232 to i32
  %234 = load float, ptr %15, align 4, !tbaa !334
  %235 = fcmp olt float %234, %124
  br i1 %235, label %236, label %264

236:                                              ; preds = %229
  %237 = fpext float %220 to double
  %238 = fpext float %156 to double
  %239 = fmul double %238, 5.000000e-01
  br label %240

240:                                              ; preds = %236, %256
  %241 = phi float [ %234, %236 ], [ %262, %256 ]
  %242 = phi i32 [ %233, %236 ], [ %261, %256 ]
  %243 = sitofp i32 %242 to double
  %244 = load double, ptr %153, align 8, !tbaa !340
  %245 = fadd double %244, %237
  %246 = fcmp olt double %245, %243
  br i1 %246, label %256, label %247

247:                                              ; preds = %240
  %248 = load double, ptr %151, align 8, !tbaa !287
  %249 = fsub double %248, %243
  %250 = fcmp olt double %249, %239
  br i1 %250, label %256, label %251

251:                                              ; preds = %247
  %252 = fcmp olt double %244, %243
  br i1 %252, label %253, label %264

253:                                              ; preds = %251
  %254 = load float, ptr %231, align 8, !tbaa !284
  %255 = fcmp olt float %241, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %247, %240, %253
  %257 = fadd float %241, 5.000000e-01
  store float %257, ptr %15, align 4, !tbaa !334
  %258 = fpext float %257 to double
  %259 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %258) #23
  %260 = fadd double %200, %259
  %261 = fptosi double %260 to i32
  %262 = load float, ptr %15, align 4, !tbaa !334
  %263 = fcmp olt float %262, %124
  br i1 %263, label %240, label %264, !llvm.loop !368

264:                                              ; preds = %253, %251, %256, %229
  %265 = phi float [ %234, %229 ], [ %262, %256 ], [ %241, %251 ], [ %241, %253 ]
  %266 = phi i32 [ %233, %229 ], [ %261, %256 ], [ %242, %251 ], [ %242, %253 ]
  %267 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 23
  %268 = fcmp ogt float %265, %230
  br i1 %268, label %269, label %306

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  %271 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  br label %272

272:                                              ; preds = %269, %298
  %273 = phi float [ %265, %269 ], [ %304, %298 ]
  %274 = phi i32 [ %266, %269 ], [ %303, %298 ]
  %275 = load ptr, ptr %7, align 16, !tbaa !321
  %276 = getelementptr inbounds %struct.x264_frame, ptr %275, i64 0, i32 59
  %277 = load ptr, ptr %276, align 16, !tbaa !362
  %278 = load float, ptr %277, align 4, !tbaa !88
  %279 = fcmp ogt float %273, %278
  br i1 %279, label %283, label %280

280:                                              ; preds = %272
  %281 = load i32, ptr %267, align 8, !tbaa !154
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %306, label %283

283:                                              ; preds = %280, %272
  %284 = sitofp i32 %274 to double
  %285 = load double, ptr %153, align 8, !tbaa !340
  %286 = fmul double %285, 8.000000e-01
  %287 = fcmp ule double %286, %284
  %288 = fcmp ugt float %273, %95
  %289 = select i1 %287, i1 true, i1 %288
  br i1 %289, label %290, label %298

290:                                              ; preds = %283
  %291 = load double, ptr %151, align 8, !tbaa !287
  %292 = load double, ptr %270, align 8, !tbaa !153
  %293 = fsub double %291, %292
  %294 = load double, ptr %271, align 8, !tbaa !151
  %295 = fadd double %293, %294
  %296 = fmul double %295, 1.100000e+00
  %297 = fcmp ogt double %296, %284
  br i1 %297, label %298, label %306

298:                                              ; preds = %283, %290
  %299 = fadd float %273, -5.000000e-01
  store float %299, ptr %15, align 4, !tbaa !334
  %300 = fpext float %299 to double
  %301 = tail call fastcc double @predict_row_size_sum(ptr noundef nonnull %0, i32 noundef %6, double noundef %300) #23
  %302 = fadd double %200, %301
  %303 = fptosi double %302 to i32
  %304 = load float, ptr %15, align 4, !tbaa !334
  %305 = fcmp ogt float %304, %230
  br i1 %305, label %272, label %306, !llvm.loop !369

306:                                              ; preds = %290, %298, %280, %264
  %307 = phi float [ %265, %264 ], [ %273, %280 ], [ %304, %298 ], [ %273, %290 ]
  %308 = phi i32 [ %266, %264 ], [ %274, %280 ], [ %303, %298 ], [ %274, %290 ]
  %309 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 56
  %310 = fcmp olt float %307, %121
  br i1 %310, label %311, label %337

311:                                              ; preds = %306
  %312 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  %313 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 59
  br label %314

314:                                              ; preds = %311, %329
  %315 = phi float [ %307, %311 ], [ %335, %329 ]
  %316 = phi i32 [ %308, %311 ], [ %334, %329 ]
  %317 = load double, ptr %151, align 8, !tbaa !287
  %318 = sitofp i32 %316 to double
  %319 = fsub double %317, %318
  %320 = load double, ptr %312, align 8, !tbaa !151
  %321 = load double, ptr %313, align 8, !tbaa !367
  %322 = fmul double %320, %321
  %323 = fcmp olt double %319, %322
  br i1 %323, label %329, label %324

324:                                              ; preds = %314
  %325 = load double, ptr %309, align 8, !tbaa !290
  %326 = fsub double %325, %318
  %327 = fmul double %321, %325
  %328 = fcmp olt double %326, %327
  br i1 %328, label %329, label %337

329:                                              ; preds = %314, %324
  %330 = fadd float %315, 5.000000e-01
  store float %330, ptr %15, align 4, !tbaa !334
  %331 = fpext float %330 to double
  %332 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %331) #23
  %333 = fadd double %200, %332
  %334 = fptosi double %333 to i32
  %335 = load float, ptr %15, align 4, !tbaa !334
  %336 = fcmp olt float %335, %121
  br i1 %336, label %314, label %337, !llvm.loop !370

337:                                              ; preds = %324, %329, %306
  %338 = phi float [ %307, %306 ], [ %335, %329 ], [ %315, %324 ]
  %339 = fpext float %338 to double
  %340 = tail call fastcc double @predict_row_size_sum(ptr noundef %0, i32 noundef %6, double noundef %339) #23
  %341 = fptrunc double %340 to float
  %342 = load ptr, ptr %3, align 16, !tbaa !102
  %343 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %342, i64 0, i32 55
  store float %341, ptr %343, align 4, !tbaa !341
  br label %344

344:                                              ; preds = %337, %197, %85, %2, %33
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @update_predictor(ptr nocapture noundef %0, double noundef %1, double noundef %2, double noundef %3) unnamed_addr #20 !PGOFuncName !371 {
  %5 = fcmp olt double %2, 1.000000e+01
  br i1 %5, label %33, label %6

6:                                                ; preds = %4
  %7 = fmul double %1, %3
  %8 = fdiv double %7, %2
  %9 = getelementptr inbounds %struct.predictor_t, ptr %0, i64 0, i32 2
  %10 = load double, ptr %9, align 8, !tbaa !372
  %11 = getelementptr inbounds %struct.predictor_t, ptr %0, i64 0, i32 3
  %12 = load double, ptr %11, align 8, !tbaa !308
  %13 = fmul double %10, %12
  %14 = load <2 x double>, ptr %0, align 8, !tbaa !192
  %15 = extractelement <2 x double> %14, i64 0
  %16 = extractelement <2 x double> %14, i64 1
  %17 = fdiv double %15, %16
  %18 = fdiv double %17, 1.500000e+00
  %19 = fmul double %17, 1.500000e+00
  %20 = tail call fastcc double @x264_clip3f(double noundef %8, double noundef %18, double noundef %19) #23
  %21 = fneg double %20
  %22 = fmul double %21, %2
  %23 = tail call double @llvm.fmuladd.f64(double %3, double %1, double %22)
  %24 = fcmp ult double %23, 0.000000e+00
  %25 = select i1 %24, double %8, double %20
  %26 = select i1 %24, double 0.000000e+00, double %23
  %27 = insertelement <2 x double> poison, double %10, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x double> %14, %28
  %30 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %25, i64 0
  %31 = fadd <2 x double> %29, %30
  store <2 x double> %31, ptr %0, align 8, !tbaa !192
  %32 = fadd double %26, %13
  store double %32, ptr %11, align 8, !tbaa !308
  br label %33

33:                                               ; preds = %4, %6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @predict_row_size_sum(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #0 !PGOFuncName !373 {
  %4 = tail call fastcc double @row_bits_so_far(ptr noundef %0, i32 noundef %1) #23
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %6 = add nsw i32 %1, 1
  %7 = load i32, ptr %5, align 8, !tbaa !364
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi double [ %4, %3 ], [ %15, %11 ]
  ret double %10

11:                                               ; preds = %3, %11
  %12 = phi i32 [ %16, %11 ], [ %6, %3 ]
  %13 = phi double [ %15, %11 ], [ %4, %3 ]
  %14 = tail call fastcc double @predict_row_size(ptr noundef nonnull %0, i32 noundef %12, double noundef %2) #23
  %15 = fadd double %13, %14
  %16 = add nsw i32 %12, 1
  %17 = load i32, ptr %5, align 8, !tbaa !364
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %11, label %9, !llvm.loop !374
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc double @row_bits_so_far(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !PGOFuncName !375 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !376
  %5 = icmp sgt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 16, !tbaa !321
  %9 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !322
  %11 = sext i32 %4 to i64
  %12 = add i32 %1, 1
  br label %15

13:                                               ; preds = %15, %2
  %14 = phi double [ 0.000000e+00, %2 ], [ %21, %15 ]
  ret double %14

15:                                               ; preds = %6, %15
  %16 = phi i64 [ %11, %6 ], [ %22, %15 ]
  %17 = phi double [ 0.000000e+00, %6 ], [ %21, %15 ]
  %18 = getelementptr inbounds i32, ptr %10, i64 %16
  %19 = load i32, ptr %18, align 4, !tbaa !99
  %20 = sitofp i32 %19 to double
  %21 = fadd double %17, %20
  %22 = add nsw i64 %16, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %12, %23
  br i1 %24, label %13, label %15, !llvm.loop !377
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc double @predict_row_size(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #0 !PGOFuncName !378 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !102
  %6 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 60
  %7 = load ptr, ptr %6, align 8, !tbaa !323
  %8 = tail call fastcc double @qp2qscale(double noundef %2) #23
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %10 = load ptr, ptr %9, align 16, !tbaa !321
  %11 = getelementptr inbounds %struct.x264_frame, ptr %10, i64 0, i32 57
  %12 = load ptr, ptr %11, align 16, !tbaa !363
  %13 = sext i32 %1 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = sitofp i32 %15 to double
  %17 = tail call fastcc double @predict_size(ptr noundef %7, double noundef %8, double noundef %16) #23
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %19 = load i32, ptr %18, align 16, !tbaa !286
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %61, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %23 = load ptr, ptr %22, align 16, !tbaa !101
  %24 = getelementptr inbounds %struct.x264_frame, ptr %23, i64 0, i32 59
  %25 = load ptr, ptr %24, align 16, !tbaa !362
  %26 = getelementptr inbounds float, ptr %25, i64 %13
  %27 = load float, ptr %26, align 4, !tbaa !88
  %28 = fpext float %27 to double
  %29 = fcmp ugt double %28, %2
  br i1 %29, label %67, label %30

30:                                               ; preds = %21
  %31 = icmp eq i32 %19, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.x264_frame, ptr %23, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !346
  %35 = getelementptr inbounds %struct.x264_frame, ptr %10, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !346
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %61

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.x264_frame, ptr %23, i64 0, i32 57
  %40 = load ptr, ptr %39, align 16, !tbaa !363
  %41 = getelementptr inbounds i32, ptr %40, i64 %13
  %42 = load i32, ptr %41, align 4, !tbaa !99
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = sub nsw i32 %42, %15
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 true)
  %47 = sdiv i32 %15, 2
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.x264_frame, ptr %23, i64 0, i32 58
  %51 = load ptr, ptr %50, align 8, !tbaa !322
  %52 = getelementptr inbounds i32, ptr %51, i64 %13
  %53 = load i32, ptr %52, align 4, !tbaa !99
  %54 = mul nsw i32 %53, %15
  %55 = sdiv i32 %54, %42
  %56 = sitofp i32 %55 to double
  %57 = tail call fastcc double @qp2qscale(double noundef %28) #23
  %58 = fmul double %57, %56
  %59 = tail call fastcc double @qp2qscale(double noundef %2) #23
  %60 = fdiv double %58, %59
  br label %61

61:                                               ; preds = %3, %49, %44, %38, %32, %30
  %62 = phi double [ %60, %49 ], [ 0.000000e+00, %44 ], [ 0.000000e+00, %38 ], [ 0.000000e+00, %32 ], [ 0.000000e+00, %30 ], [ 0.000000e+00, %3 ]
  %63 = fcmp oeq double %62, 0.000000e+00
  %64 = select i1 %63, double %17, double %62
  %65 = fadd double %17, %64
  %66 = fmul double %65, 5.000000e-01
  br label %79

67:                                               ; preds = %21
  %68 = load ptr, ptr %6, align 8, !tbaa !323
  %69 = getelementptr inbounds [2 x %struct.predictor_t], ptr %68, i64 1
  %70 = tail call fastcc double @qp2qscale(double noundef %2) #23
  %71 = load ptr, ptr %9, align 16, !tbaa !321
  %72 = getelementptr inbounds %struct.x264_frame, ptr %71, i64 0, i32 56
  %73 = load ptr, ptr %72, align 16, !tbaa !101
  %74 = getelementptr inbounds i32, ptr %73, i64 %13
  %75 = load i32, ptr %74, align 4, !tbaa !99
  %76 = sitofp i32 %75 to double
  %77 = tail call fastcc double @predict_size(ptr noundef nonnull %69, double noundef %70, double noundef %76) #23
  %78 = fadd double %17, %77
  br label %79

79:                                               ; preds = %67, %61
  %80 = phi double [ %66, %61 ], [ %78, %67 ]
  ret double %80
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_ratecontrol_qp(ptr nocapture noundef readonly %0) local_unnamed_addr #21 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !334
  %6 = fpext float %5 to double
  %7 = fadd double %6, 5.000000e-01
  %8 = fptosi double %7 to i32
  %9 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !193
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %12 = load i32, ptr %11, align 4, !tbaa !194
  %13 = tail call fastcc i32 @x264_clip3(i32 noundef %8, i32 noundef %10, i32 noundef %12) #23
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @x264_ratecontrol_mb_qp(ptr nocapture noundef readonly %0) local_unnamed_addr #21 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12
  %5 = load float, ptr %4, align 4, !tbaa !334
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %11 = load ptr, ptr %10, align 16, !tbaa !321
  %12 = getelementptr inbounds %struct.x264_frame, ptr %11, i64 0, i32 14
  %13 = load i32, ptr %12, align 8, !tbaa !332
  %14 = icmp eq i32 %13, 0
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %16 = load ptr, ptr %15, align 8, !tbaa !117
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !379
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 61
  %21 = getelementptr inbounds %struct.x264_frame, ptr %16, i64 0, i32 60
  %22 = select i1 %14, ptr %20, ptr %21
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  %24 = getelementptr inbounds float, ptr %23, i64 %19
  %25 = load float, ptr %24, align 4, !tbaa !88
  %26 = fadd float %5, %25
  br label %27

27:                                               ; preds = %9, %1
  %28 = phi float [ %26, %9 ], [ %5, %1 ]
  %29 = fpext float %28 to double
  %30 = fadd double %29, 5.000000e-01
  %31 = fptosi double %30 to i32
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !193
  %34 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !194
  %36 = tail call fastcc i32 @x264_clip3(i32 noundef %31, i32 noundef %33, i32 noundef %35) #23
  ret i32 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_ratecontrol_slice_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %6 = load i32, ptr %5, align 8, !tbaa !167
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %91, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 42
  %10 = load i32, ptr %9, align 8, !tbaa !210
  %11 = icmp sgt i32 %10, %1
  br i1 %11, label %85, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !99
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 3
  %18 = load double, ptr %17, align 8, !tbaa !192
  %19 = sitofp i32 %14 to double
  %20 = fdiv double %18, %19
  %21 = fadd double %20, 1.000000e+00
  %22 = fptosi double %21 to i32
  br label %23

23:                                               ; preds = %12, %16
  %24 = phi i32 [ %22, %16 ], [ 24, %12 ]
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  store i32 %24, ptr %25, align 4, !tbaa !183
  %26 = tail call fastcc i32 @x264_clip3(i32 noundef %24, i32 noundef 0, i32 noundef 51) #23
  %27 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9
  store i32 %26, ptr %27, align 4, !tbaa !99
  %28 = load i32, ptr %25, align 4, !tbaa !183
  %29 = sitofp i32 %28 to double
  %30 = tail call fastcc double @qp2qscale(double noundef %29) #23
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %32 = load float, ptr %31, align 8, !tbaa !180
  %33 = tail call float @llvm.fabs.f32(float %32)
  %34 = fpext float %33 to double
  %35 = fdiv double %30, %34
  %36 = tail call fastcc double @qscale2qp(double noundef %35) #23
  %37 = fadd double %36, 5.000000e-01
  %38 = fptosi double %37 to i32
  %39 = tail call fastcc i32 @x264_clip3(i32 noundef %38, i32 noundef 0, i32 noundef 51) #23
  %40 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9, i64 2
  store i32 %39, ptr %40, align 4, !tbaa !99
  %41 = load i32, ptr %25, align 4, !tbaa !183
  %42 = sitofp i32 %41 to double
  %43 = tail call fastcc double @qp2qscale(double noundef %42) #23
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %45 = load float, ptr %44, align 4, !tbaa !170
  %46 = tail call float @llvm.fabs.f32(float %45)
  %47 = fpext float %46 to double
  %48 = fmul double %43, %47
  %49 = tail call fastcc double @qscale2qp(double noundef %48) #23
  %50 = fadd double %49, 5.000000e-01
  %51 = fptosi double %50 to i32
  %52 = tail call fastcc i32 @x264_clip3(i32 noundef %51, i32 noundef 0, i32 noundef 51) #23
  %53 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 9, i64 1
  store i32 %52, ptr %53, align 4, !tbaa !99
  %54 = load i32, ptr %9, align 8, !tbaa !210
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.85, i32 noundef %54) #24
  %55 = load i32, ptr %25, align 4, !tbaa !183
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.86, i32 noundef %55) #24
  %56 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  %57 = load i32, ptr %56, align 8, !tbaa !207
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.87) #24
  br label %60

60:                                               ; preds = %59, %23
  %61 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !165
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %91

64:                                               ; preds = %60
  %65 = zext nneg i32 %62 to i64
  br label %66

66:                                               ; preds = %64, %82
  %67 = phi i64 [ 0, %64 ], [ %83, %82 ]
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !101
  %70 = getelementptr inbounds %struct.x264_t, ptr %69, i64 0, i32 56
  %71 = load ptr, ptr %70, align 16, !tbaa !102
  store i32 0, ptr %71, align 8, !tbaa !166
  %72 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %71, i64 0, i32 1
  store i32 0, ptr %72, align 4, !tbaa !120
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %69, i64 0, i32 42
  store i32 0, ptr %73, align 8, !tbaa !121
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %69, i64 0, i32 42, i32 20
  store i32 0, ptr %74, align 8, !tbaa !167
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %69, i64 0, i32 18
  store i32 0, ptr %75, align 8, !tbaa !207
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %69, i64 0, i32 15
  store i32 0, ptr %76, align 4, !tbaa !380
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %69, i64 0, i32 42, i32 16
  store i32 0, ptr %77, align 8, !tbaa !123
  %78 = getelementptr inbounds %struct.x264_param_t, ptr %69, i64 0, i32 17
  %79 = load i32, ptr %78, align 4, !tbaa !122
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i32 1, ptr %78, align 4, !tbaa !122
  br label %82

82:                                               ; preds = %66, %81
  %83 = add nuw nsw i64 %67, 1
  %84 = icmp eq i64 %83, %65
  br i1 %84, label %91, label %66, !llvm.loop !381

85:                                               ; preds = %8
  %86 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 43
  %87 = load ptr, ptr %86, align 8, !tbaa !103
  %88 = sext i32 %1 to i64
  %89 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %87, i64 %88, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !382
  br label %91

91:                                               ; preds = %82, %60, %2, %85
  %92 = phi i32 [ %90, %85 ], [ 0, %2 ], [ 0, %60 ], [ 0, %82 ]
  ret i32 %92
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_ratecontrol_set_weights(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 43
  %6 = load ptr, ptr %5, align 8, !tbaa !103
  %7 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 10
  %8 = load i32, ptr %7, align 8, !tbaa !105
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !202
  %12 = icmp slt i32 %11, 1
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %6, i64 %9, i32 17
  %15 = load i16, ptr %14, align 2, !tbaa !219
  %16 = icmp sgt i16 %15, -1
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %6, i64 %9, i32 16
  %19 = load i16, ptr %18, align 2, !tbaa !72
  %20 = sext i16 %19 to i32
  %21 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37
  %22 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37, i64 0, i64 0, i32 3
  store i32 %20, ptr %22, align 4, !tbaa !383
  %23 = zext nneg i16 %15 to i32
  %24 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 %23, ptr %24, align 16, !tbaa !385
  %25 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %6, i64 %9, i32 16, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !72
  %27 = sext i16 %26 to i32
  %28 = getelementptr inbounds %struct.x264_frame, ptr %1, i64 0, i32 37, i64 0, i64 0, i32 4
  store i32 %27, ptr %28, align 8, !tbaa !386
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 20
  %30 = load ptr, ptr %29, align 8, !tbaa !387
  tail call void %30(ptr noundef nonnull %0, ptr noundef nonnull %21) #24
  br label %31

31:                                               ; preds = %13, %17, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_ratecontrol_end(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %6 = load ptr, ptr %5, align 16, !tbaa !102
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 6
  %9 = load i32, ptr %8, align 4, !tbaa !99
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 18
  %11 = load i32, ptr %10, align 4, !tbaa !99
  %12 = add nsw i32 %11, %9
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 6
  store i32 %12, ptr %13, align 8, !tbaa !388
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !99
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !99
  %18 = add nsw i32 %17, %15
  %19 = load i32, ptr %7, align 4, !tbaa !99
  %20 = add nsw i32 %18, %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 4
  store i32 %20, ptr %21, align 8, !tbaa !389
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 4
  %23 = load i32, ptr %22, align 4, !tbaa !99
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 5
  %25 = load i32, ptr %24, align 4, !tbaa !99
  %26 = add nsw i32 %25, %23
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 5
  store i32 %26, ptr %27, align 4, !tbaa !390
  br label %47

28:                                               ; preds = %47
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %31 = load i32, ptr %30, align 16, !tbaa !68
  %32 = sitofp i32 %31 to float
  %33 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 13
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %35 = load ptr, ptr %34, align 16, !tbaa !321
  %36 = getelementptr inbounds %struct.x264_frame, ptr %35, i64 0, i32 20
  %37 = load <2 x float>, ptr %33, align 8, !tbaa !88
  %38 = insertelement <2 x float> poison, float %32, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = fdiv <2 x float> %37, %39
  %41 = extractelement <2 x float> %40, i64 0
  store float %41, ptr %36, align 8, !tbaa !336
  store <2 x float> %40, ptr %33, align 8, !tbaa !88
  %42 = getelementptr inbounds %struct.x264_frame, ptr %35, i64 0, i32 21
  %43 = extractelement <2 x float> %40, i64 1
  store float %43, ptr %42, align 4, !tbaa !335
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %45 = load i32, ptr %44, align 8, !tbaa !222
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %234, label %55

47:                                               ; preds = %3, %47
  %48 = phi i64 [ 7, %3 ], [ %53, %47 ]
  %49 = phi i32 [ %26, %3 ], [ %52, %47 ]
  %50 = getelementptr inbounds i32, ptr %7, i64 %48
  %51 = load i32, ptr %50, align 4, !tbaa !99
  %52 = add nsw i32 %49, %51
  store i32 %52, ptr %27, align 4, !tbaa !390
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, 17
  br i1 %54, label %28, label %47, !llvm.loop !391

55:                                               ; preds = %28
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %57 = load i32, ptr %56, align 16, !tbaa !286
  switch i32 %57, label %64 [
    i32 2, label %58
    i32 0, label %71
  ]

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %60 = load ptr, ptr %59, align 8, !tbaa !117
  %61 = load i32, ptr %60, align 16, !tbaa !347
  %62 = icmp eq i32 %61, 0
  %63 = select i1 %62, i32 73, i32 105
  br label %71

64:                                               ; preds = %55
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %66 = load ptr, ptr %65, align 8, !tbaa !117
  %67 = getelementptr inbounds %struct.x264_frame, ptr %66, i64 0, i32 14
  %68 = load i32, ptr %67, align 8, !tbaa !332
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 98, i32 66
  br label %71

71:                                               ; preds = %55, %64, %58
  %72 = phi i32 [ %63, %58 ], [ %70, %64 ], [ 80, %55 ]
  %73 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 12
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 12, i64 1
  %75 = load i32, ptr %74, align 4, !tbaa !99
  %76 = load i32, ptr %73, align 8, !tbaa !99
  %77 = sub nsw i32 %75, %76
  %78 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %80 = load i32, ptr %79, align 4, !tbaa !99
  %81 = load i32, ptr %78, align 8, !tbaa !99
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  %83 = load i32, ptr %82, align 4, !tbaa !206
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %71
  %86 = icmp sgt i32 %77, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %85
  %88 = icmp slt i32 %77, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %87
  %90 = icmp sgt i32 %80, %81
  br i1 %90, label %94, label %91

91:                                               ; preds = %89
  %92 = icmp eq i32 %80, %81
  %93 = select i1 %92, i32 45, i32 116
  br label %94

94:                                               ; preds = %71, %85, %91, %89, %87
  %95 = phi i32 [ 115, %85 ], [ 116, %87 ], [ %93, %91 ], [ 115, %89 ], [ 45, %71 ]
  %96 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 36
  %97 = load ptr, ptr %96, align 8, !tbaa !225
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %99 = load ptr, ptr %98, align 8, !tbaa !117
  %100 = getelementptr inbounds %struct.x264_frame, ptr %99, i64 0, i32 10
  %101 = load i32, ptr %100, align 8, !tbaa !105
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %103 = load i32, ptr %102, align 4, !tbaa !315
  %104 = getelementptr inbounds %struct.x264_frame, ptr %99, i64 0, i32 5
  %105 = load i32, ptr %104, align 16, !tbaa !392
  %106 = getelementptr inbounds %struct.x264_frame, ptr %99, i64 0, i32 6
  %107 = load i32, ptr %106, align 4, !tbaa !324
  %108 = fpext float %41 to double
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %110 = load i32, ptr %109, align 4, !tbaa !393
  %111 = load i32, ptr %29, align 8, !tbaa !394
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !395
  %114 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.88, i32 noundef %101, i32 noundef %103, i32 noundef %72, i32 noundef %105, i32 noundef %107, double noundef %108, i32 noundef %110, i32 noundef %111, i32 noundef %113, i32 noundef %20, i32 noundef %52, i32 noundef %12, i32 noundef %95) #23
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %440, label %116

116:                                              ; preds = %94
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %118 = load i32, ptr %117, align 8, !tbaa !167
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %122 = load ptr, ptr %121, align 8, !tbaa !114
  %123 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %122, i64 0, i32 19
  %124 = load i32, ptr %123, align 4, !tbaa !115
  %125 = icmp sgt i32 %124, 1
  br label %126

126:                                              ; preds = %120, %116
  %127 = phi i1 [ false, %116 ], [ %125, %120 ]
  %128 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 8
  %131 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  br label %132

132:                                              ; preds = %161, %126
  %133 = phi i64 [ %166, %161 ], [ 0, %126 ]
  br i1 %127, label %134, label %140

134:                                              ; preds = %132
  %135 = load ptr, ptr %131, align 8, !tbaa !114
  %136 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %135, i64 0, i32 19
  %137 = load i32, ptr %136, align 4, !tbaa !99
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %133, %138
  br i1 %139, label %144, label %167

140:                                              ; preds = %132
  %141 = load i32, ptr %128, align 4, !tbaa !99
  %142 = sext i32 %141 to i64
  %143 = icmp slt i64 %133, %142
  br i1 %143, label %147, label %167

144:                                              ; preds = %134
  %145 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %135, i64 0, i32 18, i64 %133
  %146 = load i32, ptr %145, align 4, !tbaa !99
  br label %161

147:                                              ; preds = %140
  %148 = load i32, ptr %129, align 8, !tbaa !396
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %158, label %150

150:                                              ; preds = %147
  %151 = shl nuw nsw i64 %133, 1
  %152 = getelementptr inbounds [32 x i32], ptr %130, i64 0, i64 %151
  %153 = load i32, ptr %152, align 4, !tbaa !99
  %154 = or disjoint i64 %151, 1
  %155 = getelementptr inbounds [32 x i32], ptr %130, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !99
  %157 = add nsw i32 %156, %153
  br label %161

158:                                              ; preds = %147
  %159 = getelementptr inbounds [32 x i32], ptr %130, i64 0, i64 %133
  %160 = load i32, ptr %159, align 4, !tbaa !99
  br label %161

161:                                              ; preds = %150, %158, %144
  %162 = phi i32 [ %146, %144 ], [ %157, %150 ], [ %160, %158 ]
  %163 = load ptr, ptr %96, align 8, !tbaa !225
  %164 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef nonnull @.str.89, i32 noundef %162) #23
  %165 = icmp sgt i32 %164, -1
  %166 = add nuw nsw i64 %133, 1
  br i1 %165, label %132, label %440, !llvm.loop !397

167:                                              ; preds = %134, %140
  %168 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 5
  %169 = load ptr, ptr %168, align 16, !tbaa !398
  %170 = icmp eq ptr %169, null
  br i1 %170, label %181, label %171

171:                                              ; preds = %167
  %172 = load ptr, ptr %96, align 8, !tbaa !225
  %173 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  %174 = load i32, ptr %173, align 16, !tbaa !385
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 3
  %176 = load i32, ptr %175, align 4, !tbaa !383
  %177 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !386
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %172, ptr noundef nonnull @.str.90, i32 noundef %174, i32 noundef %176, i32 noundef %178) #23
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %440, label %181

181:                                              ; preds = %171, %167
  %182 = load ptr, ptr %96, align 8, !tbaa !225
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %182, ptr noundef nonnull @.str.91) #23
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %440, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %187 = load i32, ptr %186, align 8, !tbaa !123
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %234, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %98, align 8, !tbaa !117
  %191 = getelementptr inbounds %struct.x264_frame, ptr %190, i64 0, i32 14
  %192 = load i32, ptr %191, align 8, !tbaa !332
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %234, label %194

194:                                              ; preds = %189
  %195 = load i32, ptr %117, align 8, !tbaa !167
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %234

197:                                              ; preds = %194
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  %198 = load i32, ptr %56, align 16, !tbaa !286
  %199 = trunc i32 %198 to i8
  store i8 %199, ptr %4, align 1, !tbaa !97
  %200 = load i32, ptr %30, align 16, !tbaa !68
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.x264_frame, ptr %190, i64 0, i32 60
  %204 = load ptr, ptr %203, align 8, !tbaa !65
  %205 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 53
  %206 = load ptr, ptr %205, align 8, !tbaa !101
  %207 = zext nneg i32 %200 to i64
  br label %214

208:                                              ; preds = %214, %197
  %209 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 38
  %210 = load ptr, ptr %209, align 8, !tbaa !228
  %211 = call i64 @fwrite(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 1, ptr noundef %210) #23
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %224

213:                                              ; preds = %208
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  br label %440

214:                                              ; preds = %202, %214
  %215 = phi i64 [ 0, %202 ], [ %222, %214 ]
  %216 = getelementptr inbounds float, ptr %204, i64 %215
  %217 = load float, ptr %216, align 4, !tbaa !88
  %218 = fptosi float %217 to i16
  %219 = shl i16 %218, 8
  %220 = tail call fastcc zeroext i16 @endian_fix16(i16 noundef zeroext %219) #23
  %221 = getelementptr inbounds i16, ptr %206, i64 %215
  store i16 %220, ptr %221, align 2, !tbaa !72
  %222 = add nuw nsw i64 %215, 1
  %223 = icmp eq i64 %222, %207
  br i1 %223, label %208, label %214, !llvm.loop !399

224:                                              ; preds = %208
  %225 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 53
  %226 = load ptr, ptr %225, align 8, !tbaa !101
  %227 = load i32, ptr %30, align 16, !tbaa !68
  %228 = sext i32 %227 to i64
  %229 = load ptr, ptr %209, align 8, !tbaa !228
  %230 = tail call i64 @fwrite(ptr noundef %226, i64 noundef 2, i64 noundef %228, ptr noundef %229) #23
  %231 = trunc i64 %230 to i32
  %232 = load i32, ptr %30, align 16, !tbaa !68
  %233 = icmp sgt i32 %232, %231
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  br i1 %233, label %440, label %234

234:                                              ; preds = %224, %194, %189, %185, %28
  %235 = load i32, ptr %6, align 8, !tbaa !166
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %285, label %237

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %239 = load i32, ptr %238, align 16, !tbaa !286
  %240 = icmp eq i32 %239, 1
  %241 = sitofp i32 %1 to double
  %242 = load float, ptr %33, align 8, !tbaa !400
  %243 = fpext float %242 to double
  %244 = tail call fastcc double @qp2qscale(double noundef %243) #23
  %245 = fmul double %244, %241
  %246 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 26
  %247 = load double, ptr %246, align 8, !tbaa !279
  br i1 %240, label %248, label %254

248:                                              ; preds = %237
  %249 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %250 = load float, ptr %249, align 4, !tbaa !170
  %251 = tail call float @llvm.fabs.f32(float %250)
  %252 = fpext float %251 to double
  %253 = fmul double %247, %252
  br label %254

254:                                              ; preds = %237, %248
  %255 = phi double [ %253, %248 ], [ %247, %237 ]
  %256 = fdiv double %245, %255
  %257 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 27
  %258 = load double, ptr %257, align 8, !tbaa !178
  %259 = fadd double %258, %256
  %260 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 30
  %261 = load double, ptr %260, align 8, !tbaa !156
  %262 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 27
  %263 = fmul double %261, %259
  store double %263, ptr %262, align 8, !tbaa !178
  %264 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %265 = load ptr, ptr %264, align 8, !tbaa !117
  %266 = getelementptr inbounds %struct.x264_frame, ptr %265, i64 0, i32 5
  %267 = load i32, ptr %266, align 16, !tbaa !392
  %268 = sitofp i32 %267 to double
  %269 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %270 = load ptr, ptr %269, align 16, !tbaa !79
  %271 = getelementptr inbounds %struct.x264_sps_t, ptr %270, i64 0, i32 24, i32 16
  %272 = load i32, ptr %271, align 4, !tbaa !146
  %273 = uitofp i32 %272 to double
  %274 = fmul double %268, %273
  %275 = getelementptr inbounds %struct.x264_sps_t, ptr %270, i64 0, i32 24, i32 17
  %276 = load i32, ptr %275, align 4, !tbaa !145
  %277 = uitofp i32 %276 to double
  %278 = fdiv double %274, %277
  %279 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 5
  %280 = load double, ptr %279, align 8, !tbaa !155
  %281 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 29
  %282 = load double, ptr %281, align 8, !tbaa !179
  %283 = tail call double @llvm.fmuladd.f64(double %278, double %280, double %282)
  %284 = fmul double %261, %283
  store double %284, ptr %281, align 8, !tbaa !179
  br label %285

285:                                              ; preds = %254, %234
  %286 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 1
  %287 = load i32, ptr %286, align 4, !tbaa !120
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %300, label %289

289:                                              ; preds = %285
  %290 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 10
  %291 = load ptr, ptr %290, align 8, !tbaa !114
  %292 = getelementptr inbounds %struct.ratecontrol_entry_t, ptr %291, i64 0, i32 10
  %293 = load i32, ptr %292, align 8, !tbaa !215
  %294 = sitofp i32 %293 to double
  %295 = tail call fastcc double @qp2qscale(double noundef %294) #23
  %296 = tail call fastcc double @qscale2bits(ptr noundef %291, double noundef %295) #23
  %297 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 28
  %298 = load double, ptr %297, align 8, !tbaa !351
  %299 = fadd double %296, %298
  store double %299, ptr %297, align 8, !tbaa !351
  br label %300

300:                                              ; preds = %289, %285
  %301 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 72
  %302 = load i32, ptr %301, align 16, !tbaa !175
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %337, label %304

304:                                              ; preds = %300
  %305 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %306 = load i32, ptr %305, align 16, !tbaa !286
  %307 = icmp eq i32 %306, 1
  br i1 %307, label %308, label %337

308:                                              ; preds = %304
  %309 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 64
  %310 = load i32, ptr %309, align 4, !tbaa !401
  %311 = add nsw i32 %310, %1
  store i32 %311, ptr %309, align 4, !tbaa !401
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %313 = load ptr, ptr %312, align 8, !tbaa !117
  %314 = getelementptr inbounds %struct.x264_frame, ptr %313, i64 0, i32 18
  %315 = load i8, ptr %314, align 1, !tbaa !402
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %337, label %317

317:                                              ; preds = %308
  %318 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 62
  %319 = load ptr, ptr %318, align 8, !tbaa !190
  %320 = load float, ptr %33, align 8, !tbaa !400
  %321 = fpext float %320 to double
  %322 = tail call fastcc double @qp2qscale(double noundef %321) #23
  %323 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %324 = load i32, ptr %323, align 8, !tbaa !348
  %325 = add nsw i32 %324, -1
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !101
  %329 = getelementptr inbounds %struct.x264_frame, ptr %328, i64 0, i32 54
  %330 = load i32, ptr %329, align 4, !tbaa !349
  %331 = sitofp i32 %330 to double
  %332 = load i32, ptr %309, align 4, !tbaa !401
  %333 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 63
  %334 = load i32, ptr %333, align 8, !tbaa !291
  %335 = sdiv i32 %332, %334
  %336 = sitofp i32 %335 to double
  tail call fastcc void @update_predictor(ptr noundef %319, double noundef %322, double noundef %331, double noundef %336) #23
  store i32 0, ptr %309, align 4, !tbaa !401
  br label %337

337:                                              ; preds = %304, %317, %308, %300
  %338 = tail call fastcc i32 @update_vbv(ptr noundef nonnull %0, i32 noundef %1) #23
  store i32 %338, ptr %2, align 4, !tbaa !99
  %339 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %340 = load ptr, ptr %339, align 16, !tbaa !79
  %341 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 19
  %342 = load i32, ptr %341, align 4, !tbaa !403
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %441, label %344

344:                                              ; preds = %337
  %345 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %346 = load ptr, ptr %345, align 8, !tbaa !117
  %347 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 10
  %348 = load i32, ptr %347, align 8, !tbaa !105
  %349 = icmp eq i32 %348, 0
  %350 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 70, i32 2
  br i1 %349, label %351, label %360

351:                                              ; preds = %344
  %352 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 70
  store double 0.000000e+00, ptr %352, align 16, !tbaa !404
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  %354 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 68
  %355 = load <2 x i32>, ptr %353, align 16, !tbaa !99
  store <2 x i32> %355, ptr %354, align 8, !tbaa !99
  %356 = extractelement <2 x i32> %355, i64 0
  %357 = sitofp i32 %356 to double
  %358 = fdiv double %357, 9.000000e+04
  %359 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 70
  store double %358, ptr %359, align 8, !tbaa !405
  store double %358, ptr %350, align 16, !tbaa !406
  br label %405

360:                                              ; preds = %344
  %361 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 70
  %362 = load double, ptr %361, align 8, !tbaa !405
  %363 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 7
  %364 = load i32, ptr %363, align 8, !tbaa !407
  %365 = sitofp i32 %364 to double
  %366 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 16
  %367 = load i32, ptr %366, align 4, !tbaa !146
  %368 = uitofp i32 %367 to double
  %369 = fmul double %365, %368
  %370 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 17
  %371 = load i32, ptr %370, align 4, !tbaa !145
  %372 = uitofp i32 %371 to double
  %373 = fdiv double %369, %372
  %374 = fadd double %362, %373
  store double %374, ptr %350, align 16, !tbaa !406
  %375 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 68
  %376 = load i32, ptr %375, align 8, !tbaa !408
  %377 = sitofp i32 %376 to double
  %378 = fdiv double %377, 9.000000e+04
  %379 = fsub double %374, %378
  %380 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 16
  %381 = load i32, ptr %380, align 16, !tbaa !409
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %386, label %383

383:                                              ; preds = %360
  store double %374, ptr %361, align 8, !tbaa !405
  %384 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  %385 = load <2 x i32>, ptr %384, align 16, !tbaa !99
  store <2 x i32> %385, ptr %375, align 8, !tbaa !99
  br label %392

386:                                              ; preds = %360
  %387 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 69
  %388 = load i32, ptr %387, align 4, !tbaa !410
  %389 = sitofp i32 %388 to double
  %390 = fdiv double %389, 9.000000e+04
  %391 = fsub double %379, %390
  br label %392

392:                                              ; preds = %386, %383
  %393 = phi double [ %379, %383 ], [ %391, %386 ]
  %394 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 21, i32 7
  %395 = load i32, ptr %394, align 4, !tbaa !135
  %396 = icmp eq i32 %395, 0
  %397 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 71
  %398 = load double, ptr %397, align 8, !tbaa !411
  br i1 %396, label %401, label %399

399:                                              ; preds = %392
  %400 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 70
  store double %398, ptr %400, align 16, !tbaa !404
  br label %405

401:                                              ; preds = %392
  %402 = fcmp ogt double %398, %393
  %403 = select i1 %402, double %398, double %393
  %404 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 70
  store double %403, ptr %404, align 16, !tbaa !404
  br label %405

405:                                              ; preds = %399, %401, %351
  %406 = phi double [ %374, %399 ], [ %374, %401 ], [ %358, %351 ]
  %407 = phi double [ %398, %399 ], [ %403, %401 ], [ 0.000000e+00, %351 ]
  %408 = load i32, ptr %2, align 4, !tbaa !99
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %416, label %410

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %412 = load i32, ptr %411, align 16, !tbaa !412
  %413 = sub nsw i32 6, %412
  %414 = tail call i32 @llvm.smax.i32(i32 %413, i32 %408)
  %415 = shl nsw i32 %414, 3
  br label %416

416:                                              ; preds = %405, %410
  %417 = phi i32 [ %415, %410 ], [ 0, %405 ]
  %418 = add nsw i32 %417, %1
  %419 = sitofp i32 %418 to double
  %420 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 21, i32 5
  %421 = load i32, ptr %420, align 4, !tbaa !140
  %422 = sitofp i32 %421 to double
  %423 = fdiv double %419, %422
  %424 = fadd double %407, %423
  %425 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %6, i64 0, i32 71
  store double %424, ptr %425, align 8, !tbaa !411
  %426 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 70, i32 1
  store double %424, ptr %426, align 8, !tbaa !413
  %427 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 8
  %428 = load i32, ptr %427, align 4, !tbaa !414
  %429 = sitofp i32 %428 to double
  %430 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 16
  %431 = load i32, ptr %430, align 4, !tbaa !146
  %432 = uitofp i32 %431 to double
  %433 = fmul double %429, %432
  %434 = getelementptr inbounds %struct.x264_sps_t, ptr %340, i64 0, i32 24, i32 17
  %435 = load i32, ptr %434, align 4, !tbaa !145
  %436 = uitofp i32 %435 to double
  %437 = fdiv double %433, %436
  %438 = fadd double %406, %437
  %439 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 70, i32 3
  store double %438, ptr %439, align 8, !tbaa !415
  br label %441

440:                                              ; preds = %161, %224, %213, %181, %171, %94
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.92) #24
  br label %441

441:                                              ; preds = %337, %416, %440
  %442 = phi i32 [ -1, %440 ], [ 0, %416 ], [ 0, %337 ]
  ret i32 %442
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @update_vbv(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !416 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %4 = load ptr, ptr %3, align 16, !tbaa !102
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 16, !tbaa !101
  %7 = getelementptr inbounds %struct.x264_t, ptr %6, i64 0, i32 56
  %8 = load ptr, ptr %7, align 16, !tbaa !102
  %9 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 25
  %10 = load i32, ptr %9, align 8, !tbaa !285
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %12 = load i32, ptr %11, align 16, !tbaa !68
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %28, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %8, i64 0, i32 22
  %16 = load ptr, ptr %15, align 8, !tbaa !189
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %18 = load i32, ptr %17, align 16, !tbaa !286
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.predictor_t, ptr %16, i64 %19
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 13
  %22 = load float, ptr %21, align 8, !tbaa !400
  %23 = fpext float %22 to double
  %24 = tail call fastcc double @qp2qscale(double noundef %23) #23
  %25 = load i32, ptr %9, align 8, !tbaa !285
  %26 = sitofp i32 %25 to double
  %27 = sitofp i32 %1 to double
  tail call fastcc void @update_predictor(ptr noundef %20, double noundef %24, double noundef %26, double noundef %27) #23
  br label %28

28:                                               ; preds = %14, %2
  %29 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !161
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %76, label %32

32:                                               ; preds = %28
  %33 = sitofp i32 %1 to double
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %8, i64 0, i32 18
  %35 = load double, ptr %34, align 8, !tbaa !160
  %36 = fsub double %35, %33
  store double %36, ptr %34, align 8, !tbaa !160
  %37 = fcmp olt double %36, 0.000000e+00
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %40 = load i32, ptr %39, align 4, !tbaa !315
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.93, i32 noundef %40, double noundef %36) #24
  %41 = load double, ptr %34, align 8, !tbaa !160
  br label %42

42:                                               ; preds = %38, %32
  %43 = phi double [ %41, %38 ], [ %36, %32 ]
  %44 = fcmp ogt double %43, 0.000000e+00
  %45 = select i1 %44, double %43, double 0.000000e+00
  %46 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 20
  %47 = load double, ptr %46, align 8, !tbaa !151
  %48 = fadd double %45, %47
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %50 = load ptr, ptr %49, align 16, !tbaa !79
  %51 = getelementptr inbounds %struct.x264_sps_t, ptr %50, i64 0, i32 24, i32 21, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !135
  %53 = icmp ne i32 %52, 0
  %54 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %4, i64 0, i32 17
  %55 = load double, ptr %54, align 8, !tbaa !153
  %56 = fcmp ogt double %48, %55
  %57 = select i1 %53, i1 %56, i1 false
  br i1 %57, label %58, label %70

58:                                               ; preds = %42
  %59 = fsub double %48, %55
  %60 = fmul double %59, 1.250000e-01
  %61 = tail call double @llvm.ceil.f64(double %60)
  %62 = fptosi double %61 to i32
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %64 = load i32, ptr %63, align 16, !tbaa !412
  %65 = sub nsw i32 6, %64
  %66 = tail call i32 @llvm.smax.i32(i32 %65, i32 %62)
  %67 = shl nsw i32 %66, 3
  %68 = sitofp i32 %67 to double
  %69 = fsub double %48, %68
  br label %73

70:                                               ; preds = %42
  %71 = fcmp olt double %48, %55
  %72 = select i1 %71, double %48, double %55
  br label %73

73:                                               ; preds = %70, %58
  %74 = phi double [ %72, %70 ], [ %69, %58 ]
  %75 = phi i32 [ 0, %70 ], [ %62, %58 ]
  store double %74, ptr %34, align 8, !tbaa !160
  br label %76

76:                                               ; preds = %28, %73
  %77 = phi i32 [ %75, %73 ], [ 0, %28 ]
  ret i32 %77
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_hrd_fullness(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 16, !tbaa !101
  %4 = getelementptr inbounds %struct.x264_t, ptr %3, i64 0, i32 56
  %5 = load ptr, ptr %4, align 16, !tbaa !102
  %6 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %5, i64 0, i32 18
  %7 = load double, ptr %6, align 8, !tbaa !160
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %9 = load ptr, ptr %8, align 16, !tbaa !79
  %10 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 24, i32 21, i32 5
  %11 = load i32, ptr %10, align 4, !tbaa !140
  %12 = getelementptr inbounds %struct.x264_sps_t, ptr %9, i64 0, i32 24, i32 21, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !143
  %14 = sitofp i32 %13 to double
  %15 = fcmp olt double %7, 0.000000e+00
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = fcmp ogt double %7, %14
  br i1 %17, label %18, label %20

18:                                               ; preds = %16, %1
  %19 = phi ptr [ @.str.96, %16 ], [ @.str.95, %1 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.94, ptr noundef nonnull %19, double noundef %7, double noundef %14) #24
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
  store i32 %27, ptr %28, align 4, !tbaa !417
  %29 = fadd double %23, 5.000000e-01
  %30 = fmul double %14, 9.000000e+04
  %31 = fdiv double %30, %22
  %32 = tail call fastcc double @x264_clip3f(double noundef %29, double noundef 0.000000e+00, double noundef %31) #23
  %33 = fptosi double %32 to i32
  ret i32 %33
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_threads_normalize_predictors(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !165
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %15

7:                                                ; preds = %15
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %9 = load ptr, ptr %8, align 16, !tbaa !102
  %10 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %9, i64 0, i32 57
  %11 = load double, ptr %10, align 8, !tbaa !340
  %12 = fdiv double %11, %24
  br i1 %4, label %13, label %27

13:                                               ; preds = %7
  %14 = zext nneg i32 %3 to i64
  br label %28

15:                                               ; preds = %5, %15
  %16 = phi i64 [ 0, %5 ], [ %25, %15 ]
  %17 = phi double [ 0.000000e+00, %5 ], [ %24, %15 ]
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = getelementptr inbounds %struct.x264_t, ptr %19, i64 0, i32 56
  %21 = load ptr, ptr %20, align 16, !tbaa !102
  %22 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %21, i64 0, i32 58
  %23 = load double, ptr %22, align 8, !tbaa !365
  %24 = fadd double %17, %23
  %25 = add nuw nsw i64 %16, 1
  %26 = icmp eq i64 %25, %6
  br i1 %26, label %7, label %15, !llvm.loop !418

27:                                               ; preds = %28, %1, %7
  ret void

28:                                               ; preds = %13, %28
  %29 = phi i64 [ 0, %13 ], [ %37, %28 ]
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  %32 = getelementptr inbounds %struct.x264_t, ptr %31, i64 0, i32 56
  %33 = load ptr, ptr %32, align 16, !tbaa !102
  %34 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %33, i64 0, i32 58
  %35 = load double, ptr %34, align 8, !tbaa !365
  %36 = fmul double %12, %35
  store double %36, ptr %34, align 8, !tbaa !365
  %37 = add nuw nsw i64 %29, 1
  %38 = icmp eq i64 %37, %14
  br i1 %38, label %27, label %28, !llvm.loop !419
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_threads_distribute_ratecontrol(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 16, !tbaa !102
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 4, !tbaa !315
  %6 = icmp eq i32 %5, 0
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !165
  br i1 %6, label %9, label %26

9:                                                ; preds = %1
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %9
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  br label %30

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 61
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %22, %15 ]
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 56
  %20 = load ptr, ptr %19, align 16, !tbaa !102
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %20, i64 0, i32 61
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %21, ptr noundef nonnull align 8 dereferenceable(320) %14, i64 320, i1 false)
  %22 = add nuw nsw i64 %16, 1
  %23 = load i32, ptr %7, align 4, !tbaa !165
  %24 = sext i32 %23 to i64
  %25 = icmp slt i64 %22, %24
  br i1 %25, label %15, label %26, !llvm.loop !420

26:                                               ; preds = %15, %1
  %27 = phi i32 [ %8, %1 ], [ %23, %15 ]
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %29 = icmp sgt i32 %27, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %11, %26
  %31 = phi ptr [ %12, %11 ], [ %28, %26 ]
  %32 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !161
  br label %41

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %36 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 2
  %37 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %39 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 22
  %40 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 12
  br label %45

41:                                               ; preds = %94, %30
  %42 = phi ptr [ %31, %30 ], [ %28, %94 ]
  %43 = phi i32 [ %33, %30 ], [ %56, %94 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %155, label %101

45:                                               ; preds = %34, %94
  %46 = phi i64 [ 0, %34 ], [ %97, %94 ]
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !101
  %49 = getelementptr inbounds %struct.x264_t, ptr %48, i64 0, i32 56
  %50 = load ptr, ptr %49, align 16, !tbaa !102
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %50, ptr noundef nonnull align 8 dereferenceable(544) %3, i64 544, i1 false)
  %51 = load ptr, ptr %49, align 16, !tbaa !102
  %52 = load i32, ptr %35, align 16, !tbaa !286
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %51, i64 0, i32 61, i64 %53
  %55 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %51, i64 0, i32 60
  store ptr %54, ptr %55, align 8, !tbaa !323
  %56 = load i32, ptr %36, align 8, !tbaa !161
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %94, label %58

58:                                               ; preds = %45
  %59 = load double, ptr %37, align 8, !tbaa !340
  %60 = fcmp une double %59, 0.000000e+00
  br i1 %60, label %61, label %94

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.x264_t, ptr %48, i64 0, i32 5
  %63 = load i32, ptr %62, align 4, !tbaa !376
  %64 = getelementptr inbounds %struct.x264_t, ptr %48, i64 0, i32 6
  %65 = load i32, ptr %64, align 8, !tbaa !364
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load ptr, ptr %38, align 16, !tbaa !321
  %69 = getelementptr inbounds %struct.x264_frame, ptr %68, i64 0, i32 57
  %70 = load ptr, ptr %69, align 16, !tbaa !363
  %71 = sext i32 %63 to i64
  %72 = sext i32 %65 to i64
  br label %73

73:                                               ; preds = %67, %73
  %74 = phi i64 [ %71, %67 ], [ %79, %73 ]
  %75 = phi i32 [ 0, %67 ], [ %78, %73 ]
  %76 = getelementptr inbounds i32, ptr %70, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !99
  %78 = add nsw i32 %77, %75
  %79 = add nsw i64 %74, 1
  %80 = icmp eq i64 %79, %72
  br i1 %80, label %81, label %73, !llvm.loop !421

81:                                               ; preds = %73, %61
  %82 = phi i32 [ 0, %61 ], [ %78, %73 ]
  %83 = load ptr, ptr %39, align 8, !tbaa !189
  %84 = trunc i64 %46 to i32
  %85 = mul i32 %84, 5
  %86 = add i32 %85, 5
  %87 = add nsw i32 %86, %52
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.predictor_t, ptr %83, i64 %88
  %90 = load float, ptr %40, align 4, !tbaa !334
  %91 = fpext float %90 to double
  %92 = sitofp i32 %82 to double
  %93 = tail call fastcc double @predict_size(ptr noundef %89, double noundef %91, double noundef %92) #23
  br label %94

94:                                               ; preds = %45, %58, %81
  %95 = phi double [ %93, %81 ], [ 0.000000e+00, %58 ], [ 0.000000e+00, %45 ]
  %96 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %51, i64 0, i32 58
  store double %95, ptr %96, align 8, !tbaa !365
  %97 = add nuw nsw i64 %46, 1
  %98 = load i32, ptr %28, align 4, !tbaa !165
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %45, label %41, !llvm.loop !422

101:                                              ; preds = %41
  %102 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 57
  %103 = load double, ptr %102, align 8, !tbaa !340
  %104 = fcmp une double %103, 0.000000e+00
  br i1 %104, label %105, label %155

105:                                              ; preds = %101
  tail call void @x264_threads_normalize_predictors(ptr noundef nonnull %0) #23
  %106 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %3, i64 0, i32 23
  %107 = load i32, ptr %106, align 8, !tbaa !154
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %138, label %109

109:                                              ; preds = %105
  %110 = load i32, ptr %42, align 4, !tbaa !165
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load double, ptr %102, align 8, !tbaa !340
  %114 = zext nneg i32 %110 to i64
  br label %116

115:                                              ; preds = %116, %109
  tail call void @x264_threads_normalize_predictors(ptr noundef nonnull %0) #23
  br label %138

116:                                              ; preds = %112, %116
  %117 = phi i64 [ 0, %112 ], [ %136, %116 ]
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !101
  %120 = getelementptr inbounds %struct.x264_t, ptr %119, i64 0, i32 6
  %121 = load i32, ptr %120, align 8, !tbaa !364
  %122 = getelementptr inbounds %struct.x264_t, ptr %119, i64 0, i32 5
  %123 = load i32, ptr %122, align 4, !tbaa !376
  %124 = sub nsw i32 %121, %123
  %125 = sitofp i32 %124 to double
  %126 = fdiv double 1.000000e+00, %125
  %127 = fcmp olt double %126, 5.000000e-02
  %128 = select i1 %127, double 5.000000e-02, double %126
  %129 = getelementptr inbounds %struct.x264_t, ptr %119, i64 0, i32 56
  %130 = load ptr, ptr %129, align 16, !tbaa !102
  %131 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %130, i64 0, i32 59
  store double %128, ptr %131, align 8, !tbaa !367
  %132 = fmul double %128, 2.000000e+00
  %133 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %130, i64 0, i32 58
  %134 = load double, ptr %133, align 8, !tbaa !365
  %135 = tail call double @llvm.fmuladd.f64(double %132, double %113, double %134)
  store double %135, ptr %133, align 8, !tbaa !365
  %136 = add nuw nsw i64 %117, 1
  %137 = icmp eq i64 %136, %114
  br i1 %137, label %115, label %116, !llvm.loop !423

138:                                              ; preds = %115, %105
  %139 = load i32, ptr %42, align 4, !tbaa !165
  %140 = icmp sgt i32 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %138
  %142 = zext nneg i32 %139 to i64
  br label %143

143:                                              ; preds = %141, %143
  %144 = phi i64 [ 0, %141 ], [ %153, %143 ]
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !101
  %147 = getelementptr inbounds %struct.x264_t, ptr %146, i64 0, i32 56
  %148 = load ptr, ptr %147, align 16, !tbaa !102
  %149 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %148, i64 0, i32 58
  %150 = load double, ptr %149, align 8, !tbaa !365
  %151 = fptrunc double %150 to float
  %152 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %148, i64 0, i32 55
  store float %151, ptr %152, align 4, !tbaa !341
  %153 = add nuw nsw i64 %144, 1
  %154 = icmp eq i64 %153, %142
  br i1 %154, label %155, label %143, !llvm.loop !424

155:                                              ; preds = %143, %138, %101, %41
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_threads_merge_ratecontrol(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !165
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 16, !tbaa !102
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 22
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %13 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 13
  br label %15

14:                                               ; preds = %79, %1
  ret void

15:                                               ; preds = %5, %79
  %16 = phi i64 [ 0, %5 ], [ %80, %79 ]
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  %19 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 56
  %20 = load ptr, ptr %19, align 16, !tbaa !102
  %21 = load i32, ptr %8, align 8, !tbaa !129
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %72, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 5
  %25 = load i32, ptr %24, align 4, !tbaa !376
  %26 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 6
  %27 = load i32, ptr %26, align 8, !tbaa !364
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load ptr, ptr %9, align 16, !tbaa !321
  %31 = getelementptr inbounds %struct.x264_frame, ptr %30, i64 0, i32 57
  %32 = load ptr, ptr %31, align 16, !tbaa !363
  %33 = sext i32 %25 to i64
  %34 = sext i32 %27 to i64
  br label %64

35:                                               ; preds = %64, %23
  %36 = phi i32 [ 0, %23 ], [ %69, %64 ]
  %37 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 57
  %38 = load i32, ptr %37, align 8, !tbaa !394
  %39 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 57, i32 0, i32 1
  %40 = load i32, ptr %39, align 4, !tbaa !393
  %41 = add nsw i32 %40, %38
  %42 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 57, i32 0, i32 2
  %43 = load i32, ptr %42, align 8, !tbaa !395
  %44 = add nsw i32 %41, %43
  %45 = sub nsw i32 %27, %25
  %46 = load ptr, ptr %10, align 16, !tbaa !79
  %47 = getelementptr inbounds %struct.x264_sps_t, ptr %46, i64 0, i32 16
  %48 = load i32, ptr %47, align 4, !tbaa !85
  %49 = mul nsw i32 %48, %45
  %50 = load ptr, ptr %11, align 8, !tbaa !189
  %51 = load i32, ptr %12, align 16, !tbaa !286
  %52 = mul nuw nsw i64 %16, 5
  %53 = sext i32 %51 to i64
  %54 = getelementptr %struct.predictor_t, ptr %50, i64 %52
  %55 = getelementptr %struct.predictor_t, ptr %54, i64 %53
  %56 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %20, i64 0, i32 13
  %57 = load float, ptr %56, align 8, !tbaa !400
  %58 = sitofp i32 %49 to float
  %59 = fdiv float %57, %58
  %60 = fpext float %59 to double
  %61 = tail call fastcc double @qp2qscale(double noundef %60) #23
  %62 = sitofp i32 %36 to double
  %63 = sitofp i32 %44 to double
  tail call fastcc void @update_predictor(ptr noundef %55, double noundef %61, double noundef %62, double noundef %63) #23
  br label %72

64:                                               ; preds = %29, %64
  %65 = phi i64 [ %33, %29 ], [ %70, %64 ]
  %66 = phi i32 [ 0, %29 ], [ %69, %64 ]
  %67 = getelementptr inbounds i32, ptr %32, i64 %65
  %68 = load i32, ptr %67, align 4, !tbaa !99
  %69 = add nsw i32 %68, %66
  %70 = add nsw i64 %65, 1
  %71 = icmp eq i64 %70, %34
  br i1 %71, label %35, label %64, !llvm.loop !425

72:                                               ; preds = %35, %15
  %73 = icmp eq i64 %16, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %72
  %75 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %20, i64 0, i32 13
  %76 = load <2 x float>, ptr %75, align 8, !tbaa !88
  %77 = load <2 x float>, ptr %13, align 8, !tbaa !88
  %78 = fadd <2 x float> %76, %77
  store <2 x float> %78, ptr %13, align 8, !tbaa !88
  br label %79

79:                                               ; preds = %72, %74
  %80 = add nuw nsw i64 %16, 1
  %81 = load i32, ptr %2, align 4, !tbaa !165
  %82 = sext i32 %81 to i64
  %83 = icmp slt i64 %80, %82
  br i1 %83, label %15, label %14, !llvm.loop !426
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_thread_sync_ratecontrol(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef readonly %2) local_unnamed_addr #19 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %97, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 16, !tbaa !102
  %8 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %7, i64 0, i32 47
  %9 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 56
  %10 = load ptr, ptr %9, align 16, !tbaa !102
  %11 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %10, i64 0, i32 47
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %8, align 8
  %13 = load ptr, ptr %6, align 16, !tbaa !102
  %14 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %13, i64 0, i32 48
  %15 = load ptr, ptr %9, align 16, !tbaa !102
  %16 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %15, i64 0, i32 48
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %14, align 8
  %18 = load ptr, ptr %6, align 16, !tbaa !102
  %19 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %18, i64 0, i32 25
  %20 = load ptr, ptr %9, align 16, !tbaa !102
  %21 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %20, i64 0, i32 25
  %22 = load i32, ptr %21, align 8
  store i32 %22, ptr %19, align 8
  %23 = load ptr, ptr %6, align 16, !tbaa !102
  %24 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %23, i64 0, i32 26
  %25 = load ptr, ptr %9, align 16, !tbaa !102
  %26 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %25, i64 0, i32 26
  %27 = load i64, ptr %26, align 8
  store i64 %27, ptr %24, align 8
  %28 = load ptr, ptr %6, align 16, !tbaa !102
  %29 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %28, i64 0, i32 45
  %30 = load ptr, ptr %9, align 16, !tbaa !102
  %31 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %30, i64 0, i32 45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %29, ptr noundef nonnull align 8 dereferenceable(40) %31, i64 40, i1 false)
  %32 = load ptr, ptr %6, align 16, !tbaa !102
  %33 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %32, i64 0, i32 46
  %34 = load ptr, ptr %9, align 16, !tbaa !102
  %35 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %34, i64 0, i32 46
  %36 = load i32, ptr %35, align 8
  store i32 %36, ptr %33, align 8
  %37 = load ptr, ptr %6, align 16, !tbaa !102
  %38 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %37, i64 0, i32 31
  %39 = load ptr, ptr %9, align 16, !tbaa !102
  %40 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %39, i64 0, i32 31
  %41 = load i64, ptr %40, align 8
  store i64 %41, ptr %38, align 8
  %42 = load ptr, ptr %6, align 16, !tbaa !102
  %43 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %42, i64 0, i32 32
  %44 = load ptr, ptr %9, align 16, !tbaa !102
  %45 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %44, i64 0, i32 32
  %46 = load i64, ptr %45, align 8
  store i64 %46, ptr %43, align 8
  %47 = load ptr, ptr %6, align 16, !tbaa !102
  %48 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %47, i64 0, i32 63
  %49 = load ptr, ptr %9, align 16, !tbaa !102
  %50 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %49, i64 0, i32 63
  %51 = load i32, ptr %50, align 8
  store i32 %51, ptr %48, align 8
  %52 = load ptr, ptr %6, align 16, !tbaa !102
  %53 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %52, i64 0, i32 67
  %54 = load ptr, ptr %9, align 16, !tbaa !102
  %55 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %54, i64 0, i32 67
  %56 = load i64, ptr %55, align 8
  store i64 %56, ptr %53, align 8
  %57 = load ptr, ptr %6, align 16, !tbaa !102
  %58 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %57, i64 0, i32 54
  %59 = load ptr, ptr %9, align 16, !tbaa !102
  %60 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %59, i64 0, i32 54
  %61 = load i32, ptr %60, align 8
  store i32 %61, ptr %58, align 8
  %62 = load ptr, ptr %6, align 16, !tbaa !102
  %63 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %62, i64 0, i32 20
  %64 = load ptr, ptr %9, align 16, !tbaa !102
  %65 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %64, i64 0, i32 20
  %66 = load i64, ptr %65, align 8
  store i64 %66, ptr %63, align 8
  %67 = load ptr, ptr %6, align 16, !tbaa !102
  %68 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %9, align 16, !tbaa !102
  %70 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %69, i64 0, i32 17
  %71 = load i64, ptr %70, align 8
  store i64 %71, ptr %68, align 8
  %72 = load ptr, ptr %6, align 16, !tbaa !102
  %73 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %72, i64 0, i32 23
  %74 = load ptr, ptr %9, align 16, !tbaa !102
  %75 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %74, i64 0, i32 23
  %76 = load i32, ptr %75, align 8
  store i32 %76, ptr %73, align 8
  %77 = load ptr, ptr %6, align 16, !tbaa !102
  %78 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %77, i64 0, i32 30
  %79 = load ptr, ptr %9, align 16, !tbaa !102
  %80 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %79, i64 0, i32 30
  %81 = load i64, ptr %80, align 8
  store i64 %81, ptr %78, align 8
  %82 = load ptr, ptr %6, align 16, !tbaa !102
  %83 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %82, i64 0, i32 3
  %84 = load ptr, ptr %9, align 16, !tbaa !102
  %85 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %84, i64 0, i32 3
  %86 = load i32, ptr %85, align 4
  store i32 %86, ptr %83, align 4
  %87 = load ptr, ptr %6, align 16, !tbaa !102
  %88 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %87, i64 0, i32 33
  %89 = load ptr, ptr %9, align 16, !tbaa !102
  %90 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %89, i64 0, i32 33
  %91 = load i64, ptr %90, align 8
  store i64 %91, ptr %88, align 8
  %92 = load ptr, ptr %6, align 16, !tbaa !102
  %93 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %92, i64 0, i32 5
  %94 = load ptr, ptr %9, align 16, !tbaa !102
  %95 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %94, i64 0, i32 5
  %96 = load i64, ptr %95, align 8
  store i64 %96, ptr %93, align 8
  br label %97

97:                                               ; preds = %5, %3
  %98 = icmp eq ptr %0, %2
  br i1 %98, label %119, label %99

99:                                               ; preds = %97
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 56
  %101 = load ptr, ptr %100, align 16, !tbaa !102
  %102 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 27
  %103 = getelementptr inbounds %struct.x264_t, ptr %2, i64 0, i32 56
  %104 = load ptr, ptr %103, align 16, !tbaa !102
  %105 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %104, i64 0, i32 27
  %106 = load <2 x double>, ptr %102, align 8, !tbaa !192
  store <2 x double> %106, ptr %105, align 8, !tbaa !192
  %107 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 29
  %108 = load double, ptr %107, align 8, !tbaa !179
  %109 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %104, i64 0, i32 29
  store double %108, ptr %109, align 8, !tbaa !179
  %110 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 64
  %111 = load i32, ptr %110, align 4, !tbaa !401
  %112 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %104, i64 0, i32 64
  store i32 %111, ptr %112, align 4, !tbaa !401
  %113 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 68
  %114 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %104, i64 0, i32 68
  %115 = load <2 x i32>, ptr %113, align 8, !tbaa !99
  store <2 x i32> %115, ptr %114, align 8, !tbaa !99
  %116 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %101, i64 0, i32 70
  %117 = getelementptr inbounds %struct.x264_ratecontrol_t, ptr %104, i64 0, i32 70
  %118 = load <2 x double>, ptr %116, align 8, !tbaa !192
  store <2 x double> %118, ptr %117, align 8, !tbaa !192
  br label %119

119:                                              ; preds = %99, %97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #22

declare double @exp2(double) local_unnamed_addr

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #22

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree noinline nounwind optsize willreturn memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 5602379}
!4 = !{!"MaxCount", i64 1843200}
!5 = !{!"MaxInternalCount", i64 1843200}
!6 = !{!"MaxFunctionCount", i64 28800}
!7 = !{!"NumCounts", i64 117}
!8 = !{!"NumFunctions", i64 8}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 1843200, i32 2}
!14 = !{i32 100000, i64 1843200, i32 2}
!15 = !{i32 200000, i64 1843200, i32 2}
!16 = !{i32 300000, i64 1843200, i32 2}
!17 = !{i32 400000, i64 1843200, i32 2}
!18 = !{i32 500000, i64 1843200, i32 2}
!19 = !{i32 600000, i64 1843200, i32 2}
!20 = !{i32 700000, i64 921600, i32 4}
!21 = !{i32 800000, i64 921600, i32 4}
!22 = !{i32 900000, i64 921600, i32 4}
!23 = !{i32 950000, i64 921600, i32 4}
!24 = !{i32 990000, i64 28800, i32 6}
!25 = !{i32 999000, i64 14400, i32 7}
!26 = !{i32 999900, i64 720, i32 8}
!27 = !{i32 999990, i64 21, i32 9}
!28 = !{i32 999999, i64 1, i32 36}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!36, !44, i64 548}
!36 = !{!"x264_t", !37, i64 0, !39, i64 704, !38, i64 1736, !38, i64 1740, !38, i64 1744, !38, i64 1748, !38, i64 1752, !46, i64 1760, !42, i64 1832, !38, i64 1840, !38, i64 1844, !38, i64 1848, !38, i64 1852, !38, i64 1856, !38, i64 1860, !38, i64 1864, !38, i64 1868, !38, i64 1872, !38, i64 1876, !38, i64 1880, !38, i64 1884, !38, i64 1888, !38, i64 1892, !39, i64 1896, !42, i64 3200, !39, i64 3208, !42, i64 3328, !38, i64 3336, !38, i64 3340, !39, i64 3344, !39, i64 3376, !39, i64 3392, !39, i64 3424, !39, i64 3440, !39, i64 3472, !39, i64 3488, !39, i64 3520, !39, i64 3536, !39, i64 4272, !42, i64 7216, !49, i64 7232, !50, i64 13904, !51, i64 14416, !42, i64 14680, !42, i64 14688, !38, i64 14696, !39, i64 14704, !38, i64 14856, !39, i64 14864, !39, i64 15016, !38, i64 15024, !38, i64 15028, !48, i64 15032, !52, i64 15040, !53, i64 16368, !42, i64 26704, !56, i64 26712, !39, i64 30400, !39, i64 30912, !39, i64 31168, !42, i64 31176, !39, i64 31184, !39, i64 31232, !39, i64 31248, !39, i64 31304, !39, i64 31360, !39, i64 31456, !42, i64 31552, !59, i64 31560, !60, i64 32616, !61, i64 32912, !62, i64 33032, !63, i64 33080, !64, i64 33256, !42, i64 33328}
!37 = !{!"x264_param_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !41, i64 44, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !38, i64 96, !38, i64 100, !38, i64 104, !38, i64 108, !38, i64 112, !38, i64 116, !38, i64 120, !38, i64 124, !38, i64 128, !38, i64 132, !38, i64 136, !38, i64 140, !38, i64 144, !42, i64 152, !39, i64 160, !39, i64 176, !39, i64 192, !39, i64 208, !39, i64 224, !39, i64 288, !42, i64 352, !42, i64 360, !38, i64 368, !38, i64 372, !42, i64 376, !43, i64 384, !45, i64 488, !38, i64 632, !38, i64 636, !38, i64 640, !38, i64 644, !38, i64 648, !38, i64 652, !38, i64 656, !38, i64 660, !38, i64 664, !38, i64 668, !38, i64 672, !38, i64 676, !38, i64 680, !38, i64 684, !38, i64 688, !38, i64 692, !42, i64 696}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32}
!42 = !{!"any pointer", !39, i64 0}
!43 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !44, i64 72, !44, i64 76, !38, i64 80, !39, i64 84, !38, i64 92, !38, i64 96}
!44 = !{!"float", !39, i64 0}
!45 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !44, i64 24, !44, i64 28, !44, i64 32, !38, i64 36, !38, i64 40, !44, i64 44, !44, i64 48, !44, i64 52, !38, i64 56, !44, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !42, i64 80, !38, i64 88, !42, i64 96, !44, i64 104, !44, i64 108, !44, i64 112, !42, i64 120, !38, i64 128, !42, i64 136}
!46 = !{!"", !38, i64 0, !38, i64 4, !42, i64 8, !38, i64 16, !42, i64 24, !47, i64 32}
!47 = !{!"bs_s", !42, i64 0, !42, i64 8, !42, i64 16, !48, i64 24, !38, i64 32, !38, i64 36}
!48 = !{!"long", !39, i64 0}
!49 = !{!"", !42, i64 0, !42, i64 8, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !39, i64 60, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !38, i64 84, !38, i64 88, !38, i64 92, !39, i64 96, !39, i64 352, !38, i64 6496, !38, i64 6500, !39, i64 6504, !38, i64 6632, !38, i64 6636, !38, i64 6640, !38, i64 6644, !38, i64 6648, !38, i64 6652, !38, i64 6656, !38, i64 6660}
!50 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !42, i64 16, !42, i64 24, !42, i64 32, !38, i64 48, !39, i64 52}
!51 = !{!"", !42, i64 0, !39, i64 8, !42, i64 24, !39, i64 32, !38, i64 176, !38, i64 180, !38, i64 184, !38, i64 188, !38, i64 192, !38, i64 196, !38, i64 200, !48, i64 208, !48, i64 216, !39, i64 224, !48, i64 240, !48, i64 248, !38, i64 256, !38, i64 260}
!52 = !{!"", !39, i64 0, !39, i64 32, !39, i64 48, !39, i64 560}
!53 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !39, i64 72, !39, i64 80, !39, i64 88, !39, i64 96, !39, i64 104, !39, i64 112, !38, i64 120, !39, i64 124, !39, i64 140, !38, i64 204, !38, i64 208, !38, i64 212, !38, i64 216, !38, i64 220, !38, i64 224, !38, i64 228, !38, i64 232, !38, i64 236, !38, i64 240, !38, i64 244, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !39, i64 304, !39, i64 320, !39, i64 336, !39, i64 352, !42, i64 864, !42, i64 872, !42, i64 880, !39, i64 888, !38, i64 1016, !38, i64 1020, !39, i64 1024, !38, i64 1028, !38, i64 1032, !38, i64 1036, !38, i64 1040, !38, i64 1044, !38, i64 1048, !38, i64 1052, !38, i64 1056, !38, i64 1060, !54, i64 1072, !55, i64 8656, !38, i64 9424, !38, i64 9428, !38, i64 9432, !38, i64 9436, !38, i64 9440, !38, i64 9444, !38, i64 9448, !38, i64 9452, !39, i64 9456, !38, i64 9472, !38, i64 9476, !39, i64 9480, !42, i64 9992, !39, i64 10000, !42, i64 10256, !39, i64 10264, !38, i64 10284, !39, i64 10288}
!54 = !{!"", !39, i64 0, !39, i64 384, !39, i64 1248, !39, i64 1504, !39, i64 1760, !39, i64 2144, !39, i64 2624, !39, i64 2640, !38, i64 2656, !38, i64 2660, !39, i64 2672, !39, i64 3184, !39, i64 3696, !39, i64 3776, !39, i64 3904, !39, i64 3928, !39, i64 3952, !39, i64 3976, !39, i64 3984, !39, i64 7056, !39, i64 7312, !39, i64 7568}
!55 = !{!"", !39, i64 0, !39, i64 48, !39, i64 96, !39, i64 176, !39, i64 496, !39, i64 656, !39, i64 696, !39, i64 728, !38, i64 736, !39, i64 740, !38, i64 744, !38, i64 748, !38, i64 752, !38, i64 756}
!56 = !{!"", !57, i64 0, !39, i64 704, !39, i64 728, !39, i64 768, !39, i64 808, !39, i64 880, !39, i64 920, !39, i64 960, !39, i64 1000, !39, i64 1040, !39, i64 1080, !39, i64 1120, !39, i64 1880, !39, i64 2152, !39, i64 2168, !39, i64 3192, !39, i64 3240, !39, i64 3656, !39, i64 3664, !39, i64 3672}
!57 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !39, i64 12, !38, i64 88, !38, i64 92, !38, i64 96, !39, i64 100, !39, i64 108, !39, i64 364, !39, i64 432, !39, i64 456, !39, i64 664, !39, i64 672, !58, i64 696}
!58 = !{!"double", !39, i64 0}
!59 = !{!"", !39, i64 0, !39, i64 56, !39, i64 112, !39, i64 168, !39, i64 224, !39, i64 256, !39, i64 312, !39, i64 368, !39, i64 424, !39, i64 480, !39, i64 536, !42, i64 592, !39, i64 600, !39, i64 632, !42, i64 664, !42, i64 672, !39, i64 680, !39, i64 736, !39, i64 792, !39, i64 848, !39, i64 904, !42, i64 960, !42, i64 968, !42, i64 976, !42, i64 984, !42, i64 992, !42, i64 1000, !42, i64 1008, !42, i64 1016, !42, i64 1024, !42, i64 1032, !42, i64 1040, !42, i64 1048}
!60 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !39, i64 24, !39, i64 104, !42, i64 160, !42, i64 168, !42, i64 176, !42, i64 184, !42, i64 192, !42, i64 200, !42, i64 208, !42, i64 216, !42, i64 224, !42, i64 232, !42, i64 240, !42, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288}
!61 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !42, i64 88, !42, i64 96, !42, i64 104, !42, i64 112}
!62 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40}
!63 = !{!"", !42, i64 0, !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !42, i64 56, !42, i64 64, !42, i64 72, !42, i64 80, !39, i64 88, !39, i64 136}
!64 = !{!"", !39, i64 0, !39, i64 16, !39, i64 32, !39, i64 48, !42, i64 64}
!65 = !{!66, !42, i64 12152}
!66 = !{!"x264_frame", !38, i64 0, !38, i64 4, !38, i64 8, !48, i64 16, !48, i64 24, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !42, i64 48, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !39, i64 84, !39, i64 85, !39, i64 86, !44, i64 88, !44, i64 92, !38, i64 96, !38, i64 100, !39, i64 104, !39, i64 116, !39, i64 128, !38, i64 140, !38, i64 144, !38, i64 148, !39, i64 152, !39, i64 176, !39, i64 208, !42, i64 240, !39, i64 248, !39, i64 280, !39, i64 320, !39, i64 3392, !38, i64 3520, !42, i64 3528, !42, i64 3536, !42, i64 3544, !39, i64 3552, !42, i64 3568, !39, i64 3576, !39, i64 3848, !39, i64 6440, !39, i64 6712, !39, i64 6728, !39, i64 6736, !39, i64 6864, !39, i64 6868, !39, i64 8164, !38, i64 9460, !39, i64 9464, !39, i64 9536, !42, i64 12128, !42, i64 12136, !42, i64 12144, !42, i64 12152, !42, i64 12160, !38, i64 12168, !42, i64 12176, !42, i64 12184, !42, i64 12192, !38, i64 12200, !39, i64 12204, !38, i64 12276, !48, i64 12280, !67, i64 12288, !39, i64 12320, !39, i64 12572, !39, i64 13576, !38, i64 15584, !38, i64 15588, !38, i64 15592, !38, i64 15596, !38, i64 15600, !38, i64 15604, !38, i64 15608, !44, i64 15612, !38, i64 15616, !38, i64 15620, !38, i64 15624}
!67 = !{!"", !58, i64 0, !58, i64 8, !58, i64 16, !58, i64 24}
!68 = !{!36, !38, i64 16368}
!69 = !{!66, !42, i64 12160}
!70 = !{!36, !38, i64 14672}
!71 = !{!66, !42, i64 12192}
!72 = !{!73, !73, i64 0}
!73 = !{!"short", !39, i64 0}
!74 = distinct !{!74, !75, !76, !77}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!36, !38, i64 544}
!79 = !{!36, !42, i64 3200}
!80 = !{!81, !38, i64 1088}
!81 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !39, i64 52, !38, i64 1076, !38, i64 1080, !38, i64 1084, !38, i64 1088, !38, i64 1092, !38, i64 1096, !38, i64 1100, !38, i64 1104, !82, i64 1108, !38, i64 1124, !83, i64 1128, !38, i64 1296}
!82 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12}
!83 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48, !38, i64 52, !38, i64 56, !38, i64 60, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !38, i64 80, !84, i64 84, !38, i64 132, !38, i64 136, !38, i64 140, !38, i64 144, !38, i64 148, !38, i64 152, !38, i64 156, !38, i64 160, !38, i64 164}
!84 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44}
!85 = !{!81, !38, i64 1084}
!86 = distinct !{!86, !75}
!87 = !{!36, !38, i64 16372}
!88 = !{!44, !44, i64 0}
!89 = distinct !{!89, !75}
!90 = distinct !{!90, !75}
!91 = !{i32 0, i32 65536}
!92 = distinct !{!92, !75}
!93 = !{!"ratecontrol.c:ac_energy_mb"}
!94 = !{!"ratecontrol.c:x264_log2"}
!95 = !{i32 0, i32 33}
!96 = !{!"ratecontrol.c:x264_exp2fix8"}
!97 = !{!39, !39, i64 0}
!98 = !{!"ratecontrol.c:ac_energy_plane"}
!99 = !{!38, !38, i64 0}
!100 = !{!36, !38, i64 16436}
!101 = !{!42, !42, i64 0}
!102 = !{!36, !42, i64 26704}
!103 = !{!104, !42, i64 312}
!104 = !{!"x264_ratecontrol_t", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !58, i64 16, !58, i64 24, !58, i64 32, !58, i64 40, !38, i64 48, !39, i64 52, !42, i64 72, !38, i64 80, !44, i64 84, !44, i64 88, !44, i64 92, !44, i64 96, !38, i64 100, !58, i64 104, !58, i64 112, !58, i64 120, !58, i64 128, !58, i64 136, !42, i64 144, !38, i64 152, !58, i64 160, !38, i64 168, !58, i64 176, !58, i64 184, !58, i64 192, !58, i64 200, !58, i64 208, !58, i64 216, !58, i64 224, !58, i64 232, !58, i64 240, !58, i64 248, !42, i64 256, !42, i64 264, !42, i64 272, !42, i64 280, !42, i64 288, !42, i64 296, !38, i64 304, !42, i64 312, !58, i64 320, !39, i64 328, !38, i64 368, !58, i64 376, !58, i64 384, !58, i64 392, !39, i64 400, !39, i64 440, !58, i64 480, !39, i64 488, !38, i64 504, !44, i64 508, !58, i64 512, !58, i64 520, !58, i64 528, !58, i64 536, !42, i64 544, !39, i64 552, !42, i64 872, !38, i64 880, !38, i64 884, !38, i64 888, !42, i64 896, !42, i64 904, !38, i64 912, !38, i64 916, !58, i64 920, !58, i64 928}
!105 = !{!66, !38, i64 56}
!106 = !{!107, !38, i64 0}
!107 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !58, i64 16, !38, i64 24, !38, i64 28, !38, i64 32, !48, i64 40, !58, i64 48, !58, i64 56, !38, i64 64, !38, i64 68, !38, i64 72, !38, i64 76, !44, i64 80, !39, i64 84, !39, i64 86, !73, i64 90, !39, i64 92, !38, i64 156, !38, i64 160, !38, i64 164}
!108 = !{!107, !38, i64 8}
!109 = !{!104, !38, i64 504}
!110 = !{!104, !42, i64 296}
!111 = distinct !{!111, !75}
!112 = distinct !{!112, !75}
!113 = !{!"ratecontrol.c:endian_fix16"}
!114 = !{!104, !42, i64 72}
!115 = !{!107, !38, i64 156}
!116 = !{!36, !38, i64 14696}
!117 = !{!36, !42, i64 14680}
!118 = distinct !{!118, !75}
!119 = distinct !{!119, !75}
!120 = !{!104, !38, i64 4}
!121 = !{!36, !38, i64 488}
!122 = !{!36, !38, i64 100}
!123 = !{!36, !38, i64 552}
!124 = !{!36, !44, i64 592}
!125 = !{!104, !58, i64 40}
!126 = !{!36, !44, i64 512}
!127 = !{!104, !58, i64 232}
!128 = !{!36, !38, i64 524}
!129 = !{!36, !38, i64 528}
!130 = !{!104, !58, i64 16}
!131 = !{!104, !38, i64 12}
!132 = !{!36, !38, i64 508}
!133 = !{!36, !38, i64 40}
!134 = !{!81, !38, i64 1212}
!135 = !{!81, !38, i64 1240}
!136 = !{!81, !38, i64 1256}
!137 = !{i32 3, i32 33}
!138 = !{!81, !38, i64 1216}
!139 = !{!81, !38, i64 1224}
!140 = !{!81, !38, i64 1232}
!141 = !{!81, !38, i64 1220}
!142 = !{!81, !38, i64 1228}
!143 = !{!81, !38, i64 1236}
!144 = !{!36, !38, i64 84}
!145 = !{!81, !38, i64 1196}
!146 = !{!81, !38, i64 1192}
!147 = !{!81, !38, i64 1292}
!148 = !{!81, !38, i64 1244}
!149 = !{!81, !38, i64 1248}
!150 = !{!81, !38, i64 1252}
!151 = !{!104, !58, i64 128}
!152 = !{!104, !58, i64 136}
!153 = !{!104, !58, i64 104}
!154 = !{!104, !38, i64 152}
!155 = !{!104, !58, i64 24}
!156 = !{!104, !58, i64 208}
!157 = !{!36, !44, i64 516}
!158 = !{!104, !58, i64 160}
!159 = !{!36, !44, i64 532}
!160 = !{!104, !58, i64 112}
!161 = !{!104, !38, i64 8}
!162 = !{!"ratecontrol.c:qp2qscale"}
!163 = !{!"ratecontrol.c:x264_clip3"}
!164 = !{!"ratecontrol.c:x264_clip3f"}
!165 = !{!36, !38, i64 4}
!166 = !{!104, !38, i64 0}
!167 = !{!36, !38, i64 576}
!168 = !{!36, !38, i64 652}
!169 = !{!36, !38, i64 656}
!170 = !{!36, !44, i64 540}
!171 = !{!36, !44, i64 520}
!172 = !{!104, !58, i64 32}
!173 = !{!104, !38, i64 48}
!174 = !{!104, !38, i64 368}
!175 = !{!36, !38, i64 25808}
!176 = !{!104, !58, i64 384}
!177 = !{!104, !58, i64 376}
!178 = !{!104, !58, i64 184}
!179 = !{!104, !58, i64 200}
!180 = !{!36, !44, i64 536}
!181 = !{!104, !58, i64 240}
!182 = !{!104, !58, i64 248}
!183 = !{!36, !38, i64 492}
!184 = !{!36, !38, i64 17428}
!185 = !{!36, !38, i64 504}
!186 = !{!104, !58, i64 480}
!187 = !{!104, !58, i64 320}
!188 = !{!36, !38, i64 8}
!189 = !{!104, !42, i64 144}
!190 = !{!104, !42, i64 872}
!191 = !{i64 0, i64 8, !192, i64 8, i64 8, !192, i64 16, i64 8, !192, i64 24, i64 8, !192}
!192 = !{!58, !58, i64 0}
!193 = !{!36, !38, i64 496}
!194 = !{!36, !38, i64 500}
!195 = distinct !{!195, !75}
!196 = distinct !{!196, !75}
!197 = !{!36, !42, i64 584}
!198 = !{!36, !38, i64 20}
!199 = !{!36, !38, i64 24}
!200 = !{!36, !38, i64 660}
!201 = !{!36, !38, i64 664}
!202 = !{!36, !38, i64 396}
!203 = !{!36, !38, i64 112}
!204 = !{!36, !38, i64 96}
!205 = !{!36, !38, i64 404}
!206 = !{!36, !38, i64 25820}
!207 = !{!36, !38, i64 104}
!208 = !{!36, !38, i64 556}
!209 = distinct !{!209, !75}
!210 = !{!104, !38, i64 304}
!211 = !{!36, !38, i64 36}
!212 = !{!107, !58, i64 56}
!213 = !{!107, !58, i64 16}
!214 = !{!107, !38, i64 32}
!215 = !{!107, !38, i64 64}
!216 = distinct !{!216, !75}
!217 = !{!107, !39, i64 84}
!218 = distinct !{!218, !75}
!219 = !{!107, !73, i64 90}
!220 = distinct !{!220, !75}
!221 = !{i32 -1, i32 1}
!222 = !{!36, !38, i64 560}
!223 = !{!36, !42, i64 568}
!224 = !{!104, !42, i64 264}
!225 = !{!104, !42, i64 256}
!226 = !{!104, !42, i64 280}
!227 = !{!104, !42, i64 288}
!228 = !{!104, !42, i64 272}
!229 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 12, i64 4, !99, i64 16, i64 8, !192, i64 24, i64 8, !192, i64 32, i64 8, !192, i64 40, i64 8, !192, i64 48, i64 4, !99, i64 52, i64 20, !97, i64 72, i64 8, !101, i64 80, i64 4, !99, i64 84, i64 4, !88, i64 88, i64 4, !88, i64 92, i64 4, !88, i64 96, i64 4, !88, i64 100, i64 4, !99, i64 104, i64 8, !192, i64 112, i64 8, !192, i64 120, i64 8, !192, i64 128, i64 8, !192, i64 136, i64 8, !192, i64 144, i64 8, !101, i64 152, i64 4, !99, i64 160, i64 8, !192, i64 168, i64 4, !99, i64 176, i64 8, !192, i64 184, i64 8, !192, i64 192, i64 8, !192, i64 200, i64 8, !192, i64 208, i64 8, !192, i64 216, i64 8, !192, i64 224, i64 8, !192, i64 232, i64 8, !192, i64 240, i64 8, !192, i64 248, i64 8, !192, i64 256, i64 8, !101, i64 264, i64 8, !101, i64 272, i64 8, !101, i64 280, i64 8, !101, i64 288, i64 8, !101, i64 296, i64 8, !101, i64 304, i64 4, !99, i64 312, i64 8, !101, i64 320, i64 8, !192, i64 328, i64 40, !97, i64 368, i64 4, !99, i64 376, i64 8, !192, i64 384, i64 8, !192, i64 392, i64 8, !192, i64 400, i64 40, !97, i64 440, i64 40, !97, i64 480, i64 8, !192, i64 488, i64 16, !97, i64 504, i64 4, !99, i64 508, i64 4, !88, i64 512, i64 8, !192, i64 520, i64 8, !192, i64 528, i64 8, !192, i64 536, i64 8, !192, i64 544, i64 8, !101, i64 552, i64 320, !97, i64 872, i64 8, !101, i64 880, i64 4, !99, i64 884, i64 4, !99, i64 888, i64 4, !99, i64 896, i64 8, !101, i64 904, i64 8, !101, i64 912, i64 4, !99, i64 916, i64 4, !99, i64 920, i64 8, !192, i64 928, i64 8, !192}
!230 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 12, i64 4, !99, i64 16, i64 4, !99, i64 20, i64 4, !99, i64 24, i64 4, !99, i64 28, i64 4, !99, i64 32, i64 4, !99, i64 36, i64 4, !99, i64 40, i64 4, !99, i64 44, i64 4, !99, i64 48, i64 4, !99, i64 52, i64 4, !99, i64 56, i64 4, !99, i64 60, i64 4, !99, i64 64, i64 4, !99, i64 68, i64 4, !99, i64 72, i64 4, !99, i64 76, i64 4, !99, i64 80, i64 4, !99, i64 84, i64 4, !99, i64 88, i64 4, !99, i64 92, i64 4, !99, i64 96, i64 4, !99, i64 100, i64 4, !99, i64 104, i64 4, !99, i64 108, i64 4, !99, i64 112, i64 4, !99, i64 116, i64 4, !99, i64 120, i64 4, !99, i64 124, i64 4, !99, i64 128, i64 4, !99, i64 132, i64 4, !99, i64 136, i64 4, !99, i64 140, i64 4, !99, i64 144, i64 4, !99, i64 152, i64 8, !101, i64 160, i64 16, !97, i64 176, i64 16, !97, i64 192, i64 16, !97, i64 208, i64 16, !97, i64 224, i64 64, !97, i64 288, i64 64, !97, i64 352, i64 8, !101, i64 360, i64 8, !101, i64 368, i64 4, !99, i64 372, i64 4, !99, i64 376, i64 8, !101, i64 384, i64 4, !99, i64 388, i64 4, !99, i64 392, i64 4, !99, i64 396, i64 4, !99, i64 400, i64 4, !99, i64 404, i64 4, !99, i64 408, i64 4, !99, i64 412, i64 4, !99, i64 416, i64 4, !99, i64 420, i64 4, !99, i64 424, i64 4, !99, i64 428, i64 4, !99, i64 432, i64 4, !99, i64 436, i64 4, !99, i64 440, i64 4, !99, i64 444, i64 4, !99, i64 448, i64 4, !99, i64 452, i64 4, !99, i64 456, i64 4, !88, i64 460, i64 4, !88, i64 464, i64 4, !99, i64 468, i64 8, !97, i64 476, i64 4, !99, i64 480, i64 4, !99, i64 488, i64 4, !99, i64 492, i64 4, !99, i64 496, i64 4, !99, i64 500, i64 4, !99, i64 504, i64 4, !99, i64 508, i64 4, !99, i64 512, i64 4, !88, i64 516, i64 4, !88, i64 520, i64 4, !88, i64 524, i64 4, !99, i64 528, i64 4, !99, i64 532, i64 4, !88, i64 536, i64 4, !88, i64 540, i64 4, !88, i64 544, i64 4, !99, i64 548, i64 4, !88, i64 552, i64 4, !99, i64 556, i64 4, !99, i64 560, i64 4, !99, i64 568, i64 8, !101, i64 576, i64 4, !99, i64 584, i64 8, !101, i64 592, i64 4, !88, i64 596, i64 4, !88, i64 600, i64 4, !88, i64 608, i64 8, !101, i64 616, i64 4, !99, i64 624, i64 8, !101, i64 632, i64 4, !99, i64 636, i64 4, !99, i64 640, i64 4, !99, i64 644, i64 4, !99, i64 648, i64 4, !99, i64 652, i64 4, !99, i64 656, i64 4, !99, i64 660, i64 4, !99, i64 664, i64 4, !99, i64 668, i64 4, !99, i64 672, i64 4, !99, i64 676, i64 4, !99, i64 680, i64 4, !99, i64 684, i64 4, !99, i64 688, i64 4, !99, i64 692, i64 4, !99, i64 696, i64 8, !101}
!231 = distinct !{!231, !75}
!232 = !{!"ratecontrol.c:parse_zones"}
!233 = !{!36, !42, i64 624}
!234 = !{!36, !38, i64 616}
!235 = distinct !{!235, !75}
!236 = !{!36, !42, i64 608}
!237 = distinct !{!237, !75}
!238 = distinct !{!238, !75}
!239 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 12, i64 4, !99, i64 16, i64 4, !88, i64 24, i64 8, !101}
!240 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 12, i64 4, !88, i64 20, i64 8, !101}
!241 = !{i64 0, i64 4, !88, i64 8, i64 8, !101}
!242 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !88, i64 16, i64 8, !101}
!243 = !{!104, !38, i64 888}
!244 = !{!104, !42, i64 896}
!245 = !{!246, !38, i64 0}
!246 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !44, i64 16, !42, i64 24}
!247 = !{!246, !38, i64 4}
!248 = !{!246, !38, i64 8}
!249 = !{!246, !44, i64 16}
!250 = !{!246, !42, i64 24}
!251 = distinct !{!251, !75}
!252 = !{!"ratecontrol.c:x264_strcat_filename"}
!253 = !{!"ratecontrol.c:init_pass2"}
!254 = !{!36, !44, i64 596}
!255 = !{!36, !44, i64 600}
!256 = !{!107, !38, i64 160}
!257 = distinct !{!257, !75}
!258 = distinct !{!258, !75}
!259 = !{!107, !38, i64 68}
!260 = distinct !{!260, !75}
!261 = distinct !{!261, !75}
!262 = !{!107, !44, i64 80}
!263 = distinct !{!263, !75}
!264 = distinct !{!264, !75}
!265 = distinct !{!265, !75}
!266 = distinct !{!266, !75}
!267 = distinct !{!267, !75}
!268 = distinct !{!268, !75}
!269 = distinct !{!269, !75}
!270 = distinct !{!270, !75}
!271 = distinct !{!271, !75}
!272 = !{!"ratecontrol.c:parse_zone"}
!273 = !{!37, !42, i64 696}
!274 = distinct !{!274, !75}
!275 = !{!"ratecontrol.c:qscale2bits"}
!276 = !{!107, !38, i64 28}
!277 = !{!107, !38, i64 24}
!278 = !{!"ratecontrol.c:get_qscale"}
!279 = !{!104, !58, i64 176}
!280 = !{!246, !38, i64 12}
!281 = !{!"ratecontrol.c:get_diff_limited_q"}
!282 = !{!104, !58, i64 392}
!283 = !{!"ratecontrol.c:clip_qscale"}
!284 = !{!104, !44, i64 96}
!285 = !{!104, !38, i64 168}
!286 = !{!36, !38, i64 7248}
!287 = !{!104, !58, i64 120}
!288 = distinct !{!288, !75}
!289 = distinct !{!289, !75}
!290 = !{!104, !58, i64 512}
!291 = !{!104, !38, i64 880}
!292 = distinct !{!292, !75}
!293 = !{!"ratecontrol.c:vbv_pass2"}
!294 = !{i32 0, i32 2}
!295 = distinct !{!295, !75}
!296 = distinct !{!296, !75}
!297 = distinct !{!297, !75}
!298 = !{!107, !58, i64 48}
!299 = distinct !{!299, !75}
!300 = !{!"ratecontrol.c:count_expected_bits"}
!301 = !{!107, !48, i64 40}
!302 = distinct !{!302, !75}
!303 = !{!"ratecontrol.c:qscale2qp"}
!304 = !{!"ratecontrol.c:get_zone"}
!305 = distinct !{!305, !75}
!306 = !{!"ratecontrol.c:predict_size"}
!307 = !{!67, !58, i64 0}
!308 = !{!67, !58, i64 24}
!309 = !{!67, !58, i64 8}
!310 = !{!"ratecontrol.c:find_underflow"}
!311 = !{!107, !38, i64 164}
!312 = distinct !{!312, !75}
!313 = !{!"ratecontrol.c:fix_underflow"}
!314 = distinct !{!314, !75}
!315 = !{!36, !38, i64 1844}
!316 = distinct !{!316, !75}
!317 = !{!104, !42, i64 904}
!318 = !{!104, !38, i64 100}
!319 = !{!36, !38, i64 7304}
!320 = !{!36, !38, i64 25816}
!321 = !{!36, !42, i64 14688}
!322 = !{!66, !42, i64 12136}
!323 = !{!104, !42, i64 544}
!324 = !{!66, !38, i64 36}
!325 = !{!326, !38, i64 0}
!326 = !{!"", !38, i64 0, !38, i64 4, !38, i64 8, !38, i64 12, !38, i64 16, !38, i64 20, !38, i64 24, !38, i64 28, !38, i64 32, !38, i64 36, !38, i64 40, !38, i64 44, !38, i64 48}
!327 = !{!36, !38, i64 32}
!328 = !{!326, !38, i64 36}
!329 = distinct !{!329, !75}
!330 = !{!326, !38, i64 4}
!331 = !{!66, !39, i64 86}
!332 = !{!66, !38, i64 72}
!333 = !{!104, !38, i64 80}
!334 = !{!104, !44, i64 84}
!335 = !{!66, !44, i64 92}
!336 = !{!66, !44, i64 88}
!337 = !{!"ratecontrol.c:update_vbv_plan"}
!338 = !{!36, !38, i64 1852}
!339 = !{!36, !38, i64 1740}
!340 = !{!104, !58, i64 520}
!341 = !{!104, !44, i64 508}
!342 = distinct !{!342, !75}
!343 = !{!"ratecontrol.c:rate_estimate_qscale"}
!344 = !{!48, !48, i64 0}
!345 = !{i64 0, i64 4, !99, i64 4, i64 4, !99, i64 8, i64 4, !99, i64 16, i64 8, !192, i64 24, i64 4, !99, i64 28, i64 4, !99, i64 32, i64 4, !99, i64 40, i64 8, !344, i64 48, i64 8, !192, i64 56, i64 8, !192, i64 64, i64 4, !99, i64 68, i64 4, !99, i64 72, i64 4, !99, i64 76, i64 4, !99, i64 80, i64 4, !88, i64 84, i64 1, !97, i64 86, i64 4, !97, i64 90, i64 2, !72, i64 92, i64 64, !97, i64 156, i64 4, !99, i64 160, i64 4, !99, i64 164, i64 4, !99}
!346 = !{!66, !38, i64 4}
!347 = !{!66, !38, i64 0}
!348 = !{!36, !38, i64 14856}
!349 = !{!66, !38, i64 9460}
!350 = distinct !{!350, !75}
!351 = !{!104, !58, i64 192}
!352 = distinct !{!352, !75}
!353 = !{!107, !38, i64 72}
!354 = !{!107, !38, i64 76}
!355 = !{!36, !38, i64 648}
!356 = !{!66, !48, i64 24}
!357 = !{!36, !48, i64 15032}
!358 = !{!"ratecontrol.c:accum_p_qp_update"}
!359 = !{!36, !38, i64 16388}
!360 = !{!36, !38, i64 25792}
!361 = !{!36, !38, i64 16384}
!362 = !{!66, !42, i64 12144}
!363 = !{!66, !42, i64 12128}
!364 = !{!36, !38, i64 1752}
!365 = !{!104, !58, i64 528}
!366 = distinct !{!366, !75}
!367 = !{!104, !58, i64 536}
!368 = distinct !{!368, !75}
!369 = distinct !{!369, !75}
!370 = distinct !{!370, !75}
!371 = !{!"ratecontrol.c:update_predictor"}
!372 = !{!67, !58, i64 16}
!373 = !{!"ratecontrol.c:predict_row_size_sum"}
!374 = distinct !{!374, !75}
!375 = !{!"ratecontrol.c:row_bits_so_far"}
!376 = !{!36, !38, i64 1748}
!377 = distinct !{!377, !75}
!378 = !{!"ratecontrol.c:predict_row_size"}
!379 = !{!36, !38, i64 16392}
!380 = !{!36, !38, i64 92}
!381 = distinct !{!381, !75}
!382 = !{!107, !38, i64 4}
!383 = !{!384, !38, i64 36}
!384 = !{!"x264_weight_t", !39, i64 0, !39, i64 16, !38, i64 32, !38, i64 36, !38, i64 40, !42, i64 48}
!385 = !{!384, !38, i64 32}
!386 = !{!384, !38, i64 40}
!387 = !{!36, !42, i64 32896}
!388 = !{!36, !38, i64 26808}
!389 = !{!36, !38, i64 26800}
!390 = !{!36, !38, i64 26804}
!391 = distinct !{!391, !75}
!392 = !{!66, !38, i64 32}
!393 = !{!36, !38, i64 26716}
!394 = !{!36, !38, i64 26712}
!395 = !{!36, !38, i64 26720}
!396 = !{!36, !38, i64 136}
!397 = distinct !{!397, !75}
!398 = !{!384, !42, i64 48}
!399 = distinct !{!399, !75}
!400 = !{!104, !44, i64 88}
!401 = !{!104, !38, i64 884}
!402 = !{!66, !39, i64 85}
!403 = !{!81, !38, i64 1204}
!404 = !{!66, !58, i64 12288}
!405 = !{!104, !58, i64 920}
!406 = !{!66, !58, i64 12304}
!407 = !{!66, !38, i64 40}
!408 = !{!104, !38, i64 912}
!409 = !{!66, !38, i64 80}
!410 = !{!104, !38, i64 916}
!411 = !{!104, !58, i64 928}
!412 = !{!36, !38, i64 640}
!413 = !{!66, !58, i64 12296}
!414 = !{!66, !38, i64 44}
!415 = !{!66, !58, i64 12312}
!416 = !{!"ratecontrol.c:update_vbv"}
!417 = !{!36, !38, i64 15028}
!418 = distinct !{!418, !75}
!419 = distinct !{!419, !75}
!420 = distinct !{!420, !75}
!421 = distinct !{!421, !75}
!422 = distinct !{!422, !75}
!423 = distinct !{!423, !75}
!424 = distinct !{!424, !75}
!425 = distinct !{!425, !75}
!426 = distinct !{!426, !75}
