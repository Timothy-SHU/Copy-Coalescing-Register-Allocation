; ModuleID = 'x264_src/encoder/encoder.c'
source_filename = "x264_src/encoder/encoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.x264_cpu_name_t = type { [16 x i8], i32 }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.0, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
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
%struct.x264_nal_t = type { i32, i32, i32, ptr }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }
%struct.x264_picture_t = type { i32, i32, i32, i32, i64, i64, ptr, %struct.x264_image_t, %struct.x264_hrd_t, ptr }
%struct.x264_image_t = type { i32, i32, [4 x i32], [4 x ptr] }
%struct.x264_lookahead_t = type { i8, i8, i8, i32, i32, ptr, %struct.x264_synch_frame_list_t, %struct.x264_synch_frame_list_t, %struct.x264_synch_frame_list_t }
%struct.x264_synch_frame_list_t = type { ptr, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"DTS compresion changed timebase: %u/%u -> %u/%lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Effective timebase denominator %lu exceeds H.264 maximum\0A\00", align 1
@i_chroma_qp_table = internal constant [76 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1D\1E\1F  !\22\22##$$%%%&&&''''''''''''''''", align 16
@.str.2 = private unnamed_addr constant [24 x i8] c"using cpu capabilities:\00", align 1
@x264_cpu_names = external constant [0 x %struct.x264_cpu_name_t], align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"SSE2\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"SSE3\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"SSE4.1\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" none!\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"MV cost test failed: x264 has been miscompiled!\0A\00", align 1
@.str.10 = private unnamed_addr constant [45 x i8] c"CLZ test failed: x264 has been miscompiled!\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"Are you attempting to run an SSE4a-targeted build on a CPU that\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"doesn't support it?\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"HRD bitrate: %i bits/sec\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"CPB size: %i bits\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"dump_yuv: can't write to %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"profile %s, level %d.%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"Baseline\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"Main\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"High\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"High 4:4:4 Predictive\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"non-strictly-monotonic PTS\0A\00", align 1
@x264_encoder_close.slice_order = internal unnamed_addr constant [5 x i8] c"\02\04\00\03\01", align 1
@x264_encoder_close.slice_name = internal unnamed_addr constant [5 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], align 16
@.str.24 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.29 = private unnamed_addr constant [98 x i8] c"frame %s:%-5d Avg QP:%5.2f  size:%6.0f  PSNR Mean Y:%5.2f U:%5.2f V:%5.2f Avg:%5.2f Global:%5.2f\0A\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"frame %s:%-5d Avg QP:%5.2f  size:%6.0f\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c" %4.1f%%\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"consecutive B-frames:%s\0A\00", align 1
@x264_mb_partition_pixel_table = internal unnamed_addr constant [17 x i8] c"\06\04\05\03\06\04\05\03\06\04\05\03\03\03\01\02\00", align 16
@.str.33 = private unnamed_addr constant [10 x i8] c"mb I  %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [75 x i8] c"mb P  %s  P16..4: %4.1f%% %4.1f%% %4.1f%% %4.1f%% %4.1f%%    skip:%4.1f%%\0A\00", align 1
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@.str.35 = private unnamed_addr constant [107 x i8] c"mb B  %s  B16..8: %4.1f%% %4.1f%% %4.1f%%  direct:%4.1f%%  skip:%4.1f%%  L0:%4.1f%% L1:%4.1f%% BI:%4.1f%%\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c" inter:%.1f%%\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"8x8 transform intra:%.1f%%%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [44 x i8] c"direct mvs  spatial:%.1f%% temporal:%.1f%%\0A\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c" inter: %.1f%% %.1f%% %.1f%%\00", align 1
@.str.40 = private unnamed_addr constant [49 x i8] c"coded y,uvDC,uvAC intra: %.1f%% %.1f%% %.1f%%%s\0A\00", align 1
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@.str.41 = private unnamed_addr constant [47 x i8] c"i16 v,h,dc,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@.str.42 = private unnamed_addr constant [105 x i8] c"i%d v,h,dc,ddl,ddr,vr,hd,vl,hu: %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"i8c dc,h,v,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Weighted P-Frames: Y:%.1f%%\0A\00", align 1
@.str.45 = private unnamed_addr constant [15 x i8] c"ref %c L%d:%s\0A\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"SSIM Mean Y:%.7f\0A\00", align 1
@.str.48 = private unnamed_addr constant [68 x i8] c"PSNR Mean Y:%6.3f U:%6.3f V:%6.3f Avg:%6.3f Global:%6.3f kb/s:%.2f\0A\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"kb/s:%.2f\0A\00", align 1
@tga_dump_rate = dso_local local_unnamed_addr global i32 0, align 4
@.str.50 = private unnamed_addr constant [32 x i8] c"invalid width x height (%dx%d)\0A\00", align 1
@.str.51 = private unnamed_addr constant [44 x i8] c"width or height not divisible by 2 (%dx%d)\0A\00", align 1
@.str.52 = private unnamed_addr constant [40 x i8] c"invalid CSP (only I420/YV12 supported)\0A\00", align 1
@.str.53 = private unnamed_addr constant [36 x i8] c"not compiled with pthread support!\0A\00", align 1
@.str.54 = private unnamed_addr constant [39 x i8] c"interlace + me=esa is not implemented\0A\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"interlace + weightp is not implemented\0A\00", align 1
@.str.56 = private unnamed_addr constant [41 x i8] c"broken ffmpeg default settings detected\0A\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"use an encoding preset (vpre)\0A\00", align 1
@.str.58 = private unnamed_addr constant [33 x i8] c"no ratecontrol method specified\0A\00", align 1
@.str.59 = private unnamed_addr constant [48 x i8] c"VBV is incompatible with constant QP, ignored.\0A\00", align 1
@.str.60 = private unnamed_addr constant [39 x i8] c"VBV maxrate unspecified, assuming CBR\0A\00", align 1
@.str.61 = private unnamed_addr constant [50 x i8] c"VBV bufsize set but maxrate unspecified, ignored\0A\00", align 1
@.str.62 = private unnamed_addr constant [53 x i8] c"max bitrate less than average bitrate, assuming CBR\0A\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"VBV maxrate specified, but no bufsize, ignored\0A\00", align 1
@.str.64 = private unnamed_addr constant [48 x i8] c"interlaced + slice-max-size is not implemented\0A\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c"interlaced + slice-max-mbs is not implemented\0A\00", align 1
@.str.66 = private unnamed_addr constant [44 x i8] c"subme=0 + direct=temporal is not supported\0A\00", align 1
@.str.67 = private unnamed_addr constant [51 x i8] c"b-pyramid normal + intra-refresh is not supported\0A\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"ref > 1 + intra-refresh is not supported\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.69 = private unnamed_addr constant [23 x i8] c"invalid level_idc: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"using mv_range_thread = %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [43 x i8] c"NAL HRD parameters require VBV parameters\0A\00", align 1
@.str.72 = private unnamed_addr constant [35 x i8] c"CBR HRD requires constant bitrate\0A\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"cannot create valid sample aspect ratio\0A\00", align 1
@.str.74 = private unnamed_addr constant [17 x i8] c"using SAR=%d/%d\0A\00", align 1
@weight_none = external local_unnamed_addr constant [3 x %struct.x264_weight_t], align 16
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@.str.75 = private unnamed_addr constant [35 x i8] c"invalid DTS: PTS is less than DTS\0A\00", align 1
@.str.76 = private unnamed_addr constant [30 x i8] c" PSNR Y:%5.2f U:%5.2f V:%5.2f\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c" SSIM Y:%.5f\00", align 1
@.str.78 = private unnamed_addr constant [84 x i8] c"frame=%4d QP=%.2f NAL=%d Slice:%c Poc:%-3d I:%-4d P:%-4d SKIP:%-4d size=%d bytes%s\0A\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"frame_%d.yuv\00", align 1
@seek_val = external local_unnamed_addr global i32, align 4
@.str.80 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.81 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"I16..4%s: %4.1f%% %4.1f%% %4.1f%%\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"..PCM\00", align 1
@.str.84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@switch.table.x264_encoder_encode = private unnamed_addr constant [3 x i64] [i64 1, i64 2, i64 0], align 8

; Function Attrs: nounwind uwtable
define dso_local ptr @x264_encoder_open_96(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1000 x i8], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #15
  %4 = tail call ptr @x264_malloc(i32 noundef 33344) #15
  %5 = icmp eq ptr %4, null
  br i1 %5, label %662, label %6

6:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %4, i8 0, i64 33344, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %4, ptr noundef nonnull align 8 dereferenceable(704) %0, i64 704, i1 false)
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef %0) #15
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call fastcc i32 @x264_validate_parameters(ptr noundef %4), !range !44
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %662, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @x264_cqm_parse_file(ptr noundef %4, ptr noundef nonnull %16) #15
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %662, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @spec_strdup(ptr noundef nonnull %24) #15
  store ptr %27, ptr %23, align 8, !tbaa !66
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !67
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @spec_strdup(ptr noundef nonnull %30) #15
  store ptr %33, ptr %29, align 8, !tbaa !67
  br label %34

34:                                               ; preds = %32, %28
  tail call fastcc void @x264_set_aspect_ratio(ptr noundef %4, ptr noundef %4, i32 noundef 1)
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 48
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 49
  tail call void @x264_reduce_fraction(ptr noundef nonnull %35, ptr noundef nonnull %36) #15
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 50
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 51
  tail call void @x264_reduce_fraction(ptr noundef nonnull %37, ptr noundef nonnull %38) #15
  %39 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 10
  store i32 -1, ptr %39, align 4, !tbaa !68
  %40 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 11
  store i32 0, ptr %40, align 8, !tbaa !69
  %41 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 27
  store i32 0, ptr %41, align 8, !tbaa !70
  %42 = load i32, ptr %38, align 8, !tbaa !71
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 52
  %45 = load i32, ptr %44, align 4, !tbaa !72
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !73
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 20
  %53 = load i32, ptr %52, align 16, !tbaa !74
  %54 = icmp eq i32 %53, 0
  %55 = select i1 %54, i32 2, i32 3
  br label %56

56:                                               ; preds = %47, %51
  %57 = phi i32 [ %55, %51 ], [ 1, %47 ]
  %58 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 28
  store i32 %57, ptr %58, align 4, !tbaa !75
  %59 = icmp eq i32 %57, 1
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = mul i32 %57, %42
  %62 = zext i32 %61 to i64
  %63 = load i32, ptr %37, align 4, !tbaa !76
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %63, i32 noundef %42, i32 noundef %63, i64 noundef %62) #15
  br label %66

64:                                               ; preds = %34
  %65 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 28
  store i32 1, ptr %65, align 4, !tbaa !75
  br label %66

66:                                               ; preds = %56, %60, %64
  %67 = phi i64 [ %62, %60 ], [ %43, %56 ], [ %43, %64 ]
  %68 = icmp ugt i64 %67, 2147483647
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef %67) #15
  br label %662

70:                                               ; preds = %66
  %71 = trunc i64 %67 to i32
  store i32 %71, ptr %38, align 8, !tbaa !71
  %72 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 23
  %73 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 24
  store ptr %72, ptr %73, align 16, !tbaa !77
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 46
  %75 = load i32, ptr %74, align 4, !tbaa !78
  tail call void @x264_sps_init(ptr noundef nonnull %72, i32 noundef %75, ptr noundef %4) #15
  %76 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 25
  %77 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 26
  store ptr %76, ptr %77, align 16, !tbaa !79
  %78 = load i32, ptr %74, align 4, !tbaa !78
  %79 = load ptr, ptr %73, align 16, !tbaa !77
  tail call void @x264_pps_init(ptr noundef nonnull %76, i32 noundef %78, ptr noundef %4, ptr noundef %79) #15
  %80 = tail call i32 @x264_validate_levels(ptr noundef %4, i32 noundef 1) #15
  %81 = load ptr, ptr %77, align 16, !tbaa !79
  %82 = getelementptr inbounds %struct.x264_pps_t, ptr %81, i64 0, i32 11
  %83 = load i32, ptr %82, align 4, !tbaa !80
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, ptr getelementptr inbounds ([76 x i8], ptr @i_chroma_qp_table, i64 0, i64 12), i64 %84
  %86 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 39
  store ptr %85, ptr %86, align 16, !tbaa !82
  %87 = tail call i32 @x264_cqm_init(ptr noundef %4) #15
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %662, label %89

89:                                               ; preds = %70
  %90 = load ptr, ptr %73, align 16, !tbaa !77
  %91 = getelementptr inbounds %struct.x264_sps_t, ptr %90, i64 0, i32 16
  %92 = load i32, ptr %91, align 4, !tbaa !83
  %93 = getelementptr inbounds %struct.x264_sps_t, ptr %90, i64 0, i32 17
  %94 = load i32, ptr %93, align 4, !tbaa !88
  %95 = mul nsw i32 %94, %92
  %96 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 55
  store i32 %95, ptr %96, align 16, !tbaa !89
  %97 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 18
  %98 = load i32, ptr %97, align 8, !tbaa !90
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %109

100:                                              ; preds = %89
  %101 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 20
  %102 = load i32, ptr %101, align 8, !tbaa !91
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %106 = load i32, ptr %105, align 4, !tbaa !73
  %107 = tail call i32 @llvm.smax.i32(i32 %106, i32 3)
  %108 = shl nsw i32 %107, 2
  br label %112

109:                                              ; preds = %100, %89
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %111 = load i32, ptr %110, align 4, !tbaa !73
  br label %112

112:                                              ; preds = %109, %104
  %113 = phi i32 [ %111, %109 ], [ %108, %104 ]
  %114 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 9
  store i32 %113, ptr %114, align 4, !tbaa !92
  %115 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 16
  %116 = load i32, ptr %115, align 8, !tbaa !93
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 10
  %120 = load i32, ptr %119, align 8, !tbaa !94
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %118, %112
  %123 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 9
  %124 = load i32, ptr %123, align 4, !tbaa !92
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 17
  %126 = load i32, ptr %125, align 4, !tbaa !95
  %127 = tail call i32 @llvm.smax.i32(i32 %124, i32 %126)
  store i32 %127, ptr %123, align 4, !tbaa !92
  br label %128

128:                                              ; preds = %122, %118
  %129 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43
  %130 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 9
  %131 = load i32, ptr %130, align 4, !tbaa !92
  %132 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 12
  %133 = load i32, ptr %132, align 4, !tbaa !96
  %134 = add i32 %131, -1
  %135 = add i32 %134, %133
  store i32 %135, ptr %130, align 4, !tbaa !92
  %136 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 4
  %137 = load i32, ptr %136, align 16, !tbaa !97
  %138 = add nsw i32 %135, %137
  store i32 %138, ptr %130, align 4, !tbaa !92
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 47
  %140 = load i32, ptr %139, align 8, !tbaa !98
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %153, label %142

142:                                              ; preds = %128
  %143 = load i32, ptr %22, align 8, !tbaa !99
  %144 = icmp eq i32 %143, 2
  br i1 %144, label %153, label %145

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 18
  %147 = load i32, ptr %146, align 8, !tbaa !100
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 10
  %151 = load i32, ptr %150, align 8, !tbaa !94
  %152 = icmp ne i32 %151, 0
  br label %153

153:                                              ; preds = %142, %145, %149, %128
  %154 = phi i1 [ false, %128 ], [ true, %145 ], [ true, %142 ], [ %152, %149 ]
  %155 = zext i1 %154 to i32
  %156 = add nsw i32 %138, %155
  store i32 %156, ptr %130, align 4, !tbaa !92
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %158 = load i32, ptr %157, align 4, !tbaa !73
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %165, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 20
  %162 = load i32, ptr %161, align 16, !tbaa !74
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %163, i32 1, i32 2
  br label %165

165:                                              ; preds = %153, %160
  %166 = phi i32 [ %164, %160 ], [ 0, %153 ]
  %167 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 10
  store i32 %166, ptr %167, align 8, !tbaa !101
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 12
  %169 = load i32, ptr %168, align 16, !tbaa !102
  %170 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 7
  store i32 %169, ptr %170, align 4, !tbaa !103
  %171 = getelementptr inbounds %struct.x264_sps_t, ptr %90, i64 0, i32 24, i32 29
  %172 = load i32, ptr %171, align 4, !tbaa !104
  %173 = tail call i32 @llvm.smin.i32(i32 %172, i32 %169)
  %174 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 8
  store i32 %173, ptr %174, align 16, !tbaa !105
  %175 = getelementptr inbounds %struct.x264_sps_t, ptr %90, i64 0, i32 24, i32 30
  %176 = load i32, ptr %175, align 4, !tbaa !106
  %177 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 6
  store i32 %176, ptr %177, align 8, !tbaa !107
  %178 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 20
  %179 = load i32, ptr %178, align 8, !tbaa !91
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %196

181:                                              ; preds = %165
  %182 = load i32, ptr %22, align 8, !tbaa !99
  %183 = add i32 %182, -3
  %184 = icmp ult i32 %183, -2
  %185 = icmp eq i32 %98, 0
  %186 = and i1 %185, %184
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 15
  %189 = load i32, ptr %188, align 4, !tbaa !108
  %190 = or i32 %189, %116
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %187
  %193 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 3
  %194 = load i32, ptr %193, align 4, !tbaa !109
  %195 = icmp eq i32 %194, 2
  br label %196

196:                                              ; preds = %187, %181, %192, %165
  %197 = phi i1 [ false, %165 ], [ true, %187 ], [ %195, %192 ], [ true, %181 ]
  %198 = zext i1 %197 to i32
  %199 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 16
  store i32 %198, ptr %199, align 16, !tbaa !110
  br i1 %180, label %204, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 10
  %202 = load i32, ptr %201, align 8, !tbaa !94
  %203 = icmp sgt i32 %202, 0
  br label %204

204:                                              ; preds = %200, %196
  %205 = phi i1 [ false, %196 ], [ %203, %200 ]
  %206 = or i1 %197, %205
  %207 = zext i1 %206 to i32
  store i32 %207, ptr %199, align 16, !tbaa !110
  %208 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 1
  %209 = load i32, ptr %208, align 4, !tbaa !111
  %210 = lshr i32 %209, 5
  %211 = and i32 %210, 1
  %212 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 17
  store i32 %211, ptr %212, align 4, !tbaa !112
  %213 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 13
  %214 = load i32, ptr %213, align 4, !tbaa !113
  %215 = sub nsw i32 0, %214
  %216 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 4
  store i32 %215, ptr %216, align 16, !tbaa !114
  %217 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 5
  store i32 0, ptr %217, align 4, !tbaa !115
  %218 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 14
  %219 = shl i32 %156, 3
  %220 = add i32 %219, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %218, i8 -1, i64 16, i1 false)
  %221 = tail call ptr @x264_malloc(i32 noundef %220) #15
  %222 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 1
  store ptr %221, ptr %222, align 8, !tbaa !116
  %223 = icmp eq ptr %221, null
  br i1 %223, label %662, label %224

224:                                              ; preds = %204
  %225 = load i32, ptr %130, align 4, !tbaa !92
  %226 = add nsw i32 %225, 3
  %227 = sext i32 %226 to i64
  %228 = shl nsw i64 %227, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %221, i8 0, i64 %228, i1 false)
  %229 = load i32, ptr %132, align 4, !tbaa !96
  %230 = shl i32 %229, 3
  %231 = add i32 %230, 160
  %232 = tail call ptr @x264_malloc(i32 noundef %231) #15
  %233 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 1, i64 1
  store ptr %232, ptr %233, align 8, !tbaa !116
  %234 = icmp eq ptr %232, null
  br i1 %234, label %662, label %235

235:                                              ; preds = %224
  %236 = load i32, ptr %132, align 4, !tbaa !96
  %237 = add nsw i32 %236, 20
  %238 = sext i32 %237 to i64
  %239 = shl nsw i64 %238, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %232, i8 0, i64 %239, i1 false)
  %240 = load i32, ptr %136, align 16, !tbaa !97
  %241 = load i32, ptr %157, align 4, !tbaa !73
  %242 = add nsw i32 %241, %240
  %243 = load i32, ptr %132, align 4, !tbaa !96
  %244 = add nsw i32 %242, %243
  %245 = shl i32 %244, 3
  %246 = add i32 %245, 24
  %247 = tail call ptr @x264_malloc(i32 noundef %246) #15
  store ptr %247, ptr %129, align 16, !tbaa !117
  %248 = icmp eq ptr %247, null
  br i1 %248, label %662, label %249

249:                                              ; preds = %235
  %250 = load i32, ptr %136, align 16, !tbaa !97
  %251 = load i32, ptr %157, align 4, !tbaa !73
  %252 = load i32, ptr %132, align 4, !tbaa !96
  %253 = add i32 %250, 3
  %254 = add i32 %253, %251
  %255 = add i32 %254, %252
  %256 = sext i32 %255 to i64
  %257 = shl nsw i64 %256, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %247, i8 0, i64 %257, i1 false)
  %258 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 3
  %259 = load i32, ptr %258, align 4, !tbaa !109
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %249
  %262 = load i32, ptr %132, align 4, !tbaa !96
  %263 = shl i32 %262, 5
  %264 = tail call ptr @x264_malloc(i32 noundef %263) #15
  %265 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 2
  store ptr %264, ptr %265, align 8, !tbaa !118
  %266 = icmp eq ptr %264, null
  br i1 %266, label %662, label %267

267:                                              ; preds = %261
  %268 = load i32, ptr %132, align 4, !tbaa !96
  %269 = shl nsw i32 %268, 2
  %270 = sext i32 %269 to i64
  %271 = shl nsw i64 %270, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %264, i8 0, i64 %271, i1 false)
  br label %272

272:                                              ; preds = %267, %249
  %273 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 46
  store i32 0, ptr %273, align 8, !tbaa !119
  %274 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 48
  store i32 0, ptr %274, align 8, !tbaa !120
  %275 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 17
  store i32 0, ptr %275, align 16, !tbaa !121
  %276 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 15
  store i32 0, ptr %276, align 8, !tbaa !122
  %277 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 18
  store i32 0, ptr %277, align 4, !tbaa !123
  %278 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 19
  store i32 0, ptr %278, align 8, !tbaa !124
  %279 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 16
  store i32 -1, ptr %279, align 4, !tbaa !125
  tail call void @x264_rdo_init() #15
  %280 = load i32, ptr %4, align 16, !tbaa !126
  %281 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 64
  tail call void @x264_predict_16x16_init(i32 noundef %280, ptr noundef nonnull %281) #15
  %282 = load i32, ptr %4, align 16, !tbaa !126
  %283 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 65
  tail call void @x264_predict_8x8c_init(i32 noundef %282, ptr noundef nonnull %283) #15
  %284 = load i32, ptr %4, align 16, !tbaa !126
  %285 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 66
  %286 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 68
  tail call void @x264_predict_8x8_init(i32 noundef %284, ptr noundef nonnull %285, ptr noundef nonnull %286) #15
  %287 = load i32, ptr %4, align 16, !tbaa !126
  %288 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 67
  tail call void @x264_predict_4x4_init(i32 noundef %287, ptr noundef nonnull %288) #15
  %289 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 24
  %290 = load i32, ptr %289, align 16, !tbaa !127
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %272
  tail call void (...) @x264_init_vlc_tables() #15
  br label %293

293:                                              ; preds = %292, %272
  %294 = load i32, ptr %4, align 16, !tbaa !126
  %295 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69
  tail call void @x264_pixel_init(i32 noundef %294, ptr noundef nonnull %295) #15
  %296 = load i32, ptr %4, align 16, !tbaa !126
  %297 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 71
  tail call void @x264_dct_init(i32 noundef %296, ptr noundef nonnull %297) #15
  %298 = load i32, ptr %4, align 16, !tbaa !126
  %299 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 72
  %300 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 26
  %301 = load i32, ptr %300, align 8, !tbaa !128
  tail call void @x264_zigzag_init(i32 noundef %298, ptr noundef nonnull %299, i32 noundef %301) #15
  %302 = load i32, ptr %4, align 16, !tbaa !126
  %303 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 70
  tail call void @x264_mc_init(i32 noundef %302, ptr noundef nonnull %303) #15
  %304 = load i32, ptr %4, align 16, !tbaa !126
  %305 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 73
  tail call void @x264_quant_init(ptr noundef %4, i32 noundef %304, ptr noundef nonnull %305) #15
  %306 = load i32, ptr %4, align 16, !tbaa !126
  %307 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 74
  tail call void @x264_deblock_init(i32 noundef %306, ptr noundef nonnull %307) #15
  tail call void @x264_dct_init_weights() #15
  %308 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 55, i32 73
  %309 = load i32, ptr %308, align 4, !tbaa !129
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %293
  %312 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 11
  %313 = load i32, ptr %312, align 4, !tbaa !130
  %314 = icmp sgt i32 %313, 1
  br label %315

315:                                              ; preds = %293, %311
  %316 = phi i1 [ false, %293 ], [ %314, %311 ]
  %317 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 5
  %318 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 2
  %319 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 10
  %320 = select i1 %316, ptr %318, ptr %319
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %317, ptr noundef nonnull align 8 dereferenceable(56) %320, i64 56, i1 false)
  %321 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 6
  %322 = select i1 %316, ptr %318, ptr %295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %321, ptr noundef nonnull align 8 dereferenceable(56) %322, i64 56, i1 false)
  %323 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 22
  %324 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 23
  %325 = select i1 %316, ptr %323, ptr %324
  %326 = load ptr, ptr %325, align 8, !tbaa !116
  %327 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 21
  store ptr %326, ptr %327, align 8, !tbaa !131
  %328 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 25
  %329 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 26
  %330 = select i1 %316, ptr %328, ptr %329
  %331 = load ptr, ptr %330, align 8, !tbaa !116
  %332 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 24
  store ptr %331, ptr %332, align 8, !tbaa !132
  %333 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 28
  %334 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 29
  %335 = select i1 %316, ptr %333, ptr %334
  %336 = load ptr, ptr %335, align 8, !tbaa !116
  %337 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 27
  store ptr %336, ptr %337, align 8, !tbaa !133
  %338 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 7
  %339 = load i32, ptr %338, align 4, !tbaa !134
  %340 = icmp eq i32 %339, 4
  %341 = and i1 %316, %340
  %342 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 7
  %343 = select i1 %341, ptr %318, ptr %295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %342, ptr noundef nonnull align 8 dereferenceable(56) %343, i64 56, i1 false)
  %344 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 8
  %345 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 18
  %346 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 16
  %347 = select i1 %341, ptr %345, ptr %346
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %344, ptr noundef nonnull align 8 dereferenceable(56) %347, i64 56, i1 false)
  %348 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 9
  %349 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 19
  %350 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69, i32 17
  %351 = select i1 %341, ptr %349, ptr %350
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %348, ptr noundef nonnull align 8 dereferenceable(56) %351, i64 56, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.2, i64 24, i1 false)
  %352 = getelementptr inbounds i8, ptr %2, i64 23
  %353 = load i32, ptr getelementptr inbounds ([0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 0, i32 1), align 4, !tbaa !135
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %399, %315
  %356 = phi ptr [ %352, %315 ], [ %400, %399 ]
  %357 = load i32, ptr %4, align 16, !tbaa !126
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %406, label %407

359:                                              ; preds = %315, %399
  %360 = phi i64 [ %401, %399 ], [ 0, %315 ]
  %361 = phi i32 [ %404, %399 ], [ %353, %315 ]
  %362 = phi ptr [ %402, %399 ], [ @x264_cpu_names, %315 ]
  %363 = phi ptr [ %400, %399 ], [ %352, %315 ]
  %364 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %362, ptr noundef nonnull dereferenceable(5) @.str.3) #16
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %370

366:                                              ; preds = %359
  %367 = load i32, ptr %4, align 16, !tbaa !126
  %368 = and i32 %367, 384
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %399

370:                                              ; preds = %366, %359
  %371 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %362, ptr noundef nonnull dereferenceable(5) @.str.4) #16
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %370
  %374 = load i32, ptr %4, align 16, !tbaa !126
  %375 = and i32 %374, 1026
  %376 = icmp eq i32 %375, 2
  br i1 %376, label %377, label %399

377:                                              ; preds = %373, %370
  %378 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %362, ptr noundef nonnull dereferenceable(7) @.str.5) #16
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %384

380:                                              ; preds = %377
  %381 = load i32, ptr %4, align 16, !tbaa !126
  %382 = and i32 %381, 16384
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %399

384:                                              ; preds = %380, %377
  %385 = load i32, ptr %4, align 16, !tbaa !126
  %386 = and i32 %385, %361
  %387 = icmp eq i32 %386, %361
  br i1 %387, label %388, label %399

388:                                              ; preds = %384
  %389 = icmp eq i64 %360, 0
  br i1 %389, label %395, label %390

390:                                              ; preds = %388
  %391 = add nsw i64 %360, -1
  %392 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %391, i32 1
  %393 = load i32, ptr %392, align 4, !tbaa !135
  %394 = icmp eq i32 %361, %393
  br i1 %394, label %399, label %395

395:                                              ; preds = %390, %388
  %396 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %363, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %362) #15
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8, ptr %363, i64 %397
  br label %399

399:                                              ; preds = %384, %390, %395, %380, %373, %366
  %400 = phi ptr [ %398, %395 ], [ %363, %390 ], [ %363, %384 ], [ %363, %380 ], [ %363, %373 ], [ %363, %366 ]
  %401 = add nuw i64 %360, 1
  %402 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %401
  %403 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %401, i32 1
  %404 = load i32, ptr %403, align 4, !tbaa !135
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %355, label %359, !llvm.loop !137

406:                                              ; preds = %355
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %356, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  br label %407

407:                                              ; preds = %406, %355
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #15
  %408 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 2
  %409 = load i32, ptr %408, align 8, !tbaa !140
  %410 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 3
  %411 = load i32, ptr %410, align 4, !tbaa !141
  %412 = icmp sgt i32 %409, %411
  br i1 %412, label %421, label %417

413:                                              ; preds = %417
  %414 = add nsw i32 %418, 1
  %415 = load i32, ptr %410, align 4, !tbaa !141
  %416 = icmp slt i32 %418, %415
  br i1 %416, label %417, label %421, !llvm.loop !142

417:                                              ; preds = %407, %413
  %418 = phi i32 [ %414, %413 ], [ %409, %407 ]
  %419 = call i32 @x264_analyse_init_costs(ptr noundef %4, i32 noundef %418) #15
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %413, label %662

421:                                              ; preds = %413, %407
  %422 = call i32 @x264_analyse_init_costs(ptr noundef %4, i32 noundef 12) #15
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %424, label %662

424:                                              ; preds = %421
  %425 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 37, i64 1
  %426 = load ptr, ptr %425, align 8, !tbaa !116
  %427 = getelementptr inbounds i16, ptr %426, i64 2013
  %428 = load i16, ptr %427, align 2, !tbaa !143
  %429 = icmp eq i16 %428, 24
  br i1 %429, label %431, label %430

430:                                              ; preds = %424
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.9) #15
  br label %662

431:                                              ; preds = %424
  store volatile i32 392, ptr %3, align 4, !tbaa !145
  %432 = load volatile i32, ptr %3, align 4, !tbaa !145
  %433 = and i32 %432, -256
  %434 = icmp eq i32 %433, 256
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.10) #15
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.11) #15
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.12) #15
  br label %662

436:                                              ; preds = %431
  %437 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 7
  store i32 0, ptr %437, align 16, !tbaa !146
  %438 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 5
  %439 = load i32, ptr %438, align 4, !tbaa !147
  %440 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 6
  %441 = load i32, ptr %440, align 8, !tbaa !148
  %442 = shl i32 %439, 2
  %443 = mul i32 %442, %441
  %444 = sitofp i32 %443 to double
  %445 = load i32, ptr %22, align 8, !tbaa !99
  %446 = icmp eq i32 %445, 2
  br i1 %446, label %447, label %451

447:                                              ; preds = %436
  %448 = load i32, ptr %408, align 8, !tbaa !140
  %449 = sitofp i32 %448 to double
  %450 = call double @pow(double noundef 0x3FEE666666666666, double noundef %449) #15
  br label %462

451:                                              ; preds = %436
  %452 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 1
  %453 = load i32, ptr %452, align 4, !tbaa !149
  %454 = sitofp i32 %453 to double
  %455 = call double @pow(double noundef 0x3FEE666666666666, double noundef %454) #15
  %456 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 12
  %457 = load float, ptr %456, align 8, !tbaa !150
  %458 = fcmp olt float %457, 1.000000e+00
  %459 = select i1 %458, float 1.000000e+00, float %457
  %460 = fpext float %459 to double
  %461 = fmul double %455, %460
  br label %462

462:                                              ; preds = %451, %447
  %463 = phi double [ %450, %447 ], [ %461, %451 ]
  %464 = fmul double %463, %444
  %465 = fcmp olt double %464, 1.000000e+06
  br i1 %465, label %493, label %466

466:                                              ; preds = %462
  %467 = load i32, ptr %438, align 4, !tbaa !147
  %468 = load i32, ptr %440, align 8, !tbaa !148
  %469 = shl i32 %467, 2
  %470 = mul i32 %469, %468
  %471 = sitofp i32 %470 to double
  %472 = load i32, ptr %22, align 8, !tbaa !99
  %473 = icmp eq i32 %472, 2
  br i1 %473, label %474, label %478

474:                                              ; preds = %466
  %475 = load i32, ptr %408, align 8, !tbaa !140
  %476 = sitofp i32 %475 to double
  %477 = call double @pow(double noundef 0x3FEE666666666666, double noundef %476) #15
  br label %489

478:                                              ; preds = %466
  %479 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 1
  %480 = load i32, ptr %479, align 4, !tbaa !149
  %481 = sitofp i32 %480 to double
  %482 = call double @pow(double noundef 0x3FEE666666666666, double noundef %481) #15
  %483 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 12
  %484 = load float, ptr %483, align 8, !tbaa !150
  %485 = fcmp olt float %484, 1.000000e+00
  %486 = select i1 %485, float 1.000000e+00, float %484
  %487 = fpext float %486 to double
  %488 = fmul double %482, %487
  br label %489

489:                                              ; preds = %478, %474
  %490 = phi double [ %477, %474 ], [ %488, %478 ]
  %491 = fmul double %490, %471
  %492 = fptosi double %491 to i32
  br label %493

493:                                              ; preds = %462, %489
  %494 = phi i32 [ %492, %489 ], [ 1000000, %462 ]
  %495 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 7, i32 3
  store i32 %494, ptr %495, align 16, !tbaa !151
  %496 = mul nsw i32 %494, 3
  %497 = sdiv i32 %496, 2
  %498 = add nsw i32 %497, 4
  %499 = call ptr @x264_malloc(i32 noundef %498) #15
  %500 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 8
  store ptr %499, ptr %500, align 8, !tbaa !152
  %501 = icmp eq ptr %499, null
  br i1 %501, label %662, label %502

502:                                              ; preds = %493
  %503 = load i32, ptr %495, align 16, !tbaa !151
  %504 = mul nsw i32 %503, 3
  %505 = sdiv i32 %504, 2
  %506 = add nsw i32 %505, 4
  %507 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 9
  store i32 %506, ptr %507, align 16, !tbaa !153
  %508 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1
  store ptr %4, ptr %508, align 16, !tbaa !116
  %509 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 1
  %510 = load i32, ptr %509, align 4, !tbaa !154
  %511 = load i32, ptr %136, align 16, !tbaa !97
  %512 = icmp ne i32 %511, 0
  %513 = zext i1 %512 to i32
  %514 = add nsw i32 %510, %513
  %515 = icmp sgt i32 %514, 1
  br i1 %515, label %525, label %530

516:                                              ; preds = %525
  %517 = add nuw nsw i64 %526, 1
  %518 = load i32, ptr %509, align 4, !tbaa !154
  %519 = load i32, ptr %136, align 16, !tbaa !97
  %520 = icmp ne i32 %519, 0
  %521 = zext i1 %520 to i32
  %522 = add nsw i32 %518, %521
  %523 = sext i32 %522 to i64
  %524 = icmp slt i64 %517, %523
  br i1 %524, label %525, label %530, !llvm.loop !155

525:                                              ; preds = %502, %516
  %526 = phi i64 [ %517, %516 ], [ 1, %502 ]
  %527 = call ptr @x264_malloc(i32 noundef 33344) #15
  %528 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %526
  store ptr %527, ptr %528, align 8, !tbaa !116
  %529 = icmp eq ptr %527, null
  br i1 %529, label %530, label %516

530:                                              ; preds = %516, %525, %502
  %531 = phi i32 [ 31, %502 ], [ 31, %516 ], [ 6, %525 ]
  %532 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 1
  switch i32 %531, label %663 [
    i32 31, label %533
    i32 6, label %662
  ]

533:                                              ; preds = %530
  %534 = call i32 @x264_lookahead_init(ptr noundef %4, i32 noundef %131) #15
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %662

536:                                              ; preds = %533
  %537 = load i32, ptr %532, align 4, !tbaa !154
  %538 = icmp sgt i32 %537, 0
  br i1 %538, label %539, label %603

539:                                              ; preds = %536
  %540 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 58
  %541 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 2
  br label %547

542:                                              ; preds = %600
  %543 = add nuw nsw i64 %548, 1
  %544 = load i32, ptr %532, align 4, !tbaa !154
  %545 = sext i32 %544 to i64
  %546 = icmp slt i64 %543, %545
  br i1 %546, label %547, label %603, !llvm.loop !156

547:                                              ; preds = %539, %542
  %548 = phi i64 [ 0, %539 ], [ %543, %542 ]
  %549 = load i32, ptr %540, align 4, !tbaa !157
  %550 = add nsw i32 %549, 3
  %551 = load i32, ptr %541, align 8, !tbaa !158
  %552 = icmp eq i32 %551, 0
  %553 = icmp eq i64 %548, 0
  %554 = or i1 %553, %552
  br i1 %553, label %558, label %555

555:                                              ; preds = %547
  %556 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %548
  %557 = load ptr, ptr %556, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %557, ptr noundef nonnull align 16 dereferenceable(33344) %4, i64 33344, i1 false), !tbaa.struct !159
  br label %558

558:                                              ; preds = %555, %547
  br i1 %554, label %559, label %568

559:                                              ; preds = %558
  %560 = call ptr @x264_frame_pop_unused(ptr noundef %4, i32 noundef 1) #15
  %561 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %548
  %562 = load ptr, ptr %561, align 8, !tbaa !116
  %563 = getelementptr inbounds %struct.x264_t, ptr %562, i64 0, i32 45
  store ptr %560, ptr %563, align 16, !tbaa !164
  %564 = load ptr, ptr %561, align 8, !tbaa !116
  %565 = getelementptr inbounds %struct.x264_t, ptr %564, i64 0, i32 45
  %566 = load ptr, ptr %565, align 16, !tbaa !164
  %567 = icmp eq ptr %566, null
  br i1 %567, label %600, label %575

568:                                              ; preds = %558
  %569 = load ptr, ptr %508, align 16, !tbaa !116
  %570 = getelementptr inbounds %struct.x264_t, ptr %569, i64 0, i32 45
  %571 = load ptr, ptr %570, align 16, !tbaa !164
  %572 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %548
  %573 = load ptr, ptr %572, align 8, !tbaa !116
  %574 = getelementptr inbounds %struct.x264_t, ptr %573, i64 0, i32 45
  store ptr %571, ptr %574, align 16, !tbaa !164
  br label %575

575:                                              ; preds = %568, %559
  %576 = load i32, ptr %495, align 16, !tbaa !151
  %577 = call ptr @x264_malloc(i32 noundef %576) #15
  %578 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %548
  %579 = load ptr, ptr %578, align 8, !tbaa !116
  %580 = getelementptr inbounds %struct.x264_t, ptr %579, i64 0, i32 7, i32 4
  store ptr %577, ptr %580, align 8, !tbaa !165
  %581 = load ptr, ptr %578, align 8, !tbaa !116
  %582 = getelementptr inbounds %struct.x264_t, ptr %581, i64 0, i32 7, i32 4
  %583 = load ptr, ptr %582, align 8, !tbaa !165
  %584 = icmp eq ptr %583, null
  br i1 %584, label %600, label %585

585:                                              ; preds = %575
  %586 = mul i32 %550, 24
  %587 = call ptr @x264_malloc(i32 noundef %586) #15
  %588 = load ptr, ptr %578, align 8, !tbaa !116
  %589 = getelementptr inbounds %struct.x264_t, ptr %588, i64 0, i32 7, i32 2
  store ptr %587, ptr %589, align 8, !tbaa !166
  %590 = load ptr, ptr %578, align 8, !tbaa !116
  %591 = getelementptr inbounds %struct.x264_t, ptr %590, i64 0, i32 7, i32 2
  %592 = load ptr, ptr %591, align 8, !tbaa !166
  %593 = icmp eq ptr %592, null
  br i1 %593, label %600, label %594

594:                                              ; preds = %585
  %595 = getelementptr inbounds %struct.x264_t, ptr %590, i64 0, i32 7, i32 1
  store i32 %550, ptr %595, align 4, !tbaa !167
  br i1 %554, label %596, label %599

596:                                              ; preds = %594
  %597 = call i32 @x264_macroblock_cache_allocate(ptr noundef %590) #15
  %598 = icmp slt i32 %597, 0
  br i1 %598, label %600, label %599

599:                                              ; preds = %596, %594
  br label %600

600:                                              ; preds = %596, %585, %575, %559, %599
  %601 = phi i1 [ true, %599 ], [ false, %559 ], [ false, %575 ], [ false, %585 ], [ false, %596 ]
  %602 = phi i32 [ 0, %599 ], [ 6, %559 ], [ 6, %575 ], [ 6, %585 ], [ 6, %596 ]
  br i1 %601, label %542, label %603

603:                                              ; preds = %600, %542, %536
  %604 = phi i32 [ 36, %536 ], [ %602, %600 ], [ 36, %542 ]
  switch i32 %604, label %663 [
    i32 36, label %605
    i32 6, label %662
  ]

605:                                              ; preds = %603
  %606 = load i32, ptr %532, align 4, !tbaa !154
  %607 = icmp sgt i32 %606, 0
  br i1 %607, label %613, label %619

608:                                              ; preds = %613
  %609 = add nuw nsw i64 %614, 1
  %610 = load i32, ptr %532, align 4, !tbaa !154
  %611 = sext i32 %610 to i64
  %612 = icmp slt i64 %609, %611
  br i1 %612, label %613, label %619, !llvm.loop !168

613:                                              ; preds = %605, %608
  %614 = phi i64 [ %609, %608 ], [ 0, %605 ]
  %615 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %614
  %616 = load ptr, ptr %615, align 8, !tbaa !116
  %617 = call i32 @x264_macroblock_thread_allocate(ptr noundef %616, i32 noundef 0) #15
  %618 = icmp slt i32 %617, 0
  br i1 %618, label %619, label %608

619:                                              ; preds = %608, %613, %605
  %620 = phi i32 [ 43, %605 ], [ 43, %608 ], [ 6, %613 ]
  switch i32 %620, label %663 [
    i32 43, label %621
    i32 6, label %662
  ]

621:                                              ; preds = %619
  %622 = call i32 @x264_ratecontrol_new(ptr noundef %4) #15
  %623 = icmp slt i32 %622, 0
  br i1 %623, label %662, label %624

624:                                              ; preds = %621
  %625 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 10
  %626 = load i32, ptr %625, align 8, !tbaa !169
  %627 = icmp eq i32 %626, 0
  br i1 %627, label %635, label %628

628:                                              ; preds = %624
  %629 = load ptr, ptr %73, align 16, !tbaa !77
  %630 = getelementptr inbounds %struct.x264_sps_t, ptr %629, i64 0, i32 24, i32 21, i32 5
  %631 = load i32, ptr %630, align 4, !tbaa !170
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %631) #15
  %632 = load ptr, ptr %73, align 16, !tbaa !77
  %633 = getelementptr inbounds %struct.x264_sps_t, ptr %632, i64 0, i32 24, i32 21, i32 6
  %634 = load i32, ptr %633, align 4, !tbaa !171
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %634) #15
  br label %635

635:                                              ; preds = %628, %624
  %636 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 40
  %637 = load ptr, ptr %636, align 8, !tbaa !172
  %638 = icmp eq ptr %637, null
  br i1 %638, label %648, label %639

639:                                              ; preds = %635
  %640 = call noalias ptr @fopen(ptr noundef nonnull %637, ptr noundef nonnull @.str.15)
  %641 = icmp eq ptr %640, null
  br i1 %641, label %642, label %644

642:                                              ; preds = %639
  %643 = load ptr, ptr %636, align 8, !tbaa !172
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %643) #15
  br label %646

644:                                              ; preds = %639
  %645 = call i32 @fclose(ptr noundef nonnull %640)
  br label %646

646:                                              ; preds = %642, %644
  %647 = phi i32 [ 0, %644 ], [ 6, %642 ]
  switch i32 %647, label %663 [
    i32 0, label %648
    i32 6, label %662
  ]

648:                                              ; preds = %646, %635
  %649 = load ptr, ptr %73, align 16, !tbaa !77
  %650 = getelementptr inbounds %struct.x264_sps_t, ptr %649, i64 0, i32 1
  %651 = load i32, ptr %650, align 4, !tbaa !173
  switch i32 %651, label %652 [
    i32 66, label %656
    i32 77, label %655
  ]

652:                                              ; preds = %648
  %653 = icmp eq i32 %651, 100
  %654 = select i1 %653, ptr @.str.21, ptr @.str.22
  br label %656

655:                                              ; preds = %648
  br label %656

656:                                              ; preds = %648, %655, %652
  %657 = phi ptr [ @.str.19, %648 ], [ %654, %652 ], [ @.str.20, %655 ]
  %658 = getelementptr inbounds %struct.x264_sps_t, ptr %649, i64 0, i32 2
  %659 = load i32, ptr %658, align 4, !tbaa !174
  %660 = sdiv i32 %659, 10
  %661 = srem i32 %659, 10
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %4, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull %657, i32 noundef %660, i32 noundef %661) #15
  br label %663

662:                                              ; preds = %417, %621, %533, %493, %421, %261, %235, %224, %204, %70, %18, %11, %1, %646, %619, %603, %530, %435, %430, %69
  call void @x264_free(ptr noundef %4) #15
  br label %663

663:                                              ; preds = %662, %656, %646, %619, %603, %530
  %664 = phi ptr [ null, %662 ], [ undef, %530 ], [ undef, %603 ], [ undef, %619 ], [ undef, %646 ], [ %4, %656 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #15
  ret ptr %664
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef i32 @x264_validate_parameters(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !147
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 8, !tbaa !148
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !148
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.50, i32 noundef %3, i32 noundef %11) #15
  br label %852

12:                                               ; preds = %5
  %13 = or i32 %7, %3
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.51, i32 noundef %3, i32 noundef %7) #15
  br label %852

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 4, !tbaa !175
  %20 = trunc i32 %19 to i8
  switch i8 %20, label %21 [
    i8 4, label %22
    i8 1, label %22
  ]

21:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.52) #15
  br label %852

22:                                               ; preds = %17, %17
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !154
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %22
  %27 = tail call i32 @x264_cpu_num_processors() #15
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %29 = load i32, ptr %28, align 8, !tbaa !158
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 3, i32 2
  %32 = mul nsw i32 %31, %27
  %33 = sdiv i32 %32, 2
  store i32 %33, ptr %23, align 4, !tbaa !154
  br label %34

34:                                               ; preds = %26, %22
  %35 = load i32, ptr %23, align 4, !tbaa !154
  %36 = tail call i32 @llvm.smin.i32(i32 %35, i32 128)
  %37 = tail call i32 @llvm.smax.i32(i32 %36, i32 1)
  store i32 %37, ptr %23, align 4, !tbaa !154
  %38 = icmp sgt i32 %35, 1
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.53) #15
  store i32 1, ptr %23, align 4, !tbaa !154
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !158
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr %6, align 8, !tbaa !148
  %45 = icmp sgt i32 %44, 112
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = add nsw i32 %44, 15
  %48 = sdiv i32 %47, 64
  br label %49

49:                                               ; preds = %43, %46
  %50 = phi i32 [ %48, %46 ], [ 1, %43 ]
  store i32 %50, ptr %23, align 4, !tbaa !154
  br label %53

51:                                               ; preds = %34
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %52, align 8, !tbaa !158
  br label %53

53:                                               ; preds = %39, %49, %51
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %55 = load i32, ptr %54, align 8, !tbaa !158
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, ptr %23, align 4, !tbaa !154
  br label %59

59:                                               ; preds = %53, %57
  %60 = phi i32 [ %58, %57 ], [ 1, %53 ]
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  store i32 %60, ptr %61, align 4, !tbaa !96
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %63 = load i32, ptr %62, align 8, !tbaa !128
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %75, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %67 = load i32, ptr %66, align 4, !tbaa !134
  %68 = icmp sgt i32 %67, 2
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.54) #15
  store i32 2, ptr %66, align 4, !tbaa !134
  br label %70

70:                                               ; preds = %69, %65
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !109
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.55) #15
  store i32 0, ptr %71, align 4, !tbaa !109
  br label %75

75:                                               ; preds = %70, %74, %59
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %78 = load i32, ptr %77, align 16, !tbaa !176
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %83 = load i32, ptr %82, align 8, !tbaa !177
  %84 = icmp eq i32 %83, 3
  %85 = zext i1 %84 to i32
  %86 = add nuw nsw i32 %85, %80
  %87 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %88 = load i32, ptr %87, align 4, !tbaa !113
  %89 = icmp eq i32 %88, 12
  %90 = zext i1 %89 to i32
  %91 = add nuw nsw i32 %86, %90
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %93 = load i32, ptr %92, align 8, !tbaa !140
  %94 = icmp eq i32 %93, 2
  %95 = zext i1 %94 to i32
  %96 = add nuw nsw i32 %91, %95
  %97 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %98 = load i32, ptr %97, align 4, !tbaa !141
  %99 = icmp eq i32 %98, 31
  %100 = zext i1 %99 to i32
  %101 = add nuw nsw i32 %96, %100
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %103 = load float, ptr %102, align 8, !tbaa !178
  %104 = fcmp oeq float %103, 5.000000e-01
  %105 = zext i1 %104 to i32
  %106 = add nuw nsw i32 %101, %105
  %107 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %108 = load float, ptr %107, align 8, !tbaa !150
  %109 = fpext float %108 to double
  %110 = fadd double %109, -1.250000e+00
  %111 = tail call double @llvm.fabs.f64(double %110)
  %112 = fcmp olt double %111, 1.000000e-02
  %113 = zext i1 %112 to i32
  %114 = add nuw nsw i32 %106, %113
  %115 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %116 = load float, ptr %115, align 4, !tbaa !179
  %117 = fpext float %116 to double
  %118 = fadd double %117, -1.250000e+00
  %119 = tail call double @llvm.fabs.f64(double %118)
  %120 = fcmp olt double %119, 1.000000e-02
  %121 = zext i1 %120 to i32
  %122 = add nuw nsw i32 %114, %121
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %124 = load i32, ptr %123, align 4, !tbaa !111
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %75
  %127 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %128 = load i32, ptr %127, align 4, !tbaa !130
  %129 = icmp eq i32 %128, 8
  br label %130

130:                                              ; preds = %126, %75
  %131 = phi i1 [ false, %75 ], [ %129, %126 ]
  %132 = zext i1 %131 to i32
  %133 = add nuw nsw i32 %122, %132
  %134 = icmp slt i32 %133, 5
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.56) #15
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.57) #15
  br label %852

136:                                              ; preds = %130
  %137 = load i32, ptr %81, align 8, !tbaa !99
  %138 = icmp ugt i32 %137, 2
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.58) #15
  br label %852

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %142 = load float, ptr %141, align 8, !tbaa !180
  %143 = fcmp olt float %142, 0.000000e+00
  %144 = fcmp ogt float %142, 5.100000e+01
  %145 = select i1 %144, float 5.100000e+01, float %142
  %146 = select i1 %143, float 0.000000e+00, float %145
  store float %146, ptr %141, align 8, !tbaa !180
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %148 = load i32, ptr %147, align 4, !tbaa !149
  %149 = tail call i32 @llvm.smin.i32(i32 %148, i32 51)
  %150 = tail call i32 @llvm.smax.i32(i32 %149, i32 0)
  store i32 %150, ptr %147, align 4, !tbaa !149
  switch i32 %137, label %154 [
    i32 1, label %151
    i32 2, label %174
  ]

151:                                              ; preds = %140
  %152 = fptosi float %146 to i32
  store i32 %152, ptr %147, align 4, !tbaa !149
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  store i32 0, ptr %153, align 4, !tbaa !181
  br label %154

154:                                              ; preds = %151, %140
  %155 = load i32, ptr %147, align 4, !tbaa !149
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %174

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  store i32 1, ptr %158, align 4, !tbaa !129
  %159 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %159, align 16, !tbaa !182
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29
  store ptr null, ptr %160, align 8, !tbaa !45
  store i32 0, ptr %81, align 8, !tbaa !99
  store float 1.000000e+00, ptr %107, align 8, !tbaa !150
  store float 1.000000e+00, ptr %115, align 4, !tbaa !179
  %161 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 0, ptr %161, align 4, !tbaa !183
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 0, ptr %162, align 16, !tbaa !184
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  store i32 0, ptr %163, align 8, !tbaa !185
  %164 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %164, align 8, !tbaa !186
  %165 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 0, ptr %165, align 4, !tbaa !187
  %166 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  store i32 0, ptr %166, align 4, !tbaa !188
  %167 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  store i32 0, ptr %167, align 16, !tbaa !189
  %168 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 0, ptr %168, align 4, !tbaa !73
  %169 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %170 = load i32, ptr %169, align 16, !tbaa !127
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %157
  %173 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %173, align 8, !tbaa !190
  br label %174

174:                                              ; preds = %140, %157, %172, %154
  %175 = load i32, ptr %81, align 8, !tbaa !99
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %204

177:                                              ; preds = %174
  %178 = load i32, ptr %147, align 4, !tbaa !149
  %179 = sitofp i32 %178 to float
  %180 = load float, ptr %107, align 8, !tbaa !150
  %181 = tail call float @log2f(float noundef %180) #15
  %182 = tail call float @llvm.fmuladd.f32(float %181, float -6.000000e+00, float %179)
  %183 = load float, ptr %115, align 4, !tbaa !179
  %184 = tail call float @log2f(float noundef %183) #15
  %185 = tail call float @llvm.fmuladd.f32(float %184, float 6.000000e+00, float %179)
  %186 = fcmp olt float %182, %185
  %187 = select i1 %186, float %182, float %185
  %188 = fcmp ogt float %187, %179
  %189 = select i1 %188, float %179, float %187
  %190 = fptosi float %189 to i32
  %191 = tail call i32 @llvm.smin.i32(i32 %190, i32 51)
  %192 = tail call i32 @llvm.smax.i32(i32 %191, i32 0)
  store i32 %192, ptr %92, align 8, !tbaa !140
  %193 = fcmp ogt float %182, %185
  %194 = select i1 %193, float %182, float %185
  %195 = fcmp olt float %194, %179
  %196 = select i1 %195, float %179, float %194
  %197 = fpext float %196 to double
  %198 = fadd double %197, 0x3FEFF7CED916872B
  %199 = fptosi double %198 to i32
  %200 = tail call i32 @llvm.smin.i32(i32 %199, i32 51)
  %201 = tail call i32 @llvm.smax.i32(i32 %200, i32 0)
  store i32 %201, ptr %97, align 4, !tbaa !141
  %202 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 0, ptr %202, align 8, !tbaa !191
  %203 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %203, align 8, !tbaa !93
  br label %204

204:                                              ; preds = %177, %174
  %205 = load i32, ptr %97, align 4, !tbaa !141
  %206 = tail call i32 @llvm.smin.i32(i32 %205, i32 51)
  %207 = tail call i32 @llvm.smax.i32(i32 %206, i32 0)
  store i32 %207, ptr %97, align 4, !tbaa !141
  %208 = load i32, ptr %92, align 8, !tbaa !140
  %209 = icmp slt i32 %208, 0
  %210 = tail call i32 @llvm.smin.i32(i32 %208, i32 %207)
  %211 = select i1 %209, i32 0, i32 %210
  store i32 %211, ptr %92, align 8, !tbaa !140
  %212 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %213 = load i32, ptr %212, align 8, !tbaa !94
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %238, label %215

215:                                              ; preds = %204
  %216 = load i32, ptr %81, align 8, !tbaa !99
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.59) #15
  %219 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  store i32 0, ptr %219, align 4, !tbaa !192
  store i32 0, ptr %212, align 8, !tbaa !94
  br label %243

220:                                              ; preds = %215
  %221 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %222 = load i32, ptr %221, align 4, !tbaa !192
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = icmp eq i32 %216, 2
  br i1 %225, label %226, label %229

226:                                              ; preds = %224
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.60) #15
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %228 = load i32, ptr %227, align 4, !tbaa !181
  store i32 %228, ptr %221, align 4, !tbaa !192
  br label %243

229:                                              ; preds = %224
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.61) #15
  store i32 0, ptr %212, align 8, !tbaa !94
  br label %243

230:                                              ; preds = %220
  %231 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %232 = load i32, ptr %231, align 4, !tbaa !181
  %233 = icmp slt i32 %222, %232
  %234 = icmp eq i32 %216, 2
  %235 = and i1 %234, %233
  br i1 %235, label %236, label %243

236:                                              ; preds = %230
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.62) #15
  %237 = load i32, ptr %231, align 4, !tbaa !181
  store i32 %237, ptr %221, align 4, !tbaa !192
  br label %243

238:                                              ; preds = %204
  %239 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %240 = load i32, ptr %239, align 4, !tbaa !192
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.63) #15
  store i32 0, ptr %239, align 4, !tbaa !192
  br label %243

243:                                              ; preds = %238, %242, %218, %230, %236, %226, %229
  %244 = load i32, ptr %62, align 8, !tbaa !128
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %251, label %246

246:                                              ; preds = %243
  %247 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %248 = load i32, ptr %247, align 4, !tbaa !193
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %246
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.64) #15
  store i32 0, ptr %247, align 4, !tbaa !193
  br label %251

251:                                              ; preds = %250, %246, %243
  %252 = load i32, ptr %62, align 8, !tbaa !128
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %259, label %254

254:                                              ; preds = %251
  %255 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %256 = load i32, ptr %255, align 16, !tbaa !194
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %259, label %258

258:                                              ; preds = %254
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.65) #15
  store i32 0, ptr %255, align 16, !tbaa !194
  br label %259

259:                                              ; preds = %258, %254, %251
  %260 = load i32, ptr %6, align 8, !tbaa !148
  %261 = load i32, ptr %62, align 8, !tbaa !128
  %262 = shl i32 16, %261
  %263 = add i32 %260, -1
  %264 = add i32 %263, %262
  %265 = sdiv i32 %264, %262
  %266 = load i32, ptr %54, align 8, !tbaa !158
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %259
  %269 = load i32, ptr %23, align 4, !tbaa !154
  %270 = icmp slt i32 %269, 0
  %271 = tail call i32 @llvm.smin.i32(i32 %269, i32 %265)
  %272 = select i1 %270, i32 0, i32 %271
  %273 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  store i32 %272, ptr %273, align 4, !tbaa !157
  br label %290

274:                                              ; preds = %259
  %275 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  %276 = load i32, ptr %275, align 4, !tbaa !157
  %277 = icmp slt i32 %276, 0
  %278 = tail call i32 @llvm.smin.i32(i32 %276, i32 %265)
  %279 = select i1 %277, i32 0, i32 %278
  store i32 %279, ptr %275, align 4, !tbaa !157
  %280 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %281 = load i32, ptr %280, align 4, !tbaa !193
  %282 = tail call i32 @llvm.smax.i32(i32 %281, i32 0)
  store i32 %282, ptr %280, align 4, !tbaa !193
  %283 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %284 = load i32, ptr %283, align 16, !tbaa !194
  %285 = tail call i32 @llvm.smax.i32(i32 %284, i32 0)
  store i32 %285, ptr %283, align 16, !tbaa !194
  %286 = icmp slt i32 %284, 1
  %287 = icmp slt i32 %281, 1
  %288 = select i1 %286, i1 %287, i1 false
  br i1 %288, label %290, label %289

289:                                              ; preds = %274
  store i32 0, ptr %275, align 4, !tbaa !157
  br label %290

290:                                              ; preds = %274, %289, %268
  %291 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %292 = load i32, ptr %291, align 16, !tbaa !102
  %293 = tail call i32 @llvm.smin.i32(i32 %292, i32 16)
  %294 = tail call i32 @llvm.smax.i32(i32 %293, i32 1)
  store i32 %294, ptr %291, align 16, !tbaa !102
  %295 = load i32, ptr %87, align 4, !tbaa !113
  %296 = icmp slt i32 %295, 1
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  store i32 1, ptr %87, align 4, !tbaa !113
  br label %298

298:                                              ; preds = %297, %290
  %299 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  %300 = load i32, ptr %299, align 4, !tbaa !108
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %298
  store i32 0, ptr %299, align 4, !tbaa !108
  br label %303

303:                                              ; preds = %302, %298
  %304 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %305 = load i32, ptr %304, align 4, !tbaa !130
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %303
  %308 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %309 = load i32, ptr %308, align 4, !tbaa !195
  %310 = icmp sgt i32 %309, 1
  br i1 %310, label %311, label %312

311:                                              ; preds = %307
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.66) #15
  store i32 1, ptr %308, align 4, !tbaa !195
  br label %312

312:                                              ; preds = %311, %307, %303
  %313 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %314 = load i32, ptr %313, align 4, !tbaa !73
  %315 = tail call i32 @llvm.smin.i32(i32 %314, i32 16)
  %316 = tail call i32 @llvm.smax.i32(i32 %315, i32 0)
  store i32 %316, ptr %313, align 4, !tbaa !73
  %317 = load i32, ptr %87, align 4, !tbaa !113
  %318 = icmp eq i32 %317, 1
  br i1 %318, label %319, label %321

319:                                              ; preds = %312
  store i32 0, ptr %313, align 4, !tbaa !73
  %320 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  store i32 0, ptr %320, align 16, !tbaa !196
  br label %321

321:                                              ; preds = %319, %312
  %322 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  %323 = load i32, ptr %322, align 4, !tbaa !197
  %324 = tail call i32 @llvm.smin.i32(i32 %323, i32 100)
  %325 = tail call i32 @llvm.smax.i32(i32 %324, i32 -90)
  store i32 %325, ptr %322, align 4, !tbaa !197
  %326 = load i32, ptr %313, align 4, !tbaa !73
  %327 = icmp slt i32 %326, 2
  br i1 %327, label %328, label %330

328:                                              ; preds = %321
  %329 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  store i32 0, ptr %329, align 16, !tbaa !74
  br label %330

330:                                              ; preds = %328, %321
  %331 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %332 = load i32, ptr %331, align 16, !tbaa !74
  %333 = tail call i32 @llvm.smin.i32(i32 %332, i32 2)
  %334 = tail call i32 @llvm.smax.i32(i32 %333, i32 0)
  store i32 %334, ptr %331, align 16, !tbaa !74
  %335 = icmp eq i32 %326, 0
  br i1 %335, label %336, label %340

336:                                              ; preds = %330
  %337 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 0, ptr %337, align 8, !tbaa !90
  %338 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 0, ptr %338, align 4, !tbaa !195
  %339 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  store i32 0, ptr %339, align 16, !tbaa !198
  br label %340

340:                                              ; preds = %336, %330
  %341 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %342 = load i32, ptr %341, align 16, !tbaa !196
  %343 = icmp ne i32 %342, 0
  %344 = icmp sgt i32 %332, 1
  %345 = select i1 %343, i1 %344, i1 false
  br i1 %345, label %346, label %347

346:                                              ; preds = %340
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.67) #15
  store i32 1, ptr %331, align 16, !tbaa !74
  br label %347

347:                                              ; preds = %346, %340
  %348 = load i32, ptr %341, align 16, !tbaa !196
  %349 = icmp eq i32 %348, 0
  br i1 %349, label %354, label %350

350:                                              ; preds = %347
  %351 = load i32, ptr %291, align 16, !tbaa !102
  %352 = icmp sgt i32 %351, 1
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.68) #15
  store i32 1, ptr %291, align 16, !tbaa !102
  br label %354

354:                                              ; preds = %353, %350, %347
  %355 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  %356 = load i32, ptr %355, align 8, !tbaa !199
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %354
  %359 = load i32, ptr %87, align 4, !tbaa !113
  %360 = sdiv i32 %359, 10
  store i32 %360, ptr %355, align 8, !tbaa !199
  br label %361

361:                                              ; preds = %358, %354
  %362 = load i32, ptr %355, align 8, !tbaa !199
  %363 = load i32, ptr %87, align 4, !tbaa !113
  %364 = sdiv i32 %363, 2
  %365 = add nsw i32 %364, 1
  %366 = icmp slt i32 %362, 1
  %367 = tail call i32 @llvm.smin.i32(i32 %362, i32 %365)
  %368 = select i1 %366, i32 1, i32 %367
  store i32 %368, ptr %355, align 8, !tbaa !199
  %369 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %370 = load i32, ptr %369, align 4, !tbaa !95
  %371 = tail call i32 @llvm.smin.i32(i32 %370, i32 250)
  %372 = tail call i32 @llvm.smax.i32(i32 %371, i32 0)
  store i32 %372, ptr %369, align 4, !tbaa !95
  %373 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %374 = load i32, ptr %373, align 4, !tbaa !192
  %375 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %376 = load i32, ptr %375, align 4, !tbaa !181
  %377 = tail call i32 @llvm.smax.i32(i32 %374, i32 %376)
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %384, label %379

379:                                              ; preds = %361
  %380 = load i32, ptr %212, align 8, !tbaa !94
  %381 = sitofp i32 %380 to float
  %382 = sitofp i32 %377 to float
  %383 = fdiv float %381, %382
  br label %384

384:                                              ; preds = %361, %379
  %385 = phi float [ %383, %379 ], [ 0.000000e+00, %361 ]
  %386 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %387 = load i32, ptr %386, align 4, !tbaa !200
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %397, label %389

389:                                              ; preds = %384
  %390 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %391 = load i32, ptr %390, align 16, !tbaa !201
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = uitofp i32 %387 to float
  %395 = uitofp i32 %391 to float
  %396 = fdiv float %394, %395
  br label %397

397:                                              ; preds = %384, %389, %393
  %398 = phi float [ %396, %393 ], [ 2.500000e+01, %389 ], [ 2.500000e+01, %384 ]
  %399 = sitofp i32 %372 to float
  %400 = sitofp i32 %363 to float
  %401 = fmul float %385, %398
  %402 = fcmp olt float %401, %400
  %403 = select i1 %402, float %400, float %401
  %404 = fcmp ogt float %403, %399
  %405 = select i1 %404, float %399, float %403
  %406 = fptosi float %405 to i32
  store i32 %406, ptr %369, align 4, !tbaa !95
  %407 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %408 = load i32, ptr %407, align 4, !tbaa !76
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %414, label %410

410:                                              ; preds = %397
  %411 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %412 = load i32, ptr %411, align 8, !tbaa !71
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %418

414:                                              ; preds = %410, %397
  %415 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %416 = load i32, ptr %415, align 16, !tbaa !201
  store i32 %416, ptr %407, align 4, !tbaa !76
  %417 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  store i32 %387, ptr %417, align 8, !tbaa !71
  br label %418

418:                                              ; preds = %414, %410
  %419 = load float, ptr %102, align 8, !tbaa !178
  %420 = fcmp olt float %419, 0.000000e+00
  %421 = fcmp ogt float %419, 1.000000e+00
  %422 = select i1 %421, float 1.000000e+00, float %419
  %423 = select i1 %420, float 0.000000e+00, float %422
  store float %423, ptr %102, align 8, !tbaa !178
  %424 = icmp eq i32 %406, 0
  br i1 %424, label %429, label %425

425:                                              ; preds = %418
  %426 = icmp eq i32 %363, 1
  %427 = fcmp oeq float %423, 1.000000e+00
  %428 = select i1 %426, i1 true, i1 %427
  br i1 %428, label %429, label %431

429:                                              ; preds = %425, %418
  %430 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %430, align 8, !tbaa !93
  br label %431

431:                                              ; preds = %425, %429
  %432 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %433 = load i32, ptr %432, align 8, !tbaa !91
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %431
  store i32 0, ptr %369, align 4, !tbaa !95
  br label %436

436:                                              ; preds = %435, %431
  %437 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 0, ptr %437, align 16, !tbaa !97
  %438 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %439 = load i32, ptr %438, align 8, !tbaa !202
  %440 = tail call i32 @llvm.smin.i32(i32 %439, i32 6)
  %441 = tail call i32 @llvm.smax.i32(i32 %440, i32 -6)
  store i32 %441, ptr %438, align 8, !tbaa !202
  %442 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %443 = load i32, ptr %442, align 4, !tbaa !203
  %444 = tail call i32 @llvm.smin.i32(i32 %443, i32 6)
  %445 = tail call i32 @llvm.smax.i32(i32 %444, i32 -6)
  store i32 %445, ptr %442, align 4, !tbaa !203
  %446 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %447 = load i32, ptr %446, align 4, !tbaa !145
  %448 = tail call i32 @llvm.smin.i32(i32 %447, i32 32)
  %449 = tail call i32 @llvm.smax.i32(i32 %448, i32 0)
  store i32 %449, ptr %446, align 4, !tbaa !145
  %450 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %451 = load i32, ptr %450, align 4, !tbaa !145
  %452 = tail call i32 @llvm.smin.i32(i32 %451, i32 32)
  %453 = tail call i32 @llvm.smax.i32(i32 %452, i32 0)
  store i32 %453, ptr %450, align 4, !tbaa !145
  %454 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  %455 = load i32, ptr %454, align 4, !tbaa !204
  %456 = tail call i32 @llvm.smin.i32(i32 %455, i32 2)
  %457 = tail call i32 @llvm.smax.i32(i32 %456, i32 0)
  store i32 %457, ptr %454, align 4, !tbaa !204
  %458 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  %459 = load i32, ptr %458, align 16, !tbaa !182
  %460 = icmp ugt i32 %459, 2
  br i1 %460, label %461, label %462

461:                                              ; preds = %436
  store i32 0, ptr %458, align 16, !tbaa !182
  br label %462

462:                                              ; preds = %436, %461
  %463 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %464 = load i32, ptr %463, align 4, !tbaa !134
  %465 = icmp ugt i32 %464, 4
  br i1 %465, label %466, label %467

466:                                              ; preds = %462
  store i32 1, ptr %463, align 4, !tbaa !134
  br label %467

467:                                              ; preds = %462, %466
  %468 = load i32, ptr %77, align 16, !tbaa !176
  %469 = icmp slt i32 %468, 4
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  store i32 4, ptr %77, align 16, !tbaa !176
  br label %471

471:                                              ; preds = %470, %467
  %472 = load i32, ptr %77, align 16, !tbaa !176
  %473 = icmp sgt i32 %472, 16
  br i1 %473, label %474, label %478

474:                                              ; preds = %471
  %475 = load i32, ptr %463, align 4, !tbaa !134
  %476 = icmp slt i32 %475, 2
  br i1 %476, label %477, label %478

477:                                              ; preds = %474
  store i32 16, ptr %77, align 16, !tbaa !176
  br label %478

478:                                              ; preds = %477, %474, %471
  %479 = load i32, ptr %463, align 4, !tbaa !134
  %480 = icmp eq i32 %479, 4
  br i1 %480, label %481, label %489

481:                                              ; preds = %478
  %482 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %483 = load i32, ptr %482, align 4, !tbaa !129
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %481
  %486 = load i32, ptr %304, align 4, !tbaa !130
  %487 = icmp slt i32 %486, 2
  br i1 %487, label %488, label %489

488:                                              ; preds = %485, %481
  store i32 3, ptr %463, align 4, !tbaa !134
  br label %489

489:                                              ; preds = %488, %485, %478
  %490 = load i32, ptr %304, align 4, !tbaa !130
  %491 = tail call i32 @llvm.smin.i32(i32 %490, i32 10)
  %492 = tail call i32 @llvm.smax.i32(i32 %491, i32 0)
  store i32 %492, ptr %304, align 4, !tbaa !130
  %493 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  %494 = load i32, ptr %493, align 4, !tbaa !205
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %499, label %496

496:                                              ; preds = %489
  %497 = load i32, ptr %291, align 16, !tbaa !102
  %498 = icmp sgt i32 %497, 1
  br label %499

499:                                              ; preds = %496, %489
  %500 = phi i1 [ false, %489 ], [ %498, %496 ]
  %501 = zext i1 %500 to i32
  store i32 %501, ptr %493, align 4, !tbaa !205
  %502 = load i32, ptr %123, align 4, !tbaa !111
  %503 = and i32 %502, 307
  store i32 %503, ptr %123, align 4, !tbaa !111
  %504 = load i32, ptr %76, align 16, !tbaa !206
  %505 = and i32 %504, 3
  store i32 %505, ptr %76, align 16, !tbaa !206
  %506 = and i32 %502, 16
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %510

508:                                              ; preds = %499
  %509 = and i32 %502, 259
  store i32 %509, ptr %123, align 4, !tbaa !111
  br label %510

510:                                              ; preds = %508, %499
  %511 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  %512 = load i32, ptr %511, align 8, !tbaa !190
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %514, label %518

514:                                              ; preds = %510
  %515 = load i32, ptr %123, align 4, !tbaa !111
  %516 = and i32 %515, -3
  store i32 %516, ptr %123, align 4, !tbaa !111
  %517 = and i32 %504, 1
  store i32 %517, ptr %76, align 16, !tbaa !206
  br label %518

518:                                              ; preds = %514, %510
  %519 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %520 = load i32, ptr %519, align 8, !tbaa !185
  %521 = tail call i32 @llvm.smin.i32(i32 %520, i32 12)
  %522 = tail call i32 @llvm.smax.i32(i32 %521, i32 -12)
  store i32 %522, ptr %519, align 8, !tbaa !185
  %523 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %524 = load i32, ptr %523, align 16, !tbaa !127
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %528

526:                                              ; preds = %518
  %527 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %527, align 8, !tbaa !186
  br label %528

528:                                              ; preds = %526, %518
  %529 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %530 = load i32, ptr %529, align 8, !tbaa !186
  %531 = tail call i32 @llvm.smin.i32(i32 %530, i32 2)
  %532 = tail call i32 @llvm.smax.i32(i32 %531, i32 0)
  store i32 %532, ptr %529, align 8, !tbaa !186
  %533 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %534 = load i32, ptr %533, align 16, !tbaa !189
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %536, label %539

536:                                              ; preds = %528
  %537 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  store float 0.000000e+00, ptr %537, align 8, !tbaa !207
  %538 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  store float 0.000000e+00, ptr %538, align 4, !tbaa !208
  br label %539

539:                                              ; preds = %536, %528
  %540 = icmp slt i32 %530, 1
  br i1 %540, label %541, label %543

541:                                              ; preds = %539
  %542 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  store float 0.000000e+00, ptr %542, align 4, !tbaa !208
  br label %543

543:                                              ; preds = %541, %539
  %544 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %545 = load float, ptr %544, align 8, !tbaa !207
  %546 = fcmp olt float %545, 0.000000e+00
  %547 = fcmp ogt float %545, 1.000000e+01
  %548 = select i1 %547, float 1.000000e+01, float %545
  %549 = select i1 %546, float 0.000000e+00, float %548
  store float %549, ptr %544, align 8, !tbaa !207
  %550 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %551 = load float, ptr %550, align 4, !tbaa !208
  %552 = fcmp olt float %551, 0.000000e+00
  %553 = fcmp ogt float %551, 1.000000e+01
  %554 = select i1 %553, float 1.000000e+01, float %551
  %555 = select i1 %552, float 0.000000e+00, float %554
  store float %555, ptr %550, align 4, !tbaa !208
  %556 = icmp slt i32 %490, 6
  br i1 %556, label %557, label %558

557:                                              ; preds = %543
  store float 0.000000e+00, ptr %544, align 8, !tbaa !207
  br label %558

558:                                              ; preds = %557, %543
  %559 = load float, ptr %544, align 8, !tbaa !207
  %560 = fmul float %559, 2.560000e+02
  %561 = fpext float %560 to double
  %562 = fadd double %561, 5.000000e-01
  %563 = fptosi double %562 to i32
  %564 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 15
  store i32 %563, ptr %564, align 4, !tbaa !209
  %565 = icmp eq i32 %563, 0
  br i1 %565, label %570, label %566

566:                                              ; preds = %558
  %567 = fcmp olt float %559, 2.500000e-01
  %568 = select i1 %567, i32 -1, i32 -2
  %569 = add nsw i32 %568, %522
  store i32 %569, ptr %519, align 8, !tbaa !185
  br label %570

570:                                              ; preds = %566, %558
  %571 = fmul float %555, 2.500000e-01
  %572 = fmul float %571, 2.560000e+02
  %573 = fpext float %572 to double
  %574 = fadd double %573, 5.000000e-01
  %575 = fptosi double %574 to i32
  %576 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 16
  store i32 %575, ptr %576, align 16, !tbaa !210
  %577 = icmp eq i32 %575, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %570
  %579 = fcmp olt float %555, 2.500000e-01
  %580 = select i1 %579, i32 -1, i32 -2
  %581 = load i32, ptr %519, align 8, !tbaa !185
  %582 = add i32 %581, %580
  store i32 %582, ptr %519, align 8, !tbaa !185
  br label %583

583:                                              ; preds = %578, %570
  %584 = load i32, ptr %519, align 8, !tbaa !185
  %585 = tail call i32 @llvm.smin.i32(i32 %584, i32 12)
  %586 = tail call i32 @llvm.smax.i32(i32 %585, i32 -12)
  store i32 %586, ptr %519, align 8, !tbaa !185
  %587 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %588 = load i32, ptr %587, align 8, !tbaa !191
  %589 = tail call i32 @llvm.smin.i32(i32 %588, i32 2)
  %590 = tail call i32 @llvm.smax.i32(i32 %589, i32 0)
  store i32 %590, ptr %587, align 8, !tbaa !191
  %591 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %592 = load float, ptr %591, align 4, !tbaa !211
  %593 = fcmp olt float %592, 0.000000e+00
  %594 = fcmp ogt float %592, 3.000000e+00
  %595 = select i1 %594, float 3.000000e+00, float %592
  %596 = select i1 %593, float 0.000000e+00, float %595
  store float %596, ptr %591, align 4, !tbaa !211
  %597 = fcmp oeq float %596, 0.000000e+00
  br i1 %597, label %598, label %599

598:                                              ; preds = %583
  store i32 0, ptr %587, align 8, !tbaa !191
  br label %599

599:                                              ; preds = %598, %583
  %600 = load i32, ptr %587, align 8, !tbaa !191
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %607

602:                                              ; preds = %599
  %603 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %604 = load i32, ptr %603, align 8, !tbaa !93
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %607, label %606

606:                                              ; preds = %602
  store i32 1, ptr %587, align 8, !tbaa !191
  store float 0.000000e+00, ptr %591, align 4, !tbaa !211
  br label %607

607:                                              ; preds = %606, %602, %599
  %608 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %609 = load i32, ptr %608, align 4, !tbaa !188
  %610 = tail call i32 @llvm.smin.i32(i32 %609, i32 65536)
  %611 = tail call i32 @llvm.smax.i32(i32 %610, i32 0)
  store i32 %611, ptr %608, align 4, !tbaa !188
  %612 = icmp sgt i32 %490, 9
  br i1 %612, label %613, label %619

613:                                              ; preds = %607
  %614 = icmp sgt i32 %530, 1
  br i1 %614, label %615, label %618

615:                                              ; preds = %613
  %616 = load i32, ptr %587, align 8, !tbaa !191
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %618, label %619

618:                                              ; preds = %615, %613
  store i32 9, ptr %304, align 4, !tbaa !130
  br label %619

619:                                              ; preds = %618, %615, %607
  %620 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  %621 = load i32, ptr %620, align 16, !tbaa !212
  %622 = icmp slt i32 %621, 0
  br i1 %622, label %623, label %646

623:                                              ; preds = %619
  %624 = load i32, ptr %81, align 8, !tbaa !99
  %625 = icmp eq i32 %624, 2
  br i1 %625, label %626, label %631

626:                                              ; preds = %623
  %627 = load i32, ptr %212, align 8, !tbaa !94
  %628 = icmp slt i32 %627, 1
  br i1 %628, label %629, label %631

629:                                              ; preds = %626
  %630 = shl nsw i32 %376, 1
  store i32 %630, ptr %373, align 4, !tbaa !192
  br label %631

631:                                              ; preds = %629, %626, %623
  %632 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 23
  %633 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  store ptr %632, ptr %633, align 16, !tbaa !77
  %634 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  %635 = load i32, ptr %634, align 4, !tbaa !78
  tail call void @x264_sps_init(ptr noundef nonnull %632, i32 noundef %635, ptr noundef %0) #15
  br label %636

636:                                              ; preds = %642, %631
  %637 = phi ptr [ @x264_levels, %631 ], [ %639, %642 ]
  %638 = load i32, ptr %637, align 4, !tbaa !213
  store i32 %638, ptr %620, align 16, !tbaa !212
  %639 = getelementptr inbounds %struct.x264_level_t, ptr %637, i64 1
  %640 = load i32, ptr %639, align 4, !tbaa !213
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %645, label %642

642:                                              ; preds = %636
  %643 = tail call i32 @x264_validate_levels(ptr noundef %0, i32 noundef 0) #15
  %644 = icmp eq i32 %643, 0
  br i1 %644, label %645, label %636

645:                                              ; preds = %642, %636
  store i32 %374, ptr %373, align 4, !tbaa !192
  br label %655

646:                                              ; preds = %619, %646
  %647 = phi ptr [ %652, %646 ], [ @x264_levels, %619 ]
  %648 = load i32, ptr %647, align 4, !tbaa !213
  %649 = icmp eq i32 %648, 0
  %650 = icmp eq i32 %648, %621
  %651 = or i1 %649, %650
  %652 = getelementptr inbounds %struct.x264_level_t, ptr %647, i64 1
  br i1 %651, label %653, label %646, !llvm.loop !215

653:                                              ; preds = %646
  br i1 %649, label %654, label %655

654:                                              ; preds = %653
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %621) #15
  br label %852

655:                                              ; preds = %653, %645
  %656 = phi ptr [ %637, %645 ], [ %647, %653 ]
  %657 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  %658 = load i32, ptr %657, align 4, !tbaa !216
  %659 = icmp slt i32 %658, 1
  br i1 %659, label %660, label %665

660:                                              ; preds = %655
  %661 = getelementptr inbounds %struct.x264_level_t, ptr %656, i64 0, i32 6
  %662 = load i32, ptr %661, align 4, !tbaa !217
  %663 = load i32, ptr %62, align 8, !tbaa !128
  %664 = ashr i32 %662, %663
  br label %671

665:                                              ; preds = %655
  %666 = load i32, ptr %62, align 8, !tbaa !128
  %667 = lshr i32 512, %666
  %668 = icmp slt i32 %658, 32
  %669 = tail call i32 @llvm.smin.i32(i32 %658, i32 %667)
  %670 = select i1 %668, i32 32, i32 %669
  br label %671

671:                                              ; preds = %665, %660
  %672 = phi i32 [ %670, %665 ], [ %664, %660 ]
  store i32 %672, ptr %657, align 4, !tbaa !216
  %673 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %674 = load i32, ptr %673, align 4, !tbaa !109
  %675 = tail call i32 @llvm.smin.i32(i32 %674, i32 2)
  %676 = tail call i32 @llvm.smax.i32(i32 %675, i32 0)
  store i32 %676, ptr %673, align 4, !tbaa !109
  %677 = icmp slt i32 %674, 1
  br i1 %677, label %678, label %689

678:                                              ; preds = %671
  %679 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %680 = load i32, ptr %679, align 8, !tbaa !93
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %689, label %682

682:                                              ; preds = %678
  %683 = load i32, ptr %533, align 16, !tbaa !189
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %689, label %685

685:                                              ; preds = %682
  %686 = load i32, ptr %62, align 8, !tbaa !128
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %688, label %689

688:                                              ; preds = %685
  store i32 -1, ptr %673, align 4, !tbaa !109
  br label %689

689:                                              ; preds = %688, %685, %682, %678, %671
  %690 = load i32, ptr %61, align 4, !tbaa !96
  %691 = icmp sgt i32 %690, 1
  br i1 %691, label %692, label %712

692:                                              ; preds = %689
  %693 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 10
  %694 = load i32, ptr %693, align 8, !tbaa !218
  %695 = icmp slt i32 %694, 1
  br i1 %695, label %696, label %702

696:                                              ; preds = %692
  %697 = load i32, ptr %6, align 8, !tbaa !148
  %698 = add nsw i32 %697, 24
  %699 = sdiv i32 %698, %690
  %700 = add nsw i32 %699, -24
  %701 = sdiv i32 %700, 2
  br label %702

702:                                              ; preds = %696, %692
  %703 = phi i32 [ %701, %696 ], [ %694, %692 ]
  %704 = load i32, ptr %77, align 16, !tbaa !176
  %705 = tail call i32 @llvm.smax.i32(i32 %703, i32 %704)
  %706 = tail call i32 @llvm.smin.i32(i32 %705, i32 %672)
  %707 = and i32 %706, -16
  %708 = or disjoint i32 %707, 8
  %709 = icmp slt i32 %708, %706
  %710 = add i32 %707, 24
  %711 = select i1 %709, i32 %710, i32 %708
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.70, i32 noundef %711) #15
  store i32 %711, ptr %693, align 8, !tbaa !218
  br label %712

712:                                              ; preds = %702, %689
  %713 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %714 = load float, ptr %713, align 4, !tbaa !219
  %715 = fcmp olt float %714, 0.000000e+00
  br i1 %715, label %716, label %717

716:                                              ; preds = %712
  store float 0.000000e+00, ptr %713, align 4, !tbaa !219
  br label %717

717:                                              ; preds = %716, %712
  %718 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %719 = load float, ptr %718, align 8, !tbaa !220
  %720 = fcmp olt float %719, 0.000000e+00
  br i1 %720, label %721, label %722

721:                                              ; preds = %717
  store float 0.000000e+00, ptr %718, align 8, !tbaa !220
  br label %722

722:                                              ; preds = %721, %717
  %723 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  %724 = load i32, ptr %723, align 4, !tbaa !78
  %725 = and i32 %724, 31
  store i32 %725, ptr %723, align 4, !tbaa !78
  %726 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  %727 = load i32, ptr %726, align 16, !tbaa !221
  %728 = icmp slt i32 %727, 2
  br i1 %728, label %729, label %732

729:                                              ; preds = %722
  %730 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 0, ptr %730, align 4, !tbaa !183
  %731 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 0, ptr %731, align 16, !tbaa !184
  br label %732

732:                                              ; preds = %729, %722
  %733 = load i32, ptr %62, align 8, !tbaa !128
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %737, label %735

735:                                              ; preds = %732
  %736 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  store i32 1, ptr %736, align 4, !tbaa !222
  br label %737

737:                                              ; preds = %735, %732
  %738 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %739 = load i32, ptr %738, align 8, !tbaa !169
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %745, label %741

741:                                              ; preds = %737
  %742 = load i32, ptr %212, align 8, !tbaa !94
  %743 = icmp eq i32 %742, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %741
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.71) #15
  store i32 0, ptr %738, align 8, !tbaa !169
  br label %745

745:                                              ; preds = %744, %741, %737
  %746 = load i32, ptr %738, align 8, !tbaa !169
  %747 = icmp eq i32 %746, 2
  br i1 %747, label %748, label %755

748:                                              ; preds = %745
  %749 = load i32, ptr %375, align 4, !tbaa !181
  %750 = load i32, ptr %373, align 4, !tbaa !192
  %751 = icmp ne i32 %749, %750
  %752 = icmp eq i32 %750, 0
  %753 = or i1 %751, %752
  br i1 %753, label %754, label %755

754:                                              ; preds = %748
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.72) #15
  store i32 1, ptr %738, align 8, !tbaa !169
  br label %755

755:                                              ; preds = %748, %754, %745
  %756 = load i32, ptr %523, align 16, !tbaa !127
  %757 = icmp ne i32 %756, 0
  %758 = zext i1 %757 to i32
  store i32 %758, ptr %523, align 16, !tbaa !127
  %759 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 27
  %760 = load i32, ptr %759, align 4, !tbaa !223
  %761 = icmp ne i32 %760, 0
  %762 = zext i1 %761 to i32
  store i32 %762, ptr %759, align 4, !tbaa !223
  %763 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %764 = load i32, ptr %763, align 4, !tbaa !224
  %765 = icmp ne i32 %764, 0
  %766 = zext i1 %765 to i32
  store i32 %766, ptr %763, align 4, !tbaa !224
  %767 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 3
  %768 = load i32, ptr %767, align 4, !tbaa !225
  %769 = icmp ne i32 %768, 0
  %770 = zext i1 %769 to i32
  store i32 %770, ptr %767, align 4, !tbaa !225
  %771 = load i32, ptr %54, align 8, !tbaa !158
  %772 = icmp ne i32 %771, 0
  %773 = zext i1 %772 to i32
  store i32 %773, ptr %54, align 8, !tbaa !158
  %774 = load i32, ptr %62, align 8, !tbaa !128
  %775 = icmp ne i32 %774, 0
  %776 = zext i1 %775 to i32
  store i32 %776, ptr %62, align 8, !tbaa !128
  %777 = load i32, ptr %341, align 16, !tbaa !196
  %778 = icmp ne i32 %777, 0
  %779 = zext i1 %778 to i32
  store i32 %779, ptr %341, align 16, !tbaa !196
  %780 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39
  %781 = load i32, ptr %780, align 4, !tbaa !226
  %782 = icmp ne i32 %781, 0
  %783 = zext i1 %782 to i32
  store i32 %783, ptr %780, align 4, !tbaa !226
  %784 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43
  %785 = load i32, ptr %784, align 8, !tbaa !227
  %786 = icmp ne i32 %785, 0
  %787 = zext i1 %786 to i32
  store i32 %787, ptr %784, align 8, !tbaa !227
  %788 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 44
  %789 = load i32, ptr %788, align 4, !tbaa !228
  %790 = icmp ne i32 %789, 0
  %791 = zext i1 %790 to i32
  store i32 %791, ptr %788, align 4, !tbaa !228
  %792 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %793 = load i32, ptr %792, align 16, !tbaa !229
  %794 = icmp ne i32 %793, 0
  %795 = zext i1 %794 to i32
  store i32 %795, ptr %792, align 16, !tbaa !229
  %796 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %797 = load i32, ptr %796, align 8, !tbaa !98
  %798 = icmp ne i32 %797, 0
  %799 = zext i1 %798 to i32
  store i32 %799, ptr %796, align 8, !tbaa !98
  %800 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  %801 = load i32, ptr %800, align 4, !tbaa !222
  %802 = icmp ne i32 %801, 0
  %803 = zext i1 %802 to i32
  store i32 %803, ptr %800, align 4, !tbaa !222
  %804 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  %805 = load i32, ptr %804, align 8, !tbaa !230
  %806 = icmp ne i32 %805, 0
  %807 = zext i1 %806 to i32
  store i32 %807, ptr %804, align 8, !tbaa !230
  %808 = load i32, ptr %511, align 8, !tbaa !190
  %809 = icmp ne i32 %808, 0
  %810 = zext i1 %809 to i32
  store i32 %810, ptr %511, align 8, !tbaa !190
  %811 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %812 = load i32, ptr %811, align 16, !tbaa !198
  %813 = icmp ne i32 %812, 0
  %814 = zext i1 %813 to i32
  store i32 %814, ptr %811, align 16, !tbaa !198
  %815 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  %816 = load i32, ptr %815, align 16, !tbaa !231
  %817 = icmp ne i32 %816, 0
  %818 = zext i1 %817 to i32
  store i32 %818, ptr %815, align 16, !tbaa !231
  %819 = load i32, ptr %493, align 4, !tbaa !205
  %820 = icmp ne i32 %819, 0
  %821 = zext i1 %820 to i32
  store i32 %821, ptr %493, align 4, !tbaa !205
  %822 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  %823 = load i32, ptr %822, align 4, !tbaa !187
  %824 = icmp ne i32 %823, 0
  %825 = zext i1 %824 to i32
  store i32 %825, ptr %822, align 4, !tbaa !187
  %826 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 16
  %827 = load i32, ptr %826, align 16, !tbaa !232
  %828 = icmp ne i32 %827, 0
  %829 = zext i1 %828 to i32
  store i32 %829, ptr %826, align 16, !tbaa !232
  %830 = load i32, ptr %533, align 16, !tbaa !189
  %831 = icmp ne i32 %830, 0
  %832 = zext i1 %831 to i32
  store i32 %832, ptr %533, align 16, !tbaa !189
  %833 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %834 = load i32, ptr %833, align 4, !tbaa !183
  %835 = icmp ne i32 %834, 0
  %836 = zext i1 %835 to i32
  store i32 %836, ptr %833, align 4, !tbaa !183
  %837 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %838 = load i32, ptr %837, align 16, !tbaa !184
  %839 = icmp ne i32 %838, 0
  %840 = zext i1 %839 to i32
  store i32 %840, ptr %837, align 16, !tbaa !184
  %841 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %842 = load i32, ptr %841, align 8, !tbaa !100
  %843 = icmp ne i32 %842, 0
  %844 = zext i1 %843 to i32
  store i32 %844, ptr %841, align 8, !tbaa !100
  %845 = load i32, ptr %432, align 8, !tbaa !91
  %846 = icmp ne i32 %845, 0
  %847 = zext i1 %846 to i32
  store i32 %847, ptr %432, align 8, !tbaa !91
  %848 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %849 = load i32, ptr %848, align 8, !tbaa !93
  %850 = icmp ne i32 %849, 0
  %851 = zext i1 %850 to i32
  store i32 %851, ptr %848, align 8, !tbaa !93
  br label %852

852:                                              ; preds = %135, %21, %139, %654, %755, %16, %9
  %853 = phi i32 [ -1, %9 ], [ -1, %16 ], [ -1, %21 ], [ -1, %139 ], [ -1, %135 ], [ 0, %755 ], [ -1, %654 ]
  ret i32 %853
}

declare i32 @x264_cqm_parse_file(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @spec_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_set_aspect_ratio(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !233
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %52

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !234
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %52

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  store i32 %7, ptr %4, align 4, !tbaa !145
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  store i32 %11, ptr %5, align 4, !tbaa !145
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !235
  %17 = load i32, ptr %14, align 4, !tbaa !236
  call void @x264_reduce_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %18 = load i32, ptr %4, align 4, !tbaa !145
  %19 = load i32, ptr %5, align 4
  %20 = icmp ugt i32 %18, 65535
  %21 = icmp ugt i32 %19, 65535
  %22 = select i1 %20, i1 true, i1 %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %13, %23
  %24 = phi i32 [ %26, %23 ], [ %18, %13 ]
  %25 = phi i32 [ %27, %23 ], [ %19, %13 ]
  %26 = lshr i32 %24, 1
  %27 = lshr i32 %25, 1
  %28 = icmp ugt i32 %24, 131071
  %29 = icmp ugt i32 %25, 131071
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %23, label %31, !llvm.loop !237

31:                                               ; preds = %23
  store i32 %26, ptr %4, align 4, !tbaa !145
  store i32 %27, ptr %5, align 4, !tbaa !145
  br label %32

32:                                               ; preds = %31, %13
  call void @x264_reduce_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5) #15
  %33 = load i32, ptr %4, align 4, !tbaa !145
  %34 = icmp eq i32 %33, %16
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, ptr %5, align 4, !tbaa !145
  %37 = icmp ne i32 %36, %17
  %38 = icmp ne i32 %2, 0
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %51

40:                                               ; preds = %35, %32
  store i32 0, ptr %15, align 4, !tbaa !235
  store i32 0, ptr %14, align 4, !tbaa !236
  %41 = icmp eq i32 %33, 0
  %42 = load i32, ptr %5, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %41, i1 true, i1 %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.73) #15
  br label %51

46:                                               ; preds = %40
  %47 = icmp eq i32 %2, 0
  %48 = select i1 %47, i32 3, i32 2
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef %48, ptr noundef nonnull @.str.74, i32 noundef %33, i32 noundef %42) #15
  %49 = load i32, ptr %4, align 4, !tbaa !145
  store i32 %49, ptr %15, align 4, !tbaa !235
  %50 = load i32, ptr %5, align 4, !tbaa !145
  store i32 %50, ptr %14, align 4, !tbaa !236
  br label %51

51:                                               ; preds = %45, %46, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %52

52:                                               ; preds = %51, %9, %3
  ret void
}

declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @x264_sps_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_pps_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_validate_levels(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_cqm_init(ptr noundef) local_unnamed_addr #2

declare void @x264_rdo_init() local_unnamed_addr #2

declare void @x264_predict_16x16_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_predict_8x8c_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_predict_8x8_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_predict_4x4_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_init_vlc_tables(...) local_unnamed_addr #2

declare void @x264_pixel_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_dct_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_zigzag_init(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_mc_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_quant_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_deblock_init(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_dct_init_weights() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare i32 @x264_analyse_init_costs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

declare i32 @x264_lookahead_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @x264_frame_pop_unused(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #2

declare i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_ratecontrol_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_encoder_reconfig(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 16, !tbaa !116
  %5 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 16, !tbaa !238
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  tail call fastcc void @x264_set_aspect_ratio(ptr noundef %9, ptr noundef %1, i32 noundef 0)
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !239
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 12
  store i32 %11, ptr %12, align 16, !tbaa !102
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 19
  %14 = load i32, ptr %13, align 4, !tbaa !240
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 19
  store i32 %14, ptr %15, align 4, !tbaa !197
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !108
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !241
  store i32 %21, ptr %16, align 4, !tbaa !108
  br label %22

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 21
  %24 = load i32, ptr %23, align 4, !tbaa !242
  %25 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 21
  store i32 %24, ptr %25, align 4, !tbaa !224
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 22
  %27 = load i32, ptr %26, align 8, !tbaa !243
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 22
  store i32 %27, ptr %28, align 8, !tbaa !202
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 23
  %30 = load i32, ptr %29, align 4, !tbaa !244
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 23
  store i32 %30, ptr %31, align 4, !tbaa !203
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !245
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 1
  store i32 %34, ptr %36, align 4, !tbaa !111
  %37 = load i32, ptr %32, align 8, !tbaa !246
  store i32 %37, ptr %35, align 16, !tbaa !206
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 5
  %39 = load i32, ptr %38, align 4, !tbaa !247
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 5
  store i32 %39, ptr %40, align 4, !tbaa !195
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !134
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %50, label %44

44:                                               ; preds = %22
  %45 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 8
  %46 = load i32, ptr %45, align 8, !tbaa !248
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 8
  %48 = load i32, ptr %47, align 16, !tbaa !176
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %22
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 8
  %52 = load i32, ptr %51, align 8, !tbaa !248
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 8
  store i32 %52, ptr %53, align 16, !tbaa !176
  br label %54

54:                                               ; preds = %50, %44
  %55 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 17
  %56 = load i32, ptr %55, align 4, !tbaa !249
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 17
  store i32 %56, ptr %57, align 4, !tbaa !188
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 11
  %59 = load i32, ptr %58, align 4, !tbaa !130
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 11
  %63 = load i32, ptr %62, align 4, !tbaa !250
  store i32 %63, ptr %58, align 4, !tbaa !130
  br label %64

64:                                               ; preds = %61, %54
  %65 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 14
  %66 = load i32, ptr %65, align 8, !tbaa !251
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 14
  store i32 %66, ptr %67, align 8, !tbaa !186
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 12
  %69 = load i32, ptr %68, align 8, !tbaa !252
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 12
  store i32 %69, ptr %70, align 16, !tbaa !231
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 16
  %72 = load i32, ptr %71, align 8, !tbaa !253
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 16
  store i32 %72, ptr %73, align 16, !tbaa !232
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 15
  %75 = load i32, ptr %74, align 4, !tbaa !254
  %76 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 15
  store i32 %75, ptr %76, align 4, !tbaa !187
  %77 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 13
  %78 = load i32, ptr %77, align 4, !tbaa !255
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 13
  store i32 %78, ptr %79, align 4, !tbaa !205
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 18
  %81 = load float, ptr %80, align 8, !tbaa !256
  %82 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 18
  store float %81, ptr %82, align 8, !tbaa !207
  %83 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 19
  %84 = load float, ptr %83, align 4, !tbaa !257
  %85 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 19
  store float %84, ptr %85, align 4, !tbaa !208
  %86 = icmp sgt i32 %42, 2
  br i1 %86, label %91, label %87

87:                                               ; preds = %64
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 7
  %89 = load i32, ptr %88, align 4, !tbaa !258
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %94

91:                                               ; preds = %87, %64
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 7
  %93 = load i32, ptr %92, align 4, !tbaa !258
  store i32 %93, ptr %41, align 4, !tbaa !134
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i32, ptr %41, align 4, !tbaa !134
  %96 = icmp sgt i32 %95, 2
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 43, i32 17
  %99 = load i32, ptr %98, align 4, !tbaa !112
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = and i32 %34, -33
  store i32 %102, ptr %36, align 4, !tbaa !111
  br label %103

103:                                              ; preds = %101, %97, %94
  %104 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 26
  %105 = load ptr, ptr %104, align 16, !tbaa !79
  %106 = getelementptr inbounds %struct.x264_pps_t, ptr %105, i64 0, i32 15
  %107 = load i32, ptr %106, align 4, !tbaa !259
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 2
  %111 = load i32, ptr %110, align 8, !tbaa !260
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 2
  store i32 %111, ptr %112, align 8, !tbaa !190
  br label %113

113:                                              ; preds = %109, %103
  %114 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 43, i32 8
  %115 = load i32, ptr %114, align 16, !tbaa !105
  %116 = icmp sgt i32 %115, 1
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 20
  %119 = load i32, ptr %118, align 8, !tbaa !261
  %120 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 20
  store i32 %119, ptr %120, align 16, !tbaa !74
  br label %121

121:                                              ; preds = %117, %113
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 56
  %123 = load i32, ptr %122, align 4, !tbaa !262
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 56
  store i32 %123, ptr %124, align 4, !tbaa !193
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 57
  %126 = load i32, ptr %125, align 8, !tbaa !263
  %127 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 57
  store i32 %126, ptr %127, align 16, !tbaa !194
  %128 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 58
  %129 = load i32, ptr %128, align 4, !tbaa !264
  %130 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 58
  store i32 %129, ptr %130, align 4, !tbaa !157
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 9
  %132 = load i32, ptr %131, align 4, !tbaa !192
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %121
  %135 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 10
  %136 = load i32, ptr %135, align 8, !tbaa !94
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %150

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 9
  %140 = load i32, ptr %139, align 4, !tbaa !265
  %141 = icmp sgt i32 %140, 0
  br i1 %141, label %142, label %150

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 10
  %144 = load i32, ptr %143, align 8, !tbaa !266
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  store i32 %140, ptr %131, align 4, !tbaa !192
  store i32 %144, ptr %135, align 8, !tbaa !94
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 5
  %148 = load i32, ptr %147, align 4, !tbaa !267
  %149 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 5
  store i32 %148, ptr %149, align 4, !tbaa !181
  br label %150

150:                                              ; preds = %146, %142, %138, %134, %121
  %151 = phi i32 [ 1, %146 ], [ 0, %142 ], [ 0, %138 ], [ 0, %134 ], [ 0, %121 ]
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 6
  %153 = load float, ptr %152, align 8, !tbaa !180
  %154 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 6
  %155 = load float, ptr %154, align 8, !tbaa !268
  %156 = fcmp une float %153, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %150
  store float %155, ptr %152, align 8, !tbaa !180
  br label %158

158:                                              ; preds = %157, %150
  %159 = phi i32 [ 1, %157 ], [ %151, %150 ]
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 7
  %161 = load float, ptr %160, align 4, !tbaa !269
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 7
  %163 = load float, ptr %162, align 4, !tbaa !270
  %164 = fcmp une float %161, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  store float %163, ptr %160, align 4, !tbaa !269
  br label %166

166:                                              ; preds = %165, %158
  %167 = phi i32 [ 1, %165 ], [ %159, %158 ]
  %168 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 55, i32 73
  %169 = load i32, ptr %168, align 4, !tbaa !129
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, ptr %58, align 4, !tbaa !130
  %173 = icmp sgt i32 %172, 1
  br label %174

174:                                              ; preds = %166, %171
  %175 = phi i1 [ false, %166 ], [ %173, %171 ]
  %176 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69
  %177 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 5
  %178 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 2
  %179 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 10
  %180 = select i1 %175, ptr %178, ptr %179
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %177, ptr noundef nonnull align 8 dereferenceable(56) %180, i64 56, i1 false)
  %181 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 6
  %182 = select i1 %175, ptr %178, ptr %176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %181, ptr noundef nonnull align 8 dereferenceable(56) %182, i64 56, i1 false)
  %183 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 22
  %184 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 23
  %185 = select i1 %175, ptr %183, ptr %184
  %186 = load ptr, ptr %185, align 8, !tbaa !116
  %187 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 21
  store ptr %186, ptr %187, align 8, !tbaa !131
  %188 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 25
  %189 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 26
  %190 = select i1 %175, ptr %188, ptr %189
  %191 = load ptr, ptr %190, align 8, !tbaa !116
  %192 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 24
  store ptr %191, ptr %192, align 8, !tbaa !132
  %193 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 28
  %194 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 29
  %195 = select i1 %175, ptr %193, ptr %194
  %196 = load ptr, ptr %195, align 8, !tbaa !116
  %197 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 27
  store ptr %196, ptr %197, align 8, !tbaa !133
  %198 = icmp eq i32 %95, 4
  %199 = and i1 %198, %175
  %200 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 7
  %201 = select i1 %199, ptr %178, ptr %176
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %200, ptr noundef nonnull align 8 dereferenceable(56) %201, i64 56, i1 false)
  %202 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 8
  %203 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 18
  %204 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 16
  %205 = select i1 %199, ptr %203, ptr %204
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %202, ptr noundef nonnull align 8 dereferenceable(56) %205, i64 56, i1 false)
  %206 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 9
  %207 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 19
  %208 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 69, i32 17
  %209 = select i1 %199, ptr %207, ptr %208
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %206, ptr noundef nonnull align 8 dereferenceable(56) %209, i64 56, i1 false)
  %210 = tail call fastcc i32 @x264_validate_parameters(ptr noundef %9), !range !44
  %211 = icmp eq i32 %210, 0
  %212 = icmp ne i32 %167, 0
  %213 = and i1 %212, %211
  br i1 %213, label %214, label %215

214:                                              ; preds = %174
  tail call void @x264_ratecontrol_init_reconfigurable(ptr noundef %9, i32 noundef 0) #15
  br label %215

215:                                              ; preds = %214, %174
  ret i32 %210
}

declare void @x264_ratecontrol_init_reconfigurable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_encoder_parameters(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 16, !tbaa !238
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %1, ptr noundef nonnull align 16 dereferenceable(704) %7, i64 704, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_encoder_headers(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  store i32 0, ptr %4, align 16, !tbaa !146
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !165
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 3
  %9 = load i32, ptr %8, align 16, !tbaa !151
  %10 = ptrtoint ptr %7 to i64
  %11 = and i64 %10, 3
  %12 = sub nsw i64 0, %11
  %13 = getelementptr inbounds i8, ptr %7, i64 %12
  store ptr %13, ptr %5, align 8, !tbaa !271
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !272
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i8, ptr %7, i64 %15
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !273
  %18 = trunc i64 %11 to i32
  %19 = shl nuw nsw i32 %18, 3
  %20 = sub nuw nsw i32 64, %19
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  store i32 %20, ptr %21, align 8, !tbaa !274
  %22 = load i32, ptr %13, align 4, !tbaa !160
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 3
  %26 = shl i64 %10, 3
  %27 = and i64 %26, 24
  %28 = sub nuw nsw i64 32, %27
  %29 = lshr i64 %24, %28
  store i64 %29, ptr %25, align 8, !tbaa !275
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !166
  store i32 3, ptr %31, align 8, !tbaa !276
  %32 = getelementptr inbounds %struct.x264_nal_t, ptr %31, i64 0, i32 1
  store i32 7, ptr %32, align 4, !tbaa !278
  %33 = getelementptr inbounds %struct.x264_nal_t, ptr %31, i64 0, i32 2
  store i32 0, ptr %33, align 8, !tbaa !279
  %34 = getelementptr inbounds i8, ptr %7, i64 %11
  %35 = getelementptr inbounds %struct.x264_nal_t, ptr %31, i64 0, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !280
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %37 = load ptr, ptr %36, align 16, !tbaa !77
  tail call void @x264_sps_write(ptr noundef nonnull %5, ptr noundef %37) #15
  %38 = load ptr, ptr %30, align 8, !tbaa !166
  %39 = load i32, ptr %4, align 16, !tbaa !146
  %40 = sext i32 %39 to i64
  %41 = load ptr, ptr %6, align 8, !tbaa !165
  %42 = load ptr, ptr %14, align 8, !tbaa !272
  %43 = load ptr, ptr %5, align 8, !tbaa !271
  %44 = ptrtoint ptr %42 to i64
  %45 = ptrtoint ptr %43 to i64
  %46 = sub i64 %44, %45
  %47 = load i32, ptr %21, align 8, !tbaa !274
  %48 = trunc i64 %46 to i32
  %49 = shl i32 %48, 3
  %50 = sub i32 %49, %47
  %51 = add i32 %50, 64
  %52 = sdiv i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, ptr %41, i64 %53
  %55 = getelementptr inbounds %struct.x264_nal_t, ptr %38, i64 %40, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !280
  %57 = ptrtoint ptr %54 to i64
  %58 = ptrtoint ptr %56 to i64
  %59 = sub i64 %57, %58
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.x264_nal_t, ptr %38, i64 %40, i32 2
  store i32 %60, ptr %61, align 8, !tbaa !279
  %62 = add nsw i32 %39, 1
  store i32 %62, ptr %4, align 16, !tbaa !146
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !167
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %3
  %67 = mul i32 %64, 48
  %68 = tail call ptr @x264_malloc(i32 noundef %67) #15
  %69 = icmp eq ptr %68, null
  br i1 %69, label %209, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %30, align 8, !tbaa !166
  %72 = load i32, ptr %63, align 4, !tbaa !167
  %73 = sext i32 %72 to i64
  %74 = mul nsw i64 %73, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %68, ptr align 8 %71, i64 %74, i1 false)
  %75 = load ptr, ptr %30, align 8, !tbaa !166
  tail call void @x264_free(ptr noundef %75) #15
  store ptr %68, ptr %30, align 8, !tbaa !166
  %76 = load i32, ptr %63, align 4, !tbaa !167
  %77 = shl nsw i32 %76, 1
  store i32 %77, ptr %63, align 4, !tbaa !167
  br label %78

78:                                               ; preds = %70, %3
  %79 = load ptr, ptr %30, align 8, !tbaa !166
  %80 = load i32, ptr %4, align 16, !tbaa !146
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.x264_nal_t, ptr %79, i64 %81
  store i32 3, ptr %82, align 8, !tbaa !276
  %83 = getelementptr inbounds %struct.x264_nal_t, ptr %79, i64 %81, i32 1
  store i32 8, ptr %83, align 4, !tbaa !278
  %84 = getelementptr inbounds %struct.x264_nal_t, ptr %79, i64 %81, i32 2
  store i32 0, ptr %84, align 8, !tbaa !279
  %85 = load ptr, ptr %6, align 8, !tbaa !165
  %86 = load ptr, ptr %14, align 8, !tbaa !272
  %87 = load ptr, ptr %5, align 8, !tbaa !271
  %88 = ptrtoint ptr %86 to i64
  %89 = ptrtoint ptr %87 to i64
  %90 = sub i64 %88, %89
  %91 = load i32, ptr %21, align 8, !tbaa !274
  %92 = trunc i64 %90 to i32
  %93 = shl i32 %92, 3
  %94 = sub i32 %93, %91
  %95 = add i32 %94, 64
  %96 = sdiv i32 %95, 8
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, ptr %85, i64 %97
  %99 = getelementptr inbounds %struct.x264_nal_t, ptr %79, i64 %81, i32 3
  store ptr %98, ptr %99, align 8, !tbaa !280
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %101 = load ptr, ptr %100, align 16, !tbaa !79
  tail call void @x264_pps_write(ptr noundef nonnull %5, ptr noundef %101) #15
  %102 = load ptr, ptr %30, align 8, !tbaa !166
  %103 = load i32, ptr %4, align 16, !tbaa !146
  %104 = sext i32 %103 to i64
  %105 = load ptr, ptr %6, align 8, !tbaa !165
  %106 = load ptr, ptr %14, align 8, !tbaa !272
  %107 = load ptr, ptr %5, align 8, !tbaa !271
  %108 = ptrtoint ptr %106 to i64
  %109 = ptrtoint ptr %107 to i64
  %110 = sub i64 %108, %109
  %111 = load i32, ptr %21, align 8, !tbaa !274
  %112 = trunc i64 %110 to i32
  %113 = shl i32 %112, 3
  %114 = sub i32 %113, %111
  %115 = add i32 %114, 64
  %116 = sdiv i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, ptr %105, i64 %117
  %119 = getelementptr inbounds %struct.x264_nal_t, ptr %102, i64 %104, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !280
  %121 = ptrtoint ptr %118 to i64
  %122 = ptrtoint ptr %120 to i64
  %123 = sub i64 %121, %122
  %124 = trunc i64 %123 to i32
  %125 = getelementptr inbounds %struct.x264_nal_t, ptr %102, i64 %104, i32 2
  store i32 %124, ptr %125, align 8, !tbaa !279
  %126 = add nsw i32 %103, 1
  store i32 %126, ptr %4, align 16, !tbaa !146
  %127 = load i32, ptr %63, align 4, !tbaa !167
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %78
  %130 = mul i32 %127, 48
  %131 = tail call ptr @x264_malloc(i32 noundef %130) #15
  %132 = icmp eq ptr %131, null
  br i1 %132, label %209, label %133

133:                                              ; preds = %129
  %134 = load ptr, ptr %30, align 8, !tbaa !166
  %135 = load i32, ptr %63, align 4, !tbaa !167
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %136, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %131, ptr align 8 %134, i64 %137, i1 false)
  %138 = load ptr, ptr %30, align 8, !tbaa !166
  tail call void @x264_free(ptr noundef %138) #15
  store ptr %131, ptr %30, align 8, !tbaa !166
  %139 = load i32, ptr %63, align 4, !tbaa !167
  %140 = shl nsw i32 %139, 1
  store i32 %140, ptr %63, align 4, !tbaa !167
  br label %141

141:                                              ; preds = %133, %78
  %142 = load ptr, ptr %30, align 8, !tbaa !166
  %143 = load i32, ptr %4, align 16, !tbaa !146
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.x264_nal_t, ptr %142, i64 %144
  store i32 0, ptr %145, align 8, !tbaa !276
  %146 = getelementptr inbounds %struct.x264_nal_t, ptr %142, i64 %144, i32 1
  store i32 6, ptr %146, align 4, !tbaa !278
  %147 = getelementptr inbounds %struct.x264_nal_t, ptr %142, i64 %144, i32 2
  store i32 0, ptr %147, align 8, !tbaa !279
  %148 = load ptr, ptr %6, align 8, !tbaa !165
  %149 = load ptr, ptr %14, align 8, !tbaa !272
  %150 = load ptr, ptr %5, align 8, !tbaa !271
  %151 = ptrtoint ptr %149 to i64
  %152 = ptrtoint ptr %150 to i64
  %153 = sub i64 %151, %152
  %154 = load i32, ptr %21, align 8, !tbaa !274
  %155 = trunc i64 %153 to i32
  %156 = shl i32 %155, 3
  %157 = sub i32 %156, %154
  %158 = add i32 %157, 64
  %159 = sdiv i32 %158, 8
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %148, i64 %160
  %162 = getelementptr inbounds %struct.x264_nal_t, ptr %142, i64 %144, i32 3
  store ptr %161, ptr %162, align 8, !tbaa !280
  %163 = tail call i32 @x264_sei_version_write(ptr noundef %0, ptr noundef nonnull %5) #15
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %209

165:                                              ; preds = %141
  %166 = load ptr, ptr %30, align 8, !tbaa !166
  %167 = load i32, ptr %4, align 16, !tbaa !146
  %168 = sext i32 %167 to i64
  %169 = load ptr, ptr %6, align 8, !tbaa !165
  %170 = load ptr, ptr %14, align 8, !tbaa !272
  %171 = load ptr, ptr %5, align 8, !tbaa !271
  %172 = ptrtoint ptr %170 to i64
  %173 = ptrtoint ptr %171 to i64
  %174 = sub i64 %172, %173
  %175 = load i32, ptr %21, align 8, !tbaa !274
  %176 = trunc i64 %174 to i32
  %177 = shl i32 %176, 3
  %178 = sub i32 %177, %175
  %179 = add i32 %178, 64
  %180 = sdiv i32 %179, 8
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, ptr %169, i64 %181
  %183 = getelementptr inbounds %struct.x264_nal_t, ptr %166, i64 %168, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !280
  %185 = ptrtoint ptr %182 to i64
  %186 = ptrtoint ptr %184 to i64
  %187 = sub i64 %185, %186
  %188 = trunc i64 %187 to i32
  %189 = getelementptr inbounds %struct.x264_nal_t, ptr %166, i64 %168, i32 2
  store i32 %188, ptr %189, align 8, !tbaa !279
  %190 = add nsw i32 %167, 1
  store i32 %190, ptr %4, align 16, !tbaa !146
  %191 = load i32, ptr %63, align 4, !tbaa !167
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %205, label %193

193:                                              ; preds = %165
  %194 = mul i32 %191, 48
  %195 = tail call ptr @x264_malloc(i32 noundef %194) #15
  %196 = icmp eq ptr %195, null
  br i1 %196, label %209, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %30, align 8, !tbaa !166
  %199 = load i32, ptr %63, align 4, !tbaa !167
  %200 = sext i32 %199 to i64
  %201 = mul nsw i64 %200, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %195, ptr align 8 %198, i64 %201, i1 false)
  %202 = load ptr, ptr %30, align 8, !tbaa !166
  tail call void @x264_free(ptr noundef %202) #15
  store ptr %195, ptr %30, align 8, !tbaa !166
  %203 = load i32, ptr %63, align 4, !tbaa !167
  %204 = shl nsw i32 %203, 1
  store i32 %204, ptr %63, align 4, !tbaa !167
  br label %205

205:                                              ; preds = %197, %165
  %206 = tail call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef %0, i32 noundef 0)
  %207 = load i32, ptr %4, align 16, !tbaa !146
  store i32 %207, ptr %2, align 4, !tbaa !145
  %208 = load ptr, ptr %30, align 8, !tbaa !166
  store ptr %208, ptr %1, align 8, !tbaa !116
  store i32 0, ptr %4, align 16, !tbaa !146
  br label %209

209:                                              ; preds = %193, %129, %66, %141, %205
  %210 = phi i32 [ %206, %205 ], [ -1, %141 ], [ -1, %66 ], [ -1, %129 ], [ -1, %193 ]
  ret i32 %210
}

declare void @x264_sps_write(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_pps_write(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_sei_version_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x264_encoder_encapsulate_nals(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !166
  %7 = zext nneg i32 %1 to i64
  br label %18

8:                                                ; preds = %18, %2
  %9 = phi i32 [ 0, %2 ], [ %23, %18 ]
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 16, !tbaa !146
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  %16 = sext i32 %1 to i64
  %17 = sext i32 %11 to i64
  br label %36

18:                                               ; preds = %4, %18
  %19 = phi i64 [ 0, %4 ], [ %24, %18 ]
  %20 = phi i32 [ 0, %4 ], [ %23, %18 ]
  %21 = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %19, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !279
  %23 = add nsw i32 %22, %20
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %8, label %18, !llvm.loop !281

26:                                               ; preds = %36, %8
  %27 = phi i32 [ 0, %8 ], [ %41, %36 ]
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 9
  %30 = load i32, ptr %29, align 16, !tbaa !153
  %31 = mul nsw i32 %27, 3
  %32 = sdiv i32 %31, 2
  %33 = shl nsw i32 %11, 2
  %34 = add nsw i32 %32, %33
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %44, label %58

36:                                               ; preds = %13, %36
  %37 = phi i64 [ %16, %13 ], [ %42, %36 ]
  %38 = phi i32 [ 0, %13 ], [ %41, %36 ]
  %39 = getelementptr inbounds %struct.x264_nal_t, ptr %15, i64 %37, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !279
  %41 = add nsw i32 %40, %38
  %42 = add nsw i64 %37, 1
  %43 = icmp eq i64 %42, %17
  br i1 %43, label %26, label %36, !llvm.loop !282

44:                                               ; preds = %26
  %45 = shl nsw i32 %27, 1
  %46 = add nsw i32 %33, %45
  %47 = tail call ptr @x264_malloc(i32 noundef %46) #15
  %48 = icmp eq ptr %47, null
  br i1 %48, label %104, label %49

49:                                               ; preds = %44
  %50 = icmp eq i32 %9, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %49
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %53 = load ptr, ptr %52, align 8, !tbaa !152
  %54 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %47, ptr align 1 %53, i64 %54, i1 false)
  br label %55

55:                                               ; preds = %51, %49
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !152
  tail call void @x264_free(ptr noundef %57) #15
  store ptr %47, ptr %56, align 8, !tbaa !152
  br label %58

58:                                               ; preds = %55, %26
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %60 = load ptr, ptr %59, align 8, !tbaa !152
  %61 = sext i32 %9 to i64
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  %63 = load i32, ptr %28, align 16, !tbaa !146
  %64 = icmp sgt i32 %63, %1
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %69 = sext i32 %1 to i64
  br label %78

70:                                               ; preds = %88, %58
  %71 = phi ptr [ %62, %58 ], [ %99, %88 ]
  %72 = load ptr, ptr %59, align 8, !tbaa !152
  %73 = getelementptr inbounds i8, ptr %72, i64 %61
  %74 = ptrtoint ptr %71 to i64
  %75 = ptrtoint ptr %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  br label %104

78:                                               ; preds = %65, %88
  %79 = phi i64 [ %69, %65 ], [ %100, %88 ]
  %80 = phi ptr [ %62, %65 ], [ %99, %88 ]
  %81 = icmp eq i64 %79, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %66, align 8, !tbaa !166
  %84 = getelementptr inbounds %struct.x264_nal_t, ptr %83, i64 %79, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !278
  %86 = add i32 %85, -7
  %87 = icmp ult i32 %86, 2
  br label %88

88:                                               ; preds = %82, %78
  %89 = phi i1 [ true, %78 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = load ptr, ptr %67, align 8, !tbaa !166
  %92 = getelementptr inbounds %struct.x264_nal_t, ptr %91, i64 %79
  %93 = load i32, ptr %68, align 16, !tbaa !229
  %94 = tail call i32 @x264_nal_encode(ptr noundef %80, ptr noundef %92, i32 noundef %93, i32 noundef %90) #15
  %95 = load ptr, ptr %67, align 8, !tbaa !166
  %96 = getelementptr inbounds %struct.x264_nal_t, ptr %95, i64 %79, i32 2
  store i32 %94, ptr %96, align 8, !tbaa !279
  %97 = getelementptr inbounds %struct.x264_nal_t, ptr %95, i64 %79, i32 3
  store ptr %80, ptr %97, align 8, !tbaa !280
  %98 = sext i32 %94 to i64
  %99 = getelementptr inbounds i8, ptr %80, i64 %98
  %100 = add nsw i64 %79, 1
  %101 = load i32, ptr %28, align 16, !tbaa !146
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %100, %102
  br i1 %103, label %78, label %70, !llvm.loop !283

104:                                              ; preds = %44, %70
  %105 = phi i32 [ %77, %70 ], [ -1, %44 ]
  ret i32 %105
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_weighted_reference_duplicate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %5 = load i32, ptr %4, align 8, !tbaa !119
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @x264_frame_pop_blank_unused(ptr noundef %0) #15
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %8, ptr noundef nonnull align 16 dereferenceable(15632) %11, i64 15632, i1 false), !tbaa.struct !284
  %12 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 78
  store i32 1, ptr %12, align 16, !tbaa !285
  %13 = load ptr, ptr %10, align 8, !tbaa !116
  %14 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 40
  store ptr %13, ptr %14, align 8, !tbaa !288
  %15 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 39
  store i32 1, ptr %15, align 16, !tbaa !289
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %17 = load ptr, ptr %16, align 8, !tbaa !290
  %18 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 37, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %18, ptr noundef nonnull align 16 dereferenceable(192) %2, i64 192, i1 false)
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50
  store i32 1, ptr %19, align 8, !tbaa !145
  %20 = load i32, ptr %4, align 8, !tbaa !119
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %4, align 8, !tbaa !119
  br label %24

24:                                               ; preds = %22, %7
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 15
  store ptr null, ptr %25, align 8, !tbaa !116
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 1
  tail call void @x264_frame_unshift(ptr noundef nonnull %26, ptr noundef %8) #15
  br label %27

27:                                               ; preds = %3, %24
  %28 = phi i32 [ 1, %24 ], [ -1, %3 ]
  ret i32 %28
}

declare ptr @x264_frame_pop_blank_unused(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_unshift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_encoder_intra_refresh(ptr nocapture noundef readonly %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 16, !tbaa !238
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct.x264_t, ptr %6, i64 0, i32 22
  store i32 1, ptr %7, align 4, !tbaa !291
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_encoder_encode(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = alloca %struct.bs_s, align 8
  %7 = alloca %struct.x264_cabac_t, align 16
  %8 = alloca [3 x %struct.x264_weight_t], align 16
  %9 = alloca [3 x %struct.x264_weight_t], align 16
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !96
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %66

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %15 = load i32, ptr %14, align 16, !tbaa !238
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !116
  %19 = add nsw i32 %15, 1
  %20 = srem i32 %19, %11
  store i32 %20, ptr %14, align 16, !tbaa !238
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !116
  %24 = add nsw i32 %20, 1
  %25 = srem i32 %24, %11
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = icmp eq ptr %23, %18
  br i1 %29, label %65, label %30

30:                                               ; preds = %13
  %31 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 43, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !116
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %38, %30
  %35 = getelementptr inbounds %struct.x264_t, ptr %23, i64 0, i32 43, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !116
  %37 = icmp eq ptr %36, null
  br i1 %37, label %47, label %59

38:                                               ; preds = %30, %38
  %39 = phi ptr [ %45, %38 ], [ %32, %30 ]
  %40 = phi ptr [ %44, %38 ], [ %31, %30 ]
  %41 = getelementptr inbounds %struct.x264_frame, ptr %39, i64 0, i32 78
  %42 = load i32, ptr %41, align 16, !tbaa !285
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 16, !tbaa !285
  %44 = getelementptr inbounds ptr, ptr %40, i64 1
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  %46 = icmp eq ptr %45, null
  br i1 %46, label %34, label %38, !llvm.loop !292

47:                                               ; preds = %59, %34
  %48 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 45
  %49 = load ptr, ptr %48, align 16, !tbaa !164
  %50 = getelementptr inbounds %struct.x264_frame, ptr %49, i64 0, i32 78
  %51 = load i32, ptr %50, align 16, !tbaa !285
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 16, !tbaa !285
  %53 = getelementptr inbounds %struct.x264_t, ptr %23, i64 0, i32 45
  %54 = load ptr, ptr %53, align 16, !tbaa !164
  tail call void @x264_frame_push_unused(ptr noundef %18, ptr noundef %54) #15
  %55 = getelementptr inbounds %struct.x264_t, ptr %23, i64 0, i32 10
  %56 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14772) %55, ptr noundef nonnull align 4 dereferenceable(14772) %56, i64 14772, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %23, ptr noundef nonnull align 16 dereferenceable(704) %18, i64 704, i1 false), !tbaa.struct !293
  %57 = getelementptr inbounds %struct.x264_t, ptr %23, i64 0, i32 57
  %58 = getelementptr inbounds %struct.x264_t, ptr %18, i64 0, i32 57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3688) %57, ptr noundef nonnull align 8 dereferenceable(3688) %58, i64 3688, i1 false), !tbaa.struct !294
  br label %65

59:                                               ; preds = %34, %59
  %60 = phi ptr [ %63, %59 ], [ %36, %34 ]
  %61 = phi ptr [ %62, %59 ], [ %35, %34 ]
  tail call void @x264_frame_push_unused(ptr noundef %18, ptr noundef nonnull %60) #15
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !116
  %64 = icmp eq ptr %63, null
  br i1 %64, label %47, label %59, !llvm.loop !295

65:                                               ; preds = %13, %47
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %23, ptr noundef %18, ptr noundef %28) #15
  br label %66

66:                                               ; preds = %5, %65
  %67 = phi ptr [ %28, %65 ], [ %0, %5 ]
  %68 = phi ptr [ %23, %65 ], [ %0, %5 ]
  %69 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 45
  %70 = load ptr, ptr %69, align 16, !tbaa !164
  %71 = getelementptr inbounds %struct.x264_frame, ptr %70, i64 0, i32 14
  %72 = load i32, ptr %71, align 8, !tbaa !296
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 24
  %76 = load i32, ptr %75, align 4, !tbaa !297
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 0
  br label %88

80:                                               ; preds = %66
  %81 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 12
  %82 = load i32, ptr %81, align 4, !tbaa !96
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %70) #15
  %85 = tail call ptr @x264_frame_pop_unused(ptr noundef %68, i32 noundef 1) #15
  store ptr %85, ptr %69, align 16, !tbaa !164
  %86 = icmp eq ptr %85, null
  br i1 %86, label %130, label %87

87:                                               ; preds = %84, %80
  br label %130

88:                                               ; preds = %78, %105
  %89 = phi i64 [ 0, %78 ], [ %106, %105 ]
  %90 = load ptr, ptr %79, align 8, !tbaa !116
  %91 = icmp eq ptr %90, null
  br i1 %91, label %105, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %89, i32 1
  br label %110

94:                                               ; preds = %105, %74
  %95 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3
  %96 = load ptr, ptr %69, align 16, !tbaa !164
  tail call void @x264_frame_push(ptr noundef nonnull %95, ptr noundef %96) #15
  %97 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %98 = load ptr, ptr %97, align 16, !tbaa !77
  %99 = getelementptr inbounds %struct.x264_sps_t, ptr %98, i64 0, i32 14
  %100 = load i32, ptr %99, align 4, !tbaa !298
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !116
  %104 = icmp eq ptr %103, null
  br i1 %104, label %126, label %124

105:                                              ; preds = %119, %88
  %106 = add nuw nsw i64 %89, 1
  %107 = load i32, ptr %75, align 4, !tbaa !297
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %88, label %94, !llvm.loop !299

110:                                              ; preds = %92, %119
  %111 = phi i64 [ 0, %92 ], [ %120, %119 ]
  %112 = phi ptr [ %90, %92 ], [ %122, %119 ]
  %113 = phi ptr [ %79, %92 ], [ %121, %119 ]
  %114 = load i32, ptr %112, align 16, !tbaa !300
  %115 = load i32, ptr %93, align 4, !tbaa !301
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = tail call ptr @x264_frame_shift(ptr noundef nonnull %113) #15
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %118) #15
  br label %119

119:                                              ; preds = %117, %110
  %120 = add nuw i64 %111, 1
  %121 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %120
  %122 = load ptr, ptr %121, align 8, !tbaa !116
  %123 = icmp eq ptr %122, null
  br i1 %123, label %105, label %110, !llvm.loop !303

124:                                              ; preds = %94
  %125 = tail call ptr @x264_frame_shift(ptr noundef nonnull %95) #15
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %125) #15
  br label %126

126:                                              ; preds = %124, %94
  %127 = tail call ptr @x264_frame_pop_unused(ptr noundef %68, i32 noundef 1) #15
  store ptr %127, ptr %69, align 16, !tbaa !164
  %128 = icmp eq ptr %127, null
  %129 = sext i1 %128 to i32
  br label %130

130:                                              ; preds = %84, %87, %126
  %131 = phi i32 [ 0, %87 ], [ -1, %84 ], [ %129, %126 ]
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %4740

133:                                              ; preds = %130
  %134 = load ptr, ptr %69, align 16, !tbaa !164
  %135 = getelementptr inbounds %struct.x264_frame, ptr %134, i64 0, i32 76
  store i32 -1, ptr %135, align 8, !tbaa !304
  store i32 0, ptr %2, align 4, !tbaa !145
  store ptr null, ptr %1, align 8, !tbaa !116
  %136 = icmp eq ptr %3, null
  br i1 %136, label %251, label %137

137:                                              ; preds = %133
  %138 = tail call ptr @x264_frame_pop_unused(ptr noundef %68, i32 noundef 0) #15
  %139 = icmp eq ptr %138, null
  br i1 %139, label %248, label %140

140:                                              ; preds = %137
  %141 = tail call i32 @x264_frame_copy_picture(ptr noundef %68, ptr noundef nonnull %138, ptr noundef nonnull %3) #15
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %248, label %143

143:                                              ; preds = %140
  %144 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 5
  %145 = load i32, ptr %144, align 4, !tbaa !147
  %146 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %147 = load ptr, ptr %146, align 16, !tbaa !77
  %148 = getelementptr inbounds %struct.x264_sps_t, ptr %147, i64 0, i32 16
  %149 = load i32, ptr %148, align 4, !tbaa !83
  %150 = shl nsw i32 %149, 4
  %151 = icmp eq i32 %145, %150
  br i1 %151, label %152, label %159

152:                                              ; preds = %143
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 6
  %154 = load i32, ptr %153, align 8, !tbaa !148
  %155 = getelementptr inbounds %struct.x264_sps_t, ptr %147, i64 0, i32 17
  %156 = load i32, ptr %155, align 4, !tbaa !88
  %157 = shl nsw i32 %156, 4
  %158 = icmp eq i32 %154, %157
  br i1 %158, label %160, label %159

159:                                              ; preds = %152, %143
  tail call void @x264_frame_expand_border_mod16(ptr noundef %68, ptr noundef nonnull %138) #15
  br label %160

160:                                              ; preds = %159, %152
  %161 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 5
  %162 = load i32, ptr %161, align 4, !tbaa !115
  %163 = add nsw i32 %162, 1
  store i32 %163, ptr %161, align 4, !tbaa !115
  %164 = getelementptr inbounds %struct.x264_frame, ptr %138, i64 0, i32 10
  store i32 %162, ptr %164, align 8, !tbaa !305
  %165 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 10
  %166 = load i32, ptr %165, align 8, !tbaa !101
  %167 = icmp ne i32 %166, 0
  %168 = icmp eq i32 %162, %166
  %169 = select i1 %167, i1 %168, i1 false
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = getelementptr inbounds %struct.x264_frame, ptr %138, i64 0, i32 3
  %172 = load i64, ptr %171, align 16, !tbaa !306
  %173 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 11
  store i64 %172, ptr %173, align 16, !tbaa !307
  br label %174

174:                                              ; preds = %170, %160
  %175 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 47
  %176 = load i32, ptr %175, align 8, !tbaa !98
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %185, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.x264_frame, ptr %138, i64 0, i32 3
  %180 = load i64, ptr %179, align 16, !tbaa !306
  %181 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 14
  %182 = load i64, ptr %181, align 16, !tbaa !308
  %183 = icmp sgt i64 %180, %182
  br i1 %183, label %185, label %184

184:                                              ; preds = %178
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %68, i32 noundef 1, ptr noundef nonnull @.str.23) #15
  br label %185

185:                                              ; preds = %184, %178, %174
  %186 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 14
  %187 = load i64, ptr %186, align 16, !tbaa !308
  %188 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 15
  store i64 %187, ptr %188, align 8, !tbaa !309
  %189 = getelementptr inbounds %struct.x264_frame, ptr %138, i64 0, i32 3
  %190 = load i64, ptr %189, align 16, !tbaa !306
  store i64 %190, ptr %186, align 16, !tbaa !308
  %191 = getelementptr inbounds %struct.x264_frame, ptr %138, i64 0, i32 15
  %192 = load i32, ptr %191, align 4, !tbaa !310
  %193 = icmp ugt i32 %192, 9
  br i1 %193, label %194, label %195

194:                                              ; preds = %185
  store i32 0, ptr %191, align 4, !tbaa !310
  br label %195

195:                                              ; preds = %185, %194
  %196 = load i32, ptr %191, align 4, !tbaa !310
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.x264_frame, ptr %138, i64 0, i32 9
  %200 = load ptr, ptr %199, align 16, !tbaa !311
  %201 = icmp eq ptr %200, null
  %202 = select i1 %201, ptr %68, ptr %200
  %203 = getelementptr inbounds %struct.x264_param_t, ptr %202, i64 0, i32 26
  %204 = load i32, ptr %203, align 8, !tbaa !312
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %202, i64 0, i32 53
  %208 = load i32, ptr %207, align 8, !tbaa !313
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, i32 5, i32 4
  br label %211

211:                                              ; preds = %198, %206
  %212 = phi i32 [ %210, %206 ], [ 1, %198 ]
  store i32 %212, ptr %191, align 4, !tbaa !310
  br label %213

213:                                              ; preds = %211, %195
  %214 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 16
  %215 = load i32, ptr %214, align 16, !tbaa !110
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 41, i32 3
  %219 = load i32, ptr %218, align 4, !tbaa !109
  switch i32 %219, label %221 [
    i32 -1, label %220
    i32 2, label %220
  ]

220:                                              ; preds = %217, %217
  tail call void @x264_weight_plane_analyse(ptr noundef %68, ptr noundef nonnull %138) #15
  br label %221

221:                                              ; preds = %217, %220
  tail call void @x264_frame_init_lowres(ptr noundef %68, ptr noundef nonnull %138) #15
  br label %222

222:                                              ; preds = %221, %213
  %223 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 42, i32 16
  %224 = load i32, ptr %223, align 8, !tbaa !93
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 42, i32 20
  %228 = load i32, ptr %227, align 8, !tbaa !91
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %226
  %231 = tail call i32 @x264_macroblock_tree_read(ptr noundef %68, ptr noundef nonnull %138) #15
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %238, label %248

233:                                              ; preds = %226, %222
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 42, i32 14
  %235 = load i32, ptr %234, align 8, !tbaa !191
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %233
  tail call void @x264_adaptive_quant_frame(ptr noundef %68, ptr noundef nonnull %138) #15
  br label %238

238:                                              ; preds = %233, %237, %230
  tail call void @x264_lookahead_put_frame(ptr noundef %68, ptr noundef nonnull %138) #15
  %239 = load i32, ptr %161, align 4, !tbaa !115
  %240 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 9
  %241 = load i32, ptr %240, align 4, !tbaa !92
  %242 = add nsw i32 %241, 1
  %243 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 12
  %244 = load i32, ptr %243, align 4, !tbaa !96
  %245 = sub i32 %242, %244
  %246 = icmp sgt i32 %239, %245
  br i1 %246, label %248, label %247

247:                                              ; preds = %238
  store i32 0, ptr %4, align 8, !tbaa !314
  br label %248

248:                                              ; preds = %238, %230, %140, %137, %247
  %249 = phi i1 [ false, %247 ], [ false, %137 ], [ false, %140 ], [ false, %230 ], [ true, %238 ]
  %250 = phi i32 [ 0, %247 ], [ -1, %137 ], [ -1, %140 ], [ -1, %230 ], [ undef, %238 ]
  br i1 %249, label %254, label %4740

251:                                              ; preds = %133
  %252 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 75
  %253 = load ptr, ptr %252, align 16, !tbaa !317
  store volatile i8 1, ptr %253, align 8, !tbaa !318
  br label %254

254:                                              ; preds = %248, %251
  %255 = phi i32 [ %250, %248 ], [ undef, %251 ]
  %256 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 10
  %257 = load i32, ptr %256, align 4, !tbaa !68
  %258 = add nsw i32 %257, 1
  store i32 %258, ptr %256, align 4, !tbaa !68
  %259 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43
  %260 = load ptr, ptr %259, align 16, !tbaa !117
  %261 = load ptr, ptr %260, align 8, !tbaa !116
  %262 = icmp eq ptr %261, null
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  tail call void @x264_lookahead_get_frames(ptr noundef %68) #15
  br label %264

264:                                              ; preds = %263, %254
  %265 = load ptr, ptr %259, align 16, !tbaa !117
  %266 = load ptr, ptr %265, align 8, !tbaa !116
  %267 = icmp eq ptr %266, null
  br i1 %267, label %268, label %273

268:                                              ; preds = %264
  %269 = tail call i32 @x264_lookahead_is_empty(ptr noundef %68) #15
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %273, label %271

271:                                              ; preds = %268
  %272 = tail call fastcc i32 @x264_encoder_frame_end(ptr noundef %67, ptr noundef %68, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4)
  br label %4740

273:                                              ; preds = %268, %264
  %274 = load ptr, ptr %259, align 16, !tbaa !117
  %275 = tail call ptr @x264_frame_shift(ptr noundef %274) #15
  %276 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 44
  store ptr %275, ptr %276, align 8, !tbaa !290
  %277 = load i32, ptr %256, align 4, !tbaa !68
  %278 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 12
  %279 = load i32, ptr %278, align 4, !tbaa !96
  %280 = add nsw i32 %279, -1
  %281 = icmp eq i32 %277, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %273
  %283 = getelementptr inbounds %struct.x264_frame, ptr %275, i64 0, i32 4
  %284 = load i64, ptr %283, align 8, !tbaa !321
  %285 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 53
  store i64 %284, ptr %285, align 8, !tbaa !322
  br label %286

286:                                              ; preds = %282, %273
  %287 = getelementptr inbounds %struct.x264_frame, ptr %275, i64 0, i32 9
  %288 = load ptr, ptr %287, align 16, !tbaa !311
  %289 = icmp eq ptr %288, null
  br i1 %289, label %299, label %290

290:                                              ; preds = %286
  %291 = tail call i32 @x264_encoder_reconfig(ptr noundef %68, ptr noundef nonnull %288), !range !44
  %292 = load ptr, ptr %276, align 8, !tbaa !290
  %293 = getelementptr inbounds %struct.x264_frame, ptr %292, i64 0, i32 9
  %294 = load ptr, ptr %293, align 16, !tbaa !311
  %295 = getelementptr inbounds %struct.x264_param_t, ptr %294, i64 0, i32 59
  %296 = load ptr, ptr %295, align 8, !tbaa !34
  %297 = icmp eq ptr %296, null
  br i1 %297, label %299, label %298

298:                                              ; preds = %290
  tail call void %296(ptr noundef %294) #15
  br label %299

299:                                              ; preds = %290, %298, %286
  %300 = load ptr, ptr %276, align 8, !tbaa !290
  %301 = getelementptr inbounds %struct.x264_frame, ptr %300, i64 0, i32 16
  %302 = load i32, ptr %301, align 16, !tbaa !323
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %314, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.x264_frame, ptr %300, i64 0, i32 10
  %306 = load i32, ptr %305, align 8, !tbaa !305
  %307 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 4
  store i32 %306, ptr %307, align 16, !tbaa !114
  %308 = load ptr, ptr %276, align 8, !tbaa !290
  %309 = getelementptr inbounds %struct.x264_frame, ptr %308, i64 0, i32 1
  %310 = load i32, ptr %309, align 4, !tbaa !324
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %312, label %314

312:                                              ; preds = %304
  %313 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  store i32 0, ptr %313, align 8, !tbaa !69
  br label %314

314:                                              ; preds = %304, %312, %299
  %315 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 23
  store i32 0, ptr %315, align 16, !tbaa !325
  %316 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 24
  store i32 0, ptr %316, align 4, !tbaa !297
  %317 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 50
  %318 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 50, i64 1
  store i32 0, ptr %318, align 4, !tbaa !145
  store i32 0, ptr %317, align 8, !tbaa !145
  %319 = getelementptr inbounds %struct.x264_frame, ptr %300, i64 0, i32 1
  %320 = load i32, ptr %319, align 4, !tbaa !324
  switch i32 %320, label %579 [
    i32 1, label %321
    i32 2, label %333
    i32 3, label %414
    i32 4, label %495
  ]

321:                                              ; preds = %314
  %322 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 2
  store i32 2, ptr %322, align 16, !tbaa !326
  %323 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3
  %324 = load ptr, ptr %323, align 16, !tbaa !116
  %325 = icmp eq ptr %324, null
  br i1 %325, label %330, label %326

326:                                              ; preds = %321, %326
  %327 = tail call ptr @x264_frame_pop(ptr noundef nonnull %323) #15
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %327) #15
  %328 = load ptr, ptr %323, align 16, !tbaa !116
  %329 = icmp eq ptr %328, null
  br i1 %329, label %330, label %326, !llvm.loop !327

330:                                              ; preds = %326, %321
  %331 = load ptr, ptr %276, align 8, !tbaa !290
  store i32 0, ptr %331, align 16, !tbaa !300
  %332 = load ptr, ptr %69, align 16, !tbaa !164
  store i32 0, ptr %332, align 16, !tbaa !300
  br label %581

333:                                              ; preds = %314
  %334 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 2
  store i32 2, ptr %334, align 16, !tbaa !326
  %335 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 20
  %336 = load i32, ptr %335, align 16, !tbaa !74
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %581, label %338

338:                                              ; preds = %333
  %339 = load ptr, ptr %259, align 16, !tbaa !117
  %340 = load ptr, ptr %339, align 8, !tbaa !116
  %341 = icmp eq ptr %340, null
  br i1 %341, label %351, label %342

342:                                              ; preds = %338
  %343 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  br label %344

344:                                              ; preds = %342, %360
  %345 = phi i64 [ 0, %342 ], [ %372, %360 ]
  %346 = phi ptr [ %340, %342 ], [ %374, %360 ]
  %347 = phi i32 [ 0, %342 ], [ %371, %360 ]
  %348 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 1
  %349 = load i32, ptr %348, align 4, !tbaa !324
  %350 = icmp eq i32 %349, 5
  br i1 %350, label %360, label %351

351:                                              ; preds = %360, %344, %338
  %352 = phi i32 [ 0, %338 ], [ %371, %360 ], [ %347, %344 ]
  %353 = icmp eq i32 %336, 1
  %354 = icmp ne i32 %352, 0
  %355 = select i1 %353, i1 true, i1 %354
  br i1 %355, label %356, label %581

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 0
  %358 = load ptr, ptr %357, align 8, !tbaa !116
  %359 = icmp eq ptr %358, null
  br i1 %359, label %407, label %376

360:                                              ; preds = %344
  %361 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 11
  %362 = load i32, ptr %361, align 4, !tbaa !328
  %363 = getelementptr inbounds %struct.x264_frame, ptr %346, i64 0, i32 10
  %364 = load i32, ptr %363, align 8, !tbaa !305
  %365 = load ptr, ptr %343, align 16, !tbaa !77
  %366 = getelementptr inbounds %struct.x264_sps_t, ptr %365, i64 0, i32 24, i32 29
  %367 = load i32, ptr %366, align 4, !tbaa !104
  %368 = add nsw i32 %367, %364
  %369 = icmp ne i32 %362, %368
  %370 = zext i1 %369 to i32
  %371 = or i32 %347, %370
  %372 = add nuw i64 %345, 1
  %373 = getelementptr inbounds ptr, ptr %339, i64 %372
  %374 = load ptr, ptr %373, align 8, !tbaa !116
  %375 = icmp eq ptr %374, null
  br i1 %375, label %351, label %344, !llvm.loop !329

376:                                              ; preds = %356, %400
  %377 = phi i64 [ %401, %400 ], [ 0, %356 ]
  %378 = phi ptr [ %403, %400 ], [ %358, %356 ]
  br i1 %353, label %379, label %400

379:                                              ; preds = %376
  %380 = getelementptr inbounds %struct.x264_frame, ptr %378, i64 0, i32 1
  %381 = load i32, ptr %380, align 4, !tbaa !324
  %382 = icmp eq i32 %381, 4
  br i1 %382, label %383, label %400

383:                                              ; preds = %379
  %384 = trunc i64 %377 to i32
  %385 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3
  %386 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %377
  %387 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %388 = load i32, ptr %387, align 8, !tbaa !69
  %389 = getelementptr inbounds %struct.x264_frame, ptr %378, i64 0, i32 13
  %390 = load i32, ptr %389, align 4, !tbaa !330
  %391 = sub nsw i32 %388, %390
  %392 = load i32, ptr %316, align 4, !tbaa !297
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %393
  store i32 %391, ptr %394, align 8, !tbaa !331
  %395 = load ptr, ptr %386, align 8, !tbaa !116
  %396 = load i32, ptr %395, align 16, !tbaa !300
  %397 = add nsw i32 %392, 1
  store i32 %397, ptr %316, align 4, !tbaa !297
  %398 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %393, i32 1
  store i32 %396, ptr %398, align 4, !tbaa !301
  %399 = tail call ptr @x264_frame_pop(ptr noundef nonnull %385) #15
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %399) #15
  store i32 1, ptr %317, align 8, !tbaa !145
  br label %407

400:                                              ; preds = %379, %376
  %401 = add nuw i64 %377, 1
  %402 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !116
  %404 = icmp eq ptr %403, null
  br i1 %404, label %405, label %376, !llvm.loop !332

405:                                              ; preds = %400
  %406 = trunc i64 %401 to i32
  br label %407

407:                                              ; preds = %405, %356, %383
  %408 = phi i32 [ %384, %383 ], [ 0, %356 ], [ %406, %405 ]
  %409 = add nuw nsw i32 %408, 2
  %410 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 6
  %411 = load i32, ptr %410, align 8, !tbaa !107
  %412 = sub i32 %409, %411
  %413 = tail call i32 @llvm.smax.i32(i32 %412, i32 0)
  store i32 %413, ptr %315, align 16, !tbaa !325
  br label %581

414:                                              ; preds = %314
  %415 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 2
  store i32 0, ptr %415, align 16, !tbaa !326
  %416 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 20
  %417 = load i32, ptr %416, align 16, !tbaa !74
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %581, label %419

419:                                              ; preds = %414
  %420 = load ptr, ptr %259, align 16, !tbaa !117
  %421 = load ptr, ptr %420, align 8, !tbaa !116
  %422 = icmp eq ptr %421, null
  br i1 %422, label %432, label %423

423:                                              ; preds = %419
  %424 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  br label %425

425:                                              ; preds = %423, %441
  %426 = phi i64 [ 0, %423 ], [ %453, %441 ]
  %427 = phi ptr [ %421, %423 ], [ %455, %441 ]
  %428 = phi i32 [ 0, %423 ], [ %452, %441 ]
  %429 = getelementptr inbounds %struct.x264_frame, ptr %427, i64 0, i32 1
  %430 = load i32, ptr %429, align 4, !tbaa !324
  %431 = icmp eq i32 %430, 5
  br i1 %431, label %441, label %432

432:                                              ; preds = %441, %425, %419
  %433 = phi i32 [ 0, %419 ], [ %452, %441 ], [ %428, %425 ]
  %434 = icmp eq i32 %417, 1
  %435 = icmp ne i32 %433, 0
  %436 = select i1 %434, i1 true, i1 %435
  br i1 %436, label %437, label %581

437:                                              ; preds = %432
  %438 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 0
  %439 = load ptr, ptr %438, align 8, !tbaa !116
  %440 = icmp eq ptr %439, null
  br i1 %440, label %488, label %457

441:                                              ; preds = %425
  %442 = getelementptr inbounds %struct.x264_frame, ptr %427, i64 0, i32 11
  %443 = load i32, ptr %442, align 4, !tbaa !328
  %444 = getelementptr inbounds %struct.x264_frame, ptr %427, i64 0, i32 10
  %445 = load i32, ptr %444, align 8, !tbaa !305
  %446 = load ptr, ptr %424, align 16, !tbaa !77
  %447 = getelementptr inbounds %struct.x264_sps_t, ptr %446, i64 0, i32 24, i32 29
  %448 = load i32, ptr %447, align 4, !tbaa !104
  %449 = add nsw i32 %448, %445
  %450 = icmp ne i32 %443, %449
  %451 = zext i1 %450 to i32
  %452 = or i32 %428, %451
  %453 = add nuw i64 %426, 1
  %454 = getelementptr inbounds ptr, ptr %420, i64 %453
  %455 = load ptr, ptr %454, align 8, !tbaa !116
  %456 = icmp eq ptr %455, null
  br i1 %456, label %432, label %425, !llvm.loop !329

457:                                              ; preds = %437, %481
  %458 = phi i64 [ %482, %481 ], [ 0, %437 ]
  %459 = phi ptr [ %484, %481 ], [ %439, %437 ]
  br i1 %434, label %460, label %481

460:                                              ; preds = %457
  %461 = getelementptr inbounds %struct.x264_frame, ptr %459, i64 0, i32 1
  %462 = load i32, ptr %461, align 4, !tbaa !324
  %463 = icmp eq i32 %462, 4
  br i1 %463, label %464, label %481

464:                                              ; preds = %460
  %465 = trunc i64 %458 to i32
  %466 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3
  %467 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %458
  %468 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %469 = load i32, ptr %468, align 8, !tbaa !69
  %470 = getelementptr inbounds %struct.x264_frame, ptr %459, i64 0, i32 13
  %471 = load i32, ptr %470, align 4, !tbaa !330
  %472 = sub nsw i32 %469, %471
  %473 = load i32, ptr %316, align 4, !tbaa !297
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %474
  store i32 %472, ptr %475, align 8, !tbaa !331
  %476 = load ptr, ptr %467, align 8, !tbaa !116
  %477 = load i32, ptr %476, align 16, !tbaa !300
  %478 = add nsw i32 %473, 1
  store i32 %478, ptr %316, align 4, !tbaa !297
  %479 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %474, i32 1
  store i32 %477, ptr %479, align 4, !tbaa !301
  %480 = tail call ptr @x264_frame_pop(ptr noundef nonnull %466) #15
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %480) #15
  store i32 1, ptr %317, align 8, !tbaa !145
  br label %488

481:                                              ; preds = %460, %457
  %482 = add nuw i64 %458, 1
  %483 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %482
  %484 = load ptr, ptr %483, align 8, !tbaa !116
  %485 = icmp eq ptr %484, null
  br i1 %485, label %486, label %457, !llvm.loop !332

486:                                              ; preds = %481
  %487 = trunc i64 %482 to i32
  br label %488

488:                                              ; preds = %486, %437, %464
  %489 = phi i32 [ %465, %464 ], [ 0, %437 ], [ %487, %486 ]
  %490 = add nuw nsw i32 %489, 2
  %491 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 6
  %492 = load i32, ptr %491, align 8, !tbaa !107
  %493 = sub i32 %490, %492
  %494 = tail call i32 @llvm.smax.i32(i32 %493, i32 0)
  store i32 %494, ptr %315, align 16, !tbaa !325
  br label %581

495:                                              ; preds = %314
  %496 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 20
  %497 = load i32, ptr %496, align 16, !tbaa !74
  %498 = icmp eq i32 %497, 1
  %499 = select i1 %498, i32 1, i32 2
  %500 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 2
  store i32 1, ptr %500, align 16, !tbaa !326
  %501 = icmp eq i32 %497, 0
  br i1 %501, label %581, label %502

502:                                              ; preds = %495
  %503 = load ptr, ptr %259, align 16, !tbaa !117
  %504 = load ptr, ptr %503, align 8, !tbaa !116
  %505 = icmp eq ptr %504, null
  br i1 %505, label %515, label %506

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  br label %508

508:                                              ; preds = %506, %525
  %509 = phi i64 [ 0, %506 ], [ %537, %525 ]
  %510 = phi ptr [ %504, %506 ], [ %539, %525 ]
  %511 = phi i32 [ 0, %506 ], [ %536, %525 ]
  %512 = getelementptr inbounds %struct.x264_frame, ptr %510, i64 0, i32 1
  %513 = load i32, ptr %512, align 4, !tbaa !324
  %514 = icmp eq i32 %513, 5
  br i1 %514, label %525, label %515

515:                                              ; preds = %525, %508, %502
  %516 = phi i32 [ 0, %502 ], [ %536, %525 ], [ %511, %508 ]
  %517 = load i32, ptr %496, align 16, !tbaa !74
  %518 = icmp eq i32 %517, 1
  %519 = icmp ne i32 %516, 0
  %520 = select i1 %518, i1 true, i1 %519
  br i1 %520, label %521, label %581

521:                                              ; preds = %515
  %522 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 0
  %523 = load ptr, ptr %522, align 8, !tbaa !116
  %524 = icmp eq ptr %523, null
  br i1 %524, label %572, label %541

525:                                              ; preds = %508
  %526 = getelementptr inbounds %struct.x264_frame, ptr %510, i64 0, i32 11
  %527 = load i32, ptr %526, align 4, !tbaa !328
  %528 = getelementptr inbounds %struct.x264_frame, ptr %510, i64 0, i32 10
  %529 = load i32, ptr %528, align 8, !tbaa !305
  %530 = load ptr, ptr %507, align 16, !tbaa !77
  %531 = getelementptr inbounds %struct.x264_sps_t, ptr %530, i64 0, i32 24, i32 29
  %532 = load i32, ptr %531, align 4, !tbaa !104
  %533 = add nsw i32 %532, %529
  %534 = icmp ne i32 %527, %533
  %535 = zext i1 %534 to i32
  %536 = or i32 %511, %535
  %537 = add nuw i64 %509, 1
  %538 = getelementptr inbounds ptr, ptr %503, i64 %537
  %539 = load ptr, ptr %538, align 8, !tbaa !116
  %540 = icmp eq ptr %539, null
  br i1 %540, label %515, label %508, !llvm.loop !329

541:                                              ; preds = %521, %565
  %542 = phi i64 [ %566, %565 ], [ 0, %521 ]
  %543 = phi ptr [ %568, %565 ], [ %523, %521 ]
  br i1 %518, label %544, label %565

544:                                              ; preds = %541
  %545 = getelementptr inbounds %struct.x264_frame, ptr %543, i64 0, i32 1
  %546 = load i32, ptr %545, align 4, !tbaa !324
  %547 = icmp eq i32 %546, 4
  br i1 %547, label %548, label %565

548:                                              ; preds = %544
  %549 = trunc i64 %542 to i32
  %550 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3
  %551 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %542
  %552 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %553 = load i32, ptr %552, align 8, !tbaa !69
  %554 = getelementptr inbounds %struct.x264_frame, ptr %543, i64 0, i32 13
  %555 = load i32, ptr %554, align 4, !tbaa !330
  %556 = sub nsw i32 %553, %555
  %557 = load i32, ptr %316, align 4, !tbaa !297
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %558
  store i32 %556, ptr %559, align 8, !tbaa !331
  %560 = load ptr, ptr %551, align 8, !tbaa !116
  %561 = load i32, ptr %560, align 16, !tbaa !300
  %562 = add nsw i32 %557, 1
  store i32 %562, ptr %316, align 4, !tbaa !297
  %563 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %558, i32 1
  store i32 %561, ptr %563, align 4, !tbaa !301
  %564 = tail call ptr @x264_frame_pop(ptr noundef nonnull %550) #15
  tail call void @x264_frame_push_unused(ptr noundef %68, ptr noundef %564) #15
  store i32 1, ptr %317, align 8, !tbaa !145
  br label %572

565:                                              ; preds = %544, %541
  %566 = add nuw i64 %542, 1
  %567 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %566
  %568 = load ptr, ptr %567, align 8, !tbaa !116
  %569 = icmp eq ptr %568, null
  br i1 %569, label %570, label %541, !llvm.loop !332

570:                                              ; preds = %565
  %571 = trunc i64 %566 to i32
  br label %572

572:                                              ; preds = %570, %521, %548
  %573 = phi i32 [ %549, %548 ], [ 0, %521 ], [ %571, %570 ]
  %574 = add nuw nsw i32 %573, 2
  %575 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 6
  %576 = load i32, ptr %575, align 8, !tbaa !107
  %577 = sub i32 %574, %576
  %578 = tail call i32 @llvm.smax.i32(i32 %577, i32 0)
  store i32 %578, ptr %315, align 16, !tbaa !325
  br label %581

579:                                              ; preds = %314
  %580 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 2
  store i32 1, ptr %580, align 16, !tbaa !326
  br label %581

581:                                              ; preds = %572, %515, %495, %488, %432, %414, %407, %351, %333, %579, %330
  %582 = phi i32 [ 3, %330 ], [ 0, %579 ], [ 2, %333 ], [ 2, %351 ], [ 2, %407 ], [ 2, %414 ], [ 2, %432 ], [ 2, %488 ], [ %499, %495 ], [ %499, %515 ], [ %499, %572 ]
  %583 = phi i1 [ true, %330 ], [ false, %579 ], [ false, %333 ], [ false, %351 ], [ false, %407 ], [ false, %414 ], [ false, %432 ], [ false, %488 ], [ false, %495 ], [ false, %515 ], [ false, %572 ]
  %584 = phi i32 [ 5, %330 ], [ 1, %579 ], [ 1, %333 ], [ 1, %351 ], [ 1, %407 ], [ 1, %414 ], [ 1, %432 ], [ 1, %488 ], [ 1, %495 ], [ 1, %515 ], [ 1, %572 ]
  %585 = load ptr, ptr %276, align 8, !tbaa !290
  %586 = getelementptr inbounds %struct.x264_frame, ptr %585, i64 0, i32 10
  %587 = load i32, ptr %586, align 8, !tbaa !305
  %588 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 4
  %589 = load i32, ptr %588, align 16, !tbaa !114
  %590 = sub nsw i32 %587, %589
  %591 = shl nsw i32 %590, 1
  store i32 %591, ptr %585, align 16, !tbaa !300
  %592 = load ptr, ptr %69, align 16, !tbaa !164
  store i32 %591, ptr %592, align 16, !tbaa !300
  %593 = getelementptr inbounds %struct.x264_frame, ptr %585, i64 0, i32 1
  %594 = load i32, ptr %593, align 4, !tbaa !324
  %595 = getelementptr inbounds %struct.x264_frame, ptr %592, i64 0, i32 1
  store i32 %594, ptr %595, align 4, !tbaa !324
  %596 = getelementptr inbounds %struct.x264_frame, ptr %592, i64 0, i32 10
  store i32 %587, ptr %596, align 8, !tbaa !305
  %597 = icmp eq i32 %582, 0
  br i1 %597, label %602, label %598

598:                                              ; preds = %581
  %599 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 13
  %600 = load i32, ptr %599, align 4, !tbaa !113
  %601 = icmp sgt i32 %600, 1
  br label %602

602:                                              ; preds = %598, %581
  %603 = phi i1 [ false, %581 ], [ %601, %598 ]
  %604 = zext i1 %603 to i32
  %605 = getelementptr inbounds %struct.x264_frame, ptr %592, i64 0, i32 14
  store i32 %604, ptr %605, align 8, !tbaa !296
  %606 = getelementptr inbounds %struct.x264_frame, ptr %585, i64 0, i32 14
  store i32 %604, ptr %606, align 8, !tbaa !296
  %607 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 46
  store i32 0, ptr %607, align 8, !tbaa !119
  %608 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 66, i32 19
  store i32 0, ptr %608, align 8, !tbaa !145
  %609 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 48
  store i32 0, ptr %609, align 8, !tbaa !120
  %610 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 66, i32 19, i64 1
  store i32 0, ptr %610, align 4, !tbaa !145
  %611 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 2
  %612 = load i32, ptr %611, align 16, !tbaa !326
  %613 = icmp eq i32 %612, 2
  br i1 %613, label %906, label %614

614:                                              ; preds = %602
  %615 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 0
  %616 = load ptr, ptr %615, align 8, !tbaa !116
  %617 = icmp eq ptr %616, null
  br i1 %617, label %618, label %623

618:                                              ; preds = %642, %614
  %619 = load i32, ptr %607, align 8, !tbaa !119
  %620 = tail call i32 @llvm.smax.i32(i32 %619, i32 1)
  %621 = add nsw i32 %620, -1
  %622 = zext nneg i32 %621 to i64
  br label %647

623:                                              ; preds = %614, %642
  %624 = phi i64 [ %643, %642 ], [ 0, %614 ]
  %625 = phi ptr [ %645, %642 ], [ %616, %614 ]
  %626 = load i32, ptr %625, align 16, !tbaa !300
  %627 = icmp slt i32 %626, %591
  br i1 %627, label %628, label %633

628:                                              ; preds = %623
  %629 = load i32, ptr %607, align 8, !tbaa !119
  %630 = add nsw i32 %629, 1
  store i32 %630, ptr %607, align 8, !tbaa !119
  %631 = sext i32 %629 to i64
  %632 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %631
  br label %640

633:                                              ; preds = %623
  %634 = icmp sgt i32 %626, %591
  br i1 %634, label %635, label %642

635:                                              ; preds = %633
  %636 = load i32, ptr %609, align 8, !tbaa !120
  %637 = add nsw i32 %636, 1
  store i32 %637, ptr %609, align 8, !tbaa !120
  %638 = sext i32 %636 to i64
  %639 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 49, i64 %638
  br label %640

640:                                              ; preds = %628, %635
  %641 = phi ptr [ %639, %635 ], [ %632, %628 ]
  store ptr %625, ptr %641, align 8, !tbaa !116
  br label %642

642:                                              ; preds = %640, %633
  %643 = add nuw nsw i64 %624, 1
  %644 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 3, i64 %643
  %645 = load ptr, ptr %644, align 8, !tbaa !116
  %646 = icmp eq ptr %645, null
  br i1 %646, label %618, label %623, !llvm.loop !333

647:                                              ; preds = %618, %660
  br label %648

648:                                              ; preds = %651, %647
  %649 = phi i64 [ %655, %651 ], [ 0, %647 ]
  %650 = icmp eq i64 %649, %622
  br i1 %650, label %663, label %651

651:                                              ; preds = %648
  %652 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %649
  %653 = load ptr, ptr %652, align 8, !tbaa !116
  %654 = load i32, ptr %653, align 16, !tbaa !300
  %655 = add nuw nsw i64 %649, 1
  %656 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %655
  %657 = load ptr, ptr %656, align 8, !tbaa !116
  %658 = load i32, ptr %657, align 16, !tbaa !300
  %659 = icmp slt i32 %654, %658
  br i1 %659, label %660, label %648, !llvm.loop !334

660:                                              ; preds = %651
  %661 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %649
  %662 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %655
  store ptr %657, ptr %661, align 8, !tbaa !116
  store ptr %653, ptr %662, align 8, !tbaa !116
  br label %647, !llvm.loop !335

663:                                              ; preds = %648
  %664 = load i32, ptr %315, align 16, !tbaa !325
  %665 = icmp eq i32 %664, 0
  br i1 %665, label %694, label %666

666:                                              ; preds = %663
  %667 = load i32, ptr %607, align 8, !tbaa !119
  %668 = load i32, ptr %315, align 16, !tbaa !325
  %669 = sub nsw i32 %667, %668
  %670 = icmp sgt i32 %619, %669
  br i1 %670, label %671, label %694

671:                                              ; preds = %666
  %672 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %673 = load i32, ptr %672, align 8, !tbaa !69
  %674 = load i32, ptr %316, align 4, !tbaa !297
  %675 = sext i32 %674 to i64
  %676 = sext i32 %619 to i64
  %677 = sext i32 %669 to i64
  br label %678

678:                                              ; preds = %671, %678
  %679 = phi i64 [ %676, %671 ], [ %681, %678 ]
  %680 = phi i64 [ %675, %671 ], [ %689, %678 ]
  %681 = add nsw i64 %679, -1
  %682 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %681
  %683 = load ptr, ptr %682, align 8, !tbaa !116
  %684 = getelementptr inbounds %struct.x264_frame, ptr %683, i64 0, i32 13
  %685 = load i32, ptr %684, align 4, !tbaa !330
  %686 = sub nsw i32 %673, %685
  %687 = load i32, ptr %683, align 16, !tbaa !300
  %688 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %680, i32 1
  store i32 %687, ptr %688, align 4, !tbaa !301
  %689 = add nsw i64 %680, 1
  %690 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %680
  store i32 %686, ptr %690, align 8, !tbaa !331
  %691 = icmp sgt i64 %681, %677
  br i1 %691, label %678, label %692, !llvm.loop !336

692:                                              ; preds = %678
  %693 = trunc i64 %689 to i32
  store i32 %693, ptr %316, align 4, !tbaa !297
  br label %694

694:                                              ; preds = %666, %692, %663
  %695 = load i32, ptr %609, align 8, !tbaa !120
  %696 = tail call i32 @llvm.smax.i32(i32 %695, i32 1)
  %697 = add nsw i32 %696, -1
  %698 = zext nneg i32 %697 to i64
  br label %699

699:                                              ; preds = %720, %694
  br label %700

700:                                              ; preds = %711, %699
  %701 = phi i64 [ %715, %711 ], [ 0, %699 ]
  %702 = icmp eq i64 %701, %698
  br i1 %702, label %703, label %711

703:                                              ; preds = %700
  %704 = load i32, ptr %607, align 8, !tbaa !119
  %705 = icmp sgt i32 %704, 1
  br i1 %705, label %706, label %747

706:                                              ; preds = %703
  %707 = add nsw i32 %704, -1
  %708 = load i32, ptr %611, align 16, !tbaa !326
  %709 = icmp eq i32 %708, 0
  %710 = zext i32 %707 to i64
  br label %723

711:                                              ; preds = %700
  %712 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 49, i64 %701
  %713 = load ptr, ptr %712, align 8, !tbaa !116
  %714 = load i32, ptr %713, align 16, !tbaa !300
  %715 = add nuw nsw i64 %701, 1
  %716 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 49, i64 %715
  %717 = load ptr, ptr %716, align 8, !tbaa !116
  %718 = load i32, ptr %717, align 16, !tbaa !300
  %719 = icmp sgt i32 %714, %718
  br i1 %719, label %720, label %700, !llvm.loop !337

720:                                              ; preds = %711
  %721 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 49, i64 %701
  %722 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 49, i64 %715
  store ptr %717, ptr %721, align 8, !tbaa !116
  store ptr %713, ptr %722, align 8, !tbaa !116
  br label %699, !llvm.loop !338

723:                                              ; preds = %706, %744
  %724 = phi i64 [ 0, %706 ], [ %745, %744 ]
  %725 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %724
  %726 = load ptr, ptr %725, align 8, !tbaa !116
  br i1 %709, label %727, label %736

727:                                              ; preds = %723
  %728 = getelementptr inbounds %struct.x264_frame, ptr %726, i64 0, i32 13
  %729 = load i32, ptr %728, align 4, !tbaa !330
  %730 = add nuw nsw i64 %724, 1
  %731 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %730
  %732 = load ptr, ptr %731, align 8, !tbaa !116
  %733 = getelementptr inbounds %struct.x264_frame, ptr %732, i64 0, i32 13
  %734 = load i32, ptr %733, align 4, !tbaa !330
  %735 = icmp slt i32 %729, %734
  br i1 %735, label %743, label %744

736:                                              ; preds = %723
  %737 = load i32, ptr %726, align 16, !tbaa !300
  %738 = add nuw nsw i64 %724, 1
  %739 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %738
  %740 = load ptr, ptr %739, align 8, !tbaa !116
  %741 = load i32, ptr %740, align 16, !tbaa !300
  %742 = icmp slt i32 %737, %741
  br i1 %742, label %743, label %744

743:                                              ; preds = %736, %727
  store i32 1, ptr %317, align 8, !tbaa !145
  br label %747

744:                                              ; preds = %736, %727
  %745 = add nuw nsw i64 %724, 1
  %746 = icmp eq i64 %745, %710
  br i1 %746, label %747, label %723, !llvm.loop !339

747:                                              ; preds = %744, %703, %743
  %748 = load i32, ptr %609, align 8, !tbaa !120
  %749 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 8
  %750 = load i32, ptr %749, align 16, !tbaa !105
  %751 = tail call i32 @llvm.smin.i32(i32 %748, i32 %750)
  store i32 %751, ptr %609, align 8, !tbaa !120
  %752 = load i32, ptr %607, align 8, !tbaa !119
  %753 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 43, i32 7
  %754 = load i32, ptr %753, align 4, !tbaa !103
  %755 = tail call i32 @llvm.smin.i32(i32 %752, i32 %754)
  store i32 %755, ptr %607, align 8, !tbaa !119
  %756 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 12
  %757 = load i32, ptr %756, align 16, !tbaa !102
  %758 = tail call i32 @llvm.smin.i32(i32 %755, i32 %757)
  store i32 %758, ptr %607, align 8, !tbaa !119
  %759 = load ptr, ptr %276, align 8, !tbaa !290
  %760 = getelementptr inbounds %struct.x264_frame, ptr %759, i64 0, i32 1
  %761 = load i32, ptr %760, align 4, !tbaa !324
  %762 = icmp eq i32 %761, 3
  br i1 %762, label %763, label %903

763:                                              ; preds = %747
  %764 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 41, i32 3
  %765 = load i32, ptr %764, align 4, !tbaa !109
  switch i32 %765, label %900 [
    i32 2, label %766
    i32 1, label %869
  ]

766:                                              ; preds = %763
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %8) #15
  %767 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %8, i64 0, i64 2, i32 5
  store ptr null, ptr %767, align 16, !tbaa !340
  %768 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %8, i64 0, i64 1, i32 5
  store ptr null, ptr %768, align 16, !tbaa !340
  %769 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 42, i32 20
  %770 = load i32, ptr %769, align 8, !tbaa !91
  %771 = icmp eq i32 %770, 0
  br i1 %771, label %774, label %772

772:                                              ; preds = %766
  %773 = load ptr, ptr %276, align 8, !tbaa !290
  tail call void @x264_ratecontrol_set_weights(ptr noundef %68, ptr noundef %773) #15
  br label %774

774:                                              ; preds = %772, %766
  %775 = load ptr, ptr %276, align 8, !tbaa !290
  %776 = getelementptr inbounds %struct.x264_frame, ptr %775, i64 0, i32 37, i64 0, i64 0, i32 5
  %777 = load ptr, ptr %776, align 16, !tbaa !340
  %778 = icmp eq ptr %777, null
  br i1 %778, label %779, label %800

779:                                              ; preds = %774
  %780 = getelementptr inbounds %struct.x264_frame, ptr %775, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 0, ptr %780, align 16, !tbaa !342
  %781 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 3
  store i32 1, ptr %781, align 4, !tbaa !343
  %782 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 2
  store i32 0, ptr %782, align 16, !tbaa !342
  %783 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  store i32 -1, ptr %783, align 8, !tbaa !344
  %784 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 70, i32 20
  %785 = load ptr, ptr %784, align 8, !tbaa !345
  call void %785(ptr noundef %68, ptr noundef nonnull %8) #15
  %786 = load i32, ptr %607, align 8, !tbaa !119
  %787 = icmp slt i32 %786, 2
  br i1 %787, label %867, label %788

788:                                              ; preds = %779
  %789 = call ptr @x264_frame_pop_blank_unused(ptr noundef %68) #15
  %790 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 0
  %791 = load ptr, ptr %790, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %789, ptr noundef nonnull align 16 dereferenceable(15632) %791, i64 15632, i1 false), !tbaa.struct !284
  %792 = getelementptr inbounds %struct.x264_frame, ptr %789, i64 0, i32 78
  store i32 1, ptr %792, align 16, !tbaa !285
  %793 = load ptr, ptr %790, align 8, !tbaa !116
  %794 = getelementptr inbounds %struct.x264_frame, ptr %789, i64 0, i32 40
  store ptr %793, ptr %794, align 8, !tbaa !288
  %795 = getelementptr inbounds %struct.x264_frame, ptr %789, i64 0, i32 39
  store i32 1, ptr %795, align 16, !tbaa !289
  %796 = load ptr, ptr %276, align 8, !tbaa !290
  %797 = getelementptr inbounds %struct.x264_frame, ptr %796, i64 0, i32 37, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %797, ptr noundef nonnull align 16 dereferenceable(192) %8, i64 192, i1 false)
  store i32 1, ptr %317, align 8, !tbaa !145
  %798 = load i32, ptr %607, align 8, !tbaa !119
  %799 = icmp slt i32 %798, 16
  br i1 %799, label %859, label %863

800:                                              ; preds = %774
  %801 = getelementptr inbounds %struct.x264_frame, ptr %775, i64 0, i32 37, i64 0, i64 0, i32 3
  %802 = load i32, ptr %801, align 4, !tbaa !343
  %803 = getelementptr inbounds %struct.x264_frame, ptr %775, i64 0, i32 37, i64 0, i64 0, i32 2
  %804 = load i32, ptr %803, align 16, !tbaa !342
  %805 = shl nuw i32 1, %804
  %806 = icmp eq i32 %802, %805
  br i1 %806, label %807, label %813

807:                                              ; preds = %800
  store i32 1, ptr %801, align 4, !tbaa !343
  %808 = load ptr, ptr %276, align 8, !tbaa !290
  %809 = getelementptr inbounds %struct.x264_frame, ptr %808, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 0, ptr %809, align 16, !tbaa !342
  %810 = getelementptr inbounds %struct.x264_frame, ptr %808, i64 0, i32 37
  %811 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 70, i32 20
  %812 = load ptr, ptr %811, align 8, !tbaa !345
  tail call void %812(ptr noundef %68, ptr noundef nonnull %810) #15
  br label %813

813:                                              ; preds = %807, %800
  %814 = load i32, ptr %607, align 8, !tbaa !119
  %815 = icmp slt i32 %814, 2
  br i1 %815, label %833, label %816

816:                                              ; preds = %813
  %817 = tail call ptr @x264_frame_pop_blank_unused(ptr noundef %68) #15
  %818 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 0
  %819 = load ptr, ptr %818, align 8, !tbaa !116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %817, ptr noundef nonnull align 16 dereferenceable(15632) %819, i64 15632, i1 false), !tbaa.struct !284
  %820 = getelementptr inbounds %struct.x264_frame, ptr %817, i64 0, i32 78
  store i32 1, ptr %820, align 16, !tbaa !285
  %821 = load ptr, ptr %818, align 8, !tbaa !116
  %822 = getelementptr inbounds %struct.x264_frame, ptr %817, i64 0, i32 40
  store ptr %821, ptr %822, align 8, !tbaa !288
  %823 = getelementptr inbounds %struct.x264_frame, ptr %817, i64 0, i32 39
  store i32 1, ptr %823, align 16, !tbaa !289
  %824 = load ptr, ptr %276, align 8, !tbaa !290
  %825 = getelementptr inbounds %struct.x264_frame, ptr %824, i64 0, i32 37, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %825, ptr noundef nonnull align 16 dereferenceable(192) @weight_none, i64 192, i1 false)
  store i32 1, ptr %317, align 8, !tbaa !145
  %826 = load i32, ptr %607, align 8, !tbaa !119
  %827 = icmp slt i32 %826, 16
  br i1 %827, label %828, label %830

828:                                              ; preds = %816
  %829 = add nsw i32 %826, 1
  store i32 %829, ptr %607, align 8, !tbaa !119
  br label %830

830:                                              ; preds = %828, %816
  %831 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 15
  store ptr null, ptr %831, align 8, !tbaa !116
  %832 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 1
  tail call void @x264_frame_unshift(ptr noundef nonnull %832, ptr noundef %817) #15
  br label %833

833:                                              ; preds = %813, %830
  %834 = load ptr, ptr %276, align 8, !tbaa !290
  %835 = getelementptr inbounds %struct.x264_frame, ptr %834, i64 0, i32 37, i64 0, i64 0, i32 4
  %836 = load i32, ptr %835, align 8, !tbaa !344
  %837 = icmp sgt i32 %836, -128
  br i1 %837, label %838, label %867

838:                                              ; preds = %833
  %839 = getelementptr inbounds %struct.x264_frame, ptr %834, i64 0, i32 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(64) %839, i64 64, i1 false), !tbaa.struct !346
  %840 = getelementptr inbounds %struct.x264_weight_t, ptr %8, i64 0, i32 4
  %841 = load i32, ptr %840, align 8, !tbaa !344
  %842 = add nsw i32 %841, -1
  store i32 %842, ptr %840, align 8, !tbaa !344
  %843 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 70, i32 20
  %844 = load ptr, ptr %843, align 8, !tbaa !345
  call void %844(ptr noundef %68, ptr noundef nonnull %8) #15
  %845 = load i32, ptr %607, align 8, !tbaa !119
  %846 = icmp slt i32 %845, 2
  br i1 %846, label %867, label %847

847:                                              ; preds = %838
  %848 = call ptr @x264_frame_pop_blank_unused(ptr noundef %68) #15
  %849 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 0
  %850 = load ptr, ptr %849, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %848, ptr noundef nonnull align 16 dereferenceable(15632) %850, i64 15632, i1 false), !tbaa.struct !284
  %851 = getelementptr inbounds %struct.x264_frame, ptr %848, i64 0, i32 78
  store i32 1, ptr %851, align 16, !tbaa !285
  %852 = load ptr, ptr %849, align 8, !tbaa !116
  %853 = getelementptr inbounds %struct.x264_frame, ptr %848, i64 0, i32 40
  store ptr %852, ptr %853, align 8, !tbaa !288
  %854 = getelementptr inbounds %struct.x264_frame, ptr %848, i64 0, i32 39
  store i32 1, ptr %854, align 16, !tbaa !289
  %855 = load ptr, ptr %276, align 8, !tbaa !290
  %856 = getelementptr inbounds %struct.x264_frame, ptr %855, i64 0, i32 37, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %856, ptr noundef nonnull align 16 dereferenceable(192) %8, i64 192, i1 false)
  store i32 1, ptr %317, align 8, !tbaa !145
  %857 = load i32, ptr %607, align 8, !tbaa !119
  %858 = icmp slt i32 %857, 16
  br i1 %858, label %859, label %863

859:                                              ; preds = %847, %788
  %860 = phi i32 [ %798, %788 ], [ %857, %847 ]
  %861 = phi ptr [ %789, %788 ], [ %848, %847 ]
  %862 = add nsw i32 %860, 1
  store i32 %862, ptr %607, align 8, !tbaa !119
  br label %863

863:                                              ; preds = %859, %847, %788
  %864 = phi ptr [ %789, %788 ], [ %848, %847 ], [ %861, %859 ]
  %865 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 15
  store ptr null, ptr %865, align 8, !tbaa !116
  %866 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 1
  call void @x264_frame_unshift(ptr noundef nonnull %866, ptr noundef %864) #15
  br label %867

867:                                              ; preds = %863, %838, %779, %833
  %868 = phi i32 [ -1, %833 ], [ -1, %779 ], [ -1, %838 ], [ 1, %863 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %8) #15
  br label %900

869:                                              ; preds = %763
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %9) #15
  %870 = getelementptr inbounds %struct.x264_weight_t, ptr %9, i64 0, i32 3
  store i32 1, ptr %870, align 4, !tbaa !343
  %871 = getelementptr inbounds %struct.x264_weight_t, ptr %9, i64 0, i32 2
  store i32 0, ptr %871, align 16, !tbaa !342
  %872 = getelementptr inbounds %struct.x264_weight_t, ptr %9, i64 0, i32 4
  store i32 -1, ptr %872, align 8, !tbaa !344
  %873 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 70, i32 20
  %874 = load ptr, ptr %873, align 8, !tbaa !345
  call void %874(ptr noundef %68, ptr noundef nonnull %9) #15
  %875 = load ptr, ptr %276, align 8, !tbaa !290
  %876 = getelementptr inbounds %struct.x264_frame, ptr %875, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 0, ptr %876, align 16, !tbaa !342
  %877 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %9, i64 0, i64 2, i32 5
  store ptr null, ptr %877, align 16, !tbaa !340
  %878 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %9, i64 0, i64 1, i32 5
  store ptr null, ptr %878, align 16, !tbaa !340
  %879 = load i32, ptr %607, align 8, !tbaa !119
  %880 = icmp slt i32 %879, 2
  br i1 %880, label %898, label %881

881:                                              ; preds = %869
  %882 = call ptr @x264_frame_pop_blank_unused(ptr noundef %68) #15
  %883 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 0
  %884 = load ptr, ptr %883, align 8, !tbaa !116
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %882, ptr noundef nonnull align 16 dereferenceable(15632) %884, i64 15632, i1 false), !tbaa.struct !284
  %885 = getelementptr inbounds %struct.x264_frame, ptr %882, i64 0, i32 78
  store i32 1, ptr %885, align 16, !tbaa !285
  %886 = load ptr, ptr %883, align 8, !tbaa !116
  %887 = getelementptr inbounds %struct.x264_frame, ptr %882, i64 0, i32 40
  store ptr %886, ptr %887, align 8, !tbaa !288
  %888 = getelementptr inbounds %struct.x264_frame, ptr %882, i64 0, i32 39
  store i32 1, ptr %888, align 16, !tbaa !289
  %889 = load ptr, ptr %276, align 8, !tbaa !290
  %890 = getelementptr inbounds %struct.x264_frame, ptr %889, i64 0, i32 37, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %890, ptr noundef nonnull align 16 dereferenceable(192) %9, i64 192, i1 false)
  store i32 1, ptr %317, align 8, !tbaa !145
  %891 = load i32, ptr %607, align 8, !tbaa !119
  %892 = icmp slt i32 %891, 16
  br i1 %892, label %893, label %895

893:                                              ; preds = %881
  %894 = add nsw i32 %891, 1
  store i32 %894, ptr %607, align 8, !tbaa !119
  br label %895

895:                                              ; preds = %893, %881
  %896 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 15
  store ptr null, ptr %896, align 8, !tbaa !116
  %897 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 1
  call void @x264_frame_unshift(ptr noundef nonnull %897, ptr noundef %882) #15
  br label %898

898:                                              ; preds = %869, %895
  %899 = phi i32 [ 1, %895 ], [ -1, %869 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %9) #15
  br label %900

900:                                              ; preds = %898, %867, %763
  %901 = phi i32 [ %868, %867 ], [ %899, %898 ], [ -1, %763 ]
  %902 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 84
  store i32 %901, ptr %902, align 4, !tbaa !347
  br label %903

903:                                              ; preds = %900, %747
  %904 = load i32, ptr %607, align 8, !tbaa !119
  store i32 %904, ptr %608, align 8, !tbaa !145
  %905 = load i32, ptr %609, align 8, !tbaa !120
  store i32 %905, ptr %610, align 4, !tbaa !145
  br label %906

906:                                              ; preds = %602, %903
  %907 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 2
  %908 = load i32, ptr %907, align 8, !tbaa !158
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %950, label %910

910:                                              ; preds = %906
  %911 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 1
  %912 = load i32, ptr %911, align 4, !tbaa !154
  %913 = icmp sgt i32 %912, 0
  br i1 %913, label %914, label %977

914:                                              ; preds = %910
  %915 = zext nneg i32 %912 to i64
  br label %916

916:                                              ; preds = %914, %916
  %917 = phi i64 [ 0, %914 ], [ %948, %916 ]
  %918 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 1, i64 %917
  %919 = load ptr, ptr %918, align 8, !tbaa !116
  %920 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 5
  %921 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 4
  %922 = load ptr, ptr %921, align 8, !tbaa !165
  %923 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 3
  %924 = load i32, ptr %923, align 16, !tbaa !151
  %925 = ptrtoint ptr %922 to i64
  %926 = and i64 %925, 3
  %927 = sub nsw i64 0, %926
  %928 = getelementptr inbounds i8, ptr %922, i64 %927
  store ptr %928, ptr %920, align 8, !tbaa !271
  %929 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 5, i32 1
  store ptr %928, ptr %929, align 8, !tbaa !272
  %930 = sext i32 %924 to i64
  %931 = getelementptr inbounds i8, ptr %922, i64 %930
  %932 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 5, i32 2
  store ptr %931, ptr %932, align 8, !tbaa !273
  %933 = trunc i64 %926 to i32
  %934 = shl nuw nsw i32 %933, 3
  %935 = sub nuw nsw i32 64, %934
  %936 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 5, i32 4
  store i32 %935, ptr %936, align 8, !tbaa !274
  %937 = load ptr, ptr %929, align 8, !tbaa !272
  %938 = load i32, ptr %937, align 4, !tbaa !160
  %939 = call i32 @llvm.bswap.i32(i32 %938)
  %940 = zext i32 %939 to i64
  %941 = getelementptr inbounds %struct.x264_t, ptr %919, i64 0, i32 7, i32 5, i32 3
  %942 = shl i64 %925, 3
  %943 = and i64 %942, 24
  %944 = sub nuw nsw i64 32, %943
  %945 = lshr i64 %940, %944
  store i64 %945, ptr %941, align 8, !tbaa !275
  %946 = load ptr, ptr %918, align 8, !tbaa !116
  %947 = getelementptr inbounds %struct.x264_t, ptr %946, i64 0, i32 7
  store i32 0, ptr %947, align 16, !tbaa !146
  %948 = add nuw nsw i64 %917, 1
  %949 = icmp eq i64 %948, %915
  br i1 %949, label %977, label %916, !llvm.loop !348

950:                                              ; preds = %906
  %951 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %952 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %953 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %954 = load ptr, ptr %953, align 8, !tbaa !165
  %955 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 3
  %956 = load i32, ptr %955, align 16, !tbaa !151
  %957 = ptrtoint ptr %954 to i64
  %958 = and i64 %957, 3
  %959 = sub nsw i64 0, %958
  %960 = getelementptr inbounds i8, ptr %954, i64 %959
  store ptr %960, ptr %952, align 8, !tbaa !271
  %961 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  store ptr %960, ptr %961, align 8, !tbaa !272
  %962 = sext i32 %956 to i64
  %963 = getelementptr inbounds i8, ptr %954, i64 %962
  %964 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 2
  store ptr %963, ptr %964, align 8, !tbaa !273
  %965 = trunc i64 %958 to i32
  %966 = shl nuw nsw i32 %965, 3
  %967 = sub nuw nsw i32 64, %966
  %968 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  store i32 %967, ptr %968, align 8, !tbaa !274
  %969 = load i32, ptr %960, align 4, !tbaa !160
  %970 = call i32 @llvm.bswap.i32(i32 %969)
  %971 = zext i32 %970 to i64
  %972 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 3
  %973 = shl i64 %957, 3
  %974 = and i64 %973, 24
  %975 = sub nuw nsw i64 32, %974
  %976 = lshr i64 %971, %975
  store i64 %976, ptr %972, align 8, !tbaa !275
  store i32 0, ptr %951, align 16, !tbaa !146
  br label %977

977:                                              ; preds = %916, %910, %950
  %978 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 43
  %979 = load i32, ptr %978, align 8, !tbaa !227
  %980 = icmp eq i32 %979, 0
  br i1 %980, label %1130, label %981

981:                                              ; preds = %977
  %982 = load i32, ptr %611, align 16, !tbaa !326
  %983 = icmp ult i32 %982, 3
  br i1 %983, label %984, label %988

984:                                              ; preds = %981
  %985 = zext nneg i32 %982 to i64
  %986 = getelementptr inbounds [3 x i64], ptr @switch.table.x264_encoder_encode, i64 0, i64 %985
  %987 = load i64, ptr %986, align 8
  br label %988

988:                                              ; preds = %981, %984
  %989 = phi i64 [ %987, %984 ], [ 7, %981 ]
  %990 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %991 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %992 = load ptr, ptr %991, align 8, !tbaa !166
  %993 = load i32, ptr %990, align 16, !tbaa !146
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds %struct.x264_nal_t, ptr %992, i64 %994
  store i32 0, ptr %995, align 8, !tbaa !276
  %996 = getelementptr inbounds %struct.x264_nal_t, ptr %992, i64 %994, i32 1
  store i32 9, ptr %996, align 4, !tbaa !278
  %997 = getelementptr inbounds %struct.x264_nal_t, ptr %992, i64 %994, i32 2
  store i32 0, ptr %997, align 8, !tbaa !279
  %998 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %999 = load ptr, ptr %998, align 8, !tbaa !165
  %1000 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %1001 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  %1002 = load ptr, ptr %1001, align 8, !tbaa !272
  %1003 = load ptr, ptr %1000, align 8, !tbaa !271
  %1004 = ptrtoint ptr %1002 to i64
  %1005 = ptrtoint ptr %1003 to i64
  %1006 = sub i64 %1004, %1005
  %1007 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  %1008 = load i32, ptr %1007, align 8, !tbaa !274
  %1009 = trunc i64 %1006 to i32
  %1010 = shl i32 %1009, 3
  %1011 = sub i32 %1010, %1008
  %1012 = add i32 %1011, 64
  %1013 = sdiv i32 %1012, 8
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i8, ptr %999, i64 %1014
  %1016 = getelementptr inbounds %struct.x264_nal_t, ptr %992, i64 %994, i32 3
  store ptr %1015, ptr %1016, align 8, !tbaa !280
  %1017 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 3
  %1018 = load i64, ptr %1017, align 8, !tbaa !275
  %1019 = shl i64 %1018, 3
  %1020 = or disjoint i64 %1019, %989
  store i64 %1020, ptr %1017, align 8, !tbaa !275
  %1021 = load i32, ptr %1007, align 8, !tbaa !274
  %1022 = add nsw i32 %1021, -3
  store i32 %1022, ptr %1007, align 8, !tbaa !274
  %1023 = icmp slt i32 %1021, 36
  br i1 %1023, label %1024, label %1035

1024:                                             ; preds = %988
  %1025 = load i64, ptr %1017, align 8, !tbaa !275
  %1026 = zext nneg i32 %1022 to i64
  %1027 = shl i64 %1025, %1026
  %1028 = call i64 @llvm.bswap.i64(i64 %1027)
  %1029 = trunc i64 %1028 to i32
  %1030 = load ptr, ptr %1001, align 8, !tbaa !272
  store i32 %1029, ptr %1030, align 4, !tbaa !160
  %1031 = load i32, ptr %1007, align 8, !tbaa !274
  %1032 = add nsw i32 %1031, 32
  store i32 %1032, ptr %1007, align 8, !tbaa !274
  %1033 = load ptr, ptr %1001, align 8, !tbaa !272
  %1034 = getelementptr inbounds i8, ptr %1033, i64 4
  store ptr %1034, ptr %1001, align 8, !tbaa !272
  br label %1035

1035:                                             ; preds = %988, %1024
  %1036 = load i64, ptr %1017, align 8, !tbaa !275
  %1037 = shl i64 %1036, 1
  %1038 = or disjoint i64 %1037, 1
  store i64 %1038, ptr %1017, align 8, !tbaa !275
  %1039 = load i32, ptr %1007, align 8, !tbaa !274
  %1040 = add nsw i32 %1039, -1
  store i32 %1040, ptr %1007, align 8, !tbaa !274
  %1041 = icmp eq i32 %1040, 32
  br i1 %1041, label %1042, label %1049

1042:                                             ; preds = %1035
  %1043 = load i64, ptr %1017, align 8, !tbaa !275
  %1044 = trunc i64 %1043 to i32
  %1045 = call i32 @llvm.bswap.i32(i32 %1044)
  %1046 = load ptr, ptr %1001, align 8, !tbaa !272
  store i32 %1045, ptr %1046, align 4, !tbaa !160
  %1047 = load ptr, ptr %1001, align 8, !tbaa !272
  %1048 = getelementptr inbounds i8, ptr %1047, i64 4
  store ptr %1048, ptr %1001, align 8, !tbaa !272
  store i32 64, ptr %1007, align 8, !tbaa !274
  br label %1049

1049:                                             ; preds = %1042, %1035
  %1050 = load i32, ptr %1007, align 8, !tbaa !274
  %1051 = and i32 %1050, 7
  %1052 = load i64, ptr %1017, align 8, !tbaa !275
  %1053 = zext nneg i32 %1051 to i64
  %1054 = shl i64 %1052, %1053
  store i64 %1054, ptr %1017, align 8, !tbaa !275
  %1055 = and i32 %1050, -8
  store i32 %1055, ptr %1007, align 8, !tbaa !274
  %1056 = icmp slt i32 %1055, 33
  br i1 %1056, label %1057, label %1068

1057:                                             ; preds = %1049
  %1058 = load i64, ptr %1017, align 8, !tbaa !275
  %1059 = zext nneg i32 %1055 to i64
  %1060 = call i64 @llvm.bswap.i64(i64 %1058)
  %1061 = lshr i64 %1060, %1059
  %1062 = trunc i64 %1061 to i32
  %1063 = load ptr, ptr %1001, align 8, !tbaa !272
  store i32 %1062, ptr %1063, align 4, !tbaa !160
  %1064 = load i32, ptr %1007, align 8, !tbaa !274
  %1065 = add nsw i32 %1064, 32
  store i32 %1065, ptr %1007, align 8, !tbaa !274
  %1066 = load ptr, ptr %1001, align 8, !tbaa !272
  %1067 = getelementptr inbounds i8, ptr %1066, i64 4
  store ptr %1067, ptr %1001, align 8, !tbaa !272
  br label %1068

1068:                                             ; preds = %1049, %1057
  %1069 = load ptr, ptr %991, align 8, !tbaa !166
  %1070 = load i32, ptr %990, align 16, !tbaa !146
  %1071 = sext i32 %1070 to i64
  %1072 = load ptr, ptr %998, align 8, !tbaa !165
  %1073 = load ptr, ptr %1001, align 8, !tbaa !272
  %1074 = load ptr, ptr %1000, align 8, !tbaa !271
  %1075 = ptrtoint ptr %1073 to i64
  %1076 = ptrtoint ptr %1074 to i64
  %1077 = sub i64 %1075, %1076
  %1078 = load i32, ptr %1007, align 8, !tbaa !274
  %1079 = trunc i64 %1077 to i32
  %1080 = shl i32 %1079, 3
  %1081 = sub i32 %1080, %1078
  %1082 = add i32 %1081, 64
  %1083 = sdiv i32 %1082, 8
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds i8, ptr %1072, i64 %1084
  %1086 = getelementptr inbounds %struct.x264_nal_t, ptr %1069, i64 %1071, i32 3
  %1087 = load ptr, ptr %1086, align 8, !tbaa !280
  %1088 = ptrtoint ptr %1085 to i64
  %1089 = ptrtoint ptr %1087 to i64
  %1090 = sub i64 %1088, %1089
  %1091 = trunc i64 %1090 to i32
  %1092 = getelementptr inbounds %struct.x264_nal_t, ptr %1069, i64 %1071, i32 2
  store i32 %1091, ptr %1092, align 8, !tbaa !279
  %1093 = load i32, ptr %990, align 16, !tbaa !146
  %1094 = add nsw i32 %1093, 1
  store i32 %1094, ptr %990, align 16, !tbaa !146
  %1095 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %1096 = load i32, ptr %1095, align 4, !tbaa !167
  %1097 = icmp slt i32 %1094, %1096
  br i1 %1097, label %1110, label %1098

1098:                                             ; preds = %1068
  %1099 = mul i32 %1096, 48
  %1100 = call ptr @x264_malloc(i32 noundef %1099) #15
  %1101 = icmp eq ptr %1100, null
  br i1 %1101, label %1110, label %1102

1102:                                             ; preds = %1098
  %1103 = load ptr, ptr %991, align 8, !tbaa !166
  %1104 = load i32, ptr %1095, align 4, !tbaa !167
  %1105 = sext i32 %1104 to i64
  %1106 = mul nsw i64 %1105, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1100, ptr align 8 %1103, i64 %1106, i1 false)
  %1107 = load ptr, ptr %991, align 8, !tbaa !166
  call void @x264_free(ptr noundef %1107) #15
  store ptr %1100, ptr %991, align 8, !tbaa !166
  %1108 = load i32, ptr %1095, align 4, !tbaa !167
  %1109 = shl nsw i32 %1108, 1
  store i32 %1109, ptr %1095, align 4, !tbaa !167
  br label %1110

1110:                                             ; preds = %1068, %1098, %1102
  %1111 = phi i1 [ false, %1098 ], [ true, %1102 ], [ true, %1068 ]
  br i1 %1111, label %1112, label %1127

1112:                                             ; preds = %1110
  %1113 = load ptr, ptr %991, align 8, !tbaa !166
  %1114 = load i32, ptr %990, align 16, !tbaa !146
  %1115 = add nsw i32 %1114, -1
  %1116 = sext i32 %1115 to i64
  %1117 = getelementptr inbounds %struct.x264_nal_t, ptr %1113, i64 %1116, i32 2
  %1118 = load i32, ptr %1117, align 8, !tbaa !279
  %1119 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 45
  %1120 = load i32, ptr %1119, align 16, !tbaa !229
  %1121 = icmp ne i32 %1120, 0
  %1122 = icmp ne i32 %1115, 0
  %1123 = and i1 %1122, %1121
  %1124 = sext i1 %1123 to i32
  %1125 = add i32 %1118, 10
  %1126 = add i32 %1125, %1124
  br label %1127

1127:                                             ; preds = %1110, %1112
  %1128 = phi i32 [ %1126, %1112 ], [ 5, %1110 ]
  %1129 = phi i32 [ %255, %1112 ], [ -1, %1110 ]
  br i1 %1111, label %1130, label %4740

1130:                                             ; preds = %1127, %977
  %1131 = phi i32 [ %1128, %1127 ], [ 5, %977 ]
  %1132 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 13
  store i32 %584, ptr %1132, align 16, !tbaa !349
  %1133 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 14
  store i32 %582, ptr %1133, align 4, !tbaa !350
  %1134 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 16
  %1135 = load i32, ptr %1134, align 16, !tbaa !196
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1220, label %1137

1137:                                             ; preds = %1130
  %1138 = load ptr, ptr %276, align 8, !tbaa !290
  %1139 = getelementptr inbounds %struct.x264_frame, ptr %1138, i64 0, i32 1
  %1140 = load i32, ptr %1139, align 4, !tbaa !324
  switch i32 %1140, label %1220 [
    i32 2, label %1141
    i32 1, label %1141
    i32 3, label %1152
  ]

1141:                                             ; preds = %1137, %1137
  %1142 = load ptr, ptr %69, align 16, !tbaa !164
  %1143 = getelementptr inbounds %struct.x264_frame, ptr %1142, i64 0, i32 84
  store i32 0, ptr %1143, align 8, !tbaa !351
  %1144 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 22
  store i32 0, ptr %1144, align 4, !tbaa !291
  %1145 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %1146 = load ptr, ptr %1145, align 16, !tbaa !77
  %1147 = getelementptr inbounds %struct.x264_sps_t, ptr %1146, i64 0, i32 16
  %1148 = load i32, ptr %1147, align 4, !tbaa !83
  %1149 = sitofp i32 %1148 to float
  %1150 = load ptr, ptr %69, align 16, !tbaa !164
  %1151 = getelementptr inbounds %struct.x264_frame, ptr %1150, i64 0, i32 81
  store float %1149, ptr %1151, align 4, !tbaa !352
  br label %1220

1152:                                             ; preds = %1137
  %1153 = load ptr, ptr %69, align 16, !tbaa !164
  %1154 = load i32, ptr %1153, align 16, !tbaa !300
  %1155 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47
  %1156 = load ptr, ptr %1155, align 16, !tbaa !116
  %1157 = load i32, ptr %1156, align 16, !tbaa !300
  %1158 = sub nsw i32 %1154, %1157
  %1159 = sdiv i32 %1158, 2
  %1160 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %1161 = load ptr, ptr %1160, align 16, !tbaa !77
  %1162 = getelementptr inbounds %struct.x264_sps_t, ptr %1161, i64 0, i32 16
  %1163 = load i32, ptr %1162, align 4, !tbaa !83
  %1164 = sitofp i32 %1163 to float
  %1165 = fadd float %1164, -1.000000e+00
  %1166 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 13
  %1167 = load i32, ptr %1166, align 4, !tbaa !113
  %1168 = sitofp i32 %1167 to float
  %1169 = fdiv float %1165, %1168
  %1170 = fcmp ogt float %1169, 1.000000e+00
  %1171 = select i1 %1170, float %1169, float 1.000000e+00
  %1172 = getelementptr inbounds %struct.x264_frame, ptr %1156, i64 0, i32 81
  %1173 = load float, ptr %1172, align 4, !tbaa !352
  %1174 = getelementptr inbounds %struct.x264_frame, ptr %1153, i64 0, i32 81
  store float %1173, ptr %1174, align 4, !tbaa !352
  %1175 = getelementptr inbounds %struct.x264_frame, ptr %1156, i64 0, i32 84
  %1176 = load i32, ptr %1175, align 8, !tbaa !351
  %1177 = add nsw i32 %1176, %1159
  %1178 = getelementptr inbounds %struct.x264_frame, ptr %1153, i64 0, i32 84
  store i32 %1177, ptr %1178, align 8, !tbaa !351
  %1179 = load ptr, ptr %69, align 16, !tbaa !164
  %1180 = getelementptr inbounds %struct.x264_frame, ptr %1179, i64 0, i32 84
  %1181 = load i32, ptr %1180, align 8, !tbaa !351
  %1182 = load i32, ptr %1166, align 4, !tbaa !113
  %1183 = icmp slt i32 %1181, %1182
  br i1 %1183, label %1184, label %1198

1184:                                             ; preds = %1152
  %1185 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 22
  %1186 = load i32, ptr %1185, align 4, !tbaa !291
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1203, label %1188

1188:                                             ; preds = %1184
  %1189 = getelementptr inbounds %struct.x264_frame, ptr %1179, i64 0, i32 81
  %1190 = load float, ptr %1189, align 4, !tbaa !352
  %1191 = fpext float %1190 to double
  %1192 = fadd double %1191, 5.000000e-01
  %1193 = load ptr, ptr %1160, align 16, !tbaa !77
  %1194 = getelementptr inbounds %struct.x264_sps_t, ptr %1193, i64 0, i32 16
  %1195 = load i32, ptr %1194, align 4, !tbaa !83
  %1196 = sitofp i32 %1195 to double
  %1197 = fcmp ult double %1192, %1196
  br i1 %1197, label %1203, label %1198

1198:                                             ; preds = %1188, %1152
  %1199 = getelementptr inbounds %struct.x264_frame, ptr %1179, i64 0, i32 81
  store float 0.000000e+00, ptr %1199, align 4, !tbaa !352
  store i32 0, ptr %1180, align 8, !tbaa !351
  %1200 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 22
  store i32 0, ptr %1200, align 4, !tbaa !291
  %1201 = load ptr, ptr %276, align 8, !tbaa !290
  %1202 = getelementptr inbounds %struct.x264_frame, ptr %1201, i64 0, i32 16
  store i32 1, ptr %1202, align 16, !tbaa !323
  br label %1203

1203:                                             ; preds = %1198, %1188, %1184
  %1204 = load ptr, ptr %69, align 16, !tbaa !164
  %1205 = getelementptr inbounds %struct.x264_frame, ptr %1204, i64 0, i32 81
  %1206 = load float, ptr %1205, align 4, !tbaa !352
  %1207 = fpext float %1206 to double
  %1208 = fadd double %1207, 5.000000e-01
  %1209 = fptosi double %1208 to i32
  %1210 = getelementptr inbounds %struct.x264_frame, ptr %1204, i64 0, i32 82
  store i32 %1209, ptr %1210, align 16, !tbaa !353
  %1211 = sitofp i32 %1159 to float
  %1212 = load ptr, ptr %69, align 16, !tbaa !164
  %1213 = getelementptr inbounds %struct.x264_frame, ptr %1212, i64 0, i32 81
  %1214 = load float, ptr %1213, align 4, !tbaa !352
  %1215 = call float @llvm.fmuladd.f32(float %1171, float %1211, float %1214)
  store float %1215, ptr %1213, align 4, !tbaa !352
  %1216 = fpext float %1215 to double
  %1217 = fadd double %1216, 5.000000e-01
  %1218 = fptosi double %1217 to i32
  %1219 = getelementptr inbounds %struct.x264_frame, ptr %1212, i64 0, i32 83
  store i32 %1218, ptr %1219, align 4, !tbaa !354
  br label %1220

1220:                                             ; preds = %1137, %1141, %1203, %1130
  %1221 = load ptr, ptr %276, align 8, !tbaa !290
  %1222 = getelementptr inbounds %struct.x264_frame, ptr %1221, i64 0, i32 16
  %1223 = load i32, ptr %1222, align 16, !tbaa !323
  %1224 = icmp eq i32 %1223, 0
  br i1 %1224, label %1573, label %1225

1225:                                             ; preds = %1220
  %1226 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 44
  %1227 = load i32, ptr %1226, align 4, !tbaa !228
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1375, label %1229

1229:                                             ; preds = %1225
  %1230 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %1231 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %1232 = load ptr, ptr %1231, align 8, !tbaa !166
  %1233 = load i32, ptr %1230, align 16, !tbaa !146
  %1234 = sext i32 %1233 to i64
  %1235 = getelementptr inbounds %struct.x264_nal_t, ptr %1232, i64 %1234
  store i32 3, ptr %1235, align 8, !tbaa !276
  %1236 = getelementptr inbounds %struct.x264_nal_t, ptr %1232, i64 %1234, i32 1
  store i32 7, ptr %1236, align 4, !tbaa !278
  %1237 = getelementptr inbounds %struct.x264_nal_t, ptr %1232, i64 %1234, i32 2
  store i32 0, ptr %1237, align 8, !tbaa !279
  %1238 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %1239 = load ptr, ptr %1238, align 8, !tbaa !165
  %1240 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %1241 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  %1242 = load ptr, ptr %1241, align 8, !tbaa !272
  %1243 = load ptr, ptr %1240, align 8, !tbaa !271
  %1244 = ptrtoint ptr %1242 to i64
  %1245 = ptrtoint ptr %1243 to i64
  %1246 = sub i64 %1244, %1245
  %1247 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  %1248 = load i32, ptr %1247, align 8, !tbaa !274
  %1249 = trunc i64 %1246 to i32
  %1250 = shl i32 %1249, 3
  %1251 = sub i32 %1250, %1248
  %1252 = add i32 %1251, 64
  %1253 = sdiv i32 %1252, 8
  %1254 = sext i32 %1253 to i64
  %1255 = getelementptr inbounds i8, ptr %1239, i64 %1254
  %1256 = getelementptr inbounds %struct.x264_nal_t, ptr %1232, i64 %1234, i32 3
  store ptr %1255, ptr %1256, align 8, !tbaa !280
  %1257 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %1258 = load ptr, ptr %1257, align 16, !tbaa !77
  call void @x264_sps_write(ptr noundef nonnull %1240, ptr noundef %1258) #15
  %1259 = load ptr, ptr %1231, align 8, !tbaa !166
  %1260 = load i32, ptr %1230, align 16, !tbaa !146
  %1261 = sext i32 %1260 to i64
  %1262 = load ptr, ptr %1238, align 8, !tbaa !165
  %1263 = load ptr, ptr %1241, align 8, !tbaa !272
  %1264 = load ptr, ptr %1240, align 8, !tbaa !271
  %1265 = ptrtoint ptr %1263 to i64
  %1266 = ptrtoint ptr %1264 to i64
  %1267 = sub i64 %1265, %1266
  %1268 = load i32, ptr %1247, align 8, !tbaa !274
  %1269 = trunc i64 %1267 to i32
  %1270 = shl i32 %1269, 3
  %1271 = sub i32 %1270, %1268
  %1272 = add i32 %1271, 64
  %1273 = sdiv i32 %1272, 8
  %1274 = sext i32 %1273 to i64
  %1275 = getelementptr inbounds i8, ptr %1262, i64 %1274
  %1276 = getelementptr inbounds %struct.x264_nal_t, ptr %1259, i64 %1261, i32 3
  %1277 = load ptr, ptr %1276, align 8, !tbaa !280
  %1278 = ptrtoint ptr %1275 to i64
  %1279 = ptrtoint ptr %1277 to i64
  %1280 = sub i64 %1278, %1279
  %1281 = trunc i64 %1280 to i32
  %1282 = getelementptr inbounds %struct.x264_nal_t, ptr %1259, i64 %1261, i32 2
  store i32 %1281, ptr %1282, align 8, !tbaa !279
  %1283 = load i32, ptr %1230, align 16, !tbaa !146
  %1284 = add nsw i32 %1283, 1
  store i32 %1284, ptr %1230, align 16, !tbaa !146
  %1285 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %1286 = load i32, ptr %1285, align 4, !tbaa !167
  %1287 = icmp slt i32 %1284, %1286
  br i1 %1287, label %1300, label %1288

1288:                                             ; preds = %1229
  %1289 = mul i32 %1286, 48
  %1290 = call ptr @x264_malloc(i32 noundef %1289) #15
  %1291 = icmp eq ptr %1290, null
  br i1 %1291, label %4740, label %1292

1292:                                             ; preds = %1288
  %1293 = load ptr, ptr %1231, align 8, !tbaa !166
  %1294 = load i32, ptr %1285, align 4, !tbaa !167
  %1295 = sext i32 %1294 to i64
  %1296 = mul nsw i64 %1295, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1290, ptr align 8 %1293, i64 %1296, i1 false)
  %1297 = load ptr, ptr %1231, align 8, !tbaa !166
  call void @x264_free(ptr noundef %1297) #15
  store ptr %1290, ptr %1231, align 8, !tbaa !166
  %1298 = load i32, ptr %1285, align 4, !tbaa !167
  %1299 = shl nsw i32 %1298, 1
  store i32 %1299, ptr %1285, align 4, !tbaa !167
  br label %1300

1300:                                             ; preds = %1292, %1229
  %1301 = load ptr, ptr %1231, align 8, !tbaa !166
  %1302 = load i32, ptr %1230, align 16, !tbaa !146
  %1303 = sext i32 %1302 to i64
  %1304 = getelementptr %struct.x264_nal_t, ptr %1301, i64 %1303
  %1305 = getelementptr %struct.x264_nal_t, ptr %1304, i64 -1, i32 2
  %1306 = load i32, ptr %1305, align 8, !tbaa !279
  store i32 3, ptr %1304, align 8, !tbaa !276
  %1307 = getelementptr inbounds %struct.x264_nal_t, ptr %1301, i64 %1303, i32 1
  store i32 8, ptr %1307, align 4, !tbaa !278
  %1308 = getelementptr inbounds %struct.x264_nal_t, ptr %1301, i64 %1303, i32 2
  store i32 0, ptr %1308, align 8, !tbaa !279
  %1309 = load ptr, ptr %1238, align 8, !tbaa !165
  %1310 = load ptr, ptr %1241, align 8, !tbaa !272
  %1311 = load ptr, ptr %1240, align 8, !tbaa !271
  %1312 = ptrtoint ptr %1310 to i64
  %1313 = ptrtoint ptr %1311 to i64
  %1314 = sub i64 %1312, %1313
  %1315 = load i32, ptr %1247, align 8, !tbaa !274
  %1316 = trunc i64 %1314 to i32
  %1317 = shl i32 %1316, 3
  %1318 = sub i32 %1317, %1315
  %1319 = add i32 %1318, 64
  %1320 = sdiv i32 %1319, 8
  %1321 = sext i32 %1320 to i64
  %1322 = getelementptr inbounds i8, ptr %1309, i64 %1321
  %1323 = getelementptr inbounds %struct.x264_nal_t, ptr %1301, i64 %1303, i32 3
  store ptr %1322, ptr %1323, align 8, !tbaa !280
  %1324 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 26
  %1325 = load ptr, ptr %1324, align 16, !tbaa !79
  call void @x264_pps_write(ptr noundef nonnull %1240, ptr noundef %1325) #15
  %1326 = load ptr, ptr %1231, align 8, !tbaa !166
  %1327 = load i32, ptr %1230, align 16, !tbaa !146
  %1328 = sext i32 %1327 to i64
  %1329 = load ptr, ptr %1238, align 8, !tbaa !165
  %1330 = load ptr, ptr %1241, align 8, !tbaa !272
  %1331 = load ptr, ptr %1240, align 8, !tbaa !271
  %1332 = ptrtoint ptr %1330 to i64
  %1333 = ptrtoint ptr %1331 to i64
  %1334 = sub i64 %1332, %1333
  %1335 = load i32, ptr %1247, align 8, !tbaa !274
  %1336 = trunc i64 %1334 to i32
  %1337 = shl i32 %1336, 3
  %1338 = sub i32 %1337, %1335
  %1339 = add i32 %1338, 64
  %1340 = sdiv i32 %1339, 8
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds i8, ptr %1329, i64 %1341
  %1343 = getelementptr inbounds %struct.x264_nal_t, ptr %1326, i64 %1328, i32 3
  %1344 = load ptr, ptr %1343, align 8, !tbaa !280
  %1345 = ptrtoint ptr %1342 to i64
  %1346 = ptrtoint ptr %1344 to i64
  %1347 = sub i64 %1345, %1346
  %1348 = trunc i64 %1347 to i32
  %1349 = getelementptr inbounds %struct.x264_nal_t, ptr %1326, i64 %1328, i32 2
  store i32 %1348, ptr %1349, align 8, !tbaa !279
  %1350 = add nsw i32 %1327, 1
  store i32 %1350, ptr %1230, align 16, !tbaa !146
  %1351 = load i32, ptr %1285, align 4, !tbaa !167
  %1352 = icmp slt i32 %1350, %1351
  br i1 %1352, label %1365, label %1353

1353:                                             ; preds = %1300
  %1354 = mul i32 %1351, 48
  %1355 = call ptr @x264_malloc(i32 noundef %1354) #15
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %4740, label %1357

1357:                                             ; preds = %1353
  %1358 = load ptr, ptr %1231, align 8, !tbaa !166
  %1359 = load i32, ptr %1285, align 4, !tbaa !167
  %1360 = sext i32 %1359 to i64
  %1361 = mul nsw i64 %1360, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1355, ptr align 8 %1358, i64 %1361, i1 false)
  %1362 = load ptr, ptr %1231, align 8, !tbaa !166
  call void @x264_free(ptr noundef %1362) #15
  store ptr %1355, ptr %1231, align 8, !tbaa !166
  %1363 = load i32, ptr %1285, align 4, !tbaa !167
  %1364 = shl nsw i32 %1363, 1
  store i32 %1364, ptr %1285, align 4, !tbaa !167
  br label %1365

1365:                                             ; preds = %1357, %1300
  %1366 = load ptr, ptr %1231, align 8, !tbaa !166
  %1367 = load i32, ptr %1230, align 16, !tbaa !146
  %1368 = sext i32 %1367 to i64
  %1369 = getelementptr %struct.x264_nal_t, ptr %1366, i64 %1368
  %1370 = getelementptr %struct.x264_nal_t, ptr %1369, i64 -1, i32 2
  %1371 = load i32, ptr %1370, align 8, !tbaa !279
  %1372 = add i32 %1131, 10
  %1373 = add i32 %1372, %1306
  %1374 = add i32 %1373, %1371
  br label %1375

1375:                                             ; preds = %1365, %1225
  %1376 = phi i32 [ %1374, %1365 ], [ %1131, %1225 ]
  %1377 = load i32, ptr %1226, align 4, !tbaa !228
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1471, label %1379

1379:                                             ; preds = %1375
  %1380 = load ptr, ptr %276, align 8, !tbaa !290
  %1381 = getelementptr inbounds %struct.x264_frame, ptr %1380, i64 0, i32 10
  %1382 = load i32, ptr %1381, align 8, !tbaa !305
  %1383 = icmp eq i32 %1382, 0
  br i1 %1383, label %1384, label %1471

1384:                                             ; preds = %1379
  %1385 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %1386 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %1387 = load ptr, ptr %1386, align 8, !tbaa !166
  %1388 = load i32, ptr %1385, align 16, !tbaa !146
  %1389 = sext i32 %1388 to i64
  %1390 = getelementptr inbounds %struct.x264_nal_t, ptr %1387, i64 %1389
  store i32 0, ptr %1390, align 8, !tbaa !276
  %1391 = getelementptr inbounds %struct.x264_nal_t, ptr %1387, i64 %1389, i32 1
  store i32 6, ptr %1391, align 4, !tbaa !278
  %1392 = getelementptr inbounds %struct.x264_nal_t, ptr %1387, i64 %1389, i32 2
  store i32 0, ptr %1392, align 8, !tbaa !279
  %1393 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %1394 = load ptr, ptr %1393, align 8, !tbaa !165
  %1395 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %1396 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  %1397 = load ptr, ptr %1396, align 8, !tbaa !272
  %1398 = load ptr, ptr %1395, align 8, !tbaa !271
  %1399 = ptrtoint ptr %1397 to i64
  %1400 = ptrtoint ptr %1398 to i64
  %1401 = sub i64 %1399, %1400
  %1402 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  %1403 = load i32, ptr %1402, align 8, !tbaa !274
  %1404 = trunc i64 %1401 to i32
  %1405 = shl i32 %1404, 3
  %1406 = sub i32 %1405, %1403
  %1407 = add i32 %1406, 64
  %1408 = sdiv i32 %1407, 8
  %1409 = sext i32 %1408 to i64
  %1410 = getelementptr inbounds i8, ptr %1394, i64 %1409
  %1411 = getelementptr inbounds %struct.x264_nal_t, ptr %1387, i64 %1389, i32 3
  store ptr %1410, ptr %1411, align 8, !tbaa !280
  %1412 = call i32 @x264_sei_version_write(ptr noundef %68, ptr noundef nonnull %1395) #15
  %1413 = icmp eq i32 %1412, 0
  br i1 %1413, label %1414, label %4740

1414:                                             ; preds = %1384
  %1415 = load ptr, ptr %1386, align 8, !tbaa !166
  %1416 = load i32, ptr %1385, align 16, !tbaa !146
  %1417 = sext i32 %1416 to i64
  %1418 = load ptr, ptr %1393, align 8, !tbaa !165
  %1419 = load ptr, ptr %1396, align 8, !tbaa !272
  %1420 = load ptr, ptr %1395, align 8, !tbaa !271
  %1421 = ptrtoint ptr %1419 to i64
  %1422 = ptrtoint ptr %1420 to i64
  %1423 = sub i64 %1421, %1422
  %1424 = load i32, ptr %1402, align 8, !tbaa !274
  %1425 = trunc i64 %1423 to i32
  %1426 = shl i32 %1425, 3
  %1427 = sub i32 %1426, %1424
  %1428 = add i32 %1427, 64
  %1429 = sdiv i32 %1428, 8
  %1430 = sext i32 %1429 to i64
  %1431 = getelementptr inbounds i8, ptr %1418, i64 %1430
  %1432 = getelementptr inbounds %struct.x264_nal_t, ptr %1415, i64 %1417, i32 3
  %1433 = load ptr, ptr %1432, align 8, !tbaa !280
  %1434 = ptrtoint ptr %1431 to i64
  %1435 = ptrtoint ptr %1433 to i64
  %1436 = sub i64 %1434, %1435
  %1437 = trunc i64 %1436 to i32
  %1438 = getelementptr inbounds %struct.x264_nal_t, ptr %1415, i64 %1417, i32 2
  store i32 %1437, ptr %1438, align 8, !tbaa !279
  %1439 = add nsw i32 %1416, 1
  store i32 %1439, ptr %1385, align 16, !tbaa !146
  %1440 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %1441 = load i32, ptr %1440, align 4, !tbaa !167
  %1442 = icmp slt i32 %1439, %1441
  br i1 %1442, label %1455, label %1443

1443:                                             ; preds = %1414
  %1444 = mul i32 %1441, 48
  %1445 = call ptr @x264_malloc(i32 noundef %1444) #15
  %1446 = icmp eq ptr %1445, null
  br i1 %1446, label %4740, label %1447

1447:                                             ; preds = %1443
  %1448 = load ptr, ptr %1386, align 8, !tbaa !166
  %1449 = load i32, ptr %1440, align 4, !tbaa !167
  %1450 = sext i32 %1449 to i64
  %1451 = mul nsw i64 %1450, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1445, ptr align 8 %1448, i64 %1451, i1 false)
  %1452 = load ptr, ptr %1386, align 8, !tbaa !166
  call void @x264_free(ptr noundef %1452) #15
  store ptr %1445, ptr %1386, align 8, !tbaa !166
  %1453 = load i32, ptr %1440, align 4, !tbaa !167
  %1454 = shl nsw i32 %1453, 1
  store i32 %1454, ptr %1440, align 4, !tbaa !167
  br label %1455

1455:                                             ; preds = %1447, %1414
  %1456 = load ptr, ptr %1386, align 8, !tbaa !166
  %1457 = load i32, ptr %1385, align 16, !tbaa !146
  %1458 = add nsw i32 %1457, -1
  %1459 = sext i32 %1458 to i64
  %1460 = getelementptr inbounds %struct.x264_nal_t, ptr %1456, i64 %1459, i32 2
  %1461 = load i32, ptr %1460, align 8, !tbaa !279
  %1462 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 45
  %1463 = load i32, ptr %1462, align 16, !tbaa !229
  %1464 = icmp ne i32 %1463, 0
  %1465 = icmp ne i32 %1458, 0
  %1466 = and i1 %1465, %1464
  %1467 = sext i1 %1466 to i32
  %1468 = add i32 %1376, 5
  %1469 = add i32 %1468, %1461
  %1470 = add i32 %1469, %1467
  br label %1471

1471:                                             ; preds = %1455, %1379, %1375
  %1472 = phi i32 [ %1470, %1455 ], [ %1376, %1379 ], [ %1376, %1375 ]
  %1473 = load ptr, ptr %276, align 8, !tbaa !290
  %1474 = getelementptr inbounds %struct.x264_frame, ptr %1473, i64 0, i32 1
  %1475 = load i32, ptr %1474, align 4, !tbaa !324
  %1476 = icmp eq i32 %1475, 1
  br i1 %1476, label %1573, label %1477

1477:                                             ; preds = %1471
  %1478 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %1479 = load ptr, ptr %1478, align 16, !tbaa !77
  %1480 = getelementptr inbounds %struct.x264_sps_t, ptr %1479, i64 0, i32 16
  %1481 = load i32, ptr %1480, align 4, !tbaa !83
  %1482 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 13
  %1483 = load i32, ptr %1482, align 4, !tbaa !113
  %1484 = icmp sgt i32 %1481, %1483
  %1485 = add nsw i32 %1481, -1
  %1486 = select i1 %1484, i32 %1483, i32 %1485
  %1487 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 17
  %1488 = load i32, ptr %1487, align 4, !tbaa !73
  %1489 = add nsw i32 %1486, %1488
  %1490 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %1491 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %1492 = load ptr, ptr %1491, align 8, !tbaa !166
  %1493 = load i32, ptr %1490, align 16, !tbaa !146
  %1494 = sext i32 %1493 to i64
  %1495 = getelementptr inbounds %struct.x264_nal_t, ptr %1492, i64 %1494
  store i32 0, ptr %1495, align 8, !tbaa !276
  %1496 = getelementptr inbounds %struct.x264_nal_t, ptr %1492, i64 %1494, i32 1
  store i32 6, ptr %1496, align 4, !tbaa !278
  %1497 = getelementptr inbounds %struct.x264_nal_t, ptr %1492, i64 %1494, i32 2
  store i32 0, ptr %1497, align 8, !tbaa !279
  %1498 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %1499 = load ptr, ptr %1498, align 8, !tbaa !165
  %1500 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %1501 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  %1502 = load ptr, ptr %1501, align 8, !tbaa !272
  %1503 = load ptr, ptr %1500, align 8, !tbaa !271
  %1504 = ptrtoint ptr %1502 to i64
  %1505 = ptrtoint ptr %1503 to i64
  %1506 = sub i64 %1504, %1505
  %1507 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  %1508 = load i32, ptr %1507, align 8, !tbaa !274
  %1509 = trunc i64 %1506 to i32
  %1510 = shl i32 %1509, 3
  %1511 = sub i32 %1510, %1508
  %1512 = add i32 %1511, 64
  %1513 = sdiv i32 %1512, 8
  %1514 = sext i32 %1513 to i64
  %1515 = getelementptr inbounds i8, ptr %1499, i64 %1514
  %1516 = getelementptr inbounds %struct.x264_nal_t, ptr %1492, i64 %1494, i32 3
  store ptr %1515, ptr %1516, align 8, !tbaa !280
  call void @x264_sei_recovery_point_write(ptr noundef %68, ptr noundef nonnull %1500, i32 noundef %1489) #15
  %1517 = load ptr, ptr %1491, align 8, !tbaa !166
  %1518 = load i32, ptr %1490, align 16, !tbaa !146
  %1519 = sext i32 %1518 to i64
  %1520 = load ptr, ptr %1498, align 8, !tbaa !165
  %1521 = load ptr, ptr %1501, align 8, !tbaa !272
  %1522 = load ptr, ptr %1500, align 8, !tbaa !271
  %1523 = ptrtoint ptr %1521 to i64
  %1524 = ptrtoint ptr %1522 to i64
  %1525 = sub i64 %1523, %1524
  %1526 = load i32, ptr %1507, align 8, !tbaa !274
  %1527 = trunc i64 %1525 to i32
  %1528 = shl i32 %1527, 3
  %1529 = sub i32 %1528, %1526
  %1530 = add i32 %1529, 64
  %1531 = sdiv i32 %1530, 8
  %1532 = sext i32 %1531 to i64
  %1533 = getelementptr inbounds i8, ptr %1520, i64 %1532
  %1534 = getelementptr inbounds %struct.x264_nal_t, ptr %1517, i64 %1519, i32 3
  %1535 = load ptr, ptr %1534, align 8, !tbaa !280
  %1536 = ptrtoint ptr %1533 to i64
  %1537 = ptrtoint ptr %1535 to i64
  %1538 = sub i64 %1536, %1537
  %1539 = trunc i64 %1538 to i32
  %1540 = getelementptr inbounds %struct.x264_nal_t, ptr %1517, i64 %1519, i32 2
  store i32 %1539, ptr %1540, align 8, !tbaa !279
  %1541 = add nsw i32 %1518, 1
  store i32 %1541, ptr %1490, align 16, !tbaa !146
  %1542 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %1543 = load i32, ptr %1542, align 4, !tbaa !167
  %1544 = icmp slt i32 %1541, %1543
  br i1 %1544, label %1557, label %1545

1545:                                             ; preds = %1477
  %1546 = mul i32 %1543, 48
  %1547 = call ptr @x264_malloc(i32 noundef %1546) #15
  %1548 = icmp eq ptr %1547, null
  br i1 %1548, label %1557, label %1549

1549:                                             ; preds = %1545
  %1550 = load ptr, ptr %1491, align 8, !tbaa !166
  %1551 = load i32, ptr %1542, align 4, !tbaa !167
  %1552 = sext i32 %1551 to i64
  %1553 = mul nsw i64 %1552, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1547, ptr align 8 %1550, i64 %1553, i1 false)
  %1554 = load ptr, ptr %1491, align 8, !tbaa !166
  call void @x264_free(ptr noundef %1554) #15
  store ptr %1547, ptr %1491, align 8, !tbaa !166
  %1555 = load i32, ptr %1542, align 4, !tbaa !167
  %1556 = shl nsw i32 %1555, 1
  store i32 %1556, ptr %1542, align 4, !tbaa !167
  br label %1557

1557:                                             ; preds = %1477, %1545, %1549
  %1558 = load ptr, ptr %1491, align 8, !tbaa !166
  %1559 = load i32, ptr %1490, align 16, !tbaa !146
  %1560 = add nsw i32 %1559, -1
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds %struct.x264_nal_t, ptr %1558, i64 %1561, i32 2
  %1563 = load i32, ptr %1562, align 8, !tbaa !279
  %1564 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 45
  %1565 = load i32, ptr %1564, align 16, !tbaa !229
  %1566 = icmp ne i32 %1565, 0
  %1567 = icmp ne i32 %1560, 0
  %1568 = and i1 %1567, %1566
  %1569 = sext i1 %1568 to i32
  %1570 = add i32 %1472, 5
  %1571 = add i32 %1570, %1563
  %1572 = add i32 %1571, %1569
  br label %1573

1573:                                             ; preds = %1471, %1557, %1220
  %1574 = phi i32 [ %1572, %1557 ], [ %1472, %1471 ], [ %1131, %1220 ]
  %1575 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 24
  %1576 = load ptr, ptr %1575, align 16, !tbaa !77
  %1577 = getelementptr inbounds %struct.x264_sps_t, ptr %1576, i64 0, i32 24, i32 22
  %1578 = load i32, ptr %1577, align 4, !tbaa !355
  %1579 = icmp eq i32 %1578, 0
  br i1 %1579, label %1580, label %1584

1580:                                             ; preds = %1573
  %1581 = getelementptr inbounds %struct.x264_sps_t, ptr %1576, i64 0, i32 24, i32 19
  %1582 = load i32, ptr %1581, align 4, !tbaa !356
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1669, label %1584

1584:                                             ; preds = %1580, %1573
  %1585 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %1586 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %1587 = load ptr, ptr %1586, align 8, !tbaa !166
  %1588 = load i32, ptr %1585, align 16, !tbaa !146
  %1589 = sext i32 %1588 to i64
  %1590 = getelementptr inbounds %struct.x264_nal_t, ptr %1587, i64 %1589
  store i32 0, ptr %1590, align 8, !tbaa !276
  %1591 = getelementptr inbounds %struct.x264_nal_t, ptr %1587, i64 %1589, i32 1
  store i32 6, ptr %1591, align 4, !tbaa !278
  %1592 = getelementptr inbounds %struct.x264_nal_t, ptr %1587, i64 %1589, i32 2
  store i32 0, ptr %1592, align 8, !tbaa !279
  %1593 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %1594 = load ptr, ptr %1593, align 8, !tbaa !165
  %1595 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %1596 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  %1597 = load ptr, ptr %1596, align 8, !tbaa !272
  %1598 = load ptr, ptr %1595, align 8, !tbaa !271
  %1599 = ptrtoint ptr %1597 to i64
  %1600 = ptrtoint ptr %1598 to i64
  %1601 = sub i64 %1599, %1600
  %1602 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  %1603 = load i32, ptr %1602, align 8, !tbaa !274
  %1604 = trunc i64 %1601 to i32
  %1605 = shl i32 %1604, 3
  %1606 = sub i32 %1605, %1603
  %1607 = add i32 %1606, 64
  %1608 = sdiv i32 %1607, 8
  %1609 = sext i32 %1608 to i64
  %1610 = getelementptr inbounds i8, ptr %1594, i64 %1609
  %1611 = getelementptr inbounds %struct.x264_nal_t, ptr %1587, i64 %1589, i32 3
  store ptr %1610, ptr %1611, align 8, !tbaa !280
  call void @x264_sei_pic_timing_write(ptr noundef %68, ptr noundef nonnull %1595) #15
  %1612 = load ptr, ptr %1586, align 8, !tbaa !166
  %1613 = load i32, ptr %1585, align 16, !tbaa !146
  %1614 = sext i32 %1613 to i64
  %1615 = load ptr, ptr %1593, align 8, !tbaa !165
  %1616 = load ptr, ptr %1596, align 8, !tbaa !272
  %1617 = load ptr, ptr %1595, align 8, !tbaa !271
  %1618 = ptrtoint ptr %1616 to i64
  %1619 = ptrtoint ptr %1617 to i64
  %1620 = sub i64 %1618, %1619
  %1621 = load i32, ptr %1602, align 8, !tbaa !274
  %1622 = trunc i64 %1620 to i32
  %1623 = shl i32 %1622, 3
  %1624 = sub i32 %1623, %1621
  %1625 = add i32 %1624, 64
  %1626 = sdiv i32 %1625, 8
  %1627 = sext i32 %1626 to i64
  %1628 = getelementptr inbounds i8, ptr %1615, i64 %1627
  %1629 = getelementptr inbounds %struct.x264_nal_t, ptr %1612, i64 %1614, i32 3
  %1630 = load ptr, ptr %1629, align 8, !tbaa !280
  %1631 = ptrtoint ptr %1628 to i64
  %1632 = ptrtoint ptr %1630 to i64
  %1633 = sub i64 %1631, %1632
  %1634 = trunc i64 %1633 to i32
  %1635 = getelementptr inbounds %struct.x264_nal_t, ptr %1612, i64 %1614, i32 2
  store i32 %1634, ptr %1635, align 8, !tbaa !279
  %1636 = load i32, ptr %1585, align 16, !tbaa !146
  %1637 = add nsw i32 %1636, 1
  store i32 %1637, ptr %1585, align 16, !tbaa !146
  %1638 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %1639 = load i32, ptr %1638, align 4, !tbaa !167
  %1640 = icmp slt i32 %1637, %1639
  br i1 %1640, label %1653, label %1641

1641:                                             ; preds = %1584
  %1642 = mul i32 %1639, 48
  %1643 = call ptr @x264_malloc(i32 noundef %1642) #15
  %1644 = icmp eq ptr %1643, null
  br i1 %1644, label %4740, label %1645

1645:                                             ; preds = %1641
  %1646 = load ptr, ptr %1586, align 8, !tbaa !166
  %1647 = load i32, ptr %1638, align 4, !tbaa !167
  %1648 = sext i32 %1647 to i64
  %1649 = mul nsw i64 %1648, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %1643, ptr align 8 %1646, i64 %1649, i1 false)
  %1650 = load ptr, ptr %1586, align 8, !tbaa !166
  call void @x264_free(ptr noundef %1650) #15
  store ptr %1643, ptr %1586, align 8, !tbaa !166
  %1651 = load i32, ptr %1638, align 4, !tbaa !167
  %1652 = shl nsw i32 %1651, 1
  store i32 %1652, ptr %1638, align 4, !tbaa !167
  br label %1653

1653:                                             ; preds = %1645, %1584
  %1654 = load ptr, ptr %1586, align 8, !tbaa !166
  %1655 = load i32, ptr %1585, align 16, !tbaa !146
  %1656 = add nsw i32 %1655, -1
  %1657 = sext i32 %1656 to i64
  %1658 = getelementptr inbounds %struct.x264_nal_t, ptr %1654, i64 %1657, i32 2
  %1659 = load i32, ptr %1658, align 8, !tbaa !279
  %1660 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 45
  %1661 = load i32, ptr %1660, align 16, !tbaa !229
  %1662 = icmp ne i32 %1661, 0
  %1663 = icmp ne i32 %1656, 0
  %1664 = and i1 %1663, %1662
  %1665 = sext i1 %1664 to i32
  %1666 = add i32 %1574, 5
  %1667 = add i32 %1666, %1659
  %1668 = add i32 %1667, %1665
  br label %1669

1669:                                             ; preds = %1653, %1580
  %1670 = phi i32 [ %1668, %1653 ], [ %1574, %1580 ]
  %1671 = load ptr, ptr %276, align 8, !tbaa !290
  %1672 = getelementptr inbounds %struct.x264_frame, ptr %1671, i64 0, i32 2
  %1673 = load i32, ptr %1672, align 8, !tbaa !357
  %1674 = shl nsw i32 %1670, 3
  call void @x264_ratecontrol_start(ptr noundef %68, i32 noundef %1673, i32 noundef %1674) #15
  %1675 = call i32 @x264_ratecontrol_qp(ptr noundef %68) #15
  %1676 = add nsw i32 %1675, 1
  %1677 = load ptr, ptr %69, align 16, !tbaa !164
  %1678 = getelementptr inbounds %struct.x264_frame, ptr %1677, i64 0, i32 2
  store i32 %1676, ptr %1678, align 8, !tbaa !357
  %1679 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 1
  store i32 %1676, ptr %1679, align 4, !tbaa !358
  %1680 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 42, i32 20
  %1681 = load i32, ptr %1680, align 8, !tbaa !91
  %1682 = icmp eq i32 %1681, 0
  br i1 %1682, label %1719, label %1683

1683:                                             ; preds = %1669
  %1684 = load i32, ptr %611, align 16, !tbaa !326
  %1685 = icmp eq i32 %1684, 2
  br i1 %1685, label %1719, label %1686

1686:                                             ; preds = %1683
  %1687 = call i32 @x264_reference_build_list_optimal(ptr noundef %68) #15
  %1688 = load i32, ptr %607, align 8, !tbaa !119
  %1689 = icmp sgt i32 %1688, 1
  br i1 %1689, label %1690, label %1719

1690:                                             ; preds = %1686
  %1691 = add nsw i32 %1688, -1
  %1692 = load i32, ptr %611, align 16, !tbaa !326
  %1693 = icmp eq i32 %1692, 0
  %1694 = zext i32 %1691 to i64
  br label %1695

1695:                                             ; preds = %1690, %1716
  %1696 = phi i64 [ 0, %1690 ], [ %1717, %1716 ]
  %1697 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %1696
  %1698 = load ptr, ptr %1697, align 8, !tbaa !116
  br i1 %1693, label %1699, label %1708

1699:                                             ; preds = %1695
  %1700 = getelementptr inbounds %struct.x264_frame, ptr %1698, i64 0, i32 13
  %1701 = load i32, ptr %1700, align 4, !tbaa !330
  %1702 = add nuw nsw i64 %1696, 1
  %1703 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %1702
  %1704 = load ptr, ptr %1703, align 8, !tbaa !116
  %1705 = getelementptr inbounds %struct.x264_frame, ptr %1704, i64 0, i32 13
  %1706 = load i32, ptr %1705, align 4, !tbaa !330
  %1707 = icmp slt i32 %1701, %1706
  br i1 %1707, label %1715, label %1716

1708:                                             ; preds = %1695
  %1709 = load i32, ptr %1698, align 16, !tbaa !300
  %1710 = add nuw nsw i64 %1696, 1
  %1711 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %1710
  %1712 = load ptr, ptr %1711, align 8, !tbaa !116
  %1713 = load i32, ptr %1712, align 16, !tbaa !300
  %1714 = icmp slt i32 %1709, %1713
  br i1 %1714, label %1715, label %1716

1715:                                             ; preds = %1708, %1699
  store i32 1, ptr %317, align 8, !tbaa !145
  br label %1719

1716:                                             ; preds = %1708, %1699
  %1717 = add nuw nsw i64 %1696, 1
  %1718 = icmp eq i64 %1717, %1694
  br i1 %1718, label %1719, label %1695, !llvm.loop !339

1719:                                             ; preds = %1716, %1686, %1715, %1683, %1669
  %1720 = load i32, ptr %607, align 8, !tbaa !119
  %1721 = icmp eq i32 %1720, 0
  br i1 %1721, label %1728, label %1722

1722:                                             ; preds = %1719
  %1723 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47
  %1724 = load ptr, ptr %1723, align 16, !tbaa !116
  %1725 = load i32, ptr %1724, align 16, !tbaa !300
  %1726 = load ptr, ptr %69, align 16, !tbaa !164
  %1727 = getelementptr inbounds %struct.x264_frame, ptr %1726, i64 0, i32 22
  store i32 %1725, ptr %1727, align 16, !tbaa !359
  br label %1728

1728:                                             ; preds = %1722, %1719
  %1729 = load i32, ptr %611, align 16, !tbaa !326
  %1730 = icmp eq i32 %1729, 1
  br i1 %1730, label %1731, label %1732

1731:                                             ; preds = %1728
  call void @x264_macroblock_bipred_init(ptr noundef %68) #15
  br label %1732

1732:                                             ; preds = %1731, %1728
  %1733 = load i32, ptr %607, align 8, !tbaa !119
  %1734 = icmp sgt i32 %1733, 0
  br i1 %1734, label %1735, label %1737

1735:                                             ; preds = %1732
  %1736 = zext nneg i32 %1733 to i64
  br label %1746

1737:                                             ; preds = %1746, %1732
  %1738 = load ptr, ptr %276, align 8, !tbaa !290
  %1739 = getelementptr inbounds %struct.x264_frame, ptr %1738, i64 0, i32 77
  store i32 0, ptr %1739, align 4, !tbaa !360
  %1740 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 7
  %1741 = load i32, ptr %1740, align 4, !tbaa !361
  %1742 = shl i32 %1733, %1741
  %1743 = icmp sgt i32 %1742, 0
  br i1 %1743, label %1744, label %1758

1744:                                             ; preds = %1737
  %1745 = zext nneg i32 %1742 to i64
  br label %1756

1746:                                             ; preds = %1735, %1746
  %1747 = phi i64 [ 0, %1735 ], [ %1754, %1746 ]
  %1748 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %1747
  %1749 = load ptr, ptr %1748, align 8, !tbaa !116
  %1750 = getelementptr inbounds %struct.x264_frame, ptr %1749, i64 0, i32 31
  %1751 = load ptr, ptr %1750, align 16, !tbaa !116
  %1752 = load ptr, ptr %276, align 8, !tbaa !290
  %1753 = getelementptr inbounds %struct.x264_frame, ptr %1752, i64 0, i32 38, i64 %1747
  store ptr %1751, ptr %1753, align 8, !tbaa !116
  %1754 = add nuw nsw i64 %1747, 1
  %1755 = icmp eq i64 %1754, %1736
  br i1 %1755, label %1737, label %1746, !llvm.loop !362

1756:                                             ; preds = %1744, %1762
  %1757 = phi i64 [ 0, %1744 ], [ %1763, %1762 ]
  br label %1765

1758:                                             ; preds = %1762, %1737
  %1759 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 7
  %1760 = load i32, ptr %611, align 16, !tbaa !326
  %1761 = icmp eq i32 %1760, 0
  br i1 %1761, label %1770, label %1877

1762:                                             ; preds = %1765
  %1763 = add nuw nsw i64 %1757, 1
  %1764 = icmp eq i64 %1763, %1745
  br i1 %1764, label %1758, label %1756, !llvm.loop !363

1765:                                             ; preds = %1756, %1765
  %1766 = phi i64 [ 0, %1756 ], [ %1768, %1765 ]
  %1767 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %1757, i64 %1766, i32 5
  store ptr null, ptr %1767, align 16, !tbaa !340
  %1768 = add nuw nsw i64 %1766, 1
  %1769 = icmp eq i64 %1768, 3
  br i1 %1769, label %1762, label %1765, !llvm.loop !364

1770:                                             ; preds = %1758
  %1771 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 41, i32 3
  %1772 = load i32, ptr %1771, align 4, !tbaa !109
  %1773 = icmp slt i32 %1772, 1
  br i1 %1773, label %1877, label %1774

1774:                                             ; preds = %1770
  %1775 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 26
  %1776 = load i32, ptr %1775, align 8, !tbaa !128
  %1777 = shl i32 32, %1776
  %1778 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 2, i32 5
  store ptr null, ptr %1778, align 16, !tbaa !340
  %1779 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 1, i32 5
  store ptr null, ptr %1779, align 16, !tbaa !340
  %1780 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 2, i32 2
  store i32 0, ptr %1780, align 16, !tbaa !342
  %1781 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 1, i32 2
  store i32 0, ptr %1781, align 16, !tbaa !342
  %1782 = load i32, ptr %607, align 8, !tbaa !119
  %1783 = icmp sgt i32 %1782, 0
  br i1 %1783, label %1784, label %1788

1784:                                             ; preds = %1774
  %1785 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  %1786 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 1
  %1787 = shl i32 64, %1776
  br label %1791

1788:                                             ; preds = %1870, %1774
  %1789 = phi i32 [ 0, %1774 ], [ %1831, %1870 ]
  %1790 = icmp eq i32 %1789, 0
  br i1 %1790, label %1875, label %1877

1791:                                             ; preds = %1784, %1870
  %1792 = phi i64 [ 0, %1784 ], [ %1871, %1870 ]
  %1793 = phi i32 [ 0, %1784 ], [ %1832, %1870 ]
  %1794 = phi i32 [ 0, %1784 ], [ %1831, %1870 ]
  %1795 = load ptr, ptr %276, align 8, !tbaa !290
  %1796 = getelementptr inbounds %struct.x264_frame, ptr %1795, i64 0, i32 37, i64 %1792
  %1797 = getelementptr inbounds %struct.x264_weight_t, ptr %1796, i64 0, i32 5
  %1798 = load ptr, ptr %1797, align 16, !tbaa !340
  %1799 = icmp eq ptr %1798, null
  br i1 %1799, label %1830, label %1800

1800:                                             ; preds = %1791
  %1801 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %1792
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %1801, ptr noundef nonnull align 16 dereferenceable(64) %1796, i64 64, i1 false), !tbaa.struct !346
  %1802 = getelementptr inbounds %struct.x264_weight_t, ptr %1801, i64 0, i32 3
  %1803 = load i32, ptr %1802, align 4, !tbaa !343
  %1804 = getelementptr inbounds %struct.x264_weight_t, ptr %1801, i64 0, i32 2
  %1805 = load i32, ptr %1804, align 16, !tbaa !342
  %1806 = shl nuw i32 1, %1805
  %1807 = icmp eq i32 %1803, %1806
  br i1 %1807, label %1808, label %1814

1808:                                             ; preds = %1800
  %1809 = getelementptr inbounds %struct.x264_weight_t, ptr %1801, i64 0, i32 4
  %1810 = load i32, ptr %1809, align 8, !tbaa !344
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1812, label %1814

1812:                                             ; preds = %1808
  %1813 = getelementptr inbounds %struct.x264_weight_t, ptr %1801, i64 0, i32 5
  store ptr null, ptr %1813, align 16, !tbaa !340
  br label %1830

1814:                                             ; preds = %1808, %1800
  %1815 = icmp eq i32 %1794, 0
  br i1 %1815, label %1816, label %1817

1816:                                             ; preds = %1814
  store i32 %1805, ptr %1785, align 16, !tbaa !342
  br label %1817

1817:                                             ; preds = %1816, %1814
  %1818 = add nsw i32 %1793, 1
  %1819 = sext i32 %1793 to i64
  %1820 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 52, i64 %1819
  %1821 = load ptr, ptr %1820, align 8, !tbaa !116
  %1822 = load ptr, ptr %276, align 8, !tbaa !290
  %1823 = getelementptr inbounds %struct.x264_frame, ptr %1822, i64 0, i32 24
  %1824 = load i32, ptr %1823, align 8, !tbaa !145
  %1825 = mul nsw i32 %1824, %1777
  %1826 = sext i32 %1825 to i64
  %1827 = getelementptr inbounds i8, ptr %1821, i64 %1826
  %1828 = getelementptr inbounds i8, ptr %1827, i64 32
  %1829 = getelementptr inbounds %struct.x264_frame, ptr %1822, i64 0, i32 38, i64 %1792
  store ptr %1828, ptr %1829, align 8, !tbaa !116
  br label %1830

1830:                                             ; preds = %1817, %1812, %1791
  %1831 = phi i32 [ %1794, %1812 ], [ 1, %1817 ], [ %1794, %1791 ]
  %1832 = phi i32 [ %1793, %1812 ], [ %1818, %1817 ], [ %1793, %1791 ]
  %1833 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %1792
  %1834 = getelementptr inbounds %struct.x264_weight_t, ptr %1833, i64 0, i32 5
  %1835 = load ptr, ptr %1834, align 16, !tbaa !340
  %1836 = icmp eq ptr %1835, null
  br i1 %1836, label %1870, label %1837

1837:                                             ; preds = %1830
  %1838 = load i32, ptr %1786, align 4, !tbaa !154
  %1839 = icmp eq i32 %1838, 1
  br i1 %1839, label %1840, label %1870

1840:                                             ; preds = %1837
  %1841 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 47, i64 %1792
  %1842 = load ptr, ptr %1841, align 8, !tbaa !116
  %1843 = getelementptr inbounds %struct.x264_frame, ptr %1842, i64 0, i32 31
  %1844 = load ptr, ptr %1843, align 16, !tbaa !116
  %1845 = getelementptr inbounds %struct.x264_frame, ptr %1842, i64 0, i32 24
  %1846 = load i32, ptr %1845, align 8, !tbaa !145
  %1847 = mul nsw i32 %1846, %1777
  %1848 = sext i32 %1847 to i64
  %1849 = sub nsw i64 0, %1848
  %1850 = getelementptr inbounds i8, ptr %1844, i64 %1849
  %1851 = getelementptr inbounds i8, ptr %1850, i64 -32
  %1852 = load ptr, ptr %276, align 8, !tbaa !290
  %1853 = getelementptr inbounds %struct.x264_frame, ptr %1852, i64 0, i32 38, i64 %1792
  %1854 = load ptr, ptr %1853, align 8, !tbaa !116
  %1855 = getelementptr inbounds %struct.x264_frame, ptr %1852, i64 0, i32 24
  %1856 = load i32, ptr %1855, align 8, !tbaa !145
  %1857 = mul nsw i32 %1856, %1777
  %1858 = sext i32 %1857 to i64
  %1859 = sub nsw i64 0, %1858
  %1860 = getelementptr inbounds i8, ptr %1854, i64 %1859
  %1861 = getelementptr inbounds i8, ptr %1860, i64 -32
  %1862 = getelementptr inbounds %struct.x264_frame, ptr %1852, i64 0, i32 25
  %1863 = load i32, ptr %1862, align 4, !tbaa !145
  %1864 = add nsw i32 %1863, 64
  %1865 = getelementptr inbounds %struct.x264_frame, ptr %1852, i64 0, i32 26
  %1866 = load i32, ptr %1865, align 16, !tbaa !145
  %1867 = add nsw i32 %1866, %1787
  call void @x264_weight_scale_plane(ptr noundef %68, ptr noundef nonnull %1861, i32 noundef %1856, ptr noundef nonnull %1851, i32 noundef %1856, i32 noundef %1864, i32 noundef %1867, ptr noundef nonnull %1833) #15
  %1868 = load ptr, ptr %276, align 8, !tbaa !290
  %1869 = getelementptr inbounds %struct.x264_frame, ptr %1868, i64 0, i32 77
  store i32 %1867, ptr %1869, align 4, !tbaa !360
  br label %1870

1870:                                             ; preds = %1840, %1837, %1830
  %1871 = add nuw nsw i64 %1792, 1
  %1872 = load i32, ptr %607, align 8, !tbaa !119
  %1873 = sext i32 %1872 to i64
  %1874 = icmp slt i64 %1871, %1873
  br i1 %1874, label %1791, label %1788, !llvm.loop !365

1875:                                             ; preds = %1788
  %1876 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  store i32 0, ptr %1876, align 16, !tbaa !342
  br label %1877

1877:                                             ; preds = %1758, %1770, %1788, %1875
  %1878 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41
  %1879 = load ptr, ptr %1575, align 16, !tbaa !77
  %1880 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 26
  %1881 = load ptr, ptr %1880, align 16, !tbaa !79
  br i1 %583, label %1882, label %1890

1882:                                             ; preds = %1877
  %1883 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 27
  %1884 = load i32, ptr %1883, align 8, !tbaa !70
  %1885 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %1886 = load i32, ptr %1885, align 8, !tbaa !69
  call fastcc void @x264_slice_header_init(ptr noundef %68, ptr noundef nonnull %1878, ptr noundef %1879, ptr noundef %1881, i32 noundef %1884, i32 noundef %1886, i32 noundef %1675)
  %1887 = load i32, ptr %1883, align 8, !tbaa !70
  %1888 = add nsw i32 %1887, 1
  %1889 = srem i32 %1888, 65536
  store i32 %1889, ptr %1883, align 8, !tbaa !70
  br label %1912

1890:                                             ; preds = %1877
  %1891 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %1892 = load i32, ptr %1891, align 8, !tbaa !69
  call fastcc void @x264_slice_header_init(ptr noundef %68, ptr noundef nonnull %1878, ptr noundef %1879, ptr noundef %1881, i32 noundef -1, i32 noundef %1892, i32 noundef %1675)
  %1893 = load i32, ptr %607, align 8, !tbaa !119
  %1894 = call i32 @llvm.smax.i32(i32 %1893, i32 1)
  %1895 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 17
  store i32 %1894, ptr %1895, align 16, !tbaa !366
  %1896 = load i32, ptr %609, align 8, !tbaa !120
  %1897 = call i32 @llvm.smax.i32(i32 %1896, i32 1)
  %1898 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 18
  store i32 %1897, ptr %1898, align 4, !tbaa !367
  %1899 = load ptr, ptr %1880, align 16, !tbaa !79
  %1900 = getelementptr inbounds %struct.x264_pps_t, ptr %1899, i64 0, i32 5
  %1901 = load i32, ptr %1900, align 4, !tbaa !368
  %1902 = icmp eq i32 %1894, %1901
  br i1 %1902, label %1903, label %1910

1903:                                             ; preds = %1890
  %1904 = load i32, ptr %611, align 16, !tbaa !326
  %1905 = icmp eq i32 %1904, 1
  br i1 %1905, label %1906, label %1912

1906:                                             ; preds = %1903
  %1907 = getelementptr inbounds %struct.x264_pps_t, ptr %1899, i64 0, i32 6
  %1908 = load i32, ptr %1907, align 8, !tbaa !369
  %1909 = icmp eq i32 %1897, %1908
  br i1 %1909, label %1912, label %1910

1910:                                             ; preds = %1906, %1890
  %1911 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 16
  store i32 1, ptr %1911, align 4, !tbaa !370
  br label %1912

1912:                                             ; preds = %1910, %1906, %1903, %1882
  %1913 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 6
  %1914 = load i32, ptr %1913, align 16, !tbaa !371
  %1915 = load ptr, ptr %69, align 16, !tbaa !164
  %1916 = getelementptr inbounds %struct.x264_frame, ptr %1915, i64 0, i32 13
  store i32 %1914, ptr %1916, align 4, !tbaa !330
  %1917 = load ptr, ptr %1575, align 16, !tbaa !77
  %1918 = getelementptr inbounds %struct.x264_sps_t, ptr %1917, i64 0, i32 7
  %1919 = load i32, ptr %1918, align 4, !tbaa !372
  %1920 = icmp eq i32 %1919, 0
  br i1 %1920, label %1921, label %1937

1921:                                             ; preds = %1912
  %1922 = load i32, ptr %1915, align 16, !tbaa !300
  %1923 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 11
  store i32 %1922, ptr %1923, align 4, !tbaa !373
  %1924 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 26
  %1925 = load i32, ptr %1924, align 8, !tbaa !128
  %1926 = icmp eq i32 %1925, 0
  br i1 %1926, label %1935, label %1927

1927:                                             ; preds = %1921
  %1928 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 53
  %1929 = load i32, ptr %1928, align 16, !tbaa !374
  %1930 = icmp eq i32 %1929, 0
  %1931 = select i1 %1930, i32 -1, i32 1
  %1932 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 12
  store i32 %1931, ptr %1932, align 8, !tbaa !375
  br i1 %1930, label %1933, label %1937

1933:                                             ; preds = %1927
  %1934 = add nsw i32 %1922, 1
  store i32 %1934, ptr %1923, align 4, !tbaa !373
  br label %1937

1935:                                             ; preds = %1921
  %1936 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 12
  store i32 0, ptr %1936, align 8, !tbaa !375
  br label %1937

1937:                                             ; preds = %1912, %1927, %1933, %1935
  call void @x264_macroblock_slice_init(ptr noundef %68) #15
  br i1 %597, label %1942, label %1938

1938:                                             ; preds = %1937
  %1939 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 11
  %1940 = load i32, ptr %1939, align 8, !tbaa !69
  %1941 = add nsw i32 %1940, 1
  store i32 %1941, ptr %1939, align 8, !tbaa !69
  br label %1942

1942:                                             ; preds = %1938, %1937
  %1943 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 5
  store i32 0, ptr %1943, align 4, !tbaa !376
  %1944 = load ptr, ptr %1575, align 16, !tbaa !77
  %1945 = getelementptr inbounds %struct.x264_sps_t, ptr %1944, i64 0, i32 17
  %1946 = load i32, ptr %1945, align 4, !tbaa !88
  %1947 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 6
  store i32 %1946, ptr %1947, align 8, !tbaa !377
  %1948 = load i32, ptr %278, align 4, !tbaa !96
  %1949 = icmp sgt i32 %1948, 1
  br i1 %1949, label %1950, label %1952

1950:                                             ; preds = %1942
  %1951 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 3
  store i32 1, ptr %1951, align 4, !tbaa !378
  br label %4738

1952:                                             ; preds = %1942
  %1953 = load i32, ptr %907, align 8, !tbaa !158
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %2126, label %1955

1955:                                             ; preds = %1952
  %1956 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 1
  %1957 = load i32, ptr %1956, align 4, !tbaa !154
  %1958 = icmp sgt i32 %1957, 0
  br i1 %1958, label %1959, label %1962

1959:                                             ; preds = %1955
  %1960 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 26
  %1961 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 58
  br label %1972

1962:                                             ; preds = %1979, %1955
  %1963 = load ptr, ptr %1575, align 16, !tbaa !77
  %1964 = getelementptr inbounds %struct.x264_sps_t, ptr %1963, i64 0, i32 17
  %1965 = load i32, ptr %1964, align 4, !tbaa !88
  %1966 = shl nsw i32 %1965, 4
  %1967 = add nsw i32 %1966, 16
  call void @x264_analyse_weight_frame(ptr noundef %68, i32 noundef %1967) #15
  call void @x264_threads_distribute_ratecontrol(ptr noundef %68) #15
  %1968 = load i32, ptr %1956, align 4, !tbaa !154
  %1969 = icmp sgt i32 %1968, 0
  br i1 %1969, label %1970, label %2021

1970:                                             ; preds = %1962
  %1971 = zext nneg i32 %1968 to i64
  br label %2014

1972:                                             ; preds = %1979, %1959
  %1973 = phi i64 [ 0, %1959 ], [ %1994, %1979 ]
  %1974 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 1, i64 %1973
  %1975 = load ptr, ptr %1974, align 8, !tbaa !116
  %1976 = icmp eq i64 %1973, 0
  br i1 %1976, label %1979, label %1977

1977:                                             ; preds = %1972
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %1975, ptr noundef nonnull align 16 dereferenceable(704) %68, i64 704, i1 false), !tbaa.struct !293
  %1978 = getelementptr inbounds %struct.x264_t, ptr %1975, i64 0, i32 10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24860) %1978, ptr noundef nonnull align 4 dereferenceable(24860) %256, i64 24860, i1 false)
  br label %1979

1979:                                             ; preds = %1977, %1972
  %1980 = load ptr, ptr %1575, align 16, !tbaa !77
  %1981 = getelementptr inbounds %struct.x264_sps_t, ptr %1980, i64 0, i32 17
  %1982 = load i32, ptr %1981, align 4, !tbaa !88
  %1983 = load i32, ptr %1960, align 8, !tbaa !128
  %1984 = ashr i32 %1982, %1983
  %1985 = trunc i64 %1973 to i32
  %1986 = mul nsw i32 %1984, %1985
  %1987 = load i32, ptr %1961, align 4, !tbaa !157
  %1988 = sdiv i32 %1987, 2
  %1989 = add nsw i32 %1986, %1988
  %1990 = load i32, ptr %1956, align 4, !tbaa !154
  %1991 = sdiv i32 %1989, %1990
  %1992 = shl i32 %1991, %1983
  %1993 = getelementptr inbounds %struct.x264_t, ptr %1975, i64 0, i32 5
  store i32 %1992, ptr %1993, align 4, !tbaa !376
  %1994 = add nuw nsw i64 %1973, 1
  %1995 = trunc i64 %1994 to i32
  %1996 = mul nsw i32 %1984, %1995
  %1997 = add nsw i32 %1996, %1988
  %1998 = sdiv i32 %1997, %1990
  %1999 = shl i32 %1998, %1983
  %2000 = getelementptr inbounds %struct.x264_t, ptr %1975, i64 0, i32 6
  store i32 %1999, ptr %2000, align 8, !tbaa !377
  %2001 = getelementptr inbounds %struct.x264_sps_t, ptr %1980, i64 0, i32 16
  %2002 = load i32, ptr %2001, align 4, !tbaa !83
  %2003 = mul nsw i32 %2002, %1992
  %2004 = getelementptr inbounds %struct.x264_t, ptr %1975, i64 0, i32 41, i32 3
  store i32 %2003, ptr %2004, align 4, !tbaa !379
  %2005 = mul nsw i32 %2002, %1999
  %2006 = add nsw i32 %2005, -1
  %2007 = getelementptr inbounds %struct.x264_t, ptr %1975, i64 0, i32 41, i32 4
  store i32 %2006, ptr %2007, align 8, !tbaa !380
  %2008 = load i32, ptr %1956, align 4, !tbaa !154
  %2009 = sext i32 %2008 to i64
  %2010 = icmp slt i64 %1994, %2009
  br i1 %2010, label %1972, label %1962, !llvm.loop !381

2011:                                             ; preds = %2014
  br i1 %1969, label %2012, label %2021

2012:                                             ; preds = %2011
  %2013 = zext nneg i32 %1968 to i64
  br label %2024

2014:                                             ; preds = %2014, %1970
  %2015 = phi i64 [ 0, %1970 ], [ %2019, %2014 ]
  %2016 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 1, i64 %2015
  %2017 = load ptr, ptr %2016, align 8, !tbaa !116
  %2018 = getelementptr inbounds %struct.x264_t, ptr %2017, i64 0, i32 3
  store i32 1, ptr %2018, align 4, !tbaa !378
  %2019 = add nuw nsw i64 %2015, 1
  %2020 = icmp eq i64 %2019, %1971
  br i1 %2020, label %2011, label %2014, !llvm.loop !382

2021:                                             ; preds = %2024, %1962, %2011
  %2022 = load i32, ptr %1956, align 4, !tbaa !154
  %2023 = icmp sgt i32 %2022, 1
  br i1 %2023, label %2040, label %2031

2024:                                             ; preds = %2024, %2012
  %2025 = phi i64 [ 0, %2012 ], [ %2029, %2024 ]
  %2026 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 1, i64 %2025
  %2027 = load ptr, ptr %2026, align 8, !tbaa !116
  %2028 = getelementptr inbounds %struct.x264_t, ptr %2027, i64 0, i32 3
  store i32 0, ptr %2028, align 4, !tbaa !378
  %2029 = add nuw nsw i64 %2025, 1
  %2030 = icmp eq i64 %2029, %2013
  br i1 %2030, label %2021, label %2024, !llvm.loop !383

2031:                                             ; preds = %2054, %2021
  call void @x264_threads_merge_ratecontrol(ptr noundef %68) #15
  %2032 = load i32, ptr %1956, align 4, !tbaa !154
  %2033 = icmp sgt i32 %2032, 1
  br i1 %2033, label %2034, label %4738

2034:                                             ; preds = %2031
  %2035 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %2036 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %2037 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %2038 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57
  %2039 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 14
  br label %2059

2040:                                             ; preds = %2021, %2054
  %2041 = phi i64 [ %2055, %2054 ], [ 1, %2021 ]
  %2042 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 1, i64 %2041
  %2043 = load ptr, ptr %2042, align 8, !tbaa !116
  %2044 = getelementptr inbounds %struct.x264_t, ptr %2043, i64 0, i32 5
  %2045 = load i32, ptr %2044, align 4, !tbaa !376
  %2046 = add nsw i32 %2045, 1
  call fastcc void @x264_fdec_filter_row(ptr noundef %2043, i32 noundef %2046, i32 noundef 0)
  %2047 = load i32, ptr %1759, align 4, !tbaa !361
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2054, label %2049

2049:                                             ; preds = %2040
  %2050 = load ptr, ptr %2042, align 8, !tbaa !116
  %2051 = getelementptr inbounds %struct.x264_t, ptr %2050, i64 0, i32 5
  %2052 = load i32, ptr %2051, align 4, !tbaa !376
  %2053 = add nsw i32 %2052, 2
  call fastcc void @x264_fdec_filter_row(ptr noundef %2050, i32 noundef %2053, i32 noundef 0)
  br label %2054

2054:                                             ; preds = %2049, %2040
  %2055 = add nuw nsw i64 %2041, 1
  %2056 = load i32, ptr %1956, align 4, !tbaa !154
  %2057 = sext i32 %2056 to i64
  %2058 = icmp slt i64 %2055, %2057
  br i1 %2058, label %2040, label %2031, !llvm.loop !384

2059:                                             ; preds = %2108, %2034
  %2060 = phi i64 [ 1, %2034 ], [ %2113, %2108 ]
  %2061 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 1, i64 %2060
  %2062 = load ptr, ptr %2061, align 8, !tbaa !116
  %2063 = getelementptr inbounds %struct.x264_t, ptr %2062, i64 0, i32 7
  %2064 = load i32, ptr %2063, align 16, !tbaa !146
  %2065 = icmp sgt i32 %2064, 0
  br i1 %2065, label %2066, label %2068

2066:                                             ; preds = %2059
  %2067 = getelementptr inbounds %struct.x264_t, ptr %2062, i64 0, i32 7, i32 2
  br label %2070

2068:                                             ; preds = %2094, %2059
  %2069 = getelementptr inbounds %struct.x264_t, ptr %2062, i64 0, i32 57
  br label %2099

2070:                                             ; preds = %2094, %2066
  %2071 = phi i64 [ 0, %2066 ], [ %2095, %2094 ]
  %2072 = load ptr, ptr %2036, align 8, !tbaa !166
  %2073 = load i32, ptr %2035, align 16, !tbaa !146
  %2074 = sext i32 %2073 to i64
  %2075 = getelementptr inbounds %struct.x264_nal_t, ptr %2072, i64 %2074
  %2076 = load ptr, ptr %2067, align 8, !tbaa !166
  %2077 = getelementptr inbounds %struct.x264_nal_t, ptr %2076, i64 %2071
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2075, ptr noundef nonnull align 8 dereferenceable(24) %2077, i64 24, i1 false), !tbaa.struct !385
  %2078 = load i32, ptr %2035, align 16, !tbaa !146
  %2079 = add nsw i32 %2078, 1
  store i32 %2079, ptr %2035, align 16, !tbaa !146
  %2080 = load i32, ptr %2037, align 4, !tbaa !167
  %2081 = icmp slt i32 %2079, %2080
  br i1 %2081, label %2094, label %2082

2082:                                             ; preds = %2070
  %2083 = mul i32 %2080, 48
  %2084 = call ptr @x264_malloc(i32 noundef %2083) #15
  %2085 = icmp eq ptr %2084, null
  br i1 %2085, label %2094, label %2086

2086:                                             ; preds = %2082
  %2087 = load ptr, ptr %2036, align 8, !tbaa !166
  %2088 = load i32, ptr %2037, align 4, !tbaa !167
  %2089 = sext i32 %2088 to i64
  %2090 = mul nsw i64 %2089, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2084, ptr align 8 %2087, i64 %2090, i1 false)
  %2091 = load ptr, ptr %2036, align 8, !tbaa !166
  call void @x264_free(ptr noundef %2091) #15
  store ptr %2084, ptr %2036, align 8, !tbaa !166
  %2092 = load i32, ptr %2037, align 4, !tbaa !167
  %2093 = shl nsw i32 %2092, 1
  store i32 %2093, ptr %2037, align 4, !tbaa !167
  br label %2094

2094:                                             ; preds = %2086, %2082, %2070
  %2095 = add nuw nsw i64 %2071, 1
  %2096 = load i32, ptr %2063, align 16, !tbaa !146
  %2097 = sext i32 %2096 to i64
  %2098 = icmp slt i64 %2095, %2097
  br i1 %2098, label %2070, label %2068, !llvm.loop !386

2099:                                             ; preds = %2099, %2068
  %2100 = phi i64 [ 0, %2068 ], [ %2106, %2099 ]
  %2101 = getelementptr inbounds i32, ptr %2069, i64 %2100
  %2102 = load i32, ptr %2101, align 4, !tbaa !145
  %2103 = getelementptr inbounds i32, ptr %2038, i64 %2100
  %2104 = load i32, ptr %2103, align 4, !tbaa !145
  %2105 = add nsw i32 %2104, %2102
  store i32 %2105, ptr %2103, align 4, !tbaa !145
  %2106 = add nuw nsw i64 %2100, 1
  %2107 = icmp eq i64 %2106, 168
  br i1 %2107, label %2117, label %2099, !llvm.loop !387

2108:                                             ; preds = %2117
  %2109 = getelementptr inbounds %struct.x264_t, ptr %2062, i64 0, i32 57, i32 0, i32 14
  %2110 = load double, ptr %2109, align 8, !tbaa !388
  %2111 = load double, ptr %2039, align 8, !tbaa !388
  %2112 = fadd double %2110, %2111
  store double %2112, ptr %2039, align 8, !tbaa !388
  %2113 = add nuw nsw i64 %2060, 1
  %2114 = load i32, ptr %1956, align 4, !tbaa !154
  %2115 = sext i32 %2114 to i64
  %2116 = icmp slt i64 %2113, %2115
  br i1 %2116, label %2059, label %4738, !llvm.loop !389

2117:                                             ; preds = %2099, %2117
  %2118 = phi i64 [ %2124, %2117 ], [ 0, %2099 ]
  %2119 = getelementptr inbounds %struct.x264_t, ptr %2062, i64 0, i32 57, i32 0, i32 13, i64 %2118
  %2120 = load i64, ptr %2119, align 8, !tbaa !162
  %2121 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 13, i64 %2118
  %2122 = load i64, ptr %2121, align 8, !tbaa !162
  %2123 = add nsw i64 %2122, %2120
  store i64 %2123, ptr %2121, align 8, !tbaa !162
  %2124 = add nuw nsw i64 %2118, 1
  %2125 = icmp eq i64 %2124, 3
  br i1 %2125, label %2108, label %2117, !llvm.loop !390

2126:                                             ; preds = %1952
  %2127 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 4
  %2128 = load i32, ptr %2127, align 8, !tbaa !380
  %2129 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %2129, i8 0, i64 704, i1 false)
  %2130 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 63
  store i32 0, ptr %2130, align 16, !tbaa !391
  %2131 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 3
  %2132 = load i32, ptr %2131, align 4, !tbaa !379
  %2133 = icmp sgt i32 %2132, %2128
  br i1 %2133, label %4738, label %2134

2134:                                             ; preds = %2126
  %2135 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 57
  %2136 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 58
  %2137 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 26
  %2138 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 45
  %2139 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7
  %2140 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 56
  %2141 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5
  %2142 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 1
  %2143 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 4
  %2144 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41
  %2145 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 31
  %2146 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 40
  %2147 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 3
  %2148 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 2
  %2149 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 4
  %2150 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 70
  %2151 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 27
  %2152 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 26
  %2153 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 28
  %2154 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 5
  %2155 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 8
  %2156 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 9
  %2157 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 10
  %2158 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 13
  %2159 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 1
  %2160 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 13, i64 1
  %2161 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 11
  %2162 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 12
  %2163 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 14
  %2164 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 15
  %2165 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 16
  %2166 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 17
  %2167 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 18
  %2168 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 19
  %2169 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 21
  %2170 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 20
  %2171 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  %2172 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 0, i64 1, i32 2
  %2173 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 26
  %2174 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 32
  %2175 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 33
  %2176 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 24
  %2177 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 42
  %2178 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 5, i32 2
  %2179 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 71
  %2180 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 42, i32 5
  %2181 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 42, i32 4
  %2182 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 42, i32 3
  %2183 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 42, i32 2
  %2184 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 42, i32 6
  %2185 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 3
  %2186 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 70, i32 10
  %2187 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 53
  %2188 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 38
  %2189 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 42, i32 18
  %2190 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 54
  %2191 = getelementptr inbounds %struct.x264_param_t, ptr %68, i64 0, i32 12
  %2192 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 57
  %2193 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 58
  %2194 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 7
  %2195 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 56
  %2196 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 7, i64 1
  %2197 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 67
  %2198 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 11
  %2199 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 59
  %2200 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 60
  %2201 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 5
  %2202 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 4
  %2203 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 38
  %2204 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 6
  %2205 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 74, i32 4
  %2206 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 67, i32 2
  %2207 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 67, i32 3
  %2208 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 67, i32 4
  %2209 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 7, i32 1
  %2210 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 1
  %2211 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 2
  br label %2212

2212:                                             ; preds = %4733, %2134
  %2213 = phi i32 [ 0, %2134 ], [ %2246, %4733 ]
  store i32 %2128, ptr %2127, align 8, !tbaa !380
  %2214 = load i32, ptr %2135, align 16, !tbaa !194
  %2215 = icmp eq i32 %2214, 0
  br i1 %2215, label %2220, label %2216

2216:                                             ; preds = %2212
  %2217 = load i32, ptr %2131, align 4, !tbaa !379
  %2218 = add i32 %2214, -1
  %2219 = add i32 %2218, %2217
  br label %2242

2220:                                             ; preds = %2212
  %2221 = load i32, ptr %2136, align 4, !tbaa !157
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2245, label %2223

2223:                                             ; preds = %2220
  %2224 = load i32, ptr %907, align 8, !tbaa !158
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2226, label %2245

2226:                                             ; preds = %2223
  %2227 = load ptr, ptr %1575, align 16, !tbaa !77
  %2228 = getelementptr inbounds %struct.x264_sps_t, ptr %2227, i64 0, i32 17
  %2229 = load i32, ptr %2228, align 4, !tbaa !88
  %2230 = load i32, ptr %2137, align 8, !tbaa !128
  %2231 = ashr i32 %2229, %2230
  %2232 = getelementptr inbounds %struct.x264_sps_t, ptr %2227, i64 0, i32 16
  %2233 = load i32, ptr %2232, align 4, !tbaa !83
  %2234 = shl i32 %2233, %2230
  %2235 = add nsw i32 %2213, 1
  %2236 = mul nsw i32 %2231, %2235
  %2237 = sdiv i32 %2221, 2
  %2238 = add nsw i32 %2236, %2237
  %2239 = sdiv i32 %2238, %2221
  %2240 = mul nsw i32 %2239, %2234
  %2241 = add nsw i32 %2240, -1
  br label %2242

2242:                                             ; preds = %2216, %2226
  %2243 = phi i32 [ %2241, %2226 ], [ %2219, %2216 ]
  %2244 = phi i32 [ %2235, %2226 ], [ %2213, %2216 ]
  store i32 %2243, ptr %2127, align 8, !tbaa !380
  br label %2245

2245:                                             ; preds = %2242, %2223, %2220
  %2246 = phi i32 [ %2213, %2223 ], [ %2213, %2220 ], [ %2244, %2242 ]
  %2247 = load i32, ptr %2127, align 8, !tbaa !380
  %2248 = call i32 @llvm.smin.i32(i32 %2247, i32 %2128)
  store i32 %2248, ptr %2127, align 8, !tbaa !380
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7)
  %2249 = load i32, ptr %2138, align 16, !tbaa !229
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2255, label %2251

2251:                                             ; preds = %2245
  %2252 = load i32, ptr %2139, align 16, !tbaa !146
  %2253 = icmp eq i32 %2252, 0
  %2254 = select i1 %2253, i32 -8, i32 -7
  br label %2255

2255:                                             ; preds = %2251, %2245
  %2256 = phi i32 [ -8, %2245 ], [ %2254, %2251 ]
  %2257 = load i32, ptr %2140, align 4, !tbaa !193
  %2258 = icmp sgt i32 %2257, 0
  %2259 = add nsw i32 %2257, %2256
  %2260 = shl nsw i32 %2259, 3
  %2261 = load ptr, ptr %2142, align 8, !tbaa !272
  %2262 = load ptr, ptr %2141, align 8, !tbaa !271
  %2263 = ptrtoint ptr %2261 to i64
  %2264 = ptrtoint ptr %2262 to i64
  %2265 = sub i64 %2264, %2263
  %2266 = load i32, ptr %2143, align 8, !tbaa !274
  %2267 = trunc i64 %2265 to i32
  %2268 = shl i32 %2267, 3
  %2269 = load i32, ptr %2145, align 4, !tbaa !392
  %2270 = icmp eq i32 %2269, 1
  %2271 = load ptr, ptr %69, align 16, !tbaa !164
  %2272 = getelementptr inbounds %struct.x264_frame, ptr %2271, i64 0, i32 14
  %2273 = load i32, ptr %2272, align 8, !tbaa !296
  %2274 = icmp eq i32 %2273, 0
  br i1 %2274, label %2275, label %2278

2275:                                             ; preds = %2255
  %2276 = load ptr, ptr %2146, align 8, !tbaa !172
  %2277 = icmp eq ptr %2276, null
  br label %2278

2278:                                             ; preds = %2275, %2255
  %2279 = phi i1 [ false, %2255 ], [ %2277, %2275 ]
  %2280 = trunc i64 %2263 to i32
  %2281 = and i32 %2280, 3
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2297, label %2283

2283:                                             ; preds = %2278
  %2284 = and i64 %2263, 3
  %2285 = sub nsw i64 0, %2284
  %2286 = getelementptr inbounds i8, ptr %2261, i64 %2285
  store ptr %2286, ptr %2142, align 8, !tbaa !272
  %2287 = trunc i64 %2284 to i32
  %2288 = shl nuw nsw i32 %2287, 3
  %2289 = sub nuw nsw i32 64, %2288
  store i32 %2289, ptr %2143, align 8, !tbaa !274
  %2290 = load i32, ptr %2286, align 4, !tbaa !160
  %2291 = call i32 @llvm.bswap.i32(i32 %2290)
  %2292 = zext i32 %2291 to i64
  %2293 = shl nuw nsw i32 %2281, 3
  %2294 = sub nuw nsw i32 32, %2293
  %2295 = zext nneg i32 %2294 to i64
  %2296 = lshr i64 %2292, %2295
  store i64 %2296, ptr %2147, align 8, !tbaa !275
  br label %2297

2297:                                             ; preds = %2283, %2278
  %2298 = load i32, ptr %1132, align 16, !tbaa !349
  %2299 = load i32, ptr %1133, align 4, !tbaa !350
  %2300 = load ptr, ptr %2148, align 8, !tbaa !166
  %2301 = load i32, ptr %2139, align 16, !tbaa !146
  %2302 = sext i32 %2301 to i64
  %2303 = getelementptr inbounds %struct.x264_nal_t, ptr %2300, i64 %2302
  store i32 %2299, ptr %2303, align 8, !tbaa !276
  %2304 = getelementptr inbounds %struct.x264_nal_t, ptr %2300, i64 %2302, i32 1
  store i32 %2298, ptr %2304, align 4, !tbaa !278
  %2305 = getelementptr inbounds %struct.x264_nal_t, ptr %2300, i64 %2302, i32 2
  store i32 0, ptr %2305, align 8, !tbaa !279
  %2306 = load ptr, ptr %2149, align 8, !tbaa !165
  %2307 = load ptr, ptr %2142, align 8, !tbaa !272
  %2308 = ptrtoint ptr %2307 to i64
  %2309 = sub i64 %2308, %2264
  %2310 = load i32, ptr %2143, align 8, !tbaa !274
  %2311 = trunc i64 %2309 to i32
  %2312 = shl i32 %2311, 3
  %2313 = sub i32 %2312, %2310
  %2314 = add i32 %2313, 64
  %2315 = sdiv i32 %2314, 8
  %2316 = sext i32 %2315 to i64
  %2317 = getelementptr inbounds i8, ptr %2306, i64 %2316
  %2318 = getelementptr inbounds %struct.x264_nal_t, ptr %2300, i64 %2302, i32 3
  store ptr %2317, ptr %2318, align 8, !tbaa !280
  call void @x264_macroblock_thread_init(ptr noundef %68) #15
  %2319 = load i32, ptr %2131, align 4, !tbaa !393
  %2320 = load i32, ptr %1943, align 4, !tbaa !376
  %2321 = load ptr, ptr %1575, align 16, !tbaa !77
  %2322 = getelementptr inbounds %struct.x264_sps_t, ptr %2321, i64 0, i32 16
  %2323 = load i32, ptr %2322, align 4, !tbaa !83
  %2324 = mul nsw i32 %2323, %2320
  %2325 = icmp eq i32 %2319, %2324
  br i1 %2325, label %2332, label %2326

2326:                                             ; preds = %2297
  %2327 = load i32, ptr %2150, align 8, !tbaa !394
  store i32 %2327, ptr %2151, align 4, !tbaa !395
  %2328 = load ptr, ptr %2152, align 16, !tbaa !79
  %2329 = getelementptr inbounds %struct.x264_pps_t, ptr %2328, i64 0, i32 9
  %2330 = load i32, ptr %2329, align 4, !tbaa !396
  %2331 = sub nsw i32 %2327, %2330
  store i32 %2331, ptr %2153, align 16, !tbaa !397
  br label %2332

2332:                                             ; preds = %2326, %2297
  %2333 = load i32, ptr %1133, align 4, !tbaa !350
  %2334 = load i32, ptr %1759, align 4, !tbaa !398
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2384, label %2336

2336:                                             ; preds = %2332
  %2337 = load i32, ptr %2131, align 4, !tbaa !393
  %2338 = ashr i32 %2337, 1
  %2339 = add nsw i32 %2338, 1
  %2340 = icmp sgt i32 %2338, 65534
  %2341 = lshr i32 %2339, 16
  %2342 = select i1 %2340, i32 32, i32 0
  %2343 = select i1 %2340, i32 %2341, i32 %2339
  %2344 = icmp sgt i32 %2343, 255
  %2345 = or disjoint i32 %2342, 16
  %2346 = lshr i32 %2343, 8
  %2347 = select i1 %2344, i32 %2345, i32 %2342
  %2348 = select i1 %2344, i32 %2346, i32 %2343
  %2349 = sext i32 %2348 to i64
  %2350 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2349
  %2351 = load i8, ptr %2350, align 1, !tbaa !160
  %2352 = zext i8 %2351 to i32
  %2353 = add nuw nsw i32 %2347, %2352
  %2354 = lshr i32 %2353, 1
  %2355 = load i64, ptr %2147, align 8, !tbaa !275
  %2356 = zext nneg i32 %2354 to i64
  %2357 = shl i64 %2355, %2356
  store i64 %2357, ptr %2147, align 8, !tbaa !275
  %2358 = load i32, ptr %2143, align 8, !tbaa !274
  %2359 = sub nsw i32 %2358, %2354
  store i32 %2359, ptr %2143, align 8, !tbaa !274
  %2360 = icmp slt i32 %2359, 33
  br i1 %2360, label %2361, label %2372

2361:                                             ; preds = %2336
  %2362 = load i64, ptr %2147, align 8, !tbaa !275
  %2363 = zext nneg i32 %2359 to i64
  %2364 = shl i64 %2362, %2363
  %2365 = call i64 @llvm.bswap.i64(i64 %2364)
  %2366 = trunc i64 %2365 to i32
  %2367 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2366, ptr %2367, align 4, !tbaa !160
  %2368 = load i32, ptr %2143, align 8, !tbaa !274
  %2369 = add nsw i32 %2368, 32
  store i32 %2369, ptr %2143, align 8, !tbaa !274
  %2370 = load ptr, ptr %2142, align 8, !tbaa !272
  %2371 = getelementptr inbounds i8, ptr %2370, i64 4
  store ptr %2371, ptr %2142, align 8, !tbaa !272
  br label %2372

2372:                                             ; preds = %2361, %2336
  %2373 = add nuw nsw i32 %2354, 1
  %2374 = load i64, ptr %2147, align 8, !tbaa !275
  %2375 = zext nneg i32 %2373 to i64
  %2376 = shl i64 %2374, %2375
  %2377 = zext i32 %2339 to i64
  %2378 = or i64 %2376, %2377
  store i64 %2378, ptr %2147, align 8, !tbaa !275
  %2379 = load i32, ptr %2143, align 8, !tbaa !274
  %2380 = sub nsw i32 %2379, %2373
  store i32 %2380, ptr %2143, align 8, !tbaa !274
  %2381 = icmp slt i32 %2380, 33
  br i1 %2381, label %2382, label %2439

2382:                                             ; preds = %2372
  %2383 = load i64, ptr %2147, align 8, !tbaa !275
  br label %2427

2384:                                             ; preds = %2332
  %2385 = add i32 %2319, 1
  %2386 = icmp sgt i32 %2385, 65535
  %2387 = lshr i32 %2385, 16
  %2388 = select i1 %2386, i32 32, i32 0
  %2389 = select i1 %2386, i32 %2387, i32 %2385
  %2390 = icmp sgt i32 %2389, 255
  %2391 = or disjoint i32 %2388, 16
  %2392 = lshr i32 %2389, 8
  %2393 = select i1 %2390, i32 %2391, i32 %2388
  %2394 = select i1 %2390, i32 %2392, i32 %2389
  %2395 = sext i32 %2394 to i64
  %2396 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2395
  %2397 = load i8, ptr %2396, align 1, !tbaa !160
  %2398 = zext i8 %2397 to i32
  %2399 = add nuw nsw i32 %2393, %2398
  %2400 = lshr i32 %2399, 1
  %2401 = load i64, ptr %2147, align 8, !tbaa !275
  %2402 = zext nneg i32 %2400 to i64
  %2403 = shl i64 %2401, %2402
  store i64 %2403, ptr %2147, align 8, !tbaa !275
  %2404 = load i32, ptr %2143, align 8, !tbaa !274
  %2405 = sub nsw i32 %2404, %2400
  store i32 %2405, ptr %2143, align 8, !tbaa !274
  %2406 = icmp slt i32 %2405, 33
  br i1 %2406, label %2407, label %2417

2407:                                             ; preds = %2384
  %2408 = zext nneg i32 %2405 to i64
  %2409 = shl i64 %2403, %2408
  %2410 = call i64 @llvm.bswap.i64(i64 %2409)
  %2411 = trunc i64 %2410 to i32
  %2412 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2411, ptr %2412, align 4, !tbaa !160
  %2413 = load i32, ptr %2143, align 8, !tbaa !274
  %2414 = add nsw i32 %2413, 32
  store i32 %2414, ptr %2143, align 8, !tbaa !274
  %2415 = load ptr, ptr %2142, align 8, !tbaa !272
  %2416 = getelementptr inbounds i8, ptr %2415, i64 4
  store ptr %2416, ptr %2142, align 8, !tbaa !272
  br label %2417

2417:                                             ; preds = %2407, %2384
  %2418 = add nuw nsw i32 %2400, 1
  %2419 = load i64, ptr %2147, align 8, !tbaa !275
  %2420 = zext nneg i32 %2418 to i64
  %2421 = shl i64 %2419, %2420
  %2422 = zext i32 %2385 to i64
  %2423 = or i64 %2421, %2422
  store i64 %2423, ptr %2147, align 8, !tbaa !275
  %2424 = load i32, ptr %2143, align 8, !tbaa !274
  %2425 = sub nsw i32 %2424, %2418
  store i32 %2425, ptr %2143, align 8, !tbaa !274
  %2426 = icmp slt i32 %2425, 33
  br i1 %2426, label %2427, label %2439

2427:                                             ; preds = %2417, %2382
  %2428 = phi i32 [ %2380, %2382 ], [ %2425, %2417 ]
  %2429 = phi i64 [ %2383, %2382 ], [ %2423, %2417 ]
  %2430 = zext nneg i32 %2428 to i64
  %2431 = shl i64 %2429, %2430
  %2432 = call i64 @llvm.bswap.i64(i64 %2431)
  %2433 = trunc i64 %2432 to i32
  %2434 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2433, ptr %2434, align 4, !tbaa !160
  %2435 = load i32, ptr %2143, align 8, !tbaa !274
  %2436 = add nsw i32 %2435, 32
  store i32 %2436, ptr %2143, align 8, !tbaa !274
  %2437 = load ptr, ptr %2142, align 8, !tbaa !272
  %2438 = getelementptr inbounds i8, ptr %2437, i64 4
  store ptr %2438, ptr %2142, align 8, !tbaa !272
  br label %2439

2439:                                             ; preds = %2427, %2417, %2372
  %2440 = load i32, ptr %611, align 16, !tbaa !399
  %2441 = add i32 %2440, 6
  %2442 = icmp sgt i32 %2441, 65535
  %2443 = lshr i32 %2441, 16
  %2444 = select i1 %2442, i32 32, i32 0
  %2445 = select i1 %2442, i32 %2443, i32 %2441
  %2446 = icmp sgt i32 %2445, 255
  %2447 = or disjoint i32 %2444, 16
  %2448 = lshr i32 %2445, 8
  %2449 = select i1 %2446, i32 %2447, i32 %2444
  %2450 = select i1 %2446, i32 %2448, i32 %2445
  %2451 = sext i32 %2450 to i64
  %2452 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2451
  %2453 = load i8, ptr %2452, align 1, !tbaa !160
  %2454 = zext i8 %2453 to i32
  %2455 = add nuw nsw i32 %2449, %2454
  %2456 = lshr i32 %2455, 1
  %2457 = load i64, ptr %2147, align 8, !tbaa !275
  %2458 = zext nneg i32 %2456 to i64
  %2459 = shl i64 %2457, %2458
  store i64 %2459, ptr %2147, align 8, !tbaa !275
  %2460 = load i32, ptr %2143, align 8, !tbaa !274
  %2461 = sub nsw i32 %2460, %2456
  store i32 %2461, ptr %2143, align 8, !tbaa !274
  %2462 = icmp slt i32 %2461, 33
  br i1 %2462, label %2463, label %2473

2463:                                             ; preds = %2439
  %2464 = zext nneg i32 %2461 to i64
  %2465 = shl i64 %2459, %2464
  %2466 = call i64 @llvm.bswap.i64(i64 %2465)
  %2467 = trunc i64 %2466 to i32
  %2468 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2467, ptr %2468, align 4, !tbaa !160
  %2469 = load i32, ptr %2143, align 8, !tbaa !274
  %2470 = add nsw i32 %2469, 32
  store i32 %2470, ptr %2143, align 8, !tbaa !274
  %2471 = load ptr, ptr %2142, align 8, !tbaa !272
  %2472 = getelementptr inbounds i8, ptr %2471, i64 4
  store ptr %2472, ptr %2142, align 8, !tbaa !272
  br label %2473

2473:                                             ; preds = %2463, %2439
  %2474 = add nuw nsw i32 %2456, 1
  %2475 = load i64, ptr %2147, align 8, !tbaa !275
  %2476 = zext nneg i32 %2474 to i64
  %2477 = shl i64 %2475, %2476
  %2478 = zext i32 %2441 to i64
  %2479 = or i64 %2477, %2478
  store i64 %2479, ptr %2147, align 8, !tbaa !275
  %2480 = load i32, ptr %2143, align 8, !tbaa !274
  %2481 = sub nsw i32 %2480, %2474
  store i32 %2481, ptr %2143, align 8, !tbaa !274
  %2482 = icmp slt i32 %2481, 33
  br i1 %2482, label %2483, label %2493

2483:                                             ; preds = %2473
  %2484 = zext nneg i32 %2481 to i64
  %2485 = shl i64 %2479, %2484
  %2486 = call i64 @llvm.bswap.i64(i64 %2485)
  %2487 = trunc i64 %2486 to i32
  %2488 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2487, ptr %2488, align 4, !tbaa !160
  %2489 = load i32, ptr %2143, align 8, !tbaa !274
  %2490 = add nsw i32 %2489, 32
  store i32 %2490, ptr %2143, align 8, !tbaa !274
  %2491 = load ptr, ptr %2142, align 8, !tbaa !272
  %2492 = getelementptr inbounds i8, ptr %2491, i64 4
  store ptr %2492, ptr %2142, align 8, !tbaa !272
  br label %2493

2493:                                             ; preds = %2483, %2473
  %2494 = load i32, ptr %2154, align 4, !tbaa !400
  %2495 = add i32 %2494, 1
  %2496 = icmp sgt i32 %2495, 65535
  %2497 = lshr i32 %2495, 16
  %2498 = select i1 %2496, i32 32, i32 0
  %2499 = select i1 %2496, i32 %2497, i32 %2495
  %2500 = icmp sgt i32 %2499, 255
  %2501 = or disjoint i32 %2498, 16
  %2502 = lshr i32 %2499, 8
  %2503 = select i1 %2500, i32 %2501, i32 %2498
  %2504 = select i1 %2500, i32 %2502, i32 %2499
  %2505 = sext i32 %2504 to i64
  %2506 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2505
  %2507 = load i8, ptr %2506, align 1, !tbaa !160
  %2508 = zext i8 %2507 to i32
  %2509 = add nuw nsw i32 %2503, %2508
  %2510 = lshr i32 %2509, 1
  %2511 = load i64, ptr %2147, align 8, !tbaa !275
  %2512 = zext nneg i32 %2510 to i64
  %2513 = shl i64 %2511, %2512
  store i64 %2513, ptr %2147, align 8, !tbaa !275
  %2514 = load i32, ptr %2143, align 8, !tbaa !274
  %2515 = sub nsw i32 %2514, %2510
  store i32 %2515, ptr %2143, align 8, !tbaa !274
  %2516 = icmp slt i32 %2515, 33
  br i1 %2516, label %2517, label %2527

2517:                                             ; preds = %2493
  %2518 = zext nneg i32 %2515 to i64
  %2519 = shl i64 %2513, %2518
  %2520 = call i64 @llvm.bswap.i64(i64 %2519)
  %2521 = trunc i64 %2520 to i32
  %2522 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2521, ptr %2522, align 4, !tbaa !160
  %2523 = load i32, ptr %2143, align 8, !tbaa !274
  %2524 = add nsw i32 %2523, 32
  store i32 %2524, ptr %2143, align 8, !tbaa !274
  %2525 = load ptr, ptr %2142, align 8, !tbaa !272
  %2526 = getelementptr inbounds i8, ptr %2525, i64 4
  store ptr %2526, ptr %2142, align 8, !tbaa !272
  br label %2527

2527:                                             ; preds = %2517, %2493
  %2528 = add nuw nsw i32 %2510, 1
  %2529 = load i64, ptr %2147, align 8, !tbaa !275
  %2530 = zext nneg i32 %2528 to i64
  %2531 = shl i64 %2529, %2530
  %2532 = zext i32 %2495 to i64
  %2533 = or i64 %2531, %2532
  store i64 %2533, ptr %2147, align 8, !tbaa !275
  %2534 = load i32, ptr %2143, align 8, !tbaa !274
  %2535 = sub nsw i32 %2534, %2528
  store i32 %2535, ptr %2143, align 8, !tbaa !274
  %2536 = icmp slt i32 %2535, 33
  br i1 %2536, label %2537, label %2547

2537:                                             ; preds = %2527
  %2538 = zext nneg i32 %2535 to i64
  %2539 = shl i64 %2533, %2538
  %2540 = call i64 @llvm.bswap.i64(i64 %2539)
  %2541 = trunc i64 %2540 to i32
  %2542 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2541, ptr %2542, align 4, !tbaa !160
  %2543 = load i32, ptr %2143, align 8, !tbaa !274
  %2544 = add nsw i32 %2543, 32
  store i32 %2544, ptr %2143, align 8, !tbaa !274
  %2545 = load ptr, ptr %2142, align 8, !tbaa !272
  %2546 = getelementptr inbounds i8, ptr %2545, i64 4
  store ptr %2546, ptr %2142, align 8, !tbaa !272
  br label %2547

2547:                                             ; preds = %2537, %2527
  %2548 = load ptr, ptr %2144, align 16, !tbaa !401
  %2549 = getelementptr inbounds %struct.x264_sps_t, ptr %2548, i64 0, i32 6
  %2550 = load i32, ptr %2549, align 4, !tbaa !402
  %2551 = load i32, ptr %1913, align 16, !tbaa !403
  %2552 = shl nsw i32 -1, %2550
  %2553 = xor i32 %2552, -1
  %2554 = and i32 %2551, %2553
  %2555 = load i64, ptr %2147, align 8, !tbaa !275
  %2556 = zext nneg i32 %2550 to i64
  %2557 = shl i64 %2555, %2556
  %2558 = zext nneg i32 %2554 to i64
  %2559 = or i64 %2557, %2558
  store i64 %2559, ptr %2147, align 8, !tbaa !275
  %2560 = load i32, ptr %2143, align 8, !tbaa !274
  %2561 = sub nsw i32 %2560, %2550
  store i32 %2561, ptr %2143, align 8, !tbaa !274
  %2562 = icmp slt i32 %2561, 33
  br i1 %2562, label %2563, label %2573

2563:                                             ; preds = %2547
  %2564 = zext nneg i32 %2561 to i64
  %2565 = shl i64 %2559, %2564
  %2566 = call i64 @llvm.bswap.i64(i64 %2565)
  %2567 = trunc i64 %2566 to i32
  %2568 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2567, ptr %2568, align 4, !tbaa !160
  %2569 = load i32, ptr %2143, align 8, !tbaa !274
  %2570 = add nsw i32 %2569, 32
  store i32 %2570, ptr %2143, align 8, !tbaa !274
  %2571 = load ptr, ptr %2142, align 8, !tbaa !272
  %2572 = getelementptr inbounds i8, ptr %2571, i64 4
  store ptr %2572, ptr %2142, align 8, !tbaa !272
  br label %2573

2573:                                             ; preds = %2563, %2547
  %2574 = load ptr, ptr %2144, align 16, !tbaa !401
  %2575 = getelementptr inbounds %struct.x264_sps_t, ptr %2574, i64 0, i32 18
  %2576 = load i32, ptr %2575, align 4, !tbaa !404
  %2577 = icmp eq i32 %2576, 0
  br i1 %2577, label %2578, label %2611

2578:                                             ; preds = %2573
  %2579 = load i32, ptr %2155, align 8, !tbaa !405
  %2580 = load i64, ptr %2147, align 8, !tbaa !275
  %2581 = shl i64 %2580, 1
  %2582 = zext i32 %2579 to i64
  %2583 = or i64 %2581, %2582
  store i64 %2583, ptr %2147, align 8, !tbaa !275
  %2584 = load i32, ptr %2143, align 8, !tbaa !274
  %2585 = add nsw i32 %2584, -1
  store i32 %2585, ptr %2143, align 8, !tbaa !274
  %2586 = icmp eq i32 %2585, 32
  br i1 %2586, label %2587, label %2593

2587:                                             ; preds = %2578
  %2588 = trunc i64 %2583 to i32
  %2589 = call i32 @llvm.bswap.i32(i32 %2588)
  %2590 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2589, ptr %2590, align 4, !tbaa !160
  %2591 = load ptr, ptr %2142, align 8, !tbaa !272
  %2592 = getelementptr inbounds i8, ptr %2591, i64 4
  store ptr %2592, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %2593

2593:                                             ; preds = %2587, %2578
  %2594 = load i32, ptr %2155, align 8, !tbaa !405
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %2611, label %2596

2596:                                             ; preds = %2593
  %2597 = load i32, ptr %2156, align 4, !tbaa !406
  %2598 = load i64, ptr %2147, align 8, !tbaa !275
  %2599 = shl i64 %2598, 1
  %2600 = zext i32 %2597 to i64
  %2601 = or i64 %2599, %2600
  store i64 %2601, ptr %2147, align 8, !tbaa !275
  %2602 = load i32, ptr %2143, align 8, !tbaa !274
  %2603 = add nsw i32 %2602, -1
  store i32 %2603, ptr %2143, align 8, !tbaa !274
  %2604 = icmp eq i32 %2603, 32
  br i1 %2604, label %2605, label %2611

2605:                                             ; preds = %2596
  %2606 = trunc i64 %2601 to i32
  %2607 = call i32 @llvm.bswap.i32(i32 %2606)
  %2608 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2607, ptr %2608, align 4, !tbaa !160
  %2609 = load ptr, ptr %2142, align 8, !tbaa !272
  %2610 = getelementptr inbounds i8, ptr %2609, i64 4
  store ptr %2610, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %2611

2611:                                             ; preds = %2605, %2596, %2593, %2573
  %2612 = load i32, ptr %2157, align 16, !tbaa !407
  %2613 = icmp sgt i32 %2612, -1
  br i1 %2613, label %2614, label %2667

2614:                                             ; preds = %2611
  %2615 = add nuw i32 %2612, 1
  %2616 = icmp sgt i32 %2615, 65535
  %2617 = lshr i32 %2615, 16
  %2618 = select i1 %2616, i32 32, i32 0
  %2619 = select i1 %2616, i32 %2617, i32 %2615
  %2620 = icmp sgt i32 %2619, 255
  %2621 = or disjoint i32 %2618, 16
  %2622 = lshr i32 %2619, 8
  %2623 = select i1 %2620, i32 %2621, i32 %2618
  %2624 = select i1 %2620, i32 %2622, i32 %2619
  %2625 = sext i32 %2624 to i64
  %2626 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2625
  %2627 = load i8, ptr %2626, align 1, !tbaa !160
  %2628 = zext i8 %2627 to i32
  %2629 = add nuw nsw i32 %2623, %2628
  %2630 = lshr i32 %2629, 1
  %2631 = load i64, ptr %2147, align 8, !tbaa !275
  %2632 = zext nneg i32 %2630 to i64
  %2633 = shl i64 %2631, %2632
  store i64 %2633, ptr %2147, align 8, !tbaa !275
  %2634 = load i32, ptr %2143, align 8, !tbaa !274
  %2635 = sub nsw i32 %2634, %2630
  store i32 %2635, ptr %2143, align 8, !tbaa !274
  %2636 = icmp slt i32 %2635, 33
  br i1 %2636, label %2637, label %2647

2637:                                             ; preds = %2614
  %2638 = zext nneg i32 %2635 to i64
  %2639 = shl i64 %2633, %2638
  %2640 = call i64 @llvm.bswap.i64(i64 %2639)
  %2641 = trunc i64 %2640 to i32
  %2642 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2641, ptr %2642, align 4, !tbaa !160
  %2643 = load i32, ptr %2143, align 8, !tbaa !274
  %2644 = add nsw i32 %2643, 32
  store i32 %2644, ptr %2143, align 8, !tbaa !274
  %2645 = load ptr, ptr %2142, align 8, !tbaa !272
  %2646 = getelementptr inbounds i8, ptr %2645, i64 4
  store ptr %2646, ptr %2142, align 8, !tbaa !272
  br label %2647

2647:                                             ; preds = %2637, %2614
  %2648 = add nuw nsw i32 %2630, 1
  %2649 = load i64, ptr %2147, align 8, !tbaa !275
  %2650 = zext nneg i32 %2648 to i64
  %2651 = shl i64 %2649, %2650
  %2652 = zext i32 %2615 to i64
  %2653 = or i64 %2651, %2652
  store i64 %2653, ptr %2147, align 8, !tbaa !275
  %2654 = load i32, ptr %2143, align 8, !tbaa !274
  %2655 = sub nsw i32 %2654, %2648
  store i32 %2655, ptr %2143, align 8, !tbaa !274
  %2656 = icmp slt i32 %2655, 33
  br i1 %2656, label %2657, label %2667

2657:                                             ; preds = %2647
  %2658 = zext nneg i32 %2655 to i64
  %2659 = shl i64 %2653, %2658
  %2660 = call i64 @llvm.bswap.i64(i64 %2659)
  %2661 = trunc i64 %2660 to i32
  %2662 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2661, ptr %2662, align 4, !tbaa !160
  %2663 = load i32, ptr %2143, align 8, !tbaa !274
  %2664 = add nsw i32 %2663, 32
  store i32 %2664, ptr %2143, align 8, !tbaa !274
  %2665 = load ptr, ptr %2142, align 8, !tbaa !272
  %2666 = getelementptr inbounds i8, ptr %2665, i64 4
  store ptr %2666, ptr %2142, align 8, !tbaa !272
  br label %2667

2667:                                             ; preds = %2657, %2647, %2611
  %2668 = load ptr, ptr %2144, align 16, !tbaa !401
  %2669 = getelementptr inbounds %struct.x264_sps_t, ptr %2668, i64 0, i32 7
  %2670 = load i32, ptr %2669, align 4, !tbaa !372
  switch i32 %2670, label %2807 [
    i32 0, label %2671
    i32 1, label %2727
  ]

2671:                                             ; preds = %2667
  %2672 = getelementptr inbounds %struct.x264_sps_t, ptr %2668, i64 0, i32 8
  %2673 = load i32, ptr %2672, align 4, !tbaa !408
  %2674 = load i32, ptr %2161, align 4, !tbaa !409
  %2675 = shl nsw i32 -1, %2673
  %2676 = xor i32 %2675, -1
  %2677 = and i32 %2674, %2676
  %2678 = load i64, ptr %2147, align 8, !tbaa !275
  %2679 = zext nneg i32 %2673 to i64
  %2680 = shl i64 %2678, %2679
  %2681 = zext nneg i32 %2677 to i64
  %2682 = or i64 %2680, %2681
  store i64 %2682, ptr %2147, align 8, !tbaa !275
  %2683 = load i32, ptr %2143, align 8, !tbaa !274
  %2684 = sub nsw i32 %2683, %2673
  store i32 %2684, ptr %2143, align 8, !tbaa !274
  %2685 = icmp slt i32 %2684, 33
  br i1 %2685, label %2686, label %2696

2686:                                             ; preds = %2671
  %2687 = zext nneg i32 %2684 to i64
  %2688 = shl i64 %2682, %2687
  %2689 = call i64 @llvm.bswap.i64(i64 %2688)
  %2690 = trunc i64 %2689 to i32
  %2691 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2690, ptr %2691, align 4, !tbaa !160
  %2692 = load i32, ptr %2143, align 8, !tbaa !274
  %2693 = add nsw i32 %2692, 32
  store i32 %2693, ptr %2143, align 8, !tbaa !274
  %2694 = load ptr, ptr %2142, align 8, !tbaa !272
  %2695 = getelementptr inbounds i8, ptr %2694, i64 4
  store ptr %2695, ptr %2142, align 8, !tbaa !272
  br label %2696

2696:                                             ; preds = %2686, %2671
  %2697 = load ptr, ptr %2159, align 8, !tbaa !410
  %2698 = getelementptr inbounds %struct.x264_pps_t, ptr %2697, i64 0, i32 3
  %2699 = load i32, ptr %2698, align 4, !tbaa !411
  %2700 = icmp eq i32 %2699, 0
  br i1 %2700, label %2807, label %2701

2701:                                             ; preds = %2696
  %2702 = load i32, ptr %2155, align 8, !tbaa !405
  %2703 = icmp eq i32 %2702, 0
  br i1 %2703, label %2704, label %2807

2704:                                             ; preds = %2701
  %2705 = load i32, ptr %2162, align 8, !tbaa !412
  %2706 = shl nsw i32 %2705, 1
  %2707 = sub nsw i32 1, %2706
  %2708 = icmp sgt i32 %2705, 0
  %2709 = select i1 %2708, i32 %2706, i32 %2707
  %2710 = icmp sgt i32 %2709, 255
  %2711 = lshr i32 %2709, 8
  %2712 = select i1 %2710, i32 16, i32 0
  %2713 = select i1 %2710, i32 %2711, i32 %2709
  %2714 = sext i32 %2713 to i64
  %2715 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2714
  %2716 = load i8, ptr %2715, align 1, !tbaa !160
  %2717 = zext i8 %2716 to i32
  %2718 = add nuw nsw i32 %2712, %2717
  %2719 = load i64, ptr %2147, align 8, !tbaa !275
  %2720 = zext nneg i32 %2718 to i64
  %2721 = shl i64 %2719, %2720
  %2722 = zext i32 %2709 to i64
  %2723 = or i64 %2721, %2722
  store i64 %2723, ptr %2147, align 8, !tbaa !275
  %2724 = load i32, ptr %2143, align 8, !tbaa !274
  %2725 = sub nsw i32 %2724, %2718
  store i32 %2725, ptr %2143, align 8, !tbaa !274
  %2726 = icmp slt i32 %2725, 33
  br i1 %2726, label %2795, label %2807

2727:                                             ; preds = %2667
  %2728 = getelementptr inbounds %struct.x264_sps_t, ptr %2668, i64 0, i32 9
  %2729 = load i32, ptr %2728, align 4, !tbaa !413
  %2730 = icmp eq i32 %2729, 0
  br i1 %2730, label %2731, label %2807

2731:                                             ; preds = %2727
  %2732 = load i32, ptr %2158, align 4, !tbaa !145
  %2733 = shl nsw i32 %2732, 1
  %2734 = sub nsw i32 1, %2733
  %2735 = icmp sgt i32 %2732, 0
  %2736 = select i1 %2735, i32 %2733, i32 %2734
  %2737 = icmp sgt i32 %2736, 255
  %2738 = lshr i32 %2736, 8
  %2739 = select i1 %2737, i32 16, i32 0
  %2740 = select i1 %2737, i32 %2738, i32 %2736
  %2741 = sext i32 %2740 to i64
  %2742 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2741
  %2743 = load i8, ptr %2742, align 1, !tbaa !160
  %2744 = zext i8 %2743 to i32
  %2745 = add nuw nsw i32 %2739, %2744
  %2746 = load i64, ptr %2147, align 8, !tbaa !275
  %2747 = zext nneg i32 %2745 to i64
  %2748 = shl i64 %2746, %2747
  %2749 = zext i32 %2736 to i64
  %2750 = or i64 %2748, %2749
  store i64 %2750, ptr %2147, align 8, !tbaa !275
  %2751 = load i32, ptr %2143, align 8, !tbaa !274
  %2752 = sub nsw i32 %2751, %2745
  store i32 %2752, ptr %2143, align 8, !tbaa !274
  %2753 = icmp slt i32 %2752, 33
  br i1 %2753, label %2754, label %2764

2754:                                             ; preds = %2731
  %2755 = zext nneg i32 %2752 to i64
  %2756 = shl i64 %2750, %2755
  %2757 = call i64 @llvm.bswap.i64(i64 %2756)
  %2758 = trunc i64 %2757 to i32
  %2759 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2758, ptr %2759, align 4, !tbaa !160
  %2760 = load i32, ptr %2143, align 8, !tbaa !274
  %2761 = add nsw i32 %2760, 32
  store i32 %2761, ptr %2143, align 8, !tbaa !274
  %2762 = load ptr, ptr %2142, align 8, !tbaa !272
  %2763 = getelementptr inbounds i8, ptr %2762, i64 4
  store ptr %2763, ptr %2142, align 8, !tbaa !272
  br label %2764

2764:                                             ; preds = %2754, %2731
  %2765 = load ptr, ptr %2159, align 8, !tbaa !410
  %2766 = getelementptr inbounds %struct.x264_pps_t, ptr %2765, i64 0, i32 3
  %2767 = load i32, ptr %2766, align 4, !tbaa !411
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2807, label %2769

2769:                                             ; preds = %2764
  %2770 = load i32, ptr %2155, align 8, !tbaa !405
  %2771 = icmp eq i32 %2770, 0
  br i1 %2771, label %2772, label %2807

2772:                                             ; preds = %2769
  %2773 = load i32, ptr %2160, align 4, !tbaa !145
  %2774 = shl nsw i32 %2773, 1
  %2775 = sub nsw i32 1, %2774
  %2776 = icmp sgt i32 %2773, 0
  %2777 = select i1 %2776, i32 %2774, i32 %2775
  %2778 = icmp sgt i32 %2777, 255
  %2779 = lshr i32 %2777, 8
  %2780 = select i1 %2778, i32 16, i32 0
  %2781 = select i1 %2778, i32 %2779, i32 %2777
  %2782 = sext i32 %2781 to i64
  %2783 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2782
  %2784 = load i8, ptr %2783, align 1, !tbaa !160
  %2785 = zext i8 %2784 to i32
  %2786 = add nuw nsw i32 %2780, %2785
  %2787 = load i64, ptr %2147, align 8, !tbaa !275
  %2788 = zext nneg i32 %2786 to i64
  %2789 = shl i64 %2787, %2788
  %2790 = zext i32 %2777 to i64
  %2791 = or i64 %2789, %2790
  store i64 %2791, ptr %2147, align 8, !tbaa !275
  %2792 = load i32, ptr %2143, align 8, !tbaa !274
  %2793 = sub nsw i32 %2792, %2786
  store i32 %2793, ptr %2143, align 8, !tbaa !274
  %2794 = icmp slt i32 %2793, 33
  br i1 %2794, label %2795, label %2807

2795:                                             ; preds = %2772, %2704
  %2796 = phi i32 [ %2725, %2704 ], [ %2793, %2772 ]
  %2797 = phi i64 [ %2723, %2704 ], [ %2791, %2772 ]
  %2798 = zext nneg i32 %2796 to i64
  %2799 = shl i64 %2797, %2798
  %2800 = call i64 @llvm.bswap.i64(i64 %2799)
  %2801 = trunc i64 %2800 to i32
  %2802 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2801, ptr %2802, align 4, !tbaa !160
  %2803 = load i32, ptr %2143, align 8, !tbaa !274
  %2804 = add nsw i32 %2803, 32
  store i32 %2804, ptr %2143, align 8, !tbaa !274
  %2805 = load ptr, ptr %2142, align 8, !tbaa !272
  %2806 = getelementptr inbounds i8, ptr %2805, i64 4
  store ptr %2806, ptr %2142, align 8, !tbaa !272
  br label %2807

2807:                                             ; preds = %2795, %2772, %2769, %2764, %2727, %2704, %2701, %2696, %2667
  %2808 = load ptr, ptr %2159, align 8, !tbaa !410
  %2809 = getelementptr inbounds %struct.x264_pps_t, ptr %2808, i64 0, i32 14
  %2810 = load i32, ptr %2809, align 8, !tbaa !414
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %2866, label %2812

2812:                                             ; preds = %2807
  %2813 = load i32, ptr %2163, align 4, !tbaa !415
  %2814 = add i32 %2813, 1
  %2815 = icmp sgt i32 %2814, 65535
  %2816 = lshr i32 %2814, 16
  %2817 = select i1 %2815, i32 32, i32 0
  %2818 = select i1 %2815, i32 %2816, i32 %2814
  %2819 = icmp sgt i32 %2818, 255
  %2820 = or disjoint i32 %2817, 16
  %2821 = lshr i32 %2818, 8
  %2822 = select i1 %2819, i32 %2820, i32 %2817
  %2823 = select i1 %2819, i32 %2821, i32 %2818
  %2824 = sext i32 %2823 to i64
  %2825 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2824
  %2826 = load i8, ptr %2825, align 1, !tbaa !160
  %2827 = zext i8 %2826 to i32
  %2828 = add nuw nsw i32 %2822, %2827
  %2829 = lshr i32 %2828, 1
  %2830 = load i64, ptr %2147, align 8, !tbaa !275
  %2831 = zext nneg i32 %2829 to i64
  %2832 = shl i64 %2830, %2831
  store i64 %2832, ptr %2147, align 8, !tbaa !275
  %2833 = load i32, ptr %2143, align 8, !tbaa !274
  %2834 = sub nsw i32 %2833, %2829
  store i32 %2834, ptr %2143, align 8, !tbaa !274
  %2835 = icmp slt i32 %2834, 33
  br i1 %2835, label %2836, label %2846

2836:                                             ; preds = %2812
  %2837 = zext nneg i32 %2834 to i64
  %2838 = shl i64 %2832, %2837
  %2839 = call i64 @llvm.bswap.i64(i64 %2838)
  %2840 = trunc i64 %2839 to i32
  %2841 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2840, ptr %2841, align 4, !tbaa !160
  %2842 = load i32, ptr %2143, align 8, !tbaa !274
  %2843 = add nsw i32 %2842, 32
  store i32 %2843, ptr %2143, align 8, !tbaa !274
  %2844 = load ptr, ptr %2142, align 8, !tbaa !272
  %2845 = getelementptr inbounds i8, ptr %2844, i64 4
  store ptr %2845, ptr %2142, align 8, !tbaa !272
  br label %2846

2846:                                             ; preds = %2836, %2812
  %2847 = add nuw nsw i32 %2829, 1
  %2848 = load i64, ptr %2147, align 8, !tbaa !275
  %2849 = zext nneg i32 %2847 to i64
  %2850 = shl i64 %2848, %2849
  %2851 = zext i32 %2814 to i64
  %2852 = or i64 %2850, %2851
  store i64 %2852, ptr %2147, align 8, !tbaa !275
  %2853 = load i32, ptr %2143, align 8, !tbaa !274
  %2854 = sub nsw i32 %2853, %2847
  store i32 %2854, ptr %2143, align 8, !tbaa !274
  %2855 = icmp slt i32 %2854, 33
  br i1 %2855, label %2856, label %2866

2856:                                             ; preds = %2846
  %2857 = zext nneg i32 %2854 to i64
  %2858 = shl i64 %2852, %2857
  %2859 = call i64 @llvm.bswap.i64(i64 %2858)
  %2860 = trunc i64 %2859 to i32
  %2861 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2860, ptr %2861, align 4, !tbaa !160
  %2862 = load i32, ptr %2143, align 8, !tbaa !274
  %2863 = add nsw i32 %2862, 32
  store i32 %2863, ptr %2143, align 8, !tbaa !274
  %2864 = load ptr, ptr %2142, align 8, !tbaa !272
  %2865 = getelementptr inbounds i8, ptr %2864, i64 4
  store ptr %2865, ptr %2142, align 8, !tbaa !272
  br label %2866

2866:                                             ; preds = %2856, %2846, %2807
  %2867 = load i32, ptr %611, align 16, !tbaa !399
  %2868 = icmp eq i32 %2867, 1
  br i1 %2868, label %2869, label %2884

2869:                                             ; preds = %2866
  %2870 = load i32, ptr %2164, align 8, !tbaa !416
  %2871 = load i64, ptr %2147, align 8, !tbaa !275
  %2872 = shl i64 %2871, 1
  %2873 = zext i32 %2870 to i64
  %2874 = or i64 %2872, %2873
  store i64 %2874, ptr %2147, align 8, !tbaa !275
  %2875 = load i32, ptr %2143, align 8, !tbaa !274
  %2876 = add nsw i32 %2875, -1
  store i32 %2876, ptr %2143, align 8, !tbaa !274
  %2877 = icmp eq i32 %2876, 32
  br i1 %2877, label %2878, label %2884

2878:                                             ; preds = %2869
  %2879 = trunc i64 %2874 to i32
  %2880 = call i32 @llvm.bswap.i32(i32 %2879)
  %2881 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2880, ptr %2881, align 4, !tbaa !160
  %2882 = load ptr, ptr %2142, align 8, !tbaa !272
  %2883 = getelementptr inbounds i8, ptr %2882, i64 4
  store ptr %2883, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %2884

2884:                                             ; preds = %2878, %2869, %2866
  %2885 = load i32, ptr %611, align 16, !tbaa !399
  switch i32 %2885, label %3013 [
    i32 0, label %2886
    i32 3, label %2886
    i32 1, label %2886
  ]

2886:                                             ; preds = %2884, %2884, %2884
  %2887 = load i32, ptr %2165, align 4, !tbaa !417
  %2888 = load i64, ptr %2147, align 8, !tbaa !275
  %2889 = shl i64 %2888, 1
  %2890 = zext i32 %2887 to i64
  %2891 = or i64 %2889, %2890
  store i64 %2891, ptr %2147, align 8, !tbaa !275
  %2892 = load i32, ptr %2143, align 8, !tbaa !274
  %2893 = add nsw i32 %2892, -1
  store i32 %2893, ptr %2143, align 8, !tbaa !274
  %2894 = icmp eq i32 %2893, 32
  br i1 %2894, label %2895, label %2901

2895:                                             ; preds = %2886
  %2896 = trunc i64 %2891 to i32
  %2897 = call i32 @llvm.bswap.i32(i32 %2896)
  %2898 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2897, ptr %2898, align 4, !tbaa !160
  %2899 = load ptr, ptr %2142, align 8, !tbaa !272
  %2900 = getelementptr inbounds i8, ptr %2899, i64 4
  store ptr %2900, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %2901

2901:                                             ; preds = %2895, %2886
  %2902 = load i32, ptr %2165, align 4, !tbaa !417
  %2903 = icmp eq i32 %2902, 0
  br i1 %2903, label %3013, label %2904

2904:                                             ; preds = %2901
  %2905 = load i32, ptr %2166, align 16, !tbaa !418
  %2906 = icmp sgt i32 %2905, 65535
  %2907 = lshr i32 %2905, 16
  %2908 = select i1 %2906, i32 32, i32 0
  %2909 = select i1 %2906, i32 %2907, i32 %2905
  %2910 = icmp sgt i32 %2909, 255
  %2911 = or disjoint i32 %2908, 16
  %2912 = lshr i32 %2909, 8
  %2913 = select i1 %2910, i32 %2911, i32 %2908
  %2914 = select i1 %2910, i32 %2912, i32 %2909
  %2915 = sext i32 %2914 to i64
  %2916 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2915
  %2917 = load i8, ptr %2916, align 1, !tbaa !160
  %2918 = zext i8 %2917 to i32
  %2919 = add nuw nsw i32 %2913, %2918
  %2920 = lshr i32 %2919, 1
  %2921 = load i64, ptr %2147, align 8, !tbaa !275
  %2922 = zext nneg i32 %2920 to i64
  %2923 = shl i64 %2921, %2922
  store i64 %2923, ptr %2147, align 8, !tbaa !275
  %2924 = load i32, ptr %2143, align 8, !tbaa !274
  %2925 = sub nsw i32 %2924, %2920
  store i32 %2925, ptr %2143, align 8, !tbaa !274
  %2926 = icmp slt i32 %2925, 33
  br i1 %2926, label %2927, label %2937

2927:                                             ; preds = %2904
  %2928 = zext nneg i32 %2925 to i64
  %2929 = shl i64 %2923, %2928
  %2930 = call i64 @llvm.bswap.i64(i64 %2929)
  %2931 = trunc i64 %2930 to i32
  %2932 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2931, ptr %2932, align 4, !tbaa !160
  %2933 = load i32, ptr %2143, align 8, !tbaa !274
  %2934 = add nsw i32 %2933, 32
  store i32 %2934, ptr %2143, align 8, !tbaa !274
  %2935 = load ptr, ptr %2142, align 8, !tbaa !272
  %2936 = getelementptr inbounds i8, ptr %2935, i64 4
  store ptr %2936, ptr %2142, align 8, !tbaa !272
  br label %2937

2937:                                             ; preds = %2927, %2904
  %2938 = add nuw nsw i32 %2920, 1
  %2939 = load i64, ptr %2147, align 8, !tbaa !275
  %2940 = zext nneg i32 %2938 to i64
  %2941 = shl i64 %2939, %2940
  %2942 = zext i32 %2905 to i64
  %2943 = or i64 %2941, %2942
  store i64 %2943, ptr %2147, align 8, !tbaa !275
  %2944 = load i32, ptr %2143, align 8, !tbaa !274
  %2945 = sub nsw i32 %2944, %2938
  store i32 %2945, ptr %2143, align 8, !tbaa !274
  %2946 = icmp slt i32 %2945, 33
  br i1 %2946, label %2947, label %2957

2947:                                             ; preds = %2937
  %2948 = zext nneg i32 %2945 to i64
  %2949 = shl i64 %2943, %2948
  %2950 = call i64 @llvm.bswap.i64(i64 %2949)
  %2951 = trunc i64 %2950 to i32
  %2952 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2951, ptr %2952, align 4, !tbaa !160
  %2953 = load i32, ptr %2143, align 8, !tbaa !274
  %2954 = add nsw i32 %2953, 32
  store i32 %2954, ptr %2143, align 8, !tbaa !274
  %2955 = load ptr, ptr %2142, align 8, !tbaa !272
  %2956 = getelementptr inbounds i8, ptr %2955, i64 4
  store ptr %2956, ptr %2142, align 8, !tbaa !272
  br label %2957

2957:                                             ; preds = %2947, %2937
  %2958 = load i32, ptr %611, align 16, !tbaa !399
  %2959 = icmp eq i32 %2958, 1
  br i1 %2959, label %2960, label %3013

2960:                                             ; preds = %2957
  %2961 = load i32, ptr %2167, align 4, !tbaa !419
  %2962 = icmp sgt i32 %2961, 65535
  %2963 = lshr i32 %2961, 16
  %2964 = select i1 %2962, i32 32, i32 0
  %2965 = select i1 %2962, i32 %2963, i32 %2961
  %2966 = icmp sgt i32 %2965, 255
  %2967 = or disjoint i32 %2964, 16
  %2968 = lshr i32 %2965, 8
  %2969 = select i1 %2966, i32 %2967, i32 %2964
  %2970 = select i1 %2966, i32 %2968, i32 %2965
  %2971 = sext i32 %2970 to i64
  %2972 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2971
  %2973 = load i8, ptr %2972, align 1, !tbaa !160
  %2974 = zext i8 %2973 to i32
  %2975 = add nuw nsw i32 %2969, %2974
  %2976 = lshr i32 %2975, 1
  %2977 = load i64, ptr %2147, align 8, !tbaa !275
  %2978 = zext nneg i32 %2976 to i64
  %2979 = shl i64 %2977, %2978
  store i64 %2979, ptr %2147, align 8, !tbaa !275
  %2980 = load i32, ptr %2143, align 8, !tbaa !274
  %2981 = sub nsw i32 %2980, %2976
  store i32 %2981, ptr %2143, align 8, !tbaa !274
  %2982 = icmp slt i32 %2981, 33
  br i1 %2982, label %2983, label %2993

2983:                                             ; preds = %2960
  %2984 = zext nneg i32 %2981 to i64
  %2985 = shl i64 %2979, %2984
  %2986 = call i64 @llvm.bswap.i64(i64 %2985)
  %2987 = trunc i64 %2986 to i32
  %2988 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %2987, ptr %2988, align 4, !tbaa !160
  %2989 = load i32, ptr %2143, align 8, !tbaa !274
  %2990 = add nsw i32 %2989, 32
  store i32 %2990, ptr %2143, align 8, !tbaa !274
  %2991 = load ptr, ptr %2142, align 8, !tbaa !272
  %2992 = getelementptr inbounds i8, ptr %2991, i64 4
  store ptr %2992, ptr %2142, align 8, !tbaa !272
  br label %2993

2993:                                             ; preds = %2983, %2960
  %2994 = add nuw nsw i32 %2976, 1
  %2995 = load i64, ptr %2147, align 8, !tbaa !275
  %2996 = zext nneg i32 %2994 to i64
  %2997 = shl i64 %2995, %2996
  %2998 = zext i32 %2961 to i64
  %2999 = or i64 %2997, %2998
  store i64 %2999, ptr %2147, align 8, !tbaa !275
  %3000 = load i32, ptr %2143, align 8, !tbaa !274
  %3001 = sub nsw i32 %3000, %2994
  store i32 %3001, ptr %2143, align 8, !tbaa !274
  %3002 = icmp slt i32 %3001, 33
  br i1 %3002, label %3003, label %3013

3003:                                             ; preds = %2993
  %3004 = zext nneg i32 %3001 to i64
  %3005 = shl i64 %2999, %3004
  %3006 = call i64 @llvm.bswap.i64(i64 %3005)
  %3007 = trunc i64 %3006 to i32
  %3008 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3007, ptr %3008, align 4, !tbaa !160
  %3009 = load i32, ptr %2143, align 8, !tbaa !274
  %3010 = add nsw i32 %3009, 32
  store i32 %3010, ptr %2143, align 8, !tbaa !274
  %3011 = load ptr, ptr %2142, align 8, !tbaa !272
  %3012 = getelementptr inbounds i8, ptr %3011, i64 4
  store ptr %3012, ptr %2142, align 8, !tbaa !272
  br label %3013

3013:                                             ; preds = %3003, %2993, %2957, %2901, %2884
  %3014 = load i32, ptr %611, align 16, !tbaa !399
  %3015 = icmp eq i32 %3014, 2
  br i1 %3015, label %3186, label %3016

3016:                                             ; preds = %3013
  %3017 = load i32, ptr %2168, align 8, !tbaa !420
  %3018 = load i64, ptr %2147, align 8, !tbaa !275
  %3019 = shl i64 %3018, 1
  %3020 = zext i32 %3017 to i64
  %3021 = or i64 %3019, %3020
  store i64 %3021, ptr %2147, align 8, !tbaa !275
  %3022 = load i32, ptr %2143, align 8, !tbaa !274
  %3023 = add nsw i32 %3022, -1
  store i32 %3023, ptr %2143, align 8, !tbaa !274
  %3024 = icmp eq i32 %3023, 32
  br i1 %3024, label %3025, label %3031

3025:                                             ; preds = %3016
  %3026 = trunc i64 %3021 to i32
  %3027 = call i32 @llvm.bswap.i32(i32 %3026)
  %3028 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3027, ptr %3028, align 4, !tbaa !160
  %3029 = load ptr, ptr %2142, align 8, !tbaa !272
  %3030 = getelementptr inbounds i8, ptr %3029, i64 4
  store ptr %3030, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3031

3031:                                             ; preds = %3025, %3016
  %3032 = load i32, ptr %2168, align 8, !tbaa !420
  %3033 = icmp eq i32 %3032, 0
  br i1 %3033, label %3186, label %3034

3034:                                             ; preds = %3031
  %3035 = load i32, ptr %2166, align 16, !tbaa !418
  %3036 = icmp sgt i32 %3035, 0
  br i1 %3036, label %3070, label %3037

3037:                                             ; preds = %3181, %3034
  %3038 = load i64, ptr %2147, align 8, !tbaa !275
  %3039 = shl i64 %3038, 2
  store i64 %3039, ptr %2147, align 8, !tbaa !275
  %3040 = load i32, ptr %2143, align 8, !tbaa !274
  %3041 = add nsw i32 %3040, -2
  store i32 %3041, ptr %2143, align 8, !tbaa !274
  %3042 = icmp slt i32 %3040, 35
  br i1 %3042, label %3043, label %3053

3043:                                             ; preds = %3037
  %3044 = zext nneg i32 %3041 to i64
  %3045 = shl i64 %3039, %3044
  %3046 = call i64 @llvm.bswap.i64(i64 %3045)
  %3047 = trunc i64 %3046 to i32
  %3048 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3047, ptr %3048, align 4, !tbaa !160
  %3049 = load i32, ptr %2143, align 8, !tbaa !274
  %3050 = add nsw i32 %3049, 32
  store i32 %3050, ptr %2143, align 8, !tbaa !274
  %3051 = load ptr, ptr %2142, align 8, !tbaa !272
  %3052 = getelementptr inbounds i8, ptr %3051, i64 4
  store ptr %3052, ptr %2142, align 8, !tbaa !272
  br label %3053

3053:                                             ; preds = %3043, %3037
  %3054 = load i64, ptr %2147, align 8, !tbaa !275
  %3055 = shl i64 %3054, 3
  %3056 = or disjoint i64 %3055, 4
  store i64 %3056, ptr %2147, align 8, !tbaa !275
  %3057 = load i32, ptr %2143, align 8, !tbaa !274
  %3058 = add nsw i32 %3057, -3
  store i32 %3058, ptr %2143, align 8, !tbaa !274
  %3059 = icmp slt i32 %3057, 36
  br i1 %3059, label %3060, label %3186

3060:                                             ; preds = %3053
  %3061 = zext nneg i32 %3058 to i64
  %3062 = shl i64 %3056, %3061
  %3063 = call i64 @llvm.bswap.i64(i64 %3062)
  %3064 = trunc i64 %3063 to i32
  %3065 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3064, ptr %3065, align 4, !tbaa !160
  %3066 = load i32, ptr %2143, align 8, !tbaa !274
  %3067 = add nsw i32 %3066, 32
  store i32 %3067, ptr %2143, align 8, !tbaa !274
  %3068 = load ptr, ptr %2142, align 8, !tbaa !272
  %3069 = getelementptr inbounds i8, ptr %3068, i64 4
  store ptr %3069, ptr %2142, align 8, !tbaa !272
  br label %3186

3070:                                             ; preds = %3034, %3181
  %3071 = phi i64 [ %3182, %3181 ], [ 0, %3034 ]
  %3072 = getelementptr inbounds [16 x %struct.anon.6], ptr %2169, i64 0, i64 %3071
  %3073 = load i32, ptr %3072, align 8, !tbaa !331
  %3074 = add i32 %3073, 1
  %3075 = icmp sgt i32 %3074, 65535
  %3076 = lshr i32 %3074, 16
  %3077 = select i1 %3075, i32 32, i32 0
  %3078 = select i1 %3075, i32 %3076, i32 %3074
  %3079 = icmp sgt i32 %3078, 255
  %3080 = or disjoint i32 %3077, 16
  %3081 = lshr i32 %3078, 8
  %3082 = select i1 %3079, i32 %3080, i32 %3077
  %3083 = select i1 %3079, i32 %3081, i32 %3078
  %3084 = sext i32 %3083 to i64
  %3085 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3084
  %3086 = load i8, ptr %3085, align 1, !tbaa !160
  %3087 = zext i8 %3086 to i32
  %3088 = add nuw nsw i32 %3082, %3087
  %3089 = lshr i32 %3088, 1
  %3090 = load i64, ptr %2147, align 8, !tbaa !275
  %3091 = zext nneg i32 %3089 to i64
  %3092 = shl i64 %3090, %3091
  store i64 %3092, ptr %2147, align 8, !tbaa !275
  %3093 = load i32, ptr %2143, align 8, !tbaa !274
  %3094 = sub nsw i32 %3093, %3089
  store i32 %3094, ptr %2143, align 8, !tbaa !274
  %3095 = icmp slt i32 %3094, 33
  br i1 %3095, label %3096, label %3106

3096:                                             ; preds = %3070
  %3097 = zext nneg i32 %3094 to i64
  %3098 = shl i64 %3092, %3097
  %3099 = call i64 @llvm.bswap.i64(i64 %3098)
  %3100 = trunc i64 %3099 to i32
  %3101 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3100, ptr %3101, align 4, !tbaa !160
  %3102 = load i32, ptr %2143, align 8, !tbaa !274
  %3103 = add nsw i32 %3102, 32
  store i32 %3103, ptr %2143, align 8, !tbaa !274
  %3104 = load ptr, ptr %2142, align 8, !tbaa !272
  %3105 = getelementptr inbounds i8, ptr %3104, i64 4
  store ptr %3105, ptr %2142, align 8, !tbaa !272
  br label %3106

3106:                                             ; preds = %3096, %3070
  %3107 = add nuw nsw i32 %3089, 1
  %3108 = load i64, ptr %2147, align 8, !tbaa !275
  %3109 = zext nneg i32 %3107 to i64
  %3110 = shl i64 %3108, %3109
  %3111 = zext i32 %3074 to i64
  %3112 = or i64 %3110, %3111
  store i64 %3112, ptr %2147, align 8, !tbaa !275
  %3113 = load i32, ptr %2143, align 8, !tbaa !274
  %3114 = sub nsw i32 %3113, %3107
  store i32 %3114, ptr %2143, align 8, !tbaa !274
  %3115 = icmp slt i32 %3114, 33
  br i1 %3115, label %3116, label %3126

3116:                                             ; preds = %3106
  %3117 = zext nneg i32 %3114 to i64
  %3118 = shl i64 %3112, %3117
  %3119 = call i64 @llvm.bswap.i64(i64 %3118)
  %3120 = trunc i64 %3119 to i32
  %3121 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3120, ptr %3121, align 4, !tbaa !160
  %3122 = load i32, ptr %2143, align 8, !tbaa !274
  %3123 = add nsw i32 %3122, 32
  store i32 %3123, ptr %2143, align 8, !tbaa !274
  %3124 = load ptr, ptr %2142, align 8, !tbaa !272
  %3125 = getelementptr inbounds i8, ptr %3124, i64 4
  store ptr %3125, ptr %2142, align 8, !tbaa !272
  br label %3126

3126:                                             ; preds = %3116, %3106
  %3127 = getelementptr inbounds [16 x %struct.anon.6], ptr %2169, i64 0, i64 %3071, i32 1
  %3128 = load i32, ptr %3127, align 4, !tbaa !301
  %3129 = add i32 %3128, 1
  %3130 = icmp sgt i32 %3129, 65535
  %3131 = lshr i32 %3129, 16
  %3132 = select i1 %3130, i32 32, i32 0
  %3133 = select i1 %3130, i32 %3131, i32 %3129
  %3134 = icmp sgt i32 %3133, 255
  %3135 = or disjoint i32 %3132, 16
  %3136 = lshr i32 %3133, 8
  %3137 = select i1 %3134, i32 %3135, i32 %3132
  %3138 = select i1 %3134, i32 %3136, i32 %3133
  %3139 = sext i32 %3138 to i64
  %3140 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3139
  %3141 = load i8, ptr %3140, align 1, !tbaa !160
  %3142 = zext i8 %3141 to i32
  %3143 = add nuw nsw i32 %3137, %3142
  %3144 = lshr i32 %3143, 1
  %3145 = load i64, ptr %2147, align 8, !tbaa !275
  %3146 = zext nneg i32 %3144 to i64
  %3147 = shl i64 %3145, %3146
  store i64 %3147, ptr %2147, align 8, !tbaa !275
  %3148 = load i32, ptr %2143, align 8, !tbaa !274
  %3149 = sub nsw i32 %3148, %3144
  store i32 %3149, ptr %2143, align 8, !tbaa !274
  %3150 = icmp slt i32 %3149, 33
  br i1 %3150, label %3151, label %3161

3151:                                             ; preds = %3126
  %3152 = zext nneg i32 %3149 to i64
  %3153 = shl i64 %3147, %3152
  %3154 = call i64 @llvm.bswap.i64(i64 %3153)
  %3155 = trunc i64 %3154 to i32
  %3156 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3155, ptr %3156, align 4, !tbaa !160
  %3157 = load i32, ptr %2143, align 8, !tbaa !274
  %3158 = add nsw i32 %3157, 32
  store i32 %3158, ptr %2143, align 8, !tbaa !274
  %3159 = load ptr, ptr %2142, align 8, !tbaa !272
  %3160 = getelementptr inbounds i8, ptr %3159, i64 4
  store ptr %3160, ptr %2142, align 8, !tbaa !272
  br label %3161

3161:                                             ; preds = %3151, %3126
  %3162 = add nuw nsw i32 %3144, 1
  %3163 = load i64, ptr %2147, align 8, !tbaa !275
  %3164 = zext nneg i32 %3162 to i64
  %3165 = shl i64 %3163, %3164
  %3166 = zext i32 %3129 to i64
  %3167 = or i64 %3165, %3166
  store i64 %3167, ptr %2147, align 8, !tbaa !275
  %3168 = load i32, ptr %2143, align 8, !tbaa !274
  %3169 = sub nsw i32 %3168, %3162
  store i32 %3169, ptr %2143, align 8, !tbaa !274
  %3170 = icmp slt i32 %3169, 33
  br i1 %3170, label %3171, label %3181

3171:                                             ; preds = %3161
  %3172 = zext nneg i32 %3169 to i64
  %3173 = shl i64 %3167, %3172
  %3174 = call i64 @llvm.bswap.i64(i64 %3173)
  %3175 = trunc i64 %3174 to i32
  %3176 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3175, ptr %3176, align 4, !tbaa !160
  %3177 = load i32, ptr %2143, align 8, !tbaa !274
  %3178 = add nsw i32 %3177, 32
  store i32 %3178, ptr %2143, align 8, !tbaa !274
  %3179 = load ptr, ptr %2142, align 8, !tbaa !272
  %3180 = getelementptr inbounds i8, ptr %3179, i64 4
  store ptr %3180, ptr %2142, align 8, !tbaa !272
  br label %3181

3181:                                             ; preds = %3171, %3161
  %3182 = add nuw nsw i64 %3071, 1
  %3183 = load i32, ptr %2166, align 16, !tbaa !418
  %3184 = sext i32 %3183 to i64
  %3185 = icmp slt i64 %3182, %3184
  br i1 %3185, label %3070, label %3037, !llvm.loop !421

3186:                                             ; preds = %3060, %3053, %3031, %3013
  %3187 = load i32, ptr %611, align 16, !tbaa !399
  %3188 = icmp eq i32 %3187, 1
  br i1 %3188, label %3189, label %3359

3189:                                             ; preds = %3186
  %3190 = load i32, ptr %2170, align 4, !tbaa !422
  %3191 = load i64, ptr %2147, align 8, !tbaa !275
  %3192 = shl i64 %3191, 1
  %3193 = zext i32 %3190 to i64
  %3194 = or i64 %3192, %3193
  store i64 %3194, ptr %2147, align 8, !tbaa !275
  %3195 = load i32, ptr %2143, align 8, !tbaa !274
  %3196 = add nsw i32 %3195, -1
  store i32 %3196, ptr %2143, align 8, !tbaa !274
  %3197 = icmp eq i32 %3196, 32
  br i1 %3197, label %3198, label %3204

3198:                                             ; preds = %3189
  %3199 = trunc i64 %3194 to i32
  %3200 = call i32 @llvm.bswap.i32(i32 %3199)
  %3201 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3200, ptr %3201, align 4, !tbaa !160
  %3202 = load ptr, ptr %2142, align 8, !tbaa !272
  %3203 = getelementptr inbounds i8, ptr %3202, i64 4
  store ptr %3203, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3204

3204:                                             ; preds = %3198, %3189
  %3205 = load i32, ptr %2170, align 4, !tbaa !422
  %3206 = icmp eq i32 %3205, 0
  br i1 %3206, label %3359, label %3207

3207:                                             ; preds = %3204
  %3208 = load i32, ptr %2167, align 4, !tbaa !419
  %3209 = icmp sgt i32 %3208, 0
  br i1 %3209, label %3243, label %3210

3210:                                             ; preds = %3354, %3207
  %3211 = load i64, ptr %2147, align 8, !tbaa !275
  %3212 = shl i64 %3211, 2
  store i64 %3212, ptr %2147, align 8, !tbaa !275
  %3213 = load i32, ptr %2143, align 8, !tbaa !274
  %3214 = add nsw i32 %3213, -2
  store i32 %3214, ptr %2143, align 8, !tbaa !274
  %3215 = icmp slt i32 %3213, 35
  br i1 %3215, label %3216, label %3226

3216:                                             ; preds = %3210
  %3217 = zext nneg i32 %3214 to i64
  %3218 = shl i64 %3212, %3217
  %3219 = call i64 @llvm.bswap.i64(i64 %3218)
  %3220 = trunc i64 %3219 to i32
  %3221 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3220, ptr %3221, align 4, !tbaa !160
  %3222 = load i32, ptr %2143, align 8, !tbaa !274
  %3223 = add nsw i32 %3222, 32
  store i32 %3223, ptr %2143, align 8, !tbaa !274
  %3224 = load ptr, ptr %2142, align 8, !tbaa !272
  %3225 = getelementptr inbounds i8, ptr %3224, i64 4
  store ptr %3225, ptr %2142, align 8, !tbaa !272
  br label %3226

3226:                                             ; preds = %3216, %3210
  %3227 = load i64, ptr %2147, align 8, !tbaa !275
  %3228 = shl i64 %3227, 3
  %3229 = or disjoint i64 %3228, 4
  store i64 %3229, ptr %2147, align 8, !tbaa !275
  %3230 = load i32, ptr %2143, align 8, !tbaa !274
  %3231 = add nsw i32 %3230, -3
  store i32 %3231, ptr %2143, align 8, !tbaa !274
  %3232 = icmp slt i32 %3230, 36
  br i1 %3232, label %3233, label %3359

3233:                                             ; preds = %3226
  %3234 = zext nneg i32 %3231 to i64
  %3235 = shl i64 %3229, %3234
  %3236 = call i64 @llvm.bswap.i64(i64 %3235)
  %3237 = trunc i64 %3236 to i32
  %3238 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3237, ptr %3238, align 4, !tbaa !160
  %3239 = load i32, ptr %2143, align 8, !tbaa !274
  %3240 = add nsw i32 %3239, 32
  store i32 %3240, ptr %2143, align 8, !tbaa !274
  %3241 = load ptr, ptr %2142, align 8, !tbaa !272
  %3242 = getelementptr inbounds i8, ptr %3241, i64 4
  store ptr %3242, ptr %2142, align 8, !tbaa !272
  br label %3359

3243:                                             ; preds = %3207, %3354
  %3244 = phi i64 [ %3355, %3354 ], [ 0, %3207 ]
  %3245 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 21, i64 1, i64 %3244
  %3246 = load i32, ptr %3245, align 8, !tbaa !331
  %3247 = add i32 %3246, 1
  %3248 = icmp sgt i32 %3247, 65535
  %3249 = lshr i32 %3247, 16
  %3250 = select i1 %3248, i32 32, i32 0
  %3251 = select i1 %3248, i32 %3249, i32 %3247
  %3252 = icmp sgt i32 %3251, 255
  %3253 = or disjoint i32 %3250, 16
  %3254 = lshr i32 %3251, 8
  %3255 = select i1 %3252, i32 %3253, i32 %3250
  %3256 = select i1 %3252, i32 %3254, i32 %3251
  %3257 = sext i32 %3256 to i64
  %3258 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3257
  %3259 = load i8, ptr %3258, align 1, !tbaa !160
  %3260 = zext i8 %3259 to i32
  %3261 = add nuw nsw i32 %3255, %3260
  %3262 = lshr i32 %3261, 1
  %3263 = load i64, ptr %2147, align 8, !tbaa !275
  %3264 = zext nneg i32 %3262 to i64
  %3265 = shl i64 %3263, %3264
  store i64 %3265, ptr %2147, align 8, !tbaa !275
  %3266 = load i32, ptr %2143, align 8, !tbaa !274
  %3267 = sub nsw i32 %3266, %3262
  store i32 %3267, ptr %2143, align 8, !tbaa !274
  %3268 = icmp slt i32 %3267, 33
  br i1 %3268, label %3269, label %3279

3269:                                             ; preds = %3243
  %3270 = zext nneg i32 %3267 to i64
  %3271 = shl i64 %3265, %3270
  %3272 = call i64 @llvm.bswap.i64(i64 %3271)
  %3273 = trunc i64 %3272 to i32
  %3274 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3273, ptr %3274, align 4, !tbaa !160
  %3275 = load i32, ptr %2143, align 8, !tbaa !274
  %3276 = add nsw i32 %3275, 32
  store i32 %3276, ptr %2143, align 8, !tbaa !274
  %3277 = load ptr, ptr %2142, align 8, !tbaa !272
  %3278 = getelementptr inbounds i8, ptr %3277, i64 4
  store ptr %3278, ptr %2142, align 8, !tbaa !272
  br label %3279

3279:                                             ; preds = %3269, %3243
  %3280 = add nuw nsw i32 %3262, 1
  %3281 = load i64, ptr %2147, align 8, !tbaa !275
  %3282 = zext nneg i32 %3280 to i64
  %3283 = shl i64 %3281, %3282
  %3284 = zext i32 %3247 to i64
  %3285 = or i64 %3283, %3284
  store i64 %3285, ptr %2147, align 8, !tbaa !275
  %3286 = load i32, ptr %2143, align 8, !tbaa !274
  %3287 = sub nsw i32 %3286, %3280
  store i32 %3287, ptr %2143, align 8, !tbaa !274
  %3288 = icmp slt i32 %3287, 33
  br i1 %3288, label %3289, label %3299

3289:                                             ; preds = %3279
  %3290 = zext nneg i32 %3287 to i64
  %3291 = shl i64 %3285, %3290
  %3292 = call i64 @llvm.bswap.i64(i64 %3291)
  %3293 = trunc i64 %3292 to i32
  %3294 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3293, ptr %3294, align 4, !tbaa !160
  %3295 = load i32, ptr %2143, align 8, !tbaa !274
  %3296 = add nsw i32 %3295, 32
  store i32 %3296, ptr %2143, align 8, !tbaa !274
  %3297 = load ptr, ptr %2142, align 8, !tbaa !272
  %3298 = getelementptr inbounds i8, ptr %3297, i64 4
  store ptr %3298, ptr %2142, align 8, !tbaa !272
  br label %3299

3299:                                             ; preds = %3289, %3279
  %3300 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 21, i64 1, i64 %3244, i32 1
  %3301 = load i32, ptr %3300, align 4, !tbaa !301
  %3302 = add i32 %3301, 1
  %3303 = icmp sgt i32 %3302, 65535
  %3304 = lshr i32 %3302, 16
  %3305 = select i1 %3303, i32 32, i32 0
  %3306 = select i1 %3303, i32 %3304, i32 %3302
  %3307 = icmp sgt i32 %3306, 255
  %3308 = or disjoint i32 %3305, 16
  %3309 = lshr i32 %3306, 8
  %3310 = select i1 %3307, i32 %3308, i32 %3305
  %3311 = select i1 %3307, i32 %3309, i32 %3306
  %3312 = sext i32 %3311 to i64
  %3313 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3312
  %3314 = load i8, ptr %3313, align 1, !tbaa !160
  %3315 = zext i8 %3314 to i32
  %3316 = add nuw nsw i32 %3310, %3315
  %3317 = lshr i32 %3316, 1
  %3318 = load i64, ptr %2147, align 8, !tbaa !275
  %3319 = zext nneg i32 %3317 to i64
  %3320 = shl i64 %3318, %3319
  store i64 %3320, ptr %2147, align 8, !tbaa !275
  %3321 = load i32, ptr %2143, align 8, !tbaa !274
  %3322 = sub nsw i32 %3321, %3317
  store i32 %3322, ptr %2143, align 8, !tbaa !274
  %3323 = icmp slt i32 %3322, 33
  br i1 %3323, label %3324, label %3334

3324:                                             ; preds = %3299
  %3325 = zext nneg i32 %3322 to i64
  %3326 = shl i64 %3320, %3325
  %3327 = call i64 @llvm.bswap.i64(i64 %3326)
  %3328 = trunc i64 %3327 to i32
  %3329 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3328, ptr %3329, align 4, !tbaa !160
  %3330 = load i32, ptr %2143, align 8, !tbaa !274
  %3331 = add nsw i32 %3330, 32
  store i32 %3331, ptr %2143, align 8, !tbaa !274
  %3332 = load ptr, ptr %2142, align 8, !tbaa !272
  %3333 = getelementptr inbounds i8, ptr %3332, i64 4
  store ptr %3333, ptr %2142, align 8, !tbaa !272
  br label %3334

3334:                                             ; preds = %3324, %3299
  %3335 = add nuw nsw i32 %3317, 1
  %3336 = load i64, ptr %2147, align 8, !tbaa !275
  %3337 = zext nneg i32 %3335 to i64
  %3338 = shl i64 %3336, %3337
  %3339 = zext i32 %3302 to i64
  %3340 = or i64 %3338, %3339
  store i64 %3340, ptr %2147, align 8, !tbaa !275
  %3341 = load i32, ptr %2143, align 8, !tbaa !274
  %3342 = sub nsw i32 %3341, %3335
  store i32 %3342, ptr %2143, align 8, !tbaa !274
  %3343 = icmp slt i32 %3342, 33
  br i1 %3343, label %3344, label %3354

3344:                                             ; preds = %3334
  %3345 = zext nneg i32 %3342 to i64
  %3346 = shl i64 %3340, %3345
  %3347 = call i64 @llvm.bswap.i64(i64 %3346)
  %3348 = trunc i64 %3347 to i32
  %3349 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3348, ptr %3349, align 4, !tbaa !160
  %3350 = load i32, ptr %2143, align 8, !tbaa !274
  %3351 = add nsw i32 %3350, 32
  store i32 %3351, ptr %2143, align 8, !tbaa !274
  %3352 = load ptr, ptr %2142, align 8, !tbaa !272
  %3353 = getelementptr inbounds i8, ptr %3352, i64 4
  store ptr %3353, ptr %2142, align 8, !tbaa !272
  br label %3354

3354:                                             ; preds = %3344, %3334
  %3355 = add nuw nsw i64 %3244, 1
  %3356 = load i32, ptr %2167, align 4, !tbaa !419
  %3357 = sext i32 %3356 to i64
  %3358 = icmp slt i64 %3355, %3357
  br i1 %3358, label %3243, label %3210, !llvm.loop !423

3359:                                             ; preds = %3233, %3226, %3204, %3186
  %3360 = load ptr, ptr %2159, align 8, !tbaa !410
  %3361 = getelementptr inbounds %struct.x264_pps_t, ptr %3360, i64 0, i32 7
  %3362 = load i32, ptr %3361, align 4, !tbaa !424
  %3363 = icmp eq i32 %3362, 0
  br i1 %3363, label %3666, label %3364

3364:                                             ; preds = %3359
  %3365 = load i32, ptr %611, align 16, !tbaa !399
  switch i32 %3365, label %3666 [
    i32 0, label %3366
    i32 3, label %3366
  ]

3366:                                             ; preds = %3364, %3364
  %3367 = load i32, ptr %2171, align 16, !tbaa !342
  %3368 = add i32 %3367, 1
  %3369 = icmp sgt i32 %3368, 65535
  %3370 = lshr i32 %3368, 16
  %3371 = select i1 %3369, i32 32, i32 0
  %3372 = select i1 %3369, i32 %3370, i32 %3368
  %3373 = icmp sgt i32 %3372, 255
  %3374 = or disjoint i32 %3371, 16
  %3375 = lshr i32 %3372, 8
  %3376 = select i1 %3373, i32 %3374, i32 %3371
  %3377 = select i1 %3373, i32 %3375, i32 %3372
  %3378 = sext i32 %3377 to i64
  %3379 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3378
  %3380 = load i8, ptr %3379, align 1, !tbaa !160
  %3381 = zext i8 %3380 to i32
  %3382 = add nuw nsw i32 %3376, %3381
  %3383 = lshr i32 %3382, 1
  %3384 = load i64, ptr %2147, align 8, !tbaa !275
  %3385 = zext nneg i32 %3383 to i64
  %3386 = shl i64 %3384, %3385
  store i64 %3386, ptr %2147, align 8, !tbaa !275
  %3387 = load i32, ptr %2143, align 8, !tbaa !274
  %3388 = sub nsw i32 %3387, %3383
  store i32 %3388, ptr %2143, align 8, !tbaa !274
  %3389 = icmp slt i32 %3388, 33
  br i1 %3389, label %3390, label %3400

3390:                                             ; preds = %3366
  %3391 = zext nneg i32 %3388 to i64
  %3392 = shl i64 %3386, %3391
  %3393 = call i64 @llvm.bswap.i64(i64 %3392)
  %3394 = trunc i64 %3393 to i32
  %3395 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3394, ptr %3395, align 4, !tbaa !160
  %3396 = load i32, ptr %2143, align 8, !tbaa !274
  %3397 = add nsw i32 %3396, 32
  store i32 %3397, ptr %2143, align 8, !tbaa !274
  %3398 = load ptr, ptr %2142, align 8, !tbaa !272
  %3399 = getelementptr inbounds i8, ptr %3398, i64 4
  store ptr %3399, ptr %2142, align 8, !tbaa !272
  br label %3400

3400:                                             ; preds = %3390, %3366
  %3401 = add nuw nsw i32 %3383, 1
  %3402 = load i64, ptr %2147, align 8, !tbaa !275
  %3403 = zext nneg i32 %3401 to i64
  %3404 = shl i64 %3402, %3403
  %3405 = zext i32 %3368 to i64
  %3406 = or i64 %3404, %3405
  store i64 %3406, ptr %2147, align 8, !tbaa !275
  %3407 = load i32, ptr %2143, align 8, !tbaa !274
  %3408 = sub nsw i32 %3407, %3401
  store i32 %3408, ptr %2143, align 8, !tbaa !274
  %3409 = icmp slt i32 %3408, 33
  br i1 %3409, label %3410, label %3420

3410:                                             ; preds = %3400
  %3411 = zext nneg i32 %3408 to i64
  %3412 = shl i64 %3406, %3411
  %3413 = call i64 @llvm.bswap.i64(i64 %3412)
  %3414 = trunc i64 %3413 to i32
  %3415 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3414, ptr %3415, align 4, !tbaa !160
  %3416 = load i32, ptr %2143, align 8, !tbaa !274
  %3417 = add nsw i32 %3416, 32
  store i32 %3417, ptr %2143, align 8, !tbaa !274
  %3418 = load ptr, ptr %2142, align 8, !tbaa !272
  %3419 = getelementptr inbounds i8, ptr %3418, i64 4
  store ptr %3419, ptr %2142, align 8, !tbaa !272
  br label %3420

3420:                                             ; preds = %3410, %3400
  %3421 = load i32, ptr %2172, align 16, !tbaa !342
  %3422 = add i32 %3421, 1
  %3423 = icmp sgt i32 %3422, 65535
  %3424 = lshr i32 %3422, 16
  %3425 = select i1 %3423, i32 32, i32 0
  %3426 = select i1 %3423, i32 %3424, i32 %3422
  %3427 = icmp sgt i32 %3426, 255
  %3428 = or disjoint i32 %3425, 16
  %3429 = lshr i32 %3426, 8
  %3430 = select i1 %3427, i32 %3428, i32 %3425
  %3431 = select i1 %3427, i32 %3429, i32 %3426
  %3432 = sext i32 %3431 to i64
  %3433 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3432
  %3434 = load i8, ptr %3433, align 1, !tbaa !160
  %3435 = zext i8 %3434 to i32
  %3436 = add nuw nsw i32 %3430, %3435
  %3437 = lshr i32 %3436, 1
  %3438 = load i64, ptr %2147, align 8, !tbaa !275
  %3439 = zext nneg i32 %3437 to i64
  %3440 = shl i64 %3438, %3439
  store i64 %3440, ptr %2147, align 8, !tbaa !275
  %3441 = load i32, ptr %2143, align 8, !tbaa !274
  %3442 = sub nsw i32 %3441, %3437
  store i32 %3442, ptr %2143, align 8, !tbaa !274
  %3443 = icmp slt i32 %3442, 33
  br i1 %3443, label %3444, label %3454

3444:                                             ; preds = %3420
  %3445 = zext nneg i32 %3442 to i64
  %3446 = shl i64 %3440, %3445
  %3447 = call i64 @llvm.bswap.i64(i64 %3446)
  %3448 = trunc i64 %3447 to i32
  %3449 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3448, ptr %3449, align 4, !tbaa !160
  %3450 = load i32, ptr %2143, align 8, !tbaa !274
  %3451 = add nsw i32 %3450, 32
  store i32 %3451, ptr %2143, align 8, !tbaa !274
  %3452 = load ptr, ptr %2142, align 8, !tbaa !272
  %3453 = getelementptr inbounds i8, ptr %3452, i64 4
  store ptr %3453, ptr %2142, align 8, !tbaa !272
  br label %3454

3454:                                             ; preds = %3444, %3420
  %3455 = add nuw nsw i32 %3437, 1
  %3456 = load i64, ptr %2147, align 8, !tbaa !275
  %3457 = zext nneg i32 %3455 to i64
  %3458 = shl i64 %3456, %3457
  %3459 = zext i32 %3422 to i64
  %3460 = or i64 %3458, %3459
  store i64 %3460, ptr %2147, align 8, !tbaa !275
  %3461 = load i32, ptr %2143, align 8, !tbaa !274
  %3462 = sub nsw i32 %3461, %3455
  store i32 %3462, ptr %2143, align 8, !tbaa !274
  %3463 = icmp slt i32 %3462, 33
  br i1 %3463, label %3464, label %3474

3464:                                             ; preds = %3454
  %3465 = zext nneg i32 %3462 to i64
  %3466 = shl i64 %3460, %3465
  %3467 = call i64 @llvm.bswap.i64(i64 %3466)
  %3468 = trunc i64 %3467 to i32
  %3469 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3468, ptr %3469, align 4, !tbaa !160
  %3470 = load i32, ptr %2143, align 8, !tbaa !274
  %3471 = add nsw i32 %3470, 32
  store i32 %3471, ptr %2143, align 8, !tbaa !274
  %3472 = load ptr, ptr %2142, align 8, !tbaa !272
  %3473 = getelementptr inbounds i8, ptr %3472, i64 4
  store ptr %3473, ptr %2142, align 8, !tbaa !272
  br label %3474

3474:                                             ; preds = %3464, %3454
  %3475 = load i32, ptr %2166, align 16, !tbaa !418
  %3476 = icmp sgt i32 %3475, 0
  br i1 %3476, label %3477, label %3666

3477:                                             ; preds = %3474, %3661
  %3478 = phi i64 [ %3662, %3661 ], [ 0, %3474 ]
  %3479 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %3478
  %3480 = getelementptr inbounds %struct.x264_weight_t, ptr %3479, i64 0, i32 5
  %3481 = load ptr, ptr %3480, align 16, !tbaa !340
  %3482 = icmp ne ptr %3481, null
  %3483 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %3478, i64 1, i32 5
  %3484 = load ptr, ptr %3483, align 16, !tbaa !340
  %3485 = icmp eq ptr %3484, null
  br i1 %3485, label %3486, label %3490

3486:                                             ; preds = %3477
  %3487 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %3478, i64 2, i32 5
  %3488 = load ptr, ptr %3487, align 16, !tbaa !340
  %3489 = icmp ne ptr %3488, null
  br label %3490

3490:                                             ; preds = %3486, %3477
  %3491 = phi i1 [ true, %3477 ], [ %3489, %3486 ]
  %3492 = load i64, ptr %2147, align 8, !tbaa !275
  %3493 = shl i64 %3492, 1
  %3494 = zext i1 %3482 to i64
  %3495 = or disjoint i64 %3493, %3494
  store i64 %3495, ptr %2147, align 8, !tbaa !275
  %3496 = load i32, ptr %2143, align 8, !tbaa !274
  %3497 = add nsw i32 %3496, -1
  store i32 %3497, ptr %2143, align 8, !tbaa !274
  %3498 = icmp eq i32 %3497, 32
  br i1 %3498, label %3499, label %3505

3499:                                             ; preds = %3490
  %3500 = trunc i64 %3495 to i32
  %3501 = call i32 @llvm.bswap.i32(i32 %3500)
  %3502 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3501, ptr %3502, align 4, !tbaa !160
  %3503 = load ptr, ptr %2142, align 8, !tbaa !272
  %3504 = getelementptr inbounds i8, ptr %3503, i64 4
  store ptr %3504, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3505

3505:                                             ; preds = %3499, %3490
  br i1 %3482, label %3506, label %3574

3506:                                             ; preds = %3505
  %3507 = getelementptr inbounds %struct.x264_weight_t, ptr %3479, i64 0, i32 3
  %3508 = load i32, ptr %3507, align 4, !tbaa !343
  %3509 = shl nsw i32 %3508, 1
  %3510 = sub nsw i32 1, %3509
  %3511 = icmp sgt i32 %3508, 0
  %3512 = select i1 %3511, i32 %3509, i32 %3510
  %3513 = icmp sgt i32 %3512, 255
  %3514 = lshr i32 %3512, 8
  %3515 = select i1 %3513, i32 16, i32 0
  %3516 = select i1 %3513, i32 %3514, i32 %3512
  %3517 = sext i32 %3516 to i64
  %3518 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3517
  %3519 = load i8, ptr %3518, align 1, !tbaa !160
  %3520 = zext i8 %3519 to i32
  %3521 = add nuw nsw i32 %3515, %3520
  %3522 = load i64, ptr %2147, align 8, !tbaa !275
  %3523 = zext nneg i32 %3521 to i64
  %3524 = shl i64 %3522, %3523
  %3525 = zext i32 %3512 to i64
  %3526 = or i64 %3524, %3525
  store i64 %3526, ptr %2147, align 8, !tbaa !275
  %3527 = load i32, ptr %2143, align 8, !tbaa !274
  %3528 = sub nsw i32 %3527, %3521
  store i32 %3528, ptr %2143, align 8, !tbaa !274
  %3529 = icmp slt i32 %3528, 33
  br i1 %3529, label %3530, label %3540

3530:                                             ; preds = %3506
  %3531 = zext nneg i32 %3528 to i64
  %3532 = shl i64 %3526, %3531
  %3533 = call i64 @llvm.bswap.i64(i64 %3532)
  %3534 = trunc i64 %3533 to i32
  %3535 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3534, ptr %3535, align 4, !tbaa !160
  %3536 = load i32, ptr %2143, align 8, !tbaa !274
  %3537 = add nsw i32 %3536, 32
  store i32 %3537, ptr %2143, align 8, !tbaa !274
  %3538 = load ptr, ptr %2142, align 8, !tbaa !272
  %3539 = getelementptr inbounds i8, ptr %3538, i64 4
  store ptr %3539, ptr %2142, align 8, !tbaa !272
  br label %3540

3540:                                             ; preds = %3530, %3506
  %3541 = getelementptr inbounds %struct.x264_weight_t, ptr %3479, i64 0, i32 4
  %3542 = load i32, ptr %3541, align 8, !tbaa !344
  %3543 = shl nsw i32 %3542, 1
  %3544 = sub nsw i32 1, %3543
  %3545 = icmp sgt i32 %3542, 0
  %3546 = select i1 %3545, i32 %3543, i32 %3544
  %3547 = icmp sgt i32 %3546, 255
  %3548 = lshr i32 %3546, 8
  %3549 = select i1 %3547, i32 16, i32 0
  %3550 = select i1 %3547, i32 %3548, i32 %3546
  %3551 = sext i32 %3550 to i64
  %3552 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3551
  %3553 = load i8, ptr %3552, align 1, !tbaa !160
  %3554 = zext i8 %3553 to i32
  %3555 = add nuw nsw i32 %3549, %3554
  %3556 = load i64, ptr %2147, align 8, !tbaa !275
  %3557 = zext nneg i32 %3555 to i64
  %3558 = shl i64 %3556, %3557
  %3559 = zext i32 %3546 to i64
  %3560 = or i64 %3558, %3559
  store i64 %3560, ptr %2147, align 8, !tbaa !275
  %3561 = load i32, ptr %2143, align 8, !tbaa !274
  %3562 = sub nsw i32 %3561, %3555
  store i32 %3562, ptr %2143, align 8, !tbaa !274
  %3563 = icmp slt i32 %3562, 33
  br i1 %3563, label %3564, label %3574

3564:                                             ; preds = %3540
  %3565 = zext nneg i32 %3562 to i64
  %3566 = shl i64 %3560, %3565
  %3567 = call i64 @llvm.bswap.i64(i64 %3566)
  %3568 = trunc i64 %3567 to i32
  %3569 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3568, ptr %3569, align 4, !tbaa !160
  %3570 = load i32, ptr %2143, align 8, !tbaa !274
  %3571 = add nsw i32 %3570, 32
  store i32 %3571, ptr %2143, align 8, !tbaa !274
  %3572 = load ptr, ptr %2142, align 8, !tbaa !272
  %3573 = getelementptr inbounds i8, ptr %3572, i64 4
  store ptr %3573, ptr %2142, align 8, !tbaa !272
  br label %3574

3574:                                             ; preds = %3564, %3540, %3505
  %3575 = load i64, ptr %2147, align 8, !tbaa !275
  %3576 = shl i64 %3575, 1
  %3577 = zext i1 %3491 to i64
  %3578 = or disjoint i64 %3576, %3577
  store i64 %3578, ptr %2147, align 8, !tbaa !275
  %3579 = load i32, ptr %2143, align 8, !tbaa !274
  %3580 = add nsw i32 %3579, -1
  store i32 %3580, ptr %2143, align 8, !tbaa !274
  %3581 = icmp eq i32 %3580, 32
  br i1 %3581, label %3582, label %3588

3582:                                             ; preds = %3574
  %3583 = trunc i64 %3578 to i32
  %3584 = call i32 @llvm.bswap.i32(i32 %3583)
  %3585 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3584, ptr %3585, align 4, !tbaa !160
  %3586 = load ptr, ptr %2142, align 8, !tbaa !272
  %3587 = getelementptr inbounds i8, ptr %3586, i64 4
  store ptr %3587, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3588

3588:                                             ; preds = %3582, %3574
  br i1 %3491, label %3589, label %3661

3589:                                             ; preds = %3588, %3658
  %3590 = phi i64 [ %3659, %3658 ], [ 1, %3588 ]
  %3591 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %3478, i64 %3590, i32 3
  %3592 = load i32, ptr %3591, align 4, !tbaa !343
  %3593 = shl nsw i32 %3592, 1
  %3594 = sub nsw i32 1, %3593
  %3595 = icmp sgt i32 %3592, 0
  %3596 = select i1 %3595, i32 %3593, i32 %3594
  %3597 = icmp sgt i32 %3596, 255
  %3598 = lshr i32 %3596, 8
  %3599 = select i1 %3597, i32 16, i32 0
  %3600 = select i1 %3597, i32 %3598, i32 %3596
  %3601 = sext i32 %3600 to i64
  %3602 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3601
  %3603 = load i8, ptr %3602, align 1, !tbaa !160
  %3604 = zext i8 %3603 to i32
  %3605 = add nuw nsw i32 %3599, %3604
  %3606 = load i64, ptr %2147, align 8, !tbaa !275
  %3607 = zext nneg i32 %3605 to i64
  %3608 = shl i64 %3606, %3607
  %3609 = zext i32 %3596 to i64
  %3610 = or i64 %3608, %3609
  store i64 %3610, ptr %2147, align 8, !tbaa !275
  %3611 = load i32, ptr %2143, align 8, !tbaa !274
  %3612 = sub nsw i32 %3611, %3605
  store i32 %3612, ptr %2143, align 8, !tbaa !274
  %3613 = icmp slt i32 %3612, 33
  br i1 %3613, label %3614, label %3624

3614:                                             ; preds = %3589
  %3615 = zext nneg i32 %3612 to i64
  %3616 = shl i64 %3610, %3615
  %3617 = call i64 @llvm.bswap.i64(i64 %3616)
  %3618 = trunc i64 %3617 to i32
  %3619 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3618, ptr %3619, align 4, !tbaa !160
  %3620 = load i32, ptr %2143, align 8, !tbaa !274
  %3621 = add nsw i32 %3620, 32
  store i32 %3621, ptr %2143, align 8, !tbaa !274
  %3622 = load ptr, ptr %2142, align 8, !tbaa !272
  %3623 = getelementptr inbounds i8, ptr %3622, i64 4
  store ptr %3623, ptr %2142, align 8, !tbaa !272
  br label %3624

3624:                                             ; preds = %3614, %3589
  %3625 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 22, i64 %3478, i64 %3590, i32 4
  %3626 = load i32, ptr %3625, align 8, !tbaa !344
  %3627 = shl nsw i32 %3626, 1
  %3628 = sub nsw i32 1, %3627
  %3629 = icmp sgt i32 %3626, 0
  %3630 = select i1 %3629, i32 %3627, i32 %3628
  %3631 = icmp sgt i32 %3630, 255
  %3632 = lshr i32 %3630, 8
  %3633 = select i1 %3631, i32 16, i32 0
  %3634 = select i1 %3631, i32 %3632, i32 %3630
  %3635 = sext i32 %3634 to i64
  %3636 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3635
  %3637 = load i8, ptr %3636, align 1, !tbaa !160
  %3638 = zext i8 %3637 to i32
  %3639 = add nuw nsw i32 %3633, %3638
  %3640 = load i64, ptr %2147, align 8, !tbaa !275
  %3641 = zext nneg i32 %3639 to i64
  %3642 = shl i64 %3640, %3641
  %3643 = zext i32 %3630 to i64
  %3644 = or i64 %3642, %3643
  store i64 %3644, ptr %2147, align 8, !tbaa !275
  %3645 = load i32, ptr %2143, align 8, !tbaa !274
  %3646 = sub nsw i32 %3645, %3639
  store i32 %3646, ptr %2143, align 8, !tbaa !274
  %3647 = icmp slt i32 %3646, 33
  br i1 %3647, label %3648, label %3658

3648:                                             ; preds = %3624
  %3649 = zext nneg i32 %3646 to i64
  %3650 = shl i64 %3644, %3649
  %3651 = call i64 @llvm.bswap.i64(i64 %3650)
  %3652 = trunc i64 %3651 to i32
  %3653 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3652, ptr %3653, align 4, !tbaa !160
  %3654 = load i32, ptr %2143, align 8, !tbaa !274
  %3655 = add nsw i32 %3654, 32
  store i32 %3655, ptr %2143, align 8, !tbaa !274
  %3656 = load ptr, ptr %2142, align 8, !tbaa !272
  %3657 = getelementptr inbounds i8, ptr %3656, i64 4
  store ptr %3657, ptr %2142, align 8, !tbaa !272
  br label %3658

3658:                                             ; preds = %3648, %3624
  %3659 = add nuw nsw i64 %3590, 1
  %3660 = icmp eq i64 %3659, 3
  br i1 %3660, label %3661, label %3589, !llvm.loop !425

3661:                                             ; preds = %3658, %3588
  %3662 = add nuw nsw i64 %3478, 1
  %3663 = load i32, ptr %2166, align 16, !tbaa !418
  %3664 = sext i32 %3663 to i64
  %3665 = icmp slt i64 %3662, %3664
  br i1 %3665, label %3477, label %3666, !llvm.loop !426

3666:                                             ; preds = %3661, %3474, %3364, %3359
  %3667 = icmp eq i32 %2333, 0
  br i1 %3667, label %3838, label %3668

3668:                                             ; preds = %3666
  %3669 = load i32, ptr %2157, align 16, !tbaa !407
  %3670 = icmp sgt i32 %3669, -1
  br i1 %3670, label %3671, label %3695

3671:                                             ; preds = %3668
  %3672 = load i64, ptr %2147, align 8, !tbaa !275
  %3673 = shl i64 %3672, 1
  store i64 %3673, ptr %2147, align 8, !tbaa !275
  %3674 = load i32, ptr %2143, align 8, !tbaa !274
  %3675 = add nsw i32 %3674, -1
  store i32 %3675, ptr %2143, align 8, !tbaa !274
  %3676 = icmp eq i32 %3675, 32
  br i1 %3676, label %3677, label %3683

3677:                                             ; preds = %3671
  %3678 = trunc i64 %3673 to i32
  %3679 = call i32 @llvm.bswap.i32(i32 %3678)
  %3680 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3679, ptr %3680, align 4, !tbaa !160
  %3681 = load ptr, ptr %2142, align 8, !tbaa !272
  %3682 = getelementptr inbounds i8, ptr %3681, i64 4
  store ptr %3682, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3683

3683:                                             ; preds = %3677, %3671
  %3684 = load i64, ptr %2147, align 8, !tbaa !275
  %3685 = shl i64 %3684, 1
  store i64 %3685, ptr %2147, align 8, !tbaa !275
  %3686 = load i32, ptr %2143, align 8, !tbaa !274
  %3687 = add nsw i32 %3686, -1
  store i32 %3687, ptr %2143, align 8, !tbaa !274
  %3688 = icmp eq i32 %3687, 32
  br i1 %3688, label %3689, label %3838

3689:                                             ; preds = %3683
  %3690 = trunc i64 %3685 to i32
  %3691 = call i32 @llvm.bswap.i32(i32 %3690)
  %3692 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3691, ptr %3692, align 4, !tbaa !160
  %3693 = load ptr, ptr %2142, align 8, !tbaa !272
  %3694 = getelementptr inbounds i8, ptr %3693, i64 4
  store ptr %3694, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3838

3695:                                             ; preds = %3668
  %3696 = load i32, ptr %316, align 4, !tbaa !427
  %3697 = icmp sgt i32 %3696, 0
  %3698 = load i64, ptr %2147, align 8, !tbaa !275
  %3699 = shl i64 %3698, 1
  %3700 = zext i1 %3697 to i64
  %3701 = or disjoint i64 %3699, %3700
  store i64 %3701, ptr %2147, align 8, !tbaa !275
  %3702 = load i32, ptr %2143, align 8, !tbaa !274
  %3703 = add nsw i32 %3702, -1
  store i32 %3703, ptr %2143, align 8, !tbaa !274
  %3704 = icmp eq i32 %3703, 32
  br i1 %3704, label %3705, label %3711

3705:                                             ; preds = %3695
  %3706 = trunc i64 %3701 to i32
  %3707 = call i32 @llvm.bswap.i32(i32 %3706)
  %3708 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3707, ptr %3708, align 4, !tbaa !160
  %3709 = load ptr, ptr %2142, align 8, !tbaa !272
  %3710 = getelementptr inbounds i8, ptr %3709, i64 4
  store ptr %3710, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %3711

3711:                                             ; preds = %3705, %3695
  %3712 = load i32, ptr %316, align 4, !tbaa !427
  %3713 = icmp sgt i32 %3712, 0
  br i1 %3713, label %3745, label %3838

3714:                                             ; preds = %3833
  %3715 = load i32, ptr %2143, align 8, !tbaa !274
  %3716 = icmp slt i32 %3715, 33
  br i1 %3716, label %3717, label %3728

3717:                                             ; preds = %3714
  %3718 = load i64, ptr %2147, align 8, !tbaa !275
  %3719 = zext nneg i32 %3715 to i64
  %3720 = shl i64 %3718, %3719
  %3721 = call i64 @llvm.bswap.i64(i64 %3720)
  %3722 = trunc i64 %3721 to i32
  %3723 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3722, ptr %3723, align 4, !tbaa !160
  %3724 = load i32, ptr %2143, align 8, !tbaa !274
  %3725 = add nsw i32 %3724, 32
  store i32 %3725, ptr %2143, align 8, !tbaa !274
  %3726 = load ptr, ptr %2142, align 8, !tbaa !272
  %3727 = getelementptr inbounds i8, ptr %3726, i64 4
  store ptr %3727, ptr %2142, align 8, !tbaa !272
  br label %3728

3728:                                             ; preds = %3717, %3714
  %3729 = load i64, ptr %2147, align 8, !tbaa !275
  %3730 = shl i64 %3729, 1
  %3731 = or disjoint i64 %3730, 1
  store i64 %3731, ptr %2147, align 8, !tbaa !275
  %3732 = load i32, ptr %2143, align 8, !tbaa !274
  %3733 = add nsw i32 %3732, -1
  store i32 %3733, ptr %2143, align 8, !tbaa !274
  %3734 = icmp slt i32 %3732, 34
  br i1 %3734, label %3735, label %3838

3735:                                             ; preds = %3728
  %3736 = zext nneg i32 %3733 to i64
  %3737 = shl i64 %3731, %3736
  %3738 = call i64 @llvm.bswap.i64(i64 %3737)
  %3739 = trunc i64 %3738 to i32
  %3740 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3739, ptr %3740, align 4, !tbaa !160
  %3741 = load i32, ptr %2143, align 8, !tbaa !274
  %3742 = add nsw i32 %3741, 32
  store i32 %3742, ptr %2143, align 8, !tbaa !274
  %3743 = load ptr, ptr %2142, align 8, !tbaa !272
  %3744 = getelementptr inbounds i8, ptr %3743, i64 4
  store ptr %3744, ptr %2142, align 8, !tbaa !272
  br label %3838

3745:                                             ; preds = %3711, %3833
  %3746 = phi i64 [ %3834, %3833 ], [ 0, %3711 ]
  %3747 = load i64, ptr %2147, align 8, !tbaa !275
  %3748 = shl i64 %3747, 1
  store i64 %3748, ptr %2147, align 8, !tbaa !275
  %3749 = load i32, ptr %2143, align 8, !tbaa !274
  %3750 = add nsw i32 %3749, -1
  store i32 %3750, ptr %2143, align 8, !tbaa !274
  %3751 = icmp slt i32 %3749, 34
  br i1 %3751, label %3752, label %3762

3752:                                             ; preds = %3745
  %3753 = zext nneg i32 %3750 to i64
  %3754 = shl i64 %3748, %3753
  %3755 = call i64 @llvm.bswap.i64(i64 %3754)
  %3756 = trunc i64 %3755 to i32
  %3757 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3756, ptr %3757, align 4, !tbaa !160
  %3758 = load i32, ptr %2143, align 8, !tbaa !274
  %3759 = add nsw i32 %3758, 32
  store i32 %3759, ptr %2143, align 8, !tbaa !274
  %3760 = load ptr, ptr %2142, align 8, !tbaa !272
  %3761 = getelementptr inbounds i8, ptr %3760, i64 4
  store ptr %3761, ptr %2142, align 8, !tbaa !272
  br label %3762

3762:                                             ; preds = %3752, %3745
  %3763 = load i64, ptr %2147, align 8, !tbaa !275
  %3764 = shl i64 %3763, 2
  %3765 = or disjoint i64 %3764, 2
  store i64 %3765, ptr %2147, align 8, !tbaa !275
  %3766 = load i32, ptr %2143, align 8, !tbaa !274
  %3767 = add nsw i32 %3766, -2
  store i32 %3767, ptr %2143, align 8, !tbaa !274
  %3768 = icmp slt i32 %3766, 35
  br i1 %3768, label %3769, label %3779

3769:                                             ; preds = %3762
  %3770 = zext nneg i32 %3767 to i64
  %3771 = shl i64 %3765, %3770
  %3772 = call i64 @llvm.bswap.i64(i64 %3771)
  %3773 = trunc i64 %3772 to i32
  %3774 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3773, ptr %3774, align 4, !tbaa !160
  %3775 = load i32, ptr %2143, align 8, !tbaa !274
  %3776 = add nsw i32 %3775, 32
  store i32 %3776, ptr %2143, align 8, !tbaa !274
  %3777 = load ptr, ptr %2142, align 8, !tbaa !272
  %3778 = getelementptr inbounds i8, ptr %3777, i64 4
  store ptr %3778, ptr %2142, align 8, !tbaa !272
  br label %3779

3779:                                             ; preds = %3769, %3762
  %3780 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 41, i32 25, i64 %3746
  %3781 = load i32, ptr %3780, align 8, !tbaa !331
  %3782 = icmp sgt i32 %3781, 65535
  %3783 = lshr i32 %3781, 16
  %3784 = select i1 %3782, i32 32, i32 0
  %3785 = select i1 %3782, i32 %3783, i32 %3781
  %3786 = icmp sgt i32 %3785, 255
  %3787 = or disjoint i32 %3784, 16
  %3788 = lshr i32 %3785, 8
  %3789 = select i1 %3786, i32 %3787, i32 %3784
  %3790 = select i1 %3786, i32 %3788, i32 %3785
  %3791 = sext i32 %3790 to i64
  %3792 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3791
  %3793 = load i8, ptr %3792, align 1, !tbaa !160
  %3794 = zext i8 %3793 to i32
  %3795 = add nuw nsw i32 %3789, %3794
  %3796 = lshr i32 %3795, 1
  %3797 = load i64, ptr %2147, align 8, !tbaa !275
  %3798 = zext nneg i32 %3796 to i64
  %3799 = shl i64 %3797, %3798
  store i64 %3799, ptr %2147, align 8, !tbaa !275
  %3800 = load i32, ptr %2143, align 8, !tbaa !274
  %3801 = sub nsw i32 %3800, %3796
  store i32 %3801, ptr %2143, align 8, !tbaa !274
  %3802 = icmp slt i32 %3801, 33
  br i1 %3802, label %3803, label %3813

3803:                                             ; preds = %3779
  %3804 = zext nneg i32 %3801 to i64
  %3805 = shl i64 %3799, %3804
  %3806 = call i64 @llvm.bswap.i64(i64 %3805)
  %3807 = trunc i64 %3806 to i32
  %3808 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3807, ptr %3808, align 4, !tbaa !160
  %3809 = load i32, ptr %2143, align 8, !tbaa !274
  %3810 = add nsw i32 %3809, 32
  store i32 %3810, ptr %2143, align 8, !tbaa !274
  %3811 = load ptr, ptr %2142, align 8, !tbaa !272
  %3812 = getelementptr inbounds i8, ptr %3811, i64 4
  store ptr %3812, ptr %2142, align 8, !tbaa !272
  br label %3813

3813:                                             ; preds = %3803, %3779
  %3814 = add nuw nsw i32 %3796, 1
  %3815 = load i64, ptr %2147, align 8, !tbaa !275
  %3816 = zext nneg i32 %3814 to i64
  %3817 = shl i64 %3815, %3816
  %3818 = zext i32 %3781 to i64
  %3819 = or i64 %3817, %3818
  store i64 %3819, ptr %2147, align 8, !tbaa !275
  %3820 = load i32, ptr %2143, align 8, !tbaa !274
  %3821 = sub nsw i32 %3820, %3814
  store i32 %3821, ptr %2143, align 8, !tbaa !274
  %3822 = icmp slt i32 %3821, 33
  br i1 %3822, label %3823, label %3833

3823:                                             ; preds = %3813
  %3824 = zext nneg i32 %3821 to i64
  %3825 = shl i64 %3819, %3824
  %3826 = call i64 @llvm.bswap.i64(i64 %3825)
  %3827 = trunc i64 %3826 to i32
  %3828 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3827, ptr %3828, align 4, !tbaa !160
  %3829 = load i32, ptr %2143, align 8, !tbaa !274
  %3830 = add nsw i32 %3829, 32
  store i32 %3830, ptr %2143, align 8, !tbaa !274
  %3831 = load ptr, ptr %2142, align 8, !tbaa !272
  %3832 = getelementptr inbounds i8, ptr %3831, i64 4
  store ptr %3832, ptr %2142, align 8, !tbaa !272
  br label %3833

3833:                                             ; preds = %3823, %3813
  %3834 = add nuw nsw i64 %3746, 1
  %3835 = load i32, ptr %316, align 4, !tbaa !427
  %3836 = sext i32 %3835 to i64
  %3837 = icmp slt i64 %3834, %3836
  br i1 %3837, label %3745, label %3714, !llvm.loop !428

3838:                                             ; preds = %3735, %3728, %3711, %3689, %3683, %3666
  %3839 = load ptr, ptr %2159, align 8, !tbaa !410
  %3840 = getelementptr inbounds %struct.x264_pps_t, ptr %3839, i64 0, i32 2
  %3841 = load i32, ptr %3840, align 8, !tbaa !429
  %3842 = icmp eq i32 %3841, 0
  br i1 %3842, label %3900, label %3843

3843:                                             ; preds = %3838
  %3844 = load i32, ptr %611, align 16, !tbaa !399
  %3845 = icmp eq i32 %3844, 2
  br i1 %3845, label %3900, label %3846

3846:                                             ; preds = %3843
  %3847 = load i32, ptr %2173, align 8, !tbaa !430
  %3848 = add i32 %3847, 1
  %3849 = icmp sgt i32 %3848, 65535
  %3850 = lshr i32 %3848, 16
  %3851 = select i1 %3849, i32 32, i32 0
  %3852 = select i1 %3849, i32 %3850, i32 %3848
  %3853 = icmp sgt i32 %3852, 255
  %3854 = or disjoint i32 %3851, 16
  %3855 = lshr i32 %3852, 8
  %3856 = select i1 %3853, i32 %3854, i32 %3851
  %3857 = select i1 %3853, i32 %3855, i32 %3852
  %3858 = sext i32 %3857 to i64
  %3859 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3858
  %3860 = load i8, ptr %3859, align 1, !tbaa !160
  %3861 = zext i8 %3860 to i32
  %3862 = add nuw nsw i32 %3856, %3861
  %3863 = lshr i32 %3862, 1
  %3864 = load i64, ptr %2147, align 8, !tbaa !275
  %3865 = zext nneg i32 %3863 to i64
  %3866 = shl i64 %3864, %3865
  store i64 %3866, ptr %2147, align 8, !tbaa !275
  %3867 = load i32, ptr %2143, align 8, !tbaa !274
  %3868 = sub nsw i32 %3867, %3863
  store i32 %3868, ptr %2143, align 8, !tbaa !274
  %3869 = icmp slt i32 %3868, 33
  br i1 %3869, label %3870, label %3880

3870:                                             ; preds = %3846
  %3871 = zext nneg i32 %3868 to i64
  %3872 = shl i64 %3866, %3871
  %3873 = call i64 @llvm.bswap.i64(i64 %3872)
  %3874 = trunc i64 %3873 to i32
  %3875 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3874, ptr %3875, align 4, !tbaa !160
  %3876 = load i32, ptr %2143, align 8, !tbaa !274
  %3877 = add nsw i32 %3876, 32
  store i32 %3877, ptr %2143, align 8, !tbaa !274
  %3878 = load ptr, ptr %2142, align 8, !tbaa !272
  %3879 = getelementptr inbounds i8, ptr %3878, i64 4
  store ptr %3879, ptr %2142, align 8, !tbaa !272
  br label %3880

3880:                                             ; preds = %3870, %3846
  %3881 = add nuw nsw i32 %3863, 1
  %3882 = load i64, ptr %2147, align 8, !tbaa !275
  %3883 = zext nneg i32 %3881 to i64
  %3884 = shl i64 %3882, %3883
  %3885 = zext i32 %3848 to i64
  %3886 = or i64 %3884, %3885
  store i64 %3886, ptr %2147, align 8, !tbaa !275
  %3887 = load i32, ptr %2143, align 8, !tbaa !274
  %3888 = sub nsw i32 %3887, %3881
  store i32 %3888, ptr %2143, align 8, !tbaa !274
  %3889 = icmp slt i32 %3888, 33
  br i1 %3889, label %3890, label %3900

3890:                                             ; preds = %3880
  %3891 = zext nneg i32 %3888 to i64
  %3892 = shl i64 %3886, %3891
  %3893 = call i64 @llvm.bswap.i64(i64 %3892)
  %3894 = trunc i64 %3893 to i32
  %3895 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3894, ptr %3895, align 4, !tbaa !160
  %3896 = load i32, ptr %2143, align 8, !tbaa !274
  %3897 = add nsw i32 %3896, 32
  store i32 %3897, ptr %2143, align 8, !tbaa !274
  %3898 = load ptr, ptr %2142, align 8, !tbaa !272
  %3899 = getelementptr inbounds i8, ptr %3898, i64 4
  store ptr %3899, ptr %2142, align 8, !tbaa !272
  br label %3900

3900:                                             ; preds = %3890, %3880, %3843, %3838
  %3901 = load i32, ptr %2153, align 16, !tbaa !431
  %3902 = shl nsw i32 %3901, 1
  %3903 = sub nsw i32 1, %3902
  %3904 = icmp sgt i32 %3901, 0
  %3905 = select i1 %3904, i32 %3902, i32 %3903
  %3906 = icmp sgt i32 %3905, 255
  %3907 = lshr i32 %3905, 8
  %3908 = select i1 %3906, i32 16, i32 0
  %3909 = select i1 %3906, i32 %3907, i32 %3905
  %3910 = sext i32 %3909 to i64
  %3911 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3910
  %3912 = load i8, ptr %3911, align 1, !tbaa !160
  %3913 = zext i8 %3912 to i32
  %3914 = add nuw nsw i32 %3908, %3913
  %3915 = load i64, ptr %2147, align 8, !tbaa !275
  %3916 = zext nneg i32 %3914 to i64
  %3917 = shl i64 %3915, %3916
  %3918 = zext i32 %3905 to i64
  %3919 = or i64 %3917, %3918
  store i64 %3919, ptr %2147, align 8, !tbaa !275
  %3920 = load i32, ptr %2143, align 8, !tbaa !274
  %3921 = sub nsw i32 %3920, %3914
  store i32 %3921, ptr %2143, align 8, !tbaa !274
  %3922 = icmp slt i32 %3921, 33
  br i1 %3922, label %3923, label %3933

3923:                                             ; preds = %3900
  %3924 = zext nneg i32 %3921 to i64
  %3925 = shl i64 %3919, %3924
  %3926 = call i64 @llvm.bswap.i64(i64 %3925)
  %3927 = trunc i64 %3926 to i32
  %3928 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3927, ptr %3928, align 4, !tbaa !160
  %3929 = load i32, ptr %2143, align 8, !tbaa !274
  %3930 = add nsw i32 %3929, 32
  store i32 %3930, ptr %2143, align 8, !tbaa !274
  %3931 = load ptr, ptr %2142, align 8, !tbaa !272
  %3932 = getelementptr inbounds i8, ptr %3931, i64 4
  store ptr %3932, ptr %2142, align 8, !tbaa !272
  br label %3933

3933:                                             ; preds = %3923, %3900
  %3934 = load ptr, ptr %2159, align 8, !tbaa !410
  %3935 = getelementptr inbounds %struct.x264_pps_t, ptr %3934, i64 0, i32 12
  %3936 = load i32, ptr %3935, align 8, !tbaa !432
  %3937 = icmp eq i32 %3936, 0
  br i1 %3937, label %4061, label %3938

3938:                                             ; preds = %3933
  %3939 = load i32, ptr %2145, align 4, !tbaa !433
  %3940 = add i32 %3939, 1
  %3941 = icmp sgt i32 %3940, 65535
  %3942 = lshr i32 %3940, 16
  %3943 = select i1 %3941, i32 32, i32 0
  %3944 = select i1 %3941, i32 %3942, i32 %3940
  %3945 = icmp sgt i32 %3944, 255
  %3946 = or disjoint i32 %3943, 16
  %3947 = lshr i32 %3944, 8
  %3948 = select i1 %3945, i32 %3946, i32 %3943
  %3949 = select i1 %3945, i32 %3947, i32 %3944
  %3950 = sext i32 %3949 to i64
  %3951 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %3950
  %3952 = load i8, ptr %3951, align 1, !tbaa !160
  %3953 = zext i8 %3952 to i32
  %3954 = add nuw nsw i32 %3948, %3953
  %3955 = lshr i32 %3954, 1
  %3956 = load i64, ptr %2147, align 8, !tbaa !275
  %3957 = zext nneg i32 %3955 to i64
  %3958 = shl i64 %3956, %3957
  store i64 %3958, ptr %2147, align 8, !tbaa !275
  %3959 = load i32, ptr %2143, align 8, !tbaa !274
  %3960 = sub nsw i32 %3959, %3955
  store i32 %3960, ptr %2143, align 8, !tbaa !274
  %3961 = icmp slt i32 %3960, 33
  br i1 %3961, label %3962, label %3972

3962:                                             ; preds = %3938
  %3963 = zext nneg i32 %3960 to i64
  %3964 = shl i64 %3958, %3963
  %3965 = call i64 @llvm.bswap.i64(i64 %3964)
  %3966 = trunc i64 %3965 to i32
  %3967 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3966, ptr %3967, align 4, !tbaa !160
  %3968 = load i32, ptr %2143, align 8, !tbaa !274
  %3969 = add nsw i32 %3968, 32
  store i32 %3969, ptr %2143, align 8, !tbaa !274
  %3970 = load ptr, ptr %2142, align 8, !tbaa !272
  %3971 = getelementptr inbounds i8, ptr %3970, i64 4
  store ptr %3971, ptr %2142, align 8, !tbaa !272
  br label %3972

3972:                                             ; preds = %3962, %3938
  %3973 = add nuw nsw i32 %3955, 1
  %3974 = load i64, ptr %2147, align 8, !tbaa !275
  %3975 = zext nneg i32 %3973 to i64
  %3976 = shl i64 %3974, %3975
  %3977 = zext i32 %3940 to i64
  %3978 = or i64 %3976, %3977
  store i64 %3978, ptr %2147, align 8, !tbaa !275
  %3979 = load i32, ptr %2143, align 8, !tbaa !274
  %3980 = sub nsw i32 %3979, %3973
  store i32 %3980, ptr %2143, align 8, !tbaa !274
  %3981 = icmp slt i32 %3980, 33
  br i1 %3981, label %3982, label %3992

3982:                                             ; preds = %3972
  %3983 = zext nneg i32 %3980 to i64
  %3984 = shl i64 %3978, %3983
  %3985 = call i64 @llvm.bswap.i64(i64 %3984)
  %3986 = trunc i64 %3985 to i32
  %3987 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %3986, ptr %3987, align 4, !tbaa !160
  %3988 = load i32, ptr %2143, align 8, !tbaa !274
  %3989 = add nsw i32 %3988, 32
  store i32 %3989, ptr %2143, align 8, !tbaa !274
  %3990 = load ptr, ptr %2142, align 8, !tbaa !272
  %3991 = getelementptr inbounds i8, ptr %3990, i64 4
  store ptr %3991, ptr %2142, align 8, !tbaa !272
  br label %3992

3992:                                             ; preds = %3982, %3972
  %3993 = load i32, ptr %2145, align 4, !tbaa !433
  %3994 = icmp eq i32 %3993, 1
  br i1 %3994, label %4061, label %3995

3995:                                             ; preds = %3992
  %3996 = load i32, ptr %2174, align 16, !tbaa !434
  %3997 = and i32 %3996, -2
  %3998 = sub nsw i32 1, %3997
  %3999 = icmp sgt i32 %3996, 1
  %4000 = select i1 %3999, i32 %3997, i32 %3998
  %4001 = icmp sgt i32 %4000, 255
  %4002 = lshr i32 %4000, 8
  %4003 = select i1 %4001, i32 16, i32 0
  %4004 = select i1 %4001, i32 %4002, i32 %4000
  %4005 = sext i32 %4004 to i64
  %4006 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %4005
  %4007 = load i8, ptr %4006, align 1, !tbaa !160
  %4008 = zext i8 %4007 to i32
  %4009 = add nuw nsw i32 %4003, %4008
  %4010 = load i64, ptr %2147, align 8, !tbaa !275
  %4011 = zext nneg i32 %4009 to i64
  %4012 = shl i64 %4010, %4011
  %4013 = zext i32 %4000 to i64
  %4014 = or i64 %4012, %4013
  store i64 %4014, ptr %2147, align 8, !tbaa !275
  %4015 = load i32, ptr %2143, align 8, !tbaa !274
  %4016 = sub nsw i32 %4015, %4009
  store i32 %4016, ptr %2143, align 8, !tbaa !274
  %4017 = icmp slt i32 %4016, 33
  br i1 %4017, label %4018, label %4028

4018:                                             ; preds = %3995
  %4019 = zext nneg i32 %4016 to i64
  %4020 = shl i64 %4014, %4019
  %4021 = call i64 @llvm.bswap.i64(i64 %4020)
  %4022 = trunc i64 %4021 to i32
  %4023 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4022, ptr %4023, align 4, !tbaa !160
  %4024 = load i32, ptr %2143, align 8, !tbaa !274
  %4025 = add nsw i32 %4024, 32
  store i32 %4025, ptr %2143, align 8, !tbaa !274
  %4026 = load ptr, ptr %2142, align 8, !tbaa !272
  %4027 = getelementptr inbounds i8, ptr %4026, i64 4
  store ptr %4027, ptr %2142, align 8, !tbaa !272
  br label %4028

4028:                                             ; preds = %4018, %3995
  %4029 = load i32, ptr %2175, align 4, !tbaa !435
  %4030 = and i32 %4029, -2
  %4031 = sub nsw i32 1, %4030
  %4032 = icmp sgt i32 %4029, 1
  %4033 = select i1 %4032, i32 %4030, i32 %4031
  %4034 = icmp sgt i32 %4033, 255
  %4035 = lshr i32 %4033, 8
  %4036 = select i1 %4034, i32 16, i32 0
  %4037 = select i1 %4034, i32 %4035, i32 %4033
  %4038 = sext i32 %4037 to i64
  %4039 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %4038
  %4040 = load i8, ptr %4039, align 1, !tbaa !160
  %4041 = zext i8 %4040 to i32
  %4042 = add nuw nsw i32 %4036, %4041
  %4043 = load i64, ptr %2147, align 8, !tbaa !275
  %4044 = zext nneg i32 %4042 to i64
  %4045 = shl i64 %4043, %4044
  %4046 = zext i32 %4033 to i64
  %4047 = or i64 %4045, %4046
  store i64 %4047, ptr %2147, align 8, !tbaa !275
  %4048 = load i32, ptr %2143, align 8, !tbaa !274
  %4049 = sub nsw i32 %4048, %4042
  store i32 %4049, ptr %2143, align 8, !tbaa !274
  %4050 = icmp slt i32 %4049, 33
  br i1 %4050, label %4051, label %4061

4051:                                             ; preds = %4028
  %4052 = zext nneg i32 %4049 to i64
  %4053 = shl i64 %4047, %4052
  %4054 = call i64 @llvm.bswap.i64(i64 %4053)
  %4055 = trunc i64 %4054 to i32
  %4056 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4055, ptr %4056, align 4, !tbaa !160
  %4057 = load i32, ptr %2143, align 8, !tbaa !274
  %4058 = add nsw i32 %4057, 32
  store i32 %4058, ptr %2143, align 8, !tbaa !274
  %4059 = load ptr, ptr %2142, align 8, !tbaa !272
  %4060 = getelementptr inbounds i8, ptr %4059, i64 4
  store ptr %4060, ptr %2142, align 8, !tbaa !272
  br label %4061

4061:                                             ; preds = %4051, %4028, %3992, %3933
  %4062 = load i32, ptr %2176, align 16, !tbaa !127
  %4063 = icmp eq i32 %4062, 0
  br i1 %4063, label %4106, label %4064

4064:                                             ; preds = %4061
  %4065 = load i32, ptr %2143, align 8, !tbaa !274
  %4066 = and i32 %4065, 7
  %4067 = shl nsw i32 -1, %4066
  %4068 = xor i32 %4067, -1
  %4069 = load i64, ptr %2147, align 8, !tbaa !275
  %4070 = zext nneg i32 %4066 to i64
  %4071 = shl i64 %4069, %4070
  %4072 = zext nneg i32 %4068 to i64
  %4073 = or i64 %4071, %4072
  store i64 %4073, ptr %2147, align 8, !tbaa !275
  %4074 = and i32 %4065, -8
  store i32 %4074, ptr %2143, align 8, !tbaa !274
  %4075 = icmp slt i32 %4074, 33
  br i1 %4075, label %4076, label %4086

4076:                                             ; preds = %4064
  %4077 = zext nneg i32 %4074 to i64
  %4078 = call i64 @llvm.bswap.i64(i64 %4073)
  %4079 = lshr i64 %4078, %4077
  %4080 = trunc i64 %4079 to i32
  %4081 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4080, ptr %4081, align 4, !tbaa !160
  %4082 = load i32, ptr %2143, align 8, !tbaa !274
  %4083 = add nsw i32 %4082, 32
  store i32 %4083, ptr %2143, align 8, !tbaa !274
  %4084 = load ptr, ptr %2142, align 8, !tbaa !272
  %4085 = getelementptr inbounds i8, ptr %4084, i64 4
  store ptr %4085, ptr %2142, align 8, !tbaa !272
  br label %4086

4086:                                             ; preds = %4076, %4064
  %4087 = load i64, ptr %2147, align 8, !tbaa !275
  %4088 = load i32, ptr %2143, align 8, !tbaa !274
  %4089 = and i32 %4088, 31
  %4090 = zext nneg i32 %4089 to i64
  %4091 = shl i64 %4087, %4090
  %4092 = trunc i64 %4091 to i32
  %4093 = call i32 @llvm.bswap.i32(i32 %4092)
  %4094 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4093, ptr %4094, align 4, !tbaa !160
  %4095 = load i32, ptr %2143, align 8, !tbaa !274
  %4096 = sdiv i32 %4095, -8
  %4097 = load ptr, ptr %2142, align 8, !tbaa !272
  %4098 = sext i32 %4096 to i64
  %4099 = getelementptr i8, ptr %4097, i64 %4098
  %4100 = getelementptr i8, ptr %4099, i64 8
  store ptr %4100, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  %4101 = load i32, ptr %611, align 16, !tbaa !326
  %4102 = load i32, ptr %2151, align 4, !tbaa !395
  %4103 = load i32, ptr %2173, align 8, !tbaa !436
  call void @x264_cabac_context_init(ptr noundef nonnull %2177, i32 noundef %4101, i32 noundef %4102, i32 noundef %4103) #15
  %4104 = load ptr, ptr %2142, align 8, !tbaa !437
  %4105 = load ptr, ptr %2178, align 16, !tbaa !438
  call void @x264_cabac_encode_init(ptr noundef nonnull %2177, ptr noundef %4104, ptr noundef %4105) #15
  br label %4106

4106:                                             ; preds = %4086, %4061
  %4107 = load i32, ptr %2151, align 4, !tbaa !395
  store i32 %4107, ptr %2150, align 8, !tbaa !394
  store i32 0, ptr %2179, align 4, !tbaa !439
  %4108 = load i32, ptr %2131, align 4, !tbaa !379
  %4109 = load ptr, ptr %1575, align 16, !tbaa !77
  %4110 = getelementptr inbounds %struct.x264_sps_t, ptr %4109, i64 0, i32 16
  %4111 = load i32, ptr %4110, align 4, !tbaa !83
  %4112 = sdiv i32 %4108, %4111
  %4113 = srem i32 %4108, %4111
  %4114 = add i32 %2266, -64
  %4115 = add i32 %4114, %2268
  %4116 = select i1 %2270, i1 true, i1 %2279
  br label %4117

4117:                                             ; preds = %4554, %4106
  %4118 = phi i8 [ 0, %4106 ], [ %4156, %4554 ]
  %4119 = phi i32 [ 0, %4106 ], [ %4157, %4554 ]
  %4120 = phi i32 [ %4112, %4106 ], [ %4556, %4554 ]
  %4121 = phi i32 [ %4113, %4106 ], [ %4557, %4554 ]
  %4122 = phi i32 [ 0, %4106 ], [ %4558, %4554 ]
  %4123 = load ptr, ptr %1575, align 16, !tbaa !77
  %4124 = getelementptr inbounds %struct.x264_sps_t, ptr %4123, i64 0, i32 16
  %4125 = load i32, ptr %4124, align 4, !tbaa !83
  %4126 = mul nsw i32 %4125, %4120
  %4127 = add nsw i32 %4126, %4121
  %4128 = load i32, ptr %2127, align 8, !tbaa !380
  %4129 = icmp sgt i32 %4127, %4128
  br i1 %4129, label %4559, label %4130

4130:                                             ; preds = %4117
  %4131 = load ptr, ptr %2142, align 8, !tbaa !272
  %4132 = load ptr, ptr %2141, align 8, !tbaa !271
  %4133 = ptrtoint ptr %4131 to i64
  %4134 = ptrtoint ptr %4132 to i64
  %4135 = sub i64 %4134, %4133
  %4136 = load i32, ptr %2143, align 8, !tbaa !274
  %4137 = trunc i64 %4135 to i32
  %4138 = load ptr, ptr %2180, align 8, !tbaa !440
  %4139 = load ptr, ptr %2181, align 16, !tbaa !441
  %4140 = ptrtoint ptr %4138 to i64
  %4141 = ptrtoint ptr %4139 to i64
  %4142 = sub i64 %4141, %4140
  %4143 = load i32, ptr %2182, align 4, !tbaa !442
  %4144 = load i32, ptr %2183, align 8, !tbaa !443
  %4145 = trunc i64 %4142 to i32
  %4146 = load i32, ptr %2140, align 4, !tbaa !193
  %4147 = icmp sgt i32 %4146, 0
  br i1 %4147, label %4148, label %4155

4148:                                             ; preds = %4130
  %4149 = load i32, ptr %2176, align 16, !tbaa !127
  %4150 = icmp eq i32 %4149, 0
  br i1 %4150, label %4154, label %4151

4151:                                             ; preds = %4148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %7, ptr noundef nonnull align 16 dereferenceable(48) %2177, i64 48, i1 false)
  %4152 = getelementptr inbounds i8, ptr %4138, i64 -1
  %4153 = load i8, ptr %4152, align 1, !tbaa !160
  br label %4155

4154:                                             ; preds = %4148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 16 dereferenceable(40) %2141, i64 40, i1 false), !tbaa.struct !444
  br label %4155

4155:                                             ; preds = %4154, %4151, %4130
  %4156 = phi i8 [ %4153, %4151 ], [ %4118, %4154 ], [ %4118, %4130 ]
  %4157 = phi i32 [ %4119, %4151 ], [ %4122, %4154 ], [ %4119, %4130 ]
  %4158 = icmp eq i32 %4121, 0
  br i1 %4158, label %4159, label %4163

4159:                                             ; preds = %4155
  %4160 = load i32, ptr %2130, align 16, !tbaa !391
  %4161 = icmp eq i32 %4160, 0
  br i1 %4161, label %4162, label %4163

4162:                                             ; preds = %4159
  call fastcc void @x264_fdec_filter_row(ptr noundef %68, i32 noundef %4120, i32 noundef 1)
  br label %4163

4163:                                             ; preds = %4162, %4159, %4155
  call void @x264_macroblock_cache_load(ptr noundef %68, i32 noundef %4121, i32 noundef %4120) #15
  call void @x264_macroblock_analyse(ptr noundef %68) #15
  call void @x264_macroblock_encode(ptr noundef %68) #15
  %4164 = load ptr, ptr %2149, align 8, !tbaa !165
  %4165 = load i32, ptr %2176, align 16, !tbaa !127
  %4166 = icmp eq i32 %4165, 0
  br i1 %4166, label %4174, label %4167

4167:                                             ; preds = %4163
  %4168 = load ptr, ptr %2184, align 16, !tbaa !445
  %4169 = load ptr, ptr %2180, align 8, !tbaa !446
  %4170 = ptrtoint ptr %4168 to i64
  %4171 = ptrtoint ptr %4169 to i64
  %4172 = sub i64 %4170, %4171
  %4173 = icmp slt i64 %4172, 2500
  br i1 %4173, label %4181, label %4174

4174:                                             ; preds = %4167, %4163
  %4175 = load ptr, ptr %2178, align 16, !tbaa !438
  %4176 = load ptr, ptr %2142, align 8, !tbaa !437
  %4177 = ptrtoint ptr %4175 to i64
  %4178 = ptrtoint ptr %4176 to i64
  %4179 = sub i64 %4177, %4178
  %4180 = icmp slt i64 %4179, 2500
  br i1 %4180, label %4181, label %4223

4181:                                             ; preds = %4174, %4167
  %4182 = load i32, ptr %2185, align 16, !tbaa !151
  %4183 = add nsw i32 %4182, 100000
  store i32 %4183, ptr %2185, align 16, !tbaa !151
  %4184 = call ptr @x264_malloc(i32 noundef %4183) #15
  store ptr %4184, ptr %2149, align 8, !tbaa !165
  %4185 = icmp eq ptr %4184, null
  br i1 %4185, label %4222, label %4186

4186:                                             ; preds = %4181
  %4187 = load ptr, ptr %2186, align 8, !tbaa !447
  %4188 = load i32, ptr %2185, align 16, !tbaa !151
  %4189 = and i32 %4188, -16
  %4190 = add nsw i32 %4189, -100000
  %4191 = sext i32 %4190 to i64
  %4192 = call ptr %4187(ptr noundef nonnull %4184, ptr noundef %4164, i64 noundef %4191) #15
  %4193 = load ptr, ptr %2149, align 8, !tbaa !165
  %4194 = ptrtoint ptr %4193 to i64
  %4195 = ptrtoint ptr %4164 to i64
  %4196 = sub i64 %4194, %4195
  %4197 = load ptr, ptr %2141, align 16, !tbaa !448
  %4198 = getelementptr inbounds i8, ptr %4197, i64 %4196
  store ptr %4198, ptr %2141, align 16, !tbaa !448
  %4199 = load ptr, ptr %2142, align 8, !tbaa !437
  %4200 = getelementptr inbounds i8, ptr %4199, i64 %4196
  store ptr %4200, ptr %2142, align 8, !tbaa !437
  %4201 = load i32, ptr %2185, align 16, !tbaa !151
  %4202 = sext i32 %4201 to i64
  %4203 = getelementptr inbounds i8, ptr %4193, i64 %4202
  store ptr %4203, ptr %2178, align 16, !tbaa !438
  %4204 = load ptr, ptr %2181, align 16, !tbaa !449
  %4205 = getelementptr inbounds i8, ptr %4204, i64 %4196
  store ptr %4205, ptr %2181, align 16, !tbaa !449
  %4206 = load ptr, ptr %2180, align 8, !tbaa !446
  %4207 = getelementptr inbounds i8, ptr %4206, i64 %4196
  store ptr %4207, ptr %2180, align 8, !tbaa !446
  store ptr %4203, ptr %2184, align 16, !tbaa !445
  %4208 = load i32, ptr %2139, align 16, !tbaa !146
  %4209 = icmp slt i32 %4208, 0
  br i1 %4209, label %4214, label %4210

4210:                                             ; preds = %4186
  %4211 = load ptr, ptr %2148, align 8, !tbaa !166
  %4212 = add nuw i32 %4208, 1
  %4213 = zext i32 %4212 to i64
  br label %4215

4214:                                             ; preds = %4215, %4186
  call void @x264_free(ptr noundef %4164) #15
  br label %4223

4215:                                             ; preds = %4215, %4210
  %4216 = phi i64 [ 0, %4210 ], [ %4220, %4215 ]
  %4217 = getelementptr inbounds %struct.x264_nal_t, ptr %4211, i64 %4216, i32 3
  %4218 = load ptr, ptr %4217, align 8, !tbaa !280
  %4219 = getelementptr inbounds i8, ptr %4218, i64 %4196
  store ptr %4219, ptr %4217, align 8, !tbaa !280
  %4220 = add nuw nsw i64 %4216, 1
  %4221 = icmp eq i64 %4220, %4213
  br i1 %4221, label %4214, label %4215, !llvm.loop !450

4222:                                             ; preds = %4181
  call void @x264_free(ptr noundef %4164) #15
  br label %4554

4223:                                             ; preds = %4214, %4174
  %4224 = load i32, ptr %2176, align 16, !tbaa !127
  %4225 = icmp eq i32 %4224, 0
  br i1 %4225, label %4244, label %4226

4226:                                             ; preds = %4223
  %4227 = load i32, ptr %2131, align 4, !tbaa !379
  %4228 = icmp sgt i32 %4127, %4227
  br i1 %4228, label %4229, label %4236

4229:                                             ; preds = %4226
  %4230 = load i32, ptr %1759, align 4, !tbaa !361
  %4231 = icmp eq i32 %4230, 0
  %4232 = and i32 %4120, 1
  %4233 = icmp eq i32 %4232, 0
  %4234 = or i1 %4233, %4231
  br i1 %4234, label %4235, label %4236

4235:                                             ; preds = %4229
  call void @x264_cabac_encode_terminal_c(ptr noundef nonnull %2177) #15
  br label %4236

4236:                                             ; preds = %4235, %4229, %4226
  %4237 = load i32, ptr %2187, align 8, !tbaa !451
  switch i32 %4237, label %4239 [
    i32 6, label %4238
    i32 18, label %4238
  ]

4238:                                             ; preds = %4236, %4236
  call void @x264_cabac_mb_skip(ptr noundef %68, i32 noundef 1) #15
  br label %4306

4239:                                             ; preds = %4236
  %4240 = load i32, ptr %611, align 16, !tbaa !326
  %4241 = icmp eq i32 %4240, 2
  br i1 %4241, label %4243, label %4242

4242:                                             ; preds = %4239
  call void @x264_cabac_mb_skip(ptr noundef %68, i32 noundef 0) #15
  br label %4243

4243:                                             ; preds = %4242, %4239
  call void @x264_macroblock_write_cabac(ptr noundef %68, ptr noundef nonnull %2177) #15
  br label %4306

4244:                                             ; preds = %4223
  %4245 = load i32, ptr %2187, align 8, !tbaa !451
  switch i32 %4245, label %4248 [
    i32 6, label %4246
    i32 18, label %4246
  ]

4246:                                             ; preds = %4244, %4244
  %4247 = add nsw i32 %4122, 1
  br label %4306

4248:                                             ; preds = %4244
  %4249 = load i32, ptr %611, align 16, !tbaa !326
  %4250 = icmp eq i32 %4249, 2
  br i1 %4250, label %4304, label %4251

4251:                                             ; preds = %4248
  %4252 = add i32 %4122, 1
  %4253 = icmp sgt i32 %4252, 65535
  %4254 = lshr i32 %4252, 16
  %4255 = select i1 %4253, i32 32, i32 0
  %4256 = select i1 %4253, i32 %4254, i32 %4252
  %4257 = icmp sgt i32 %4256, 255
  %4258 = or disjoint i32 %4255, 16
  %4259 = lshr i32 %4256, 8
  %4260 = select i1 %4257, i32 %4258, i32 %4255
  %4261 = select i1 %4257, i32 %4259, i32 %4256
  %4262 = sext i32 %4261 to i64
  %4263 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %4262
  %4264 = load i8, ptr %4263, align 1, !tbaa !160
  %4265 = zext i8 %4264 to i32
  %4266 = add nuw nsw i32 %4260, %4265
  %4267 = lshr i32 %4266, 1
  %4268 = load i64, ptr %2147, align 8, !tbaa !275
  %4269 = zext nneg i32 %4267 to i64
  %4270 = shl i64 %4268, %4269
  store i64 %4270, ptr %2147, align 8, !tbaa !275
  %4271 = load i32, ptr %2143, align 8, !tbaa !274
  %4272 = sub nsw i32 %4271, %4267
  store i32 %4272, ptr %2143, align 8, !tbaa !274
  %4273 = icmp slt i32 %4272, 33
  br i1 %4273, label %4274, label %4284

4274:                                             ; preds = %4251
  %4275 = zext nneg i32 %4272 to i64
  %4276 = shl i64 %4270, %4275
  %4277 = call i64 @llvm.bswap.i64(i64 %4276)
  %4278 = trunc i64 %4277 to i32
  %4279 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4278, ptr %4279, align 4, !tbaa !160
  %4280 = load i32, ptr %2143, align 8, !tbaa !274
  %4281 = add nsw i32 %4280, 32
  store i32 %4281, ptr %2143, align 8, !tbaa !274
  %4282 = load ptr, ptr %2142, align 8, !tbaa !272
  %4283 = getelementptr inbounds i8, ptr %4282, i64 4
  store ptr %4283, ptr %2142, align 8, !tbaa !272
  br label %4284

4284:                                             ; preds = %4274, %4251
  %4285 = add nuw nsw i32 %4267, 1
  %4286 = load i64, ptr %2147, align 8, !tbaa !275
  %4287 = zext nneg i32 %4285 to i64
  %4288 = shl i64 %4286, %4287
  %4289 = zext i32 %4252 to i64
  %4290 = or i64 %4288, %4289
  store i64 %4290, ptr %2147, align 8, !tbaa !275
  %4291 = load i32, ptr %2143, align 8, !tbaa !274
  %4292 = sub nsw i32 %4291, %4285
  store i32 %4292, ptr %2143, align 8, !tbaa !274
  %4293 = icmp slt i32 %4292, 33
  br i1 %4293, label %4294, label %4304

4294:                                             ; preds = %4284
  %4295 = zext nneg i32 %4292 to i64
  %4296 = shl i64 %4290, %4295
  %4297 = call i64 @llvm.bswap.i64(i64 %4296)
  %4298 = trunc i64 %4297 to i32
  %4299 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4298, ptr %4299, align 4, !tbaa !160
  %4300 = load i32, ptr %2143, align 8, !tbaa !274
  %4301 = add nsw i32 %4300, 32
  store i32 %4301, ptr %2143, align 8, !tbaa !274
  %4302 = load ptr, ptr %2142, align 8, !tbaa !272
  %4303 = getelementptr inbounds i8, ptr %4302, i64 4
  store ptr %4303, ptr %2142, align 8, !tbaa !272
  br label %4304

4304:                                             ; preds = %4294, %4284, %4248
  %4305 = phi i32 [ %4122, %4248 ], [ 0, %4284 ], [ 0, %4294 ]
  call void @x264_macroblock_write_cavlc(ptr noundef %68) #15
  br label %4306

4306:                                             ; preds = %4304, %4246, %4243, %4238
  %4307 = phi i32 [ %4122, %4238 ], [ %4122, %4243 ], [ %4247, %4246 ], [ %4305, %4304 ]
  %4308 = load ptr, ptr %2142, align 8, !tbaa !272
  %4309 = load ptr, ptr %2141, align 8, !tbaa !271
  %4310 = ptrtoint ptr %4308 to i64
  %4311 = ptrtoint ptr %4309 to i64
  %4312 = sub i64 %4310, %4311
  %4313 = load i32, ptr %2143, align 8, !tbaa !274
  %4314 = trunc i64 %4312 to i32
  %4315 = load ptr, ptr %2180, align 8, !tbaa !440
  %4316 = load ptr, ptr %2181, align 16, !tbaa !441
  %4317 = ptrtoint ptr %4315 to i64
  %4318 = ptrtoint ptr %4316 to i64
  %4319 = sub i64 %4317, %4318
  %4320 = load i32, ptr %2182, align 4, !tbaa !442
  %4321 = load i32, ptr %2183, align 8, !tbaa !443
  %4322 = trunc i64 %4319 to i32
  %4323 = add i32 %4320, %4314
  %4324 = add i32 %4323, %4322
  %4325 = shl i32 %4324, 3
  %4326 = sub i32 %4321, %4313
  %4327 = add i32 %4326, 64
  %4328 = add i32 %4327, %4325
  %4329 = sub i32 %4137, %4143
  %4330 = add i32 %4329, %4145
  %4331 = shl i32 %4330, 3
  %4332 = add i32 %4136, -64
  %4333 = sub i32 %4332, %4144
  %4334 = add i32 %4333, %4331
  %4335 = add i32 %4334, %4328
  %4336 = add i32 %4115, %4328
  %4337 = icmp slt i32 %2260, %4336
  %4338 = select i1 %2258, i1 %4337, i1 false
  br i1 %4338, label %4339, label %4356

4339:                                             ; preds = %4306
  %4340 = load i32, ptr %2130, align 16, !tbaa !391
  %4341 = icmp eq i32 %4340, 0
  br i1 %4341, label %4342, label %4356

4342:                                             ; preds = %4339
  %4343 = load i32, ptr %2131, align 4, !tbaa !379
  %4344 = icmp eq i32 %4127, %4343
  br i1 %4344, label %4355, label %4345

4345:                                             ; preds = %4342
  %4346 = load i32, ptr %2176, align 16, !tbaa !127
  %4347 = icmp eq i32 %4346, 0
  br i1 %4347, label %4351, label %4348

4348:                                             ; preds = %4345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %2177, ptr noundef nonnull align 16 dereferenceable(48) %7, i64 48, i1 false)
  %4349 = load ptr, ptr %2180, align 8, !tbaa !446
  %4350 = getelementptr inbounds i8, ptr %4349, i64 -1
  store i8 %4156, ptr %4350, align 1, !tbaa !160
  br label %4352

4351:                                             ; preds = %4345
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2141, ptr noundef nonnull align 8 dereferenceable(40) %6, i64 40, i1 false), !tbaa.struct !444
  br label %4352

4352:                                             ; preds = %4351, %4348
  %4353 = phi i32 [ %4307, %4348 ], [ %4157, %4351 ]
  store i32 1, ptr %2130, align 16, !tbaa !391
  %4354 = add nsw i32 %4127, -1
  store i32 %4354, ptr %2127, align 8, !tbaa !380
  br label %4554

4355:                                             ; preds = %4342
  store i32 %4127, ptr %2127, align 8, !tbaa !380
  br label %4356

4356:                                             ; preds = %4355, %4339, %4306
  store i32 0, ptr %2130, align 16, !tbaa !391
  call void @x264_macroblock_cache_save(ptr noundef %68) #15
  %4357 = load i32, ptr %2187, align 8, !tbaa !451
  %4358 = sext i32 %4357 to i64
  %4359 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 3, i64 %4358
  %4360 = load i32, ptr %4359, align 4, !tbaa !145
  %4361 = add nsw i32 %4360, 1
  store i32 %4361, ptr %4359, align 4, !tbaa !145
  %4362 = load i32, ptr %2187, align 8, !tbaa !451
  %4363 = icmp ult i32 %4362, 4
  %4364 = load i32, ptr %2188, align 16, !tbaa !221
  %4365 = icmp sgt i32 %4364, 1
  br i1 %4365, label %4370, label %4366

4366:                                             ; preds = %4356
  %4367 = load i32, ptr %2189, align 8, !tbaa !100
  %4368 = icmp eq i32 %4367, 0
  %4369 = or i1 %4363, %4368
  br i1 %4369, label %4419, label %4371

4370:                                             ; preds = %4356
  br i1 %4363, label %4419, label %4371

4371:                                             ; preds = %4370, %4366
  switch i32 %4362, label %4372 [
    i32 6, label %4419
    i32 18, label %4419
    i32 7, label %4419
  ]

4372:                                             ; preds = %4371
  %4373 = load i32, ptr %2190, align 4, !tbaa !452
  %4374 = icmp eq i32 %4373, 13
  br i1 %4374, label %4380, label %4375

4375:                                             ; preds = %4372
  %4376 = sext i32 %4373 to i64
  %4377 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 9, i64 %4376
  %4378 = load i32, ptr %4377, align 4, !tbaa !145
  %4379 = add nsw i32 %4378, 4
  store i32 %4379, ptr %4377, align 4, !tbaa !145
  br label %4390

4380:                                             ; preds = %4372, %4380
  %4381 = phi i64 [ %4388, %4380 ], [ 0, %4372 ]
  %4382 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 55, i64 %4381
  %4383 = load i8, ptr %4382, align 1, !tbaa !160
  %4384 = zext i8 %4383 to i64
  %4385 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 9, i64 %4384
  %4386 = load i32, ptr %4385, align 4, !tbaa !145
  %4387 = add nsw i32 %4386, 1
  store i32 %4387, ptr %4385, align 4, !tbaa !145
  %4388 = add nuw nsw i64 %4381, 1
  %4389 = icmp eq i64 %4388, 4
  br i1 %4389, label %4390, label %4380, !llvm.loop !453

4390:                                             ; preds = %4380, %4375
  %4391 = load i32, ptr %2191, align 16, !tbaa !102
  %4392 = icmp sgt i32 %4391, 1
  br i1 %4392, label %4393, label %4419

4393:                                             ; preds = %4390
  %4394 = load i32, ptr %611, align 16, !tbaa !326
  %4395 = icmp eq i32 %4394, 1
  br label %4396

4396:                                             ; preds = %4398, %4393
  %4397 = phi i64 [ 0, %4393 ], [ %4399, %4398 ]
  br label %4402

4398:                                             ; preds = %4416
  %4399 = add nuw nsw i64 %4397, 1
  %4400 = icmp eq i64 %4397, 0
  %4401 = and i1 %4395, %4400
  br i1 %4401, label %4396, label %4419, !llvm.loop !454

4402:                                             ; preds = %4416, %4396
  %4403 = phi i64 [ 0, %4396 ], [ %4417, %4416 ]
  %4404 = shl nuw nsw i64 %4403, 2
  %4405 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %4404
  %4406 = load i32, ptr %4405, align 16, !tbaa !145
  %4407 = sext i32 %4406 to i64
  %4408 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 55, i32 67, i32 3, i64 %4397, i64 %4407
  %4409 = load i8, ptr %4408, align 1, !tbaa !160
  %4410 = icmp sgt i8 %4409, -1
  br i1 %4410, label %4411, label %4416

4411:                                             ; preds = %4402
  %4412 = zext nneg i8 %4409 to i64
  %4413 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 8, i64 %4397, i64 %4412
  %4414 = load i32, ptr %4413, align 4, !tbaa !145
  %4415 = add nsw i32 %4414, 1
  store i32 %4415, ptr %4413, align 4, !tbaa !145
  br label %4416

4416:                                             ; preds = %4411, %4402
  %4417 = add nuw nsw i64 %4403, 1
  %4418 = icmp eq i64 %4417, 4
  br i1 %4418, label %4398, label %4402, !llvm.loop !455

4419:                                             ; preds = %4398, %4390, %4371, %4371, %4371, %4370, %4366
  %4420 = load i32, ptr %2188, align 16, !tbaa !221
  %4421 = icmp sgt i32 %4420, 1
  br i1 %4421, label %4422, label %4506

4422:                                             ; preds = %4419
  %4423 = load i32, ptr %2192, align 8, !tbaa !456
  %4424 = load i32, ptr %2193, align 4, !tbaa !457
  %4425 = or i32 %4424, %4423
  %4426 = icmp eq i32 %4425, 0
  br i1 %4426, label %4453, label %4427

4427:                                             ; preds = %4422
  %4428 = and i32 %4423, 1
  %4429 = lshr i32 %4423, 1
  %4430 = and i32 %4429, 1
  %4431 = lshr i32 %4423, 2
  %4432 = and i32 %4431, 1
  %4433 = ashr i32 %4423, 3
  %4434 = xor i1 %4363, true
  %4435 = zext i1 %4434 to i64
  %4436 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 10, i64 %4435
  %4437 = load i32, ptr %4436, align 4, !tbaa !145
  %4438 = add nsw i32 %4433, %4428
  %4439 = add nsw i32 %4438, %4430
  %4440 = add nsw i32 %4439, %4432
  %4441 = add nsw i32 %4440, %4437
  store i32 %4441, ptr %4436, align 4, !tbaa !145
  %4442 = icmp ne i32 %4424, 0
  %4443 = zext i1 %4442 to i32
  %4444 = select i1 %4363, i64 2, i64 3
  %4445 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 10, i64 %4444
  %4446 = load i32, ptr %4445, align 4, !tbaa !145
  %4447 = add nsw i32 %4446, %4443
  store i32 %4447, ptr %4445, align 4, !tbaa !145
  %4448 = ashr i32 %4424, 1
  %4449 = select i1 %4363, i64 4, i64 5
  %4450 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 10, i64 %4449
  %4451 = load i32, ptr %4450, align 4, !tbaa !145
  %4452 = add nsw i32 %4451, %4448
  store i32 %4452, ptr %4450, align 4, !tbaa !145
  br label %4453

4453:                                             ; preds = %4427, %4422
  %4454 = icmp eq i32 %4423, 0
  %4455 = or i1 %4363, %4454
  br i1 %4455, label %4462, label %4456

4456:                                             ; preds = %4453
  %4457 = load i32, ptr %2194, align 4, !tbaa !145
  %4458 = add nsw i32 %4457, 1
  store i32 %4458, ptr %2194, align 4, !tbaa !145
  %4459 = load i32, ptr %2195, align 4, !tbaa !458
  %4460 = load i32, ptr %2196, align 4, !tbaa !145
  %4461 = add nsw i32 %4460, %4459
  store i32 %4461, ptr %2196, align 4, !tbaa !145
  br label %4462

4462:                                             ; preds = %4456, %4453
  br i1 %4363, label %4463, label %4506

4463:                                             ; preds = %4462
  %4464 = load i32, ptr %2187, align 8, !tbaa !451
  switch i32 %4464, label %4484 [
    i32 3, label %4506
    i32 2, label %4465
    i32 1, label %4471
  ]

4465:                                             ; preds = %4463
  %4466 = load i32, ptr %2199, align 16, !tbaa !459
  %4467 = sext i32 %4466 to i64
  %4468 = getelementptr inbounds [13 x i32], ptr %2198, i64 0, i64 %4467
  %4469 = load i32, ptr %4468, align 4, !tbaa !145
  %4470 = add nsw i32 %4469, 1
  store i32 %4470, ptr %4468, align 4, !tbaa !145
  br label %4497

4471:                                             ; preds = %4463, %4471
  %4472 = phi i64 [ %4482, %4471 ], [ 0, %4463 ]
  %4473 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %4472
  %4474 = load i32, ptr %4473, align 16, !tbaa !145
  %4475 = sext i32 %4474 to i64
  %4476 = getelementptr inbounds [40 x i8], ptr %2197, i64 0, i64 %4475
  %4477 = load i8, ptr %4476, align 1, !tbaa !160
  %4478 = sext i8 %4477 to i64
  %4479 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 11, i64 1, i64 %4478
  %4480 = load i32, ptr %4479, align 4, !tbaa !145
  %4481 = add nsw i32 %4480, 1
  store i32 %4481, ptr %4479, align 4, !tbaa !145
  %4482 = add nuw nsw i64 %4472, 4
  %4483 = icmp ult i64 %4472, 12
  br i1 %4483, label %4471, label %4497, !llvm.loop !460

4484:                                             ; preds = %4463, %4484
  %4485 = phi i64 [ %4495, %4484 ], [ 0, %4463 ]
  %4486 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %4485
  %4487 = load i32, ptr %4486, align 4, !tbaa !145
  %4488 = sext i32 %4487 to i64
  %4489 = getelementptr inbounds [40 x i8], ptr %2197, i64 0, i64 %4488
  %4490 = load i8, ptr %4489, align 1, !tbaa !160
  %4491 = sext i8 %4490 to i64
  %4492 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 11, i64 2, i64 %4491
  %4493 = load i32, ptr %4492, align 4, !tbaa !145
  %4494 = add nsw i32 %4493, 1
  store i32 %4494, ptr %4492, align 4, !tbaa !145
  %4495 = add nuw nsw i64 %4485, 1
  %4496 = icmp eq i64 %4495, 16
  br i1 %4496, label %4497, label %4484, !llvm.loop !461

4497:                                             ; preds = %4471, %4484, %4465
  %4498 = load i32, ptr %2200, align 4, !tbaa !462
  %4499 = sext i32 %4498 to i64
  %4500 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %4499
  %4501 = load i8, ptr %4500, align 1, !tbaa !160
  %4502 = zext i8 %4501 to i64
  %4503 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 57, i32 0, i32 11, i64 3, i64 %4502
  %4504 = load i32, ptr %4503, align 4, !tbaa !145
  %4505 = add nsw i32 %4504, 1
  store i32 %4505, ptr %4503, align 4, !tbaa !145
  br label %4506

4506:                                             ; preds = %4497, %4463, %4462, %4419
  br i1 %4116, label %4530, label %4507

4507:                                             ; preds = %4506
  %4508 = load i32, ptr %1759, align 4, !tbaa !361
  %4509 = load i32, ptr %2201, align 4, !tbaa !463
  %4510 = and i32 %4509, %4508
  %4511 = sext i32 %4510 to i64
  %4512 = getelementptr inbounds %struct.x264_t, ptr %68, i64 0, i32 63, i64 %4511
  %4513 = load ptr, ptr %4512, align 8, !tbaa !116
  %4514 = load i32, ptr %2202, align 16, !tbaa !464
  %4515 = sext i32 %4514 to i64
  %4516 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %4513, i64 %4515
  call void @x264_macroblock_cache_load_deblock(ptr noundef %68) #15
  %4517 = load ptr, ptr %2203, align 8, !tbaa !465
  %4518 = load i32, ptr %2204, align 8, !tbaa !466
  %4519 = sext i32 %4518 to i64
  %4520 = getelementptr inbounds i8, ptr %4517, i64 %4519
  %4521 = load i8, ptr %4520, align 1, !tbaa !160
  %4522 = icmp ult i8 %4521, 4
  br i1 %4522, label %4523, label %4524

4523:                                             ; preds = %4507
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %4516, i8 3, i64 32, i1 false)
  br label %4530

4524:                                             ; preds = %4507
  %4525 = lshr i32 4, %4508
  %4526 = load ptr, ptr %2205, align 8, !tbaa !467
  %4527 = load i32, ptr %611, align 16, !tbaa !326
  %4528 = icmp eq i32 %4527, 1
  %4529 = zext i1 %4528 to i32
  call void %4526(ptr noundef nonnull %2206, ptr noundef nonnull %2207, ptr noundef nonnull %2208, ptr noundef %4516, i32 noundef %4525, i32 noundef %4529) #15
  br label %4530

4530:                                             ; preds = %4524, %4523, %4506
  call void @x264_ratecontrol_mb(ptr noundef %68, i32 noundef %4335) #15
  %4531 = load i32, ptr %1759, align 4, !tbaa !361
  %4532 = icmp eq i32 %4531, 0
  br i1 %4532, label %4542, label %4533

4533:                                             ; preds = %4530
  %4534 = and i32 %4120, 1
  %4535 = add nsw i32 %4121, %4534
  %4536 = load ptr, ptr %1575, align 16, !tbaa !77
  %4537 = getelementptr inbounds %struct.x264_sps_t, ptr %4536, i64 0, i32 16
  %4538 = load i32, ptr %4537, align 4, !tbaa !83
  %4539 = icmp slt i32 %4535, %4538
  %4540 = zext i1 %4539 to i32
  %4541 = xor i32 %4120, %4540
  br label %4544

4542:                                             ; preds = %4530
  %4543 = add nsw i32 %4121, 1
  br label %4544

4544:                                             ; preds = %4542, %4533
  %4545 = phi i32 [ %4541, %4533 ], [ %4120, %4542 ]
  %4546 = phi i32 [ %4535, %4533 ], [ %4543, %4542 ]
  %4547 = load ptr, ptr %1575, align 16, !tbaa !77
  %4548 = getelementptr inbounds %struct.x264_sps_t, ptr %4547, i64 0, i32 16
  %4549 = load i32, ptr %4548, align 4, !tbaa !83
  %4550 = icmp eq i32 %4546, %4549
  %4551 = zext i1 %4550 to i32
  %4552 = add nsw i32 %4545, %4551
  %4553 = select i1 %4550, i32 0, i32 %4546
  br label %4554

4554:                                             ; preds = %4544, %4352, %4222
  %4555 = phi i32 [ 0, %4544 ], [ 3, %4352 ], [ 1, %4222 ]
  %4556 = phi i32 [ %4552, %4544 ], [ %4120, %4352 ], [ %4120, %4222 ]
  %4557 = phi i32 [ %4553, %4544 ], [ %4121, %4352 ], [ %4121, %4222 ]
  %4558 = phi i32 [ %4307, %4544 ], [ %4353, %4352 ], [ %4122, %4222 ]
  switch i32 %4555, label %4737 [
    i32 0, label %4117
    i32 3, label %4559
  ], !llvm.loop !468

4559:                                             ; preds = %4554, %4117
  %4560 = phi i32 [ %4558, %4554 ], [ %4122, %4117 ]
  %4561 = load i32, ptr %2176, align 16, !tbaa !127
  %4562 = icmp eq i32 %4561, 0
  br i1 %4562, label %4565, label %4563

4563:                                             ; preds = %4559
  call void @x264_cabac_encode_flush(ptr noundef %68, ptr noundef nonnull %2177) #15
  %4564 = load ptr, ptr %2180, align 8, !tbaa !446
  store ptr %4564, ptr %2142, align 8, !tbaa !437
  br label %4666

4565:                                             ; preds = %4559
  %4566 = icmp sgt i32 %4560, 0
  br i1 %4566, label %4567, label %4620

4567:                                             ; preds = %4565
  %4568 = add nuw i32 %4560, 1
  %4569 = icmp sgt i32 %4568, 65535
  %4570 = lshr i32 %4568, 16
  %4571 = select i1 %4569, i32 32, i32 0
  %4572 = select i1 %4569, i32 %4570, i32 %4568
  %4573 = icmp sgt i32 %4572, 255
  %4574 = or disjoint i32 %4571, 16
  %4575 = lshr i32 %4572, 8
  %4576 = select i1 %4573, i32 %4574, i32 %4571
  %4577 = select i1 %4573, i32 %4575, i32 %4572
  %4578 = sext i32 %4577 to i64
  %4579 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %4578
  %4580 = load i8, ptr %4579, align 1, !tbaa !160
  %4581 = zext i8 %4580 to i32
  %4582 = add nuw nsw i32 %4576, %4581
  %4583 = lshr i32 %4582, 1
  %4584 = load i64, ptr %2147, align 8, !tbaa !275
  %4585 = zext nneg i32 %4583 to i64
  %4586 = shl i64 %4584, %4585
  store i64 %4586, ptr %2147, align 8, !tbaa !275
  %4587 = load i32, ptr %2143, align 8, !tbaa !274
  %4588 = sub nsw i32 %4587, %4583
  store i32 %4588, ptr %2143, align 8, !tbaa !274
  %4589 = icmp slt i32 %4588, 33
  br i1 %4589, label %4590, label %4600

4590:                                             ; preds = %4567
  %4591 = zext nneg i32 %4588 to i64
  %4592 = shl i64 %4586, %4591
  %4593 = call i64 @llvm.bswap.i64(i64 %4592)
  %4594 = trunc i64 %4593 to i32
  %4595 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4594, ptr %4595, align 4, !tbaa !160
  %4596 = load i32, ptr %2143, align 8, !tbaa !274
  %4597 = add nsw i32 %4596, 32
  store i32 %4597, ptr %2143, align 8, !tbaa !274
  %4598 = load ptr, ptr %2142, align 8, !tbaa !272
  %4599 = getelementptr inbounds i8, ptr %4598, i64 4
  store ptr %4599, ptr %2142, align 8, !tbaa !272
  br label %4600

4600:                                             ; preds = %4590, %4567
  %4601 = add nuw nsw i32 %4583, 1
  %4602 = load i64, ptr %2147, align 8, !tbaa !275
  %4603 = zext nneg i32 %4601 to i64
  %4604 = shl i64 %4602, %4603
  %4605 = zext i32 %4568 to i64
  %4606 = or i64 %4604, %4605
  store i64 %4606, ptr %2147, align 8, !tbaa !275
  %4607 = load i32, ptr %2143, align 8, !tbaa !274
  %4608 = sub nsw i32 %4607, %4601
  store i32 %4608, ptr %2143, align 8, !tbaa !274
  %4609 = icmp slt i32 %4608, 33
  br i1 %4609, label %4610, label %4620

4610:                                             ; preds = %4600
  %4611 = zext nneg i32 %4608 to i64
  %4612 = shl i64 %4606, %4611
  %4613 = call i64 @llvm.bswap.i64(i64 %4612)
  %4614 = trunc i64 %4613 to i32
  %4615 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4614, ptr %4615, align 4, !tbaa !160
  %4616 = load i32, ptr %2143, align 8, !tbaa !274
  %4617 = add nsw i32 %4616, 32
  store i32 %4617, ptr %2143, align 8, !tbaa !274
  %4618 = load ptr, ptr %2142, align 8, !tbaa !272
  %4619 = getelementptr inbounds i8, ptr %4618, i64 4
  store ptr %4619, ptr %2142, align 8, !tbaa !272
  br label %4620

4620:                                             ; preds = %4610, %4600, %4565
  %4621 = load i64, ptr %2147, align 8, !tbaa !275
  %4622 = shl i64 %4621, 1
  %4623 = or disjoint i64 %4622, 1
  store i64 %4623, ptr %2147, align 8, !tbaa !275
  %4624 = load i32, ptr %2143, align 8, !tbaa !274
  %4625 = add nsw i32 %4624, -1
  store i32 %4625, ptr %2143, align 8, !tbaa !274
  %4626 = icmp eq i32 %4625, 32
  br i1 %4626, label %4627, label %4633

4627:                                             ; preds = %4620
  %4628 = trunc i64 %4623 to i32
  %4629 = call i32 @llvm.bswap.i32(i32 %4628)
  %4630 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4629, ptr %4630, align 4, !tbaa !160
  %4631 = load ptr, ptr %2142, align 8, !tbaa !272
  %4632 = getelementptr inbounds i8, ptr %4631, i64 4
  store ptr %4632, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %4633

4633:                                             ; preds = %4627, %4620
  %4634 = load i32, ptr %2143, align 8, !tbaa !274
  %4635 = and i32 %4634, 7
  %4636 = load i64, ptr %2147, align 8, !tbaa !275
  %4637 = zext nneg i32 %4635 to i64
  %4638 = shl i64 %4636, %4637
  store i64 %4638, ptr %2147, align 8, !tbaa !275
  %4639 = and i32 %4634, -8
  store i32 %4639, ptr %2143, align 8, !tbaa !274
  %4640 = icmp slt i32 %4639, 33
  br i1 %4640, label %4641, label %4651

4641:                                             ; preds = %4633
  %4642 = zext nneg i32 %4639 to i64
  %4643 = call i64 @llvm.bswap.i64(i64 %4638)
  %4644 = lshr i64 %4643, %4642
  %4645 = trunc i64 %4644 to i32
  %4646 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4645, ptr %4646, align 4, !tbaa !160
  %4647 = load i32, ptr %2143, align 8, !tbaa !274
  %4648 = add nsw i32 %4647, 32
  store i32 %4648, ptr %2143, align 8, !tbaa !274
  %4649 = load ptr, ptr %2142, align 8, !tbaa !272
  %4650 = getelementptr inbounds i8, ptr %4649, i64 4
  store ptr %4650, ptr %2142, align 8, !tbaa !272
  br label %4651

4651:                                             ; preds = %4641, %4633
  %4652 = load i64, ptr %2147, align 8, !tbaa !275
  %4653 = load i32, ptr %2143, align 8, !tbaa !274
  %4654 = and i32 %4653, 31
  %4655 = zext nneg i32 %4654 to i64
  %4656 = shl i64 %4652, %4655
  %4657 = trunc i64 %4656 to i32
  %4658 = call i32 @llvm.bswap.i32(i32 %4657)
  %4659 = load ptr, ptr %2142, align 8, !tbaa !272
  store i32 %4658, ptr %4659, align 4, !tbaa !160
  %4660 = load i32, ptr %2143, align 8, !tbaa !274
  %4661 = sdiv i32 %4660, -8
  %4662 = load ptr, ptr %2142, align 8, !tbaa !272
  %4663 = sext i32 %4661 to i64
  %4664 = getelementptr i8, ptr %4662, i64 %4663
  %4665 = getelementptr i8, ptr %4664, i64 8
  store ptr %4665, ptr %2142, align 8, !tbaa !272
  store i32 64, ptr %2143, align 8, !tbaa !274
  br label %4666

4666:                                             ; preds = %4651, %4563
  %4667 = load ptr, ptr %2148, align 8, !tbaa !166
  %4668 = load i32, ptr %2139, align 16, !tbaa !146
  %4669 = sext i32 %4668 to i64
  %4670 = load ptr, ptr %2149, align 8, !tbaa !165
  %4671 = load ptr, ptr %2142, align 8, !tbaa !272
  %4672 = load ptr, ptr %2141, align 8, !tbaa !271
  %4673 = ptrtoint ptr %4671 to i64
  %4674 = ptrtoint ptr %4672 to i64
  %4675 = sub i64 %4673, %4674
  %4676 = load i32, ptr %2143, align 8, !tbaa !274
  %4677 = trunc i64 %4675 to i32
  %4678 = shl i32 %4677, 3
  %4679 = sub i32 %4678, %4676
  %4680 = add i32 %4679, 64
  %4681 = sdiv i32 %4680, 8
  %4682 = sext i32 %4681 to i64
  %4683 = getelementptr inbounds i8, ptr %4670, i64 %4682
  %4684 = getelementptr inbounds %struct.x264_nal_t, ptr %4667, i64 %4669, i32 3
  %4685 = load ptr, ptr %4684, align 8, !tbaa !280
  %4686 = ptrtoint ptr %4683 to i64
  %4687 = ptrtoint ptr %4685 to i64
  %4688 = sub i64 %4686, %4687
  %4689 = trunc i64 %4688 to i32
  %4690 = getelementptr inbounds %struct.x264_nal_t, ptr %4667, i64 %4669, i32 2
  store i32 %4689, ptr %4690, align 8, !tbaa !279
  %4691 = add nsw i32 %4668, 1
  store i32 %4691, ptr %2139, align 16, !tbaa !146
  %4692 = load i32, ptr %2209, align 4, !tbaa !167
  %4693 = icmp slt i32 %4691, %4692
  br i1 %4693, label %4706, label %4694

4694:                                             ; preds = %4666
  %4695 = mul i32 %4692, 48
  %4696 = call ptr @x264_malloc(i32 noundef %4695) #15
  %4697 = icmp eq ptr %4696, null
  br i1 %4697, label %4737, label %4698

4698:                                             ; preds = %4694
  %4699 = load ptr, ptr %2148, align 8, !tbaa !166
  %4700 = load i32, ptr %2209, align 4, !tbaa !167
  %4701 = sext i32 %4700 to i64
  %4702 = mul nsw i64 %4701, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %4696, ptr align 8 %4699, i64 %4702, i1 false)
  %4703 = load ptr, ptr %2148, align 8, !tbaa !166
  call void @x264_free(ptr noundef %4703) #15
  store ptr %4696, ptr %2148, align 8, !tbaa !166
  %4704 = load i32, ptr %2209, align 4, !tbaa !167
  %4705 = shl nsw i32 %4704, 1
  store i32 %4705, ptr %2209, align 4, !tbaa !167
  br label %4706

4706:                                             ; preds = %4698, %4666
  %4707 = load i32, ptr %2127, align 8, !tbaa !380
  %4708 = load i32, ptr %1947, align 8, !tbaa !377
  %4709 = load ptr, ptr %1575, align 16, !tbaa !77
  %4710 = getelementptr inbounds %struct.x264_sps_t, ptr %4709, i64 0, i32 16
  %4711 = load i32, ptr %4710, align 4, !tbaa !83
  %4712 = mul nsw i32 %4711, %4708
  %4713 = add nsw i32 %4712, -1
  %4714 = icmp eq i32 %4707, %4713
  br i1 %4714, label %4715, label %4733

4715:                                             ; preds = %4706
  %4716 = load ptr, ptr %2142, align 8, !tbaa !272
  %4717 = load ptr, ptr %2141, align 8, !tbaa !271
  %4718 = ptrtoint ptr %4716 to i64
  %4719 = ptrtoint ptr %4717 to i64
  %4720 = sub i64 %4718, %4719
  %4721 = load i32, ptr %2143, align 8, !tbaa !274
  %4722 = trunc i64 %4720 to i32
  %4723 = shl i32 %4722, 3
  %4724 = load i32, ptr %2139, align 16, !tbaa !146
  %4725 = mul i32 %4724, 40
  %4726 = load i32, ptr %2210, align 4, !tbaa !469
  %4727 = load i32, ptr %2129, align 8, !tbaa !470
  %4728 = add i32 %4725, 64
  %4729 = add i32 %4721, %4726
  %4730 = add i32 %4728, %4723
  %4731 = add i32 %4729, %4727
  %4732 = sub i32 %4730, %4731
  store i32 %4732, ptr %2211, align 8, !tbaa !471
  call fastcc void @x264_fdec_filter_row(ptr noundef %68, i32 noundef %4708, i32 noundef 1)
  br label %4733

4733:                                             ; preds = %4715, %4706
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6)
  %4734 = load i32, ptr %2127, align 8, !tbaa !380
  %4735 = add nsw i32 %4734, 1
  store i32 %4735, ptr %2131, align 4, !tbaa !379
  %4736 = icmp slt i32 %4734, %2128
  br i1 %4736, label %2212, label %4738, !llvm.loop !472

4737:                                             ; preds = %4694, %4554
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6)
  br label %4740

4738:                                             ; preds = %2108, %4733, %2126, %2031, %1950
  %4739 = call fastcc i32 @x264_encoder_frame_end(ptr noundef %67, ptr noundef %68, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4)
  br label %4740

4740:                                             ; preds = %1641, %1443, %1353, %1288, %4737, %1384, %130, %248, %1127, %4738, %271
  %4741 = phi i32 [ %4739, %4738 ], [ %1129, %1127 ], [ %272, %271 ], [ %250, %248 ], [ -1, %130 ], [ -1, %1384 ], [ -1, %4737 ], [ -1, %1288 ], [ -1, %1353 ], [ -1, %1443 ], [ -1, %1641 ]
  ret i32 %4741
}

declare void @x264_thread_sync_ratecontrol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_frame_copy_picture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_frame_expand_border_mod16(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_weight_plane_analyse(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_frame_init_lowres(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_macroblock_tree_read(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_adaptive_quant_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_lookahead_put_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_lookahead_get_frames(ptr noundef) local_unnamed_addr #2

declare i32 @x264_lookahead_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @x264_encoder_frame_end(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca [256 x i8], align 16
  %7 = alloca [80 x i8], align 16
  %8 = alloca %struct.x264_nal_t, align 8
  %9 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #15
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !378
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  store i32 0, ptr %10, align 4, !tbaa !378
  br label %14

14:                                               ; preds = %13, %5
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %16 = load i32, ptr %15, align 16, !tbaa !146
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, ptr %4, align 8, !tbaa !314
  br label %853

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %21 = load ptr, ptr %20, align 8, !tbaa !290
  %22 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 16
  %23 = load i32, ptr %22, align 16, !tbaa !323
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %123, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %27 = load ptr, ptr %26, align 16, !tbaa !77
  %28 = getelementptr inbounds %struct.x264_sps_t, ptr %27, i64 0, i32 24, i32 19
  %29 = load i32, ptr %28, align 4, !tbaa !356
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %123, label %31

31:                                               ; preds = %25
  %32 = tail call i32 @x264_hrd_fullness(ptr noundef %0) #15
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  store i32 %32, ptr %33, align 16, !tbaa !473
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !166
  %36 = load i32, ptr %15, align 16, !tbaa !146
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.x264_nal_t, ptr %35, i64 %37
  store i32 0, ptr %38, align 8, !tbaa !276
  %39 = getelementptr inbounds %struct.x264_nal_t, ptr %35, i64 %37, i32 1
  store i32 6, ptr %39, align 4, !tbaa !278
  %40 = getelementptr inbounds %struct.x264_nal_t, ptr %35, i64 %37, i32 2
  store i32 0, ptr %40, align 8, !tbaa !279
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !165
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !272
  %46 = load ptr, ptr %43, align 8, !tbaa !271
  %47 = ptrtoint ptr %45 to i64
  %48 = ptrtoint ptr %46 to i64
  %49 = sub i64 %47, %48
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !274
  %52 = trunc i64 %49 to i32
  %53 = shl i32 %52, 3
  %54 = sub i32 %53, %51
  %55 = add i32 %54, 64
  %56 = sdiv i32 %55, 8
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %42, i64 %57
  %59 = getelementptr inbounds %struct.x264_nal_t, ptr %35, i64 %37, i32 3
  store ptr %58, ptr %59, align 8, !tbaa !280
  tail call void @x264_sei_buffering_period_write(ptr noundef %0, ptr noundef nonnull %43) #15
  %60 = load ptr, ptr %34, align 8, !tbaa !166
  %61 = load i32, ptr %15, align 16, !tbaa !146
  %62 = sext i32 %61 to i64
  %63 = load ptr, ptr %41, align 8, !tbaa !165
  %64 = load ptr, ptr %44, align 8, !tbaa !272
  %65 = load ptr, ptr %43, align 8, !tbaa !271
  %66 = ptrtoint ptr %64 to i64
  %67 = ptrtoint ptr %65 to i64
  %68 = sub i64 %66, %67
  %69 = load i32, ptr %50, align 8, !tbaa !274
  %70 = trunc i64 %68 to i32
  %71 = shl i32 %70, 3
  %72 = sub i32 %71, %69
  %73 = add i32 %72, 64
  %74 = sdiv i32 %73, 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %63, i64 %75
  %77 = getelementptr inbounds %struct.x264_nal_t, ptr %60, i64 %62, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !280
  %79 = ptrtoint ptr %76 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds %struct.x264_nal_t, ptr %60, i64 %62, i32 2
  store i32 %82, ptr %83, align 8, !tbaa !279
  %84 = add nsw i32 %61, 1
  store i32 %84, ptr %15, align 16, !tbaa !146
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !167
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %100, label %88

88:                                               ; preds = %31
  %89 = mul i32 %86, 48
  %90 = tail call ptr @x264_malloc(i32 noundef %89) #15
  %91 = icmp eq ptr %90, null
  br i1 %91, label %853, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %34, align 8, !tbaa !166
  %94 = load i32, ptr %85, align 4, !tbaa !167
  %95 = sext i32 %94 to i64
  %96 = mul nsw i64 %95, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %90, ptr align 8 %93, i64 %96, i1 false)
  %97 = load ptr, ptr %34, align 8, !tbaa !166
  tail call void @x264_free(ptr noundef %97) #15
  store ptr %90, ptr %34, align 8, !tbaa !166
  %98 = load i32, ptr %85, align 4, !tbaa !167
  %99 = shl nsw i32 %98, 1
  store i32 %99, ptr %85, align 4, !tbaa !167
  br label %100

100:                                              ; preds = %31, %92
  %101 = load ptr, ptr %34, align 8, !tbaa !166
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i64 [ %108, %102 ], [ 0, %100 ]
  %104 = getelementptr inbounds %struct.x264_nal_t, ptr %101, i64 %103, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !278
  %106 = add i32 %105, -7
  %107 = icmp ult i32 %106, 3
  %108 = add nuw i64 %103, 1
  br i1 %107, label %102, label %109, !llvm.loop !474

109:                                              ; preds = %102
  %110 = trunc i64 %103 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8)
  %111 = load i32, ptr %15, align 16, !tbaa !146
  %112 = sext i32 %111 to i64
  %113 = getelementptr %struct.x264_nal_t, ptr %101, i64 %112
  %114 = getelementptr %struct.x264_nal_t, ptr %113, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %114, i64 24, i1 false), !tbaa.struct !385
  %115 = getelementptr %struct.x264_nal_t, ptr %101, i64 %103
  %116 = getelementptr %struct.x264_nal_t, ptr %115, i64 1
  %117 = xor i32 %110, -1
  %118 = add i32 %111, %117
  %119 = sext i32 %118 to i64
  %120 = mul nsw i64 %119, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %116, ptr align 8 %115, i64 %120, i1 false)
  %121 = load ptr, ptr %34, align 8, !tbaa !166
  %122 = getelementptr inbounds %struct.x264_nal_t, ptr %121, i64 %103
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !385
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8)
  br label %123

123:                                              ; preds = %109, %25, %19
  %124 = tail call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef %0, i32 noundef 0)
  %125 = load ptr, ptr %20, align 8, !tbaa !290
  %126 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !324
  store i32 %127, ptr %4, align 8, !tbaa !314
  %128 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 16
  %129 = load i32, ptr %128, align 16, !tbaa !323
  %130 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 3
  store i32 %129, ptr %130, align 4, !tbaa !475
  %131 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 28
  %132 = load i32, ptr %131, align 4, !tbaa !75
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 3
  %135 = load i64, ptr %134, align 16, !tbaa !306
  %136 = mul nsw i64 %135, %133
  store i64 %136, ptr %134, align 16, !tbaa !306
  %137 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 4
  store i64 %136, ptr %137, align 8, !tbaa !476
  %138 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 10
  %139 = load i32, ptr %138, align 8, !tbaa !101
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %182, label %141

141:                                              ; preds = %123
  %142 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 13
  %143 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %144 = load i32, ptr %143, align 4, !tbaa !68
  %145 = icmp sgt i32 %144, %139
  br i1 %145, label %167, label %146

146:                                              ; preds = %141
  %147 = icmp eq i32 %132, 1
  br i1 %147, label %148, label %154

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 4
  %150 = load i64, ptr %149, align 8, !tbaa !321
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 11
  %152 = load i64, ptr %151, align 16, !tbaa !307
  %153 = sub nsw i64 %150, %152
  br label %173

154:                                              ; preds = %146
  %155 = icmp eq i32 %144, 1
  br i1 %155, label %156, label %161

156:                                              ; preds = %154
  %157 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 4
  %158 = load i64, ptr %157, align 8, !tbaa !321
  %159 = mul nsw i64 %158, %133
  %160 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 12
  store i64 %159, ptr %160, align 8, !tbaa !477
  br label %161

161:                                              ; preds = %156, %154
  %162 = sext i32 %144 to i64
  %163 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 12
  %164 = load i64, ptr %163, align 8, !tbaa !477
  %165 = mul nsw i64 %164, %162
  %166 = sdiv i64 %165, %133
  br label %173

167:                                              ; preds = %141
  %168 = sub nsw i32 %144, %139
  %169 = srem i32 %168, %139
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, ptr %142, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !162
  br label %173

173:                                              ; preds = %148, %161, %167
  %174 = phi i64 [ %153, %148 ], [ %166, %161 ], [ %172, %167 ]
  %175 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 5
  store i64 %174, ptr %175, align 8, !tbaa !478
  %176 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 4
  %177 = load i64, ptr %176, align 8, !tbaa !321
  %178 = mul nsw i64 %177, %133
  %179 = srem i32 %144, %139
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, ptr %142, i64 %180
  store i64 %178, ptr %181, align 8, !tbaa !162
  br label %186

182:                                              ; preds = %123
  %183 = getelementptr inbounds %struct.x264_frame, ptr %125, i64 0, i32 4
  %184 = load i64, ptr %183, align 8, !tbaa !321
  %185 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 5
  store i64 %184, ptr %185, align 8, !tbaa !478
  br label %186

186:                                              ; preds = %182, %173
  %187 = load i64, ptr %137, align 8, !tbaa !476
  %188 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 5
  %189 = load i64, ptr %188, align 8, !tbaa !478
  %190 = icmp slt i64 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.75) #15
  br label %192

192:                                              ; preds = %191, %186
  %193 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %194 = load ptr, ptr %193, align 16, !tbaa !164
  %195 = getelementptr inbounds %struct.x264_frame, ptr %194, i64 0, i32 23
  %196 = load i32, ptr %195, align 4, !tbaa !479
  %197 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 7, i32 1
  store i32 %196, ptr %197, align 4, !tbaa !480
  br label %203

198:                                              ; preds = %203
  %199 = load ptr, ptr %20, align 8, !tbaa !290
  tail call void @x264_frame_push_unused(ptr noundef %1, ptr noundef %199) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #15
  store i32 0, ptr %9, align 4, !tbaa !145
  %200 = shl nsw i32 %124, 3
  %201 = call i32 @x264_ratecontrol_end(ptr noundef %0, i32 noundef %200, ptr noundef nonnull %9) #15
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %851, label %214

203:                                              ; preds = %192, %203
  %204 = phi i64 [ 0, %192 ], [ %212, %203 ]
  %205 = load ptr, ptr %193, align 16, !tbaa !164
  %206 = getelementptr inbounds %struct.x264_frame, ptr %205, i64 0, i32 24, i64 %204
  %207 = load i32, ptr %206, align 4, !tbaa !145
  %208 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 7, i32 2, i64 %204
  store i32 %207, ptr %208, align 4, !tbaa !145
  %209 = getelementptr inbounds %struct.x264_frame, ptr %205, i64 0, i32 30, i64 %204
  %210 = load ptr, ptr %209, align 8, !tbaa !116
  %211 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 7, i32 3, i64 %204
  store ptr %210, ptr %211, align 8, !tbaa !116
  %212 = add nuw nsw i64 %204, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %198, label %203, !llvm.loop !481

214:                                              ; preds = %198
  %215 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 8
  %216 = load ptr, ptr %20, align 8, !tbaa !290
  %217 = getelementptr inbounds %struct.x264_frame, ptr %216, i64 0, i32 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %215, ptr noundef nonnull align 16 dereferenceable(32) %217, i64 32, i1 false), !tbaa.struct !482
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %219 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %220 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %221 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %222 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %223 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 4
  %225 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 1
  br label %226

226:                                              ; preds = %319, %214
  %227 = phi i32 [ %124, %214 ], [ %320, %319 ]
  %228 = phi i32 [ 0, %214 ], [ %321, %319 ]
  %229 = load i32, ptr %9, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %322

231:                                              ; preds = %226
  %232 = load i32, ptr %218, align 16, !tbaa !229
  %233 = sub nsw i32 6, %232
  %234 = load i32, ptr %219, align 4, !tbaa !193
  %235 = icmp ne i32 %234, 0
  %236 = icmp sgt i32 %229, %234
  %237 = and i1 %235, %236
  br i1 %237, label %238, label %245

238:                                              ; preds = %231
  %239 = add i32 %232, -6
  %240 = sub i32 %234, %229
  %241 = add i32 %240, %233
  %242 = call i32 @llvm.smax.i32(i32 %241, i32 0)
  %243 = add i32 %234, %239
  %244 = sub i32 %243, %242
  br label %248

245:                                              ; preds = %231
  %246 = sub nsw i32 %229, %233
  %247 = call i32 @llvm.smax.i32(i32 %246, i32 0)
  br label %248

248:                                              ; preds = %245, %238
  %249 = phi i32 [ %244, %238 ], [ %247, %245 ]
  %250 = load ptr, ptr %220, align 8, !tbaa !166
  %251 = load i32, ptr %15, align 16, !tbaa !146
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.x264_nal_t, ptr %250, i64 %252
  store i32 0, ptr %253, align 8, !tbaa !276
  %254 = getelementptr inbounds %struct.x264_nal_t, ptr %250, i64 %252, i32 1
  store i32 12, ptr %254, align 4, !tbaa !278
  %255 = getelementptr inbounds %struct.x264_nal_t, ptr %250, i64 %252, i32 2
  store i32 0, ptr %255, align 8, !tbaa !279
  %256 = load ptr, ptr %221, align 8, !tbaa !165
  %257 = load ptr, ptr %223, align 8, !tbaa !272
  %258 = load ptr, ptr %222, align 8, !tbaa !271
  %259 = ptrtoint ptr %257 to i64
  %260 = ptrtoint ptr %258 to i64
  %261 = sub i64 %259, %260
  %262 = load i32, ptr %224, align 8, !tbaa !274
  %263 = trunc i64 %261 to i32
  %264 = shl i32 %263, 3
  %265 = sub i32 %264, %262
  %266 = add i32 %265, 64
  %267 = sdiv i32 %266, 8
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, ptr %256, i64 %268
  %270 = getelementptr inbounds %struct.x264_nal_t, ptr %250, i64 %252, i32 3
  store ptr %269, ptr %270, align 8, !tbaa !280
  call void @x264_filler_write(ptr noundef %0, ptr noundef nonnull %222, i32 noundef %249) #15
  %271 = load ptr, ptr %220, align 8, !tbaa !166
  %272 = load i32, ptr %15, align 16, !tbaa !146
  %273 = sext i32 %272 to i64
  %274 = load ptr, ptr %221, align 8, !tbaa !165
  %275 = load ptr, ptr %223, align 8, !tbaa !272
  %276 = load ptr, ptr %222, align 8, !tbaa !271
  %277 = ptrtoint ptr %275 to i64
  %278 = ptrtoint ptr %276 to i64
  %279 = sub i64 %277, %278
  %280 = load i32, ptr %224, align 8, !tbaa !274
  %281 = trunc i64 %279 to i32
  %282 = shl i32 %281, 3
  %283 = sub i32 %282, %280
  %284 = add i32 %283, 64
  %285 = sdiv i32 %284, 8
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, ptr %274, i64 %286
  %288 = getelementptr inbounds %struct.x264_nal_t, ptr %271, i64 %273, i32 3
  %289 = load ptr, ptr %288, align 8, !tbaa !280
  %290 = ptrtoint ptr %287 to i64
  %291 = ptrtoint ptr %289 to i64
  %292 = sub i64 %290, %291
  %293 = trunc i64 %292 to i32
  %294 = getelementptr inbounds %struct.x264_nal_t, ptr %271, i64 %273, i32 2
  store i32 %293, ptr %294, align 8, !tbaa !279
  %295 = add nsw i32 %272, 1
  store i32 %295, ptr %15, align 16, !tbaa !146
  %296 = load i32, ptr %225, align 4, !tbaa !167
  %297 = icmp slt i32 %295, %296
  br i1 %297, label %310, label %298

298:                                              ; preds = %248
  %299 = mul i32 %296, 48
  %300 = call ptr @x264_malloc(i32 noundef %299) #15
  %301 = icmp eq ptr %300, null
  br i1 %301, label %310, label %302

302:                                              ; preds = %298
  %303 = load ptr, ptr %220, align 8, !tbaa !166
  %304 = load i32, ptr %225, align 4, !tbaa !167
  %305 = sext i32 %304 to i64
  %306 = mul nsw i64 %305, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %300, ptr align 8 %303, i64 %306, i1 false)
  %307 = load ptr, ptr %220, align 8, !tbaa !166
  call void @x264_free(ptr noundef %307) #15
  store ptr %300, ptr %220, align 8, !tbaa !166
  %308 = load i32, ptr %225, align 4, !tbaa !167
  %309 = shl nsw i32 %308, 1
  store i32 %309, ptr %225, align 4, !tbaa !167
  br label %310

310:                                              ; preds = %248, %298, %302
  %311 = phi i1 [ false, %298 ], [ true, %302 ], [ true, %248 ]
  br i1 %311, label %312, label %319

312:                                              ; preds = %310
  %313 = load i32, ptr %15, align 16, !tbaa !146
  %314 = add nsw i32 %313, -1
  %315 = call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef %0, i32 noundef %314)
  %316 = add nsw i32 %315, %227
  %317 = load i32, ptr %9, align 4, !tbaa !145
  %318 = sub nsw i32 %317, %315
  store i32 %318, ptr %9, align 4, !tbaa !145
  br label %319

319:                                              ; preds = %310, %312
  %320 = phi i32 [ %316, %312 ], [ %227, %310 ]
  %321 = phi i32 [ %228, %312 ], [ -1, %310 ]
  br i1 %311, label %226, label %851, !llvm.loop !483

322:                                              ; preds = %226
  %323 = load i32, ptr %15, align 16, !tbaa !146
  store i32 %323, ptr %3, align 4, !tbaa !145
  %324 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !166
  store ptr %325, ptr %2, align 8, !tbaa !116
  store i32 0, ptr %15, align 16, !tbaa !146
  call void @x264_noise_reduction_update(ptr noundef %0) #15
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %327 = load ptr, ptr %326, align 16, !tbaa !116
  %328 = icmp eq ptr %327, %0
  br i1 %328, label %332, label %329

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %331 = getelementptr inbounds %struct.x264_t, ptr %327, i64 0, i32 57, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %330, ptr noundef nonnull align 8 dereferenceable(2984) %331, i64 2984, i1 false)
  br label %332

332:                                              ; preds = %322, %329
  %333 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %334 = load i32, ptr %333, align 16, !tbaa !326
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 %335
  %337 = load i32, ptr %336, align 4, !tbaa !145
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr %336, align 4, !tbaa !145
  %339 = sext i32 %227 to i64
  %340 = load i32, ptr %333, align 16, !tbaa !326
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !162
  %344 = add nsw i64 %343, %339
  store i64 %344, ptr %342, align 8, !tbaa !162
  %345 = load ptr, ptr %193, align 16, !tbaa !164
  %346 = getelementptr inbounds %struct.x264_frame, ptr %345, i64 0, i32 21
  %347 = load float, ptr %346, align 4, !tbaa !484
  %348 = fpext float %347 to double
  %349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 3, i64 %341
  %350 = load double, ptr %349, align 8, !tbaa !163
  %351 = fadd double %350, %348
  store double %351, ptr %349, align 8, !tbaa !163
  br label %352

352:                                              ; preds = %332, %352
  %353 = phi i64 [ 0, %332 ], [ %360, %352 ]
  %354 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !145
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 %341, i64 %353
  %358 = load i64, ptr %357, align 8, !tbaa !162
  %359 = add nsw i64 %358, %356
  store i64 %359, ptr %357, align 8, !tbaa !162
  %360 = add nuw nsw i64 %353, 1
  %361 = icmp eq i64 %360, 19
  br i1 %361, label %362, label %352, !llvm.loop !485

362:                                              ; preds = %352, %362
  %363 = phi i64 [ %370, %362 ], [ 0, %352 ]
  %364 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 9, i64 %363
  %365 = load i32, ptr %364, align 4, !tbaa !145
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 %341, i64 %363
  %368 = load i64, ptr %367, align 8, !tbaa !162
  %369 = add nsw i64 %368, %366
  store i64 %369, ptr %367, align 8, !tbaa !162
  %370 = add nuw nsw i64 %363, 1
  %371 = icmp eq i64 %370, 17
  br i1 %371, label %372, label %362, !llvm.loop !486

372:                                              ; preds = %362, %372
  %373 = phi i64 [ %380, %372 ], [ 0, %362 ]
  %374 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 7, i64 %373
  %375 = load i32, ptr %374, align 4, !tbaa !145
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 13, i64 %373
  %378 = load i64, ptr %377, align 8, !tbaa !162
  %379 = add nsw i64 %378, %376
  store i64 %379, ptr %377, align 8, !tbaa !162
  %380 = add nuw nsw i64 %373, 1
  %381 = icmp eq i64 %373, 0
  br i1 %381, label %372, label %382, !llvm.loop !487

382:                                              ; preds = %372, %382
  %383 = phi i64 [ %390, %382 ], [ 0, %372 ]
  %384 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 10, i64 %383
  %385 = load i32, ptr %384, align 4, !tbaa !145
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 %383
  %388 = load i64, ptr %387, align 8, !tbaa !162
  %389 = add nsw i64 %388, %386
  store i64 %389, ptr %387, align 8, !tbaa !162
  %390 = add nuw nsw i64 %383, 1
  %391 = icmp eq i64 %390, 6
  br i1 %391, label %392, label %382, !llvm.loop !488

392:                                              ; preds = %382, %396
  %393 = phi i64 [ %397, %396 ], [ 0, %382 ]
  br label %399

394:                                              ; preds = %396
  %395 = icmp eq i32 %340, 2
  br i1 %395, label %460, label %409

396:                                              ; preds = %399
  %397 = add nuw nsw i64 %393, 1
  %398 = icmp eq i64 %397, 4
  br i1 %398, label %394, label %392, !llvm.loop !489

399:                                              ; preds = %392, %399
  %400 = phi i64 [ 0, %392 ], [ %407, %399 ]
  %401 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 11, i64 %393, i64 %400
  %402 = load i32, ptr %401, align 4, !tbaa !145
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16, i64 %393, i64 %400
  %405 = load i64, ptr %404, align 8, !tbaa !162
  %406 = add nsw i64 %405, %403
  store i64 %406, ptr %404, align 8, !tbaa !162
  %407 = add nuw nsw i64 %400, 1
  %408 = icmp eq i64 %407, 13
  br i1 %408, label %396, label %399, !llvm.loop !490

409:                                              ; preds = %394, %411
  %410 = phi i64 [ %412, %411 ], [ 0, %394 ]
  br label %414

411:                                              ; preds = %414
  %412 = add nuw nsw i64 %410, 1
  %413 = icmp eq i64 %410, 0
  br i1 %413, label %409, label %424, !llvm.loop !491

414:                                              ; preds = %409, %414
  %415 = phi i64 [ 0, %409 ], [ %422, %414 ]
  %416 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 8, i64 %410, i64 %415
  %417 = load i32, ptr %416, align 4, !tbaa !145
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 14, i64 %341, i64 %410, i64 %415
  %420 = load i64, ptr %419, align 8, !tbaa !162
  %421 = add nsw i64 %420, %418
  store i64 %421, ptr %419, align 8, !tbaa !162
  %422 = add nuw nsw i64 %415, 1
  %423 = icmp eq i64 %422, 32
  br i1 %423, label %411, label %414, !llvm.loop !492

424:                                              ; preds = %411
  %425 = icmp eq i32 %340, 0
  br i1 %425, label %426, label %460

426:                                              ; preds = %424
  %427 = getelementptr inbounds %struct.x264_frame, ptr %345, i64 0, i32 10
  %428 = load i32, ptr %427, align 8, !tbaa !305
  %429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %430 = load ptr, ptr %429, align 16, !tbaa !116
  %431 = getelementptr inbounds %struct.x264_frame, ptr %430, i64 0, i32 10
  %432 = load i32, ptr %431, align 8, !tbaa !305
  %433 = xor i32 %432, -1
  %434 = add i32 %428, %433
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 4, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !145
  %438 = add nsw i32 %437, 1
  store i32 %438, ptr %436, align 4, !tbaa !145
  %439 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %440 = load i32, ptr %439, align 4, !tbaa !109
  %441 = icmp eq i32 %440, 2
  br i1 %441, label %442, label %460

442:                                              ; preds = %426
  %443 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %444 = load i32, ptr %443, align 8, !tbaa !119
  %445 = icmp sgt i32 %444, 0
  %446 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  br label %447

447:                                              ; preds = %442, %457
  %448 = phi i64 [ 0, %442 ], [ %458, %457 ]
  br i1 %445, label %449, label %457

449:                                              ; preds = %447
  %450 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %446, i64 0, i64 %448, i32 2
  %451 = load i32, ptr %450, align 16, !tbaa !342
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %457, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 19, i64 %448
  %455 = load i32, ptr %454, align 4, !tbaa !145
  %456 = add nsw i32 %455, 1
  store i32 %456, ptr %454, align 4, !tbaa !145
  br label %457

457:                                              ; preds = %449, %447, %453
  %458 = add nuw nsw i64 %448, 1
  %459 = icmp eq i64 %458, 3
  br i1 %459, label %460, label %447, !llvm.loop !493

460:                                              ; preds = %457, %394, %426, %424
  %461 = load i32, ptr %333, align 16, !tbaa !326
  %462 = icmp eq i32 %461, 1
  br i1 %462, label %463, label %500

463:                                              ; preds = %460
  %464 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  %465 = load i32, ptr %464, align 8, !tbaa !494
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18, i64 %466
  %468 = load i32, ptr %467, align 4, !tbaa !145
  %469 = add nsw i32 %468, 1
  store i32 %469, ptr %467, align 4, !tbaa !145
  %470 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  %471 = load i32, ptr %470, align 4, !tbaa !495
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %500, label %473

473:                                              ; preds = %463
  %474 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %475 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17
  %476 = load i32, ptr %475, align 8, !tbaa !145
  %477 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %478 = load i32, ptr %477, align 4, !tbaa !145
  %479 = add nsw i32 %478, %476
  %480 = load i32, ptr %474, align 16, !tbaa !89
  %481 = icmp sgt i32 %479, %480
  br i1 %481, label %482, label %490

482:                                              ; preds = %473, %482
  %483 = phi i64 [ %488, %482 ], [ 0, %473 ]
  %484 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 %483
  %485 = load i32, ptr %484, align 4, !tbaa !145
  %486 = mul nsw i32 %485, 9
  %487 = sdiv i32 %486, 10
  store i32 %487, ptr %484, align 4, !tbaa !145
  %488 = add nuw nsw i64 %483, 1
  %489 = icmp eq i64 %483, 0
  br i1 %489, label %482, label %490, !llvm.loop !496

490:                                              ; preds = %482, %473
  br label %491

491:                                              ; preds = %490, %491
  %492 = phi i64 [ %498, %491 ], [ 0, %490 ]
  %493 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 12, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !145
  %495 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 %492
  %496 = load i32, ptr %495, align 4, !tbaa !145
  %497 = add nsw i32 %496, %494
  store i32 %497, ptr %495, align 4, !tbaa !145
  %498 = add nuw nsw i64 %492, 1
  %499 = icmp eq i64 %492, 0
  br i1 %499, label %491, label %500, !llvm.loop !497

500:                                              ; preds = %491, %463, %460
  store i8 0, ptr %7, align 16, !tbaa !160
  %501 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %502 = load i32, ptr %501, align 4, !tbaa !183
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %649, label %504

504:                                              ; preds = %500
  %505 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13
  %506 = load i64, ptr %505, align 8, !tbaa !162
  %507 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 1
  %508 = load i64, ptr %507, align 8, !tbaa !162
  %509 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 2
  %510 = load i64, ptr %509, align 8, !tbaa !162
  %511 = add nsw i64 %508, %506
  %512 = add nsw i64 %511, %510
  %513 = load i32, ptr %333, align 16, !tbaa !326
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 %514
  %516 = load i64, ptr %515, align 8, !tbaa !162
  %517 = add nsw i64 %516, %512
  store i64 %517, ptr %515, align 8, !tbaa !162
  %518 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %519 = load i32, ptr %518, align 4, !tbaa !147
  %520 = mul nsw i32 %519, 3
  %521 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %522 = load i32, ptr %521, align 8, !tbaa !148
  %523 = mul nsw i32 %520, %522
  %524 = sdiv i32 %523, 2
  %525 = sitofp i64 %512 to double
  %526 = sitofp i32 %524 to double
  %527 = fmul double %526, 6.502500e+04
  %528 = fdiv double %525, %527
  %529 = fcmp ugt double %528, 1.000000e-10
  br i1 %529, label %530, label %534

530:                                              ; preds = %504
  %531 = call double @log10(double noundef %528) #15
  %532 = fmul double %531, -1.000000e+01
  %533 = fptrunc double %532 to float
  br label %534

534:                                              ; preds = %504, %530
  %535 = phi float [ %533, %530 ], [ 1.000000e+02, %504 ]
  %536 = fpext float %535 to double
  %537 = load i32, ptr %333, align 16, !tbaa !326
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 %538
  %540 = load double, ptr %539, align 8, !tbaa !163
  %541 = fadd double %540, %536
  store double %541, ptr %539, align 8, !tbaa !163
  %542 = load i32, ptr %518, align 4, !tbaa !147
  %543 = load i32, ptr %521, align 8, !tbaa !148
  %544 = mul nsw i32 %543, %542
  %545 = sitofp i64 %506 to double
  %546 = sitofp i32 %544 to double
  %547 = fmul double %546, 6.502500e+04
  %548 = fdiv double %545, %547
  %549 = fcmp ugt double %548, 1.000000e-10
  br i1 %549, label %550, label %554

550:                                              ; preds = %534
  %551 = call double @log10(double noundef %548) #15
  %552 = fmul double %551, -1.000000e+01
  %553 = fptrunc double %552 to float
  br label %554

554:                                              ; preds = %534, %550
  %555 = phi float [ %553, %550 ], [ 1.000000e+02, %534 ]
  %556 = fpext float %555 to double
  %557 = load i32, ptr %333, align 16, !tbaa !326
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 %558
  %560 = load double, ptr %559, align 8, !tbaa !163
  %561 = fadd double %560, %556
  store double %561, ptr %559, align 8, !tbaa !163
  %562 = load i32, ptr %518, align 4, !tbaa !147
  %563 = load i32, ptr %521, align 8, !tbaa !148
  %564 = mul nsw i32 %563, %562
  %565 = sdiv i32 %564, 4
  %566 = sitofp i64 %508 to double
  %567 = sitofp i32 %565 to double
  %568 = fmul double %567, 6.502500e+04
  %569 = fdiv double %566, %568
  %570 = fcmp ugt double %569, 1.000000e-10
  br i1 %570, label %571, label %575

571:                                              ; preds = %554
  %572 = call double @log10(double noundef %569) #15
  %573 = fmul double %572, -1.000000e+01
  %574 = fptrunc double %573 to float
  br label %575

575:                                              ; preds = %554, %571
  %576 = phi float [ %574, %571 ], [ 1.000000e+02, %554 ]
  %577 = fpext float %576 to double
  %578 = load i32, ptr %333, align 16, !tbaa !326
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 %579
  %581 = load double, ptr %580, align 8, !tbaa !163
  %582 = fadd double %581, %577
  store double %582, ptr %580, align 8, !tbaa !163
  %583 = load i32, ptr %518, align 4, !tbaa !147
  %584 = load i32, ptr %521, align 8, !tbaa !148
  %585 = mul nsw i32 %584, %583
  %586 = sdiv i32 %585, 4
  %587 = sitofp i64 %510 to double
  %588 = sitofp i32 %586 to double
  %589 = fmul double %588, 6.502500e+04
  %590 = fdiv double %587, %589
  %591 = fcmp ugt double %590, 1.000000e-10
  br i1 %591, label %592, label %596

592:                                              ; preds = %575
  %593 = call double @log10(double noundef %590) #15
  %594 = fmul double %593, -1.000000e+01
  %595 = fptrunc double %594 to float
  br label %596

596:                                              ; preds = %575, %592
  %597 = phi float [ %595, %592 ], [ 1.000000e+02, %575 ]
  %598 = fpext float %597 to double
  %599 = load i32, ptr %333, align 16, !tbaa !326
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 %600
  %602 = load double, ptr %601, align 8, !tbaa !163
  %603 = fadd double %602, %598
  store double %603, ptr %601, align 8, !tbaa !163
  %604 = load i32, ptr %518, align 4, !tbaa !147
  %605 = load i32, ptr %521, align 8, !tbaa !148
  %606 = mul nsw i32 %605, %604
  %607 = sitofp i32 %606 to double
  %608 = fmul double %607, 6.502500e+04
  %609 = fdiv double %545, %608
  %610 = fcmp ugt double %609, 1.000000e-10
  br i1 %610, label %611, label %615

611:                                              ; preds = %596
  %612 = call double @log10(double noundef %609) #15
  %613 = fmul double %612, -1.000000e+01
  %614 = fptrunc double %613 to float
  br label %615

615:                                              ; preds = %596, %611
  %616 = phi float [ %614, %611 ], [ 1.000000e+02, %596 ]
  %617 = fpext float %616 to double
  %618 = load i32, ptr %518, align 4, !tbaa !147
  %619 = load i32, ptr %521, align 8, !tbaa !148
  %620 = mul nsw i32 %619, %618
  %621 = sdiv i32 %620, 4
  %622 = sitofp i32 %621 to double
  %623 = fmul double %622, 6.502500e+04
  %624 = fdiv double %566, %623
  %625 = fcmp ugt double %624, 1.000000e-10
  br i1 %625, label %626, label %630

626:                                              ; preds = %615
  %627 = call double @log10(double noundef %624) #15
  %628 = fmul double %627, -1.000000e+01
  %629 = fptrunc double %628 to float
  br label %630

630:                                              ; preds = %615, %626
  %631 = phi float [ %629, %626 ], [ 1.000000e+02, %615 ]
  %632 = fpext float %631 to double
  %633 = load i32, ptr %518, align 4, !tbaa !147
  %634 = load i32, ptr %521, align 8, !tbaa !148
  %635 = mul nsw i32 %634, %633
  %636 = sdiv i32 %635, 4
  %637 = sitofp i32 %636 to double
  %638 = fmul double %637, 6.502500e+04
  %639 = fdiv double %587, %638
  %640 = fcmp ugt double %639, 1.000000e-10
  br i1 %640, label %641, label %646

641:                                              ; preds = %630
  %642 = call double @log10(double noundef %639) #15
  %643 = fmul double %642, -1.000000e+01
  %644 = fptrunc double %643 to float
  %645 = fpext float %644 to double
  br label %646

646:                                              ; preds = %630, %641
  %647 = phi double [ %645, %641 ], [ 1.000000e+02, %630 ]
  %648 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %7, i64 noundef 80, ptr noundef nonnull @.str.76, double noundef %617, double noundef %632, double noundef %647) #15
  br label %649

649:                                              ; preds = %646, %500
  %650 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %651 = load i32, ptr %650, align 16, !tbaa !184
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %676, label %653

653:                                              ; preds = %649
  %654 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 14
  %655 = load double, ptr %654, align 8, !tbaa !388
  %656 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %657 = load i32, ptr %656, align 4, !tbaa !147
  %658 = add nsw i32 %657, -6
  %659 = ashr i32 %658, 2
  %660 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %661 = load i32, ptr %660, align 8, !tbaa !148
  %662 = add nsw i32 %661, -6
  %663 = ashr i32 %662, 2
  %664 = mul nsw i32 %663, %659
  %665 = sitofp i32 %664 to double
  %666 = fdiv double %655, %665
  %667 = load i32, ptr %333, align 16, !tbaa !326
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10, i64 %668
  %670 = load double, ptr %669, align 8, !tbaa !163
  %671 = fadd double %670, %666
  store double %671, ptr %669, align 8, !tbaa !163
  %672 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #16
  %673 = getelementptr inbounds i8, ptr %7, i64 %672
  %674 = sub i64 80, %672
  %675 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %673, i64 noundef %674, ptr noundef nonnull @.str.77, double noundef %666) #15
  br label %676

676:                                              ; preds = %653, %649
  %677 = getelementptr inbounds [80 x i8], ptr %7, i64 0, i64 79
  store i8 0, ptr %677, align 1, !tbaa !160
  %678 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %679 = load i32, ptr %678, align 4, !tbaa !68
  %680 = load ptr, ptr %193, align 16, !tbaa !164
  %681 = getelementptr inbounds %struct.x264_frame, ptr %680, i64 0, i32 21
  %682 = load float, ptr %681, align 4, !tbaa !484
  %683 = fpext float %682 to double
  %684 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 14
  %685 = load i32, ptr %684, align 4, !tbaa !350
  %686 = load i32, ptr %333, align 16, !tbaa !326
  %687 = icmp eq i32 %686, 2
  %688 = icmp eq i32 %686, 0
  %689 = select i1 %688, i32 80, i32 66
  %690 = select i1 %687, i32 73, i32 %689
  %691 = load i32, ptr %680, align 16, !tbaa !300
  %692 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 4
  %693 = load i32, ptr %692, align 8, !tbaa !498
  %694 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 5
  %695 = load i32, ptr %694, align 4, !tbaa !499
  %696 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 6
  %697 = load i32, ptr %696, align 8, !tbaa !500
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.78, i32 noundef %679, double noundef %683, i32 noundef %685, i32 noundef %690, i32 noundef %691, i32 noundef %693, i32 noundef %695, i32 noundef %697, i32 noundef %227, ptr noundef nonnull %7) #15
  %698 = load ptr, ptr %326, align 16, !tbaa !116
  %699 = icmp eq ptr %698, %0
  br i1 %699, label %703, label %700

700:                                              ; preds = %676
  %701 = getelementptr inbounds %struct.x264_t, ptr %698, i64 0, i32 57, i32 1
  %702 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %701, ptr noundef nonnull align 8 dereferenceable(2984) %702, i64 2984, i1 false)
  br label %703

703:                                              ; preds = %676, %700
  %704 = icmp eq ptr %1, %0
  br i1 %704, label %708, label %705

705:                                              ; preds = %703
  %706 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 57, i32 1
  %707 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %706, ptr noundef nonnull align 8 dereferenceable(2984) %707, i64 2984, i1 false)
  br label %708

708:                                              ; preds = %703, %705
  %709 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %710 = load i32, ptr %709, align 8, !tbaa !119
  %711 = icmp sgt i32 %710, 0
  br i1 %711, label %715, label %712

712:                                              ; preds = %725, %708
  %713 = load i32, ptr @tga_dump_rate, align 4, !tbaa !145
  %714 = icmp sgt i32 %713, 0
  br i1 %714, label %730, label %790

715:                                              ; preds = %708, %725
  %716 = phi i64 [ %726, %725 ], [ 0, %708 ]
  %717 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %716
  %718 = load ptr, ptr %717, align 8, !tbaa !116
  %719 = icmp eq ptr %718, null
  br i1 %719, label %725, label %720

720:                                              ; preds = %715
  %721 = getelementptr inbounds %struct.x264_frame, ptr %718, i64 0, i32 39
  %722 = load i32, ptr %721, align 16, !tbaa !289
  %723 = icmp eq i32 %722, 0
  br i1 %723, label %725, label %724

724:                                              ; preds = %720
  call void @x264_frame_push_blank_unused(ptr noundef %0, ptr noundef nonnull %718) #15
  store ptr null, ptr %717, align 8, !tbaa !116
  br label %725

725:                                              ; preds = %715, %720, %724
  %726 = add nuw nsw i64 %716, 1
  %727 = load i32, ptr %709, align 8, !tbaa !119
  %728 = sext i32 %727 to i64
  %729 = icmp slt i64 %726, %728
  br i1 %729, label %715, label %712, !llvm.loop !501

730:                                              ; preds = %712
  %731 = load ptr, ptr %193, align 16, !tbaa !164
  %732 = getelementptr inbounds %struct.x264_frame, ptr %731, i64 0, i32 10
  %733 = load i32, ptr %732, align 8, !tbaa !305
  %734 = srem i32 %733, %713
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %741, label %736

736:                                              ; preds = %730
  %737 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9
  %738 = load i32, ptr %737, align 4, !tbaa !502
  %739 = add nsw i32 %738, -1
  %740 = icmp eq i32 %733, %739
  br i1 %740, label %741, label %790

741:                                              ; preds = %736, %730
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %6) #15
  %742 = load i32, ptr @seek_val, align 4, !tbaa !145
  %743 = add nsw i32 %742, %733
  %744 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef %743) #15
  %745 = call noalias ptr @fopen(ptr noundef nonnull %6, ptr noundef nonnull @.str.80)
  %746 = icmp eq ptr %745, null
  br i1 %746, label %789, label %747

747:                                              ; preds = %741
  %748 = load ptr, ptr %193, align 16, !tbaa !164
  %749 = getelementptr inbounds %struct.x264_frame, ptr %748, i64 0, i32 23
  %750 = load i32, ptr %749, align 4, !tbaa !479
  %751 = icmp sgt i32 %750, 0
  br i1 %751, label %752, label %762

752:                                              ; preds = %747
  %753 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %754 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  br label %755

755:                                              ; preds = %752, %764
  %756 = phi i64 [ 0, %752 ], [ %765, %764 ]
  %757 = icmp ne i64 %756, 0
  %758 = zext i1 %757 to i32
  %759 = load i32, ptr %753, align 8, !tbaa !148
  %760 = ashr i32 %759, %758
  %761 = icmp sgt i32 %760, 0
  br i1 %761, label %771, label %764

762:                                              ; preds = %764, %747
  %763 = call i32 @fclose(ptr noundef nonnull %745)
  br label %789

764:                                              ; preds = %771, %755
  %765 = add nuw nsw i64 %756, 1
  %766 = load ptr, ptr %193, align 16, !tbaa !164
  %767 = getelementptr inbounds %struct.x264_frame, ptr %766, i64 0, i32 23
  %768 = load i32, ptr %767, align 4, !tbaa !479
  %769 = sext i32 %768 to i64
  %770 = icmp slt i64 %765, %769
  br i1 %770, label %755, label %762, !llvm.loop !503

771:                                              ; preds = %755, %771
  %772 = phi i32 [ %785, %771 ], [ 0, %755 ]
  %773 = load ptr, ptr %193, align 16, !tbaa !164
  %774 = getelementptr inbounds %struct.x264_frame, ptr %773, i64 0, i32 30, i64 %756
  %775 = load ptr, ptr %774, align 8, !tbaa !116
  %776 = getelementptr inbounds %struct.x264_frame, ptr %773, i64 0, i32 24, i64 %756
  %777 = load i32, ptr %776, align 4, !tbaa !145
  %778 = mul nsw i32 %777, %772
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds i8, ptr %775, i64 %779
  %781 = load i32, ptr %754, align 4, !tbaa !147
  %782 = ashr i32 %781, %758
  %783 = sext i32 %782 to i64
  %784 = call i64 @fwrite(ptr noundef %780, i64 noundef 1, i64 noundef %783, ptr noundef nonnull %745)
  %785 = add nuw nsw i32 %772, 1
  %786 = load i32, ptr %753, align 8, !tbaa !148
  %787 = ashr i32 %786, %758
  %788 = icmp slt i32 %785, %787
  br i1 %788, label %771, label %764, !llvm.loop !504

789:                                              ; preds = %741, %762
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %6) #15
  br label %790

790:                                              ; preds = %736, %789, %712
  %791 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  %792 = load ptr, ptr %791, align 8, !tbaa !172
  %793 = icmp eq ptr %792, null
  br i1 %793, label %851, label %794

794:                                              ; preds = %790
  %795 = call noalias ptr @fopen(ptr noundef nonnull %792, ptr noundef nonnull @.str.81)
  %796 = icmp eq ptr %795, null
  br i1 %796, label %851, label %797

797:                                              ; preds = %794
  %798 = load ptr, ptr %193, align 16, !tbaa !164
  %799 = getelementptr inbounds %struct.x264_frame, ptr %798, i64 0, i32 10
  %800 = load i32, ptr %799, align 8, !tbaa !305
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %803 = load i32, ptr %802, align 8, !tbaa !148
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %806 = load i32, ptr %805, align 4, !tbaa !147
  %807 = sext i32 %806 to i64
  %808 = mul nsw i64 %801, 3
  %809 = mul i64 %808, %804
  %810 = mul i64 %809, %807
  %811 = lshr i64 %810, 1
  %812 = call i32 @fseek(ptr noundef nonnull %795, i64 noundef %811, i32 noundef 0)
  %813 = load ptr, ptr %193, align 16, !tbaa !164
  %814 = getelementptr inbounds %struct.x264_frame, ptr %813, i64 0, i32 23
  %815 = load i32, ptr %814, align 4, !tbaa !479
  %816 = icmp sgt i32 %815, 0
  br i1 %816, label %817, label %824

817:                                              ; preds = %797, %826
  %818 = phi i64 [ %827, %826 ], [ 0, %797 ]
  %819 = icmp ne i64 %818, 0
  %820 = zext i1 %819 to i32
  %821 = load i32, ptr %802, align 8, !tbaa !148
  %822 = ashr i32 %821, %820
  %823 = icmp sgt i32 %822, 0
  br i1 %823, label %833, label %826

824:                                              ; preds = %826, %797
  %825 = call i32 @fclose(ptr noundef nonnull %795)
  br label %851

826:                                              ; preds = %833, %817
  %827 = add nuw nsw i64 %818, 1
  %828 = load ptr, ptr %193, align 16, !tbaa !164
  %829 = getelementptr inbounds %struct.x264_frame, ptr %828, i64 0, i32 23
  %830 = load i32, ptr %829, align 4, !tbaa !479
  %831 = sext i32 %830 to i64
  %832 = icmp slt i64 %827, %831
  br i1 %832, label %817, label %824, !llvm.loop !505

833:                                              ; preds = %817, %833
  %834 = phi i32 [ %847, %833 ], [ 0, %817 ]
  %835 = load ptr, ptr %193, align 16, !tbaa !164
  %836 = getelementptr inbounds %struct.x264_frame, ptr %835, i64 0, i32 30, i64 %818
  %837 = load ptr, ptr %836, align 8, !tbaa !116
  %838 = getelementptr inbounds %struct.x264_frame, ptr %835, i64 0, i32 24, i64 %818
  %839 = load i32, ptr %838, align 4, !tbaa !145
  %840 = mul nsw i32 %839, %834
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds i8, ptr %837, i64 %841
  %843 = load i32, ptr %805, align 4, !tbaa !147
  %844 = ashr i32 %843, %820
  %845 = sext i32 %844 to i64
  %846 = call i64 @fwrite(ptr noundef %842, i64 noundef 1, i64 noundef %845, ptr noundef nonnull %795)
  %847 = add nuw nsw i32 %834, 1
  %848 = load i32, ptr %802, align 8, !tbaa !148
  %849 = ashr i32 %848, %820
  %850 = icmp slt i32 %847, %849
  br i1 %850, label %833, label %826, !llvm.loop !506

851:                                              ; preds = %319, %824, %794, %790, %198
  %852 = phi i32 [ -1, %198 ], [ %227, %790 ], [ %227, %794 ], [ %227, %824 ], [ %321, %319 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #15
  br label %853

853:                                              ; preds = %88, %851, %18
  %854 = phi i32 [ %852, %851 ], [ 0, %18 ], [ -1, %88 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #15
  ret i32 %854
}

declare ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

declare void @x264_sei_recovery_point_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_sei_pic_timing_write(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @x264_ratecontrol_qp(ptr noundef) local_unnamed_addr #2

declare i32 @x264_reference_build_list_optimal(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_bipred_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @x264_encoder_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x [7 x i64]], align 16
  %3 = alloca [200 x i8], align 16
  %4 = alloca [3 x i64], align 16
  %5 = alloca [4 x [9 x i64]], align 16
  %6 = alloca [4 x i64], align 16
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !147
  %9 = mul nsw i32 %8, 3
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !148
  %12 = mul nsw i32 %9, %11
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #15
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 3
  %18 = load i64, ptr %17, align 8, !tbaa !162
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 3
  %22 = load i64, ptr %21, align 8, !tbaa !162
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 3
  %26 = load i64, ptr %25, align 8, !tbaa !162
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %20, %1
  %29 = phi i1 [ true, %20 ], [ true, %1 ], [ %27, %24 ]
  tail call void @x264_lookahead_delete(ptr noundef %0) #15
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !154
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %67

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %35 = load i32, ptr %34, align 4, !tbaa !96
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %67

37:                                               ; preds = %33
  %38 = load i32, ptr %34, align 4, !tbaa !96
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %62, %37
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %42 = load i32, ptr %41, align 16, !tbaa !238
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %43
  %45 = load ptr, ptr %44, align 8, !tbaa !116
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %0, ptr noundef %45, ptr noundef %0) #15
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %45, ptr noundef %45, ptr noundef %0) #15
  %46 = getelementptr inbounds %struct.x264_t, ptr %45, i64 0, i32 10
  %47 = load i32, ptr %46, align 4, !tbaa !68
  %48 = add nsw i32 %47, 1
  %49 = load i32, ptr %34, align 4, !tbaa !96
  %50 = sub i32 %48, %49
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  store i32 %50, ptr %51, align 4, !tbaa !68
  br label %67

52:                                               ; preds = %37, %62
  %53 = phi i64 [ %63, %62 ], [ 0, %37 ]
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !116
  %56 = getelementptr inbounds %struct.x264_t, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !378
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.x264_t, ptr %55, i64 0, i32 44
  %61 = load ptr, ptr %60, align 8, !tbaa !290
  tail call void @x264_frame_delete(ptr noundef %61) #15
  br label %62

62:                                               ; preds = %52, %59
  %63 = add nuw nsw i64 %53, 1
  %64 = load i32, ptr %34, align 4, !tbaa !96
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br i1 %66, label %52, label %40, !llvm.loop !507

67:                                               ; preds = %33, %40, %28
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %69 = load i32, ptr %68, align 4, !tbaa !68
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !68
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  br label %77

72:                                               ; preds = %128
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %74 = load i32, ptr %73, align 4, !tbaa !73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %131

76:                                               ; preds = %156, %131, %72
  br label %175

77:                                               ; preds = %67, %128
  %78 = phi i64 [ 0, %67 ], [ %129, %128 ]
  %79 = getelementptr inbounds [5 x i8], ptr @x264_encoder_close.slice_order, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !160
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !145
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %128

85:                                               ; preds = %77
  %86 = load i32, ptr %71, align 4, !tbaa !183
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds [5 x ptr], ptr @x264_encoder_close.slice_name, i64 0, i64 %81
  %89 = load ptr, ptr %88, align 8, !tbaa !116
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 3, i64 %81
  %91 = load double, ptr %90, align 8, !tbaa !163
  %92 = sitofp i32 %83 to double
  %93 = fdiv double %91, %92
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 %81
  %95 = load i64, ptr %94, align 8, !tbaa !162
  %96 = sitofp i64 %95 to double
  %97 = fdiv double %96, %92
  br i1 %87, label %127, label %98

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 %81
  %100 = load double, ptr %99, align 8, !tbaa !163
  %101 = fdiv double %100, %92
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 %81
  %103 = load double, ptr %102, align 8, !tbaa !163
  %104 = fdiv double %103, %92
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 %81
  %106 = load double, ptr %105, align 8, !tbaa !163
  %107 = fdiv double %106, %92
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 %81
  %109 = load double, ptr %108, align 8, !tbaa !163
  %110 = fdiv double %109, %92
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 %81
  %112 = load i64, ptr %111, align 8, !tbaa !162
  %113 = zext nneg i32 %83 to i64
  %114 = mul nsw i64 %113, %14
  %115 = sitofp i64 %112 to double
  %116 = sitofp i64 %114 to double
  %117 = fmul double %116, 6.502500e+04
  %118 = fdiv double %115, %117
  %119 = fcmp ugt double %118, 1.000000e-10
  br i1 %119, label %120, label %124

120:                                              ; preds = %98
  %121 = tail call double @log10(double noundef %118) #15
  %122 = fmul double %121, -1.000000e+01
  %123 = fptrunc double %122 to float
  br label %124

124:                                              ; preds = %98, %120
  %125 = phi float [ %123, %120 ], [ 1.000000e+02, %98 ]
  %126 = fpext float %125 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.29, ptr noundef %89, i32 noundef %83, double noundef %93, double noundef %97, double noundef %101, double noundef %104, double noundef %107, double noundef %110, double noundef %126) #15
  br label %128

127:                                              ; preds = %85
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.30, ptr noundef %89, i32 noundef %83, double noundef %93, double noundef %97) #15
  br label %128

128:                                              ; preds = %124, %127, %77
  %129 = add nuw nsw i64 %78, 1
  %130 = icmp eq i64 %129, 5
  br i1 %130, label %72, label %77, !llvm.loop !508

131:                                              ; preds = %72
  %132 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !145
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %76, label %135

135:                                              ; preds = %131
  %136 = icmp slt i32 %74, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %135
  %138 = add nuw i32 %74, 1
  %139 = zext i32 %138 to i64
  br label %146

140:                                              ; preds = %146, %135
  %141 = phi i32 [ 0, %135 ], [ %154, %146 ]
  %142 = load i32, ptr %73, align 4, !tbaa !73
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %140
  %145 = sitofp i32 %141 to double
  br label %157

146:                                              ; preds = %137, %146
  %147 = phi i64 [ 0, %137 ], [ %149, %146 ]
  %148 = phi i32 [ 0, %137 ], [ %154, %146 ]
  %149 = add nuw nsw i64 %147, 1
  %150 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 4, i64 %147
  %151 = load i32, ptr %150, align 4, !tbaa !145
  %152 = trunc i64 %149 to i32
  %153 = mul nsw i32 %151, %152
  %154 = add nsw i32 %153, %148
  %155 = icmp eq i64 %149, %139
  br i1 %155, label %140, label %146, !llvm.loop !509

156:                                              ; preds = %157, %140
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.32, ptr noundef nonnull %3) #15
  br label %76

157:                                              ; preds = %144, %157
  %158 = phi i64 [ 0, %144 ], [ %160, %157 ]
  %159 = phi ptr [ %3, %144 ], [ %171, %157 ]
  %160 = add nuw nsw i64 %158, 1
  %161 = trunc i64 %160 to i32
  %162 = sitofp i32 %161 to double
  %163 = fmul double %162, 1.000000e+02
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 4, i64 %158
  %165 = load i32, ptr %164, align 4, !tbaa !145
  %166 = sitofp i32 %165 to double
  %167 = fmul double %163, %166
  %168 = fdiv double %167, %145
  %169 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %159, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %168) #15
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, ptr %159, i64 %170
  %172 = load i32, ptr %73, align 4, !tbaa !73
  %173 = sext i32 %172 to i64
  %174 = icmp slt i64 %158, %173
  br i1 %174, label %157, label %156, !llvm.loop !510

175:                                              ; preds = %76, %182
  %176 = phi i64 [ %183, %182 ], [ 0, %76 ]
  br label %185

177:                                              ; preds = %182
  %178 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 2
  %180 = load i32, ptr %179, align 8, !tbaa !145
  %181 = icmp sgt i32 %180, 0
  br i1 %181, label %200, label %228

182:                                              ; preds = %197
  %183 = add nuw nsw i64 %176, 1
  %184 = icmp eq i64 %176, 0
  br i1 %184, label %175, label %177, !llvm.loop !511

185:                                              ; preds = %175, %197
  %186 = phi i64 [ 0, %175 ], [ %198, %197 ]
  %187 = icmp eq i64 %186, 12
  br i1 %187, label %197, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 %176, i64 %186
  %190 = load i64, ptr %189, align 8, !tbaa !162
  %191 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_pixel_table, i64 0, i64 %186
  %192 = load i8, ptr %191, align 1, !tbaa !160
  %193 = zext i8 %192 to i64
  %194 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 %176, i64 %193
  %195 = load i64, ptr %194, align 8, !tbaa !162
  %196 = add nsw i64 %195, %190
  store i64 %196, ptr %194, align 8, !tbaa !162
  br label %197

197:                                              ; preds = %185, %188
  %198 = add nuw nsw i64 %186, 1
  %199 = icmp eq i64 %198, 17
  br i1 %199, label %182, label %185, !llvm.loop !512

200:                                              ; preds = %177
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %202 = load i32, ptr %201, align 16, !tbaa !89
  %203 = mul nsw i32 %202, %180
  %204 = sitofp i32 %203 to double
  %205 = fdiv double %204, 1.000000e+02
  %206 = select i1 %29, ptr @.str.83, ptr @.str.84
  %207 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 2
  %208 = load i64, ptr %207, align 8, !tbaa !162
  %209 = sitofp i64 %208 to double
  %210 = fdiv double %209, %205
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 1
  %212 = load i64, ptr %211, align 8, !tbaa !162
  %213 = sitofp i64 %212 to double
  %214 = fdiv double %213, %205
  %215 = load i64, ptr %16, align 8, !tbaa !162
  %216 = sitofp i64 %215 to double
  %217 = fdiv double %216, %205
  %218 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %206, double noundef %210, double noundef %214, double noundef %217) #15
  br i1 %29, label %219, label %227

219:                                              ; preds = %200
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds i8, ptr %3, i64 %220
  %222 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 3
  %223 = load i64, ptr %222, align 8, !tbaa !162
  %224 = sitofp i64 %223 to double
  %225 = fdiv double %224, %205
  %226 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %221, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %225) #15
  br label %227

227:                                              ; preds = %200, %219
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.33, ptr noundef nonnull %3) #15
  br label %228

228:                                              ; preds = %227, %177
  %229 = load i32, ptr %178, align 8, !tbaa !145
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %289

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %233 = load i32, ptr %232, align 16, !tbaa !89
  %234 = mul nsw i32 %233, %229
  %235 = sitofp i32 %234 to double
  %236 = fdiv double %235, 1.000000e+02
  %237 = select i1 %29, ptr @.str.83, ptr @.str.84
  %238 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 2
  %239 = load i64, ptr %238, align 8, !tbaa !162
  %240 = sitofp i64 %239 to double
  %241 = fdiv double %240, %236
  %242 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 1
  %243 = load i64, ptr %242, align 8, !tbaa !162
  %244 = sitofp i64 %243 to double
  %245 = fdiv double %244, %236
  %246 = load i64, ptr %15, align 8, !tbaa !162
  %247 = sitofp i64 %246 to double
  %248 = fdiv double %247, %236
  %249 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %237, double noundef %241, double noundef %245, double noundef %248) #15
  br i1 %29, label %250, label %258

250:                                              ; preds = %231
  %251 = sext i32 %249 to i64
  %252 = getelementptr inbounds i8, ptr %3, i64 %251
  %253 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 3
  %254 = load i64, ptr %253, align 8, !tbaa !162
  %255 = sitofp i64 %254 to double
  %256 = fdiv double %255, %236
  %257 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %252, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %256) #15
  br label %258

258:                                              ; preds = %231, %250
  %259 = load i64, ptr %2, align 16, !tbaa !162
  %260 = sitofp i64 %259 to double
  %261 = fmul double %236, 4.000000e+00
  %262 = fdiv double %260, %261
  %263 = getelementptr inbounds i64, ptr %2, i64 1
  %264 = load i64, ptr %263, align 8, !tbaa !162
  %265 = getelementptr inbounds i64, ptr %2, i64 2
  %266 = load i64, ptr %265, align 16, !tbaa !162
  %267 = add nsw i64 %266, %264
  %268 = sitofp i64 %267 to double
  %269 = fdiv double %268, %261
  %270 = getelementptr inbounds i64, ptr %2, i64 3
  %271 = load i64, ptr %270, align 8, !tbaa !162
  %272 = sitofp i64 %271 to double
  %273 = fdiv double %272, %261
  %274 = getelementptr inbounds i64, ptr %2, i64 4
  %275 = load i64, ptr %274, align 16, !tbaa !162
  %276 = getelementptr inbounds i64, ptr %2, i64 5
  %277 = load i64, ptr %276, align 8, !tbaa !162
  %278 = add nsw i64 %277, %275
  %279 = sitofp i64 %278 to double
  %280 = fdiv double %279, %261
  %281 = getelementptr inbounds i64, ptr %2, i64 6
  %282 = load i64, ptr %281, align 16, !tbaa !162
  %283 = sitofp i64 %282 to double
  %284 = fdiv double %283, %261
  %285 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 6
  %286 = load i64, ptr %285, align 8, !tbaa !162
  %287 = sitofp i64 %286 to double
  %288 = fdiv double %287, %236
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.34, ptr noundef nonnull %3, double noundef %262, double noundef %269, double noundef %273, double noundef %280, double noundef %284, double noundef %288) #15
  br label %289

289:                                              ; preds = %258, %228
  %290 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 1
  %291 = load i32, ptr %290, align 4, !tbaa !145
  %292 = icmp sgt i32 %291, 0
  br i1 %292, label %293, label %405

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %296 = load i32, ptr %295, align 16, !tbaa !89
  %297 = mul nsw i32 %296, %291
  %298 = sitofp i32 %297 to double
  %299 = fdiv double %298, 1.000000e+02
  %300 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %301 = select i1 %29, ptr @.str.83, ptr @.str.84
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 2
  %303 = load i64, ptr %302, align 8, !tbaa !162
  %304 = sitofp i64 %303 to double
  %305 = fdiv double %304, %299
  %306 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 1
  %307 = load i64, ptr %306, align 8, !tbaa !162
  %308 = sitofp i64 %307 to double
  %309 = fdiv double %308, %299
  %310 = load i64, ptr %294, align 8, !tbaa !162
  %311 = sitofp i64 %310 to double
  %312 = fdiv double %311, %299
  %313 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %301, double noundef %305, double noundef %309, double noundef %312) #15
  br i1 %29, label %314, label %322

314:                                              ; preds = %293
  %315 = sext i32 %313 to i64
  %316 = getelementptr inbounds i8, ptr %3, i64 %315
  %317 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 3
  %318 = load i64, ptr %317, align 8, !tbaa !162
  %319 = sitofp i64 %318 to double
  %320 = fdiv double %319, %299
  %321 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %316, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %320) #15
  br label %322

322:                                              ; preds = %293, %314
  br label %323

323:                                              ; preds = %322, %380
  %324 = phi i64 [ %381, %380 ], [ 0, %322 ]
  %325 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %324
  %326 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 %324
  br label %383

327:                                              ; preds = %380
  %328 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 3
  %329 = load i64, ptr %328, align 8, !tbaa !162
  %330 = load i64, ptr %4, align 16, !tbaa !162
  %331 = add nsw i64 %330, %329
  store i64 %331, ptr %4, align 16, !tbaa !162
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 7
  %333 = load i64, ptr %332, align 8, !tbaa !162
  %334 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 1
  %335 = load i64, ptr %334, align 8, !tbaa !162
  %336 = add nsw i64 %335, %333
  store i64 %336, ptr %334, align 8, !tbaa !162
  %337 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 11
  %338 = load i64, ptr %337, align 8, !tbaa !162
  %339 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 2
  %340 = load i64, ptr %339, align 16, !tbaa !162
  %341 = add nsw i64 %340, %338
  store i64 %341, ptr %339, align 16, !tbaa !162
  %342 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 12
  %343 = load i64, ptr %342, align 8, !tbaa !162
  %344 = add nsw i64 %343, 2
  %345 = sdiv i64 %344, 4
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 7
  %347 = load i64, ptr %346, align 8, !tbaa !162
  %348 = add nsw i64 %345, %347
  store i64 %348, ptr %346, align 8, !tbaa !162
  %349 = add nsw i64 %336, %331
  %350 = add nsw i64 %349, %341
  %351 = sitofp i64 %350 to double
  %352 = fdiv double %351, 1.000000e+02
  %353 = load i64, ptr %300, align 8, !tbaa !162
  %354 = sitofp i64 %353 to double
  %355 = fmul double %299, 4.000000e+00
  %356 = fdiv double %354, %355
  %357 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1, i64 1
  %358 = load i64, ptr %357, align 16, !tbaa !162
  %359 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1, i64 2
  %360 = load i64, ptr %359, align 8, !tbaa !162
  %361 = add nsw i64 %360, %358
  %362 = sitofp i64 %361 to double
  %363 = fdiv double %362, %355
  %364 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1, i64 3
  %365 = load i64, ptr %364, align 16, !tbaa !162
  %366 = sitofp i64 %365 to double
  %367 = fdiv double %366, %355
  %368 = sitofp i64 %348 to double
  %369 = fdiv double %368, %299
  %370 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 18
  %371 = load i64, ptr %370, align 8, !tbaa !162
  %372 = sitofp i64 %371 to double
  %373 = fdiv double %372, %299
  %374 = sitofp i64 %331 to double
  %375 = fdiv double %374, %352
  %376 = sitofp i64 %336 to double
  %377 = fdiv double %376, %352
  %378 = sitofp i64 %341 to double
  %379 = fdiv double %378, %352
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.35, ptr noundef nonnull %3, double noundef %356, double noundef %363, double noundef %367, double noundef %369, double noundef %373, double noundef %375, double noundef %377, double noundef %379) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  br label %405

380:                                              ; preds = %402
  %381 = add nuw nsw i64 %324, 1
  %382 = icmp eq i64 %381, 17
  br i1 %382, label %327, label %323, !llvm.loop !513

383:                                              ; preds = %323, %402
  %384 = phi i64 [ 0, %323 ], [ %403, %402 ]
  %385 = getelementptr inbounds [2 x i8], ptr %325, i64 0, i64 %384
  %386 = load i8, ptr %385, align 1, !tbaa !160
  %387 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %324, i64 1, i64 %384
  %388 = load i8, ptr %387, align 1, !tbaa !160
  %389 = icmp ne i8 %386, 0
  %390 = icmp ne i8 %388, 0
  %391 = select i1 %389, i1 true, i1 %390
  br i1 %391, label %392, label %402

392:                                              ; preds = %383
  %393 = zext i8 %388 to i64
  %394 = zext i8 %386 to i64
  %395 = load i64, ptr %326, align 8, !tbaa !162
  %396 = shl nsw i64 %395, 1
  %397 = add nuw nsw i64 %394, 1
  %398 = mul nuw nsw i64 %397, %393
  %399 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 %398
  %400 = load i64, ptr %399, align 8, !tbaa !162
  %401 = add nsw i64 %400, %396
  store i64 %401, ptr %399, align 8, !tbaa !162
  br label %402

402:                                              ; preds = %383, %392
  %403 = add nuw nsw i64 %384, 1
  %404 = icmp eq i64 %384, 0
  br i1 %404, label %383, label %380, !llvm.loop !514

405:                                              ; preds = %327, %289
  call void @x264_ratecontrol_summary(ptr noundef %0) #15
  %406 = load i32, ptr %179, align 8, !tbaa !145
  %407 = load i32, ptr %178, align 8, !tbaa !145
  %408 = add nsw i32 %407, %406
  %409 = load i32, ptr %290, align 4, !tbaa !145
  %410 = add nsw i32 %408, %409
  %411 = icmp sgt i32 %410, 0
  br i1 %411, label %412, label %893

412:                                              ; preds = %405
  %413 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 1
  %414 = load i64, ptr %413, align 8, !tbaa !162
  %415 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 1
  %416 = load i64, ptr %415, align 8, !tbaa !162
  %417 = add nsw i64 %416, %414
  %418 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1
  %419 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 1
  %420 = load i64, ptr %419, align 8, !tbaa !162
  %421 = add nsw i64 %417, %420
  %422 = load i64, ptr %16, align 8, !tbaa !162
  %423 = load i64, ptr %15, align 8, !tbaa !162
  %424 = load i64, ptr %418, align 8, !tbaa !162
  %425 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 2
  %426 = load i64, ptr %425, align 8, !tbaa !162
  %427 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 2
  %428 = load i64, ptr %427, align 8, !tbaa !162
  %429 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 2
  %430 = load i64, ptr %429, align 8, !tbaa !162
  %431 = add i64 %421, %422
  %432 = add i64 %431, %423
  %433 = add i64 %432, %424
  %434 = add i64 %433, %426
  %435 = add i64 %434, %428
  %436 = add i64 %435, %430
  %437 = load i64, ptr %17, align 8, !tbaa !162
  %438 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 3
  %439 = load i64, ptr %438, align 8, !tbaa !162
  %440 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 3
  %441 = load i64, ptr %440, align 8, !tbaa !162
  %442 = add i64 %436, %437
  %443 = add i64 %442, %439
  %444 = add i64 %443, %441
  %445 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %446 = load i32, ptr %445, align 16, !tbaa !89
  %447 = mul nsw i32 %446, %410
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %450 = load i32, ptr %449, align 8, !tbaa !98
  %451 = icmp eq i32 %450, 0
  %452 = icmp eq i32 %410, 1
  %453 = or i1 %452, %451
  br i1 %453, label %454, label %474

454:                                              ; preds = %412
  %455 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %456 = load i32, ptr %455, align 4, !tbaa !200
  %457 = uitofp i32 %456 to float
  %458 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %459 = load i32, ptr %458, align 16, !tbaa !201
  %460 = uitofp i32 %459 to float
  %461 = fdiv float %457, %460
  %462 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2
  %463 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 2
  %464 = load i64, ptr %463, align 8, !tbaa !162
  %465 = load i64, ptr %462, align 8, !tbaa !162
  %466 = add nsw i64 %465, %464
  %467 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 1
  %468 = load i64, ptr %467, align 8, !tbaa !162
  %469 = add nsw i64 %466, %468
  %470 = sitofp i64 %469 to float
  %471 = fmul float %461, %470
  %472 = sitofp i32 %410 to float
  %473 = fdiv float %471, %472
  br label %500

474:                                              ; preds = %412
  %475 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 14
  %476 = load i64, ptr %475, align 16, !tbaa !308
  %477 = shl nsw i64 %476, 1
  %478 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 15
  %479 = load i64, ptr %478, align 8, !tbaa !309
  %480 = sub nsw i64 %477, %479
  %481 = sitofp i64 %480 to float
  %482 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %483 = load i32, ptr %482, align 4, !tbaa !76
  %484 = uitofp i32 %483 to float
  %485 = fmul float %481, %484
  %486 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %487 = load i32, ptr %486, align 8, !tbaa !71
  %488 = uitofp i32 %487 to float
  %489 = fdiv float %485, %488
  %490 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2
  %491 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 2
  %492 = load i64, ptr %491, align 8, !tbaa !162
  %493 = load i64, ptr %490, align 8, !tbaa !162
  %494 = add nsw i64 %493, %492
  %495 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 1
  %496 = load i64, ptr %495, align 8, !tbaa !162
  %497 = add nsw i64 %494, %496
  %498 = sitofp i64 %497 to float
  %499 = fdiv float %498, %489
  br label %500

500:                                              ; preds = %474, %454
  %501 = phi float [ %473, %454 ], [ %499, %474 ]
  %502 = fdiv float %501, 1.250000e+02
  %503 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %504 = load ptr, ptr %503, align 16, !tbaa !79
  %505 = getelementptr inbounds %struct.x264_pps_t, ptr %504, i64 0, i32 15
  %506 = load i32, ptr %505, align 4, !tbaa !259
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %525, label %508

508:                                              ; preds = %500
  store i8 0, ptr %3, align 16, !tbaa !160
  %509 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 13
  %510 = load i64, ptr %509, align 8, !tbaa !162
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %520, label %512

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 13, i64 1
  %514 = load i64, ptr %513, align 8, !tbaa !162
  %515 = sitofp i64 %514 to double
  %516 = fmul double %515, 1.000000e+02
  %517 = sitofp i64 %510 to double
  %518 = fdiv double %516, %517
  %519 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.36, double noundef %518) #15
  br label %520

520:                                              ; preds = %512, %508
  %521 = sitofp i64 %421 to double
  %522 = fmul double %521, 1.000000e+02
  %523 = sitofp i64 %436 to double
  %524 = fdiv double %522, %523
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.37, double noundef %524, ptr noundef nonnull %3) #15
  br label %525

525:                                              ; preds = %520, %500
  %526 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %527 = load i32, ptr %526, align 4, !tbaa !195
  %528 = icmp eq i32 %527, 3
  br i1 %528, label %537, label %529

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18
  %531 = load i32, ptr %530, align 8, !tbaa !145
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %552, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18, i64 1
  %535 = load i32, ptr %534, align 4, !tbaa !145
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %552, label %537

537:                                              ; preds = %533, %525
  %538 = load i32, ptr %290, align 4, !tbaa !145
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %552, label %540

540:                                              ; preds = %537
  %541 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18
  %542 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18, i64 1
  %543 = load i32, ptr %542, align 4, !tbaa !145
  %544 = sitofp i32 %543 to double
  %545 = fmul double %544, 1.000000e+02
  %546 = sitofp i32 %538 to double
  %547 = fdiv double %545, %546
  %548 = load i32, ptr %541, align 8, !tbaa !145
  %549 = sitofp i32 %548 to double
  %550 = fmul double %549, 1.000000e+02
  %551 = fdiv double %550, %546
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.38, double noundef %547, double noundef %551) #15
  br label %552

552:                                              ; preds = %540, %537, %533, %529
  store i8 0, ptr %3, align 16, !tbaa !160
  %553 = icmp eq i64 %444, %448
  br i1 %553, label %575, label %554

554:                                              ; preds = %552
  %555 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 1
  %556 = load i64, ptr %555, align 8, !tbaa !162
  %557 = sitofp i64 %556 to double
  %558 = fmul double %557, 1.000000e+02
  %559 = sub nsw i64 %448, %444
  %560 = shl nsw i64 %559, 2
  %561 = sitofp i64 %560 to double
  %562 = fdiv double %558, %561
  %563 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 3
  %564 = load i64, ptr %563, align 8, !tbaa !162
  %565 = sitofp i64 %564 to double
  %566 = fmul double %565, 1.000000e+02
  %567 = sitofp i64 %559 to double
  %568 = fdiv double %566, %567
  %569 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 5
  %570 = load i64, ptr %569, align 8, !tbaa !162
  %571 = sitofp i64 %570 to double
  %572 = fmul double %571, 1.000000e+02
  %573 = fdiv double %572, %567
  %574 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.39, double noundef %562, double noundef %568, double noundef %573) #15
  br label %575

575:                                              ; preds = %554, %552
  %576 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15
  %577 = load i64, ptr %576, align 8, !tbaa !162
  %578 = sitofp i64 %577 to double
  %579 = fmul double %578, 1.000000e+02
  %580 = shl nsw i64 %444, 2
  %581 = sitofp i64 %580 to double
  %582 = fdiv double %579, %581
  %583 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 2
  %584 = load i64, ptr %583, align 8, !tbaa !162
  %585 = sitofp i64 %584 to double
  %586 = fmul double %585, 1.000000e+02
  %587 = sitofp i64 %444 to double
  %588 = fdiv double %586, %587
  %589 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 4
  %590 = load i64, ptr %589, align 8, !tbaa !162
  %591 = sitofp i64 %590 to double
  %592 = fmul double %591, 1.000000e+02
  %593 = fdiv double %592, %587
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.40, double noundef %582, double noundef %588, double noundef %593, ptr noundef nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %5, i8 0, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %594 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16
  br label %597

595:                                              ; preds = %597
  store i64 %608, ptr %6, align 16, !tbaa !162
  %596 = icmp eq i64 %608, 0
  br i1 %596, label %632, label %611

597:                                              ; preds = %575, %597
  %598 = phi i64 [ 0, %575 ], [ %609, %597 ]
  %599 = phi i64 [ 0, %575 ], [ %608, %597 ]
  %600 = getelementptr inbounds [13 x i64], ptr %594, i64 0, i64 %598
  %601 = load i64, ptr %600, align 8, !tbaa !162
  %602 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %598
  %603 = load i8, ptr %602, align 1, !tbaa !160
  %604 = zext i8 %603 to i64
  %605 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 %604
  %606 = load i64, ptr %605, align 8, !tbaa !162
  %607 = add nsw i64 %606, %601
  store i64 %607, ptr %605, align 8, !tbaa !162
  %608 = add nsw i64 %599, %601
  %609 = add nuw nsw i64 %598, 1
  %610 = icmp eq i64 %609, 7
  br i1 %610, label %595, label %597, !llvm.loop !515

611:                                              ; preds = %595
  %612 = load i64, ptr %5, align 16, !tbaa !162
  %613 = sitofp i64 %612 to double
  %614 = fmul double %613, 1.000000e+02
  %615 = sitofp i64 %608 to double
  %616 = fdiv double %614, %615
  %617 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 1
  %618 = load i64, ptr %617, align 8, !tbaa !162
  %619 = sitofp i64 %618 to double
  %620 = fmul double %619, 1.000000e+02
  %621 = fdiv double %620, %615
  %622 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 2
  %623 = load i64, ptr %622, align 16, !tbaa !162
  %624 = sitofp i64 %623 to double
  %625 = fmul double %624, 1.000000e+02
  %626 = fdiv double %625, %615
  %627 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 3
  %628 = load i64, ptr %627, align 8, !tbaa !162
  %629 = sitofp i64 %628 to double
  %630 = fmul double %629, 1.000000e+02
  %631 = fdiv double %630, %615
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.41, double noundef %616, double noundef %621, double noundef %626, double noundef %631) #15
  br label %632

632:                                              ; preds = %611, %595
  br label %633

633:                                              ; preds = %632, %706
  %634 = phi i64 [ %707, %706 ], [ 1, %632 ]
  %635 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %634
  %636 = load i64, ptr %635, align 8, !tbaa !162
  br label %642

637:                                              ; preds = %706
  %638 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 3
  %639 = load i64, ptr %638, align 8, !tbaa !162
  br label %711

640:                                              ; preds = %642
  store i64 %654, ptr %635, align 8, !tbaa !162
  %641 = icmp eq i64 %654, 0
  br i1 %641, label %706, label %656

642:                                              ; preds = %633, %642
  %643 = phi i64 [ 0, %633 ], [ %647, %642 ]
  %644 = phi i64 [ %636, %633 ], [ %654, %642 ]
  %645 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16, i64 %634, i64 %643
  %646 = load i64, ptr %645, align 8, !tbaa !162
  %647 = add nuw nsw i64 %643, 1
  %648 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %647
  %649 = load i8, ptr %648, align 1, !tbaa !160
  %650 = sext i8 %649 to i64
  %651 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 %650
  %652 = load i64, ptr %651, align 8, !tbaa !162
  %653 = add nsw i64 %652, %646
  store i64 %653, ptr %651, align 8, !tbaa !162
  %654 = add nsw i64 %644, %646
  %655 = icmp eq i64 %647, 12
  br i1 %655, label %640, label %642, !llvm.loop !516

656:                                              ; preds = %640
  %657 = trunc i64 %634 to i32
  %658 = shl i32 %657, 2
  %659 = xor i32 %658, 12
  %660 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634
  %661 = load i64, ptr %660, align 8, !tbaa !162
  %662 = sitofp i64 %661 to double
  %663 = fmul double %662, 1.000000e+02
  %664 = sitofp i64 %654 to double
  %665 = fdiv double %663, %664
  %666 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 1
  %667 = load i64, ptr %666, align 8, !tbaa !162
  %668 = sitofp i64 %667 to double
  %669 = fmul double %668, 1.000000e+02
  %670 = fdiv double %669, %664
  %671 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 2
  %672 = load i64, ptr %671, align 8, !tbaa !162
  %673 = sitofp i64 %672 to double
  %674 = fmul double %673, 1.000000e+02
  %675 = fdiv double %674, %664
  %676 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 3
  %677 = load i64, ptr %676, align 8, !tbaa !162
  %678 = sitofp i64 %677 to double
  %679 = fmul double %678, 1.000000e+02
  %680 = fdiv double %679, %664
  %681 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 4
  %682 = load i64, ptr %681, align 8, !tbaa !162
  %683 = sitofp i64 %682 to double
  %684 = fmul double %683, 1.000000e+02
  %685 = fdiv double %684, %664
  %686 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 5
  %687 = load i64, ptr %686, align 8, !tbaa !162
  %688 = sitofp i64 %687 to double
  %689 = fmul double %688, 1.000000e+02
  %690 = fdiv double %689, %664
  %691 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 6
  %692 = load i64, ptr %691, align 8, !tbaa !162
  %693 = sitofp i64 %692 to double
  %694 = fmul double %693, 1.000000e+02
  %695 = fdiv double %694, %664
  %696 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 7
  %697 = load i64, ptr %696, align 8, !tbaa !162
  %698 = sitofp i64 %697 to double
  %699 = fmul double %698, 1.000000e+02
  %700 = fdiv double %699, %664
  %701 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %634, i64 8
  %702 = load i64, ptr %701, align 8, !tbaa !162
  %703 = sitofp i64 %702 to double
  %704 = fmul double %703, 1.000000e+02
  %705 = fdiv double %704, %664
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %659, double noundef %665, double noundef %670, double noundef %675, double noundef %680, double noundef %685, double noundef %690, double noundef %695, double noundef %700, double noundef %705) #15
  br label %706

706:                                              ; preds = %640, %656
  %707 = add nuw nsw i64 %634, 1
  %708 = icmp eq i64 %707, 3
  br i1 %708, label %637, label %633, !llvm.loop !517

709:                                              ; preds = %711
  store i64 %722, ptr %638, align 8, !tbaa !162
  %710 = icmp eq i64 %722, 0
  br i1 %710, label %747, label %725

711:                                              ; preds = %637, %711
  %712 = phi i64 [ 0, %637 ], [ %723, %711 ]
  %713 = phi i64 [ %639, %637 ], [ %722, %711 ]
  %714 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16, i64 3, i64 %712
  %715 = load i64, ptr %714, align 8, !tbaa !162
  %716 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %712
  %717 = load i8, ptr %716, align 1, !tbaa !160
  %718 = zext i8 %717 to i64
  %719 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 %718
  %720 = load i64, ptr %719, align 8, !tbaa !162
  %721 = add nsw i64 %720, %715
  store i64 %721, ptr %719, align 8, !tbaa !162
  %722 = add nsw i64 %713, %715
  %723 = add nuw nsw i64 %712, 1
  %724 = icmp eq i64 %723, 7
  br i1 %724, label %709, label %711, !llvm.loop !518

725:                                              ; preds = %709
  %726 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3
  %727 = load i64, ptr %726, align 8, !tbaa !162
  %728 = sitofp i64 %727 to double
  %729 = fmul double %728, 1.000000e+02
  %730 = sitofp i64 %722 to double
  %731 = fdiv double %729, %730
  %732 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 1
  %733 = load i64, ptr %732, align 16, !tbaa !162
  %734 = sitofp i64 %733 to double
  %735 = fmul double %734, 1.000000e+02
  %736 = fdiv double %735, %730
  %737 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 2
  %738 = load i64, ptr %737, align 8, !tbaa !162
  %739 = sitofp i64 %738 to double
  %740 = fmul double %739, 1.000000e+02
  %741 = fdiv double %740, %730
  %742 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 3
  %743 = load i64, ptr %742, align 16, !tbaa !162
  %744 = sitofp i64 %743 to double
  %745 = fmul double %744, 1.000000e+02
  %746 = fdiv double %745, %730
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.43, double noundef %731, double noundef %736, double noundef %741, double noundef %746) #15
  br label %747

747:                                              ; preds = %725, %709
  %748 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %749 = load i32, ptr %748, align 4, !tbaa !109
  %750 = icmp eq i32 %749, 2
  br i1 %750, label %751, label %761

751:                                              ; preds = %747
  %752 = load i32, ptr %178, align 8, !tbaa !145
  %753 = icmp sgt i32 %752, 0
  br i1 %753, label %754, label %761

754:                                              ; preds = %751
  %755 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 19
  %756 = load i32, ptr %755, align 8, !tbaa !145
  %757 = sitofp i32 %756 to double
  %758 = fmul double %757, 1.000000e+02
  %759 = sitofp i32 %752 to double
  %760 = fdiv double %758, %759
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.44, double noundef %760) #15
  br label %761

761:                                              ; preds = %754, %751, %747
  br label %762

762:                                              ; preds = %761, %771
  %763 = phi i64 [ %772, %771 ], [ 0, %761 ]
  %764 = trunc i64 %763 to i32
  br label %769

765:                                              ; preds = %771
  %766 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %767 = load i32, ptr %766, align 16, !tbaa !184
  %768 = icmp eq i32 %767, 0
  br i1 %768, label %825, label %814

769:                                              ; preds = %762, %811
  %770 = phi i64 [ 0, %762 ], [ %812, %811 ]
  br label %782

771:                                              ; preds = %811
  %772 = add nuw nsw i64 %763, 1
  %773 = icmp eq i64 %763, 0
  br i1 %773, label %762, label %765, !llvm.loop !519

774:                                              ; preds = %782
  %775 = icmp eq i32 %791, 0
  br i1 %775, label %811, label %776

776:                                              ; preds = %774
  %777 = icmp slt i32 %791, 0
  br i1 %777, label %794, label %778

778:                                              ; preds = %776
  %779 = sitofp i64 %789 to double
  %780 = add nuw i32 %791, 1
  %781 = zext i32 %780 to i64
  br label %798

782:                                              ; preds = %769, %782
  %783 = phi i64 [ 0, %769 ], [ %792, %782 ]
  %784 = phi i32 [ 0, %769 ], [ %791, %782 ]
  %785 = phi i64 [ 0, %769 ], [ %789, %782 ]
  %786 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 14, i64 %770, i64 %763, i64 %783
  %787 = load i64, ptr %786, align 8, !tbaa !162
  %788 = icmp eq i64 %787, 0
  %789 = add nsw i64 %787, %785
  %790 = trunc i64 %783 to i32
  %791 = select i1 %788, i32 %784, i32 %790
  %792 = add nuw nsw i64 %783, 1
  %793 = icmp eq i64 %792, 32
  br i1 %793, label %774, label %782, !llvm.loop !520

794:                                              ; preds = %798, %776
  %795 = getelementptr inbounds [3 x i8], ptr @.str.46, i64 0, i64 %770
  %796 = load i8, ptr %795, align 1, !tbaa !160
  %797 = sext i8 %796 to i32
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.45, i32 noundef %797, i32 noundef %764, ptr noundef nonnull %3) #15
  br label %811

798:                                              ; preds = %778, %798
  %799 = phi i64 [ 0, %778 ], [ %809, %798 ]
  %800 = phi ptr [ %3, %778 ], [ %808, %798 ]
  %801 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 14, i64 %770, i64 %763, i64 %799
  %802 = load i64, ptr %801, align 8, !tbaa !162
  %803 = sitofp i64 %802 to double
  %804 = fmul double %803, 1.000000e+02
  %805 = fdiv double %804, %779
  %806 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %800, ptr noundef nonnull dereferenceable(1) @.str.31, double noundef %805) #15
  %807 = sext i32 %806 to i64
  %808 = getelementptr inbounds i8, ptr %800, i64 %807
  %809 = add nuw nsw i64 %799, 1
  %810 = icmp eq i64 %809, %781
  br i1 %810, label %794, label %798, !llvm.loop !521

811:                                              ; preds = %774, %794
  %812 = add nuw nsw i64 %770, 1
  %813 = icmp eq i64 %770, 0
  br i1 %813, label %769, label %771, !llvm.loop !522

814:                                              ; preds = %765
  %815 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10
  %816 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10, i64 2
  %817 = load double, ptr %816, align 8, !tbaa !163
  %818 = load double, ptr %815, align 8, !tbaa !163
  %819 = fadd double %817, %818
  %820 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10, i64 1
  %821 = load double, ptr %820, align 8, !tbaa !163
  %822 = fadd double %819, %821
  %823 = sitofp i32 %410 to double
  %824 = fdiv double %822, %823
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.47, double noundef %824) #15
  br label %825

825:                                              ; preds = %814, %765
  %826 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %827 = load i32, ptr %826, align 4, !tbaa !183
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %890, label %829

829:                                              ; preds = %825
  %830 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7
  %831 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 2
  %832 = load double, ptr %831, align 8, !tbaa !163
  %833 = load double, ptr %830, align 8, !tbaa !163
  %834 = fadd double %832, %833
  %835 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 1
  %836 = load double, ptr %835, align 8, !tbaa !163
  %837 = fadd double %834, %836
  %838 = sitofp i32 %410 to double
  %839 = fdiv double %837, %838
  %840 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8
  %841 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 2
  %842 = load double, ptr %841, align 8, !tbaa !163
  %843 = load double, ptr %840, align 8, !tbaa !163
  %844 = fadd double %842, %843
  %845 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 1
  %846 = load double, ptr %845, align 8, !tbaa !163
  %847 = fadd double %844, %846
  %848 = fdiv double %847, %838
  %849 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9
  %850 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 2
  %851 = load double, ptr %850, align 8, !tbaa !163
  %852 = load double, ptr %849, align 8, !tbaa !163
  %853 = fadd double %851, %852
  %854 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 1
  %855 = load double, ptr %854, align 8, !tbaa !163
  %856 = fadd double %853, %855
  %857 = fdiv double %856, %838
  %858 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6
  %859 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 2
  %860 = load double, ptr %859, align 8, !tbaa !163
  %861 = load double, ptr %858, align 8, !tbaa !163
  %862 = fadd double %860, %861
  %863 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 1
  %864 = load double, ptr %863, align 8, !tbaa !163
  %865 = fadd double %862, %864
  %866 = fdiv double %865, %838
  %867 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5
  %868 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 2
  %869 = load i64, ptr %868, align 8, !tbaa !162
  %870 = load i64, ptr %867, align 8, !tbaa !162
  %871 = add nsw i64 %870, %869
  %872 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 1
  %873 = load i64, ptr %872, align 8, !tbaa !162
  %874 = add nsw i64 %871, %873
  %875 = zext nneg i32 %410 to i64
  %876 = mul nsw i64 %875, %14
  %877 = sitofp i64 %874 to double
  %878 = sitofp i64 %876 to double
  %879 = fmul double %878, 6.502500e+04
  %880 = fdiv double %877, %879
  %881 = fcmp ugt double %880, 1.000000e-10
  br i1 %881, label %882, label %887

882:                                              ; preds = %829
  %883 = call double @log10(double noundef %880) #15
  %884 = fmul double %883, -1.000000e+01
  %885 = fptrunc double %884 to float
  %886 = fpext float %885 to double
  br label %887

887:                                              ; preds = %829, %882
  %888 = phi double [ %886, %882 ], [ 1.000000e+02, %829 ]
  %889 = fpext float %502 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.48, double noundef %839, double noundef %848, double noundef %857, double noundef %866, double noundef %888, double noundef %889) #15
  br label %892

890:                                              ; preds = %825
  %891 = fpext float %502 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.49, double noundef %891) #15
  br label %892

892:                                              ; preds = %890, %887
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %5) #15
  br label %893

893:                                              ; preds = %892, %405
  call void @x264_ratecontrol_delete(ptr noundef %0) #15
  %894 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %895 = load ptr, ptr %894, align 8, !tbaa !66
  %896 = icmp eq ptr %895, null
  br i1 %896, label %898, label %897

897:                                              ; preds = %893
  call void @free(ptr noundef %895) #15
  br label %898

898:                                              ; preds = %897, %893
  %899 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  %900 = load ptr, ptr %899, align 8, !tbaa !67
  %901 = icmp eq ptr %900, null
  br i1 %901, label %903, label %902

902:                                              ; preds = %898
  call void @free(ptr noundef %900) #15
  br label %903

903:                                              ; preds = %902, %898
  call void @x264_cqm_delete(ptr noundef %0) #15
  %904 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %905 = load ptr, ptr %904, align 8, !tbaa !152
  call void @x264_free(ptr noundef %905) #15
  call void @x264_analyse_free_costs(ptr noundef %0) #15
  %906 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %907 = load i32, ptr %906, align 4, !tbaa !96
  %908 = icmp sgt i32 %907, 1
  br i1 %908, label %909, label %915

909:                                              ; preds = %903
  %910 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %911 = load i32, ptr %910, align 16, !tbaa !238
  %912 = sext i32 %911 to i64
  %913 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %912
  %914 = load ptr, ptr %913, align 8, !tbaa !116
  br label %915

915:                                              ; preds = %909, %903
  %916 = phi ptr [ %914, %909 ], [ %0, %903 ]
  %917 = getelementptr inbounds %struct.x264_t, ptr %916, i64 0, i32 43
  %918 = getelementptr inbounds %struct.x264_t, ptr %916, i64 0, i32 43, i32 1
  %919 = load ptr, ptr %918, align 8, !tbaa !116
  call void @x264_frame_delete_list(ptr noundef %919) #15
  %920 = getelementptr inbounds %struct.x264_t, ptr %916, i64 0, i32 43, i32 1, i64 1
  %921 = load ptr, ptr %920, align 8, !tbaa !116
  call void @x264_frame_delete_list(ptr noundef %921) #15
  %922 = load ptr, ptr %917, align 16, !tbaa !117
  call void @x264_frame_delete_list(ptr noundef %922) #15
  %923 = getelementptr inbounds %struct.x264_t, ptr %916, i64 0, i32 43, i32 2
  %924 = load ptr, ptr %923, align 8, !tbaa !118
  call void @x264_frame_delete_list(ptr noundef %924) #15
  %925 = getelementptr inbounds %struct.x264_t, ptr %916, i64 0, i32 1
  %926 = load ptr, ptr %925, align 16, !tbaa !116
  %927 = getelementptr inbounds %struct.x264_param_t, ptr %926, i64 0, i32 1
  %928 = load i32, ptr %927, align 4, !tbaa !154
  %929 = icmp sgt i32 %928, 0
  br i1 %929, label %930, label %933

930:                                              ; preds = %915
  %931 = getelementptr inbounds %struct.x264_param_t, ptr %926, i64 0, i32 2
  %932 = zext nneg i32 %928 to i64
  br label %934

933:                                              ; preds = %970, %915
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #15
  ret void

934:                                              ; preds = %930, %970
  %935 = phi i64 [ %932, %930 ], [ %936, %970 ]
  %936 = add nsw i64 %935, -1
  %937 = load i32, ptr %931, align 8, !tbaa !158
  %938 = icmp eq i32 %937, 0
  %939 = icmp eq i64 %936, 0
  %940 = select i1 %938, i1 true, i1 %939
  br i1 %940, label %941, label %970

941:                                              ; preds = %934
  %942 = getelementptr inbounds %struct.x264_t, ptr %926, i64 0, i32 1, i64 %936
  %943 = load ptr, ptr %942, align 8, !tbaa !116
  %944 = getelementptr inbounds %struct.x264_t, ptr %943, i64 0, i32 43, i32 3
  %945 = load ptr, ptr %944, align 8, !tbaa !116
  %946 = icmp eq ptr %945, null
  br i1 %946, label %959, label %947

947:                                              ; preds = %941, %955
  %948 = phi ptr [ %957, %955 ], [ %945, %941 ]
  %949 = phi ptr [ %956, %955 ], [ %944, %941 ]
  %950 = getelementptr inbounds %struct.x264_frame, ptr %948, i64 0, i32 78
  %951 = load i32, ptr %950, align 16, !tbaa !285
  %952 = add nsw i32 %951, -1
  store i32 %952, ptr %950, align 16, !tbaa !285
  %953 = icmp eq i32 %952, 0
  br i1 %953, label %954, label %955

954:                                              ; preds = %947
  call void @x264_frame_delete(ptr noundef nonnull %948) #15
  br label %955

955:                                              ; preds = %947, %954
  %956 = getelementptr inbounds ptr, ptr %949, i64 1
  %957 = load ptr, ptr %956, align 8, !tbaa !116
  %958 = icmp eq ptr %957, null
  br i1 %958, label %959, label %947, !llvm.loop !523

959:                                              ; preds = %955, %941
  %960 = load ptr, ptr %942, align 8, !tbaa !116
  %961 = getelementptr inbounds %struct.x264_t, ptr %960, i64 0, i32 45
  %962 = load ptr, ptr %961, align 8, !tbaa !116
  %963 = getelementptr inbounds %struct.x264_frame, ptr %962, i64 0, i32 78
  %964 = load i32, ptr %963, align 16, !tbaa !285
  %965 = add nsw i32 %964, -1
  store i32 %965, ptr %963, align 16, !tbaa !285
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %968

967:                                              ; preds = %959
  call void @x264_frame_delete(ptr noundef %962) #15
  br label %968

968:                                              ; preds = %967, %959
  %969 = load ptr, ptr %942, align 8, !tbaa !116
  call void @x264_macroblock_cache_free(ptr noundef %969) #15
  br label %970

970:                                              ; preds = %934, %968
  %971 = getelementptr inbounds %struct.x264_t, ptr %926, i64 0, i32 1, i64 %936
  %972 = load ptr, ptr %971, align 8, !tbaa !116
  call void @x264_macroblock_thread_free(ptr noundef %972, i32 noundef 0) #15
  %973 = load ptr, ptr %971, align 8, !tbaa !116
  %974 = getelementptr inbounds %struct.x264_t, ptr %973, i64 0, i32 7, i32 4
  %975 = load ptr, ptr %974, align 8, !tbaa !165
  call void @x264_free(ptr noundef %975) #15
  %976 = load ptr, ptr %971, align 8, !tbaa !116
  %977 = getelementptr inbounds %struct.x264_t, ptr %976, i64 0, i32 7, i32 2
  %978 = load ptr, ptr %977, align 8, !tbaa !166
  call void @x264_free(ptr noundef %978) #15
  %979 = load ptr, ptr %971, align 8, !tbaa !116
  call void @x264_free(ptr noundef %979) #15
  %980 = icmp sgt i64 %935, 1
  br i1 %980, label %934, label %933, !llvm.loop !524
}

declare void @x264_lookahead_delete(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_delete(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_summary(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

declare void @x264_cqm_delete(ptr noundef) local_unnamed_addr #2

declare void @x264_analyse_free_costs(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_delete_list(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_encoder_delayed_frames(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !96
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %13

7:                                                ; preds = %13
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 16, !tbaa !238
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !116
  br label %23

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %21, %13 ]
  %15 = phi i32 [ 0, %5 ], [ %20, %13 ]
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !116
  %18 = getelementptr inbounds %struct.x264_t, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !378
  %20 = add nsw i32 %19, %15
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %7, label %13, !llvm.loop !525

23:                                               ; preds = %7, %1
  %24 = phi ptr [ %12, %7 ], [ %0, %1 ]
  %25 = phi i32 [ %20, %7 ], [ 0, %1 ]
  %26 = getelementptr inbounds %struct.x264_t, ptr %24, i64 0, i32 43
  %27 = load ptr, ptr %26, align 16, !tbaa !117
  %28 = load ptr, ptr %27, align 8, !tbaa !116
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %43, %23
  %31 = phi i32 [ %25, %23 ], [ %46, %43 ]
  %32 = getelementptr inbounds %struct.x264_t, ptr %24, i64 0, i32 75
  %33 = load ptr, ptr %32, align 16, !tbaa !317
  %34 = getelementptr inbounds %struct.x264_lookahead_t, ptr %33, i64 0, i32 6, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !526
  %36 = getelementptr inbounds %struct.x264_lookahead_t, ptr %33, i64 0, i32 7, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !527
  %38 = getelementptr inbounds %struct.x264_lookahead_t, ptr %33, i64 0, i32 8, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !528
  %40 = add i32 %35, %31
  %41 = add i32 %40, %37
  %42 = add i32 %41, %39
  ret i32 %42

43:                                               ; preds = %23, %43
  %44 = phi i64 [ %47, %43 ], [ 0, %23 ]
  %45 = phi i32 [ %46, %43 ], [ %25, %23 ]
  %46 = add nsw i32 %45, 1
  %47 = add nuw nsw i64 %44, 1
  %48 = getelementptr inbounds ptr, ptr %27, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !116
  %50 = icmp eq ptr %49, null
  br i1 %50, label %30, label %43, !llvm.loop !529
}

declare i32 @x264_cpu_num_processors() local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #7

declare i32 @x264_nal_encode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @x264_frame_pop(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_set_weights(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_weight_scale_plane(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_slice_header_init(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #13 {
  store ptr %2, ptr %1, align 16, !tbaa !401
  %8 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !410
  %9 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !393
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %11 = load i32, ptr %10, align 16, !tbaa !89
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !530
  %14 = load i32, ptr %3, align 8, !tbaa !531
  %15 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !400
  %16 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 6
  store i32 %5, ptr %16, align 16, !tbaa !403
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !128
  %19 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 7
  store i32 %18, ptr %19, align 4, !tbaa !398
  %20 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 8
  store i32 0, ptr %20, align 8, !tbaa !405
  %21 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 9
  store i32 0, ptr %21, align 4, !tbaa !406
  %22 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 10
  store i32 %4, ptr %22, align 16, !tbaa !407
  %23 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 11
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %23, i8 0, i64 20, i1 false)
  %25 = load i32, ptr %24, align 4, !tbaa !247
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %39

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !73
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !100
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %37 = load i32, ptr %36, align 8, !tbaa !91
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %31, %35, %27, %7
  %40 = phi i1 [ false, %27 ], [ false, %7 ], [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  store i32 %41, ptr %42, align 4, !tbaa !495
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 74
  %44 = load i32, ptr %43, align 8, !tbaa !532
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 16, !tbaa !399
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %52 = load ptr, ptr %51, align 16, !tbaa !116
  %53 = getelementptr inbounds %struct.x264_frame, ptr %52, i64 0, i32 22
  %54 = load i32, ptr %53, align 16, !tbaa !359
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %56 = load ptr, ptr %55, align 16, !tbaa !116
  %57 = load i32, ptr %56, align 16, !tbaa !300
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  br i1 %40, label %60, label %66

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !145
  %64 = load i32, ptr %61, align 8, !tbaa !145
  %65 = icmp sgt i32 %63, %64
  br label %69

66:                                               ; preds = %59
  %67 = icmp eq i32 %25, 1
  br label %69

68:                                               ; preds = %50
  store i32 0, ptr %42, align 4, !tbaa !495
  br label %69

69:                                               ; preds = %60, %66, %68
  %70 = phi i1 [ true, %68 ], [ %67, %66 ], [ %65, %60 ]
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 15
  store i32 %71, ptr %72, align 8, !tbaa !416
  br label %73

73:                                               ; preds = %69, %46, %39
  %74 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 16
  store i32 0, ptr %74, align 4, !tbaa !417
  %75 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 17
  store i32 1, ptr %75, align 16, !tbaa !418
  %76 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 18
  store i32 1, ptr %76, align 4, !tbaa !419
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50
  %78 = load i32, ptr %77, align 8, !tbaa !145
  %79 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 19
  store i32 %78, ptr %79, align 8, !tbaa !420
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !145
  %82 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 20
  store i32 %81, ptr %82, align 4, !tbaa !422
  %83 = icmp eq i32 %78, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %86 = load i32, ptr %85, align 8, !tbaa !119
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 21
  %90 = getelementptr inbounds %struct.x264_sps_t, ptr %2, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !402
  %92 = shl nsw i32 -1, %91
  %93 = xor i32 %92, -1
  %94 = zext nneg i32 %86 to i64
  br label %95

95:                                               ; preds = %88, %95
  %96 = phi i64 [ 0, %88 ], [ %110, %95 ]
  %97 = phi i32 [ %5, %88 ], [ %101, %95 ]
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !116
  %100 = getelementptr inbounds %struct.x264_frame, ptr %99, i64 0, i32 13
  %101 = load i32, ptr %100, align 4, !tbaa !330
  %102 = sub nsw i32 %101, %97
  %103 = icmp sgt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds [16 x %struct.anon.6], ptr %89, i64 0, i64 %96
  store i32 %104, ptr %105, align 8, !tbaa !331
  %106 = tail call i32 @llvm.abs.i32(i32 %102, i1 true)
  %107 = add nuw i32 %106, 2147483647
  %108 = and i32 %107, %93
  %109 = getelementptr inbounds [16 x %struct.anon.6], ptr %89, i64 0, i64 %96, i32 1
  store i32 %108, ptr %109, align 4, !tbaa !301
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, %94
  br i1 %111, label %112, label %95, !llvm.loop !533

112:                                              ; preds = %95, %84, %73
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  %114 = load i32, ptr %113, align 4, !tbaa !534
  %115 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 26
  store i32 %114, ptr %115, align 8, !tbaa !430
  %116 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 27
  store i32 %6, ptr %116, align 4, !tbaa !535
  %117 = getelementptr inbounds %struct.x264_pps_t, ptr %3, i64 0, i32 9
  %118 = load i32, ptr %117, align 4, !tbaa !396
  %119 = sub nsw i32 %6, %118
  %120 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 28
  store i32 %119, ptr %120, align 16, !tbaa !431
  %121 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 29
  store i32 0, ptr %121, align 4, !tbaa !536
  %122 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 30
  store i32 0, ptr %122, align 8, !tbaa !537
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %126 = load i32, ptr %125, align 4, !tbaa !242
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %144, label %128

128:                                              ; preds = %112
  %129 = load i32, ptr %123, align 8, !tbaa !243
  %130 = load i32, ptr %124, align 4, !tbaa !244
  %131 = tail call i32 @llvm.smin.i32(i32 %129, i32 %130)
  %132 = shl nsw i32 %131, 1
  %133 = add nsw i32 %132, %6
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 72
  %135 = load i32, ptr %134, align 16, !tbaa !538
  %136 = icmp ne i32 %135, 0
  %137 = icmp sgt i32 %133, 15
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !539
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 0, i32 2
  br label %144

144:                                              ; preds = %112, %128, %139
  %145 = phi i32 [ %143, %139 ], [ 1, %128 ], [ 1, %112 ]
  %146 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 31
  store i32 %145, ptr %146, align 4, !tbaa !433
  %147 = load i32, ptr %123, align 8, !tbaa !243
  %148 = shl i32 %147, 1
  %149 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 32
  store i32 %148, ptr %149, align 16, !tbaa !434
  %150 = load i32, ptr %124, align 4, !tbaa !244
  %151 = shl i32 %150, 1
  %152 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 33
  store i32 %151, ptr %152, align 4, !tbaa !435
  ret void
}

declare void @x264_macroblock_slice_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

declare void @x264_analyse_weight_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_threads_distribute_ratecontrol(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @x264_fdec_filter_row(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %5 = load ptr, ptr %4, align 16, !tbaa !164
  %6 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !296
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %9 = load i32, ptr %8, align 4, !tbaa !392
  %10 = icmp ne i32 %9, 1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !377
  %13 = icmp ne i32 %12, %1
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !361
  %16 = shl nsw i32 -1, %15
  %17 = add i32 %16, %1
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !376
  %20 = icmp ne i32 %17, %19
  %21 = icmp eq i32 %7, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  %24 = load ptr, ptr %23, align 8, !tbaa !172
  %25 = icmp ne ptr %24, null
  br label %26

26:                                               ; preds = %22, %3
  %27 = phi i1 [ true, %3 ], [ %25, %22 ]
  %28 = and i1 %10, %27
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !158
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i1 true, i1 %20
  %33 = icmp eq i32 %17, 0
  %34 = select i1 %32, i1 true, i1 %33
  %35 = icmp ne i32 %2, 0
  %36 = or i1 %35, %34
  %37 = select i1 %36, i1 %28, i1 false
  %38 = and i32 %15, %1
  %39 = icmp ne i32 %38, 0
  %40 = icmp slt i32 %17, %19
  %41 = select i1 %39, i1 true, i1 %40
  br i1 %41, label %218, label %42

42:                                               ; preds = %26
  %43 = and i1 %35, %13
  br i1 %43, label %44, label %85

44:                                               ; preds = %42
  %45 = load i32, ptr %14, align 4, !tbaa !361
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %44
  %48 = shl nsw i32 %1, 4
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  br label %50

50:                                               ; preds = %47, %53
  %51 = phi i64 [ 0, %47 ], [ %54, %53 ]
  %52 = trunc i64 %51 to i32
  br label %58

53:                                               ; preds = %58
  %54 = add nuw nsw i64 %51, 1
  %55 = load i32, ptr %14, align 4, !tbaa !361
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %51, %56
  br i1 %57, label %50, label %85, !llvm.loop !540

58:                                               ; preds = %50, %58
  %59 = phi i64 [ 0, %50 ], [ %83, %58 ]
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %51, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !116
  %62 = load ptr, ptr %4, align 16, !tbaa !164
  %63 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 30, i64 %59
  %64 = load ptr, ptr %63, align 8, !tbaa !116
  %65 = icmp ne i64 %59, 0
  %66 = zext i1 %65 to i32
  %67 = ashr exact i32 %48, %66
  %68 = add nsw i32 %67, %52
  %69 = load i32, ptr %14, align 4, !tbaa !361
  %70 = xor i32 %69, -1
  %71 = add i32 %68, %70
  %72 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 24, i64 %59
  %73 = load i32, ptr %72, align 4, !tbaa !145
  %74 = mul nsw i32 %71, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, ptr %64, i64 %75
  %77 = load ptr, ptr %49, align 16, !tbaa !77
  %78 = getelementptr inbounds %struct.x264_sps_t, ptr %77, i64 0, i32 16
  %79 = load i32, ptr %78, align 4, !tbaa !83
  %80 = shl nsw i32 %79, 4
  %81 = ashr exact i32 %80, %66
  %82 = sext i32 %81 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %61, ptr align 1 %76, i64 %82, i1 false)
  %83 = add nuw nsw i64 %59, 1
  %84 = icmp eq i64 %83, 3
  br i1 %84, label %53, label %58, !llvm.loop !541

85:                                               ; preds = %53, %44, %42
  %86 = icmp slt i32 %17, %1
  %87 = select i1 %37, i1 %86, i1 false
  br i1 %87, label %88, label %94

88:                                               ; preds = %85, %88
  %89 = phi i32 [ %92, %88 ], [ %17, %85 ]
  tail call void @x264_frame_deblock_row(ptr noundef %0, i32 noundef %89) #15
  %90 = load i32, ptr %14, align 4, !tbaa !361
  %91 = shl nuw i32 1, %90
  %92 = add nsw i32 %91, %89
  %93 = icmp slt i32 %92, %1
  br i1 %93, label %88, label %94, !llvm.loop !542

94:                                               ; preds = %88, %85
  br i1 %21, label %109, label %95

95:                                               ; preds = %94
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %97 = load ptr, ptr %96, align 16, !tbaa !77
  %98 = getelementptr inbounds %struct.x264_sps_t, ptr %97, i64 0, i32 17
  %99 = load i32, ptr %98, align 4, !tbaa !88
  %100 = icmp eq i32 %99, %1
  %101 = zext i1 %100 to i32
  %102 = load ptr, ptr %4, align 16, !tbaa !164
  tail call void @x264_frame_expand_border(ptr noundef %0, ptr noundef %102, i32 noundef %17, i32 noundef %101) #15
  %103 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %104 = load i32, ptr %103, align 4, !tbaa !130
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %95
  %107 = load ptr, ptr %4, align 16, !tbaa !164
  tail call void @x264_frame_filter(ptr noundef %0, ptr noundef %107, i32 noundef %17, i32 noundef %101) #15
  %108 = load ptr, ptr %4, align 16, !tbaa !164
  tail call void @x264_frame_expand_border_filtered(ptr noundef %0, ptr noundef %108, i32 noundef %17, i32 noundef %101) #15
  br label %109

109:                                              ; preds = %95, %106, %94
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %111 = load i32, ptr %110, align 4, !tbaa !96
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = load ptr, ptr %4, align 16, !tbaa !164
  %115 = getelementptr inbounds %struct.x264_frame, ptr %114, i64 0, i32 14
  %116 = load i32, ptr %115, align 8, !tbaa !296
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %113
  %119 = shl nsw i32 %1, 4
  br i1 %13, label %120, label %123

120:                                              ; preds = %118
  %121 = load i32, ptr %14, align 4, !tbaa !361
  %122 = shl i32 -24, %121
  br label %123

123:                                              ; preds = %118, %120
  %124 = phi i32 [ %122, %120 ], [ 10000, %118 ]
  %125 = add nsw i32 %124, %119
  tail call void @x264_frame_cond_broadcast(ptr noundef %114, i32 noundef %125) #15
  br label %126

126:                                              ; preds = %123, %113, %109
  %127 = shl nsw i32 %17, 4
  %128 = select i1 %20, i32 -8, i32 0
  %129 = add i32 %128, %127
  br i1 %13, label %136, label %130

130:                                              ; preds = %126
  %131 = load i32, ptr %11, align 8, !tbaa !377
  %132 = shl nsw i32 %131, 4
  %133 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %134 = load i32, ptr %133, align 8, !tbaa !148
  %135 = tail call i32 @llvm.smin.i32(i32 %132, i32 %134)
  br label %139

136:                                              ; preds = %126
  %137 = shl nsw i32 %1, 4
  %138 = add nsw i32 %137, -8
  br label %139

139:                                              ; preds = %130, %136
  %140 = phi i32 [ %138, %136 ], [ %135, %130 ]
  br i1 %36, label %141, label %218

141:                                              ; preds = %139
  %142 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %143 = load i32, ptr %142, align 4, !tbaa !183
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %180, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %147 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %148 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %149 = sub nsw i32 %140, %129
  br label %150

150:                                              ; preds = %145, %150
  %151 = phi i64 [ 0, %145 ], [ %178, %150 ]
  %152 = load ptr, ptr %4, align 16, !tbaa !164
  %153 = getelementptr inbounds %struct.x264_frame, ptr %152, i64 0, i32 30, i64 %151
  %154 = load ptr, ptr %153, align 8, !tbaa !116
  %155 = icmp ne i64 %151, 0
  %156 = zext i1 %155 to i32
  %157 = ashr exact i32 %129, %156
  %158 = getelementptr inbounds %struct.x264_frame, ptr %152, i64 0, i32 24, i64 %151
  %159 = load i32, ptr %158, align 4, !tbaa !145
  %160 = mul nsw i32 %159, %157
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, ptr %154, i64 %161
  %163 = load ptr, ptr %147, align 8, !tbaa !290
  %164 = getelementptr inbounds %struct.x264_frame, ptr %163, i64 0, i32 30, i64 %151
  %165 = load ptr, ptr %164, align 8, !tbaa !116
  %166 = getelementptr inbounds %struct.x264_frame, ptr %163, i64 0, i32 24, i64 %151
  %167 = load i32, ptr %166, align 4, !tbaa !145
  %168 = mul nsw i32 %167, %157
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, ptr %165, i64 %169
  %171 = load i32, ptr %148, align 4, !tbaa !147
  %172 = ashr i32 %171, %156
  %173 = ashr i32 %149, %156
  %174 = tail call i64 @x264_pixel_ssd_wxh(ptr noundef nonnull %146, ptr noundef %162, i32 noundef %159, ptr noundef %170, i32 noundef %167, i32 noundef %172, i32 noundef %173) #15
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 %151
  %176 = load i64, ptr %175, align 8, !tbaa !162
  %177 = add nsw i64 %176, %174
  store i64 %177, ptr %175, align 8, !tbaa !162
  %178 = add nuw nsw i64 %151, 1
  %179 = icmp eq i64 %178, 3
  br i1 %179, label %180, label %150, !llvm.loop !543

180:                                              ; preds = %150, %141
  %181 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %182 = load i32, ptr %181, align 16, !tbaa !184
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %218, label %184

184:                                              ; preds = %180
  %185 = select i1 %20, i32 -6, i32 2
  %186 = add nsw i32 %129, %185
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %188 = load ptr, ptr %4, align 16, !tbaa !164
  %189 = getelementptr inbounds %struct.x264_frame, ptr %188, i64 0, i32 30
  %190 = load ptr, ptr %189, align 8, !tbaa !116
  %191 = getelementptr inbounds i8, ptr %190, i64 2
  %192 = getelementptr inbounds %struct.x264_frame, ptr %188, i64 0, i32 24
  %193 = load i32, ptr %192, align 8, !tbaa !145
  %194 = mul nsw i32 %193, %186
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, ptr %191, i64 %195
  %197 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %198 = load ptr, ptr %197, align 8, !tbaa !290
  %199 = getelementptr inbounds %struct.x264_frame, ptr %198, i64 0, i32 30
  %200 = load ptr, ptr %199, align 8, !tbaa !116
  %201 = getelementptr inbounds i8, ptr %200, i64 2
  %202 = getelementptr inbounds %struct.x264_frame, ptr %198, i64 0, i32 24
  %203 = load i32, ptr %202, align 8, !tbaa !145
  %204 = mul nsw i32 %203, %186
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, ptr %201, i64 %205
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %208 = load i32, ptr %207, align 4, !tbaa !147
  %209 = add nsw i32 %208, -2
  %210 = sub nsw i32 %140, %186
  %211 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %212 = load ptr, ptr %211, align 8, !tbaa !544
  %213 = tail call float @x264_pixel_ssim_wxh(ptr noundef nonnull %187, ptr noundef nonnull %196, i32 noundef %193, ptr noundef nonnull %206, i32 noundef %203, i32 noundef %209, i32 noundef %210, ptr noundef %212) #15
  %214 = fpext float %213 to double
  %215 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 14
  %216 = load double, ptr %215, align 8, !tbaa !388
  %217 = fadd double %216, %214
  store double %217, ptr %215, align 8, !tbaa !388
  br label %218

218:                                              ; preds = %139, %184, %180, %26
  ret void
}

declare void @x264_threads_merge_ratecontrol(ptr noundef) local_unnamed_addr #2

declare void @x264_frame_deblock_row(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_expand_border(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_expand_border_filtered(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_frame_cond_broadcast(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @x264_pixel_ssd_wxh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare float @x264_pixel_ssim_wxh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_thread_init(ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_context_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_load(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_macroblock_analyse(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_encode(ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

declare void @x264_cabac_mb_skip(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_macroblock_write_cabac(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_write_cavlc(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_save(ptr noundef) local_unnamed_addr #2

declare void @x264_macroblock_cache_load_deblock(ptr noundef) local_unnamed_addr #2

declare void @x264_ratecontrol_mb(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @x264_hrd_fullness(ptr noundef) local_unnamed_addr #2

declare void @x264_sei_buffering_period_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

declare i32 @x264_ratecontrol_end(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @x264_filler_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @x264_noise_reduction_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

declare void @x264_frame_push_blank_unused(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !40, i64 696}
!35 = !{!"x264_param_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !39, i64 44, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !40, i64 152, !37, i64 160, !37, i64 176, !37, i64 192, !37, i64 208, !37, i64 224, !37, i64 288, !40, i64 352, !40, i64 360, !36, i64 368, !36, i64 372, !40, i64 376, !41, i64 384, !43, i64 488, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !40, i64 696}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32}
!40 = !{!"any pointer", !37, i64 0}
!41 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !42, i64 72, !42, i64 76, !36, i64 80, !37, i64 84, !36, i64 92, !36, i64 96}
!42 = !{!"float", !37, i64 0}
!43 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !42, i64 24, !42, i64 28, !42, i64 32, !36, i64 36, !36, i64 40, !42, i64 44, !42, i64 48, !42, i64 52, !36, i64 56, !42, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !40, i64 80, !36, i64 88, !40, i64 96, !42, i64 104, !42, i64 108, !42, i64 112, !40, i64 120, !36, i64 128, !40, i64 136}
!44 = !{i32 -1, i32 1}
!45 = !{!46, !40, i64 152}
!46 = !{!"x264_t", !35, i64 0, !37, i64 704, !36, i64 1736, !36, i64 1740, !36, i64 1744, !36, i64 1748, !36, i64 1752, !47, i64 1760, !40, i64 1832, !36, i64 1840, !36, i64 1844, !36, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !36, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !36, i64 1884, !36, i64 1888, !36, i64 1892, !37, i64 1896, !40, i64 3200, !37, i64 3208, !40, i64 3328, !36, i64 3336, !36, i64 3340, !37, i64 3344, !37, i64 3376, !37, i64 3392, !37, i64 3424, !37, i64 3440, !37, i64 3472, !37, i64 3488, !37, i64 3520, !37, i64 3536, !37, i64 4272, !40, i64 7216, !50, i64 7232, !51, i64 13904, !52, i64 14416, !40, i64 14680, !40, i64 14688, !36, i64 14696, !37, i64 14704, !36, i64 14856, !37, i64 14864, !37, i64 15016, !36, i64 15024, !36, i64 15028, !49, i64 15032, !53, i64 15040, !54, i64 16368, !40, i64 26704, !57, i64 26712, !37, i64 30400, !37, i64 30912, !37, i64 31168, !40, i64 31176, !37, i64 31184, !37, i64 31232, !37, i64 31248, !37, i64 31304, !37, i64 31360, !37, i64 31456, !40, i64 31552, !60, i64 31560, !61, i64 32616, !62, i64 32912, !63, i64 33032, !64, i64 33080, !65, i64 33256, !40, i64 33328}
!47 = !{!"", !36, i64 0, !36, i64 4, !40, i64 8, !36, i64 16, !40, i64 24, !48, i64 32}
!48 = !{!"bs_s", !40, i64 0, !40, i64 8, !40, i64 16, !49, i64 24, !36, i64 32, !36, i64 36}
!49 = !{!"long", !37, i64 0}
!50 = !{!"", !40, i64 0, !40, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !37, i64 60, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !37, i64 96, !37, i64 352, !36, i64 6496, !36, i64 6500, !37, i64 6504, !36, i64 6632, !36, i64 6636, !36, i64 6640, !36, i64 6644, !36, i64 6648, !36, i64 6652, !36, i64 6656, !36, i64 6660}
!51 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !40, i64 16, !40, i64 24, !40, i64 32, !36, i64 48, !37, i64 52}
!52 = !{!"", !40, i64 0, !37, i64 8, !40, i64 24, !37, i64 32, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !49, i64 208, !49, i64 216, !37, i64 224, !49, i64 240, !49, i64 248, !36, i64 256, !36, i64 260}
!53 = !{!"", !37, i64 0, !37, i64 32, !37, i64 48, !37, i64 560}
!54 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !37, i64 124, !37, i64 140, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288, !40, i64 296, !37, i64 304, !37, i64 320, !37, i64 336, !37, i64 352, !40, i64 864, !40, i64 872, !40, i64 880, !37, i64 888, !36, i64 1016, !36, i64 1020, !37, i64 1024, !36, i64 1028, !36, i64 1032, !36, i64 1036, !36, i64 1040, !36, i64 1044, !36, i64 1048, !36, i64 1052, !36, i64 1056, !36, i64 1060, !55, i64 1072, !56, i64 8656, !36, i64 9424, !36, i64 9428, !36, i64 9432, !36, i64 9436, !36, i64 9440, !36, i64 9444, !36, i64 9448, !36, i64 9452, !37, i64 9456, !36, i64 9472, !36, i64 9476, !37, i64 9480, !40, i64 9992, !37, i64 10000, !40, i64 10256, !37, i64 10264, !36, i64 10284, !37, i64 10288}
!55 = !{!"", !37, i64 0, !37, i64 384, !37, i64 1248, !37, i64 1504, !37, i64 1760, !37, i64 2144, !37, i64 2624, !37, i64 2640, !36, i64 2656, !36, i64 2660, !37, i64 2672, !37, i64 3184, !37, i64 3696, !37, i64 3776, !37, i64 3904, !37, i64 3928, !37, i64 3952, !37, i64 3976, !37, i64 3984, !37, i64 7056, !37, i64 7312, !37, i64 7568}
!56 = !{!"", !37, i64 0, !37, i64 48, !37, i64 96, !37, i64 176, !37, i64 496, !37, i64 656, !37, i64 696, !37, i64 728, !36, i64 736, !37, i64 740, !36, i64 744, !36, i64 748, !36, i64 752, !36, i64 756}
!57 = !{!"", !58, i64 0, !37, i64 704, !37, i64 728, !37, i64 768, !37, i64 808, !37, i64 880, !37, i64 920, !37, i64 960, !37, i64 1000, !37, i64 1040, !37, i64 1080, !37, i64 1120, !37, i64 1880, !37, i64 2152, !37, i64 2168, !37, i64 3192, !37, i64 3240, !37, i64 3656, !37, i64 3664, !37, i64 3672}
!58 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !36, i64 88, !36, i64 92, !36, i64 96, !37, i64 100, !37, i64 108, !37, i64 364, !37, i64 432, !37, i64 456, !37, i64 664, !37, i64 672, !59, i64 696}
!59 = !{!"double", !37, i64 0}
!60 = !{!"", !37, i64 0, !37, i64 56, !37, i64 112, !37, i64 168, !37, i64 224, !37, i64 256, !37, i64 312, !37, i64 368, !37, i64 424, !37, i64 480, !37, i64 536, !40, i64 592, !37, i64 600, !37, i64 632, !40, i64 664, !40, i64 672, !37, i64 680, !37, i64 736, !37, i64 792, !37, i64 848, !37, i64 904, !40, i64 960, !40, i64 968, !40, i64 976, !40, i64 984, !40, i64 992, !40, i64 1000, !40, i64 1008, !40, i64 1016, !40, i64 1024, !40, i64 1032, !40, i64 1040, !40, i64 1048}
!61 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !37, i64 24, !37, i64 104, !40, i64 160, !40, i64 168, !40, i64 176, !40, i64 184, !40, i64 192, !40, i64 200, !40, i64 208, !40, i64 216, !40, i64 224, !40, i64 232, !40, i64 240, !40, i64 248, !40, i64 256, !40, i64 264, !40, i64 272, !40, i64 280, !40, i64 288}
!62 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !40, i64 88, !40, i64 96, !40, i64 104, !40, i64 112}
!63 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40}
!64 = !{!"", !40, i64 0, !40, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !40, i64 48, !40, i64 56, !40, i64 64, !40, i64 72, !40, i64 80, !37, i64 88, !37, i64 136}
!65 = !{!"", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !40, i64 64}
!66 = !{!46, !40, i64 568}
!67 = !{!46, !40, i64 584}
!68 = !{!46, !36, i64 1844}
!69 = !{!46, !36, i64 1848}
!70 = !{!46, !36, i64 3336}
!71 = !{!46, !36, i64 664}
!72 = !{!46, !36, i64 668}
!73 = !{!46, !36, i64 100}
!74 = !{!46, !36, i64 112}
!75 = !{!46, !36, i64 3340}
!76 = !{!46, !36, i64 660}
!77 = !{!46, !40, i64 3200}
!78 = !{!46, !36, i64 644}
!79 = !{!46, !40, i64 3328}
!80 = !{!81, !36, i64 44}
!81 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !37, i64 72}
!82 = !{!46, !40, i64 7216}
!83 = !{!84, !36, i64 1084}
!84 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !37, i64 52, !36, i64 1076, !36, i64 1080, !36, i64 1084, !36, i64 1088, !36, i64 1092, !36, i64 1096, !36, i64 1100, !36, i64 1104, !85, i64 1108, !36, i64 1124, !86, i64 1128, !36, i64 1296}
!85 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!86 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !87, i64 84, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164}
!87 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!88 = !{!84, !36, i64 1088}
!89 = !{!46, !36, i64 16368}
!90 = !{!46, !36, i64 104}
!91 = !{!46, !36, i64 576}
!92 = !{!46, !36, i64 14612}
!93 = !{!46, !36, i64 552}
!94 = !{!46, !36, i64 528}
!95 = !{!46, !36, i64 556}
!96 = !{!46, !36, i64 1852}
!97 = !{!46, !36, i64 16}
!98 = !{!46, !36, i64 648}
!99 = !{!46, !36, i64 488}
!100 = !{!46, !36, i64 560}
!101 = !{!46, !36, i64 14616}
!102 = !{!46, !36, i64 80}
!103 = !{!46, !36, i64 14604}
!104 = !{!84, !36, i64 1288}
!105 = !{!46, !36, i64 14608}
!106 = !{!84, !36, i64 1292}
!107 = !{!46, !36, i64 14600}
!108 = !{!46, !36, i64 92}
!109 = !{!46, !36, i64 396}
!110 = !{!46, !36, i64 14672}
!111 = !{!46, !36, i64 388}
!112 = !{!46, !36, i64 14676}
!113 = !{!46, !36, i64 84}
!114 = !{!46, !36, i64 14592}
!115 = !{!46, !36, i64 14596}
!116 = !{!40, !40, i64 0}
!117 = !{!46, !40, i64 14416}
!118 = !{!46, !40, i64 14440}
!119 = !{!46, !36, i64 14696}
!120 = !{!46, !36, i64 14856}
!121 = !{!46, !36, i64 1872}
!122 = !{!46, !36, i64 1864}
!123 = !{!46, !36, i64 1876}
!124 = !{!46, !36, i64 1880}
!125 = !{!46, !36, i64 1868}
!126 = !{!46, !36, i64 0}
!127 = !{!46, !36, i64 128}
!128 = !{!46, !36, i64 136}
!129 = !{!46, !36, i64 25812}
!130 = !{!46, !36, i64 428}
!131 = !{!46, !40, i64 32520}
!132 = !{!46, !40, i64 32544}
!133 = !{!46, !40, i64 32568}
!134 = !{!46, !36, i64 412}
!135 = !{!136, !36, i64 16}
!136 = !{!"", !37, i64 0, !36, i64 16}
!137 = distinct !{!137, !138, !139}
!138 = !{!"llvm.loop.mustprogress"}
!139 = !{!"llvm.loop.unroll.disable"}
!140 = !{!46, !36, i64 496}
!141 = !{!46, !36, i64 500}
!142 = distinct !{!142, !138, !139}
!143 = !{!144, !144, i64 0}
!144 = !{!"short", !37, i64 0}
!145 = !{!36, !36, i64 0}
!146 = !{!46, !36, i64 1760}
!147 = !{!46, !36, i64 20}
!148 = !{!46, !36, i64 24}
!149 = !{!46, !36, i64 492}
!150 = !{!46, !42, i64 536}
!151 = !{!46, !36, i64 1776}
!152 = !{!46, !40, i64 1832}
!153 = !{!46, !36, i64 1840}
!154 = !{!46, !36, i64 4}
!155 = distinct !{!155, !138, !139}
!156 = distinct !{!156, !138, !139}
!157 = !{!46, !36, i64 692}
!158 = !{!46, !36, i64 8}
!159 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 12, i64 4, !145, i64 16, i64 4, !145, i64 20, i64 4, !145, i64 24, i64 4, !145, i64 28, i64 4, !145, i64 32, i64 4, !145, i64 36, i64 4, !145, i64 40, i64 4, !145, i64 44, i64 4, !145, i64 48, i64 4, !145, i64 52, i64 4, !145, i64 56, i64 4, !145, i64 60, i64 4, !145, i64 64, i64 4, !145, i64 68, i64 4, !145, i64 72, i64 4, !145, i64 76, i64 4, !145, i64 80, i64 4, !145, i64 84, i64 4, !145, i64 88, i64 4, !145, i64 92, i64 4, !145, i64 96, i64 4, !145, i64 100, i64 4, !145, i64 104, i64 4, !145, i64 108, i64 4, !145, i64 112, i64 4, !145, i64 116, i64 4, !145, i64 120, i64 4, !145, i64 124, i64 4, !145, i64 128, i64 4, !145, i64 132, i64 4, !145, i64 136, i64 4, !145, i64 140, i64 4, !145, i64 144, i64 4, !145, i64 152, i64 8, !116, i64 160, i64 16, !160, i64 176, i64 16, !160, i64 192, i64 16, !160, i64 208, i64 16, !160, i64 224, i64 64, !160, i64 288, i64 64, !160, i64 352, i64 8, !116, i64 360, i64 8, !116, i64 368, i64 4, !145, i64 372, i64 4, !145, i64 376, i64 8, !116, i64 384, i64 4, !145, i64 388, i64 4, !145, i64 392, i64 4, !145, i64 396, i64 4, !145, i64 400, i64 4, !145, i64 404, i64 4, !145, i64 408, i64 4, !145, i64 412, i64 4, !145, i64 416, i64 4, !145, i64 420, i64 4, !145, i64 424, i64 4, !145, i64 428, i64 4, !145, i64 432, i64 4, !145, i64 436, i64 4, !145, i64 440, i64 4, !145, i64 444, i64 4, !145, i64 448, i64 4, !145, i64 452, i64 4, !145, i64 456, i64 4, !161, i64 460, i64 4, !161, i64 464, i64 4, !145, i64 468, i64 8, !160, i64 476, i64 4, !145, i64 480, i64 4, !145, i64 488, i64 4, !145, i64 492, i64 4, !145, i64 496, i64 4, !145, i64 500, i64 4, !145, i64 504, i64 4, !145, i64 508, i64 4, !145, i64 512, i64 4, !161, i64 516, i64 4, !161, i64 520, i64 4, !161, i64 524, i64 4, !145, i64 528, i64 4, !145, i64 532, i64 4, !161, i64 536, i64 4, !161, i64 540, i64 4, !161, i64 544, i64 4, !145, i64 548, i64 4, !161, i64 552, i64 4, !145, i64 556, i64 4, !145, i64 560, i64 4, !145, i64 568, i64 8, !116, i64 576, i64 4, !145, i64 584, i64 8, !116, i64 592, i64 4, !161, i64 596, i64 4, !161, i64 600, i64 4, !161, i64 608, i64 8, !116, i64 616, i64 4, !145, i64 624, i64 8, !116, i64 632, i64 4, !145, i64 636, i64 4, !145, i64 640, i64 4, !145, i64 644, i64 4, !145, i64 648, i64 4, !145, i64 652, i64 4, !145, i64 656, i64 4, !145, i64 660, i64 4, !145, i64 664, i64 4, !145, i64 668, i64 4, !145, i64 672, i64 4, !145, i64 676, i64 4, !145, i64 680, i64 4, !145, i64 684, i64 4, !145, i64 688, i64 4, !145, i64 692, i64 4, !145, i64 696, i64 8, !116, i64 704, i64 1032, !160, i64 1736, i64 4, !145, i64 1740, i64 4, !145, i64 1744, i64 4, !145, i64 1748, i64 4, !145, i64 1752, i64 4, !145, i64 1760, i64 4, !145, i64 1764, i64 4, !145, i64 1768, i64 8, !116, i64 1776, i64 4, !145, i64 1784, i64 8, !116, i64 1792, i64 8, !116, i64 1800, i64 8, !116, i64 1808, i64 8, !116, i64 1816, i64 8, !162, i64 1824, i64 4, !145, i64 1828, i64 4, !145, i64 1832, i64 8, !116, i64 1840, i64 4, !145, i64 1844, i64 4, !145, i64 1848, i64 4, !145, i64 1852, i64 4, !145, i64 1856, i64 4, !145, i64 1860, i64 4, !145, i64 1864, i64 4, !145, i64 1868, i64 4, !145, i64 1872, i64 4, !145, i64 1876, i64 4, !145, i64 1880, i64 4, !145, i64 1884, i64 4, !145, i64 1888, i64 4, !145, i64 1892, i64 4, !145, i64 1896, i64 1300, !160, i64 3200, i64 8, !116, i64 3208, i64 120, !160, i64 3328, i64 8, !116, i64 3336, i64 4, !145, i64 3340, i64 4, !145, i64 3344, i64 32, !160, i64 3376, i64 16, !160, i64 3392, i64 32, !160, i64 3424, i64 16, !160, i64 3440, i64 32, !160, i64 3472, i64 16, !160, i64 3488, i64 32, !160, i64 3520, i64 16, !160, i64 3536, i64 736, !160, i64 4272, i64 2944, !160, i64 7216, i64 8, !116, i64 7232, i64 8, !116, i64 7240, i64 8, !116, i64 7248, i64 4, !145, i64 7252, i64 4, !145, i64 7256, i64 4, !145, i64 7260, i64 4, !145, i64 7264, i64 4, !145, i64 7268, i64 4, !145, i64 7272, i64 4, !145, i64 7276, i64 4, !145, i64 7280, i64 4, !145, i64 7284, i64 4, !145, i64 7288, i64 4, !145, i64 7292, i64 8, !160, i64 7300, i64 4, !145, i64 7304, i64 4, !145, i64 7308, i64 4, !145, i64 7312, i64 4, !145, i64 7316, i64 4, !145, i64 7320, i64 4, !145, i64 7324, i64 4, !145, i64 7328, i64 256, !160, i64 7584, i64 6144, !160, i64 13728, i64 4, !145, i64 13732, i64 4, !145, i64 13736, i64 128, !160, i64 13864, i64 4, !145, i64 13868, i64 4, !145, i64 13872, i64 4, !145, i64 13876, i64 4, !145, i64 13880, i64 4, !145, i64 13884, i64 4, !145, i64 13888, i64 4, !145, i64 13892, i64 4, !145, i64 13904, i64 4, !145, i64 13908, i64 4, !145, i64 13912, i64 4, !145, i64 13916, i64 4, !145, i64 13920, i64 8, !116, i64 13928, i64 8, !116, i64 13936, i64 8, !116, i64 13952, i64 4, !145, i64 13956, i64 460, !160, i64 14416, i64 8, !116, i64 14424, i64 16, !160, i64 14440, i64 8, !116, i64 14448, i64 144, !160, i64 14592, i64 4, !145, i64 14596, i64 4, !145, i64 14600, i64 4, !145, i64 14604, i64 4, !145, i64 14608, i64 4, !145, i64 14612, i64 4, !145, i64 14616, i64 4, !145, i64 14624, i64 8, !162, i64 14632, i64 8, !162, i64 14640, i64 16, !160, i64 14656, i64 8, !162, i64 14664, i64 8, !162, i64 14672, i64 4, !145, i64 14676, i64 4, !145, i64 14680, i64 8, !116, i64 14688, i64 8, !116, i64 14696, i64 4, !145, i64 14704, i64 152, !160, i64 14856, i64 4, !145, i64 14864, i64 152, !160, i64 15016, i64 8, !160, i64 15024, i64 4, !145, i64 15028, i64 4, !145, i64 15032, i64 8, !162, i64 15040, i64 32, !160, i64 15072, i64 16, !160, i64 15088, i64 512, !160, i64 15600, i64 768, !160, i64 16368, i64 4, !145, i64 16372, i64 4, !145, i64 16376, i64 4, !145, i64 16380, i64 4, !145, i64 16384, i64 4, !145, i64 16388, i64 4, !145, i64 16392, i64 4, !145, i64 16396, i64 4, !145, i64 16400, i64 4, !145, i64 16404, i64 4, !145, i64 16408, i64 4, !145, i64 16412, i64 4, !145, i64 16416, i64 4, !145, i64 16420, i64 4, !145, i64 16424, i64 4, !145, i64 16428, i64 4, !145, i64 16432, i64 4, !145, i64 16436, i64 4, !145, i64 16440, i64 8, !160, i64 16448, i64 8, !160, i64 16456, i64 8, !160, i64 16464, i64 8, !160, i64 16472, i64 8, !160, i64 16480, i64 8, !160, i64 16488, i64 4, !145, i64 16492, i64 16, !160, i64 16508, i64 64, !160, i64 16572, i64 4, !145, i64 16576, i64 4, !145, i64 16580, i64 4, !145, i64 16584, i64 4, !145, i64 16588, i64 4, !145, i64 16592, i64 4, !145, i64 16596, i64 4, !145, i64 16600, i64 4, !145, i64 16604, i64 4, !145, i64 16608, i64 4, !145, i64 16612, i64 4, !145, i64 16616, i64 8, !116, i64 16624, i64 8, !116, i64 16632, i64 8, !116, i64 16640, i64 8, !116, i64 16648, i64 8, !116, i64 16656, i64 8, !116, i64 16664, i64 8, !116, i64 16672, i64 16, !160, i64 16688, i64 16, !160, i64 16704, i64 16, !160, i64 16720, i64 512, !160, i64 17232, i64 8, !116, i64 17240, i64 8, !116, i64 17248, i64 8, !116, i64 17256, i64 128, !160, i64 17384, i64 4, !145, i64 17388, i64 4, !145, i64 17392, i64 4, !160, i64 17396, i64 4, !145, i64 17400, i64 4, !145, i64 17404, i64 4, !145, i64 17408, i64 4, !145, i64 17412, i64 4, !145, i64 17416, i64 4, !145, i64 17420, i64 4, !145, i64 17424, i64 4, !145, i64 17428, i64 4, !145, i64 17440, i64 384, !160, i64 17824, i64 864, !160, i64 18688, i64 256, !160, i64 18944, i64 256, !160, i64 19200, i64 384, !160, i64 19584, i64 480, !160, i64 20064, i64 16, !160, i64 20080, i64 16, !160, i64 20096, i64 4, !145, i64 20100, i64 4, !145, i64 20112, i64 512, !160, i64 20624, i64 512, !160, i64 21136, i64 72, !160, i64 21216, i64 128, !160, i64 21344, i64 24, !160, i64 21368, i64 24, !160, i64 21392, i64 24, !160, i64 21416, i64 8, !160, i64 21424, i64 3072, !160, i64 24496, i64 256, !160, i64 24752, i64 256, !160, i64 25008, i64 12, !160, i64 25024, i64 40, !160, i64 25072, i64 48, !160, i64 25120, i64 80, !160, i64 25200, i64 320, !160, i64 25520, i64 160, !160, i64 25680, i64 40, !160, i64 25720, i64 32, !160, i64 25752, i64 8, !160, i64 25760, i64 4, !145, i64 25764, i64 4, !160, i64 25768, i64 4, !145, i64 25772, i64 4, !145, i64 25776, i64 4, !145, i64 25780, i64 4, !145, i64 25792, i64 4, !145, i64 25796, i64 4, !145, i64 25800, i64 4, !145, i64 25804, i64 4, !145, i64 25808, i64 4, !145, i64 25812, i64 4, !145, i64 25816, i64 4, !145, i64 25820, i64 4, !145, i64 25824, i64 16, !160, i64 25840, i64 4, !145, i64 25844, i64 4, !145, i64 25848, i64 512, !160, i64 26360, i64 8, !116, i64 26368, i64 256, !160, i64 26624, i64 8, !116, i64 26632, i64 18, !160, i64 26652, i64 4, !145, i64 26656, i64 34, !160, i64 26704, i64 8, !116, i64 26712, i64 4, !145, i64 26716, i64 4, !145, i64 26720, i64 4, !145, i64 26724, i64 76, !160, i64 26800, i64 4, !145, i64 26804, i64 4, !145, i64 26808, i64 4, !145, i64 26812, i64 8, !160, i64 26820, i64 256, !160, i64 27076, i64 68, !160, i64 27144, i64 24, !160, i64 27168, i64 208, !160, i64 27376, i64 8, !160, i64 27384, i64 24, !160, i64 27408, i64 8, !163, i64 27416, i64 20, !160, i64 27440, i64 40, !160, i64 27480, i64 40, !160, i64 27520, i64 68, !160, i64 27592, i64 40, !160, i64 27632, i64 40, !160, i64 27672, i64 40, !160, i64 27712, i64 40, !160, i64 27752, i64 40, !160, i64 27792, i64 40, !160, i64 27832, i64 760, !160, i64 28592, i64 272, !160, i64 28864, i64 16, !160, i64 28880, i64 1024, !160, i64 29904, i64 48, !160, i64 29952, i64 416, !160, i64 30368, i64 8, !160, i64 30376, i64 8, !160, i64 30384, i64 12, !160, i64 30400, i64 512, !160, i64 30912, i64 256, !160, i64 31168, i64 8, !160, i64 31176, i64 8, !116, i64 31184, i64 48, !160, i64 31232, i64 16, !160, i64 31248, i64 56, !160, i64 31304, i64 56, !160, i64 31360, i64 96, !160, i64 31456, i64 96, !160, i64 31552, i64 8, !116, i64 31560, i64 56, !160, i64 31616, i64 56, !160, i64 31672, i64 56, !160, i64 31728, i64 56, !160, i64 31784, i64 32, !160, i64 31816, i64 56, !160, i64 31872, i64 56, !160, i64 31928, i64 56, !160, i64 31984, i64 56, !160, i64 32040, i64 56, !160, i64 32096, i64 56, !160, i64 32152, i64 8, !116, i64 32160, i64 32, !160, i64 32192, i64 32, !160, i64 32224, i64 8, !116, i64 32232, i64 8, !116, i64 32240, i64 56, !160, i64 32296, i64 56, !160, i64 32352, i64 56, !160, i64 32408, i64 56, !160, i64 32464, i64 56, !160, i64 32520, i64 8, !116, i64 32528, i64 8, !116, i64 32536, i64 8, !116, i64 32544, i64 8, !116, i64 32552, i64 8, !116, i64 32560, i64 8, !116, i64 32568, i64 8, !116, i64 32576, i64 8, !116, i64 32584, i64 8, !116, i64 32592, i64 8, !116, i64 32600, i64 8, !116, i64 32608, i64 8, !116, i64 32616, i64 8, !116, i64 32624, i64 8, !116, i64 32632, i64 8, !116, i64 32640, i64 80, !160, i64 32720, i64 56, !160, i64 32776, i64 8, !116, i64 32784, i64 8, !116, i64 32792, i64 8, !116, i64 32800, i64 8, !116, i64 32808, i64 8, !116, i64 32816, i64 8, !116, i64 32824, i64 8, !116, i64 32832, i64 8, !116, i64 32840, i64 8, !116, i64 32848, i64 8, !116, i64 32856, i64 8, !116, i64 32864, i64 8, !116, i64 32872, i64 8, !116, i64 32880, i64 8, !116, i64 32888, i64 8, !116, i64 32896, i64 8, !116, i64 32904, i64 8, !116, i64 32912, i64 8, !116, i64 32920, i64 8, !116, i64 32928, i64 8, !116, i64 32936, i64 8, !116, i64 32944, i64 8, !116, i64 32952, i64 8, !116, i64 32960, i64 8, !116, i64 32968, i64 8, !116, i64 32976, i64 8, !116, i64 32984, i64 8, !116, i64 32992, i64 8, !116, i64 33000, i64 8, !116, i64 33008, i64 8, !116, i64 33016, i64 8, !116, i64 33024, i64 8, !116, i64 33032, i64 8, !116, i64 33040, i64 8, !116, i64 33048, i64 8, !116, i64 33056, i64 8, !116, i64 33064, i64 8, !116, i64 33072, i64 8, !116, i64 33080, i64 8, !116, i64 33088, i64 8, !116, i64 33096, i64 8, !116, i64 33104, i64 8, !116, i64 33112, i64 8, !116, i64 33120, i64 8, !116, i64 33128, i64 8, !116, i64 33136, i64 8, !116, i64 33144, i64 8, !116, i64 33152, i64 8, !116, i64 33160, i64 8, !116, i64 33168, i64 48, !160, i64 33216, i64 40, !160, i64 33256, i64 16, !160, i64 33272, i64 16, !160, i64 33288, i64 16, !160, i64 33304, i64 16, !160, i64 33320, i64 8, !116, i64 33328, i64 8, !116}
!160 = !{!37, !37, i64 0}
!161 = !{!42, !42, i64 0}
!162 = !{!49, !49, i64 0}
!163 = !{!59, !59, i64 0}
!164 = !{!46, !40, i64 14688}
!165 = !{!46, !40, i64 1784}
!166 = !{!46, !40, i64 1768}
!167 = !{!46, !36, i64 1764}
!168 = distinct !{!168, !138, !139}
!169 = !{!46, !36, i64 40}
!170 = !{!84, !36, i64 1232}
!171 = !{!84, !36, i64 1236}
!172 = !{!46, !40, i64 376}
!173 = !{!84, !36, i64 4}
!174 = !{!84, !36, i64 8}
!175 = !{!46, !36, i64 28}
!176 = !{!46, !36, i64 416}
!177 = !{!46, !36, i64 504}
!178 = !{!46, !42, i64 592}
!179 = !{!46, !42, i64 540}
!180 = !{!46, !42, i64 512}
!181 = !{!46, !36, i64 508}
!182 = !{!46, !36, i64 144}
!183 = !{!46, !36, i64 476}
!184 = !{!46, !36, i64 480}
!185 = !{!46, !36, i64 408}
!186 = !{!46, !36, i64 440}
!187 = !{!46, !36, i64 444}
!188 = !{!46, !36, i64 452}
!189 = !{!46, !36, i64 464}
!190 = !{!46, !36, i64 392}
!191 = !{!46, !36, i64 544}
!192 = !{!46, !36, i64 524}
!193 = !{!46, !36, i64 684}
!194 = !{!46, !36, i64 688}
!195 = !{!46, !36, i64 404}
!196 = !{!46, !36, i64 96}
!197 = !{!46, !36, i64 108}
!198 = !{!46, !36, i64 400}
!199 = !{!46, !36, i64 88}
!200 = !{!46, !36, i64 652}
!201 = !{!46, !36, i64 656}
!202 = !{!46, !36, i64 120}
!203 = !{!46, !36, i64 124}
!204 = !{!46, !36, i64 132}
!205 = !{!46, !36, i64 436}
!206 = !{!46, !36, i64 384}
!207 = !{!46, !42, i64 456}
!208 = !{!46, !42, i64 460}
!209 = !{!46, !36, i64 16428}
!210 = !{!46, !36, i64 16432}
!211 = !{!46, !42, i64 548}
!212 = !{!46, !36, i64 32}
!213 = !{!214, !36, i64 0}
!214 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48}
!215 = distinct !{!215, !138, !139}
!216 = !{!46, !36, i64 420}
!217 = !{!214, !36, i64 24}
!218 = !{!46, !36, i64 424}
!219 = !{!46, !42, i64 596}
!220 = !{!46, !42, i64 600}
!221 = !{!46, !36, i64 368}
!222 = !{!46, !36, i64 676}
!223 = !{!46, !36, i64 140}
!224 = !{!46, !36, i64 116}
!225 = !{!46, !36, i64 12}
!226 = !{!46, !36, i64 372}
!227 = !{!46, !36, i64 632}
!228 = !{!46, !36, i64 636}
!229 = !{!46, !36, i64 640}
!230 = !{!46, !36, i64 680}
!231 = !{!46, !36, i64 432}
!232 = !{!46, !36, i64 448}
!233 = !{!35, !36, i64 48}
!234 = !{!35, !36, i64 44}
!235 = !{!46, !36, i64 48}
!236 = !{!46, !36, i64 44}
!237 = distinct !{!237, !138, !139}
!238 = !{!46, !36, i64 1744}
!239 = !{!35, !36, i64 80}
!240 = !{!35, !36, i64 108}
!241 = !{!35, !36, i64 92}
!242 = !{!35, !36, i64 116}
!243 = !{!35, !36, i64 120}
!244 = !{!35, !36, i64 124}
!245 = !{!35, !36, i64 388}
!246 = !{!35, !36, i64 384}
!247 = !{!35, !36, i64 404}
!248 = !{!35, !36, i64 416}
!249 = !{!35, !36, i64 452}
!250 = !{!35, !36, i64 428}
!251 = !{!35, !36, i64 440}
!252 = !{!35, !36, i64 432}
!253 = !{!35, !36, i64 448}
!254 = !{!35, !36, i64 444}
!255 = !{!35, !36, i64 436}
!256 = !{!35, !42, i64 456}
!257 = !{!35, !42, i64 460}
!258 = !{!35, !36, i64 412}
!259 = !{!81, !36, i64 60}
!260 = !{!35, !36, i64 392}
!261 = !{!35, !36, i64 112}
!262 = !{!35, !36, i64 684}
!263 = !{!35, !36, i64 688}
!264 = !{!35, !36, i64 692}
!265 = !{!35, !36, i64 524}
!266 = !{!35, !36, i64 528}
!267 = !{!35, !36, i64 508}
!268 = !{!35, !42, i64 512}
!269 = !{!46, !42, i64 516}
!270 = !{!35, !42, i64 516}
!271 = !{!48, !40, i64 0}
!272 = !{!48, !40, i64 8}
!273 = !{!48, !40, i64 16}
!274 = !{!48, !36, i64 32}
!275 = !{!48, !49, i64 24}
!276 = !{!277, !36, i64 0}
!277 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !40, i64 16}
!278 = !{!277, !36, i64 4}
!279 = !{!277, !36, i64 8}
!280 = !{!277, !40, i64 16}
!281 = distinct !{!281, !138, !139}
!282 = distinct !{!282, !138, !139}
!283 = distinct !{!283, !138, !139}
!284 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 16, i64 8, !162, i64 24, i64 8, !162, i64 32, i64 4, !145, i64 36, i64 4, !145, i64 40, i64 4, !145, i64 44, i64 4, !145, i64 48, i64 8, !116, i64 56, i64 4, !145, i64 60, i64 4, !145, i64 64, i64 4, !145, i64 68, i64 4, !145, i64 72, i64 4, !145, i64 76, i64 4, !145, i64 80, i64 4, !145, i64 84, i64 1, !160, i64 85, i64 1, !160, i64 86, i64 1, !160, i64 88, i64 4, !161, i64 92, i64 4, !161, i64 96, i64 4, !145, i64 100, i64 4, !145, i64 104, i64 12, !160, i64 116, i64 12, !160, i64 128, i64 12, !160, i64 140, i64 4, !145, i64 144, i64 4, !145, i64 148, i64 4, !145, i64 152, i64 24, !160, i64 176, i64 32, !160, i64 208, i64 32, !160, i64 240, i64 8, !116, i64 248, i64 32, !160, i64 280, i64 32, !160, i64 320, i64 3072, !160, i64 3392, i64 128, !160, i64 3520, i64 4, !145, i64 3528, i64 8, !116, i64 3536, i64 8, !116, i64 3544, i64 8, !116, i64 3552, i64 16, !160, i64 3568, i64 8, !116, i64 3576, i64 272, !160, i64 3848, i64 2592, !160, i64 6440, i64 272, !160, i64 6712, i64 16, !160, i64 6728, i64 8, !160, i64 6736, i64 128, !160, i64 6864, i64 4, !160, i64 6868, i64 1296, !160, i64 8164, i64 1296, !160, i64 9460, i64 4, !145, i64 9464, i64 72, !160, i64 9536, i64 2592, !160, i64 12128, i64 8, !116, i64 12136, i64 8, !116, i64 12144, i64 8, !116, i64 12152, i64 8, !116, i64 12160, i64 8, !116, i64 12168, i64 4, !145, i64 12176, i64 8, !116, i64 12184, i64 8, !116, i64 12192, i64 8, !116, i64 12200, i64 4, !145, i64 12204, i64 72, !160, i64 12276, i64 4, !145, i64 12280, i64 8, !162, i64 12288, i64 8, !163, i64 12296, i64 8, !163, i64 12304, i64 8, !163, i64 12312, i64 8, !163, i64 12320, i64 251, !160, i64 12572, i64 1004, !160, i64 13576, i64 2008, !160, i64 15584, i64 4, !145, i64 15588, i64 4, !145, i64 15592, i64 4, !145, i64 15596, i64 4, !145, i64 15600, i64 4, !145, i64 15604, i64 4, !145, i64 15608, i64 4, !145, i64 15612, i64 4, !161, i64 15616, i64 4, !145, i64 15620, i64 4, !145, i64 15624, i64 4, !145}
!285 = !{!286, !36, i64 15600}
!286 = !{!"x264_frame", !36, i64 0, !36, i64 4, !36, i64 8, !49, i64 16, !49, i64 24, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !40, i64 48, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !37, i64 84, !37, i64 85, !37, i64 86, !42, i64 88, !42, i64 92, !36, i64 96, !36, i64 100, !37, i64 104, !37, i64 116, !37, i64 128, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !37, i64 176, !37, i64 208, !40, i64 240, !37, i64 248, !37, i64 280, !37, i64 320, !37, i64 3392, !36, i64 3520, !40, i64 3528, !40, i64 3536, !40, i64 3544, !37, i64 3552, !40, i64 3568, !37, i64 3576, !37, i64 3848, !37, i64 6440, !37, i64 6712, !37, i64 6728, !37, i64 6736, !37, i64 6864, !37, i64 6868, !37, i64 8164, !36, i64 9460, !37, i64 9464, !37, i64 9536, !40, i64 12128, !40, i64 12136, !40, i64 12144, !40, i64 12152, !40, i64 12160, !36, i64 12168, !40, i64 12176, !40, i64 12184, !40, i64 12192, !36, i64 12200, !37, i64 12204, !36, i64 12276, !49, i64 12280, !287, i64 12288, !37, i64 12320, !37, i64 12572, !37, i64 13576, !36, i64 15584, !36, i64 15588, !36, i64 15592, !36, i64 15596, !36, i64 15600, !36, i64 15604, !36, i64 15608, !42, i64 15612, !36, i64 15616, !36, i64 15620, !36, i64 15624}
!287 = !{!"", !59, i64 0, !59, i64 8, !59, i64 16, !59, i64 24}
!288 = !{!286, !40, i64 3528}
!289 = !{!286, !36, i64 3520}
!290 = !{!46, !40, i64 14680}
!291 = !{!46, !36, i64 1892}
!292 = distinct !{!292, !138, !139}
!293 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 12, i64 4, !145, i64 16, i64 4, !145, i64 20, i64 4, !145, i64 24, i64 4, !145, i64 28, i64 4, !145, i64 32, i64 4, !145, i64 36, i64 4, !145, i64 40, i64 4, !145, i64 44, i64 4, !145, i64 48, i64 4, !145, i64 52, i64 4, !145, i64 56, i64 4, !145, i64 60, i64 4, !145, i64 64, i64 4, !145, i64 68, i64 4, !145, i64 72, i64 4, !145, i64 76, i64 4, !145, i64 80, i64 4, !145, i64 84, i64 4, !145, i64 88, i64 4, !145, i64 92, i64 4, !145, i64 96, i64 4, !145, i64 100, i64 4, !145, i64 104, i64 4, !145, i64 108, i64 4, !145, i64 112, i64 4, !145, i64 116, i64 4, !145, i64 120, i64 4, !145, i64 124, i64 4, !145, i64 128, i64 4, !145, i64 132, i64 4, !145, i64 136, i64 4, !145, i64 140, i64 4, !145, i64 144, i64 4, !145, i64 152, i64 8, !116, i64 160, i64 16, !160, i64 176, i64 16, !160, i64 192, i64 16, !160, i64 208, i64 16, !160, i64 224, i64 64, !160, i64 288, i64 64, !160, i64 352, i64 8, !116, i64 360, i64 8, !116, i64 368, i64 4, !145, i64 372, i64 4, !145, i64 376, i64 8, !116, i64 384, i64 4, !145, i64 388, i64 4, !145, i64 392, i64 4, !145, i64 396, i64 4, !145, i64 400, i64 4, !145, i64 404, i64 4, !145, i64 408, i64 4, !145, i64 412, i64 4, !145, i64 416, i64 4, !145, i64 420, i64 4, !145, i64 424, i64 4, !145, i64 428, i64 4, !145, i64 432, i64 4, !145, i64 436, i64 4, !145, i64 440, i64 4, !145, i64 444, i64 4, !145, i64 448, i64 4, !145, i64 452, i64 4, !145, i64 456, i64 4, !161, i64 460, i64 4, !161, i64 464, i64 4, !145, i64 468, i64 8, !160, i64 476, i64 4, !145, i64 480, i64 4, !145, i64 488, i64 4, !145, i64 492, i64 4, !145, i64 496, i64 4, !145, i64 500, i64 4, !145, i64 504, i64 4, !145, i64 508, i64 4, !145, i64 512, i64 4, !161, i64 516, i64 4, !161, i64 520, i64 4, !161, i64 524, i64 4, !145, i64 528, i64 4, !145, i64 532, i64 4, !161, i64 536, i64 4, !161, i64 540, i64 4, !161, i64 544, i64 4, !145, i64 548, i64 4, !161, i64 552, i64 4, !145, i64 556, i64 4, !145, i64 560, i64 4, !145, i64 568, i64 8, !116, i64 576, i64 4, !145, i64 584, i64 8, !116, i64 592, i64 4, !161, i64 596, i64 4, !161, i64 600, i64 4, !161, i64 608, i64 8, !116, i64 616, i64 4, !145, i64 624, i64 8, !116, i64 632, i64 4, !145, i64 636, i64 4, !145, i64 640, i64 4, !145, i64 644, i64 4, !145, i64 648, i64 4, !145, i64 652, i64 4, !145, i64 656, i64 4, !145, i64 660, i64 4, !145, i64 664, i64 4, !145, i64 668, i64 4, !145, i64 672, i64 4, !145, i64 676, i64 4, !145, i64 680, i64 4, !145, i64 684, i64 4, !145, i64 688, i64 4, !145, i64 692, i64 4, !145, i64 696, i64 8, !116}
!294 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 12, i64 76, !160, i64 88, i64 4, !145, i64 92, i64 4, !145, i64 96, i64 4, !145, i64 100, i64 8, !160, i64 108, i64 256, !160, i64 364, i64 68, !160, i64 432, i64 24, !160, i64 456, i64 208, !160, i64 664, i64 8, !160, i64 672, i64 24, !160, i64 696, i64 8, !163, i64 704, i64 20, !160, i64 728, i64 40, !160, i64 768, i64 40, !160, i64 808, i64 68, !160, i64 880, i64 40, !160, i64 920, i64 40, !160, i64 960, i64 40, !160, i64 1000, i64 40, !160, i64 1040, i64 40, !160, i64 1080, i64 40, !160, i64 1120, i64 760, !160, i64 1880, i64 272, !160, i64 2152, i64 16, !160, i64 2168, i64 1024, !160, i64 3192, i64 48, !160, i64 3240, i64 416, !160, i64 3656, i64 8, !160, i64 3664, i64 8, !160, i64 3672, i64 12, !160}
!295 = distinct !{!295, !138, !139}
!296 = !{!286, !36, i64 72}
!297 = !{!46, !36, i64 13732}
!298 = !{!84, !36, i64 1076}
!299 = distinct !{!299, !138, !139}
!300 = !{!286, !36, i64 0}
!301 = !{!302, !36, i64 4}
!302 = !{!"", !36, i64 0, !36, i64 4}
!303 = distinct !{!303, !138, !139}
!304 = !{!286, !36, i64 15592}
!305 = !{!286, !36, i64 56}
!306 = !{!286, !49, i64 16}
!307 = !{!46, !49, i64 14624}
!308 = !{!46, !49, i64 14656}
!309 = !{!46, !49, i64 14664}
!310 = !{!286, !36, i64 76}
!311 = !{!286, !40, i64 48}
!312 = !{!35, !36, i64 136}
!313 = !{!35, !36, i64 672}
!314 = !{!315, !36, i64 0}
!315 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !49, i64 16, !49, i64 24, !40, i64 32, !316, i64 40, !287, i64 96, !40, i64 128}
!316 = !{!"", !36, i64 0, !36, i64 4, !37, i64 8, !37, i64 24}
!317 = !{!46, !40, i64 33328}
!318 = !{!319, !37, i64 0}
!319 = !{!"x264_lookahead_t", !37, i64 0, !37, i64 1, !37, i64 2, !36, i64 4, !36, i64 8, !40, i64 16, !320, i64 24, !320, i64 56, !320, i64 88}
!320 = !{!"", !40, i64 0, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24}
!321 = !{!286, !49, i64 24}
!322 = !{!46, !49, i64 15032}
!323 = !{!286, !36, i64 80}
!324 = !{!286, !36, i64 4}
!325 = !{!46, !36, i64 13728}
!326 = !{!46, !36, i64 7248}
!327 = distinct !{!327, !138, !139}
!328 = !{!286, !36, i64 60}
!329 = distinct !{!329, !138, !139}
!330 = !{!286, !36, i64 68}
!331 = !{!302, !36, i64 0}
!332 = distinct !{!332, !138, !139}
!333 = distinct !{!333, !138, !139}
!334 = distinct !{!334, !138, !139}
!335 = distinct !{!335, !138, !139}
!336 = distinct !{!336, !138, !139}
!337 = distinct !{!337, !138, !139}
!338 = distinct !{!338, !138, !139}
!339 = distinct !{!339, !138, !139}
!340 = !{!341, !40, i64 48}
!341 = !{!"x264_weight_t", !37, i64 0, !37, i64 16, !36, i64 32, !36, i64 36, !36, i64 40, !40, i64 48}
!342 = !{!341, !36, i64 32}
!343 = !{!341, !36, i64 36}
!344 = !{!341, !36, i64 40}
!345 = !{!46, !40, i64 32896}
!346 = !{i64 0, i64 16, !160, i64 16, i64 16, !160, i64 32, i64 4, !145, i64 36, i64 4, !145, i64 40, i64 4, !145, i64 48, i64 8, !116}
!347 = !{!46, !36, i64 26652}
!348 = distinct !{!348, !138, !139}
!349 = !{!46, !36, i64 1856}
!350 = !{!46, !36, i64 1860}
!351 = !{!286, !36, i64 15624}
!352 = !{!286, !42, i64 15612}
!353 = !{!286, !36, i64 15616}
!354 = !{!286, !36, i64 15620}
!355 = !{!84, !36, i64 1260}
!356 = !{!84, !36, i64 1204}
!357 = !{!286, !36, i64 8}
!358 = !{!315, !36, i64 4}
!359 = !{!286, !36, i64 96}
!360 = !{!286, !36, i64 15596}
!361 = !{!46, !36, i64 7268}
!362 = distinct !{!362, !138, !139}
!363 = distinct !{!363, !138, !139}
!364 = distinct !{!364, !138, !139}
!365 = distinct !{!365, !138, !139}
!366 = !{!46, !36, i64 7312}
!367 = !{!46, !36, i64 7316}
!368 = !{!81, !36, i64 20}
!369 = !{!81, !36, i64 24}
!370 = !{!46, !36, i64 7308}
!371 = !{!46, !36, i64 7264}
!372 = !{!84, !36, i64 28}
!373 = !{!46, !36, i64 7284}
!374 = !{!46, !36, i64 672}
!375 = !{!46, !36, i64 7288}
!376 = !{!46, !36, i64 1748}
!377 = !{!46, !36, i64 1752}
!378 = !{!46, !36, i64 1740}
!379 = !{!46, !36, i64 7252}
!380 = !{!46, !36, i64 7256}
!381 = distinct !{!381, !138, !139}
!382 = distinct !{!382, !138, !139}
!383 = distinct !{!383, !138, !139}
!384 = distinct !{!384, !138, !139}
!385 = !{i64 0, i64 4, !145, i64 4, i64 4, !145, i64 8, i64 4, !145, i64 16, i64 8, !116}
!386 = distinct !{!386, !138, !139}
!387 = distinct !{!387, !138, !139}
!388 = !{!46, !59, i64 27408}
!389 = distinct !{!389, !138, !139}
!390 = distinct !{!390, !138, !139}
!391 = !{!46, !36, i64 17424}
!392 = !{!46, !36, i64 13884}
!393 = !{!50, !36, i64 20}
!394 = !{!46, !36, i64 25800}
!395 = !{!46, !36, i64 13868}
!396 = !{!81, !36, i64 36}
!397 = !{!46, !36, i64 13872}
!398 = !{!50, !36, i64 36}
!399 = !{!50, !36, i64 16}
!400 = !{!50, !36, i64 28}
!401 = !{!50, !40, i64 0}
!402 = !{!84, !36, i64 24}
!403 = !{!50, !36, i64 32}
!404 = !{!84, !36, i64 1092}
!405 = !{!50, !36, i64 40}
!406 = !{!50, !36, i64 44}
!407 = !{!50, !36, i64 48}
!408 = !{!84, !36, i64 32}
!409 = !{!50, !36, i64 52}
!410 = !{!50, !40, i64 8}
!411 = !{!81, !36, i64 12}
!412 = !{!50, !36, i64 56}
!413 = !{!84, !36, i64 36}
!414 = !{!81, !36, i64 56}
!415 = !{!50, !36, i64 68}
!416 = !{!50, !36, i64 72}
!417 = !{!50, !36, i64 76}
!418 = !{!50, !36, i64 80}
!419 = !{!50, !36, i64 84}
!420 = !{!50, !36, i64 88}
!421 = distinct !{!421, !138, !139}
!422 = !{!50, !36, i64 92}
!423 = distinct !{!423, !138, !139}
!424 = !{!81, !36, i64 28}
!425 = distinct !{!425, !138, !139}
!426 = distinct !{!426, !138, !139}
!427 = !{!50, !36, i64 6500}
!428 = distinct !{!428, !138, !139}
!429 = !{!81, !36, i64 8}
!430 = !{!50, !36, i64 6632}
!431 = !{!50, !36, i64 6640}
!432 = !{!81, !36, i64 48}
!433 = !{!50, !36, i64 6652}
!434 = !{!50, !36, i64 6656}
!435 = !{!50, !36, i64 6660}
!436 = !{!46, !36, i64 13864}
!437 = !{!46, !40, i64 1800}
!438 = !{!46, !40, i64 1808}
!439 = !{!46, !36, i64 25804}
!440 = !{!51, !40, i64 24}
!441 = !{!51, !40, i64 16}
!442 = !{!51, !36, i64 12}
!443 = !{!51, !36, i64 8}
!444 = !{i64 0, i64 8, !116, i64 8, i64 8, !116, i64 16, i64 8, !116, i64 24, i64 8, !162, i64 32, i64 4, !145, i64 36, i64 4, !145}
!445 = !{!46, !40, i64 13936}
!446 = !{!46, !40, i64 13928}
!447 = !{!46, !40, i64 32816}
!448 = !{!46, !40, i64 1792}
!449 = !{!46, !40, i64 13920}
!450 = distinct !{!450, !138, !139}
!451 = !{!46, !36, i64 17384}
!452 = !{!46, !36, i64 17388}
!453 = distinct !{!453, !138, !139}
!454 = distinct !{!454, !138, !139}
!455 = distinct !{!455, !138, !139}
!456 = !{!46, !36, i64 17400}
!457 = !{!46, !36, i64 17404}
!458 = !{!46, !36, i64 17396}
!459 = !{!46, !36, i64 17408}
!460 = distinct !{!460, !138, !139}
!461 = distinct !{!461, !138, !139}
!462 = !{!46, !36, i64 17412}
!463 = !{!46, !36, i64 16388}
!464 = !{!46, !36, i64 16384}
!465 = !{!46, !40, i64 16616}
!466 = !{!46, !36, i64 16392}
!467 = !{!46, !40, i64 33320}
!468 = distinct !{!468, !138, !139}
!469 = !{!46, !36, i64 26716}
!470 = !{!46, !36, i64 26712}
!471 = !{!46, !36, i64 26720}
!472 = distinct !{!472, !138, !139}
!473 = !{!46, !36, i64 15024}
!474 = distinct !{!474, !138, !139}
!475 = !{!315, !36, i64 12}
!476 = !{!315, !49, i64 16}
!477 = !{!46, !49, i64 14632}
!478 = !{!315, !49, i64 24}
!479 = !{!286, !36, i64 100}
!480 = !{!315, !36, i64 44}
!481 = distinct !{!481, !138, !139}
!482 = !{i64 0, i64 8, !163, i64 8, i64 8, !163, i64 16, i64 8, !163, i64 24, i64 8, !163}
!483 = distinct !{!483, !138, !139}
!484 = !{!286, !42, i64 92}
!485 = distinct !{!485, !138, !139}
!486 = distinct !{!486, !138, !139}
!487 = distinct !{!487, !138, !139}
!488 = distinct !{!488, !138, !139}
!489 = distinct !{!489, !138, !139}
!490 = distinct !{!490, !138, !139}
!491 = distinct !{!491, !138, !139}
!492 = distinct !{!492, !138, !139}
!493 = distinct !{!493, !138, !139}
!494 = !{!46, !36, i64 7304}
!495 = !{!46, !36, i64 25820}
!496 = distinct !{!496, !138, !139}
!497 = distinct !{!497, !138, !139}
!498 = !{!46, !36, i64 26800}
!499 = !{!46, !36, i64 26804}
!500 = !{!46, !36, i64 26808}
!501 = distinct !{!501, !138, !139}
!502 = !{!46, !36, i64 36}
!503 = distinct !{!503, !138, !139}
!504 = distinct !{!504, !138, !139}
!505 = distinct !{!505, !138, !139}
!506 = distinct !{!506, !138, !139}
!507 = distinct !{!507, !138, !139}
!508 = distinct !{!508, !138, !139}
!509 = distinct !{!509, !138, !139}
!510 = distinct !{!510, !138, !139}
!511 = distinct !{!511, !138, !139}
!512 = distinct !{!512, !138, !139}
!513 = distinct !{!513, !138, !139}
!514 = distinct !{!514, !138, !139}
!515 = distinct !{!515, !138, !139}
!516 = distinct !{!516, !138, !139}
!517 = distinct !{!517, !138, !139}
!518 = distinct !{!518, !138, !139}
!519 = distinct !{!519, !138, !139}
!520 = distinct !{!520, !138, !139}
!521 = distinct !{!521, !138, !139}
!522 = distinct !{!522, !138, !139}
!523 = distinct !{!523, !138, !139}
!524 = distinct !{!524, !138, !139}
!525 = distinct !{!525, !138, !139}
!526 = !{!319, !36, i64 36}
!527 = !{!319, !36, i64 68}
!528 = !{!319, !36, i64 100}
!529 = distinct !{!529, !138, !139}
!530 = !{!50, !36, i64 24}
!531 = !{!81, !36, i64 0}
!532 = !{!46, !36, i64 25816}
!533 = distinct !{!533, !138, !139}
!534 = !{!35, !36, i64 132}
!535 = !{!50, !36, i64 6636}
!536 = !{!50, !36, i64 6644}
!537 = !{!50, !36, i64 6648}
!538 = !{!46, !36, i64 25808}
!539 = !{!35, !36, i64 8}
!540 = distinct !{!540, !138, !139}
!541 = distinct !{!541, !138, !139}
!542 = distinct !{!542, !138, !139}
!543 = distinct !{!543, !138, !139}
!544 = !{!46, !40, i64 31176}
