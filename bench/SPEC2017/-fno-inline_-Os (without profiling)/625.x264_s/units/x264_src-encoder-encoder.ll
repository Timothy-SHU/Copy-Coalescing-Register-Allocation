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

@tga_dump_rate = dso_local local_unnamed_addr global i32 0, align 4
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
@.str.23 = private unnamed_addr constant [32 x i8] c"invalid width x height (%dx%d)\0A\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"width or height not divisible by 2 (%dx%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"invalid CSP (only I420/YV12 supported)\0A\00", align 1
@.str.26 = private unnamed_addr constant [36 x i8] c"not compiled with pthread support!\0A\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"interlace + me=esa is not implemented\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"interlace + weightp is not implemented\0A\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"broken ffmpeg default settings detected\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"use an encoding preset (vpre)\0A\00", align 1
@.str.31 = private unnamed_addr constant [33 x i8] c"no ratecontrol method specified\0A\00", align 1
@.str.32 = private unnamed_addr constant [48 x i8] c"VBV is incompatible with constant QP, ignored.\0A\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"VBV maxrate unspecified, assuming CBR\0A\00", align 1
@.str.34 = private unnamed_addr constant [50 x i8] c"VBV bufsize set but maxrate unspecified, ignored\0A\00", align 1
@.str.35 = private unnamed_addr constant [53 x i8] c"max bitrate less than average bitrate, assuming CBR\0A\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"VBV maxrate specified, but no bufsize, ignored\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"interlaced + slice-max-size is not implemented\0A\00", align 1
@.str.38 = private unnamed_addr constant [47 x i8] c"interlaced + slice-max-mbs is not implemented\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"subme=0 + direct=temporal is not supported\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"b-pyramid normal + intra-refresh is not supported\0A\00", align 1
@.str.41 = private unnamed_addr constant [42 x i8] c"ref > 1 + intra-refresh is not supported\0A\00", align 1
@x264_levels = external local_unnamed_addr constant [0 x %struct.x264_level_t], align 4
@.str.42 = private unnamed_addr constant [23 x i8] c"invalid level_idc: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"using mv_range_thread = %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [43 x i8] c"NAL HRD parameters require VBV parameters\0A\00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"CBR HRD requires constant bitrate\0A\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"cannot create valid sample aspect ratio\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"using SAR=%d/%d\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"non-strictly-monotonic PTS\0A\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c"invalid DTS: PTS is less than DTS\0A\00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c" PSNR Y:%5.2f U:%5.2f V:%5.2f\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c" SSIM Y:%.5f\00", align 1
@.str.52 = private unnamed_addr constant [84 x i8] c"frame=%4d QP=%.2f NAL=%d Slice:%c Poc:%-3d I:%-4d P:%-4d SKIP:%-4d size=%d bytes%s\0A\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"frame_%d.yuv\00", align 1
@seek_val = external local_unnamed_addr global i32, align 4
@.str.54 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@weight_none = external constant [3 x %struct.x264_weight_t], align 16
@x264_scan8 = internal unnamed_addr constant [27 x i32] [i32 12, i32 13, i32 20, i32 21, i32 14, i32 15, i32 22, i32 23, i32 28, i32 29, i32 36, i32 37, i32 30, i32 31, i32 38, i32 39, i32 9, i32 10, i32 17, i32 18, i32 33, i32 34, i32 41, i32 42, i32 44, i32 46, i32 47], align 16
@x264_mb_pred_mode8x8c_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\00\00\00", align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@x264_encoder_close.slice_order = internal unnamed_addr constant [5 x i8] c"\02\04\00\03\01", align 1
@x264_encoder_close.slice_name = internal unnamed_addr constant [5 x ptr] [ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], align 16
@.str.56 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.57 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"SP\00", align 1
@.str.60 = private unnamed_addr constant [3 x i8] c"SI\00", align 1
@.str.61 = private unnamed_addr constant [98 x i8] c"frame %s:%-5d Avg QP:%5.2f  size:%6.0f  PSNR Mean Y:%5.2f U:%5.2f V:%5.2f Avg:%5.2f Global:%5.2f\0A\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"frame %s:%-5d Avg QP:%5.2f  size:%6.0f\0A\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c" %4.1f%%\00", align 1
@.str.64 = private unnamed_addr constant [25 x i8] c"consecutive B-frames:%s\0A\00", align 1
@x264_mb_partition_pixel_table = internal unnamed_addr constant [17 x i8] c"\06\04\05\03\06\04\05\03\06\04\05\03\03\03\01\02\00", align 16
@.str.65 = private unnamed_addr constant [10 x i8] c"mb I  %s\0A\00", align 1
@.str.66 = private unnamed_addr constant [75 x i8] c"mb P  %s  P16..4: %4.1f%% %4.1f%% %4.1f%% %4.1f%% %4.1f%%    skip:%4.1f%%\0A\00", align 1
@x264_mb_type_list_table = internal unnamed_addr constant [19 x [2 x [2 x i8]]] [[2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] zeroinitializer], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\00\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\00"], [2 x [2 x i8]] [[2 x i8] c"\01\00", [2 x i8] c"\01\01"], [2 x [2 x i8]] [[2 x i8] c"\01\01", [2 x i8] c"\01\01"], [2 x [2 x i8]] zeroinitializer, [2 x [2 x i8]] zeroinitializer], align 16
@.str.67 = private unnamed_addr constant [107 x i8] c"mb B  %s  B16..8: %4.1f%% %4.1f%% %4.1f%%  direct:%4.1f%%  skip:%4.1f%%  L0:%4.1f%% L1:%4.1f%% BI:%4.1f%%\0A\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c" inter:%.1f%%\00", align 1
@.str.69 = private unnamed_addr constant [30 x i8] c"8x8 transform intra:%.1f%%%s\0A\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"direct mvs  spatial:%.1f%% temporal:%.1f%%\0A\00", align 1
@.str.71 = private unnamed_addr constant [29 x i8] c" inter: %.1f%% %.1f%% %.1f%%\00", align 1
@.str.72 = private unnamed_addr constant [49 x i8] c"coded y,uvDC,uvAC intra: %.1f%% %.1f%% %.1f%%%s\0A\00", align 1
@x264_mb_pred_mode16x16_fix = internal unnamed_addr constant [7 x i8] c"\00\01\02\03\02\02\02", align 1
@.str.73 = private unnamed_addr constant [47 x i8] c"i16 v,h,dc,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@x264_mb_pred_mode4x4_fix = internal unnamed_addr constant [13 x i8] c"\FF\00\01\02\03\04\05\06\07\08\02\02\02", align 1
@.str.74 = private unnamed_addr constant [105 x i8] c"i%d v,h,dc,ddl,ddr,vr,hd,vl,hu: %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@.str.75 = private unnamed_addr constant [47 x i8] c"i8c dc,h,v,p: %2.0f%% %2.0f%% %2.0f%% %2.0f%%\0A\00", align 1
@.str.76 = private unnamed_addr constant [29 x i8] c"Weighted P-Frames: Y:%.1f%%\0A\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"ref %c L%d:%s\0A\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"PB\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"SSIM Mean Y:%.7f\0A\00", align 1
@.str.80 = private unnamed_addr constant [68 x i8] c"PSNR Mean Y:%6.3f U:%6.3f V:%6.3f Avg:%6.3f Global:%6.3f kb/s:%.2f\0A\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"kb/s:%.2f\0A\00", align 1
@.str.82 = private unnamed_addr constant [34 x i8] c"I16..4%s: %4.1f%% %4.1f%% %4.1f%%\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"..PCM\00", align 1
@.str.84 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@switch.table.x264_encoder_encode = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @x264_encoder_open_96(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [1000 x i8], align 16
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %2) #22
  %4 = tail call ptr @x264_malloc(i32 noundef 33344) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %592, label %6

6:                                                ; preds = %1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %4, i8 0, i64 33344, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %4, ptr noundef nonnull align 8 dereferenceable(704) %0, i64 704, i1 false)
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 59
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void %8(ptr noundef nonnull %0) #23
  br label %11

11:                                               ; preds = %10, %6
  %12 = tail call fastcc i32 @x264_validate_parameters(ptr noundef nonnull %4) #24, !range !16
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %592, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 29
  %16 = load ptr, ptr %15, align 8, !tbaa !17
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @x264_cqm_parse_file(ptr noundef nonnull %4, ptr noundef nonnull %16) #23
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %592, label %21

21:                                               ; preds = %18, %14
  %22 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 19
  %24 = load ptr, ptr %23, align 8, !tbaa !38
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = tail call ptr @spec_strdup(ptr noundef nonnull %24) #23
  store ptr %27, ptr %23, align 8, !tbaa !38
  br label %28

28:                                               ; preds = %26, %21
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 21
  %30 = load ptr, ptr %29, align 8, !tbaa !39
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @spec_strdup(ptr noundef nonnull %30) #23
  store ptr %33, ptr %29, align 8, !tbaa !39
  br label %34

34:                                               ; preds = %32, %28
  tail call fastcc void @x264_set_aspect_ratio(ptr noundef nonnull %4, ptr noundef nonnull %4, i32 noundef 1) #24
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 48
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 49
  tail call void @x264_reduce_fraction(ptr noundef nonnull %35, ptr noundef nonnull %36) #23
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 50
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 51
  tail call void @x264_reduce_fraction(ptr noundef nonnull %37, ptr noundef nonnull %38) #23
  %39 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 10
  store i32 -1, ptr %39, align 4, !tbaa !40
  %40 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 11
  store i32 0, ptr %40, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 27
  store i32 0, ptr %41, align 8, !tbaa !42
  %42 = load i32, ptr %38, align 8, !tbaa !43
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 52
  %45 = load i32, ptr %44, align 4, !tbaa !44
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %62, label %47

47:                                               ; preds = %34
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %49 = load i32, ptr %48, align 4, !tbaa !45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 28
  store i32 1, ptr %52, align 4, !tbaa !46
  br label %64

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 20
  %55 = load i32, ptr %54, align 16, !tbaa !47
  %56 = icmp eq i32 %55, 0
  %57 = select i1 %56, i32 2, i32 3
  %58 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 28
  store i32 %57, ptr %58, align 4, !tbaa !46
  %59 = mul i32 %57, %42
  %60 = zext i32 %59 to i64
  %61 = load i32, ptr %37, align 4, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull @.str, i32 noundef %61, i32 noundef %42, i32 noundef %61, i64 noundef %60) #23
  br label %64

62:                                               ; preds = %34
  %63 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 28
  store i32 1, ptr %63, align 4, !tbaa !46
  br label %64

64:                                               ; preds = %51, %53, %62
  %65 = phi i64 [ %60, %53 ], [ %43, %62 ], [ %43, %51 ]
  %66 = icmp ugt i64 %65, 2147483647
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.1, i64 noundef %65) #23
  br label %592

68:                                               ; preds = %64
  %69 = trunc i64 %65 to i32
  store i32 %69, ptr %38, align 8, !tbaa !43
  %70 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 23
  %71 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 24
  store ptr %70, ptr %71, align 16, !tbaa !49
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 46
  %73 = load i32, ptr %72, align 4, !tbaa !50
  tail call void @x264_sps_init(ptr noundef nonnull %70, i32 noundef %73, ptr noundef nonnull %4) #23
  %74 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 25
  %75 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 26
  store ptr %74, ptr %75, align 16, !tbaa !51
  %76 = load i32, ptr %72, align 4, !tbaa !50
  %77 = load ptr, ptr %71, align 16, !tbaa !49
  tail call void @x264_pps_init(ptr noundef nonnull %74, i32 noundef %76, ptr noundef nonnull %4, ptr noundef %77) #23
  %78 = tail call i32 @x264_validate_levels(ptr noundef nonnull %4, i32 noundef 1) #23
  %79 = load ptr, ptr %75, align 16, !tbaa !51
  %80 = getelementptr inbounds %struct.x264_pps_t, ptr %79, i64 0, i32 11
  %81 = load i32, ptr %80, align 4, !tbaa !52
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, ptr getelementptr inbounds ([76 x i8], ptr @i_chroma_qp_table, i64 0, i64 12), i64 %82
  %84 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 39
  store ptr %83, ptr %84, align 16, !tbaa !54
  %85 = tail call i32 @x264_cqm_init(ptr noundef nonnull %4) #23
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %592, label %87

87:                                               ; preds = %68
  %88 = load ptr, ptr %71, align 16, !tbaa !49
  %89 = getelementptr inbounds %struct.x264_sps_t, ptr %88, i64 0, i32 16
  %90 = load i32, ptr %89, align 4, !tbaa !55
  %91 = getelementptr inbounds %struct.x264_sps_t, ptr %88, i64 0, i32 17
  %92 = load i32, ptr %91, align 4, !tbaa !60
  %93 = mul nsw i32 %92, %90
  %94 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 55
  store i32 %93, ptr %94, align 16, !tbaa !61
  %95 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 18
  %96 = load i32, ptr %95, align 8, !tbaa !62
  %97 = icmp eq i32 %96, 2
  br i1 %97, label %98, label %107

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 20
  %100 = load i32, ptr %99, align 8, !tbaa !63
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %104 = load i32, ptr %103, align 4, !tbaa !45
  %105 = tail call i32 @llvm.smax.i32(i32 %104, i32 3)
  %106 = shl nsw i32 %105, 2
  br label %110

107:                                              ; preds = %98, %87
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %109 = load i32, ptr %108, align 4, !tbaa !45
  br label %110

110:                                              ; preds = %107, %102
  %111 = phi i32 [ %109, %107 ], [ %104, %102 ]
  %112 = phi i32 [ %109, %107 ], [ %106, %102 ]
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 16
  %114 = load i32, ptr %113, align 8, !tbaa !64
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 10
  %118 = load i32, ptr %117, align 8, !tbaa !65
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %110
  %121 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 17
  %122 = load i32, ptr %121, align 4, !tbaa !66
  %123 = tail call i32 @llvm.smax.i32(i32 %112, i32 %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i32 [ %123, %120 ], [ %112, %116 ]
  %126 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43
  %127 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 9
  %128 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 12
  %129 = load i32, ptr %128, align 4, !tbaa !67
  %130 = add i32 %125, -1
  %131 = add i32 %130, %129
  %132 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 4
  %133 = load i32, ptr %132, align 16, !tbaa !68
  %134 = add nsw i32 %131, %133
  %135 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 47
  %136 = load i32, ptr %135, align 8, !tbaa !69
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %124
  %139 = load i32, ptr %22, align 8, !tbaa !70
  %140 = icmp eq i32 %139, 2
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 18
  %143 = load i32, ptr %142, align 8, !tbaa !71
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 10
  %147 = load i32, ptr %146, align 8, !tbaa !65
  %148 = icmp ne i32 %147, 0
  br label %149

149:                                              ; preds = %138, %141, %145, %124
  %150 = phi i1 [ false, %124 ], [ true, %141 ], [ true, %138 ], [ %148, %145 ]
  %151 = zext i1 %150 to i32
  %152 = add nsw i32 %134, %151
  store i32 %152, ptr %127, align 4, !tbaa !72
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 17
  %154 = icmp eq i32 %111, 0
  br i1 %154, label %160, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 20
  %157 = load i32, ptr %156, align 16, !tbaa !47
  %158 = icmp eq i32 %157, 0
  %159 = select i1 %158, i32 1, i32 2
  br label %160

160:                                              ; preds = %149, %155
  %161 = phi i32 [ %159, %155 ], [ 0, %149 ]
  %162 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 10
  store i32 %161, ptr %162, align 8, !tbaa !73
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 12
  %164 = load i32, ptr %163, align 16, !tbaa !74
  %165 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 7
  store i32 %164, ptr %165, align 4, !tbaa !75
  %166 = getelementptr inbounds %struct.x264_sps_t, ptr %88, i64 0, i32 24, i32 29
  %167 = load i32, ptr %166, align 4, !tbaa !76
  %168 = tail call i32 @llvm.smin.i32(i32 %167, i32 %164)
  %169 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 8
  store i32 %168, ptr %169, align 16, !tbaa !77
  %170 = getelementptr inbounds %struct.x264_sps_t, ptr %88, i64 0, i32 24, i32 30
  %171 = load i32, ptr %170, align 4, !tbaa !78
  %172 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 6
  store i32 %171, ptr %172, align 8, !tbaa !79
  %173 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 20
  %174 = load i32, ptr %173, align 8, !tbaa !63
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %160
  %177 = load i32, ptr %22, align 8, !tbaa !70
  %178 = add i32 %177, -3
  %179 = icmp ult i32 %178, -2
  %180 = icmp eq i32 %96, 0
  %181 = and i1 %180, %179
  br i1 %181, label %182, label %191

182:                                              ; preds = %176
  %183 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 15
  %184 = load i32, ptr %183, align 4, !tbaa !80
  %185 = or i32 %184, %114
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 3
  %189 = load i32, ptr %188, align 4, !tbaa !81
  %190 = icmp eq i32 %189, 2
  br label %191

191:                                              ; preds = %182, %176, %187
  %192 = phi i1 [ true, %176 ], [ %190, %187 ], [ true, %182 ]
  %193 = zext i1 %192 to i32
  br label %198

194:                                              ; preds = %160
  %195 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 10
  %196 = load i32, ptr %195, align 8, !tbaa !65
  %197 = icmp sgt i32 %196, 0
  br label %198

198:                                              ; preds = %191, %194
  %199 = phi i32 [ 0, %194 ], [ %193, %191 ]
  %200 = phi i1 [ %197, %194 ], [ false, %191 ]
  %201 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 16
  %202 = zext i1 %200 to i32
  %203 = or i32 %199, %202
  store i32 %203, ptr %201, align 16, !tbaa !82
  %204 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 1
  %205 = load i32, ptr %204, align 4, !tbaa !83
  %206 = lshr i32 %205, 5
  %207 = and i32 %206, 1
  %208 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 17
  store i32 %207, ptr %208, align 4, !tbaa !84
  %209 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 13
  %210 = load i32, ptr %209, align 4, !tbaa !85
  %211 = sub nsw i32 0, %210
  %212 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 4
  store i32 %211, ptr %212, align 16, !tbaa !86
  %213 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 5
  store i32 0, ptr %213, align 4, !tbaa !87
  %214 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 14
  %215 = shl i32 %152, 3
  %216 = add i32 %215, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %214, i8 -1, i64 16, i1 false)
  %217 = tail call ptr @x264_malloc(i32 noundef %216) #23
  %218 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 1
  store ptr %217, ptr %218, align 8, !tbaa !88
  %219 = icmp eq ptr %217, null
  br i1 %219, label %592, label %220

220:                                              ; preds = %198
  %221 = load i32, ptr %127, align 4, !tbaa !72
  %222 = add nsw i32 %221, 3
  %223 = sext i32 %222 to i64
  %224 = shl nsw i64 %223, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %217, i8 0, i64 %224, i1 false)
  %225 = load i32, ptr %128, align 4, !tbaa !67
  %226 = shl i32 %225, 3
  %227 = add i32 %226, 160
  %228 = tail call ptr @x264_malloc(i32 noundef %227) #23
  %229 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 1, i64 1
  store ptr %228, ptr %229, align 8, !tbaa !88
  %230 = icmp eq ptr %228, null
  br i1 %230, label %592, label %231

231:                                              ; preds = %220
  %232 = load i32, ptr %128, align 4, !tbaa !67
  %233 = add nsw i32 %232, 20
  %234 = sext i32 %233 to i64
  %235 = shl nsw i64 %234, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %228, i8 0, i64 %235, i1 false)
  %236 = load i32, ptr %132, align 16, !tbaa !68
  %237 = load i32, ptr %153, align 4, !tbaa !45
  %238 = add nsw i32 %237, %236
  %239 = load i32, ptr %128, align 4, !tbaa !67
  %240 = add nsw i32 %238, %239
  %241 = shl i32 %240, 3
  %242 = add i32 %241, 24
  %243 = tail call ptr @x264_malloc(i32 noundef %242) #23
  store ptr %243, ptr %126, align 16, !tbaa !89
  %244 = icmp eq ptr %243, null
  br i1 %244, label %592, label %245

245:                                              ; preds = %231
  %246 = load i32, ptr %132, align 16, !tbaa !68
  %247 = load i32, ptr %153, align 4, !tbaa !45
  %248 = load i32, ptr %128, align 4, !tbaa !67
  %249 = add i32 %246, 3
  %250 = add i32 %249, %247
  %251 = add i32 %250, %248
  %252 = sext i32 %251 to i64
  %253 = shl nsw i64 %252, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %243, i8 0, i64 %253, i1 false)
  %254 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 41, i32 3
  %255 = load i32, ptr %254, align 4, !tbaa !81
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %245
  %258 = load i32, ptr %128, align 4, !tbaa !67
  %259 = shl i32 %258, 5
  %260 = tail call ptr @x264_malloc(i32 noundef %259) #23
  %261 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 43, i32 2
  store ptr %260, ptr %261, align 8, !tbaa !90
  %262 = icmp eq ptr %260, null
  br i1 %262, label %592, label %263

263:                                              ; preds = %257
  %264 = load i32, ptr %128, align 4, !tbaa !67
  %265 = shl nsw i32 %264, 2
  %266 = sext i32 %265 to i64
  %267 = shl nsw i64 %266, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %260, i8 0, i64 %267, i1 false)
  br label %268

268:                                              ; preds = %263, %245
  %269 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 46
  store i32 0, ptr %269, align 8, !tbaa !91
  %270 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 48
  store i32 0, ptr %270, align 8, !tbaa !92
  %271 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 15
  %272 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 19
  store i32 0, ptr %272, align 8, !tbaa !93
  store <4 x i32> <i32 0, i32 -1, i32 0, i32 0>, ptr %271, align 8, !tbaa !94
  tail call void @x264_rdo_init() #23
  %273 = load i32, ptr %4, align 16, !tbaa !95
  %274 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 64
  tail call void @x264_predict_16x16_init(i32 noundef %273, ptr noundef nonnull %274) #23
  %275 = load i32, ptr %4, align 16, !tbaa !95
  %276 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 65
  tail call void @x264_predict_8x8c_init(i32 noundef %275, ptr noundef nonnull %276) #23
  %277 = load i32, ptr %4, align 16, !tbaa !95
  %278 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 66
  %279 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 68
  tail call void @x264_predict_8x8_init(i32 noundef %277, ptr noundef nonnull %278, ptr noundef nonnull %279) #23
  %280 = load i32, ptr %4, align 16, !tbaa !95
  %281 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 67
  tail call void @x264_predict_4x4_init(i32 noundef %280, ptr noundef nonnull %281) #23
  %282 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 24
  %283 = load i32, ptr %282, align 16, !tbaa !96
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %268
  tail call void (...) @x264_init_vlc_tables() #23
  br label %286

286:                                              ; preds = %285, %268
  %287 = load i32, ptr %4, align 16, !tbaa !95
  %288 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 69
  tail call void @x264_pixel_init(i32 noundef %287, ptr noundef nonnull %288) #23
  %289 = load i32, ptr %4, align 16, !tbaa !95
  %290 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 71
  tail call void @x264_dct_init(i32 noundef %289, ptr noundef nonnull %290) #23
  %291 = load i32, ptr %4, align 16, !tbaa !95
  %292 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 72
  %293 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 26
  %294 = load i32, ptr %293, align 8, !tbaa !97
  tail call void @x264_zigzag_init(i32 noundef %291, ptr noundef nonnull %292, i32 noundef %294) #23
  %295 = load i32, ptr %4, align 16, !tbaa !95
  %296 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 70
  tail call void @x264_mc_init(i32 noundef %295, ptr noundef nonnull %296) #23
  %297 = load i32, ptr %4, align 16, !tbaa !95
  %298 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 73
  tail call void @x264_quant_init(ptr noundef nonnull %4, i32 noundef %297, ptr noundef nonnull %298) #23
  %299 = load i32, ptr %4, align 16, !tbaa !95
  %300 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 74
  tail call void @x264_deblock_init(i32 noundef %299, ptr noundef nonnull %300) #23
  tail call void @x264_dct_init_weights() #23
  tail call fastcc void @mbcmp_init(ptr noundef nonnull %4) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) @.str.2, i64 24, i1 false)
  %301 = getelementptr inbounds i8, ptr %2, i64 23
  %302 = load i32, ptr getelementptr inbounds ([0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 0, i32 1), align 4, !tbaa !98
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

304:                                              ; preds = %345, %286
  %305 = phi ptr [ %301, %286 ], [ %346, %345 ]
  %306 = load i32, ptr %4, align 16, !tbaa !95
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %352, label %353

308:                                              ; preds = %286, %345
  %309 = phi i64 [ %347, %345 ], [ 0, %286 ]
  %310 = phi i32 [ %350, %345 ], [ %302, %286 ]
  %311 = phi ptr [ %348, %345 ], [ @x264_cpu_names, %286 ]
  %312 = phi ptr [ %346, %345 ], [ %301, %286 ]
  %313 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %311, ptr noundef nonnull dereferenceable(5) @.str.3) #25
  %314 = icmp ne i32 %313, 0
  %315 = load i32, ptr %4, align 16, !tbaa !95
  %316 = and i32 %315, 384
  %317 = icmp eq i32 %316, 0
  %318 = select i1 %314, i1 true, i1 %317
  br i1 %318, label %319, label %345

319:                                              ; preds = %308
  %320 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %311, ptr noundef nonnull dereferenceable(5) @.str.4) #25
  %321 = icmp ne i32 %320, 0
  %322 = and i32 %315, 1026
  %323 = icmp eq i32 %322, 2
  %324 = select i1 %321, i1 true, i1 %323
  br i1 %324, label %325, label %345

325:                                              ; preds = %319
  %326 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %311, ptr noundef nonnull dereferenceable(7) @.str.5) #25
  %327 = icmp ne i32 %326, 0
  %328 = and i32 %315, 16384
  %329 = icmp eq i32 %328, 0
  %330 = select i1 %327, i1 true, i1 %329
  %331 = and i32 %315, %310
  %332 = icmp eq i32 %331, %310
  %333 = select i1 %330, i1 %332, i1 false
  br i1 %333, label %334, label %345

334:                                              ; preds = %325
  %335 = icmp eq i64 %309, 0
  br i1 %335, label %341, label %336

336:                                              ; preds = %334
  %337 = add nsw i64 %309, -1
  %338 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %337, i32 1
  %339 = load i32, ptr %338, align 4, !tbaa !98
  %340 = icmp eq i32 %310, %339
  br i1 %340, label %345, label %341

341:                                              ; preds = %336, %334
  %342 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %312, ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %311) #23
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, ptr %312, i64 %343
  br label %345

345:                                              ; preds = %325, %319, %308, %336, %341
  %346 = phi ptr [ %344, %341 ], [ %312, %336 ], [ %312, %308 ], [ %312, %319 ], [ %312, %325 ]
  %347 = add nuw i64 %309, 1
  %348 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %347
  %349 = getelementptr inbounds [0 x %struct.x264_cpu_name_t], ptr @x264_cpu_names, i64 0, i64 %347, i32 1
  %350 = load i32, ptr %349, align 4, !tbaa !98
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %304, label %308, !llvm.loop !100

352:                                              ; preds = %304
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %305, ptr noundef nonnull align 1 dereferenceable(7) @.str.7, i64 7, i1 false)
  br label %353

353:                                              ; preds = %352, %304
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @.str.8, ptr noundef nonnull %2) #23
  %354 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 2
  %355 = load i32, ptr %354, align 8, !tbaa !102
  %356 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 3
  %357 = load i32, ptr %356, align 4, !tbaa !103
  %358 = icmp sgt i32 %355, %357
  br i1 %358, label %367, label %363

359:                                              ; preds = %363
  %360 = add nsw i32 %364, 1
  %361 = load i32, ptr %356, align 4, !tbaa !103
  %362 = icmp slt i32 %364, %361
  br i1 %362, label %363, label %367, !llvm.loop !104

363:                                              ; preds = %353, %359
  %364 = phi i32 [ %360, %359 ], [ %355, %353 ]
  %365 = call i32 @x264_analyse_init_costs(ptr noundef nonnull %4, i32 noundef %364) #23
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %359, label %592

367:                                              ; preds = %359, %353
  %368 = call i32 @x264_analyse_init_costs(ptr noundef nonnull %4, i32 noundef 12) #23
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %592

370:                                              ; preds = %367
  %371 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 37, i64 1
  %372 = load ptr, ptr %371, align 8, !tbaa !88
  %373 = getelementptr inbounds i16, ptr %372, i64 2013
  %374 = load i16, ptr %373, align 2, !tbaa !105
  %375 = icmp eq i16 %374, 24
  br i1 %375, label %377, label %376

376:                                              ; preds = %370
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.9) #23
  br label %592

377:                                              ; preds = %370
  store volatile i32 392, ptr %3, align 4, !tbaa !94
  %378 = load volatile i32, ptr %3, align 4, !tbaa !94
  %379 = and i32 %378, -256
  %380 = icmp eq i32 %379, 256
  br i1 %380, label %382, label %381

381:                                              ; preds = %377
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.10) #23
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.11) #23
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.12) #23
  br label %592

382:                                              ; preds = %377
  %383 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 7
  store i32 0, ptr %383, align 16, !tbaa !107
  %384 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 5
  %385 = load i32, ptr %384, align 4, !tbaa !108
  %386 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 6
  %387 = load i32, ptr %386, align 8, !tbaa !109
  %388 = shl i32 %385, 2
  %389 = mul i32 %388, %387
  %390 = sitofp i32 %389 to double
  %391 = load i32, ptr %22, align 8, !tbaa !70
  %392 = icmp eq i32 %391, 2
  br i1 %392, label %393, label %397

393:                                              ; preds = %382
  %394 = load i32, ptr %354, align 8, !tbaa !102
  %395 = sitofp i32 %394 to double
  %396 = call double @pow(double noundef 0x3FEE666666666666, double noundef %395) #23
  br label %408

397:                                              ; preds = %382
  %398 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 1
  %399 = load i32, ptr %398, align 4, !tbaa !110
  %400 = sitofp i32 %399 to double
  %401 = call double @pow(double noundef 0x3FEE666666666666, double noundef %400) #23
  %402 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 12
  %403 = load float, ptr %402, align 8, !tbaa !111
  %404 = fcmp olt float %403, 1.000000e+00
  %405 = select i1 %404, float 1.000000e+00, float %403
  %406 = fpext float %405 to double
  %407 = fmul double %401, %406
  br label %408

408:                                              ; preds = %397, %393
  %409 = phi double [ %396, %393 ], [ %407, %397 ]
  %410 = fmul double %409, %390
  %411 = fcmp olt double %410, 1.000000e+06
  br i1 %411, label %439, label %412

412:                                              ; preds = %408
  %413 = load i32, ptr %384, align 4, !tbaa !108
  %414 = load i32, ptr %386, align 8, !tbaa !109
  %415 = shl i32 %413, 2
  %416 = mul i32 %415, %414
  %417 = sitofp i32 %416 to double
  %418 = load i32, ptr %22, align 8, !tbaa !70
  %419 = icmp eq i32 %418, 2
  br i1 %419, label %420, label %424

420:                                              ; preds = %412
  %421 = load i32, ptr %354, align 8, !tbaa !102
  %422 = sitofp i32 %421 to double
  %423 = call double @pow(double noundef 0x3FEE666666666666, double noundef %422) #23
  br label %435

424:                                              ; preds = %412
  %425 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 1
  %426 = load i32, ptr %425, align 4, !tbaa !110
  %427 = sitofp i32 %426 to double
  %428 = call double @pow(double noundef 0x3FEE666666666666, double noundef %427) #23
  %429 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 42, i32 12
  %430 = load float, ptr %429, align 8, !tbaa !111
  %431 = fcmp olt float %430, 1.000000e+00
  %432 = select i1 %431, float 1.000000e+00, float %430
  %433 = fpext float %432 to double
  %434 = fmul double %428, %433
  br label %435

435:                                              ; preds = %424, %420
  %436 = phi double [ %423, %420 ], [ %434, %424 ]
  %437 = fmul double %436, %417
  %438 = fptosi double %437 to i32
  br label %439

439:                                              ; preds = %408, %435
  %440 = phi i32 [ %438, %435 ], [ 1000000, %408 ]
  %441 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 7, i32 3
  store i32 %440, ptr %441, align 16, !tbaa !112
  %442 = mul nsw i32 %440, 3
  %443 = sdiv i32 %442, 2
  %444 = add nsw i32 %443, 4
  %445 = call ptr @x264_malloc(i32 noundef %444) #23
  %446 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 8
  store ptr %445, ptr %446, align 8, !tbaa !113
  %447 = icmp eq ptr %445, null
  br i1 %447, label %592, label %448

448:                                              ; preds = %439
  %449 = load i32, ptr %441, align 16, !tbaa !112
  %450 = mul nsw i32 %449, 3
  %451 = sdiv i32 %450, 2
  %452 = add nsw i32 %451, 4
  %453 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 9
  store i32 %452, ptr %453, align 16, !tbaa !114
  %454 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1
  store ptr %4, ptr %454, align 16, !tbaa !88
  %455 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 1
  %456 = load i32, ptr %455, align 4, !tbaa !115
  %457 = load i32, ptr %132, align 16, !tbaa !68
  %458 = icmp ne i32 %457, 0
  %459 = zext i1 %458 to i32
  %460 = add nsw i32 %456, %459
  %461 = icmp sgt i32 %460, 1
  br i1 %461, label %471, label %476

462:                                              ; preds = %471
  %463 = add nuw nsw i64 %472, 1
  %464 = load i32, ptr %455, align 4, !tbaa !115
  %465 = load i32, ptr %132, align 16, !tbaa !68
  %466 = icmp ne i32 %465, 0
  %467 = zext i1 %466 to i32
  %468 = add nsw i32 %464, %467
  %469 = sext i32 %468 to i64
  %470 = icmp slt i64 %463, %469
  br i1 %470, label %471, label %476, !llvm.loop !116

471:                                              ; preds = %448, %462
  %472 = phi i64 [ %463, %462 ], [ 1, %448 ]
  %473 = call ptr @x264_malloc(i32 noundef 33344) #23
  %474 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %472
  store ptr %473, ptr %474, align 8, !tbaa !88
  %475 = icmp eq ptr %473, null
  br i1 %475, label %592, label %462

476:                                              ; preds = %462, %448
  %477 = call i32 @x264_lookahead_init(ptr noundef nonnull %4, i32 noundef %125) #23
  %478 = icmp eq i32 %477, 0
  br i1 %478, label %479, label %592

479:                                              ; preds = %476
  %480 = load i32, ptr %455, align 4, !tbaa !115
  %481 = icmp sgt i32 %480, 0
  br i1 %481, label %482, label %553

482:                                              ; preds = %479
  %483 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 58
  %484 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 2
  br label %487

485:                                              ; preds = %537
  %486 = icmp sgt i32 %539, 0
  br i1 %486, label %547, label %553

487:                                              ; preds = %482, %537
  %488 = phi i64 [ 0, %482 ], [ %538, %537 ]
  %489 = load i32, ptr %483, align 4, !tbaa !117
  %490 = add nsw i32 %489, 3
  %491 = load i32, ptr %484, align 8, !tbaa !118
  %492 = icmp eq i32 %491, 0
  %493 = icmp eq i64 %488, 0
  %494 = or i1 %493, %492
  br i1 %493, label %498, label %495

495:                                              ; preds = %487
  %496 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %488
  %497 = load ptr, ptr %496, align 8, !tbaa !88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(33344) %497, ptr noundef nonnull align 16 dereferenceable(33344) %4, i64 33344, i1 false), !tbaa.struct !119
  br i1 %494, label %498, label %507

498:                                              ; preds = %487, %495
  %499 = call ptr @x264_frame_pop_unused(ptr noundef nonnull %4, i32 noundef 1) #23
  %500 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %488
  %501 = load ptr, ptr %500, align 8, !tbaa !88
  %502 = getelementptr inbounds %struct.x264_t, ptr %501, i64 0, i32 45
  store ptr %499, ptr %502, align 16, !tbaa !124
  %503 = load ptr, ptr %500, align 8, !tbaa !88
  %504 = getelementptr inbounds %struct.x264_t, ptr %503, i64 0, i32 45
  %505 = load ptr, ptr %504, align 16, !tbaa !124
  %506 = icmp eq ptr %505, null
  br i1 %506, label %592, label %513

507:                                              ; preds = %495
  %508 = load ptr, ptr %454, align 16, !tbaa !88
  %509 = getelementptr inbounds %struct.x264_t, ptr %508, i64 0, i32 45
  %510 = load ptr, ptr %509, align 16, !tbaa !124
  %511 = load ptr, ptr %496, align 8, !tbaa !88
  %512 = getelementptr inbounds %struct.x264_t, ptr %511, i64 0, i32 45
  store ptr %510, ptr %512, align 16, !tbaa !124
  br label %513

513:                                              ; preds = %507, %498
  %514 = load i32, ptr %441, align 16, !tbaa !112
  %515 = call ptr @x264_malloc(i32 noundef %514) #23
  %516 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %488
  %517 = load ptr, ptr %516, align 8, !tbaa !88
  %518 = getelementptr inbounds %struct.x264_t, ptr %517, i64 0, i32 7, i32 4
  store ptr %515, ptr %518, align 8, !tbaa !125
  %519 = load ptr, ptr %516, align 8, !tbaa !88
  %520 = getelementptr inbounds %struct.x264_t, ptr %519, i64 0, i32 7, i32 4
  %521 = load ptr, ptr %520, align 8, !tbaa !125
  %522 = icmp eq ptr %521, null
  br i1 %522, label %592, label %523

523:                                              ; preds = %513
  %524 = mul i32 %490, 24
  %525 = call ptr @x264_malloc(i32 noundef %524) #23
  %526 = load ptr, ptr %516, align 8, !tbaa !88
  %527 = getelementptr inbounds %struct.x264_t, ptr %526, i64 0, i32 7, i32 2
  store ptr %525, ptr %527, align 8, !tbaa !126
  %528 = load ptr, ptr %516, align 8, !tbaa !88
  %529 = getelementptr inbounds %struct.x264_t, ptr %528, i64 0, i32 7, i32 2
  %530 = load ptr, ptr %529, align 8, !tbaa !126
  %531 = icmp eq ptr %530, null
  br i1 %531, label %592, label %532

532:                                              ; preds = %523
  %533 = getelementptr inbounds %struct.x264_t, ptr %528, i64 0, i32 7, i32 1
  store i32 %490, ptr %533, align 4, !tbaa !127
  br i1 %494, label %534, label %537

534:                                              ; preds = %532
  %535 = call i32 @x264_macroblock_cache_allocate(ptr noundef nonnull %528) #23
  %536 = icmp slt i32 %535, 0
  br i1 %536, label %592, label %537

537:                                              ; preds = %534, %532
  %538 = add nuw nsw i64 %488, 1
  %539 = load i32, ptr %455, align 4, !tbaa !115
  %540 = sext i32 %539 to i64
  %541 = icmp slt i64 %538, %540
  br i1 %541, label %487, label %485, !llvm.loop !128

542:                                              ; preds = %547
  %543 = add nuw nsw i64 %548, 1
  %544 = load i32, ptr %455, align 4, !tbaa !115
  %545 = sext i32 %544 to i64
  %546 = icmp slt i64 %543, %545
  br i1 %546, label %547, label %553, !llvm.loop !129

547:                                              ; preds = %485, %542
  %548 = phi i64 [ %543, %542 ], [ 0, %485 ]
  %549 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 1, i64 %548
  %550 = load ptr, ptr %549, align 8, !tbaa !88
  %551 = call i32 @x264_macroblock_thread_allocate(ptr noundef %550, i32 noundef 0) #23
  %552 = icmp slt i32 %551, 0
  br i1 %552, label %592, label %542

553:                                              ; preds = %542, %479, %485
  %554 = call i32 @x264_ratecontrol_new(ptr noundef nonnull %4) #23
  %555 = icmp slt i32 %554, 0
  br i1 %555, label %592, label %556

556:                                              ; preds = %553
  %557 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 10
  %558 = load i32, ptr %557, align 8, !tbaa !130
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %567, label %560

560:                                              ; preds = %556
  %561 = load ptr, ptr %71, align 16, !tbaa !49
  %562 = getelementptr inbounds %struct.x264_sps_t, ptr %561, i64 0, i32 24, i32 21, i32 5
  %563 = load i32, ptr %562, align 4, !tbaa !131
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef %563) #23
  %564 = load ptr, ptr %71, align 16, !tbaa !49
  %565 = getelementptr inbounds %struct.x264_sps_t, ptr %564, i64 0, i32 24, i32 21, i32 6
  %566 = load i32, ptr %565, align 4, !tbaa !132
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 3, ptr noundef nonnull @.str.14, i32 noundef %566) #23
  br label %567

567:                                              ; preds = %560, %556
  %568 = getelementptr inbounds %struct.x264_param_t, ptr %4, i64 0, i32 40
  %569 = load ptr, ptr %568, align 8, !tbaa !133
  %570 = icmp eq ptr %569, null
  br i1 %570, label %578, label %571

571:                                              ; preds = %567
  %572 = call noalias ptr @fopen(ptr noundef nonnull %569, ptr noundef nonnull @.str.15) #24
  %573 = icmp eq ptr %572, null
  br i1 %573, label %576, label %574

574:                                              ; preds = %571
  %575 = call i32 @fclose(ptr noundef nonnull %572) #24
  br label %578

576:                                              ; preds = %571
  %577 = load ptr, ptr %568, align 8, !tbaa !133
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.16, ptr noundef %577) #23
  br label %592

578:                                              ; preds = %574, %567
  %579 = load ptr, ptr %71, align 16, !tbaa !49
  %580 = getelementptr inbounds %struct.x264_sps_t, ptr %579, i64 0, i32 1
  %581 = load i32, ptr %580, align 4, !tbaa !134
  switch i32 %581, label %582 [
    i32 66, label %586
    i32 77, label %585
  ]

582:                                              ; preds = %578
  %583 = icmp eq i32 %581, 100
  %584 = select i1 %583, ptr @.str.21, ptr @.str.22
  br label %586

585:                                              ; preds = %578
  br label %586

586:                                              ; preds = %578, %585, %582
  %587 = phi ptr [ @.str.19, %578 ], [ %584, %582 ], [ @.str.20, %585 ]
  %588 = getelementptr inbounds %struct.x264_sps_t, ptr %579, i64 0, i32 2
  %589 = load i32, ptr %588, align 4, !tbaa !135
  %590 = sdiv i32 %589, 10
  %591 = srem i32 %589, 10
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %4, i32 noundef 2, ptr noundef nonnull @.str.18, ptr noundef nonnull %587, i32 noundef %590, i32 noundef %591) #23
  br label %593

592:                                              ; preds = %363, %471, %498, %513, %523, %534, %547, %576, %553, %476, %439, %367, %257, %231, %220, %198, %68, %18, %11, %1, %381, %376, %67
  call void @x264_free(ptr noundef %4) #23
  br label %593

593:                                              ; preds = %592, %586
  %594 = phi ptr [ null, %592 ], [ %4, %586 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %2) #22
  ret ptr %594
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_validate_parameters(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp slt i32 %3, 1
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !109
  %7 = icmp slt i32 %6, 1
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.23, i32 noundef %3, i32 noundef %6) #23
  br label %780

10:                                               ; preds = %1
  %11 = or i32 %6, %3
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.24, i32 noundef %3, i32 noundef %6) #23
  br label %780

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 7
  %17 = load i32, ptr %16, align 4, !tbaa !136
  %18 = trunc i32 %17 to i8
  switch i8 %18, label %19 [
    i8 4, label %20
    i8 1, label %20
  ]

19:                                               ; preds = %15
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.25) #23
  br label %780

20:                                               ; preds = %15, %15
  %21 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %22 = load i32, ptr %21, align 4, !tbaa !115
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = tail call i32 @x264_cpu_num_processors() #23
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !118
  %28 = icmp eq i32 %27, 0
  %29 = select i1 %28, i32 3, i32 2
  %30 = mul nsw i32 %29, %25
  %31 = sdiv i32 %30, 2
  br label %32

32:                                               ; preds = %24, %20
  %33 = phi i32 [ %31, %24 ], [ %22, %20 ]
  %34 = tail call fastcc i32 @x264_clip3(i32 noundef %33, i32 noundef 1, i32 noundef 128) #24
  store i32 %34, ptr %21, align 4, !tbaa !115
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.26) #23
  store i32 1, ptr %21, align 4, !tbaa !115
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %38 = load i32, ptr %37, align 8, !tbaa !118
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %36
  %41 = load i32, ptr %5, align 8, !tbaa !109
  %42 = icmp sgt i32 %41, 112
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = add nsw i32 %41, 15
  %45 = sdiv i32 %44, 64
  br label %48

46:                                               ; preds = %32
  %47 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  store i32 0, ptr %47, align 8, !tbaa !118
  br label %50

48:                                               ; preds = %43, %40
  %49 = phi i32 [ %45, %43 ], [ 1, %40 ]
  store i32 %49, ptr %21, align 4, !tbaa !115
  br label %50

50:                                               ; preds = %46, %36, %48
  %51 = phi i32 [ 1, %48 ], [ %34, %46 ], [ 1, %36 ]
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  store i32 %51, ptr %53, align 4, !tbaa !67
  %54 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %55 = load i32, ptr %54, align 8, !tbaa !97
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %59 = load i32, ptr %58, align 4, !tbaa !137
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.27) #23
  store i32 2, ptr %58, align 4, !tbaa !137
  br label %62

62:                                               ; preds = %61, %57
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %64 = load i32, ptr %63, align 4, !tbaa !81
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.28) #23
  store i32 0, ptr %63, align 4, !tbaa !81
  br label %67

67:                                               ; preds = %62, %66, %50
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 8
  %70 = load i32, ptr %69, align 16, !tbaa !138
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 4
  %75 = load i32, ptr %74, align 8, !tbaa !139
  %76 = icmp eq i32 %75, 3
  %77 = zext i1 %76 to i32
  %78 = add nuw nsw i32 %77, %72
  %79 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 13
  %80 = load i32, ptr %79, align 4, !tbaa !85
  %81 = icmp eq i32 %80, 12
  %82 = zext i1 %81 to i32
  %83 = add nuw nsw i32 %78, %82
  %84 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 2
  %85 = load i32, ptr %84, align 8, !tbaa !102
  %86 = icmp eq i32 %85, 2
  %87 = zext i1 %86 to i32
  %88 = add nuw nsw i32 %83, %87
  %89 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 3
  %90 = load i32, ptr %89, align 4, !tbaa !103
  %91 = icmp eq i32 %90, 31
  %92 = zext i1 %91 to i32
  %93 = add nuw nsw i32 %88, %92
  %94 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 22
  %95 = load float, ptr %94, align 8, !tbaa !140
  %96 = fcmp oeq float %95, 5.000000e-01
  %97 = zext i1 %96 to i32
  %98 = add nuw nsw i32 %93, %97
  %99 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 12
  %100 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 13
  %101 = load <2 x float>, ptr %99, align 8, !tbaa !121
  %102 = fpext <2 x float> %101 to <2 x double>
  %103 = fadd <2 x double> %102, <double -1.250000e+00, double -1.250000e+00>
  %104 = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %103)
  %105 = fcmp olt <2 x double> %104, <double 1.000000e-02, double 1.000000e-02>
  %106 = extractelement <2 x i1> %105, i64 0
  %107 = zext i1 %106 to i32
  %108 = add nuw nsw i32 %98, %107
  %109 = extractelement <2 x i1> %105, i64 1
  %110 = zext i1 %109 to i32
  %111 = add nuw nsw i32 %108, %110
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !83
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %67
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %117 = load i32, ptr %116, align 4, !tbaa !141
  %118 = icmp eq i32 %117, 8
  br label %119

119:                                              ; preds = %115, %67
  %120 = phi i1 [ false, %67 ], [ %118, %115 ]
  %121 = zext i1 %120 to i32
  %122 = add nuw nsw i32 %111, %121
  %123 = icmp ult i32 %122, 5
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.29) #23
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.30) #23
  br label %780

125:                                              ; preds = %119
  %126 = load i32, ptr %73, align 8, !tbaa !70
  %127 = icmp ugt i32 %126, 2
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @.str.31) #23
  br label %780

129:                                              ; preds = %125
  %130 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 6
  %131 = load float, ptr %130, align 8, !tbaa !142
  %132 = fpext float %131 to double
  %133 = tail call fastcc double @x264_clip3f(double noundef %132, double noundef 5.100000e+01) #24
  %134 = fptrunc double %133 to float
  store float %134, ptr %130, align 8, !tbaa !142
  %135 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 1
  %136 = load i32, ptr %135, align 4, !tbaa !110
  %137 = tail call fastcc i32 @x264_clip3(i32 noundef %136, i32 noundef 0, i32 noundef 51) #24
  store i32 %137, ptr %135, align 4, !tbaa !110
  switch i32 %126, label %141 [
    i32 1, label %138
    i32 2, label %194
  ]

138:                                              ; preds = %129
  %139 = fptosi float %134 to i32
  store i32 %139, ptr %135, align 4, !tbaa !110
  %140 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  store i32 0, ptr %140, align 4, !tbaa !143
  br label %141

141:                                              ; preds = %129, %138
  %142 = phi i32 [ %139, %138 ], [ %137, %129 ]
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  store i32 1, ptr %145, align 4, !tbaa !144
  %146 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  store i32 0, ptr %146, align 16, !tbaa !145
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 29
  store ptr null, ptr %147, align 8, !tbaa !17
  store i32 0, ptr %73, align 8, !tbaa !70
  store <2 x float> <float 1.000000e+00, float 1.000000e+00>, ptr %99, align 8, !tbaa !121
  %148 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 0, ptr %148, align 4, !tbaa !146
  %149 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 0, ptr %149, align 16, !tbaa !147
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  store i32 0, ptr %150, align 8, !tbaa !148
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  store i32 0, ptr %151, align 8, !tbaa !149
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  store i32 0, ptr %152, align 4, !tbaa !150
  %153 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  store i32 0, ptr %153, align 4, !tbaa !151
  %154 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  store i32 0, ptr %154, align 16, !tbaa !152
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  store i32 0, ptr %155, align 4, !tbaa !45
  %156 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %157 = load i32, ptr %156, align 16, !tbaa !96
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %144
  %160 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  store i32 0, ptr %160, align 8, !tbaa !153
  br label %164

161:                                              ; preds = %141
  %162 = icmp eq i32 %126, 0
  %163 = extractelement <2 x float> %101, i64 0
  br i1 %162, label %164, label %194

164:                                              ; preds = %159, %144, %161
  %165 = phi i32 [ %142, %161 ], [ 0, %144 ], [ 0, %159 ]
  %166 = phi float [ %163, %161 ], [ 1.000000e+00, %144 ], [ 1.000000e+00, %159 ]
  %167 = sitofp i32 %165 to float
  %168 = tail call float @log2f(float noundef %166) #23
  %169 = load float, ptr %100, align 4, !tbaa !154
  %170 = tail call float @log2f(float noundef %169) #23
  %171 = insertelement <2 x float> poison, float %168, i64 0
  %172 = insertelement <2 x float> %171, float %170, i64 1
  %173 = insertelement <2 x float> poison, float %167, i64 0
  %174 = shufflevector <2 x float> %173, <2 x float> poison, <2 x i32> zeroinitializer
  %175 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %172, <2 x float> <float -6.000000e+00, float 6.000000e+00>, <2 x float> %174)
  %176 = extractelement <2 x float> %175, i64 0
  %177 = extractelement <2 x float> %175, i64 1
  %178 = fcmp olt float %176, %177
  %179 = select i1 %178, float %176, float %177
  %180 = fcmp ogt float %179, %167
  %181 = select i1 %180, float %167, float %179
  %182 = fptosi float %181 to i32
  %183 = tail call fastcc i32 @x264_clip3(i32 noundef %182, i32 noundef 0, i32 noundef 51) #24
  %184 = fcmp ogt float %176, %177
  %185 = select i1 %184, float %176, float %177
  %186 = fcmp olt float %185, %167
  %187 = select i1 %186, float %167, float %185
  %188 = fpext float %187 to double
  %189 = fadd double %188, 0x3FEFF7CED916872B
  %190 = fptosi double %189 to i32
  %191 = tail call fastcc i32 @x264_clip3(i32 noundef %190, i32 noundef 0, i32 noundef 51) #24
  %192 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  store i32 0, ptr %192, align 8, !tbaa !155
  %193 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %193, align 8, !tbaa !64
  br label %194

194:                                              ; preds = %129, %164, %161
  %195 = phi i32 [ %183, %164 ], [ %85, %161 ], [ %85, %129 ]
  %196 = phi i32 [ %191, %164 ], [ %90, %161 ], [ %90, %129 ]
  %197 = tail call fastcc i32 @x264_clip3(i32 noundef %196, i32 noundef 0, i32 noundef 51) #24
  store i32 %197, ptr %89, align 4, !tbaa !103
  %198 = tail call fastcc i32 @x264_clip3(i32 noundef %195, i32 noundef 0, i32 noundef %197) #24
  store i32 %198, ptr %84, align 8, !tbaa !102
  %199 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %200 = load i32, ptr %199, align 8, !tbaa !65
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %225, label %202

202:                                              ; preds = %194
  %203 = load i32, ptr %73, align 8, !tbaa !70
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %202
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.32) #23
  %206 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  store i32 0, ptr %206, align 4, !tbaa !156
  store i32 0, ptr %199, align 8, !tbaa !65
  br label %230

207:                                              ; preds = %202
  %208 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %209 = load i32, ptr %208, align 4, !tbaa !156
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = icmp eq i32 %203, 2
  br i1 %212, label %213, label %216

213:                                              ; preds = %211
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.33) #23
  %214 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %215 = load i32, ptr %214, align 4, !tbaa !143
  store i32 %215, ptr %208, align 4, !tbaa !156
  br label %230

216:                                              ; preds = %211
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.34) #23
  store i32 0, ptr %199, align 8, !tbaa !65
  br label %230

217:                                              ; preds = %207
  %218 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %219 = load i32, ptr %218, align 4, !tbaa !143
  %220 = icmp slt i32 %209, %219
  %221 = icmp eq i32 %203, 2
  %222 = and i1 %221, %220
  br i1 %222, label %223, label %230

223:                                              ; preds = %217
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.35) #23
  %224 = load i32, ptr %218, align 4, !tbaa !143
  store i32 %224, ptr %208, align 4, !tbaa !156
  br label %230

225:                                              ; preds = %194
  %226 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %227 = load i32, ptr %226, align 4, !tbaa !156
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.36) #23
  store i32 0, ptr %226, align 4, !tbaa !156
  br label %230

230:                                              ; preds = %225, %229, %205, %217, %223, %213, %216
  %231 = load i32, ptr %54, align 8, !tbaa !97
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %247, label %233

233:                                              ; preds = %230
  %234 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %235 = load i32, ptr %234, align 4, !tbaa !157
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %233
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.37) #23
  store i32 0, ptr %234, align 4, !tbaa !157
  %238 = load i32, ptr %54, align 8, !tbaa !97
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %247, label %240

240:                                              ; preds = %233, %237
  %241 = phi i32 [ %238, %237 ], [ %231, %233 ]
  %242 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %243 = load i32, ptr %242, align 16, !tbaa !158
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %247, label %245

245:                                              ; preds = %240
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.38) #23
  store i32 0, ptr %242, align 16, !tbaa !158
  %246 = load i32, ptr %54, align 8, !tbaa !97
  br label %247

247:                                              ; preds = %230, %245, %240, %237
  %248 = phi i32 [ 0, %230 ], [ %246, %245 ], [ %241, %240 ], [ 0, %237 ]
  %249 = load i32, ptr %5, align 8, !tbaa !109
  %250 = shl i32 16, %248
  %251 = add i32 %249, -1
  %252 = add i32 %251, %250
  %253 = sdiv i32 %252, %250
  %254 = load i32, ptr %52, align 8, !tbaa !118
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %260, label %256

256:                                              ; preds = %247
  %257 = load i32, ptr %21, align 4, !tbaa !115
  %258 = tail call fastcc i32 @x264_clip3(i32 noundef %257, i32 noundef 0, i32 noundef %253) #24
  %259 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  store i32 %258, ptr %259, align 4, !tbaa !117
  br label %274

260:                                              ; preds = %247
  %261 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  %262 = load i32, ptr %261, align 4, !tbaa !117
  %263 = tail call fastcc i32 @x264_clip3(i32 noundef %262, i32 noundef 0, i32 noundef %253) #24
  store i32 %263, ptr %261, align 4, !tbaa !117
  %264 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %265 = load i32, ptr %264, align 4, !tbaa !157
  %266 = tail call i32 @llvm.smax.i32(i32 %265, i32 0)
  store i32 %266, ptr %264, align 4, !tbaa !157
  %267 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %268 = load i32, ptr %267, align 16, !tbaa !158
  %269 = tail call i32 @llvm.smax.i32(i32 %268, i32 0)
  store i32 %269, ptr %267, align 16, !tbaa !158
  %270 = icmp slt i32 %268, 1
  %271 = icmp slt i32 %265, 1
  %272 = select i1 %270, i1 %271, i1 false
  br i1 %272, label %274, label %273

273:                                              ; preds = %260
  store i32 0, ptr %261, align 4, !tbaa !117
  br label %274

274:                                              ; preds = %260, %273, %256
  %275 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %276 = load i32, ptr %275, align 16, !tbaa !74
  %277 = tail call fastcc i32 @x264_clip3(i32 noundef %276, i32 noundef 1, i32 noundef 16) #24
  store i32 %277, ptr %275, align 16, !tbaa !74
  %278 = load i32, ptr %79, align 4, !tbaa !85
  %279 = icmp slt i32 %278, 1
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  store i32 1, ptr %79, align 4, !tbaa !85
  br label %281

281:                                              ; preds = %280, %274
  %282 = phi i32 [ 1, %280 ], [ %278, %274 ]
  %283 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 15
  %284 = load i32, ptr %283, align 4, !tbaa !80
  %285 = icmp slt i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %281
  store i32 0, ptr %283, align 4, !tbaa !80
  br label %287

287:                                              ; preds = %286, %281
  %288 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %289 = load i32, ptr %288, align 4, !tbaa !141
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %297

291:                                              ; preds = %287
  %292 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %293 = load i32, ptr %292, align 4, !tbaa !159
  %294 = icmp sgt i32 %293, 1
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.39) #23
  store i32 1, ptr %292, align 4, !tbaa !159
  %296 = load i32, ptr %79, align 4, !tbaa !85
  br label %297

297:                                              ; preds = %295, %291, %287
  %298 = phi i32 [ %296, %295 ], [ %282, %291 ], [ %282, %287 ]
  %299 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %300 = load i32, ptr %299, align 4, !tbaa !45
  %301 = tail call fastcc i32 @x264_clip3(i32 noundef %300, i32 noundef 0, i32 noundef 16) #24
  store i32 %301, ptr %299, align 4, !tbaa !45
  %302 = icmp eq i32 %298, 1
  br i1 %302, label %303, label %305

303:                                              ; preds = %297
  store i32 0, ptr %299, align 4, !tbaa !45
  %304 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  store i32 0, ptr %304, align 16, !tbaa !160
  br label %305

305:                                              ; preds = %303, %297
  %306 = phi i32 [ 0, %303 ], [ %301, %297 ]
  %307 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 19
  %308 = load i32, ptr %307, align 4, !tbaa !161
  %309 = tail call fastcc i32 @x264_clip3(i32 noundef %308, i32 noundef -90, i32 noundef 100) #24
  store i32 %309, ptr %307, align 4, !tbaa !161
  %310 = icmp slt i32 %306, 2
  %311 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  br i1 %310, label %316, label %312

312:                                              ; preds = %305
  %313 = load i32, ptr %311, align 16, !tbaa !47
  %314 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %315 = tail call fastcc i32 @x264_clip3(i32 noundef %313, i32 noundef 0, i32 noundef 2) #24
  store i32 %315, ptr %314, align 16, !tbaa !47
  br label %323

316:                                              ; preds = %305
  %317 = tail call fastcc i32 @x264_clip3(i32 noundef 0, i32 noundef 0, i32 noundef 2) #24
  store i32 %317, ptr %311, align 16, !tbaa !47
  %318 = icmp eq i32 %306, 0
  br i1 %318, label %319, label %323

319:                                              ; preds = %316
  %320 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 18
  store i32 0, ptr %320, align 8, !tbaa !62
  %321 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  store i32 0, ptr %321, align 4, !tbaa !159
  %322 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  store i32 0, ptr %322, align 16, !tbaa !162
  br label %323

323:                                              ; preds = %312, %319, %316
  %324 = phi i32 [ %315, %312 ], [ %317, %319 ], [ %317, %316 ]
  %325 = phi ptr [ %314, %312 ], [ %311, %319 ], [ %311, %316 ]
  %326 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 16
  %327 = load i32, ptr %326, align 16, !tbaa !160
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %323
  %330 = icmp eq i32 %324, 2
  br i1 %330, label %331, label %334

331:                                              ; preds = %329
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.40) #23
  store i32 1, ptr %325, align 16, !tbaa !47
  %332 = load i32, ptr %326, align 16, !tbaa !160
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %338, label %334

334:                                              ; preds = %329, %331
  %335 = load i32, ptr %275, align 16, !tbaa !74
  %336 = icmp sgt i32 %335, 1
  br i1 %336, label %337, label %338

337:                                              ; preds = %334
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.41) #23
  store i32 1, ptr %275, align 16, !tbaa !74
  br label %338

338:                                              ; preds = %323, %337, %334, %331
  %339 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 14
  %340 = load i32, ptr %339, align 8, !tbaa !163
  %341 = icmp eq i32 %340, 0
  %342 = load i32, ptr %79, align 4, !tbaa !85
  %343 = sdiv i32 %342, 10
  %344 = select i1 %341, i32 %343, i32 %340
  %345 = sdiv i32 %342, 2
  %346 = add nsw i32 %345, 1
  %347 = tail call fastcc i32 @x264_clip3(i32 noundef %344, i32 noundef 1, i32 noundef %346) #24
  store i32 %347, ptr %339, align 8, !tbaa !163
  %348 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 17
  %349 = load i32, ptr %348, align 4, !tbaa !66
  %350 = tail call fastcc i32 @x264_clip3(i32 noundef %349, i32 noundef 0, i32 noundef 250) #24
  %351 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %352 = load i32, ptr %351, align 4, !tbaa !156
  %353 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 5
  %354 = load i32, ptr %353, align 4, !tbaa !143
  %355 = tail call i32 @llvm.smax.i32(i32 %352, i32 %354)
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %362, label %357

357:                                              ; preds = %338
  %358 = load i32, ptr %199, align 8, !tbaa !65
  %359 = sitofp i32 %358 to float
  %360 = sitofp i32 %355 to float
  %361 = fdiv float %359, %360
  br label %362

362:                                              ; preds = %338, %357
  %363 = phi float [ %361, %357 ], [ 0.000000e+00, %338 ]
  %364 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %365 = load i32, ptr %364, align 4, !tbaa !164
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %375, label %367

367:                                              ; preds = %362
  %368 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %369 = load i32, ptr %368, align 16, !tbaa !165
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %375, label %371

371:                                              ; preds = %367
  %372 = uitofp i32 %365 to float
  %373 = uitofp i32 %369 to float
  %374 = fdiv float %372, %373
  br label %375

375:                                              ; preds = %362, %367, %371
  %376 = phi float [ %374, %371 ], [ 2.500000e+01, %367 ], [ 2.500000e+01, %362 ]
  %377 = sitofp i32 %350 to float
  %378 = sitofp i32 %342 to float
  %379 = fmul float %363, %376
  %380 = fcmp olt float %379, %378
  %381 = select i1 %380, float %378, float %379
  %382 = fcmp ogt float %381, %377
  %383 = select i1 %382, float %377, float %381
  %384 = fptosi float %383 to i32
  store i32 %384, ptr %348, align 4, !tbaa !66
  %385 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %386 = load i32, ptr %385, align 4, !tbaa !48
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %375
  %389 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %390 = load i32, ptr %389, align 8, !tbaa !43
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %388, %375
  %393 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %394 = load i32, ptr %393, align 16, !tbaa !165
  store i32 %394, ptr %385, align 4, !tbaa !48
  %395 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  store i32 %365, ptr %395, align 8, !tbaa !43
  br label %396

396:                                              ; preds = %392, %388
  %397 = load float, ptr %94, align 8, !tbaa !140
  %398 = fpext float %397 to double
  %399 = tail call fastcc double @x264_clip3f(double noundef %398, double noundef 1.000000e+00) #24
  %400 = fptrunc double %399 to float
  store float %400, ptr %94, align 8, !tbaa !140
  %401 = icmp eq i32 %384, 0
  br i1 %401, label %406, label %402

402:                                              ; preds = %396
  %403 = icmp eq i32 %342, 1
  %404 = fcmp oeq float %400, 1.000000e+00
  %405 = or i1 %403, %404
  br i1 %405, label %406, label %408

406:                                              ; preds = %402, %396
  %407 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  store i32 0, ptr %407, align 8, !tbaa !64
  br label %408

408:                                              ; preds = %402, %406
  %409 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %410 = load i32, ptr %409, align 8, !tbaa !63
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %413, label %412

412:                                              ; preds = %408
  store i32 0, ptr %348, align 4, !tbaa !66
  br label %413

413:                                              ; preds = %412, %408
  %414 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 4
  store i32 0, ptr %414, align 16, !tbaa !68
  %415 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %416 = load i32, ptr %415, align 8, !tbaa !166
  %417 = tail call fastcc i32 @x264_clip3(i32 noundef %416, i32 noundef -6, i32 noundef 6) #24
  store i32 %417, ptr %415, align 8, !tbaa !166
  %418 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %419 = load i32, ptr %418, align 4, !tbaa !167
  %420 = tail call fastcc i32 @x264_clip3(i32 noundef %419, i32 noundef -6, i32 noundef 6) #24
  store i32 %420, ptr %418, align 4, !tbaa !167
  %421 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21
  %422 = load i32, ptr %421, align 4, !tbaa !94
  %423 = tail call fastcc i32 @x264_clip3(i32 noundef %422, i32 noundef 0, i32 noundef 32) #24
  store i32 %423, ptr %421, align 4, !tbaa !94
  %424 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 21, i64 1
  %425 = load i32, ptr %424, align 4, !tbaa !94
  %426 = tail call fastcc i32 @x264_clip3(i32 noundef %425, i32 noundef 0, i32 noundef 32) #24
  store i32 %426, ptr %424, align 4, !tbaa !94
  %427 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  %428 = load i32, ptr %427, align 4, !tbaa !168
  %429 = tail call fastcc i32 @x264_clip3(i32 noundef %428, i32 noundef 0, i32 noundef 2) #24
  store i32 %429, ptr %427, align 4, !tbaa !168
  %430 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 28
  %431 = load i32, ptr %430, align 16, !tbaa !145
  %432 = icmp ugt i32 %431, 2
  br i1 %432, label %433, label %434

433:                                              ; preds = %413
  store i32 0, ptr %430, align 16, !tbaa !145
  br label %434

434:                                              ; preds = %413, %433
  %435 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %436 = load i32, ptr %435, align 4, !tbaa !137
  %437 = icmp ugt i32 %436, 4
  br i1 %437, label %438, label %439

438:                                              ; preds = %434
  store i32 1, ptr %435, align 4, !tbaa !137
  br label %439

439:                                              ; preds = %434, %438
  %440 = phi i32 [ %436, %434 ], [ 1, %438 ]
  %441 = load i32, ptr %69, align 16, !tbaa !138
  %442 = icmp slt i32 %441, 4
  br i1 %442, label %443, label %444

443:                                              ; preds = %439
  store i32 4, ptr %69, align 16, !tbaa !138
  br label %449

444:                                              ; preds = %439
  %445 = icmp ugt i32 %441, 16
  %446 = icmp ult i32 %440, 2
  %447 = and i1 %445, %446
  br i1 %447, label %448, label %449

448:                                              ; preds = %444
  store i32 16, ptr %69, align 16, !tbaa !138
  br label %459

449:                                              ; preds = %443, %444
  %450 = icmp eq i32 %440, 4
  br i1 %450, label %451, label %459

451:                                              ; preds = %449
  %452 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %453 = load i32, ptr %452, align 4, !tbaa !144
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %451
  %456 = load i32, ptr %288, align 4, !tbaa !141
  %457 = icmp slt i32 %456, 2
  br i1 %457, label %458, label %459

458:                                              ; preds = %455, %451
  store i32 3, ptr %435, align 4, !tbaa !137
  br label %459

459:                                              ; preds = %448, %458, %455, %449
  %460 = load i32, ptr %288, align 4, !tbaa !141
  %461 = tail call fastcc i32 @x264_clip3(i32 noundef %460, i32 noundef 0, i32 noundef 10) #24
  store i32 %461, ptr %288, align 4, !tbaa !141
  %462 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 13
  %463 = load i32, ptr %462, align 4, !tbaa !169
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %468, label %465

465:                                              ; preds = %459
  %466 = load i32, ptr %275, align 16, !tbaa !74
  %467 = icmp sgt i32 %466, 1
  br label %468

468:                                              ; preds = %465, %459
  %469 = phi i1 [ false, %459 ], [ %467, %465 ]
  %470 = zext i1 %469 to i32
  store i32 %470, ptr %462, align 4, !tbaa !169
  %471 = load i32, ptr %112, align 4, !tbaa !83
  %472 = and i32 %471, 307
  store i32 %472, ptr %112, align 4, !tbaa !83
  %473 = load i32, ptr %68, align 16, !tbaa !170
  %474 = and i32 %473, 3
  store i32 %474, ptr %68, align 16, !tbaa !170
  %475 = and i32 %471, 16
  %476 = icmp eq i32 %475, 0
  br i1 %476, label %477, label %479

477:                                              ; preds = %468
  %478 = and i32 %471, 259
  store i32 %478, ptr %112, align 4, !tbaa !83
  br label %479

479:                                              ; preds = %477, %468
  %480 = phi i32 [ %478, %477 ], [ %472, %468 ]
  %481 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 2
  %482 = load i32, ptr %481, align 8, !tbaa !153
  %483 = icmp eq i32 %482, 0
  br i1 %483, label %484, label %487

484:                                              ; preds = %479
  %485 = and i32 %480, 305
  store i32 %485, ptr %112, align 4, !tbaa !83
  %486 = and i32 %473, 1
  store i32 %486, ptr %68, align 16, !tbaa !170
  br label %487

487:                                              ; preds = %484, %479
  %488 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 6
  %489 = load i32, ptr %488, align 8, !tbaa !148
  %490 = tail call fastcc i32 @x264_clip3(i32 noundef %489, i32 noundef -12, i32 noundef 12) #24
  store i32 %490, ptr %488, align 8, !tbaa !148
  %491 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %492 = load i32, ptr %491, align 16, !tbaa !96
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %487
  %495 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %496 = load i32, ptr %495, align 8, !tbaa !149
  br label %497

497:                                              ; preds = %487, %494
  %498 = phi i32 [ %496, %494 ], [ 0, %487 ]
  %499 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 14
  %500 = tail call fastcc i32 @x264_clip3(i32 noundef %498, i32 noundef 0, i32 noundef 2) #24
  store i32 %500, ptr %499, align 8, !tbaa !149
  %501 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 20
  %502 = load i32, ptr %501, align 16, !tbaa !152
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %497
  %505 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  store <2 x float> zeroinitializer, ptr %505, align 8, !tbaa !121
  br label %506

506:                                              ; preds = %504, %497
  %507 = icmp eq i32 %500, 0
  br i1 %507, label %511, label %508

508:                                              ; preds = %506
  %509 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %510 = load float, ptr %509, align 4, !tbaa !171
  br label %511

511:                                              ; preds = %506, %508
  %512 = phi float [ %510, %508 ], [ 0.000000e+00, %506 ]
  %513 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 18
  %514 = load float, ptr %513, align 8, !tbaa !172
  %515 = fpext float %514 to double
  %516 = tail call fastcc double @x264_clip3f(double noundef %515, double noundef 1.000000e+01) #24
  %517 = fptrunc double %516 to float
  store float %517, ptr %513, align 8, !tbaa !172
  %518 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 19
  %519 = fpext float %512 to double
  %520 = tail call fastcc double @x264_clip3f(double noundef %519, double noundef 1.000000e+01) #24
  %521 = fptrunc double %520 to float
  store float %521, ptr %518, align 4, !tbaa !171
  %522 = icmp slt i32 %461, 6
  br i1 %522, label %523, label %524

523:                                              ; preds = %511
  store float 0.000000e+00, ptr %513, align 8, !tbaa !172
  br label %524

524:                                              ; preds = %523, %511
  %525 = phi float [ 0.000000e+00, %523 ], [ %517, %511 ]
  %526 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 15
  %527 = fcmp olt float %525, 2.500000e-01
  %528 = select i1 %527, i32 -1, i32 -2
  %529 = fmul float %521, 2.500000e-01
  %530 = insertelement <2 x float> poison, float %525, i64 0
  %531 = insertelement <2 x float> %530, float %529, i64 1
  %532 = fmul <2 x float> %531, <float 2.560000e+02, float 2.560000e+02>
  %533 = fpext <2 x float> %532 to <2 x double>
  %534 = fadd <2 x double> %533, <double 5.000000e-01, double 5.000000e-01>
  %535 = fptosi <2 x double> %534 to <2 x i32>
  store <2 x i32> %535, ptr %526, align 4, !tbaa !94
  %536 = icmp eq <2 x i32> %535, zeroinitializer
  %537 = extractelement <2 x i1> %536, i64 0
  %538 = select i1 %537, i32 0, i32 %528
  %539 = add i32 %490, %538
  %540 = fcmp olt float %521, 2.500000e-01
  %541 = select i1 %540, i32 -1, i32 -2
  %542 = extractelement <2 x i1> %536, i64 1
  %543 = select i1 %542, i32 0, i32 %541
  %544 = add i32 %539, %543
  %545 = tail call fastcc i32 @x264_clip3(i32 noundef %544, i32 noundef -12, i32 noundef 12) #24
  store i32 %545, ptr %488, align 8, !tbaa !148
  %546 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 14
  %547 = load i32, ptr %546, align 8, !tbaa !155
  %548 = tail call fastcc i32 @x264_clip3(i32 noundef %547, i32 noundef 0, i32 noundef 2) #24
  store i32 %548, ptr %546, align 8, !tbaa !155
  %549 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 15
  %550 = load float, ptr %549, align 4, !tbaa !173
  %551 = fpext float %550 to double
  %552 = tail call fastcc double @x264_clip3f(double noundef %551, double noundef 3.000000e+00) #24
  %553 = fptrunc double %552 to float
  store float %553, ptr %549, align 4, !tbaa !173
  %554 = fcmp oeq float %553, 0.000000e+00
  br i1 %554, label %555, label %556

555:                                              ; preds = %524
  store i32 0, ptr %546, align 8, !tbaa !155
  br label %558

556:                                              ; preds = %524
  %557 = icmp eq i32 %548, 0
  br i1 %557, label %558, label %563

558:                                              ; preds = %555, %556
  %559 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %560 = load i32, ptr %559, align 8, !tbaa !64
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %563, label %562

562:                                              ; preds = %558
  store i32 1, ptr %546, align 8, !tbaa !155
  store float 0.000000e+00, ptr %549, align 4, !tbaa !173
  br label %563

563:                                              ; preds = %562, %558, %556
  %564 = phi i1 [ false, %562 ], [ true, %558 ], [ false, %556 ]
  %565 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 17
  %566 = load i32, ptr %565, align 4, !tbaa !151
  %567 = tail call fastcc i32 @x264_clip3(i32 noundef %566, i32 noundef 0, i32 noundef 65536) #24
  store i32 %567, ptr %565, align 4, !tbaa !151
  %568 = icmp eq i32 %461, 10
  %569 = icmp ne i32 %500, 2
  %570 = or i1 %569, %564
  %571 = and i1 %568, %570
  br i1 %571, label %572, label %573

572:                                              ; preds = %563
  store i32 9, ptr %288, align 4, !tbaa !141
  br label %573

573:                                              ; preds = %572, %563
  %574 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  %575 = load i32, ptr %574, align 16, !tbaa !174
  %576 = icmp slt i32 %575, 0
  br i1 %576, label %580, label %577

577:                                              ; preds = %573
  %578 = load i32, ptr @x264_levels, align 4, !tbaa !175
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %612, label %604

580:                                              ; preds = %573
  %581 = load i32, ptr %73, align 8, !tbaa !70
  %582 = icmp eq i32 %581, 2
  br i1 %582, label %583, label %588

583:                                              ; preds = %580
  %584 = load i32, ptr %199, align 8, !tbaa !65
  %585 = icmp slt i32 %584, 1
  br i1 %585, label %586, label %588

586:                                              ; preds = %583
  %587 = shl nsw i32 %354, 1
  store i32 %587, ptr %351, align 4, !tbaa !156
  br label %588

588:                                              ; preds = %586, %583, %580
  %589 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 23
  %590 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  store ptr %589, ptr %590, align 16, !tbaa !49
  %591 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  %592 = load i32, ptr %591, align 4, !tbaa !50
  tail call void @x264_sps_init(ptr noundef nonnull %589, i32 noundef %592, ptr noundef nonnull %0) #23
  %593 = load i32, ptr @x264_levels, align 4, !tbaa !175
  br label %594

594:                                              ; preds = %600, %588
  %595 = phi i32 [ %593, %588 ], [ %598, %600 ]
  %596 = phi ptr [ @x264_levels, %588 ], [ %597, %600 ]
  store i32 %595, ptr %574, align 16, !tbaa !174
  %597 = getelementptr inbounds %struct.x264_level_t, ptr %596, i64 1
  %598 = load i32, ptr %597, align 4, !tbaa !175
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %603, label %600

600:                                              ; preds = %594
  %601 = tail call i32 @x264_validate_levels(ptr noundef nonnull %0, i32 noundef 0) #23
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %603, label %594

603:                                              ; preds = %600, %594
  store i32 %352, ptr %351, align 4, !tbaa !156
  br label %613

604:                                              ; preds = %577, %608
  %605 = phi i32 [ %610, %608 ], [ %578, %577 ]
  %606 = phi ptr [ %609, %608 ], [ @x264_levels, %577 ]
  %607 = icmp eq i32 %605, %575
  br i1 %607, label %613, label %608

608:                                              ; preds = %604
  %609 = getelementptr inbounds %struct.x264_level_t, ptr %606, i64 1
  %610 = load i32, ptr %609, align 4, !tbaa !175
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %604, !llvm.loop !177

612:                                              ; preds = %608, %577
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.42, i32 noundef %575) #23
  br label %780

613:                                              ; preds = %604, %603
  %614 = phi ptr [ %596, %603 ], [ %606, %604 ]
  %615 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  %616 = load i32, ptr %615, align 4, !tbaa !178
  %617 = icmp slt i32 %616, 1
  br i1 %617, label %618, label %623

618:                                              ; preds = %613
  %619 = getelementptr inbounds %struct.x264_level_t, ptr %614, i64 0, i32 6
  %620 = load i32, ptr %619, align 4, !tbaa !179
  %621 = load i32, ptr %54, align 8, !tbaa !97
  %622 = ashr i32 %620, %621
  br label %627

623:                                              ; preds = %613
  %624 = load i32, ptr %54, align 8, !tbaa !97
  %625 = lshr i32 512, %624
  %626 = tail call fastcc i32 @x264_clip3(i32 noundef %616, i32 noundef 32, i32 noundef %625) #24
  br label %627

627:                                              ; preds = %623, %618
  %628 = phi i32 [ %624, %623 ], [ %621, %618 ]
  %629 = phi i32 [ %626, %623 ], [ %622, %618 ]
  store i32 %629, ptr %615, align 4, !tbaa !178
  %630 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %631 = load i32, ptr %630, align 4, !tbaa !81
  %632 = tail call fastcc i32 @x264_clip3(i32 noundef %631, i32 noundef 0, i32 noundef 2) #24
  store i32 %632, ptr %630, align 4, !tbaa !81
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %634, label %644

634:                                              ; preds = %627
  %635 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %636 = load i32, ptr %635, align 8, !tbaa !64
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %644, label %638

638:                                              ; preds = %634
  %639 = load i32, ptr %501, align 16, !tbaa !152
  %640 = icmp ne i32 %639, 0
  %641 = icmp eq i32 %628, 0
  %642 = select i1 %640, i1 %641, i1 false
  br i1 %642, label %643, label %644

643:                                              ; preds = %638
  store i32 -1, ptr %630, align 4, !tbaa !81
  br label %644

644:                                              ; preds = %643, %638, %634, %627
  %645 = load i32, ptr %53, align 4, !tbaa !67
  %646 = icmp sgt i32 %645, 1
  br i1 %646, label %647, label %667

647:                                              ; preds = %644
  %648 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 10
  %649 = load i32, ptr %648, align 8, !tbaa !180
  %650 = icmp slt i32 %649, 1
  br i1 %650, label %651, label %657

651:                                              ; preds = %647
  %652 = load i32, ptr %5, align 8, !tbaa !109
  %653 = add nsw i32 %652, 24
  %654 = sdiv i32 %653, %645
  %655 = add nsw i32 %654, -24
  %656 = sdiv i32 %655, 2
  br label %657

657:                                              ; preds = %651, %647
  %658 = phi i32 [ %656, %651 ], [ %649, %647 ]
  %659 = load i32, ptr %69, align 16, !tbaa !138
  %660 = tail call i32 @llvm.smax.i32(i32 %658, i32 %659)
  %661 = tail call i32 @llvm.smin.i32(i32 %660, i32 %629)
  %662 = and i32 %661, -16
  %663 = or disjoint i32 %662, 8
  %664 = icmp slt i32 %663, %661
  %665 = add i32 %662, 24
  %666 = select i1 %664, i32 %665, i32 %663
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.43, i32 noundef %666) #23
  store i32 %666, ptr %648, align 8, !tbaa !180
  br label %667

667:                                              ; preds = %657, %644
  %668 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 23
  %669 = load float, ptr %668, align 4, !tbaa !181
  %670 = fcmp olt float %669, 0.000000e+00
  br i1 %670, label %671, label %672

671:                                              ; preds = %667
  store float 0.000000e+00, ptr %668, align 4, !tbaa !181
  br label %672

672:                                              ; preds = %671, %667
  %673 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 24
  %674 = load float, ptr %673, align 8, !tbaa !182
  %675 = fcmp olt float %674, 0.000000e+00
  br i1 %675, label %676, label %677

676:                                              ; preds = %672
  store float 0.000000e+00, ptr %673, align 8, !tbaa !182
  br label %677

677:                                              ; preds = %676, %672
  %678 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 46
  %679 = load i32, ptr %678, align 4, !tbaa !50
  %680 = and i32 %679, 31
  store i32 %680, ptr %678, align 4, !tbaa !50
  %681 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  %682 = load i32, ptr %681, align 16, !tbaa !183
  %683 = icmp slt i32 %682, 2
  br i1 %683, label %684, label %687

684:                                              ; preds = %677
  %685 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  store i32 0, ptr %685, align 4, !tbaa !146
  %686 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  store i32 0, ptr %686, align 16, !tbaa !147
  br label %687

687:                                              ; preds = %684, %677
  %688 = load i32, ptr %54, align 8, !tbaa !97
  %689 = icmp eq i32 %688, 0
  br i1 %689, label %692, label %690

690:                                              ; preds = %687
  %691 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  store i32 1, ptr %691, align 4, !tbaa !184
  br label %692

692:                                              ; preds = %690, %687
  %693 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 10
  %694 = load i32, ptr %693, align 8, !tbaa !130
  %695 = icmp eq i32 %694, 0
  br i1 %695, label %710, label %696

696:                                              ; preds = %692
  %697 = load i32, ptr %199, align 8, !tbaa !65
  %698 = icmp eq i32 %697, 0
  br i1 %698, label %707, label %699

699:                                              ; preds = %696
  %700 = icmp eq i32 %694, 2
  br i1 %700, label %701, label %710

701:                                              ; preds = %699
  %702 = load i32, ptr %353, align 4, !tbaa !143
  %703 = load i32, ptr %351, align 4, !tbaa !156
  %704 = icmp ne i32 %702, %703
  %705 = icmp eq i32 %703, 0
  %706 = or i1 %704, %705
  br i1 %706, label %707, label %710

707:                                              ; preds = %701, %696
  %708 = phi ptr [ @.str.44, %696 ], [ @.str.45, %701 ]
  %709 = phi i32 [ 0, %696 ], [ 1, %701 ]
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %708) #23
  store i32 %709, ptr %693, align 8, !tbaa !130
  br label %710

710:                                              ; preds = %707, %692, %701, %699
  %711 = load i32, ptr %491, align 16, !tbaa !96
  %712 = icmp ne i32 %711, 0
  %713 = zext i1 %712 to i32
  store i32 %713, ptr %491, align 16, !tbaa !96
  %714 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %715 = load i32, ptr %714, align 4, !tbaa !185
  %716 = icmp ne i32 %715, 0
  %717 = zext i1 %716 to i32
  store i32 %717, ptr %714, align 4, !tbaa !185
  %718 = load <2 x i32>, ptr %52, align 8, !tbaa !94
  %719 = icmp ne <2 x i32> %718, zeroinitializer
  %720 = zext <2 x i1> %719 to <2 x i32>
  store <2 x i32> %720, ptr %52, align 8, !tbaa !94
  %721 = load <2 x i32>, ptr %54, align 8, !tbaa !94
  %722 = icmp ne <2 x i32> %721, zeroinitializer
  %723 = zext <2 x i1> %722 to <2 x i32>
  store <2 x i32> %723, ptr %54, align 8, !tbaa !94
  %724 = load i32, ptr %326, align 16, !tbaa !160
  %725 = icmp ne i32 %724, 0
  %726 = zext i1 %725 to i32
  store i32 %726, ptr %326, align 16, !tbaa !160
  %727 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 39
  %728 = load i32, ptr %727, align 4, !tbaa !186
  %729 = icmp ne i32 %728, 0
  %730 = zext i1 %729 to i32
  store i32 %730, ptr %727, align 4, !tbaa !186
  %731 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 43
  %732 = load <2 x i32>, ptr %731, align 8, !tbaa !94
  %733 = icmp ne <2 x i32> %732, zeroinitializer
  %734 = zext <2 x i1> %733 to <2 x i32>
  store <2 x i32> %734, ptr %731, align 8, !tbaa !94
  %735 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %736 = load i32, ptr %735, align 16, !tbaa !187
  %737 = icmp ne i32 %736, 0
  %738 = zext i1 %737 to i32
  store i32 %738, ptr %735, align 16, !tbaa !187
  %739 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %740 = load i32, ptr %739, align 8, !tbaa !69
  %741 = icmp ne i32 %740, 0
  %742 = zext i1 %741 to i32
  store i32 %742, ptr %739, align 8, !tbaa !69
  %743 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 54
  %744 = load <2 x i32>, ptr %743, align 4, !tbaa !94
  %745 = icmp ne <2 x i32> %744, zeroinitializer
  %746 = zext <2 x i1> %745 to <2 x i32>
  store <2 x i32> %746, ptr %743, align 4, !tbaa !94
  %747 = load i32, ptr %481, align 8, !tbaa !153
  %748 = icmp ne i32 %747, 0
  %749 = zext i1 %748 to i32
  store i32 %749, ptr %481, align 8, !tbaa !153
  %750 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 4
  %751 = load i32, ptr %750, align 16, !tbaa !162
  %752 = icmp ne i32 %751, 0
  %753 = zext i1 %752 to i32
  store i32 %753, ptr %750, align 16, !tbaa !162
  %754 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 12
  %755 = load <2 x i32>, ptr %754, align 16, !tbaa !94
  %756 = icmp ne <2 x i32> %755, zeroinitializer
  %757 = zext <2 x i1> %756 to <2 x i32>
  store <2 x i32> %757, ptr %754, align 16, !tbaa !94
  %758 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 15
  %759 = load <2 x i32>, ptr %758, align 4, !tbaa !94
  %760 = icmp ne <2 x i32> %759, zeroinitializer
  %761 = zext <2 x i1> %760 to <2 x i32>
  store <2 x i32> %761, ptr %758, align 4, !tbaa !94
  %762 = load i32, ptr %501, align 16, !tbaa !152
  %763 = icmp ne i32 %762, 0
  %764 = zext i1 %763 to i32
  store i32 %764, ptr %501, align 16, !tbaa !152
  %765 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %766 = load <2 x i32>, ptr %765, align 4, !tbaa !94
  %767 = icmp ne <2 x i32> %766, zeroinitializer
  %768 = zext <2 x i1> %767 to <2 x i32>
  store <2 x i32> %768, ptr %765, align 4, !tbaa !94
  %769 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %770 = load i32, ptr %769, align 8, !tbaa !71
  %771 = icmp ne i32 %770, 0
  %772 = zext i1 %771 to i32
  store i32 %772, ptr %769, align 8, !tbaa !71
  %773 = load i32, ptr %409, align 8, !tbaa !63
  %774 = icmp ne i32 %773, 0
  %775 = zext i1 %774 to i32
  store i32 %775, ptr %409, align 8, !tbaa !63
  %776 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 16
  %777 = load i32, ptr %776, align 8, !tbaa !64
  %778 = icmp ne i32 %777, 0
  %779 = zext i1 %778 to i32
  store i32 %779, ptr %776, align 8, !tbaa !64
  br label %780

780:                                              ; preds = %124, %19, %128, %612, %710, %14, %9
  %781 = phi i32 [ -1, %9 ], [ -1, %14 ], [ -1, %19 ], [ -1, %128 ], [ -1, %124 ], [ 0, %710 ], [ -1, %612 ]
  ret i32 %781
}

; Function Attrs: optsize
declare i32 @x264_cqm_parse_file(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @spec_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_set_aspect_ratio(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !188
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %51

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 11
  %11 = load i32, ptr %10, align 4, !tbaa !189
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %51

13:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #22
  store i32 %7, ptr %4, align 4, !tbaa !94
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #22
  store i32 %11, ptr %5, align 4, !tbaa !94
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 11, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !190
  %17 = load i32, ptr %14, align 4, !tbaa !191
  call void @x264_reduce_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %18 = load i32, ptr %4, align 4, !tbaa !94
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
  br i1 %30, label %23, label %31, !llvm.loop !192

31:                                               ; preds = %23
  store i32 %26, ptr %4, align 4, !tbaa !94
  store i32 %27, ptr %5, align 4, !tbaa !94
  br label %32

32:                                               ; preds = %31, %13
  call void @x264_reduce_fraction(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %33 = load i32, ptr %4, align 4, !tbaa !94
  %34 = icmp eq i32 %33, %16
  %35 = load i32, ptr %5, align 4
  br i1 %34, label %36, label %40

36:                                               ; preds = %32
  %37 = icmp ne i32 %35, %17
  %38 = icmp ne i32 %2, 0
  %39 = or i1 %38, %37
  br i1 %39, label %40, label %50

40:                                               ; preds = %36, %32
  store i32 0, ptr %15, align 4, !tbaa !190
  store i32 0, ptr %14, align 4, !tbaa !191
  %41 = icmp eq i32 %33, 0
  %42 = icmp eq i32 %35, 0
  %43 = select i1 %41, i1 true, i1 %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.46) #23
  br label %50

45:                                               ; preds = %40
  %46 = icmp eq i32 %2, 0
  %47 = select i1 %46, i32 3, i32 2
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef %47, ptr noundef nonnull @.str.47, i32 noundef %33, i32 noundef %35) #23
  %48 = load i32, ptr %4, align 4, !tbaa !94
  store i32 %48, ptr %15, align 4, !tbaa !190
  %49 = load i32, ptr %5, align 4, !tbaa !94
  store i32 %49, ptr %14, align 4, !tbaa !191
  br label %50

50:                                               ; preds = %44, %45, %36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #22
  br label %51

51:                                               ; preds = %50, %9, %3
  ret void
}

; Function Attrs: optsize
declare void @x264_reduce_fraction(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_sps_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_pps_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_validate_levels(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_cqm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_rdo_init() local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_predict_16x16_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_predict_8x8c_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_predict_8x8_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_predict_4x4_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_init_vlc_tables(...) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_pixel_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_dct_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_zigzag_init(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_mc_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_quant_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_deblock_init(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_dct_init_weights() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @mbcmp_init(ptr nocapture noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 73
  %3 = load i32, ptr %2, align 4, !tbaa !144
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 2
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %9, i64 56, i1 false)
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(56) %6, i64 56, i1 false)
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 21
  store ptr %12, ptr %13, align 8, !tbaa !193
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !88
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 24
  store ptr %15, ptr %16, align 8, !tbaa !194
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 29
  br label %45

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %20 = load i32, ptr %19, align 4, !tbaa !141
  %21 = freeze i32 %20
  %22 = icmp sgt i32 %21, 1
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 5
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 2
  br i1 %22, label %26, label %35

26:                                               ; preds = %18
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) %25, i64 56, i1 false)
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull align 8 dereferenceable(56) %25, i64 56, i1 false)
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 22
  %29 = load ptr, ptr %28, align 8, !tbaa !88
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 21
  store ptr %29, ptr %30, align 8, !tbaa !193
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 25
  %32 = load ptr, ptr %31, align 8, !tbaa !88
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 24
  store ptr %32, ptr %33, align 8, !tbaa !194
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 28
  br label %45

35:                                               ; preds = %18
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull align 8 dereferenceable(56) %36, i64 56, i1 false)
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %37, ptr noundef nonnull align 8 dereferenceable(56) %23, i64 56, i1 false)
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 23
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 21
  store ptr %39, ptr %40, align 8, !tbaa !193
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 26
  %42 = load ptr, ptr %41, align 8, !tbaa !88
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 24
  store ptr %42, ptr %43, align 8, !tbaa !194
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 29
  br label %45

45:                                               ; preds = %26, %35, %5
  %46 = phi ptr [ %8, %5 ], [ %25, %35 ], [ %25, %26 ]
  %47 = phi ptr [ %6, %5 ], [ %23, %35 ], [ %23, %26 ]
  %48 = phi i1 [ false, %5 ], [ false, %35 ], [ true, %26 ]
  %49 = phi ptr [ %17, %5 ], [ %44, %35 ], [ %34, %26 ]
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 27
  store ptr %50, ptr %51, align 8, !tbaa !195
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 7
  %53 = load i32, ptr %52, align 4, !tbaa !137
  %54 = icmp eq i32 %53, 4
  %55 = and i1 %48, %54
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 7
  %57 = select i1 %55, ptr %46, ptr %47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %56, ptr noundef nonnull align 8 dereferenceable(56) %57, i64 56, i1 false)
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 8
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 18
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 16
  %61 = select i1 %55, ptr %59, ptr %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %58, ptr noundef nonnull align 8 dereferenceable(56) %61, i64 56, i1 false)
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 9
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 19
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69, i32 17
  %65 = select i1 %55, ptr %63, ptr %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %62, ptr noundef nonnull align 8 dereferenceable(56) %65, i64 56, i1 false)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: optsize
declare i32 @x264_analyse_init_costs(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @x264_lookahead_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare ptr @x264_frame_pop_unused(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_macroblock_cache_allocate(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_macroblock_thread_allocate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_ratecontrol_new(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @x264_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_cpu_num_processors() local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @x264_clip3(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
  %4 = icmp slt i32 %0, %1
  %5 = tail call i32 @llvm.smin.i32(i32 %0, i32 %2)
  %6 = select i1 %4, i32 %1, i32 %5
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef double @x264_clip3f(double noundef %0, double noundef %1) unnamed_addr #9 {
  %3 = fcmp olt double %0, 0.000000e+00
  %4 = fcmp ogt double %0, %1
  %5 = select i1 %4, double %1, double %0
  %6 = select i1 %3, double 0.000000e+00, double %5
  ret double %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_encoder_reconfig(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 16, !tbaa !88
  %5 = getelementptr inbounds %struct.x264_t, ptr %4, i64 0, i32 4
  %6 = load i32, ptr %5, align 16, !tbaa !196
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !88
  tail call fastcc void @x264_set_aspect_ratio(ptr noundef %9, ptr noundef %1, i32 noundef 0) #24
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !197
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 12
  store i32 %11, ptr %12, align 16, !tbaa !74
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 19
  %14 = load i32, ptr %13, align 4, !tbaa !198
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 19
  store i32 %14, ptr %15, align 4, !tbaa !161
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 15
  %17 = load i32, ptr %16, align 4, !tbaa !80
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 15
  %21 = load i32, ptr %20, align 4, !tbaa !199
  store i32 %21, ptr %16, align 4, !tbaa !80
  br label %22

22:                                               ; preds = %19, %2
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 21
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 21
  %25 = load <2 x i32>, ptr %23, align 4, !tbaa !94
  store <2 x i32> %25, ptr %24, align 4, !tbaa !94
  %26 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 23
  %27 = load i32, ptr %26, align 4, !tbaa !200
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 23
  store i32 %27, ptr %28, align 4, !tbaa !167
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41
  %30 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !201
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41
  %33 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 1
  store i32 %31, ptr %33, align 4, !tbaa !83
  %34 = load i32, ptr %29, align 8, !tbaa !202
  store i32 %34, ptr %32, align 16, !tbaa !170
  %35 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !203
  %37 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 5
  store i32 %36, ptr %37, align 4, !tbaa !159
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 7
  %39 = load i32, ptr %38, align 4, !tbaa !137
  %40 = icmp slt i32 %39, 3
  %41 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 8
  %42 = load i32, ptr %41, align 8, !tbaa !204
  br i1 %40, label %47, label %43

43:                                               ; preds = %22
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 8
  %45 = load i32, ptr %44, align 16, !tbaa !138
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %22, %43
  %48 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 8
  store i32 %42, ptr %48, align 16, !tbaa !138
  br label %49

49:                                               ; preds = %47, %43
  %50 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 17
  %51 = load i32, ptr %50, align 4, !tbaa !205
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 17
  store i32 %51, ptr %52, align 4, !tbaa !151
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 11
  %54 = load i32, ptr %53, align 4, !tbaa !141
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 11
  %58 = load i32, ptr %57, align 4, !tbaa !206
  store i32 %58, ptr %53, align 4, !tbaa !141
  br label %59

59:                                               ; preds = %56, %49
  %60 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 12
  %61 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 12
  %62 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 16
  %63 = load i32, ptr %62, align 8, !tbaa !207
  %64 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 16
  store i32 %63, ptr %64, align 16, !tbaa !208
  %65 = load <4 x i32>, ptr %60, align 8, !tbaa !94
  store <4 x i32> %65, ptr %61, align 16, !tbaa !94
  %66 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 18
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 18
  %68 = load <2 x float>, ptr %66, align 8, !tbaa !121
  store <2 x float> %68, ptr %67, align 8, !tbaa !121
  %69 = icmp sgt i32 %39, 2
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 7
  %71 = load i32, ptr %70, align 4, !tbaa !209
  br i1 %69, label %75, label %72

72:                                               ; preds = %59
  %73 = icmp slt i32 %71, 3
  br i1 %73, label %74, label %83

74:                                               ; preds = %72
  store i32 %71, ptr %38, align 4, !tbaa !137
  br label %83

75:                                               ; preds = %59
  store i32 %71, ptr %38, align 4, !tbaa !137
  %76 = icmp sgt i32 %71, 2
  br i1 %76, label %77, label %83

77:                                               ; preds = %75
  %78 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 43, i32 17
  %79 = load i32, ptr %78, align 4, !tbaa !84
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = and i32 %31, -33
  store i32 %82, ptr %33, align 4, !tbaa !83
  br label %83

83:                                               ; preds = %72, %74, %81, %77, %75
  %84 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 26
  %85 = load ptr, ptr %84, align 16, !tbaa !51
  %86 = getelementptr inbounds %struct.x264_pps_t, ptr %85, i64 0, i32 15
  %87 = load i32, ptr %86, align 4, !tbaa !210
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 41, i32 2
  %91 = load i32, ptr %90, align 8, !tbaa !211
  %92 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 41, i32 2
  store i32 %91, ptr %92, align 8, !tbaa !153
  br label %93

93:                                               ; preds = %89, %83
  %94 = getelementptr inbounds %struct.x264_t, ptr %9, i64 0, i32 43, i32 8
  %95 = load i32, ptr %94, align 16, !tbaa !77
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 20
  %99 = load i32, ptr %98, align 8, !tbaa !212
  %100 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 20
  store i32 %99, ptr %100, align 16, !tbaa !47
  br label %101

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 56
  %103 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 56
  %104 = load <2 x i32>, ptr %102, align 4, !tbaa !94
  store <2 x i32> %104, ptr %103, align 4, !tbaa !94
  %105 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 58
  %106 = load i32, ptr %105, align 4, !tbaa !213
  %107 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 58
  store i32 %106, ptr %107, align 4, !tbaa !117
  %108 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 9
  %109 = load i32, ptr %108, align 4, !tbaa !156
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %101
  %112 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 10
  %113 = load i32, ptr %112, align 8, !tbaa !65
  %114 = icmp sgt i32 %113, 0
  br i1 %114, label %115, label %127

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 9
  %117 = load i32, ptr %116, align 4, !tbaa !214
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 10
  %121 = load i32, ptr %120, align 8, !tbaa !215
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %119
  store i32 %117, ptr %108, align 4, !tbaa !156
  store i32 %121, ptr %112, align 8, !tbaa !65
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 5
  %125 = load i32, ptr %124, align 4, !tbaa !216
  %126 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 5
  store i32 %125, ptr %126, align 4, !tbaa !143
  br label %127

127:                                              ; preds = %123, %119, %115, %111, %101
  %128 = phi i32 [ 1, %123 ], [ 0, %119 ], [ 0, %115 ], [ 0, %111 ], [ 0, %101 ]
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 6
  %130 = load float, ptr %129, align 8, !tbaa !142
  %131 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 6
  %132 = load float, ptr %131, align 8, !tbaa !217
  %133 = fcmp une float %130, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store float %132, ptr %129, align 8, !tbaa !142
  br label %135

135:                                              ; preds = %134, %127
  %136 = phi i32 [ 1, %134 ], [ %128, %127 ]
  %137 = getelementptr inbounds %struct.x264_param_t, ptr %9, i64 0, i32 42, i32 7
  %138 = load float, ptr %137, align 4, !tbaa !218
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %1, i64 0, i32 42, i32 7
  %140 = load float, ptr %139, align 4, !tbaa !219
  %141 = fcmp une float %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store float %140, ptr %137, align 4, !tbaa !218
  br label %143

143:                                              ; preds = %142, %135
  %144 = phi i32 [ 1, %142 ], [ %136, %135 ]
  tail call fastcc void @mbcmp_init(ptr noundef nonnull %9) #24
  %145 = tail call fastcc i32 @x264_validate_parameters(ptr noundef nonnull %9) #24, !range !16
  %146 = icmp eq i32 %145, 0
  %147 = icmp ne i32 %144, 0
  %148 = and i1 %147, %146
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  tail call void @x264_ratecontrol_init_reconfigurable(ptr noundef nonnull %9, i32 noundef 0) #23
  br label %150

150:                                              ; preds = %149, %143
  ret i32 %145
}

; Function Attrs: optsize
declare void @x264_ratecontrol_init_reconfigurable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_encoder_parameters(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 16, !tbaa !196
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %1, ptr noundef nonnull align 16 dereferenceable(704) %7, i64 704, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_encoder_headers(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  store i32 0, ptr %4, align 16, !tbaa !107
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 3
  %9 = load i32, ptr %8, align 16, !tbaa !112
  tail call fastcc void @bs_init(ptr noundef nonnull %5, ptr noundef %7, i32 noundef %9) #24
  tail call fastcc void @x264_nal_start(ptr noundef %0, i32 noundef 7, i32 noundef 3) #24
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 16, !tbaa !49
  tail call void @x264_sps_write(ptr noundef nonnull %5, ptr noundef %11) #23
  %12 = tail call fastcc i32 @x264_nal_end(ptr noundef %0) #24, !range !16
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %0, i32 noundef 8, i32 noundef 3) #24
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %16 = load ptr, ptr %15, align 16, !tbaa !51
  tail call void @x264_pps_write(ptr noundef nonnull %5, ptr noundef %16) #23
  %17 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %0) #24, !range !16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0) #24
  %20 = tail call i32 @x264_sei_version_write(ptr noundef nonnull %0, ptr noundef nonnull %5) #23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %0) #24, !range !16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = tail call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef nonnull %0, i32 noundef 0) #24
  %27 = load i32, ptr %4, align 16, !tbaa !107
  store i32 %27, ptr %2, align 4, !tbaa !94
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !126
  store ptr %29, ptr %1, align 8, !tbaa !88
  store i32 0, ptr %4, align 16, !tbaa !107
  br label %30

30:                                               ; preds = %22, %19, %14, %3, %25
  %31 = phi i32 [ %26, %25 ], [ -1, %3 ], [ -1, %14 ], [ -1, %19 ], [ -1, %22 ]
  ret i32 %31
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bs_init(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #11 {
  %4 = ptrtoint ptr %1 to i64
  %5 = and i64 %4, 3
  %6 = sub nsw i64 0, %5
  %7 = getelementptr inbounds i8, ptr %1, i64 %6
  store ptr %7, ptr %0, align 8, !tbaa !220
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !221
  %9 = sext i32 %2 to i64
  %10 = getelementptr inbounds i8, ptr %1, i64 %9
  %11 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !222
  %12 = trunc i64 %5 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = sub nuw nsw i32 64, %13
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !223
  %16 = load i32, ptr %7, align 4, !tbaa !120
  %17 = tail call fastcc i32 @endian_fix32(i32 noundef %16) #24
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %20 = shl i64 %4, 3
  %21 = and i64 %20, 24
  %22 = sub nuw nsw i64 32, %21
  %23 = lshr i64 %18, %22
  store i64 %23, ptr %19, align 8, !tbaa !224
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_nal_start(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = load i32, ptr %4, align 16, !tbaa !107
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %8
  store i32 %2, ptr %9, align 8, !tbaa !225
  %10 = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %8, i32 1
  store i32 %1, ptr %10, align 4, !tbaa !227
  %11 = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %8, i32 2
  store i32 0, ptr %11, align 8, !tbaa !228
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !125
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %15 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %14) #24
  %16 = sdiv i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, ptr %13, i64 %17
  %19 = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %8, i32 3
  store ptr %18, ptr %19, align 8, !tbaa !229
  ret void
}

; Function Attrs: optsize
declare void @x264_sps_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_nal_end(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !126
  %5 = load i32, ptr %2, align 16, !tbaa !107
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !125
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %10 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %9) #24
  %11 = sdiv i32 %10, 8
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, ptr %8, i64 %12
  %14 = getelementptr inbounds %struct.x264_nal_t, ptr %4, i64 %6, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !229
  %16 = ptrtoint ptr %13 to i64
  %17 = ptrtoint ptr %15 to i64
  %18 = sub i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.x264_nal_t, ptr %4, i64 %6, i32 2
  store i32 %19, ptr %20, align 8, !tbaa !228
  %21 = add nsw i32 %5, 1
  store i32 %21, ptr %2, align 16, !tbaa !107
  %22 = tail call fastcc i32 @x264_nal_check_buffer(ptr noundef %0) #24, !range !16
  ret i32 %22
}

; Function Attrs: optsize
declare void @x264_pps_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_sei_version_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_encoder_encapsulate_nals(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !126
  %7 = zext nneg i32 %1 to i64
  br label %18

8:                                                ; preds = %18, %2
  %9 = phi i32 [ 0, %2 ], [ %23, %18 ]
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %11 = load i32, ptr %10, align 16, !tbaa !107
  %12 = icmp sgt i32 %11, %1
  br i1 %12, label %13, label %26

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  %16 = sext i32 %1 to i64
  %17 = sext i32 %11 to i64
  br label %38

18:                                               ; preds = %4, %18
  %19 = phi i64 [ 0, %4 ], [ %24, %18 ]
  %20 = phi i32 [ 0, %4 ], [ %23, %18 ]
  %21 = getelementptr inbounds %struct.x264_nal_t, ptr %6, i64 %19, i32 2
  %22 = load i32, ptr %21, align 8, !tbaa !228
  %23 = add nsw i32 %22, %20
  %24 = add nuw nsw i64 %19, 1
  %25 = icmp eq i64 %24, %7
  br i1 %25, label %8, label %18, !llvm.loop !230

26:                                               ; preds = %38, %8
  %27 = phi i32 [ 0, %8 ], [ %43, %38 ]
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 9
  %29 = load i32, ptr %28, align 16, !tbaa !114
  %30 = mul nsw i32 %27, 3
  %31 = sdiv i32 %30, 2
  %32 = shl nsw i32 %11, 2
  %33 = add nsw i32 %31, %32
  %34 = icmp slt i32 %29, %33
  br i1 %34, label %46, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !113
  br label %61

38:                                               ; preds = %13, %38
  %39 = phi i64 [ %16, %13 ], [ %44, %38 ]
  %40 = phi i32 [ 0, %13 ], [ %43, %38 ]
  %41 = getelementptr inbounds %struct.x264_nal_t, ptr %15, i64 %39, i32 2
  %42 = load i32, ptr %41, align 8, !tbaa !228
  %43 = add nsw i32 %42, %40
  %44 = add nsw i64 %39, 1
  %45 = icmp eq i64 %44, %17
  br i1 %45, label %26, label %38, !llvm.loop !231

46:                                               ; preds = %26
  %47 = shl nsw i32 %27, 1
  %48 = add nsw i32 %32, %47
  %49 = tail call ptr @x264_malloc(i32 noundef %48) #23
  %50 = icmp eq ptr %49, null
  br i1 %50, label %108, label %51

51:                                               ; preds = %46
  %52 = icmp eq i32 %9, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !113
  %56 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %49, ptr align 1 %55, i64 %56, i1 false)
  br label %57

57:                                               ; preds = %53, %51
  %58 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %59 = load ptr, ptr %58, align 8, !tbaa !113
  tail call void @x264_free(ptr noundef %59) #23
  store ptr %49, ptr %58, align 8, !tbaa !113
  %60 = load i32, ptr %10, align 16, !tbaa !107
  br label %61

61:                                               ; preds = %35, %57
  %62 = phi i32 [ %11, %35 ], [ %60, %57 ]
  %63 = phi ptr [ %37, %35 ], [ %49, %57 ]
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %65 = sext i32 %9 to i64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  %67 = icmp sgt i32 %62, %1
  br i1 %67, label %68, label %75

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %71 = sext i32 %1 to i64
  %72 = load ptr, ptr %69, align 8, !tbaa !126
  br label %83

73:                                               ; preds = %93
  %74 = load ptr, ptr %64, align 8, !tbaa !113
  br label %75

75:                                               ; preds = %73, %61
  %76 = phi ptr [ %63, %61 ], [ %74, %73 ]
  %77 = phi ptr [ %66, %61 ], [ %103, %73 ]
  %78 = getelementptr inbounds i8, ptr %76, i64 %65
  %79 = ptrtoint ptr %77 to i64
  %80 = ptrtoint ptr %78 to i64
  %81 = sub i64 %79, %80
  %82 = trunc i64 %81 to i32
  br label %108

83:                                               ; preds = %68, %93
  %84 = phi ptr [ %72, %68 ], [ %99, %93 ]
  %85 = phi i64 [ %71, %68 ], [ %104, %93 ]
  %86 = phi ptr [ %66, %68 ], [ %103, %93 ]
  %87 = icmp eq i64 %85, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.x264_nal_t, ptr %84, i64 %85, i32 1
  %90 = load i32, ptr %89, align 4, !tbaa !227
  %91 = add i32 %90, -7
  %92 = icmp ult i32 %91, 2
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i1 [ true, %83 ], [ %92, %88 ]
  %95 = zext i1 %94 to i32
  %96 = getelementptr inbounds %struct.x264_nal_t, ptr %84, i64 %85
  %97 = load i32, ptr %70, align 16, !tbaa !187
  %98 = tail call i32 @x264_nal_encode(ptr noundef %86, ptr noundef %96, i32 noundef %97, i32 noundef %95) #23
  %99 = load ptr, ptr %69, align 8, !tbaa !126
  %100 = getelementptr inbounds %struct.x264_nal_t, ptr %99, i64 %85, i32 2
  store i32 %98, ptr %100, align 8, !tbaa !228
  %101 = getelementptr inbounds %struct.x264_nal_t, ptr %99, i64 %85, i32 3
  store ptr %86, ptr %101, align 8, !tbaa !229
  %102 = sext i32 %98 to i64
  %103 = getelementptr inbounds i8, ptr %86, i64 %102
  %104 = add nsw i64 %85, 1
  %105 = load i32, ptr %10, align 16, !tbaa !107
  %106 = sext i32 %105 to i64
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %83, label %73, !llvm.loop !232

108:                                              ; preds = %46, %75
  %109 = phi i32 [ %82, %75 ], [ -1, %46 ]
  ret i32 %109
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @endian_fix32(i32 noundef %0) unnamed_addr #9 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @bs_pos(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = load ptr, ptr %0, align 8, !tbaa !220
  %5 = ptrtoint ptr %3 to i64
  %6 = ptrtoint ptr %4 to i64
  %7 = sub i64 %5, %6
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !223
  %10 = trunc i64 %7 to i32
  %11 = shl i32 %10, 3
  %12 = sub i32 %11, %9
  %13 = add i32 %12, 64
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_nal_check_buffer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 16, !tbaa !107
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !127
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %20, label %7

7:                                                ; preds = %1
  %8 = mul i32 %5, 48
  %9 = tail call ptr @x264_malloc(i32 noundef %8) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %20, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !126
  %14 = load i32, ptr %4, align 4, !tbaa !127
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %9, ptr align 8 %13, i64 %16, i1 false)
  %17 = load ptr, ptr %12, align 8, !tbaa !126
  tail call void @x264_free(ptr noundef %17) #23
  store ptr %9, ptr %12, align 8, !tbaa !126
  %18 = load i32, ptr %4, align 4, !tbaa !127
  %19 = shl nsw i32 %18, 1
  store i32 %19, ptr %4, align 4, !tbaa !127
  br label %20

20:                                               ; preds = %1, %11, %7
  %21 = phi i32 [ -1, %7 ], [ 0, %11 ], [ 0, %1 ]
  ret i32 %21
}

; Function Attrs: optsize
declare i32 @x264_nal_encode(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_weighted_reference_duplicate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %5 = load i32, ptr %4, align 8, !tbaa !91
  %6 = icmp slt i32 %5, 2
  br i1 %6, label %27, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @x264_frame_pop_blank_unused(ptr noundef nonnull %0) #23
  %9 = sext i32 %1 to i64
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15632) %8, ptr noundef nonnull align 16 dereferenceable(15632) %11, i64 15632, i1 false), !tbaa.struct !233
  %12 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 78
  store i32 1, ptr %12, align 16, !tbaa !234
  %13 = load ptr, ptr %10, align 8, !tbaa !88
  %14 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 40
  store ptr %13, ptr %14, align 8, !tbaa !237
  %15 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 39
  store i32 1, ptr %15, align 16, !tbaa !238
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %17 = load ptr, ptr %16, align 8, !tbaa !239
  %18 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 37, i64 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %18, ptr noundef nonnull align 16 dereferenceable(192) %2, i64 192, i1 false)
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50
  store i32 1, ptr %19, align 8, !tbaa !94
  %20 = load i32, ptr %4, align 8, !tbaa !91
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = add nsw i32 %20, 1
  store i32 %23, ptr %4, align 8, !tbaa !91
  br label %24

24:                                               ; preds = %22, %7
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 15
  store ptr null, ptr %25, align 8, !tbaa !88
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 1
  tail call void @x264_frame_unshift(ptr noundef nonnull %26, ptr noundef nonnull %8) #23
  br label %27

27:                                               ; preds = %3, %24
  %28 = phi i32 [ 1, %24 ], [ -1, %3 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @x264_frame_pop_blank_unused(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_unshift(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_encoder_intra_refresh(ptr nocapture noundef readonly %0) local_unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 16, !tbaa !196
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %struct.x264_t, ptr %6, i64 0, i32 22
  store i32 1, ptr %7, align 4, !tbaa !240
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_encoder_encode(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %7 = load i32, ptr %6, align 4, !tbaa !67
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 16, !tbaa !196
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = add nsw i32 %11, 1
  %16 = srem i32 %15, %7
  store i32 %16, ptr %10, align 16, !tbaa !196
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = add nsw i32 %16, 1
  %21 = srem i32 %20, %7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !88
  tail call fastcc void @x264_thread_sync_context(ptr noundef %19, ptr noundef %14) #24
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %19, ptr noundef %14, ptr noundef %24) #23
  br label %25

25:                                               ; preds = %5, %9
  %26 = phi ptr [ %24, %9 ], [ %0, %5 ]
  %27 = phi ptr [ %19, %9 ], [ %0, %5 ]
  %28 = tail call fastcc i32 @x264_reference_update(ptr noundef %27) #24, !range !16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %583

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 45
  %32 = load ptr, ptr %31, align 16, !tbaa !124
  %33 = getelementptr inbounds %struct.x264_frame, ptr %32, i64 0, i32 76
  store i32 -1, ptr %33, align 8, !tbaa !241
  store i32 0, ptr %2, align 4, !tbaa !94
  store ptr null, ptr %1, align 8, !tbaa !88
  %34 = icmp eq ptr %3, null
  br i1 %34, label %143, label %35

35:                                               ; preds = %30
  %36 = tail call ptr @x264_frame_pop_unused(ptr noundef nonnull %27, i32 noundef 0) #23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %583, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @x264_frame_copy_picture(ptr noundef nonnull %27, ptr noundef nonnull %36, ptr noundef nonnull %3) #23
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %583, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !108
  %44 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 24
  %45 = load ptr, ptr %44, align 16, !tbaa !49
  %46 = getelementptr inbounds %struct.x264_sps_t, ptr %45, i64 0, i32 16
  %47 = load i32, ptr %46, align 4, !tbaa !55
  %48 = shl nsw i32 %47, 4
  %49 = icmp eq i32 %43, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 6
  %52 = load i32, ptr %51, align 8, !tbaa !109
  %53 = getelementptr inbounds %struct.x264_sps_t, ptr %45, i64 0, i32 17
  %54 = load i32, ptr %53, align 4, !tbaa !60
  %55 = shl nsw i32 %54, 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %58, label %57

57:                                               ; preds = %50, %41
  tail call void @x264_frame_expand_border_mod16(ptr noundef nonnull %27, ptr noundef nonnull %36) #23
  br label %58

58:                                               ; preds = %57, %50
  %59 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 5
  %60 = load i32, ptr %59, align 4, !tbaa !87
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 4, !tbaa !87
  %62 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 10
  store i32 %60, ptr %62, align 8, !tbaa !242
  %63 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 10
  %64 = load i32, ptr %63, align 8, !tbaa !73
  %65 = icmp ne i32 %64, 0
  %66 = icmp eq i32 %60, %64
  %67 = select i1 %65, i1 %66, i1 false
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 3
  %70 = load i64, ptr %69, align 16, !tbaa !243
  %71 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 11
  store i64 %70, ptr %71, align 16, !tbaa !244
  br label %72

72:                                               ; preds = %68, %58
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 47
  %74 = load i32, ptr %73, align 8, !tbaa !69
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 3
  %78 = load i64, ptr %77, align 16, !tbaa !243
  %79 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 14
  %80 = load i64, ptr %79, align 16, !tbaa !245
  %81 = icmp sgt i64 %78, %80
  br i1 %81, label %83, label %82

82:                                               ; preds = %76
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %27, i32 noundef 1, ptr noundef nonnull @.str.48) #23
  br label %83

83:                                               ; preds = %82, %76, %72
  %84 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 14
  %85 = load i64, ptr %84, align 16, !tbaa !245
  %86 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 15
  store i64 %85, ptr %86, align 8, !tbaa !246
  %87 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 3
  %88 = load i64, ptr %87, align 16, !tbaa !243
  store i64 %88, ptr %84, align 16, !tbaa !245
  %89 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 15
  %90 = load i32, ptr %89, align 4, !tbaa !247
  %91 = add i32 %90, -10
  %92 = icmp ult i32 %91, -9
  br i1 %92, label %93, label %108

93:                                               ; preds = %83
  %94 = getelementptr inbounds %struct.x264_frame, ptr %36, i64 0, i32 9
  %95 = load ptr, ptr %94, align 16, !tbaa !248
  %96 = icmp eq ptr %95, null
  %97 = select i1 %96, ptr %27, ptr %95
  %98 = getelementptr inbounds %struct.x264_param_t, ptr %97, i64 0, i32 26
  %99 = load i32, ptr %98, align 8, !tbaa !249
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %97, i64 0, i32 53
  %103 = load i32, ptr %102, align 8, !tbaa !250
  %104 = icmp eq i32 %103, 0
  %105 = select i1 %104, i32 5, i32 4
  br label %106

106:                                              ; preds = %93, %101
  %107 = phi i32 [ %105, %101 ], [ 1, %93 ]
  store i32 %107, ptr %89, align 4, !tbaa !247
  br label %108

108:                                              ; preds = %83, %106
  %109 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 16
  %110 = load i32, ptr %109, align 16, !tbaa !82
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 41, i32 3
  %114 = load i32, ptr %113, align 4, !tbaa !81
  switch i32 %114, label %116 [
    i32 -1, label %115
    i32 2, label %115
  ]

115:                                              ; preds = %112, %112
  tail call void @x264_weight_plane_analyse(ptr noundef nonnull %27, ptr noundef nonnull %36) #23
  br label %116

116:                                              ; preds = %112, %115
  tail call void @x264_frame_init_lowres(ptr noundef nonnull %27, ptr noundef nonnull %36) #23
  br label %117

117:                                              ; preds = %116, %108
  %118 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 42, i32 16
  %119 = load i32, ptr %118, align 8, !tbaa !64
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 42, i32 20
  %123 = load i32, ptr %122, align 8, !tbaa !63
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = tail call i32 @x264_macroblock_tree_read(ptr noundef nonnull %27, ptr noundef nonnull %36) #23
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %133, label %583

128:                                              ; preds = %121, %117
  %129 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 42, i32 14
  %130 = load i32, ptr %129, align 8, !tbaa !155
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  tail call void @x264_adaptive_quant_frame(ptr noundef nonnull %27, ptr noundef nonnull %36) #23
  br label %133

133:                                              ; preds = %128, %132, %125
  tail call void @x264_lookahead_put_frame(ptr noundef nonnull %27, ptr noundef nonnull %36) #23
  %134 = load i32, ptr %59, align 4, !tbaa !87
  %135 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 9
  %136 = load i32, ptr %135, align 4, !tbaa !72
  %137 = add nsw i32 %136, 1
  %138 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 12
  %139 = load i32, ptr %138, align 4, !tbaa !67
  %140 = sub i32 %137, %139
  %141 = icmp sgt i32 %134, %140
  br i1 %141, label %146, label %142

142:                                              ; preds = %133
  store i32 0, ptr %4, align 8, !tbaa !251
  br label %583

143:                                              ; preds = %30
  %144 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 75
  %145 = load ptr, ptr %144, align 16, !tbaa !254
  store volatile i8 1, ptr %145, align 8, !tbaa !255
  br label %146

146:                                              ; preds = %133, %143
  %147 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 10
  %148 = load i32, ptr %147, align 4, !tbaa !40
  %149 = add nsw i32 %148, 1
  store i32 %149, ptr %147, align 4, !tbaa !40
  %150 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43
  %151 = load ptr, ptr %150, align 16, !tbaa !89
  %152 = load ptr, ptr %151, align 8, !tbaa !88
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %165

154:                                              ; preds = %146
  tail call void @x264_lookahead_get_frames(ptr noundef nonnull %27) #23
  %155 = load ptr, ptr %150, align 16, !tbaa !89
  %156 = load ptr, ptr %155, align 8, !tbaa !88
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = tail call i32 @x264_lookahead_is_empty(ptr noundef nonnull %27) #23
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = load ptr, ptr %150, align 16, !tbaa !89
  br label %165

163:                                              ; preds = %158
  %164 = tail call fastcc i32 @x264_encoder_frame_end(ptr noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %4) #24
  br label %583

165:                                              ; preds = %146, %161, %154
  %166 = phi ptr [ %162, %161 ], [ %155, %154 ], [ %151, %146 ]
  %167 = tail call ptr @x264_frame_shift(ptr noundef %166) #23
  %168 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 44
  store ptr %167, ptr %168, align 8, !tbaa !239
  %169 = load i32, ptr %147, align 4, !tbaa !40
  %170 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 12
  %171 = load i32, ptr %170, align 4, !tbaa !67
  %172 = add nsw i32 %171, -1
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %165
  %175 = getelementptr inbounds %struct.x264_frame, ptr %167, i64 0, i32 4
  %176 = load i64, ptr %175, align 8, !tbaa !258
  %177 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 53
  store i64 %176, ptr %177, align 8, !tbaa !259
  br label %178

178:                                              ; preds = %174, %165
  %179 = getelementptr inbounds %struct.x264_frame, ptr %167, i64 0, i32 9
  %180 = load ptr, ptr %179, align 16, !tbaa !248
  %181 = icmp eq ptr %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = tail call i32 @x264_encoder_reconfig(ptr noundef nonnull %27, ptr noundef nonnull %180) #24, !range !16
  %184 = load ptr, ptr %168, align 8, !tbaa !239
  %185 = getelementptr inbounds %struct.x264_frame, ptr %184, i64 0, i32 9
  %186 = load ptr, ptr %185, align 16, !tbaa !248
  %187 = getelementptr inbounds %struct.x264_param_t, ptr %186, i64 0, i32 59
  %188 = load ptr, ptr %187, align 8, !tbaa !6
  %189 = icmp eq ptr %188, null
  br i1 %189, label %192, label %190

190:                                              ; preds = %182
  tail call void %188(ptr noundef nonnull %186) #23
  %191 = load ptr, ptr %168, align 8, !tbaa !239
  br label %192

192:                                              ; preds = %182, %190, %178
  %193 = phi ptr [ %184, %182 ], [ %191, %190 ], [ %167, %178 ]
  %194 = getelementptr inbounds %struct.x264_frame, ptr %193, i64 0, i32 16
  %195 = load i32, ptr %194, align 16, !tbaa !260
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %206, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %struct.x264_frame, ptr %193, i64 0, i32 10
  %199 = load i32, ptr %198, align 8, !tbaa !242
  %200 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 4
  store i32 %199, ptr %200, align 16, !tbaa !86
  %201 = getelementptr inbounds %struct.x264_frame, ptr %193, i64 0, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !261
  %203 = icmp eq i32 %202, 1
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 11
  store i32 0, ptr %205, align 8, !tbaa !41
  br label %206

206:                                              ; preds = %197, %204, %192
  %207 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 23
  store i32 0, ptr %207, align 16, !tbaa !262
  %208 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 24
  store i32 0, ptr %208, align 4, !tbaa !263
  %209 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 50
  %210 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 50, i64 1
  store i32 0, ptr %210, align 4, !tbaa !94
  store i32 0, ptr %209, align 8, !tbaa !94
  %211 = getelementptr inbounds %struct.x264_frame, ptr %193, i64 0, i32 1
  %212 = load i32, ptr %211, align 4, !tbaa !261
  switch i32 %212, label %225 [
    i32 1, label %213
    i32 2, label %215
    i32 3, label %217
    i32 4, label %219
  ]

213:                                              ; preds = %206
  %214 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  store i32 2, ptr %214, align 16, !tbaa !264
  tail call fastcc void @x264_reference_reset(ptr noundef nonnull %27) #24
  br label %227

215:                                              ; preds = %206
  %216 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  store i32 2, ptr %216, align 16, !tbaa !264
  tail call fastcc void @x264_reference_hierarchy_reset(ptr noundef nonnull %27) #24
  br label %227

217:                                              ; preds = %206
  %218 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  store i32 0, ptr %218, align 16, !tbaa !264
  tail call fastcc void @x264_reference_hierarchy_reset(ptr noundef nonnull %27) #24
  br label %227

219:                                              ; preds = %206
  %220 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 20
  %221 = load i32, ptr %220, align 16, !tbaa !47
  %222 = icmp eq i32 %221, 1
  %223 = select i1 %222, i32 1, i32 2
  %224 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  store i32 1, ptr %224, align 16, !tbaa !264
  tail call fastcc void @x264_reference_hierarchy_reset(ptr noundef nonnull %27) #24
  br label %227

225:                                              ; preds = %206
  %226 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  store i32 1, ptr %226, align 16, !tbaa !264
  br label %227

227:                                              ; preds = %215, %219, %225, %217, %213
  %228 = phi i32 [ 3, %213 ], [ 2, %215 ], [ 2, %217 ], [ %223, %219 ], [ 0, %225 ]
  %229 = phi i32 [ 5, %213 ], [ 1, %215 ], [ 1, %217 ], [ 1, %219 ], [ 1, %225 ]
  %230 = load ptr, ptr %168, align 8, !tbaa !239
  %231 = getelementptr inbounds %struct.x264_frame, ptr %230, i64 0, i32 10
  %232 = load i32, ptr %231, align 8, !tbaa !242
  %233 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 43, i32 4
  %234 = load i32, ptr %233, align 16, !tbaa !86
  %235 = sub nsw i32 %232, %234
  %236 = shl nsw i32 %235, 1
  store i32 %236, ptr %230, align 16, !tbaa !265
  %237 = load ptr, ptr %31, align 16, !tbaa !124
  store i32 %236, ptr %237, align 16, !tbaa !265
  %238 = getelementptr inbounds %struct.x264_frame, ptr %230, i64 0, i32 1
  %239 = load i32, ptr %238, align 4, !tbaa !261
  %240 = getelementptr inbounds %struct.x264_frame, ptr %237, i64 0, i32 1
  store i32 %239, ptr %240, align 4, !tbaa !261
  %241 = getelementptr inbounds %struct.x264_frame, ptr %237, i64 0, i32 10
  store i32 %232, ptr %241, align 8, !tbaa !242
  %242 = icmp eq i32 %228, 0
  br i1 %242, label %247, label %243

243:                                              ; preds = %227
  %244 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 13
  %245 = load i32, ptr %244, align 4, !tbaa !85
  %246 = icmp sgt i32 %245, 1
  br label %247

247:                                              ; preds = %243, %227
  %248 = phi i1 [ false, %227 ], [ %246, %243 ]
  %249 = zext i1 %248 to i32
  %250 = getelementptr inbounds %struct.x264_frame, ptr %237, i64 0, i32 14
  store i32 %249, ptr %250, align 8, !tbaa !266
  %251 = getelementptr inbounds %struct.x264_frame, ptr %230, i64 0, i32 14
  store i32 %249, ptr %251, align 8, !tbaa !266
  tail call fastcc void @x264_reference_build_list(ptr noundef nonnull %27, i32 noundef %236) #24
  %252 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 2
  %253 = load i32, ptr %252, align 8, !tbaa !118
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %274, label %255

255:                                              ; preds = %247
  %256 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !115
  %258 = icmp sgt i32 %257, 0
  br i1 %258, label %259, label %281

259:                                              ; preds = %255, %259
  %260 = phi i64 [ %270, %259 ], [ 0, %255 ]
  %261 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 1, i64 %260
  %262 = load ptr, ptr %261, align 8, !tbaa !88
  %263 = getelementptr inbounds %struct.x264_t, ptr %262, i64 0, i32 7, i32 5
  %264 = getelementptr inbounds %struct.x264_t, ptr %262, i64 0, i32 7, i32 4
  %265 = load ptr, ptr %264, align 8, !tbaa !125
  %266 = getelementptr inbounds %struct.x264_t, ptr %262, i64 0, i32 7, i32 3
  %267 = load i32, ptr %266, align 16, !tbaa !112
  tail call fastcc void @bs_init(ptr noundef nonnull %263, ptr noundef %265, i32 noundef %267) #24
  %268 = load ptr, ptr %261, align 8, !tbaa !88
  %269 = getelementptr inbounds %struct.x264_t, ptr %268, i64 0, i32 7
  store i32 0, ptr %269, align 16, !tbaa !107
  %270 = add nuw nsw i64 %260, 1
  %271 = load i32, ptr %256, align 4, !tbaa !115
  %272 = sext i32 %271 to i64
  %273 = icmp slt i64 %270, %272
  br i1 %273, label %259, label %281, !llvm.loop !267

274:                                              ; preds = %247
  %275 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7
  %276 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 5
  %277 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 4
  %278 = load ptr, ptr %277, align 8, !tbaa !125
  %279 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 3
  %280 = load i32, ptr %279, align 16, !tbaa !112
  tail call fastcc void @bs_init(ptr noundef nonnull %276, ptr noundef %278, i32 noundef %280) #24
  store i32 0, ptr %275, align 16, !tbaa !107
  br label %281

281:                                              ; preds = %259, %255, %274
  %282 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 43
  %283 = load i32, ptr %282, align 8, !tbaa !268
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %315, label %285

285:                                              ; preds = %281
  %286 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  %287 = load i32, ptr %286, align 16, !tbaa !264
  %288 = icmp ult i32 %287, 3
  br i1 %288, label %289, label %293

289:                                              ; preds = %285
  %290 = zext nneg i32 %287 to i64
  %291 = getelementptr inbounds [3 x i32], ptr @switch.table.x264_encoder_encode, i64 0, i64 %290
  %292 = load i32, ptr %291, align 4
  br label %293

293:                                              ; preds = %285, %289
  %294 = phi i32 [ %292, %289 ], [ 7, %285 ]
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %27, i32 noundef 9, i32 noundef 0) #24
  %295 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 5
  tail call fastcc void @bs_write(ptr noundef nonnull %295, i32 noundef 3, i32 noundef %294) #24
  tail call fastcc void @bs_rbsp_trailing(ptr noundef nonnull %295) #24
  %296 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %27) #24, !range !16
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %298, label %583

298:                                              ; preds = %293
  %299 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7
  %300 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 2
  %301 = load ptr, ptr %300, align 8, !tbaa !126
  %302 = load i32, ptr %299, align 16, !tbaa !107
  %303 = add nsw i32 %302, -1
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.x264_nal_t, ptr %301, i64 %304, i32 2
  %306 = load i32, ptr %305, align 8, !tbaa !228
  %307 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 45
  %308 = load i32, ptr %307, align 16, !tbaa !187
  %309 = icmp ne i32 %308, 0
  %310 = icmp ne i32 %303, 0
  %311 = and i1 %310, %309
  %312 = sext i1 %311 to i32
  %313 = add i32 %306, 10
  %314 = add i32 %313, %312
  br label %315

315:                                              ; preds = %298, %281
  %316 = phi i32 [ 5, %281 ], [ %314, %298 ]
  %317 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 13
  store i32 %229, ptr %317, align 16, !tbaa !269
  %318 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 14
  store i32 %228, ptr %318, align 4, !tbaa !270
  %319 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 16
  %320 = load i32, ptr %319, align 16, !tbaa !160
  %321 = icmp eq i32 %320, 0
  %322 = load ptr, ptr %168, align 8, !tbaa !239
  br i1 %321, label %386, label %323

323:                                              ; preds = %315
  %324 = getelementptr inbounds %struct.x264_frame, ptr %322, i64 0, i32 1
  %325 = load i32, ptr %324, align 4, !tbaa !261
  switch i32 %325, label %386 [
    i32 2, label %326
    i32 1, label %326
    i32 3, label %336
  ]

326:                                              ; preds = %323, %323
  %327 = load ptr, ptr %31, align 16, !tbaa !124
  %328 = getelementptr inbounds %struct.x264_frame, ptr %327, i64 0, i32 84
  store i32 0, ptr %328, align 8, !tbaa !271
  %329 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 22
  store i32 0, ptr %329, align 4, !tbaa !240
  %330 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 24
  %331 = load ptr, ptr %330, align 16, !tbaa !49
  %332 = getelementptr inbounds %struct.x264_sps_t, ptr %331, i64 0, i32 16
  %333 = load i32, ptr %332, align 4, !tbaa !55
  %334 = sitofp i32 %333 to float
  %335 = getelementptr inbounds %struct.x264_frame, ptr %327, i64 0, i32 81
  store float %334, ptr %335, align 4, !tbaa !272
  br label %386

336:                                              ; preds = %323
  %337 = load ptr, ptr %31, align 16, !tbaa !124
  %338 = load i32, ptr %337, align 16, !tbaa !265
  %339 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 47
  %340 = load ptr, ptr %339, align 16, !tbaa !88
  %341 = load i32, ptr %340, align 16, !tbaa !265
  %342 = sub nsw i32 %338, %341
  %343 = sdiv i32 %342, 2
  %344 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 24
  %345 = load ptr, ptr %344, align 16, !tbaa !49
  %346 = getelementptr inbounds %struct.x264_sps_t, ptr %345, i64 0, i32 16
  %347 = load i32, ptr %346, align 4, !tbaa !55
  %348 = sitofp i32 %347 to float
  %349 = fadd float %348, -1.000000e+00
  %350 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 13
  %351 = load i32, ptr %350, align 4, !tbaa !85
  %352 = sitofp i32 %351 to float
  %353 = fdiv float %349, %352
  %354 = fcmp ogt float %353, 1.000000e+00
  %355 = select i1 %354, float %353, float 1.000000e+00
  %356 = getelementptr inbounds %struct.x264_frame, ptr %340, i64 0, i32 81
  %357 = load float, ptr %356, align 4, !tbaa !272
  %358 = getelementptr inbounds %struct.x264_frame, ptr %337, i64 0, i32 81
  %359 = getelementptr inbounds %struct.x264_frame, ptr %340, i64 0, i32 84
  %360 = load i32, ptr %359, align 8, !tbaa !271
  %361 = add nsw i32 %360, %343
  %362 = getelementptr inbounds %struct.x264_frame, ptr %337, i64 0, i32 84
  store i32 %361, ptr %362, align 8, !tbaa !271
  %363 = icmp slt i32 %361, %351
  br i1 %363, label %364, label %373

364:                                              ; preds = %336
  %365 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 22
  %366 = load i32, ptr %365, align 4, !tbaa !240
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %376, label %368

368:                                              ; preds = %364
  %369 = fpext float %357 to double
  %370 = fadd double %369, 5.000000e-01
  %371 = sitofp i32 %347 to double
  %372 = fcmp ult double %370, %371
  br i1 %372, label %376, label %373

373:                                              ; preds = %368, %336
  store i32 0, ptr %362, align 8, !tbaa !271
  %374 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 22
  store i32 0, ptr %374, align 4, !tbaa !240
  %375 = getelementptr inbounds %struct.x264_frame, ptr %322, i64 0, i32 16
  store i32 1, ptr %375, align 16, !tbaa !260
  br label %376

376:                                              ; preds = %373, %368, %364
  %377 = phi float [ 0.000000e+00, %373 ], [ %357, %368 ], [ %357, %364 ]
  %378 = getelementptr inbounds %struct.x264_frame, ptr %337, i64 0, i32 82
  %379 = sitofp i32 %343 to float
  %380 = tail call float @llvm.fmuladd.f32(float %355, float %379, float %377)
  store float %380, ptr %358, align 4, !tbaa !272
  %381 = insertelement <2 x float> poison, float %377, i64 0
  %382 = insertelement <2 x float> %381, float %380, i64 1
  %383 = fpext <2 x float> %382 to <2 x double>
  %384 = fadd <2 x double> %383, <double 5.000000e-01, double 5.000000e-01>
  %385 = fptosi <2 x double> %384 to <2 x i32>
  store <2 x i32> %385, ptr %378, align 16, !tbaa !94
  br label %386

386:                                              ; preds = %323, %326, %376, %315
  %387 = getelementptr inbounds %struct.x264_frame, ptr %322, i64 0, i32 16
  %388 = load i32, ptr %387, align 16, !tbaa !260
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %491, label %390

390:                                              ; preds = %386
  %391 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 44
  %392 = load i32, ptr %391, align 4, !tbaa !273
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %453, label %394

394:                                              ; preds = %390
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %27, i32 noundef 7, i32 noundef 3) #24
  %395 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7
  %396 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 5
  %397 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 24
  %398 = load ptr, ptr %397, align 16, !tbaa !49
  tail call void @x264_sps_write(ptr noundef nonnull %396, ptr noundef %398) #23
  %399 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %27) #24, !range !16
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %583

401:                                              ; preds = %394
  %402 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !126
  %404 = load i32, ptr %395, align 16, !tbaa !107
  %405 = sext i32 %404 to i64
  %406 = getelementptr %struct.x264_nal_t, ptr %403, i64 %405
  %407 = getelementptr %struct.x264_nal_t, ptr %406, i64 -1, i32 2
  %408 = load i32, ptr %407, align 8, !tbaa !228
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %27, i32 noundef 8, i32 noundef 3) #24
  %409 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 26
  %410 = load ptr, ptr %409, align 16, !tbaa !51
  tail call void @x264_pps_write(ptr noundef nonnull %396, ptr noundef %410) #23
  %411 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %27) #24, !range !16
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %413, label %583

413:                                              ; preds = %401
  %414 = load ptr, ptr %402, align 8, !tbaa !126
  %415 = load i32, ptr %395, align 16, !tbaa !107
  %416 = sext i32 %415 to i64
  %417 = getelementptr %struct.x264_nal_t, ptr %414, i64 %416
  %418 = getelementptr %struct.x264_nal_t, ptr %417, i64 -1, i32 2
  %419 = load i32, ptr %418, align 8, !tbaa !228
  %420 = add i32 %316, 10
  %421 = add i32 %420, %408
  %422 = add i32 %421, %419
  %423 = load i32, ptr %391, align 4, !tbaa !273
  %424 = icmp eq i32 %423, 0
  %425 = load ptr, ptr %168, align 8, !tbaa !239
  br i1 %424, label %453, label %426

426:                                              ; preds = %413
  %427 = getelementptr inbounds %struct.x264_frame, ptr %425, i64 0, i32 10
  %428 = load i32, ptr %427, align 8, !tbaa !242
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %453

430:                                              ; preds = %426
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %27, i32 noundef 6, i32 noundef 0) #24
  %431 = tail call i32 @x264_sei_version_write(ptr noundef nonnull %27, ptr noundef nonnull %396) #23
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %583

433:                                              ; preds = %430
  %434 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %27) #24, !range !16
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %436, label %583

436:                                              ; preds = %433
  %437 = load ptr, ptr %402, align 8, !tbaa !126
  %438 = load i32, ptr %395, align 16, !tbaa !107
  %439 = add nsw i32 %438, -1
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.x264_nal_t, ptr %437, i64 %440, i32 2
  %442 = load i32, ptr %441, align 8, !tbaa !228
  %443 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 45
  %444 = load i32, ptr %443, align 16, !tbaa !187
  %445 = icmp ne i32 %444, 0
  %446 = icmp ne i32 %439, 0
  %447 = and i1 %446, %445
  %448 = sext i1 %447 to i32
  %449 = add i32 %422, 5
  %450 = add i32 %449, %442
  %451 = add i32 %450, %448
  %452 = load ptr, ptr %168, align 8, !tbaa !239
  br label %453

453:                                              ; preds = %390, %436, %426, %413
  %454 = phi ptr [ %452, %436 ], [ %425, %426 ], [ %425, %413 ], [ %322, %390 ]
  %455 = phi i32 [ %451, %436 ], [ %422, %426 ], [ %422, %413 ], [ %316, %390 ]
  %456 = getelementptr inbounds %struct.x264_frame, ptr %454, i64 0, i32 1
  %457 = load i32, ptr %456, align 4, !tbaa !261
  %458 = icmp eq i32 %457, 1
  br i1 %458, label %491, label %459

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 24
  %461 = load ptr, ptr %460, align 16, !tbaa !49
  %462 = getelementptr inbounds %struct.x264_sps_t, ptr %461, i64 0, i32 16
  %463 = load i32, ptr %462, align 4, !tbaa !55
  %464 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 13
  %465 = load i32, ptr %464, align 4, !tbaa !85
  %466 = icmp sgt i32 %463, %465
  %467 = add nsw i32 %463, -1
  %468 = select i1 %466, i32 %465, i32 %467
  %469 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 17
  %470 = load i32, ptr %469, align 4, !tbaa !45
  %471 = add nsw i32 %468, %470
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %27, i32 noundef 6, i32 noundef 0) #24
  %472 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7
  %473 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 5
  tail call void @x264_sei_recovery_point_write(ptr noundef nonnull %27, ptr noundef nonnull %473, i32 noundef %471) #23
  %474 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %27) #24, !range !16
  %475 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 2
  %476 = load ptr, ptr %475, align 8, !tbaa !126
  %477 = load i32, ptr %472, align 16, !tbaa !107
  %478 = add nsw i32 %477, -1
  %479 = sext i32 %478 to i64
  %480 = getelementptr inbounds %struct.x264_nal_t, ptr %476, i64 %479, i32 2
  %481 = load i32, ptr %480, align 8, !tbaa !228
  %482 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 45
  %483 = load i32, ptr %482, align 16, !tbaa !187
  %484 = icmp ne i32 %483, 0
  %485 = icmp ne i32 %478, 0
  %486 = and i1 %485, %484
  %487 = sext i1 %486 to i32
  %488 = add i32 %455, 5
  %489 = add i32 %488, %481
  %490 = add i32 %489, %487
  br label %491

491:                                              ; preds = %453, %459, %386
  %492 = phi i32 [ %490, %459 ], [ %455, %453 ], [ %316, %386 ]
  %493 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 24
  %494 = load ptr, ptr %493, align 16, !tbaa !49
  %495 = getelementptr inbounds %struct.x264_sps_t, ptr %494, i64 0, i32 24, i32 22
  %496 = load i32, ptr %495, align 4, !tbaa !274
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %491
  %499 = getelementptr inbounds %struct.x264_sps_t, ptr %494, i64 0, i32 24, i32 19
  %500 = load i32, ptr %499, align 4, !tbaa !275
  %501 = icmp eq i32 %500, 0
  br i1 %501, label %524, label %502

502:                                              ; preds = %498, %491
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %27, i32 noundef 6, i32 noundef 0) #24
  %503 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 5
  tail call void @x264_sei_pic_timing_write(ptr noundef nonnull %27, ptr noundef nonnull %503) #23
  %504 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %27) #24, !range !16
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %506, label %583

506:                                              ; preds = %502
  %507 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7
  %508 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 7, i32 2
  %509 = load ptr, ptr %508, align 8, !tbaa !126
  %510 = load i32, ptr %507, align 16, !tbaa !107
  %511 = add nsw i32 %510, -1
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.x264_nal_t, ptr %509, i64 %512, i32 2
  %514 = load i32, ptr %513, align 8, !tbaa !228
  %515 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 45
  %516 = load i32, ptr %515, align 16, !tbaa !187
  %517 = icmp ne i32 %516, 0
  %518 = icmp ne i32 %511, 0
  %519 = and i1 %518, %517
  %520 = sext i1 %519 to i32
  %521 = add i32 %492, 5
  %522 = add i32 %521, %514
  %523 = add i32 %522, %520
  br label %524

524:                                              ; preds = %506, %498
  %525 = phi i32 [ %523, %506 ], [ %492, %498 ]
  %526 = load ptr, ptr %168, align 8, !tbaa !239
  %527 = getelementptr inbounds %struct.x264_frame, ptr %526, i64 0, i32 2
  %528 = load i32, ptr %527, align 8, !tbaa !276
  %529 = shl nsw i32 %525, 3
  tail call void @x264_ratecontrol_start(ptr noundef nonnull %27, i32 noundef %528, i32 noundef %529) #23
  %530 = tail call i32 @x264_ratecontrol_qp(ptr noundef nonnull %27) #23
  %531 = add nsw i32 %530, 1
  %532 = load ptr, ptr %31, align 16, !tbaa !124
  %533 = getelementptr inbounds %struct.x264_frame, ptr %532, i64 0, i32 2
  store i32 %531, ptr %533, align 8, !tbaa !276
  %534 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 1
  store i32 %531, ptr %534, align 4, !tbaa !277
  %535 = getelementptr inbounds %struct.x264_param_t, ptr %27, i64 0, i32 42, i32 20
  %536 = load i32, ptr %535, align 8, !tbaa !63
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %544, label %538

538:                                              ; preds = %524
  %539 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  %540 = load i32, ptr %539, align 16, !tbaa !264
  %541 = icmp eq i32 %540, 2
  br i1 %541, label %544, label %542

542:                                              ; preds = %538
  %543 = tail call i32 @x264_reference_build_list_optimal(ptr noundef nonnull %27) #23
  tail call fastcc void @x264_reference_check_reorder(ptr noundef nonnull %27) #24
  br label %544

544:                                              ; preds = %542, %538, %524
  %545 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 46
  %546 = load i32, ptr %545, align 8, !tbaa !91
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %544
  %549 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 47
  %550 = load ptr, ptr %549, align 16, !tbaa !88
  %551 = load i32, ptr %550, align 16, !tbaa !265
  %552 = load ptr, ptr %31, align 16, !tbaa !124
  %553 = getelementptr inbounds %struct.x264_frame, ptr %552, i64 0, i32 22
  store i32 %551, ptr %553, align 16, !tbaa !278
  br label %554

554:                                              ; preds = %548, %544
  %555 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 2
  %556 = load i32, ptr %555, align 16, !tbaa !264
  %557 = icmp eq i32 %556, 1
  br i1 %557, label %558, label %559

558:                                              ; preds = %554
  tail call void @x264_macroblock_bipred_init(ptr noundef nonnull %27) #23
  br label %559

559:                                              ; preds = %558, %554
  tail call fastcc void @x264_weighted_pred_init(ptr noundef nonnull %27) #24
  tail call fastcc void @x264_slice_init(ptr noundef nonnull %27, i32 noundef %229, i32 noundef %530) #24
  br i1 %242, label %564, label %560

560:                                              ; preds = %559
  %561 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 11
  %562 = load i32, ptr %561, align 8, !tbaa !41
  %563 = add nsw i32 %562, 1
  store i32 %563, ptr %561, align 8, !tbaa !41
  br label %564

564:                                              ; preds = %560, %559
  %565 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 5
  store i32 0, ptr %565, align 4, !tbaa !279
  %566 = load ptr, ptr %493, align 16, !tbaa !49
  %567 = getelementptr inbounds %struct.x264_sps_t, ptr %566, i64 0, i32 17
  %568 = load i32, ptr %567, align 4, !tbaa !60
  %569 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 6
  store i32 %568, ptr %569, align 8, !tbaa !280
  %570 = load i32, ptr %170, align 4, !tbaa !67
  %571 = icmp sgt i32 %570, 1
  br i1 %571, label %572, label %574

572:                                              ; preds = %564
  %573 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 3
  store i32 1, ptr %573, align 4, !tbaa !281
  br label %581

574:                                              ; preds = %564
  %575 = load i32, ptr %252, align 8, !tbaa !118
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %578, label %577

577:                                              ; preds = %574
  tail call fastcc void @x264_threaded_slices_write(ptr noundef nonnull %27) #24
  br label %581

578:                                              ; preds = %574
  %579 = tail call fastcc ptr @x264_slices_write(ptr noundef nonnull %27) #24
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %583

581:                                              ; preds = %577, %578, %572
  %582 = tail call fastcc i32 @x264_encoder_frame_end(ptr noundef %26, ptr noundef nonnull %27, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %4) #24
  br label %583

583:                                              ; preds = %125, %38, %35, %142, %293, %578, %502, %433, %430, %401, %394, %25, %581, %163
  %584 = phi i32 [ %582, %581 ], [ %164, %163 ], [ -1, %25 ], [ -1, %394 ], [ -1, %401 ], [ -1, %430 ], [ -1, %433 ], [ -1, %502 ], [ -1, %578 ], [ -1, %293 ], [ -1, %125 ], [ -1, %38 ], [ -1, %35 ], [ 0, %142 ]
  ret i32 %584
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_thread_sync_context(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %39, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !88
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %12, %4
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %33

12:                                               ; preds = %4, %12
  %13 = phi ptr [ %19, %12 ], [ %6, %4 ]
  %14 = phi ptr [ %18, %12 ], [ %5, %4 ]
  %15 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 78
  %16 = load i32, ptr %15, align 16, !tbaa !234
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 16, !tbaa !234
  %18 = getelementptr inbounds ptr, ptr %14, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !88
  %20 = icmp eq ptr %19, null
  br i1 %20, label %8, label %12, !llvm.loop !282

21:                                               ; preds = %33, %8
  %22 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 45
  %23 = load ptr, ptr %22, align 16, !tbaa !124
  %24 = getelementptr inbounds %struct.x264_frame, ptr %23, i64 0, i32 78
  %25 = load i32, ptr %24, align 16, !tbaa !234
  %26 = add nsw i32 %25, 1
  store i32 %26, ptr %24, align 16, !tbaa !234
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %28 = load ptr, ptr %27, align 16, !tbaa !124
  tail call void @x264_frame_push_unused(ptr noundef %1, ptr noundef %28) #23
  %29 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %30 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(14772) %29, ptr noundef nonnull align 4 dereferenceable(14772) %30, i64 14772, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %0, ptr noundef nonnull align 16 dereferenceable(704) %1, i64 704, i1 false), !tbaa.struct !283
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %32 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 57
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3688) %31, ptr noundef nonnull align 8 dereferenceable(3688) %32, i64 3688, i1 false), !tbaa.struct !284
  br label %39

33:                                               ; preds = %8, %33
  %34 = phi ptr [ %37, %33 ], [ %10, %8 ]
  %35 = phi ptr [ %36, %33 ], [ %9, %8 ]
  tail call void @x264_frame_push_unused(ptr noundef %1, ptr noundef nonnull %34) #23
  %36 = getelementptr inbounds ptr, ptr %35, i64 1
  %37 = load ptr, ptr %36, align 8, !tbaa !88
  %38 = icmp eq ptr %37, null
  br i1 %38, label %21, label %33, !llvm.loop !285

39:                                               ; preds = %2, %21
  ret void
}

; Function Attrs: optsize
declare void @x264_thread_sync_ratecontrol(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_reference_update(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %3 = load ptr, ptr %2, align 16, !tbaa !124
  %4 = getelementptr inbounds %struct.x264_frame, ptr %3, i64 0, i32 14
  %5 = load i32, ptr %4, align 8, !tbaa !266
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 24
  %9 = load i32, ptr %8, align 4, !tbaa !263
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 0
  br label %21

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %15 = load i32, ptr %14, align 4, !tbaa !67
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef nonnull %3) #23
  %18 = tail call ptr @x264_frame_pop_unused(ptr noundef nonnull %0, i32 noundef 1) #23
  store ptr %18, ptr %2, align 16, !tbaa !124
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %17, %13
  br label %68

21:                                               ; preds = %11, %43
  %22 = phi i32 [ %9, %11 ], [ %44, %43 ]
  %23 = phi i64 [ 0, %11 ], [ %45, %43 ]
  %24 = load ptr, ptr %12, align 8, !tbaa !88
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 25, i64 %23, i32 1
  br label %48

28:                                               ; preds = %43
  %29 = load ptr, ptr %2, align 16, !tbaa !124
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi ptr [ %29, %28 ], [ %3, %7 ]
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3
  tail call void @x264_frame_push(ptr noundef nonnull %32, ptr noundef %31) #23
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %34 = load ptr, ptr %33, align 16, !tbaa !49
  %35 = getelementptr inbounds %struct.x264_sps_t, ptr %34, i64 0, i32 14
  %36 = load i32, ptr %35, align 4, !tbaa !286
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !88
  %40 = icmp eq ptr %39, null
  br i1 %40, label %64, label %62

41:                                               ; preds = %57
  %42 = load i32, ptr %8, align 4, !tbaa !263
  br label %43

43:                                               ; preds = %41, %21
  %44 = phi i32 [ %42, %41 ], [ %22, %21 ]
  %45 = add nuw nsw i64 %23, 1
  %46 = sext i32 %44 to i64
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %21, label %28, !llvm.loop !287

48:                                               ; preds = %26, %57
  %49 = phi i64 [ 0, %26 ], [ %58, %57 ]
  %50 = phi ptr [ %24, %26 ], [ %60, %57 ]
  %51 = phi ptr [ %12, %26 ], [ %59, %57 ]
  %52 = load i32, ptr %50, align 16, !tbaa !265
  %53 = load i32, ptr %27, align 4, !tbaa !288
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = tail call ptr @x264_frame_shift(ptr noundef nonnull %51) #23
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef %56) #23
  br label %57

57:                                               ; preds = %48, %55
  %58 = add nuw i64 %49, 1
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  %61 = icmp eq ptr %60, null
  br i1 %61, label %41, label %48, !llvm.loop !290

62:                                               ; preds = %30
  %63 = tail call ptr @x264_frame_shift(ptr noundef nonnull %32) #23
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef %63) #23
  br label %64

64:                                               ; preds = %62, %30
  %65 = tail call ptr @x264_frame_pop_unused(ptr noundef nonnull %0, i32 noundef 1) #23
  store ptr %65, ptr %2, align 16, !tbaa !124
  %66 = icmp eq ptr %65, null
  %67 = sext i1 %66 to i32
  br label %68

68:                                               ; preds = %64, %17, %20
  %69 = phi i32 [ 0, %20 ], [ -1, %17 ], [ %67, %64 ]
  ret i32 %69
}

; Function Attrs: optsize
declare i32 @x264_frame_copy_picture(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_expand_border_mod16(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_weight_plane_analyse(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_init_lowres(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_macroblock_tree_read(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_adaptive_quant_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_lookahead_put_frame(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_lookahead_get_frames(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_lookahead_is_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @x264_encoder_frame_end(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = alloca [80 x i8], align 16
  %7 = alloca %struct.x264_nal_t, align 8
  %8 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #22
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !281
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %5
  store i32 0, ptr %9, align 4, !tbaa !281
  br label %13

13:                                               ; preds = %12, %5
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %15 = load i32, ptr %14, align 16, !tbaa !107
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, ptr %4, align 8, !tbaa !251
  br label %546

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %20 = load ptr, ptr %19, align 8, !tbaa !239
  %21 = getelementptr inbounds %struct.x264_frame, ptr %20, i64 0, i32 16
  %22 = load i32, ptr %21, align 16, !tbaa !260
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %60, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %26 = load ptr, ptr %25, align 16, !tbaa !49
  %27 = getelementptr inbounds %struct.x264_sps_t, ptr %26, i64 0, i32 24, i32 19
  %28 = load i32, ptr %27, align 4, !tbaa !275
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %60, label %30

30:                                               ; preds = %24
  %31 = tail call i32 @x264_hrd_fullness(ptr noundef nonnull %0) #23
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  store i32 %31, ptr %32, align 16, !tbaa !291
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %0, i32 noundef 6, i32 noundef 0) #24
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  tail call void @x264_sei_buffering_period_write(ptr noundef nonnull %0, ptr noundef nonnull %33) #23
  %34 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %0) #24, !range !16
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %546

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !126
  br label %39

39:                                               ; preds = %39, %36
  %40 = phi i64 [ %45, %39 ], [ 0, %36 ]
  %41 = getelementptr inbounds %struct.x264_nal_t, ptr %38, i64 %40, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !227
  %43 = add i32 %42, -7
  %44 = icmp ult i32 %43, 3
  %45 = add nuw i64 %40, 1
  br i1 %44, label %39, label %46, !llvm.loop !292

46:                                               ; preds = %39
  %47 = trunc i64 %40 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7)
  %48 = load i32, ptr %14, align 16, !tbaa !107
  %49 = sext i32 %48 to i64
  %50 = getelementptr %struct.x264_nal_t, ptr %38, i64 %49
  %51 = getelementptr %struct.x264_nal_t, ptr %50, i64 -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %51, i64 24, i1 false), !tbaa.struct !293
  %52 = getelementptr %struct.x264_nal_t, ptr %38, i64 %40
  %53 = getelementptr %struct.x264_nal_t, ptr %52, i64 1
  %54 = xor i32 %47, -1
  %55 = add i32 %48, %54
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %53, ptr align 8 %52, i64 %57, i1 false)
  %58 = load ptr, ptr %37, align 8, !tbaa !126
  %59 = getelementptr inbounds %struct.x264_nal_t, ptr %58, i64 %40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !293
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7)
  br label %60

60:                                               ; preds = %46, %24, %18
  %61 = tail call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef nonnull %0, i32 noundef 0) #24
  %62 = load ptr, ptr %19, align 8, !tbaa !239
  %63 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !261
  store i32 %64, ptr %4, align 8, !tbaa !251
  %65 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 16
  %66 = load i32, ptr %65, align 16, !tbaa !260
  %67 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 3
  store i32 %66, ptr %67, align 4, !tbaa !294
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 28
  %69 = load i32, ptr %68, align 4, !tbaa !46
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 3
  %72 = load i64, ptr %71, align 16, !tbaa !243
  %73 = mul nsw i64 %72, %70
  store i64 %73, ptr %71, align 16, !tbaa !243
  %74 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 4
  store i64 %73, ptr %74, align 8, !tbaa !295
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 10
  %76 = load i32, ptr %75, align 8, !tbaa !73
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %124, label %78

78:                                               ; preds = %60
  %79 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 13
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %81 = load i32, ptr %80, align 4, !tbaa !40
  %82 = icmp sgt i32 %81, %76
  br i1 %82, label %106, label %83

83:                                               ; preds = %78
  %84 = icmp eq i32 %69, 1
  br i1 %84, label %85, label %91

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 4
  %87 = load i64, ptr %86, align 8, !tbaa !258
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 11
  %89 = load i64, ptr %88, align 16, !tbaa !244
  %90 = sub nsw i64 %87, %89
  br label %112

91:                                               ; preds = %83
  %92 = icmp eq i32 %81, 1
  br i1 %92, label %96, label %93

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 12
  %95 = load i64, ptr %94, align 8, !tbaa !296
  br label %101

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 4
  %98 = load i64, ptr %97, align 8, !tbaa !258
  %99 = mul nsw i64 %98, %70
  %100 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 43, i32 12
  store i64 %99, ptr %100, align 8, !tbaa !296
  br label %101

101:                                              ; preds = %93, %96
  %102 = phi i64 [ %95, %93 ], [ %99, %96 ]
  %103 = sext i32 %81 to i64
  %104 = mul nsw i64 %102, %103
  %105 = sdiv i64 %104, %70
  br label %112

106:                                              ; preds = %78
  %107 = sub nsw i32 %81, %76
  %108 = srem i32 %107, %76
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, ptr %79, i64 %109
  %111 = load i64, ptr %110, align 8, !tbaa !122
  br label %112

112:                                              ; preds = %85, %101, %106
  %113 = phi i64 [ %90, %85 ], [ %105, %101 ], [ %111, %106 ]
  %114 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 5
  store i64 %113, ptr %114, align 8, !tbaa !297
  %115 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 4
  %116 = load i64, ptr %115, align 8, !tbaa !258
  %117 = mul nsw i64 %116, %70
  %118 = srem i32 %81, %76
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, ptr %79, i64 %119
  store i64 %117, ptr %120, align 8, !tbaa !122
  %121 = load i64, ptr %74, align 8, !tbaa !295
  %122 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 5
  %123 = load i64, ptr %122, align 8, !tbaa !297
  br label %128

124:                                              ; preds = %60
  %125 = getelementptr inbounds %struct.x264_frame, ptr %62, i64 0, i32 4
  %126 = load i64, ptr %125, align 8, !tbaa !258
  %127 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 5
  store i64 %126, ptr %127, align 8, !tbaa !297
  br label %128

128:                                              ; preds = %124, %112
  %129 = phi i64 [ %126, %124 ], [ %123, %112 ]
  %130 = phi i64 [ %73, %124 ], [ %121, %112 ]
  %131 = icmp slt i64 %130, %129
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.49) #23
  br label %133

133:                                              ; preds = %132, %128
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %135 = load ptr, ptr %134, align 16, !tbaa !124
  %136 = getelementptr inbounds %struct.x264_frame, ptr %135, i64 0, i32 23
  %137 = load i32, ptr %136, align 4, !tbaa !298
  %138 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 7, i32 1
  store i32 %137, ptr %138, align 4, !tbaa !299
  br label %144

139:                                              ; preds = %144
  %140 = load ptr, ptr %19, align 8, !tbaa !239
  tail call void @x264_frame_push_unused(ptr noundef %1, ptr noundef %140) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #22
  store i32 0, ptr %8, align 4, !tbaa !94
  %141 = shl nsw i32 %61, 3
  %142 = call i32 @x264_ratecontrol_end(ptr noundef nonnull %0, i32 noundef %141, ptr noundef nonnull %8) #23
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %544, label %155

144:                                              ; preds = %133, %144
  %145 = phi i64 [ 0, %133 ], [ %153, %144 ]
  %146 = load ptr, ptr %134, align 16, !tbaa !124
  %147 = getelementptr inbounds %struct.x264_frame, ptr %146, i64 0, i32 24, i64 %145
  %148 = load i32, ptr %147, align 4, !tbaa !94
  %149 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 7, i32 2, i64 %145
  store i32 %148, ptr %149, align 4, !tbaa !94
  %150 = getelementptr inbounds %struct.x264_frame, ptr %146, i64 0, i32 30, i64 %145
  %151 = load ptr, ptr %150, align 8, !tbaa !88
  %152 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 7, i32 3, i64 %145
  store ptr %151, ptr %152, align 8, !tbaa !88
  %153 = add nuw nsw i64 %145, 1
  %154 = icmp eq i64 %153, 3
  br i1 %154, label %139, label %144, !llvm.loop !300

155:                                              ; preds = %139
  %156 = getelementptr inbounds %struct.x264_picture_t, ptr %4, i64 0, i32 8
  %157 = load ptr, ptr %19, align 8, !tbaa !239
  %158 = getelementptr inbounds %struct.x264_frame, ptr %157, i64 0, i32 70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %156, ptr noundef nonnull align 16 dereferenceable(32) %158, i64 32, i1 false), !tbaa.struct !301
  %159 = load i32, ptr %8, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %196

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %163 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %164 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  br label %165

165:                                              ; preds = %161, %188
  %166 = phi i32 [ %61, %161 ], [ %192, %188 ]
  %167 = phi i32 [ %159, %161 ], [ %194, %188 ]
  %168 = load i32, ptr %162, align 16, !tbaa !187
  %169 = sub nsw i32 6, %168
  %170 = load i32, ptr %163, align 4, !tbaa !157
  %171 = icmp ne i32 %170, 0
  %172 = icmp sgt i32 %167, %170
  %173 = and i1 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %165
  %175 = add i32 %168, -6
  %176 = sub i32 %170, %167
  %177 = add i32 %176, %169
  %178 = call i32 @llvm.smax.i32(i32 %177, i32 0)
  %179 = add i32 %170, %175
  %180 = sub i32 %179, %178
  br label %184

181:                                              ; preds = %165
  %182 = sub nsw i32 %167, %169
  %183 = call i32 @llvm.smax.i32(i32 %182, i32 0)
  br label %184

184:                                              ; preds = %181, %174
  %185 = phi i32 [ %180, %174 ], [ %183, %181 ]
  call fastcc void @x264_nal_start(ptr noundef nonnull %0, i32 noundef 12, i32 noundef 0) #24
  call void @x264_filler_write(ptr noundef nonnull %0, ptr noundef nonnull %164, i32 noundef %185) #23
  %186 = call fastcc i32 @x264_nal_end(ptr noundef nonnull %0) #24, !range !16
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %544

188:                                              ; preds = %184
  %189 = load i32, ptr %14, align 16, !tbaa !107
  %190 = add nsw i32 %189, -1
  %191 = call fastcc i32 @x264_encoder_encapsulate_nals(ptr noundef nonnull %0, i32 noundef %190) #24
  %192 = add nsw i32 %191, %166
  %193 = load i32, ptr %8, align 4, !tbaa !94
  %194 = sub nsw i32 %193, %191
  store i32 %194, ptr %8, align 4, !tbaa !94
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %165, label %196, !llvm.loop !302

196:                                              ; preds = %188, %155
  %197 = phi i32 [ %61, %155 ], [ %192, %188 ]
  %198 = load i32, ptr %14, align 16, !tbaa !107
  store i32 %198, ptr %3, align 4, !tbaa !94
  %199 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !126
  store ptr %200, ptr %2, align 8, !tbaa !88
  store i32 0, ptr %14, align 16, !tbaa !107
  call void @x264_noise_reduction_update(ptr noundef nonnull %0) #23
  %201 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1
  %202 = load ptr, ptr %201, align 16, !tbaa !88
  call fastcc void @x264_thread_sync_stat(ptr noundef nonnull %0, ptr noundef %202) #24
  %203 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %204 = load i32, ptr %203, align 16, !tbaa !264
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 %205
  %207 = load i32, ptr %206, align 4, !tbaa !94
  %208 = add nsw i32 %207, 1
  store i32 %208, ptr %206, align 4, !tbaa !94
  %209 = sext i32 %197 to i64
  %210 = load i32, ptr %203, align 16, !tbaa !264
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 %211
  %213 = load i64, ptr %212, align 8, !tbaa !122
  %214 = add nsw i64 %213, %209
  store i64 %214, ptr %212, align 8, !tbaa !122
  %215 = load ptr, ptr %134, align 16, !tbaa !124
  %216 = getelementptr inbounds %struct.x264_frame, ptr %215, i64 0, i32 21
  %217 = load float, ptr %216, align 4, !tbaa !303
  %218 = fpext float %217 to double
  %219 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 3, i64 %211
  %220 = load double, ptr %219, align 8, !tbaa !123
  %221 = fadd double %220, %218
  store double %221, ptr %219, align 8, !tbaa !123
  br label %222

222:                                              ; preds = %196, %222
  %223 = phi i64 [ 0, %196 ], [ %230, %222 ]
  %224 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !94
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 %211, i64 %223
  %228 = load i64, ptr %227, align 8, !tbaa !122
  %229 = add nsw i64 %228, %226
  store i64 %229, ptr %227, align 8, !tbaa !122
  %230 = add nuw nsw i64 %223, 1
  %231 = icmp eq i64 %230, 19
  br i1 %231, label %232, label %222, !llvm.loop !304

232:                                              ; preds = %222, %232
  %233 = phi i64 [ %240, %232 ], [ 0, %222 ]
  %234 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 9, i64 %233
  %235 = load i32, ptr %234, align 4, !tbaa !94
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 %211, i64 %233
  %238 = load i64, ptr %237, align 8, !tbaa !122
  %239 = add nsw i64 %238, %236
  store i64 %239, ptr %237, align 8, !tbaa !122
  %240 = add nuw nsw i64 %233, 1
  %241 = icmp eq i64 %240, 17
  br i1 %241, label %242, label %232, !llvm.loop !305

242:                                              ; preds = %232
  %243 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 7, i64 0
  %244 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 13, i64 0
  %245 = load <2 x i32>, ptr %243, align 4, !tbaa !94
  %246 = sext <2 x i32> %245 to <2 x i64>
  %247 = load <2 x i64>, ptr %244, align 8, !tbaa !122
  %248 = add nsw <2 x i64> %247, %246
  store <2 x i64> %248, ptr %244, align 8, !tbaa !122
  br label %249

249:                                              ; preds = %249, %242
  %250 = phi i64 [ 0, %242 ], [ %257, %249 ]
  %251 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 10, i64 %250
  %252 = load <2 x i32>, ptr %251, align 4, !tbaa !94
  %253 = sext <2 x i32> %252 to <2 x i64>
  %254 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 %250
  %255 = load <2 x i64>, ptr %254, align 8, !tbaa !122
  %256 = add nsw <2 x i64> %255, %253
  store <2 x i64> %256, ptr %254, align 8, !tbaa !122
  %257 = add nuw i64 %250, 2
  %258 = icmp eq i64 %257, 6
  br i1 %258, label %259, label %249, !llvm.loop !306

259:                                              ; preds = %249, %263
  %260 = phi i64 [ %264, %263 ], [ 0, %249 ]
  br label %266

261:                                              ; preds = %263
  %262 = icmp eq i32 %210, 2
  br i1 %262, label %326, label %276

263:                                              ; preds = %266
  %264 = add nuw nsw i64 %260, 1
  %265 = icmp eq i64 %264, 4
  br i1 %265, label %261, label %259, !llvm.loop !309

266:                                              ; preds = %259, %266
  %267 = phi i64 [ 0, %259 ], [ %274, %266 ]
  %268 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 11, i64 %260, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !94
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16, i64 %260, i64 %267
  %272 = load i64, ptr %271, align 8, !tbaa !122
  %273 = add nsw i64 %272, %270
  store i64 %273, ptr %271, align 8, !tbaa !122
  %274 = add nuw nsw i64 %267, 1
  %275 = icmp eq i64 %274, 13
  br i1 %275, label %263, label %266, !llvm.loop !310

276:                                              ; preds = %261, %289
  %277 = phi i1 [ false, %289 ], [ true, %261 ]
  %278 = phi i64 [ 1, %289 ], [ 0, %261 ]
  br label %279

279:                                              ; preds = %279, %276
  %280 = phi i64 [ 0, %276 ], [ %287, %279 ]
  %281 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 8, i64 %278, i64 %280
  %282 = load <2 x i32>, ptr %281, align 4, !tbaa !94
  %283 = sext <2 x i32> %282 to <2 x i64>
  %284 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 14, i64 %211, i64 %278, i64 %280
  %285 = load <2 x i64>, ptr %284, align 8, !tbaa !122
  %286 = add nsw <2 x i64> %285, %283
  store <2 x i64> %286, ptr %284, align 8, !tbaa !122
  %287 = add nuw i64 %280, 2
  %288 = icmp eq i64 %287, 32
  br i1 %288, label %289, label %279, !llvm.loop !311

289:                                              ; preds = %279
  br i1 %277, label %276, label %290, !llvm.loop !312

290:                                              ; preds = %289
  %291 = icmp eq i32 %210, 0
  br i1 %291, label %292, label %326

292:                                              ; preds = %290
  %293 = getelementptr inbounds %struct.x264_frame, ptr %215, i64 0, i32 10
  %294 = load i32, ptr %293, align 8, !tbaa !242
  %295 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %296 = load ptr, ptr %295, align 16, !tbaa !88
  %297 = getelementptr inbounds %struct.x264_frame, ptr %296, i64 0, i32 10
  %298 = load i32, ptr %297, align 8, !tbaa !242
  %299 = xor i32 %298, -1
  %300 = add i32 %294, %299
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 4, i64 %301
  %303 = load i32, ptr %302, align 4, !tbaa !94
  %304 = add nsw i32 %303, 1
  store i32 %304, ptr %302, align 4, !tbaa !94
  %305 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %306 = load i32, ptr %305, align 4, !tbaa !81
  %307 = icmp eq i32 %306, 2
  br i1 %307, label %308, label %326

308:                                              ; preds = %292
  %309 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %310 = load i32, ptr %309, align 8, !tbaa !91
  %311 = icmp sgt i32 %310, 0
  %312 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22
  br label %313

313:                                              ; preds = %308, %323
  %314 = phi i64 [ 0, %308 ], [ %324, %323 ]
  br i1 %311, label %315, label %323

315:                                              ; preds = %313
  %316 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %312, i64 0, i64 %314, i32 2
  %317 = load i32, ptr %316, align 16, !tbaa !313
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %323, label %319

319:                                              ; preds = %315
  %320 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 19, i64 %314
  %321 = load i32, ptr %320, align 4, !tbaa !94
  %322 = add nsw i32 %321, 1
  store i32 %322, ptr %320, align 4, !tbaa !94
  br label %323

323:                                              ; preds = %315, %313, %319
  %324 = add nuw nsw i64 %314, 1
  %325 = icmp eq i64 %324, 3
  br i1 %325, label %326, label %313, !llvm.loop !315

326:                                              ; preds = %323, %261, %292, %290
  %327 = load i32, ptr %203, align 16, !tbaa !264
  %328 = icmp eq i32 %327, 1
  br i1 %328, label %329, label %363

329:                                              ; preds = %326
  %330 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 15
  %331 = load i32, ptr %330, align 8, !tbaa !316
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18, i64 %332
  %334 = load i32, ptr %333, align 4, !tbaa !94
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr %333, align 4, !tbaa !94
  %336 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  %337 = load i32, ptr %336, align 4, !tbaa !317
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %363, label %339

339:                                              ; preds = %329
  %340 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %341 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17
  %342 = load i32, ptr %341, align 8, !tbaa !94
  %343 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %344 = load i32, ptr %343, align 4, !tbaa !94
  %345 = add nsw i32 %344, %342
  %346 = load i32, ptr %340, align 16, !tbaa !61
  %347 = icmp sgt i32 %345, %346
  br i1 %347, label %348, label %357

348:                                              ; preds = %339
  %349 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 0
  %350 = load i32, ptr %349, align 4, !tbaa !94
  %351 = mul nsw i32 %350, 9
  %352 = sdiv i32 %351, 10
  store i32 %352, ptr %349, align 4, !tbaa !94
  %353 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %354 = load i32, ptr %353, align 4, !tbaa !94
  %355 = mul nsw i32 %354, 9
  %356 = sdiv i32 %355, 10
  store i32 %356, ptr %353, align 4, !tbaa !94
  br label %357

357:                                              ; preds = %339, %348
  %358 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 12, i64 0
  %359 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 0
  %360 = load <2 x i32>, ptr %358, align 4, !tbaa !94
  %361 = load <2 x i32>, ptr %359, align 4, !tbaa !94
  %362 = add nsw <2 x i32> %361, %360
  store <2 x i32> %362, ptr %359, align 4, !tbaa !94
  br label %363

363:                                              ; preds = %357, %329, %326
  store i8 0, ptr %6, align 16, !tbaa !120
  %364 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %365 = load i32, ptr %364, align 4, !tbaa !146
  %366 = icmp eq i32 %365, 0
  %367 = load i32, ptr %203, align 16, !tbaa !264
  br i1 %366, label %453, label %368

368:                                              ; preds = %363
  %369 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13
  %370 = load i64, ptr %369, align 8, !tbaa !122
  %371 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 1
  %372 = load i64, ptr %371, align 8, !tbaa !122
  %373 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 2
  %374 = load i64, ptr %373, align 8, !tbaa !122
  %375 = add nsw i64 %372, %370
  %376 = add nsw i64 %375, %374
  %377 = sext i32 %367 to i64
  %378 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 %377
  %379 = load i64, ptr %378, align 8, !tbaa !122
  %380 = add nsw i64 %379, %376
  store i64 %380, ptr %378, align 8, !tbaa !122
  %381 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %382 = load i32, ptr %381, align 4, !tbaa !108
  %383 = mul nsw i32 %382, 3
  %384 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %385 = load i32, ptr %384, align 8, !tbaa !109
  %386 = mul nsw i32 %383, %385
  %387 = sdiv i32 %386, 2
  %388 = sext i32 %387 to i64
  %389 = call fastcc float @x264_psnr(i64 noundef %376, i64 noundef %388) #24
  %390 = fpext float %389 to double
  %391 = load i32, ptr %203, align 16, !tbaa !264
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 %392
  %394 = load double, ptr %393, align 8, !tbaa !123
  %395 = fadd double %394, %390
  store double %395, ptr %393, align 8, !tbaa !123
  %396 = load i32, ptr %381, align 4, !tbaa !108
  %397 = load i32, ptr %384, align 8, !tbaa !109
  %398 = mul nsw i32 %397, %396
  %399 = sext i32 %398 to i64
  %400 = call fastcc float @x264_psnr(i64 noundef %370, i64 noundef %399) #24
  %401 = fpext float %400 to double
  %402 = load i32, ptr %203, align 16, !tbaa !264
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 %403
  %405 = load double, ptr %404, align 8, !tbaa !123
  %406 = fadd double %405, %401
  store double %406, ptr %404, align 8, !tbaa !123
  %407 = load i32, ptr %381, align 4, !tbaa !108
  %408 = load i32, ptr %384, align 8, !tbaa !109
  %409 = mul nsw i32 %408, %407
  %410 = sdiv i32 %409, 4
  %411 = sext i32 %410 to i64
  %412 = call fastcc float @x264_psnr(i64 noundef %372, i64 noundef %411) #24
  %413 = fpext float %412 to double
  %414 = load i32, ptr %203, align 16, !tbaa !264
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 %415
  %417 = load double, ptr %416, align 8, !tbaa !123
  %418 = fadd double %417, %413
  store double %418, ptr %416, align 8, !tbaa !123
  %419 = load i32, ptr %381, align 4, !tbaa !108
  %420 = load i32, ptr %384, align 8, !tbaa !109
  %421 = mul nsw i32 %420, %419
  %422 = sdiv i32 %421, 4
  %423 = sext i32 %422 to i64
  %424 = call fastcc float @x264_psnr(i64 noundef %374, i64 noundef %423) #24
  %425 = fpext float %424 to double
  %426 = load i32, ptr %203, align 16, !tbaa !264
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 %427
  %429 = load double, ptr %428, align 8, !tbaa !123
  %430 = fadd double %429, %425
  store double %430, ptr %428, align 8, !tbaa !123
  %431 = load i32, ptr %381, align 4, !tbaa !108
  %432 = load i32, ptr %384, align 8, !tbaa !109
  %433 = mul nsw i32 %432, %431
  %434 = sext i32 %433 to i64
  %435 = call fastcc float @x264_psnr(i64 noundef %370, i64 noundef %434) #24
  %436 = fpext float %435 to double
  %437 = load i32, ptr %381, align 4, !tbaa !108
  %438 = load i32, ptr %384, align 8, !tbaa !109
  %439 = mul nsw i32 %438, %437
  %440 = sdiv i32 %439, 4
  %441 = sext i32 %440 to i64
  %442 = call fastcc float @x264_psnr(i64 noundef %372, i64 noundef %441) #24
  %443 = fpext float %442 to double
  %444 = load i32, ptr %381, align 4, !tbaa !108
  %445 = load i32, ptr %384, align 8, !tbaa !109
  %446 = mul nsw i32 %445, %444
  %447 = sdiv i32 %446, 4
  %448 = sext i32 %447 to i64
  %449 = call fastcc float @x264_psnr(i64 noundef %374, i64 noundef %448) #24
  %450 = fpext float %449 to double
  %451 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %6, i64 noundef 80, ptr noundef nonnull @.str.50, double noundef %436, double noundef %443, double noundef %450) #23
  %452 = load i32, ptr %203, align 16, !tbaa !264
  br label %453

453:                                              ; preds = %368, %363
  %454 = phi i32 [ %452, %368 ], [ %367, %363 ]
  %455 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %456 = load i32, ptr %455, align 16, !tbaa !147
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %481, label %458

458:                                              ; preds = %453
  %459 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 14
  %460 = load double, ptr %459, align 8, !tbaa !318
  %461 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %462 = load i32, ptr %461, align 4, !tbaa !108
  %463 = add nsw i32 %462, -6
  %464 = ashr i32 %463, 2
  %465 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %466 = load i32, ptr %465, align 8, !tbaa !109
  %467 = add nsw i32 %466, -6
  %468 = ashr i32 %467, 2
  %469 = mul nsw i32 %468, %464
  %470 = sitofp i32 %469 to double
  %471 = fdiv double %460, %470
  %472 = sext i32 %454 to i64
  %473 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10, i64 %472
  %474 = load double, ptr %473, align 8, !tbaa !123
  %475 = fadd double %474, %471
  store double %475, ptr %473, align 8, !tbaa !123
  %476 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #25
  %477 = getelementptr inbounds i8, ptr %6, i64 %476
  %478 = sub i64 80, %476
  %479 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %477, i64 noundef %478, ptr noundef nonnull @.str.51, double noundef %471) #23
  %480 = load i32, ptr %203, align 16, !tbaa !264
  br label %481

481:                                              ; preds = %458, %453
  %482 = phi i32 [ %480, %458 ], [ %454, %453 ]
  %483 = getelementptr inbounds [80 x i8], ptr %6, i64 0, i64 79
  store i8 0, ptr %483, align 1, !tbaa !120
  %484 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %485 = load i32, ptr %484, align 4, !tbaa !40
  %486 = load ptr, ptr %134, align 16, !tbaa !124
  %487 = getelementptr inbounds %struct.x264_frame, ptr %486, i64 0, i32 21
  %488 = load float, ptr %487, align 4, !tbaa !303
  %489 = fpext float %488 to double
  %490 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 14
  %491 = load i32, ptr %490, align 4, !tbaa !270
  %492 = icmp eq i32 %482, 2
  %493 = icmp eq i32 %482, 0
  %494 = select i1 %493, i32 80, i32 66
  %495 = select i1 %492, i32 73, i32 %494
  %496 = load i32, ptr %486, align 16, !tbaa !265
  %497 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 4
  %498 = load i32, ptr %497, align 8, !tbaa !319
  %499 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 5
  %500 = load i32, ptr %499, align 4, !tbaa !320
  %501 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 6
  %502 = load i32, ptr %501, align 8, !tbaa !321
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.52, i32 noundef %485, double noundef %489, i32 noundef %491, i32 noundef %495, i32 noundef %496, i32 noundef %498, i32 noundef %500, i32 noundef %502, i32 noundef %197, ptr noundef nonnull %6) #23
  %503 = load ptr, ptr %201, align 16, !tbaa !88
  call fastcc void @x264_thread_sync_stat(ptr noundef %503, ptr noundef nonnull %0) #24
  call fastcc void @x264_thread_sync_stat(ptr noundef %1, ptr noundef nonnull %0) #24
  %504 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %505 = load i32, ptr %504, align 8, !tbaa !91
  %506 = icmp sgt i32 %505, 0
  br i1 %506, label %510, label %507

507:                                              ; preds = %522, %481
  %508 = load i32, ptr @tga_dump_rate, align 4, !tbaa !94
  %509 = icmp sgt i32 %508, 0
  br i1 %509, label %527, label %539

510:                                              ; preds = %481, %522
  %511 = phi i32 [ %523, %522 ], [ %505, %481 ]
  %512 = phi i64 [ %524, %522 ], [ 0, %481 ]
  %513 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %512
  %514 = load ptr, ptr %513, align 8, !tbaa !88
  %515 = icmp eq ptr %514, null
  br i1 %515, label %522, label %516

516:                                              ; preds = %510
  %517 = getelementptr inbounds %struct.x264_frame, ptr %514, i64 0, i32 39
  %518 = load i32, ptr %517, align 16, !tbaa !238
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %522, label %520

520:                                              ; preds = %516
  call void @x264_frame_push_blank_unused(ptr noundef nonnull %0, ptr noundef nonnull %514) #23
  store ptr null, ptr %513, align 8, !tbaa !88
  %521 = load i32, ptr %504, align 8, !tbaa !91
  br label %522

522:                                              ; preds = %510, %516, %520
  %523 = phi i32 [ %511, %510 ], [ %511, %516 ], [ %521, %520 ]
  %524 = add nuw nsw i64 %512, 1
  %525 = sext i32 %523 to i64
  %526 = icmp slt i64 %524, %525
  br i1 %526, label %510, label %507, !llvm.loop !322

527:                                              ; preds = %507
  %528 = load ptr, ptr %134, align 16, !tbaa !124
  %529 = getelementptr inbounds %struct.x264_frame, ptr %528, i64 0, i32 10
  %530 = load i32, ptr %529, align 8, !tbaa !242
  %531 = srem i32 %530, %508
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %538, label %533

533:                                              ; preds = %527
  %534 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 9
  %535 = load i32, ptr %534, align 4, !tbaa !323
  %536 = add nsw i32 %535, -1
  %537 = icmp eq i32 %530, %536
  br i1 %537, label %538, label %539

538:                                              ; preds = %533, %527
  call fastcc void @x264_frame_dump_to_file(ptr noundef nonnull %0) #24
  br label %539

539:                                              ; preds = %533, %538, %507
  %540 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  %541 = load ptr, ptr %540, align 8, !tbaa !133
  %542 = icmp eq ptr %541, null
  br i1 %542, label %544, label %543

543:                                              ; preds = %539
  call fastcc void @x264_frame_dump(ptr noundef nonnull %0) #24
  br label %544

544:                                              ; preds = %184, %539, %543, %139
  %545 = phi i32 [ -1, %139 ], [ %197, %543 ], [ %197, %539 ], [ -1, %184 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #22
  br label %546

546:                                              ; preds = %30, %544, %17
  %547 = phi i32 [ %545, %544 ], [ 0, %17 ], [ -1, %30 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #22
  ret i32 %547
}

; Function Attrs: optsize
declare ptr @x264_frame_shift(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_reference_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3
  %3 = load ptr, ptr %2, align 16, !tbaa !88
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1, %5
  %6 = tail call ptr @x264_frame_pop(ptr noundef nonnull %2) #23
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef %6) #23
  %7 = load ptr, ptr %2, align 16, !tbaa !88
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !324

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %11 = load ptr, ptr %10, align 8, !tbaa !239
  store i32 0, ptr %11, align 16, !tbaa !265
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %13 = load ptr, ptr %12, align 16, !tbaa !124
  store i32 0, ptr %13, align 16, !tbaa !265
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_reference_hierarchy_reset(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 20
  %3 = load i32, ptr %2, align 16, !tbaa !47
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %84, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43
  %7 = load ptr, ptr %6, align 16, !tbaa !89
  %8 = load ptr, ptr %7, align 8, !tbaa !88
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  br label %12

12:                                               ; preds = %10, %30
  %13 = phi i64 [ 0, %10 ], [ %42, %30 ]
  %14 = phi ptr [ %8, %10 ], [ %44, %30 ]
  %15 = phi i32 [ 0, %10 ], [ %41, %30 ]
  %16 = getelementptr inbounds %struct.x264_frame, ptr %14, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !261
  %18 = icmp eq i32 %17, 5
  br i1 %18, label %30, label %19

19:                                               ; preds = %30, %12
  %20 = phi i32 [ %15, %12 ], [ %41, %30 ]
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %19, %5
  %23 = phi i1 [ false, %5 ], [ %21, %19 ]
  %24 = icmp eq i32 %3, 1
  %25 = select i1 %24, i1 true, i1 %23
  br i1 %25, label %26, label %84

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 0
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = icmp eq ptr %28, null
  br i1 %29, label %76, label %46

30:                                               ; preds = %12
  %31 = getelementptr inbounds %struct.x264_frame, ptr %14, i64 0, i32 11
  %32 = load i32, ptr %31, align 4, !tbaa !325
  %33 = getelementptr inbounds %struct.x264_frame, ptr %14, i64 0, i32 10
  %34 = load i32, ptr %33, align 8, !tbaa !242
  %35 = load ptr, ptr %11, align 16, !tbaa !49
  %36 = getelementptr inbounds %struct.x264_sps_t, ptr %35, i64 0, i32 24, i32 29
  %37 = load i32, ptr %36, align 4, !tbaa !76
  %38 = add nsw i32 %37, %34
  %39 = icmp ne i32 %32, %38
  %40 = zext i1 %39 to i32
  %41 = or i32 %15, %40
  %42 = add nuw i64 %13, 1
  %43 = getelementptr inbounds ptr, ptr %7, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !88
  %45 = icmp eq ptr %44, null
  br i1 %45, label %19, label %12, !llvm.loop !326

46:                                               ; preds = %26, %69
  %47 = phi i64 [ %70, %69 ], [ 0, %26 ]
  %48 = phi ptr [ %72, %69 ], [ %28, %26 ]
  br i1 %24, label %49, label %69

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.x264_frame, ptr %48, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !261
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = trunc i64 %47 to i32
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 11
  %56 = load i32, ptr %55, align 8, !tbaa !41
  %57 = getelementptr inbounds %struct.x264_frame, ptr %48, i64 0, i32 13
  %58 = load i32, ptr %57, align 4, !tbaa !327
  %59 = sub nsw i32 %56, %58
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 24
  %61 = load i32, ptr %60, align 4, !tbaa !263
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 25, i64 %62
  store i32 %59, ptr %63, align 8, !tbaa !328
  %64 = load i32, ptr %48, align 16, !tbaa !265
  %65 = add nsw i32 %61, 1
  store i32 %65, ptr %60, align 4, !tbaa !263
  %66 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 25, i64 %62, i32 1
  store i32 %64, ptr %66, align 4, !tbaa !288
  %67 = tail call ptr @x264_frame_pop(ptr noundef nonnull %27) #23
  tail call void @x264_frame_push_unused(ptr noundef nonnull %0, ptr noundef %67) #23
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50
  store i32 1, ptr %68, align 8, !tbaa !94
  br label %76

69:                                               ; preds = %46, %49
  %70 = add nuw i64 %47, 1
  %71 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 %70
  %72 = load ptr, ptr %71, align 8, !tbaa !88
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %46, !llvm.loop !329

74:                                               ; preds = %69
  %75 = trunc i64 %70 to i32
  br label %76

76:                                               ; preds = %74, %26, %53
  %77 = phi i32 [ %54, %53 ], [ 0, %26 ], [ %75, %74 ]
  %78 = add nuw nsw i32 %77, 2
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 6
  %80 = load i32, ptr %79, align 8, !tbaa !79
  %81 = sub i32 %78, %80
  %82 = tail call i32 @llvm.smax.i32(i32 %81, i32 0)
  %83 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 23
  store i32 %82, ptr %83, align 16, !tbaa !262
  br label %84

84:                                               ; preds = %22, %1, %76
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_reference_build_list(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [3 x %struct.x264_weight_t], align 16
  %4 = alloca [3 x %struct.x264_weight_t], align 16
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  store i32 0, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19
  store i32 0, ptr %6, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  store i32 0, ptr %7, align 8, !tbaa !92
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 66, i32 19, i64 1
  store i32 0, ptr %8, align 4, !tbaa !94
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %10 = load i32, ptr %9, align 16, !tbaa !264
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %203, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 0
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %24

16:                                               ; preds = %45
  %17 = add nsw i32 %47, -1
  br label %18

18:                                               ; preds = %16, %12
  %19 = phi i32 [ %17, %16 ], [ -1, %12 ]
  %20 = phi i32 [ %46, %16 ], [ 0, %12 ]
  %21 = tail call i32 @llvm.smax.i32(i32 %20, i32 1)
  %22 = add nsw i32 %21, -1
  %23 = zext nneg i32 %22 to i64
  br label %52

24:                                               ; preds = %12, %45
  %25 = phi i32 [ %46, %45 ], [ 0, %12 ]
  %26 = phi i32 [ %47, %45 ], [ 0, %12 ]
  %27 = phi i64 [ %48, %45 ], [ 0, %12 ]
  %28 = phi ptr [ %50, %45 ], [ %14, %12 ]
  %29 = load i32, ptr %28, align 16, !tbaa !265
  %30 = icmp slt i32 %29, %1
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = add nsw i32 %25, 1
  store i32 %32, ptr %5, align 8, !tbaa !91
  %33 = sext i32 %25 to i64
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %33
  br label %41

35:                                               ; preds = %24
  %36 = icmp sgt i32 %29, %1
  br i1 %36, label %37, label %45

37:                                               ; preds = %35
  %38 = add nsw i32 %26, 1
  store i32 %38, ptr %7, align 8, !tbaa !92
  %39 = sext i32 %26 to i64
  %40 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %39
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi ptr [ %34, %31 ], [ %40, %37 ]
  %43 = phi i32 [ %32, %31 ], [ %25, %37 ]
  %44 = phi i32 [ %26, %31 ], [ %38, %37 ]
  store ptr %28, ptr %42, align 8, !tbaa !88
  br label %45

45:                                               ; preds = %41, %35
  %46 = phi i32 [ %25, %35 ], [ %43, %41 ]
  %47 = phi i32 [ %26, %35 ], [ %44, %41 ]
  %48 = add nuw nsw i64 %27, 1
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 3, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  %51 = icmp eq ptr %50, null
  br i1 %51, label %16, label %24, !llvm.loop !330

52:                                               ; preds = %64, %18
  %53 = phi i64 [ 0, %18 ], [ %65, %64 ]
  %54 = icmp eq i64 %53, %23
  br i1 %54, label %69, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %53
  %57 = load ptr, ptr %56, align 8, !tbaa !88
  %58 = load i32, ptr %57, align 16, !tbaa !265
  %59 = add nuw nsw i64 %53, 1
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !88
  %62 = load i32, ptr %61, align 16, !tbaa !265
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %66, label %64

64:                                               ; preds = %55, %66
  %65 = phi i64 [ %59, %55 ], [ 0, %66 ]
  br label %52, !llvm.loop !331

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %53
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %59
  store ptr %61, ptr %67, align 8, !tbaa !88
  store ptr %57, ptr %68, align 8, !tbaa !88
  br label %64

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 23
  %71 = load i32, ptr %70, align 16, !tbaa !262
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %98

73:                                               ; preds = %69
  %74 = sub nsw i32 %20, %71
  %75 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 11
  %76 = load i32, ptr %75, align 8, !tbaa !41
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 24
  %78 = load i32, ptr %77, align 4, !tbaa !263
  %79 = sext i32 %78 to i64
  %80 = sext i32 %20 to i64
  %81 = sext i32 %74 to i64
  br label %82

82:                                               ; preds = %73, %82
  %83 = phi i64 [ %80, %73 ], [ %85, %82 ]
  %84 = phi i64 [ %79, %73 ], [ %93, %82 ]
  %85 = add nsw i64 %83, -1
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !88
  %88 = getelementptr inbounds %struct.x264_frame, ptr %87, i64 0, i32 13
  %89 = load i32, ptr %88, align 4, !tbaa !327
  %90 = sub nsw i32 %76, %89
  %91 = load i32, ptr %87, align 16, !tbaa !265
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 25, i64 %84, i32 1
  store i32 %91, ptr %92, align 4, !tbaa !288
  %93 = add nsw i64 %84, 1
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 25, i64 %84
  store i32 %90, ptr %94, align 8, !tbaa !328
  %95 = icmp sgt i64 %85, %81
  br i1 %95, label %82, label %96, !llvm.loop !332

96:                                               ; preds = %82
  %97 = trunc i64 %93 to i32
  store i32 %97, ptr %77, align 4, !tbaa !263
  br label %98

98:                                               ; preds = %96, %69
  %99 = tail call i32 @llvm.smax.i32(i32 %19, i32 0)
  %100 = zext nneg i32 %99 to i64
  br label %101

101:                                              ; preds = %113, %98
  %102 = phi i64 [ 0, %98 ], [ %114, %113 ]
  %103 = icmp eq i64 %102, %100
  br i1 %103, label %118, label %104

104:                                              ; preds = %101
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %102
  %106 = load ptr, ptr %105, align 8, !tbaa !88
  %107 = load i32, ptr %106, align 16, !tbaa !265
  %108 = add nuw nsw i64 %102, 1
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !88
  %111 = load i32, ptr %110, align 16, !tbaa !265
  %112 = icmp sgt i32 %107, %111
  br i1 %112, label %115, label %113

113:                                              ; preds = %104, %115
  %114 = phi i64 [ %108, %104 ], [ 0, %115 ]
  br label %101, !llvm.loop !333

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %102
  %117 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49, i64 %108
  store ptr %110, ptr %116, align 8, !tbaa !88
  store ptr %106, ptr %117, align 8, !tbaa !88
  br label %113

118:                                              ; preds = %101
  tail call fastcc void @x264_reference_check_reorder(ptr noundef nonnull %0) #24
  %119 = load i32, ptr %7, align 8, !tbaa !92
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 8
  %121 = load i32, ptr %120, align 16, !tbaa !77
  %122 = tail call i32 @llvm.smin.i32(i32 %119, i32 %121)
  store i32 %122, ptr %7, align 8, !tbaa !92
  %123 = load i32, ptr %5, align 8, !tbaa !91
  %124 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 7
  %125 = load i32, ptr %124, align 4, !tbaa !75
  %126 = tail call i32 @llvm.smin.i32(i32 %123, i32 %125)
  %127 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %128 = load i32, ptr %127, align 16, !tbaa !74
  %129 = tail call i32 @llvm.smin.i32(i32 %126, i32 %128)
  store i32 %129, ptr %5, align 8, !tbaa !91
  %130 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %131 = load ptr, ptr %130, align 8, !tbaa !239
  %132 = getelementptr inbounds %struct.x264_frame, ptr %131, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !261
  %134 = icmp eq i32 %133, 3
  br i1 %134, label %135, label %200

135:                                              ; preds = %118
  %136 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %137 = load i32, ptr %136, align 4, !tbaa !81
  switch i32 %137, label %195 [
    i32 2, label %138
    i32 1, label %184
  ]

138:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %3) #22
  %139 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %3, i64 0, i64 2, i32 5
  store ptr null, ptr %139, align 16, !tbaa !334
  %140 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %3, i64 0, i64 1, i32 5
  store ptr null, ptr %140, align 16, !tbaa !334
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %142 = load i32, ptr %141, align 8, !tbaa !63
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %138
  tail call void @x264_ratecontrol_set_weights(ptr noundef nonnull %0, ptr noundef nonnull %131) #23
  %145 = load ptr, ptr %130, align 8, !tbaa !239
  br label %146

146:                                              ; preds = %144, %138
  %147 = phi ptr [ %145, %144 ], [ %131, %138 ]
  %148 = getelementptr inbounds %struct.x264_frame, ptr %147, i64 0, i32 37, i64 0, i64 0, i32 5
  %149 = load ptr, ptr %148, align 16, !tbaa !334
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %156

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.x264_frame, ptr %147, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 0, ptr %152, align 16, !tbaa !313
  %153 = getelementptr inbounds %struct.x264_weight_t, ptr %3, i64 0, i32 3
  store i32 1, ptr %153, align 4, !tbaa !335
  %154 = getelementptr inbounds %struct.x264_weight_t, ptr %3, i64 0, i32 2
  store i32 0, ptr %154, align 16, !tbaa !313
  %155 = getelementptr inbounds %struct.x264_weight_t, ptr %3, i64 0, i32 4
  store i32 -1, ptr %155, align 8, !tbaa !336
  br label %178

156:                                              ; preds = %146
  %157 = getelementptr inbounds %struct.x264_frame, ptr %147, i64 0, i32 37, i64 0, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !335
  %159 = getelementptr inbounds %struct.x264_frame, ptr %147, i64 0, i32 37, i64 0, i64 0, i32 2
  %160 = load i32, ptr %159, align 16, !tbaa !313
  %161 = shl nuw i32 1, %160
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %156
  store i32 1, ptr %157, align 4, !tbaa !335
  store i32 0, ptr %159, align 16, !tbaa !313
  %164 = getelementptr inbounds %struct.x264_frame, ptr %147, i64 0, i32 37
  %165 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 20
  %166 = load ptr, ptr %165, align 8, !tbaa !337
  tail call void %166(ptr noundef nonnull %0, ptr noundef nonnull %164) #23
  br label %167

167:                                              ; preds = %163, %156
  %168 = tail call i32 @x264_weighted_reference_duplicate(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull @weight_none) #24, !range !338
  %169 = load ptr, ptr %130, align 8, !tbaa !239
  %170 = getelementptr inbounds %struct.x264_frame, ptr %169, i64 0, i32 37, i64 0, i64 0, i32 4
  %171 = load i32, ptr %170, align 8, !tbaa !336
  %172 = icmp sgt i32 %171, -128
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.x264_frame, ptr %169, i64 0, i32 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %174, i64 64, i1 false), !tbaa.struct !339
  %175 = getelementptr inbounds %struct.x264_weight_t, ptr %3, i64 0, i32 4
  %176 = load i32, ptr %175, align 8, !tbaa !336
  %177 = add nsw i32 %176, -1
  store i32 %177, ptr %175, align 8, !tbaa !336
  br label %178

178:                                              ; preds = %151, %173
  %179 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 20
  %180 = load ptr, ptr %179, align 8, !tbaa !337
  call void %180(ptr noundef nonnull %0, ptr noundef nonnull %3) #23
  %181 = call i32 @x264_weighted_reference_duplicate(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %3) #24, !range !338
  br label %182

182:                                              ; preds = %178, %167
  %183 = phi i32 [ -1, %167 ], [ %181, %178 ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %3) #22
  br label %195

184:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %4) #22
  %185 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 3
  store i32 1, ptr %185, align 4, !tbaa !335
  %186 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 2
  store i32 0, ptr %186, align 16, !tbaa !313
  %187 = getelementptr inbounds %struct.x264_weight_t, ptr %4, i64 0, i32 4
  store i32 -1, ptr %187, align 8, !tbaa !336
  %188 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 20
  %189 = load ptr, ptr %188, align 8, !tbaa !337
  call void %189(ptr noundef nonnull %0, ptr noundef nonnull %4) #23
  %190 = load ptr, ptr %130, align 8, !tbaa !239
  %191 = getelementptr inbounds %struct.x264_frame, ptr %190, i64 0, i32 37, i64 0, i64 0, i32 2
  store i32 0, ptr %191, align 16, !tbaa !313
  %192 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %4, i64 0, i64 2, i32 5
  store ptr null, ptr %192, align 16, !tbaa !334
  %193 = getelementptr inbounds [3 x %struct.x264_weight_t], ptr %4, i64 0, i64 1, i32 5
  store ptr null, ptr %193, align 16, !tbaa !334
  %194 = call i32 @x264_weighted_reference_duplicate(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %4) #24, !range !338
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %4) #22
  br label %195

195:                                              ; preds = %135, %184, %182
  %196 = phi i32 [ %183, %182 ], [ %194, %184 ], [ -1, %135 ]
  %197 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 84
  store i32 %196, ptr %197, align 4, !tbaa !340
  %198 = load i32, ptr %5, align 8, !tbaa !91
  %199 = load i32, ptr %7, align 8, !tbaa !92
  br label %200

200:                                              ; preds = %195, %118
  %201 = phi i32 [ %199, %195 ], [ %122, %118 ]
  %202 = phi i32 [ %198, %195 ], [ %129, %118 ]
  store i32 %202, ptr %6, align 8, !tbaa !94
  store i32 %201, ptr %8, align 4, !tbaa !94
  br label %203

203:                                              ; preds = %2, %200
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #12 {
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !224
  %6 = zext nneg i32 %1 to i64
  %7 = shl i64 %5, %6
  %8 = zext i32 %2 to i64
  %9 = or i64 %7, %8
  store i64 %9, ptr %4, align 8, !tbaa !224
  %10 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !223
  %12 = sub nsw i32 %11, %1
  store i32 %12, ptr %10, align 8, !tbaa !223
  %13 = icmp slt i32 %12, 33
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = zext nneg i32 %12 to i64
  %16 = shl i64 %9, %15
  %17 = tail call fastcc i64 @endian_fix(i64 noundef %16) #24
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !221
  store i32 %18, ptr %20, align 4, !tbaa !120
  %21 = load i32, ptr %10, align 8, !tbaa !223
  %22 = add nsw i32 %21, 32
  store i32 %22, ptr %10, align 8, !tbaa !223
  %23 = load ptr, ptr %19, align 8, !tbaa !221
  %24 = getelementptr inbounds i8, ptr %23, i64 4
  store ptr %24, ptr %19, align 8, !tbaa !221
  br label %25

25:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_rbsp_trailing(ptr nocapture noundef %0) unnamed_addr #12 {
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef 1) #24
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !223
  %4 = and i32 %3, 7
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %4, i32 noundef 0) #24
  ret void
}

; Function Attrs: optsize
declare void @x264_sei_recovery_point_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_sei_pic_timing_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_ratecontrol_start(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_ratecontrol_qp(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_reference_build_list_optimal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_reference_check_reorder(ptr nocapture noundef %0) unnamed_addr #14 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %36

5:                                                ; preds = %1
  %6 = add nsw i32 %3, -1
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %8 = load i32, ptr %7, align 16, !tbaa !264
  %9 = icmp eq i32 %8, 0
  %10 = zext nneg i32 %6 to i64
  br label %11

11:                                               ; preds = %5, %33
  %12 = phi i64 [ 0, %5 ], [ %34, %33 ]
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  br i1 %9, label %15, label %24

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.x264_frame, ptr %14, i64 0, i32 13
  %17 = load i32, ptr %16, align 4, !tbaa !327
  %18 = add nuw nsw i64 %12, 1
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !88
  %21 = getelementptr inbounds %struct.x264_frame, ptr %20, i64 0, i32 13
  %22 = load i32, ptr %21, align 4, !tbaa !327
  %23 = icmp slt i32 %17, %22
  br i1 %23, label %31, label %33

24:                                               ; preds = %11
  %25 = load i32, ptr %14, align 16, !tbaa !265
  %26 = add nuw nsw i64 %12, 1
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = load i32, ptr %28, align 16, !tbaa !265
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24, %15
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50
  store i32 1, ptr %32, align 8, !tbaa !94
  br label %36

33:                                               ; preds = %15, %24
  %34 = phi i64 [ %18, %15 ], [ %26, %24 ]
  %35 = icmp eq i64 %34, %10
  br i1 %35, label %36, label %11, !llvm.loop !341

36:                                               ; preds = %33, %1, %31
  ret void
}

; Function Attrs: optsize
declare void @x264_macroblock_bipred_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_weighted_pred_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %3 = load i32, ptr %2, align 8, !tbaa !91
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %7 = zext nneg i32 %3 to i64
  br label %18

8:                                                ; preds = %18, %1
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %10 = load ptr, ptr %9, align 8, !tbaa !239
  %11 = getelementptr inbounds %struct.x264_frame, ptr %10, i64 0, i32 77
  store i32 0, ptr %11, align 4, !tbaa !342
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %13 = load i32, ptr %12, align 4, !tbaa !343
  %14 = shl i32 %3, %13
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %8
  %17 = zext nneg i32 %14 to i64
  br label %28

18:                                               ; preds = %5, %18
  %19 = phi i64 [ 0, %5 ], [ %26, %18 ]
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !88
  %22 = getelementptr inbounds %struct.x264_frame, ptr %21, i64 0, i32 31
  %23 = load ptr, ptr %22, align 16, !tbaa !88
  %24 = load ptr, ptr %6, align 8, !tbaa !239
  %25 = getelementptr inbounds %struct.x264_frame, ptr %24, i64 0, i32 38, i64 %19
  store ptr %23, ptr %25, align 8, !tbaa !88
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %7
  br i1 %27, label %8, label %18, !llvm.loop !344

28:                                               ; preds = %28, %16
  %29 = phi i64 [ 0, %16 ], [ %33, %28 ]
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %29, i64 0, i32 5
  store ptr null, ptr %30, align 16, !tbaa !334
  %31 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %29, i64 1, i32 5
  store ptr null, ptr %31, align 16, !tbaa !334
  %32 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %29, i64 2, i32 5
  store ptr null, ptr %32, align 16, !tbaa !334
  %33 = add nuw nsw i64 %29, 1
  %34 = icmp eq i64 %33, %17
  br i1 %34, label %35, label %28, !llvm.loop !345

35:                                               ; preds = %28, %8
  %36 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %37 = load i32, ptr %36, align 16, !tbaa !264
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %142

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %41 = load i32, ptr %40, align 4, !tbaa !81
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %142, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %45 = load i32, ptr %44, align 8, !tbaa !97
  %46 = shl i32 32, %45
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2, i32 5
  store ptr null, ptr %47, align 16, !tbaa !334
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1, i32 5
  store ptr null, ptr %48, align 16, !tbaa !334
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 2, i32 2
  store i32 0, ptr %49, align 16, !tbaa !313
  %50 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 1, i32 2
  store i32 0, ptr %50, align 16, !tbaa !313
  br i1 %4, label %51, label %140

51:                                               ; preds = %43
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %54 = shl i32 64, %45
  br label %57

55:                                               ; preds = %135
  %56 = icmp eq i32 %96, 0
  br i1 %56, label %140, label %142

57:                                               ; preds = %51, %135
  %58 = phi i64 [ 0, %51 ], [ %136, %135 ]
  %59 = phi i32 [ 0, %51 ], [ %97, %135 ]
  %60 = phi i32 [ 0, %51 ], [ %96, %135 ]
  %61 = load ptr, ptr %9, align 8, !tbaa !239
  %62 = getelementptr inbounds %struct.x264_frame, ptr %61, i64 0, i32 37, i64 %58
  %63 = getelementptr inbounds %struct.x264_weight_t, ptr %62, i64 0, i32 5
  %64 = load ptr, ptr %63, align 16, !tbaa !334
  %65 = icmp eq ptr %64, null
  br i1 %65, label %95, label %66

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %67, ptr noundef nonnull align 16 dereferenceable(64) %62, i64 64, i1 false), !tbaa.struct !339
  %68 = getelementptr inbounds %struct.x264_weight_t, ptr %67, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !335
  %70 = getelementptr inbounds %struct.x264_weight_t, ptr %67, i64 0, i32 2
  %71 = load i32, ptr %70, align 16, !tbaa !313
  %72 = shl nuw i32 1, %71
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = getelementptr inbounds %struct.x264_weight_t, ptr %67, i64 0, i32 4
  %76 = load i32, ptr %75, align 8, !tbaa !336
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.x264_weight_t, ptr %67, i64 0, i32 5
  store ptr null, ptr %79, align 16, !tbaa !334
  br label %95

80:                                               ; preds = %74, %66
  %81 = icmp eq i32 %60, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %80
  store i32 %71, ptr %52, align 16, !tbaa !313
  br label %83

83:                                               ; preds = %82, %80
  %84 = add nsw i32 %59, 1
  %85 = sext i32 %59 to i64
  %86 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 52, i64 %85
  %87 = load ptr, ptr %86, align 8, !tbaa !88
  %88 = getelementptr inbounds %struct.x264_frame, ptr %61, i64 0, i32 24
  %89 = load i32, ptr %88, align 8, !tbaa !94
  %90 = mul nsw i32 %89, %46
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, ptr %87, i64 %91
  %93 = getelementptr inbounds i8, ptr %92, i64 32
  %94 = getelementptr inbounds %struct.x264_frame, ptr %61, i64 0, i32 38, i64 %58
  store ptr %93, ptr %94, align 8, !tbaa !88
  br label %95

95:                                               ; preds = %78, %83, %57
  %96 = phi i32 [ %60, %78 ], [ 1, %83 ], [ %60, %57 ]
  %97 = phi i32 [ %59, %78 ], [ %84, %83 ], [ %59, %57 ]
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 %58
  %99 = getelementptr inbounds %struct.x264_weight_t, ptr %98, i64 0, i32 5
  %100 = load ptr, ptr %99, align 16, !tbaa !334
  %101 = icmp eq ptr %100, null
  br i1 %101, label %135, label %102

102:                                              ; preds = %95
  %103 = load i32, ptr %53, align 4, !tbaa !115
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %58
  %107 = load ptr, ptr %106, align 8, !tbaa !88
  %108 = getelementptr inbounds %struct.x264_frame, ptr %107, i64 0, i32 31
  %109 = load ptr, ptr %108, align 16, !tbaa !88
  %110 = getelementptr inbounds %struct.x264_frame, ptr %107, i64 0, i32 24
  %111 = load i32, ptr %110, align 8, !tbaa !94
  %112 = mul nsw i32 %111, %46
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 0, %113
  %115 = getelementptr inbounds i8, ptr %109, i64 %114
  %116 = getelementptr inbounds i8, ptr %115, i64 -32
  %117 = load ptr, ptr %9, align 8, !tbaa !239
  %118 = getelementptr inbounds %struct.x264_frame, ptr %117, i64 0, i32 38, i64 %58
  %119 = load ptr, ptr %118, align 8, !tbaa !88
  %120 = getelementptr inbounds %struct.x264_frame, ptr %117, i64 0, i32 24
  %121 = load i32, ptr %120, align 8, !tbaa !94
  %122 = mul nsw i32 %121, %46
  %123 = sext i32 %122 to i64
  %124 = sub nsw i64 0, %123
  %125 = getelementptr inbounds i8, ptr %119, i64 %124
  %126 = getelementptr inbounds i8, ptr %125, i64 -32
  %127 = getelementptr inbounds %struct.x264_frame, ptr %117, i64 0, i32 25
  %128 = load i32, ptr %127, align 4, !tbaa !94
  %129 = add nsw i32 %128, 64
  %130 = getelementptr inbounds %struct.x264_frame, ptr %117, i64 0, i32 26
  %131 = load i32, ptr %130, align 16, !tbaa !94
  %132 = add nsw i32 %131, %54
  tail call void @x264_weight_scale_plane(ptr noundef nonnull %0, ptr noundef nonnull %126, i32 noundef %121, ptr noundef nonnull %116, i32 noundef %121, i32 noundef %129, i32 noundef %132, ptr noundef nonnull %98) #23
  %133 = load ptr, ptr %9, align 8, !tbaa !239
  %134 = getelementptr inbounds %struct.x264_frame, ptr %133, i64 0, i32 77
  store i32 %132, ptr %134, align 4, !tbaa !342
  br label %135

135:                                              ; preds = %95, %102, %105
  %136 = add nuw nsw i64 %58, 1
  %137 = load i32, ptr %2, align 8, !tbaa !91
  %138 = sext i32 %137 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %57, label %55, !llvm.loop !346

140:                                              ; preds = %43, %55
  %141 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 22, i64 0, i64 0, i32 2
  store i32 0, ptr %141, align 16, !tbaa !313
  br label %142

142:                                              ; preds = %55, %140, %35, %39
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_slice_init(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 5
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 16, !tbaa !49
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 16, !tbaa !51
  br i1 %4, label %10, label %18

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 27
  %12 = load i32, ptr %11, align 8, !tbaa !42
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !41
  tail call fastcc void @x264_slice_header_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %7, ptr noundef %9, i32 noundef %12, i32 noundef %14, i32 noundef %2) #24
  %15 = load i32, ptr %11, align 8, !tbaa !42
  %16 = add nsw i32 %15, 1
  %17 = srem i32 %16, 65536
  store i32 %17, ptr %11, align 8, !tbaa !42
  br label %43

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 11
  %20 = load i32, ptr %19, align 8, !tbaa !41
  tail call fastcc void @x264_slice_header_init(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %7, ptr noundef %9, i32 noundef -1, i32 noundef %20, i32 noundef %2) #24
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %22 = load i32, ptr %21, align 8, !tbaa !91
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 1)
  %24 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 17
  store i32 %23, ptr %24, align 16, !tbaa !347
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 48
  %26 = load i32, ptr %25, align 8, !tbaa !92
  %27 = tail call i32 @llvm.smax.i32(i32 %26, i32 1)
  %28 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 18
  store i32 %27, ptr %28, align 4, !tbaa !348
  %29 = load ptr, ptr %8, align 16, !tbaa !51
  %30 = getelementptr inbounds %struct.x264_pps_t, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !349
  %32 = icmp eq i32 %23, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %35 = load i32, ptr %34, align 16, !tbaa !264
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.x264_pps_t, ptr %29, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !350
  %40 = icmp eq i32 %27, %39
  br i1 %40, label %43, label %41

41:                                               ; preds = %37, %18
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 16
  store i32 1, ptr %42, align 4, !tbaa !351
  br label %43

43:                                               ; preds = %33, %37, %41, %10
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 6
  %45 = load i32, ptr %44, align 16, !tbaa !352
  %46 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %47 = load ptr, ptr %46, align 16, !tbaa !124
  %48 = getelementptr inbounds %struct.x264_frame, ptr %47, i64 0, i32 13
  store i32 %45, ptr %48, align 4, !tbaa !327
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %50 = load ptr, ptr %49, align 16, !tbaa !49
  %51 = getelementptr inbounds %struct.x264_sps_t, ptr %50, i64 0, i32 7
  %52 = load i32, ptr %51, align 4, !tbaa !353
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %43
  %55 = load i32, ptr %47, align 16, !tbaa !265
  %56 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 11
  store i32 %55, ptr %56, align 4, !tbaa !354
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %58 = load i32, ptr %57, align 8, !tbaa !97
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 53
  %62 = load i32, ptr %61, align 16, !tbaa !355
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, i32 -1, i32 1
  %65 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  store i32 %64, ptr %65, align 8, !tbaa !356
  br i1 %63, label %66, label %70

66:                                               ; preds = %60
  %67 = add nsw i32 %55, 1
  store i32 %67, ptr %56, align 4, !tbaa !354
  br label %70

68:                                               ; preds = %54
  %69 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 12
  store i32 0, ptr %69, align 8, !tbaa !356
  br label %70

70:                                               ; preds = %43, %68, %66, %60
  tail call void @x264_macroblock_slice_init(ptr noundef nonnull %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_threaded_slices_write(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !115
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %7 = load ptr, ptr %6, align 16, !tbaa !49
  %8 = getelementptr inbounds %struct.x264_sps_t, ptr %7, i64 0, i32 17
  %9 = load i32, ptr %8, align 4, !tbaa !60
  br label %15

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %12 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %13 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  br label %23

15:                                               ; preds = %32, %5
  %16 = phi i32 [ %9, %5 ], [ %36, %32 ]
  %17 = shl nsw i32 %16, 4
  %18 = add nsw i32 %17, 16
  tail call void @x264_analyse_weight_frame(ptr noundef nonnull %0, i32 noundef %18) #23
  tail call void @x264_threads_distribute_ratecontrol(ptr noundef nonnull %0) #23
  %19 = load i32, ptr %2, align 4, !tbaa !115
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %84

21:                                               ; preds = %15
  %22 = zext nneg i32 %19 to i64
  br label %66

23:                                               ; preds = %10, %32
  %24 = phi i32 [ %3, %10 ], [ %33, %32 ]
  %25 = phi i64 [ 0, %10 ], [ %47, %32 ]
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  %28 = icmp eq i64 %25, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %27, ptr noundef nonnull align 16 dereferenceable(704) %0, i64 704, i1 false), !tbaa.struct !283
  %30 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24860) %30, ptr noundef nonnull align 4 dereferenceable(24860) %11, i64 24860, i1 false)
  %31 = load i32, ptr %2, align 4, !tbaa !115
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ %31, %29 ], [ %24, %23 ]
  %34 = load ptr, ptr %12, align 16, !tbaa !49
  %35 = getelementptr inbounds %struct.x264_sps_t, ptr %34, i64 0, i32 17
  %36 = load i32, ptr %35, align 4, !tbaa !60
  %37 = load i32, ptr %13, align 8, !tbaa !97
  %38 = ashr i32 %36, %37
  %39 = trunc i64 %25 to i32
  %40 = mul nsw i32 %38, %39
  %41 = load i32, ptr %14, align 4, !tbaa !117
  %42 = sdiv i32 %41, 2
  %43 = add nsw i32 %40, %42
  %44 = sdiv i32 %43, %33
  %45 = shl i32 %44, %37
  %46 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 5
  store i32 %45, ptr %46, align 4, !tbaa !279
  %47 = add nuw nsw i64 %25, 1
  %48 = trunc i64 %47 to i32
  %49 = mul nsw i32 %38, %48
  %50 = add nsw i32 %49, %42
  %51 = sdiv i32 %50, %33
  %52 = shl i32 %51, %37
  %53 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 6
  store i32 %52, ptr %53, align 8, !tbaa !280
  %54 = getelementptr inbounds %struct.x264_sps_t, ptr %34, i64 0, i32 16
  %55 = load i32, ptr %54, align 4, !tbaa !55
  %56 = mul nsw i32 %55, %45
  %57 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 3
  store i32 %56, ptr %57, align 4, !tbaa !357
  %58 = mul nsw i32 %55, %52
  %59 = add nsw i32 %58, -1
  %60 = getelementptr inbounds %struct.x264_t, ptr %27, i64 0, i32 41, i32 4
  store i32 %59, ptr %60, align 8, !tbaa !358
  %61 = sext i32 %33 to i64
  %62 = icmp slt i64 %47, %61
  br i1 %62, label %23, label %15, !llvm.loop !359

63:                                               ; preds = %66
  br i1 %20, label %64, label %84

64:                                               ; preds = %63
  %65 = zext nneg i32 %19 to i64
  br label %77

66:                                               ; preds = %21, %66
  %67 = phi i64 [ 0, %21 ], [ %71, %66 ]
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !88
  %70 = getelementptr inbounds %struct.x264_t, ptr %69, i64 0, i32 3
  store i32 1, ptr %70, align 4, !tbaa !281
  %71 = add nuw nsw i64 %67, 1
  %72 = icmp eq i64 %71, %22
  br i1 %72, label %63, label %66, !llvm.loop !360

73:                                               ; preds = %77
  %74 = icmp eq i32 %19, 1
  br i1 %74, label %84, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  br label %92

77:                                               ; preds = %64, %77
  %78 = phi i64 [ 0, %64 ], [ %82, %77 ]
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !88
  %81 = getelementptr inbounds %struct.x264_t, ptr %80, i64 0, i32 3
  store i32 0, ptr %81, align 4, !tbaa !281
  %82 = add nuw nsw i64 %78, 1
  %83 = icmp eq i64 %82, %65
  br i1 %83, label %73, label %77, !llvm.loop !361

84:                                               ; preds = %106, %15, %63, %73
  tail call void @x264_threads_merge_ratecontrol(ptr noundef nonnull %0) #23
  %85 = load i32, ptr %2, align 4, !tbaa !115
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %164

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 14
  br label %111

92:                                               ; preds = %75, %106
  %93 = phi i64 [ 1, %75 ], [ %107, %106 ]
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !88
  %96 = getelementptr inbounds %struct.x264_t, ptr %95, i64 0, i32 5
  %97 = load i32, ptr %96, align 4, !tbaa !279
  %98 = add nsw i32 %97, 1
  tail call fastcc void @x264_fdec_filter_row(ptr noundef %95, i32 noundef %98, i32 noundef 0) #24
  %99 = load i32, ptr %76, align 4, !tbaa !343
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load ptr, ptr %94, align 8, !tbaa !88
  %103 = getelementptr inbounds %struct.x264_t, ptr %102, i64 0, i32 5
  %104 = load i32, ptr %103, align 4, !tbaa !279
  %105 = add nsw i32 %104, 2
  tail call fastcc void @x264_fdec_filter_row(ptr noundef %102, i32 noundef %105, i32 noundef 0) #24
  br label %106

106:                                              ; preds = %92, %101
  %107 = add nuw nsw i64 %93, 1
  %108 = load i32, ptr %2, align 4, !tbaa !115
  %109 = sext i32 %108 to i64
  %110 = icmp slt i64 %107, %109
  br i1 %110, label %92, label %84, !llvm.loop !362

111:                                              ; preds = %87, %146
  %112 = phi i64 [ 1, %87 ], [ %151, %146 ]
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %112
  %114 = load ptr, ptr %113, align 8, !tbaa !88
  %115 = getelementptr inbounds %struct.x264_t, ptr %114, i64 0, i32 7
  %116 = load i32, ptr %115, align 16, !tbaa !107
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = getelementptr inbounds %struct.x264_t, ptr %114, i64 0, i32 7, i32 2
  br label %122

120:                                              ; preds = %122, %111
  %121 = getelementptr inbounds %struct.x264_t, ptr %114, i64 0, i32 57
  br label %137

122:                                              ; preds = %118, %122
  %123 = phi i64 [ 0, %118 ], [ %133, %122 ]
  %124 = load ptr, ptr %89, align 8, !tbaa !126
  %125 = load i32, ptr %88, align 16, !tbaa !107
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.x264_nal_t, ptr %124, i64 %126
  %128 = load ptr, ptr %119, align 8, !tbaa !126
  %129 = getelementptr inbounds %struct.x264_nal_t, ptr %128, i64 %123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %127, ptr noundef nonnull align 8 dereferenceable(24) %129, i64 24, i1 false), !tbaa.struct !293
  %130 = load i32, ptr %88, align 16, !tbaa !107
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr %88, align 16, !tbaa !107
  %132 = tail call fastcc i32 @x264_nal_check_buffer(ptr noundef nonnull %0) #24, !range !16
  %133 = add nuw nsw i64 %123, 1
  %134 = load i32, ptr %115, align 16, !tbaa !107
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %133, %135
  br i1 %136, label %122, label %120, !llvm.loop !363

137:                                              ; preds = %120, %137
  %138 = phi i64 [ 0, %120 ], [ %144, %137 ]
  %139 = getelementptr inbounds i32, ptr %121, i64 %138
  %140 = load i32, ptr %139, align 4, !tbaa !94
  %141 = getelementptr inbounds i32, ptr %90, i64 %138
  %142 = load i32, ptr %141, align 4, !tbaa !94
  %143 = add nsw i32 %142, %140
  store i32 %143, ptr %141, align 4, !tbaa !94
  %144 = add nuw nsw i64 %138, 1
  %145 = icmp eq i64 %144, 168
  br i1 %145, label %155, label %137, !llvm.loop !364

146:                                              ; preds = %155
  %147 = getelementptr inbounds %struct.x264_t, ptr %114, i64 0, i32 57, i32 0, i32 14
  %148 = load double, ptr %147, align 8, !tbaa !318
  %149 = load double, ptr %91, align 8, !tbaa !318
  %150 = fadd double %148, %149
  store double %150, ptr %91, align 8, !tbaa !318
  %151 = add nuw nsw i64 %112, 1
  %152 = load i32, ptr %2, align 4, !tbaa !115
  %153 = sext i32 %152 to i64
  %154 = icmp slt i64 %151, %153
  br i1 %154, label %111, label %164, !llvm.loop !365

155:                                              ; preds = %137, %155
  %156 = phi i64 [ %162, %155 ], [ 0, %137 ]
  %157 = getelementptr inbounds %struct.x264_t, ptr %114, i64 0, i32 57, i32 0, i32 13, i64 %156
  %158 = load i64, ptr %157, align 8, !tbaa !122
  %159 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 %156
  %160 = load i64, ptr %159, align 8, !tbaa !122
  %161 = add nsw i64 %160, %158
  store i64 %161, ptr %159, align 8, !tbaa !122
  %162 = add nuw nsw i64 %156, 1
  %163 = icmp eq i64 %162, 3
  br i1 %163, label %146, label %155, !llvm.loop !366

164:                                              ; preds = %146, %84
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @x264_slices_write(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !358
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(704) %4, i8 0, i64 704, i1 false)
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 63
  store i32 0, ptr %5, align 16, !tbaa !367
  %6 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !357
  %8 = icmp sgt i32 %7, %3
  br i1 %8, label %55, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 57
  %11 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 58
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %15 = add i32 %7, -1
  br label %16

16:                                               ; preds = %9, %51
  %17 = phi i32 [ %15, %9 ], [ %52, %51 ]
  %18 = phi i32 [ 0, %9 ], [ %47, %51 ]
  %19 = load i32, ptr %10, align 16, !tbaa !158
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = add i32 %17, %19
  br label %45

23:                                               ; preds = %16
  %24 = load i32, ptr %11, align 4, !tbaa !117
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr %12, align 8, !tbaa !118
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load ptr, ptr %13, align 16, !tbaa !49
  %31 = getelementptr inbounds %struct.x264_sps_t, ptr %30, i64 0, i32 17
  %32 = load i32, ptr %31, align 4, !tbaa !60
  %33 = load i32, ptr %14, align 8, !tbaa !97
  %34 = ashr i32 %32, %33
  %35 = getelementptr inbounds %struct.x264_sps_t, ptr %30, i64 0, i32 16
  %36 = load i32, ptr %35, align 4, !tbaa !55
  %37 = shl i32 %36, %33
  %38 = add nsw i32 %18, 1
  %39 = mul nsw i32 %34, %38
  %40 = sdiv i32 %24, 2
  %41 = add nsw i32 %39, %40
  %42 = sdiv i32 %41, %24
  %43 = mul nsw i32 %42, %37
  %44 = add nsw i32 %43, -1
  br label %45

45:                                               ; preds = %23, %26, %29, %21
  %46 = phi i32 [ %22, %21 ], [ %3, %26 ], [ %44, %29 ], [ %3, %23 ]
  %47 = phi i32 [ %18, %21 ], [ %18, %26 ], [ %38, %29 ], [ %18, %23 ]
  %48 = tail call i32 @llvm.smin.i32(i32 %46, i32 %3)
  store i32 %48, ptr %2, align 8, !tbaa !358
  %49 = tail call fastcc i32 @x264_slice_write(ptr noundef nonnull %0) #24
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, ptr %2, align 8, !tbaa !358
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %6, align 4, !tbaa !357
  %54 = icmp slt i32 %52, %3
  br i1 %54, label %16, label %55, !llvm.loop !368

55:                                               ; preds = %45, %51, %1
  %56 = phi ptr [ null, %1 ], [ null, %51 ], [ inttoptr (i64 -1 to ptr), %45 ]
  ret ptr %56
}

; Function Attrs: optsize
declare void @x264_frame_push_unused(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_push(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i32 @x264_hrd_fullness(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_sei_buffering_period_write(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: optsize
declare i32 @x264_ratecontrol_end(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_filler_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_noise_reduction_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @x264_thread_sync_stat(ptr noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #11 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %6 = getelementptr inbounds %struct.x264_t, ptr %1, i64 0, i32 57, i32 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2984) %5, ptr noundef nonnull align 8 dereferenceable(2984) %6, i64 2984, i1 false)
  br label %7

7:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable
define internal fastcc float @x264_psnr(i64 noundef %0, i64 noundef %1) unnamed_addr #15 {
  %3 = sitofp i64 %0 to double
  %4 = sitofp i64 %1 to double
  %5 = fmul double %4, 6.502500e+04
  %6 = fdiv double %3, %5
  %7 = fcmp ugt double %6, 1.000000e-10
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = tail call double @log10(double noundef %6) #23
  %10 = fmul double %9, -1.000000e+01
  %11 = fptrunc double %10 to float
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi float [ %11, %8 ], [ 1.000000e+02, %2 ]
  ret float %13
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @x264_frame_push_blank_unused(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @x264_frame_dump_to_file(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #22
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %4 = load ptr, ptr %3, align 16, !tbaa !124
  %5 = getelementptr inbounds %struct.x264_frame, ptr %4, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !242
  %7 = load i32, ptr @seek_val, align 4, !tbaa !94
  %8 = add nsw i32 %7, %6
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.53, i32 noundef %8) #23
  %10 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.54) #24
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 16, !tbaa !124
  %14 = getelementptr inbounds %struct.x264_frame, ptr %13, i64 0, i32 23
  %15 = load i32, ptr %14, align 4, !tbaa !298
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %20 = load i32, ptr %18, align 8, !tbaa !109
  br label %21

21:                                               ; preds = %17, %33
  %22 = phi ptr [ %13, %17 ], [ %34, %33 ]
  %23 = phi i32 [ %20, %17 ], [ %35, %33 ]
  %24 = phi i64 [ 0, %17 ], [ %36, %33 ]
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = ashr i32 %23, %26
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %41, label %33

29:                                               ; preds = %33, %12
  %30 = tail call i32 @fclose(ptr noundef nonnull %10) #24
  br label %59

31:                                               ; preds = %41
  %32 = load ptr, ptr %3, align 16, !tbaa !124
  br label %33

33:                                               ; preds = %31, %21
  %34 = phi ptr [ %32, %31 ], [ %22, %21 ]
  %35 = phi i32 [ %56, %31 ], [ %23, %21 ]
  %36 = add nuw nsw i64 %24, 1
  %37 = getelementptr inbounds %struct.x264_frame, ptr %34, i64 0, i32 23
  %38 = load i32, ptr %37, align 4, !tbaa !298
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %21, label %29, !llvm.loop !369

41:                                               ; preds = %21, %41
  %42 = phi i32 [ %55, %41 ], [ 0, %21 ]
  %43 = load ptr, ptr %3, align 16, !tbaa !124
  %44 = getelementptr inbounds %struct.x264_frame, ptr %43, i64 0, i32 30, i64 %24
  %45 = load ptr, ptr %44, align 8, !tbaa !88
  %46 = getelementptr inbounds %struct.x264_frame, ptr %43, i64 0, i32 24, i64 %24
  %47 = load i32, ptr %46, align 4, !tbaa !94
  %48 = mul nsw i32 %47, %42
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %45, i64 %49
  %51 = load i32, ptr %19, align 4, !tbaa !108
  %52 = ashr i32 %51, %26
  %53 = sext i32 %52 to i64
  %54 = tail call i64 @fwrite(ptr noundef %50, i64 noundef 1, i64 noundef %53, ptr noundef nonnull %10) #24
  %55 = add nuw nsw i32 %42, 1
  %56 = load i32, ptr %18, align 8, !tbaa !109
  %57 = ashr i32 %56, %26
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %41, label %31, !llvm.loop !370

59:                                               ; preds = %1, %29
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #22
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @x264_frame_dump(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  %3 = load ptr, ptr %2, align 8, !tbaa !133
  %4 = tail call noalias ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.55) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %67, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %8 = load ptr, ptr %7, align 16, !tbaa !124
  %9 = getelementptr inbounds %struct.x264_frame, ptr %8, i64 0, i32 10
  %10 = load i32, ptr %9, align 8, !tbaa !242
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !109
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !108
  %17 = sext i32 %16 to i64
  %18 = mul nsw i64 %11, 3
  %19 = mul i64 %18, %14
  %20 = mul i64 %19, %17
  %21 = lshr i64 %20, 1
  %22 = tail call i32 @fseek(ptr noundef nonnull %4, i64 noundef %21, i32 noundef 0) #24
  %23 = load ptr, ptr %7, align 16, !tbaa !124
  %24 = getelementptr inbounds %struct.x264_frame, ptr %23, i64 0, i32 23
  %25 = load i32, ptr %24, align 4, !tbaa !298
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %6
  %28 = load i32, ptr %12, align 8, !tbaa !109
  br label %29

29:                                               ; preds = %27, %41
  %30 = phi ptr [ %23, %27 ], [ %42, %41 ]
  %31 = phi i32 [ %28, %27 ], [ %43, %41 ]
  %32 = phi i64 [ 0, %27 ], [ %44, %41 ]
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = ashr i32 %31, %34
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %49, label %41

37:                                               ; preds = %41, %6
  %38 = tail call i32 @fclose(ptr noundef nonnull %4) #24
  br label %67

39:                                               ; preds = %49
  %40 = load ptr, ptr %7, align 16, !tbaa !124
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi ptr [ %40, %39 ], [ %30, %29 ]
  %43 = phi i32 [ %64, %39 ], [ %31, %29 ]
  %44 = add nuw nsw i64 %32, 1
  %45 = getelementptr inbounds %struct.x264_frame, ptr %42, i64 0, i32 23
  %46 = load i32, ptr %45, align 4, !tbaa !298
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %29, label %37, !llvm.loop !371

49:                                               ; preds = %29, %49
  %50 = phi i32 [ %63, %49 ], [ 0, %29 ]
  %51 = load ptr, ptr %7, align 16, !tbaa !124
  %52 = getelementptr inbounds %struct.x264_frame, ptr %51, i64 0, i32 30, i64 %32
  %53 = load ptr, ptr %52, align 8, !tbaa !88
  %54 = getelementptr inbounds %struct.x264_frame, ptr %51, i64 0, i32 24, i64 %32
  %55 = load i32, ptr %54, align 4, !tbaa !94
  %56 = mul nsw i32 %55, %50
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %53, i64 %57
  %59 = load i32, ptr %15, align 4, !tbaa !108
  %60 = ashr i32 %59, %34
  %61 = sext i32 %60 to i64
  %62 = tail call i64 @fwrite(ptr noundef %58, i64 noundef 1, i64 noundef %61, ptr noundef nonnull %4) #24
  %63 = add nuw nsw i32 %50, 1
  %64 = load i32, ptr %12, align 8, !tbaa !109
  %65 = ashr i32 %64, %34
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %49, label %39, !llvm.loop !372

67:                                               ; preds = %1, %37
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log10(double noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare ptr @x264_frame_pop(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_ratecontrol_set_weights(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @endian_fix(i64 noundef %0) unnamed_addr #9 {
  %2 = tail call fastcc i64 @endian_fix64(i64 noundef %0) #24
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @endian_fix64(i64 noundef %0) unnamed_addr #9 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = tail call fastcc i32 @endian_fix32(i32 noundef %3) #24
  %5 = zext i32 %4 to i64
  %6 = trunc i64 %0 to i32
  %7 = tail call fastcc i32 @endian_fix32(i32 noundef %6) #24
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or disjoint i64 %9, %5
  ret i64 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write1(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !224
  %5 = shl i64 %4, 1
  %6 = zext i32 %1 to i64
  %7 = or i64 %5, %6
  store i64 %7, ptr %3, align 8, !tbaa !224
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !223
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 8, !tbaa !223
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = trunc i64 %7 to i32
  %14 = tail call fastcc i32 @endian_fix32(i32 noundef %13) #24
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !221
  store i32 %14, ptr %16, align 4, !tbaa !120
  %17 = load ptr, ptr %15, align 8, !tbaa !221
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %18, ptr %15, align 8, !tbaa !221
  store i32 64, ptr %8, align 8, !tbaa !223
  br label %19

19:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: optsize
declare void @x264_weight_scale_plane(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_slice_header_init(ptr nocapture noundef %0, ptr nocapture noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #14 {
  store ptr %2, ptr %1, align 16, !tbaa !373
  %8 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 1
  store ptr %3, ptr %8, align 8, !tbaa !374
  %9 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 3
  store i32 0, ptr %9, align 4, !tbaa !375
  %10 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %11 = load i32, ptr %10, align 16, !tbaa !61
  %12 = add nsw i32 %11, -1
  %13 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 4
  store i32 %12, ptr %13, align 8, !tbaa !376
  %14 = load i32, ptr %3, align 8, !tbaa !377
  %15 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 5
  store i32 %14, ptr %15, align 4, !tbaa !378
  %16 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 6
  store i32 %5, ptr %16, align 16, !tbaa !379
  %17 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %18 = load i32, ptr %17, align 8, !tbaa !97
  %19 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 7
  store i32 %18, ptr %19, align 4, !tbaa !380
  %20 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 8
  store i32 0, ptr %20, align 8, !tbaa !381
  %21 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 9
  store i32 0, ptr %21, align 4, !tbaa !382
  %22 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 10
  store i32 %4, ptr %22, align 16, !tbaa !383
  %23 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 11
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %23, i8 0, i64 20, i1 false)
  %25 = load i32, ptr %24, align 4, !tbaa !203
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %39

27:                                               ; preds = %7
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !45
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %33 = load i32, ptr %32, align 8, !tbaa !71
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 20
  %37 = load i32, ptr %36, align 8, !tbaa !63
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %31, %35, %27, %7
  %40 = phi i1 [ false, %27 ], [ false, %7 ], [ true, %31 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 75
  store i32 %41, ptr %42, align 4, !tbaa !317
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 74
  %44 = load i32, ptr %43, align 8, !tbaa !384
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 2
  %48 = load i32, ptr %47, align 16, !tbaa !385
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %73

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 49
  %52 = load ptr, ptr %51, align 16, !tbaa !88
  %53 = getelementptr inbounds %struct.x264_frame, ptr %52, i64 0, i32 22
  %54 = load i32, ptr %53, align 16, !tbaa !278
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47
  %56 = load ptr, ptr %55, align 16, !tbaa !88
  %57 = load i32, ptr %56, align 16, !tbaa !265
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  br i1 %40, label %60, label %66

60:                                               ; preds = %59
  %61 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17
  %62 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 17, i64 1
  %63 = load i32, ptr %62, align 4, !tbaa !94
  %64 = load i32, ptr %61, align 8, !tbaa !94
  %65 = icmp sgt i32 %63, %64
  br label %69

66:                                               ; preds = %59
  %67 = icmp eq i32 %25, 1
  br label %69

68:                                               ; preds = %50
  store i32 0, ptr %42, align 4, !tbaa !317
  br label %69

69:                                               ; preds = %60, %66, %68
  %70 = phi i1 [ true, %68 ], [ %67, %66 ], [ %65, %60 ]
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 15
  store i32 %71, ptr %72, align 8, !tbaa !386
  br label %73

73:                                               ; preds = %69, %46, %39
  %74 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 16
  store i32 0, ptr %74, align 4, !tbaa !387
  %75 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 17
  store i32 1, ptr %75, align 16, !tbaa !388
  %76 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 18
  store i32 1, ptr %76, align 4, !tbaa !389
  %77 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50
  %78 = load i32, ptr %77, align 8, !tbaa !94
  %79 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 19
  store i32 %78, ptr %79, align 8, !tbaa !390
  %80 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 50, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !94
  %82 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 20
  store i32 %81, ptr %82, align 4, !tbaa !391
  %83 = icmp eq i32 %78, 0
  br i1 %83, label %112, label %84

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 46
  %86 = load i32, ptr %85, align 8, !tbaa !91
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %112

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 21
  %90 = getelementptr inbounds %struct.x264_sps_t, ptr %2, i64 0, i32 6
  %91 = load i32, ptr %90, align 4, !tbaa !392
  %92 = shl nsw i32 -1, %91
  %93 = xor i32 %92, -1
  %94 = zext nneg i32 %86 to i64
  br label %95

95:                                               ; preds = %88, %95
  %96 = phi i64 [ 0, %88 ], [ %110, %95 ]
  %97 = phi i32 [ %5, %88 ], [ %101, %95 ]
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 47, i64 %96
  %99 = load ptr, ptr %98, align 8, !tbaa !88
  %100 = getelementptr inbounds %struct.x264_frame, ptr %99, i64 0, i32 13
  %101 = load i32, ptr %100, align 4, !tbaa !327
  %102 = sub nsw i32 %101, %97
  %103 = icmp sgt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = getelementptr inbounds [16 x %struct.anon.6], ptr %89, i64 0, i64 %96
  store i32 %104, ptr %105, align 8, !tbaa !328
  %106 = tail call i32 @llvm.abs.i32(i32 %102, i1 true)
  %107 = add nuw i32 %106, 2147483647
  %108 = and i32 %107, %93
  %109 = getelementptr inbounds [16 x %struct.anon.6], ptr %89, i64 0, i64 %96, i32 1
  store i32 %108, ptr %109, align 4, !tbaa !288
  %110 = add nuw nsw i64 %96, 1
  %111 = icmp eq i64 %110, %94
  br i1 %111, label %112, label %95, !llvm.loop !393

112:                                              ; preds = %95, %84, %73
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 25
  %114 = load i32, ptr %113, align 4, !tbaa !394
  %115 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 26
  store i32 %114, ptr %115, align 8, !tbaa !395
  %116 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 27
  store i32 %6, ptr %116, align 4, !tbaa !396
  %117 = getelementptr inbounds %struct.x264_pps_t, ptr %3, i64 0, i32 9
  %118 = load i32, ptr %117, align 4, !tbaa !397
  %119 = sub nsw i32 %6, %118
  %120 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 28
  store i32 %119, ptr %120, align 16, !tbaa !398
  %121 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 29
  store i32 0, ptr %121, align 4, !tbaa !399
  %122 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 30
  store i32 0, ptr %122, align 8, !tbaa !400
  %123 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 22
  %124 = load i32, ptr %123, align 8, !tbaa !401
  %125 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 23
  %126 = load i32, ptr %125, align 4, !tbaa !200
  %127 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 21
  %128 = load i32, ptr %127, align 4, !tbaa !402
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %144, label %130

130:                                              ; preds = %112
  %131 = tail call i32 @llvm.smin.i32(i32 %124, i32 %126)
  %132 = shl nsw i32 %131, 1
  %133 = add nsw i32 %132, %6
  %134 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 72
  %135 = load i32, ptr %134, align 16, !tbaa !403
  %136 = icmp ne i32 %135, 0
  %137 = icmp sgt i32 %133, 15
  %138 = select i1 %136, i1 true, i1 %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %141 = load i32, ptr %140, align 8, !tbaa !404
  %142 = icmp eq i32 %141, 0
  %143 = select i1 %142, i32 0, i32 2
  br label %144

144:                                              ; preds = %112, %130, %139
  %145 = phi i32 [ %143, %139 ], [ 1, %130 ], [ 1, %112 ]
  %146 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 31
  store i32 %145, ptr %146, align 4, !tbaa !405
  %147 = shl i32 %124, 1
  %148 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 32
  store i32 %147, ptr %148, align 16, !tbaa !406
  %149 = shl i32 %126, 1
  %150 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 33
  store i32 %149, ptr %150, align 4, !tbaa !407
  ret void
}

; Function Attrs: optsize
declare void @x264_macroblock_slice_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: optsize
declare void @x264_analyse_weight_frame(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_threads_distribute_ratecontrol(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @x264_fdec_filter_row(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %5 = load ptr, ptr %4, align 16, !tbaa !124
  %6 = getelementptr inbounds %struct.x264_frame, ptr %5, i64 0, i32 14
  %7 = load i32, ptr %6, align 8, !tbaa !266
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %9 = load i32, ptr %8, align 4, !tbaa !408
  %10 = icmp ne i32 %9, 1
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !280
  %13 = icmp ne i32 %12, %1
  %14 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %15 = load i32, ptr %14, align 4, !tbaa !343
  %16 = shl nsw i32 -1, %15
  %17 = add i32 %16, %1
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %19 = load i32, ptr %18, align 4, !tbaa !279
  %20 = icmp ne i32 %17, %19
  %21 = icmp eq i32 %7, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  %24 = load ptr, ptr %23, align 8, !tbaa !133
  %25 = icmp ne ptr %24, null
  br label %26

26:                                               ; preds = %22, %3
  %27 = phi i1 [ true, %3 ], [ %25, %22 ]
  %28 = and i1 %10, %27
  %29 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !118
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
  br i1 %41, label %217, label %42

42:                                               ; preds = %26
  %43 = and i1 %35, %13
  %44 = icmp sgt i32 %15, -1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %84

46:                                               ; preds = %42
  %47 = shl nsw i32 %1, 4
  %48 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  br label %49

49:                                               ; preds = %46, %52
  %50 = phi i64 [ 0, %46 ], [ %53, %52 ]
  %51 = trunc i64 %50 to i32
  br label %57

52:                                               ; preds = %57
  %53 = add nuw nsw i64 %50, 1
  %54 = load i32, ptr %14, align 4, !tbaa !343
  %55 = sext i32 %54 to i64
  %56 = icmp slt i64 %50, %55
  br i1 %56, label %49, label %84, !llvm.loop !409

57:                                               ; preds = %49, %57
  %58 = phi i64 [ 0, %49 ], [ %82, %57 ]
  %59 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 62, i64 %50, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !88
  %61 = load ptr, ptr %4, align 16, !tbaa !124
  %62 = getelementptr inbounds %struct.x264_frame, ptr %61, i64 0, i32 30, i64 %58
  %63 = load ptr, ptr %62, align 8, !tbaa !88
  %64 = icmp ne i64 %58, 0
  %65 = zext i1 %64 to i32
  %66 = ashr exact i32 %47, %65
  %67 = add nsw i32 %66, %51
  %68 = load i32, ptr %14, align 4, !tbaa !343
  %69 = xor i32 %68, -1
  %70 = add i32 %67, %69
  %71 = getelementptr inbounds %struct.x264_frame, ptr %61, i64 0, i32 24, i64 %58
  %72 = load i32, ptr %71, align 4, !tbaa !94
  %73 = mul nsw i32 %70, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, ptr %63, i64 %74
  %76 = load ptr, ptr %48, align 16, !tbaa !49
  %77 = getelementptr inbounds %struct.x264_sps_t, ptr %76, i64 0, i32 16
  %78 = load i32, ptr %77, align 4, !tbaa !55
  %79 = shl nsw i32 %78, 4
  %80 = ashr exact i32 %79, %65
  %81 = sext i32 %80 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 %75, i64 %81, i1 false)
  %82 = add nuw nsw i64 %58, 1
  %83 = icmp eq i64 %82, 3
  br i1 %83, label %52, label %57, !llvm.loop !410

84:                                               ; preds = %52, %42
  %85 = icmp slt i32 %17, %1
  %86 = select i1 %37, i1 %85, i1 false
  br i1 %86, label %87, label %93

87:                                               ; preds = %84, %87
  %88 = phi i32 [ %91, %87 ], [ %17, %84 ]
  tail call void @x264_frame_deblock_row(ptr noundef nonnull %0, i32 noundef %88) #23
  %89 = load i32, ptr %14, align 4, !tbaa !343
  %90 = shl nuw i32 1, %89
  %91 = add nsw i32 %90, %88
  %92 = icmp slt i32 %91, %1
  br i1 %92, label %87, label %93, !llvm.loop !411

93:                                               ; preds = %87, %84
  br i1 %21, label %108, label %94

94:                                               ; preds = %93
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %96 = load ptr, ptr %95, align 16, !tbaa !49
  %97 = getelementptr inbounds %struct.x264_sps_t, ptr %96, i64 0, i32 17
  %98 = load i32, ptr %97, align 4, !tbaa !60
  %99 = icmp eq i32 %98, %1
  %100 = zext i1 %99 to i32
  %101 = load ptr, ptr %4, align 16, !tbaa !124
  tail call void @x264_frame_expand_border(ptr noundef nonnull %0, ptr noundef %101, i32 noundef %17, i32 noundef %100) #23
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 11
  %103 = load i32, ptr %102, align 4, !tbaa !141
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %94
  %106 = load ptr, ptr %4, align 16, !tbaa !124
  tail call void @x264_frame_filter(ptr noundef nonnull %0, ptr noundef %106, i32 noundef %17, i32 noundef %100) #23
  %107 = load ptr, ptr %4, align 16, !tbaa !124
  tail call void @x264_frame_expand_border_filtered(ptr noundef nonnull %0, ptr noundef %107, i32 noundef %17, i32 noundef %100) #23
  br label %108

108:                                              ; preds = %94, %105, %93
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %110 = load i32, ptr %109, align 4, !tbaa !67
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load ptr, ptr %4, align 16, !tbaa !124
  %114 = getelementptr inbounds %struct.x264_frame, ptr %113, i64 0, i32 14
  %115 = load i32, ptr %114, align 8, !tbaa !266
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %112
  %118 = shl nsw i32 %1, 4
  br i1 %13, label %119, label %122

119:                                              ; preds = %117
  %120 = load i32, ptr %14, align 4, !tbaa !343
  %121 = shl i32 -24, %120
  br label %122

122:                                              ; preds = %117, %119
  %123 = phi i32 [ %121, %119 ], [ 10000, %117 ]
  %124 = add nsw i32 %123, %118
  tail call void @x264_frame_cond_broadcast(ptr noundef nonnull %113, i32 noundef %124) #23
  br label %125

125:                                              ; preds = %122, %112, %108
  %126 = shl nsw i32 %17, 4
  %127 = select i1 %20, i32 -8, i32 0
  %128 = add i32 %127, %126
  br i1 %13, label %135, label %129

129:                                              ; preds = %125
  %130 = load i32, ptr %11, align 8, !tbaa !280
  %131 = shl nsw i32 %130, 4
  %132 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %133 = load i32, ptr %132, align 8, !tbaa !109
  %134 = tail call i32 @llvm.smin.i32(i32 %131, i32 %133)
  br label %138

135:                                              ; preds = %125
  %136 = shl nsw i32 %1, 4
  %137 = add nsw i32 %136, -8
  br label %138

138:                                              ; preds = %129, %135
  %139 = phi i32 [ %137, %135 ], [ %134, %129 ]
  br i1 %36, label %140, label %217

140:                                              ; preds = %138
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  %142 = load i32, ptr %141, align 4, !tbaa !146
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %179, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %146 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %148 = sub nsw i32 %139, %128
  br label %149

149:                                              ; preds = %144, %149
  %150 = phi i64 [ 0, %144 ], [ %177, %149 ]
  %151 = load ptr, ptr %4, align 16, !tbaa !124
  %152 = getelementptr inbounds %struct.x264_frame, ptr %151, i64 0, i32 30, i64 %150
  %153 = load ptr, ptr %152, align 8, !tbaa !88
  %154 = icmp ne i64 %150, 0
  %155 = zext i1 %154 to i32
  %156 = ashr exact i32 %128, %155
  %157 = getelementptr inbounds %struct.x264_frame, ptr %151, i64 0, i32 24, i64 %150
  %158 = load i32, ptr %157, align 4, !tbaa !94
  %159 = mul nsw i32 %158, %156
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, ptr %153, i64 %160
  %162 = load ptr, ptr %146, align 8, !tbaa !239
  %163 = getelementptr inbounds %struct.x264_frame, ptr %162, i64 0, i32 30, i64 %150
  %164 = load ptr, ptr %163, align 8, !tbaa !88
  %165 = getelementptr inbounds %struct.x264_frame, ptr %162, i64 0, i32 24, i64 %150
  %166 = load i32, ptr %165, align 4, !tbaa !94
  %167 = mul nsw i32 %166, %156
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, ptr %164, i64 %168
  %170 = load i32, ptr %147, align 4, !tbaa !108
  %171 = ashr i32 %170, %155
  %172 = ashr i32 %148, %155
  %173 = tail call i64 @x264_pixel_ssd_wxh(ptr noundef nonnull %145, ptr noundef %161, i32 noundef %158, ptr noundef %169, i32 noundef %166, i32 noundef %171, i32 noundef %172) #23
  %174 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 13, i64 %150
  %175 = load i64, ptr %174, align 8, !tbaa !122
  %176 = add nsw i64 %175, %173
  store i64 %176, ptr %174, align 8, !tbaa !122
  %177 = add nuw nsw i64 %150, 1
  %178 = icmp eq i64 %177, 3
  br i1 %178, label %179, label %149, !llvm.loop !412

179:                                              ; preds = %149, %140
  %180 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %181 = load i32, ptr %180, align 16, !tbaa !147
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %217, label %183

183:                                              ; preds = %179
  %184 = select i1 %20, i32 -6, i32 2
  %185 = add nsw i32 %128, %184
  %186 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 69
  %187 = load ptr, ptr %4, align 16, !tbaa !124
  %188 = getelementptr inbounds %struct.x264_frame, ptr %187, i64 0, i32 30
  %189 = load ptr, ptr %188, align 8, !tbaa !88
  %190 = getelementptr inbounds i8, ptr %189, i64 2
  %191 = getelementptr inbounds %struct.x264_frame, ptr %187, i64 0, i32 24
  %192 = load i32, ptr %191, align 8, !tbaa !94
  %193 = mul nsw i32 %192, %185
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, ptr %190, i64 %194
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %197 = load ptr, ptr %196, align 8, !tbaa !239
  %198 = getelementptr inbounds %struct.x264_frame, ptr %197, i64 0, i32 30
  %199 = load ptr, ptr %198, align 8, !tbaa !88
  %200 = getelementptr inbounds i8, ptr %199, i64 2
  %201 = getelementptr inbounds %struct.x264_frame, ptr %197, i64 0, i32 24
  %202 = load i32, ptr %201, align 8, !tbaa !94
  %203 = mul nsw i32 %202, %185
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, ptr %200, i64 %204
  %206 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %207 = load i32, ptr %206, align 4, !tbaa !108
  %208 = add nsw i32 %207, -2
  %209 = sub nsw i32 %139, %185
  %210 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 61
  %211 = load ptr, ptr %210, align 8, !tbaa !413
  %212 = tail call float @x264_pixel_ssim_wxh(ptr noundef nonnull %186, ptr noundef nonnull %195, i32 noundef %192, ptr noundef nonnull %205, i32 noundef %202, i32 noundef %208, i32 noundef %209, ptr noundef %211) #23
  %213 = fpext float %212 to double
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 14
  %215 = load double, ptr %214, align 8, !tbaa !318
  %216 = fadd double %215, %213
  store double %216, ptr %214, align 8, !tbaa !318
  br label %217

217:                                              ; preds = %138, %183, %179, %26
  ret void
}

; Function Attrs: optsize
declare void @x264_threads_merge_ratecontrol(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_deblock_row(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_expand_border(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_filter(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_expand_border_filtered(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_cond_broadcast(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare i64 @x264_pixel_ssd_wxh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare float @x264_pixel_ssim_wxh(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_slice_write(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.bs_s, align 8
  %3 = alloca %struct.x264_cabac_t, align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2)
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3)
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 45
  %5 = load i32, ptr %4, align 16, !tbaa !187
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %9 = load i32, ptr %8, align 16, !tbaa !107
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, i32 -8, i32 -7
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i32 [ -8, %1 ], [ %11, %7 ]
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 56
  %15 = load i32, ptr %14, align 4, !tbaa !157
  %16 = icmp sgt i32 %15, 0
  %17 = add nsw i32 %15, %13
  %18 = shl nsw i32 %17, 3
  %19 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %21 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %20) #24
  %22 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41
  %23 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 31
  %24 = load i32, ptr %23, align 4, !tbaa !408
  %25 = icmp eq i32 %24, 1
  %26 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 45
  %27 = load ptr, ptr %26, align 16, !tbaa !124
  %28 = getelementptr inbounds %struct.x264_frame, ptr %27, i64 0, i32 14
  %29 = load i32, ptr %28, align 8, !tbaa !266
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %12
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 40
  %33 = load ptr, ptr %32, align 8, !tbaa !133
  %34 = icmp eq ptr %33, null
  br label %35

35:                                               ; preds = %31, %12
  %36 = phi i1 [ false, %12 ], [ %34, %31 ]
  tail call fastcc void @bs_realign(ptr noundef nonnull %20) #24
  %37 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 13
  %38 = load i32, ptr %37, align 16, !tbaa !269
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 14
  %40 = load i32, ptr %39, align 4, !tbaa !270
  tail call fastcc void @x264_nal_start(ptr noundef nonnull %0, i32 noundef %38, i32 noundef %40) #24
  tail call void @x264_macroblock_thread_init(ptr noundef nonnull %0) #23
  %41 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !357
  %43 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !279
  %45 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %46 = load ptr, ptr %45, align 16, !tbaa !49
  %47 = getelementptr inbounds %struct.x264_sps_t, ptr %46, i64 0, i32 16
  %48 = load i32, ptr %47, align 4, !tbaa !55
  %49 = mul nsw i32 %48, %44
  %50 = icmp eq i32 %42, %49
  br i1 %50, label %61, label %51

51:                                               ; preds = %35
  %52 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  %53 = load i32, ptr %52, align 8, !tbaa !414
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 27
  store i32 %53, ptr %54, align 4, !tbaa !415
  %55 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %56 = load ptr, ptr %55, align 16, !tbaa !51
  %57 = getelementptr inbounds %struct.x264_pps_t, ptr %56, i64 0, i32 9
  %58 = load i32, ptr %57, align 4, !tbaa !397
  %59 = sub nsw i32 %53, %58
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 28
  store i32 %59, ptr %60, align 16, !tbaa !416
  br label %61

61:                                               ; preds = %51, %35
  %62 = load i32, ptr %39, align 4, !tbaa !270
  tail call fastcc void @x264_slice_header_write(ptr noundef nonnull %20, ptr noundef nonnull %22, i32 noundef %62) #24
  %63 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %64 = load i32, ptr %63, align 16, !tbaa !96
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %61
  tail call fastcc void @bs_align_1(ptr noundef nonnull %20) #24
  %67 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %69 = load i32, ptr %68, align 16, !tbaa !264
  %70 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 27
  %71 = load i32, ptr %70, align 4, !tbaa !415
  %72 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 26
  %73 = load i32, ptr %72, align 8, !tbaa !417
  tail call void @x264_cabac_context_init(ptr noundef nonnull %67, i32 noundef %69, i32 noundef %71, i32 noundef %73) #23
  %74 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !418
  %76 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 2
  %77 = load ptr, ptr %76, align 16, !tbaa !419
  tail call void @x264_cabac_encode_init(ptr noundef nonnull %67, ptr noundef %75, ptr noundef %77) #23
  br label %78

78:                                               ; preds = %66, %61
  %79 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 27
  %80 = load i32, ptr %79, align 4, !tbaa !415
  %81 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 70
  store i32 %80, ptr %81, align 8, !tbaa !414
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 71
  store i32 0, ptr %82, align 4, !tbaa !420
  %83 = load i32, ptr %41, align 4, !tbaa !357
  %84 = load ptr, ptr %45, align 16, !tbaa !49
  %85 = getelementptr inbounds %struct.x264_sps_t, ptr %84, i64 0, i32 16
  %86 = load i32, ptr %85, align 4, !tbaa !55
  %87 = sdiv i32 %83, %86
  %88 = srem i32 %83, %86
  %89 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 4
  %90 = mul nsw i32 %86, %87
  %91 = add nsw i32 %90, %88
  %92 = load i32, ptr %89, align 8, !tbaa !358
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %418, label %94

94:                                               ; preds = %78
  %95 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42
  %96 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 5
  %97 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 63
  %98 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 7
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 53
  %100 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 41, i32 2
  %101 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 38
  %102 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 18
  %103 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 54
  %104 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 12
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 57
  %106 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 58
  %107 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 7
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 56
  %109 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 7, i64 1
  %110 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 11
  %112 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 59
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 60
  %114 = select i1 %25, i1 true, i1 %36
  %115 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 5
  %116 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 4
  %117 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 38
  %118 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 6
  %119 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 74, i32 4
  %120 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 2
  %121 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 4
  br label %123

123:                                              ; preds = %94, %402
  %124 = phi i32 [ %91, %94 ], [ %411, %402 ]
  %125 = phi i32 [ 0, %94 ], [ %185, %402 ]
  %126 = phi i32 [ %88, %94 ], [ %409, %402 ]
  %127 = phi i32 [ %87, %94 ], [ %408, %402 ]
  %128 = phi i32 [ 0, %94 ], [ %144, %402 ]
  %129 = phi i8 [ 0, %94 ], [ %143, %402 ]
  %130 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %20) #24
  %131 = tail call fastcc i32 @x264_cabac_pos(ptr noundef nonnull %95) #24
  %132 = load i32, ptr %14, align 4, !tbaa !157
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %123
  %135 = load i32, ptr %63, align 16, !tbaa !96
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %3, ptr noundef nonnull align 16 dereferenceable(48) %95, i64 48, i1 false)
  %138 = load ptr, ptr %96, align 8, !tbaa !421
  %139 = getelementptr inbounds i8, ptr %138, i64 -1
  %140 = load i8, ptr %139, align 1, !tbaa !120
  br label %142

141:                                              ; preds = %134
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull align 16 dereferenceable(40) %20, i64 40, i1 false), !tbaa.struct !422
  br label %142

142:                                              ; preds = %137, %141, %123
  %143 = phi i8 [ %140, %137 ], [ %129, %141 ], [ %129, %123 ]
  %144 = phi i32 [ %128, %137 ], [ %125, %141 ], [ %128, %123 ]
  %145 = icmp eq i32 %126, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i32, ptr %97, align 16, !tbaa !367
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call fastcc void @x264_fdec_filter_row(ptr noundef nonnull %0, i32 noundef %127, i32 noundef 1) #24
  br label %150

150:                                              ; preds = %149, %146, %142
  tail call void @x264_macroblock_cache_load(ptr noundef nonnull %0, i32 noundef %126, i32 noundef %127) #23
  tail call void @x264_macroblock_analyse(ptr noundef nonnull %0) #23
  tail call void @x264_macroblock_encode(ptr noundef nonnull %0) #23
  %151 = tail call fastcc i32 @x264_bitstream_check_buffer(ptr noundef nonnull %0) #24, !range !16
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %455

153:                                              ; preds = %150
  %154 = load i32, ptr %63, align 16, !tbaa !96
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %174, label %156

156:                                              ; preds = %153
  %157 = load i32, ptr %41, align 4, !tbaa !357
  %158 = icmp sgt i32 %124, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %156
  %160 = load i32, ptr %98, align 4, !tbaa !343
  %161 = icmp eq i32 %160, 0
  %162 = and i32 %127, 1
  %163 = icmp eq i32 %162, 0
  %164 = or i1 %163, %161
  br i1 %164, label %165, label %166

165:                                              ; preds = %159
  tail call void @x264_cabac_encode_terminal_c(ptr noundef nonnull %95) #23
  br label %166

166:                                              ; preds = %159, %165, %156
  %167 = load i32, ptr %99, align 8, !tbaa !423
  switch i32 %167, label %169 [
    i32 6, label %168
    i32 18, label %168
  ]

168:                                              ; preds = %166, %166
  tail call void @x264_cabac_mb_skip(ptr noundef nonnull %0, i32 noundef 1) #23
  br label %184

169:                                              ; preds = %166
  %170 = load i32, ptr %100, align 16, !tbaa !264
  %171 = icmp eq i32 %170, 2
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  tail call void @x264_cabac_mb_skip(ptr noundef nonnull %0, i32 noundef 0) #23
  br label %173

173:                                              ; preds = %172, %169
  tail call void @x264_macroblock_write_cabac(ptr noundef nonnull %0, ptr noundef nonnull %95) #23
  br label %184

174:                                              ; preds = %153
  %175 = load i32, ptr %99, align 8, !tbaa !423
  switch i32 %175, label %178 [
    i32 6, label %176
    i32 18, label %176
  ]

176:                                              ; preds = %174, %174
  %177 = add nsw i32 %125, 1
  br label %184

178:                                              ; preds = %174
  %179 = load i32, ptr %100, align 16, !tbaa !264
  %180 = icmp eq i32 %179, 2
  br i1 %180, label %182, label %181

181:                                              ; preds = %178
  tail call fastcc void @bs_write_ue_big(ptr noundef nonnull %20, i32 noundef %125) #24
  br label %182

182:                                              ; preds = %181, %178
  %183 = phi i32 [ 0, %181 ], [ %125, %178 ]
  tail call void @x264_macroblock_write_cavlc(ptr noundef nonnull %0) #23
  br label %184

184:                                              ; preds = %176, %182, %168, %173
  %185 = phi i32 [ %125, %168 ], [ %125, %173 ], [ %177, %176 ], [ %183, %182 ]
  %186 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %20) #24
  %187 = tail call fastcc i32 @x264_cabac_pos(ptr noundef nonnull %95) #24
  %188 = add nsw i32 %187, %186
  %189 = add i32 %131, %130
  %190 = sub i32 %188, %189
  %191 = sub nsw i32 %188, %21
  %192 = icmp slt i32 %18, %191
  %193 = select i1 %16, i1 %192, i1 false
  br i1 %193, label %194, label %211

194:                                              ; preds = %184
  %195 = load i32, ptr %97, align 16, !tbaa !367
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %211

197:                                              ; preds = %194
  %198 = load i32, ptr %41, align 4, !tbaa !357
  %199 = icmp eq i32 %124, %198
  br i1 %199, label %210, label %200

200:                                              ; preds = %197
  %201 = load i32, ptr %63, align 16, !tbaa !96
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %95, ptr noundef nonnull align 16 dereferenceable(48) %3, i64 48, i1 false)
  %204 = load ptr, ptr %96, align 8, !tbaa !421
  %205 = getelementptr inbounds i8, ptr %204, i64 -1
  store i8 %143, ptr %205, align 1, !tbaa !120
  br label %207

206:                                              ; preds = %200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %20, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false), !tbaa.struct !422
  br label %207

207:                                              ; preds = %203, %206
  %208 = phi i32 [ %185, %203 ], [ %144, %206 ]
  store i32 1, ptr %97, align 16, !tbaa !367
  %209 = add nsw i32 %124, -1
  store i32 %209, ptr %89, align 8, !tbaa !358
  br label %414

210:                                              ; preds = %197
  store i32 %124, ptr %89, align 8, !tbaa !358
  br label %211

211:                                              ; preds = %184, %194, %210
  store i32 0, ptr %97, align 16, !tbaa !367
  tail call void @x264_macroblock_cache_save(ptr noundef nonnull %0) #23
  %212 = load i32, ptr %99, align 8, !tbaa !423
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 3, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !94
  %216 = add nsw i32 %215, 1
  store i32 %216, ptr %214, align 4, !tbaa !94
  %217 = load i32, ptr %99, align 8, !tbaa !423
  %218 = icmp ult i32 %217, 4
  %219 = load i32, ptr %101, align 16, !tbaa !183
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %225, label %221

221:                                              ; preds = %211
  %222 = load i32, ptr %102, align 8, !tbaa !71
  %223 = icmp eq i32 %222, 0
  %224 = or i1 %218, %223
  br i1 %224, label %273, label %226

225:                                              ; preds = %211
  br i1 %218, label %276, label %226

226:                                              ; preds = %221, %225
  switch i32 %217, label %227 [
    i32 6, label %273
    i32 18, label %273
    i32 7, label %273
  ]

227:                                              ; preds = %226
  %228 = load i32, ptr %103, align 4, !tbaa !424
  %229 = icmp eq i32 %228, 13
  br i1 %229, label %235, label %230

230:                                              ; preds = %227
  %231 = sext i32 %228 to i64
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 9, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !94
  %234 = add nsw i32 %233, 4
  store i32 %234, ptr %232, align 4, !tbaa !94
  br label %245

235:                                              ; preds = %227, %235
  %236 = phi i64 [ %243, %235 ], [ 0, %227 ]
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 55, i64 %236
  %238 = load i8, ptr %237, align 1, !tbaa !120
  %239 = zext i8 %238 to i64
  %240 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 9, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !94
  %242 = add nsw i32 %241, 1
  store i32 %242, ptr %240, align 4, !tbaa !94
  %243 = add nuw nsw i64 %236, 1
  %244 = icmp eq i64 %243, 4
  br i1 %244, label %245, label %235, !llvm.loop !425

245:                                              ; preds = %235, %230
  %246 = load i32, ptr %104, align 16, !tbaa !74
  %247 = icmp sgt i32 %246, 1
  br i1 %247, label %248, label %273

248:                                              ; preds = %245
  %249 = load i32, ptr %100, align 16, !tbaa !264
  %250 = icmp eq i32 %249, 1
  br label %251

251:                                              ; preds = %248, %254
  %252 = phi i1 [ true, %248 ], [ false, %254 ]
  %253 = phi i64 [ 0, %248 ], [ 1, %254 ]
  br label %256

254:                                              ; preds = %270
  %255 = and i1 %252, %250
  br i1 %255, label %251, label %273, !llvm.loop !426

256:                                              ; preds = %251, %270
  %257 = phi i64 [ 0, %251 ], [ %271, %270 ]
  %258 = shl nuw nsw i64 %257, 2
  %259 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %258
  %260 = load i32, ptr %259, align 16, !tbaa !94
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55, i32 67, i32 3, i64 %253, i64 %261
  %263 = load i8, ptr %262, align 1, !tbaa !120
  %264 = icmp sgt i8 %263, -1
  br i1 %264, label %265, label %270

265:                                              ; preds = %256
  %266 = zext nneg i8 %263 to i64
  %267 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 8, i64 %253, i64 %266
  %268 = load i32, ptr %267, align 4, !tbaa !94
  %269 = add nsw i32 %268, 1
  store i32 %269, ptr %267, align 4, !tbaa !94
  br label %270

270:                                              ; preds = %265, %256
  %271 = add nuw nsw i64 %257, 1
  %272 = icmp eq i64 %271, 4
  br i1 %272, label %254, label %256, !llvm.loop !427

273:                                              ; preds = %254, %226, %226, %226, %245, %221
  %274 = load i32, ptr %101, align 16, !tbaa !183
  %275 = icmp sgt i32 %274, 1
  br i1 %275, label %276, label %361

276:                                              ; preds = %225, %273
  %277 = load i32, ptr %105, align 8, !tbaa !428
  %278 = load i32, ptr %106, align 4, !tbaa !429
  %279 = or i32 %278, %277
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %307, label %281

281:                                              ; preds = %276
  %282 = and i32 %277, 1
  %283 = lshr i32 %277, 1
  %284 = and i32 %283, 1
  %285 = lshr i32 %277, 2
  %286 = and i32 %285, 1
  %287 = ashr i32 %277, 3
  %288 = xor i1 %218, true
  %289 = zext i1 %288 to i64
  %290 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 10, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !94
  %292 = add nsw i32 %287, %282
  %293 = add nsw i32 %292, %284
  %294 = add nsw i32 %293, %286
  %295 = add nsw i32 %294, %291
  store i32 %295, ptr %290, align 4, !tbaa !94
  %296 = icmp ne i32 %278, 0
  %297 = zext i1 %296 to i32
  %298 = select i1 %218, i64 2, i64 3
  %299 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 10, i64 %298
  %300 = load i32, ptr %299, align 4, !tbaa !94
  %301 = add nsw i32 %300, %297
  store i32 %301, ptr %299, align 4, !tbaa !94
  %302 = ashr i32 %278, 1
  %303 = select i1 %218, i64 4, i64 5
  %304 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 10, i64 %303
  %305 = load i32, ptr %304, align 4, !tbaa !94
  %306 = add nsw i32 %305, %302
  store i32 %306, ptr %304, align 4, !tbaa !94
  br label %307

307:                                              ; preds = %281, %276
  %308 = icmp eq i32 %277, 0
  %309 = or i1 %218, %308
  br i1 %309, label %314, label %310

310:                                              ; preds = %307
  %311 = load i32, ptr %107, align 4, !tbaa !94
  %312 = add nsw i32 %311, 1
  store i32 %312, ptr %107, align 4, !tbaa !94
  %313 = load i32, ptr %108, align 4, !tbaa !430
  br label %356

314:                                              ; preds = %307
  br i1 %218, label %315, label %361

315:                                              ; preds = %314
  %316 = load i32, ptr %99, align 8, !tbaa !423
  switch i32 %316, label %336 [
    i32 3, label %361
    i32 2, label %317
    i32 1, label %323
  ]

317:                                              ; preds = %315
  %318 = load i32, ptr %112, align 16, !tbaa !431
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [13 x i32], ptr %111, i64 0, i64 %319
  %321 = load i32, ptr %320, align 4, !tbaa !94
  %322 = add nsw i32 %321, 1
  store i32 %322, ptr %320, align 4, !tbaa !94
  br label %349

323:                                              ; preds = %315, %323
  %324 = phi i64 [ %334, %323 ], [ 0, %315 ]
  %325 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %324
  %326 = load i32, ptr %325, align 16, !tbaa !94
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [40 x i8], ptr %110, i64 0, i64 %327
  %329 = load i8, ptr %328, align 1, !tbaa !120
  %330 = sext i8 %329 to i64
  %331 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 11, i64 1, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !94
  %333 = add nsw i32 %332, 1
  store i32 %333, ptr %331, align 4, !tbaa !94
  %334 = add nuw nsw i64 %324, 4
  %335 = icmp ult i64 %324, 12
  br i1 %335, label %323, label %349, !llvm.loop !432

336:                                              ; preds = %315, %336
  %337 = phi i64 [ %347, %336 ], [ 0, %315 ]
  %338 = getelementptr inbounds [27 x i32], ptr @x264_scan8, i64 0, i64 %337
  %339 = load i32, ptr %338, align 4, !tbaa !94
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [40 x i8], ptr %110, i64 0, i64 %340
  %342 = load i8, ptr %341, align 1, !tbaa !120
  %343 = sext i8 %342 to i64
  %344 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 11, i64 2, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !94
  %346 = add nsw i32 %345, 1
  store i32 %346, ptr %344, align 4, !tbaa !94
  %347 = add nuw nsw i64 %337, 1
  %348 = icmp eq i64 %347, 16
  br i1 %348, label %349, label %336, !llvm.loop !433

349:                                              ; preds = %323, %336, %317
  %350 = load i32, ptr %113, align 4, !tbaa !434
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %351
  %353 = load i8, ptr %352, align 1, !tbaa !120
  %354 = zext i8 %353 to i64
  %355 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 11, i64 3, i64 %354
  br label %356

356:                                              ; preds = %349, %310
  %357 = phi ptr [ %109, %310 ], [ %355, %349 ]
  %358 = phi i32 [ %313, %310 ], [ 1, %349 ]
  %359 = load i32, ptr %357, align 4, !tbaa !94
  %360 = add nsw i32 %359, %358
  store i32 %360, ptr %357, align 4, !tbaa !94
  br label %361

361:                                              ; preds = %356, %315, %314, %273
  br i1 %114, label %385, label %362

362:                                              ; preds = %361
  %363 = load i32, ptr %98, align 4, !tbaa !343
  %364 = load i32, ptr %115, align 4, !tbaa !435
  %365 = and i32 %364, %363
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 63, i64 %366
  %368 = load ptr, ptr %367, align 8, !tbaa !88
  %369 = load i32, ptr %116, align 16, !tbaa !436
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [2 x [4 x [4 x i8]]], ptr %368, i64 %370
  tail call void @x264_macroblock_cache_load_deblock(ptr noundef nonnull %0) #23
  %372 = load ptr, ptr %117, align 8, !tbaa !437
  %373 = load i32, ptr %118, align 8, !tbaa !438
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i8, ptr %372, i64 %374
  %376 = load i8, ptr %375, align 1, !tbaa !120
  %377 = icmp ult i8 %376, 4
  br i1 %377, label %378, label %379

378:                                              ; preds = %362
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %371, i8 3, i64 32, i1 false)
  br label %385

379:                                              ; preds = %362
  %380 = lshr i32 4, %363
  %381 = load ptr, ptr %119, align 8, !tbaa !439
  %382 = load i32, ptr %100, align 16, !tbaa !264
  %383 = icmp eq i32 %382, 1
  %384 = zext i1 %383 to i32
  tail call void %381(ptr noundef nonnull %120, ptr noundef nonnull %121, ptr noundef nonnull %122, ptr noundef %371, i32 noundef %380, i32 noundef %384) #23
  br label %385

385:                                              ; preds = %378, %379, %361
  tail call void @x264_ratecontrol_mb(ptr noundef nonnull %0, i32 noundef %190) #23
  %386 = load i32, ptr %98, align 4, !tbaa !343
  %387 = icmp eq i32 %386, 0
  br i1 %387, label %397, label %388

388:                                              ; preds = %385
  %389 = and i32 %127, 1
  %390 = add nsw i32 %126, %389
  %391 = load ptr, ptr %45, align 16, !tbaa !49
  %392 = getelementptr inbounds %struct.x264_sps_t, ptr %391, i64 0, i32 16
  %393 = load i32, ptr %392, align 4, !tbaa !55
  %394 = icmp slt i32 %390, %393
  %395 = zext i1 %394 to i32
  %396 = xor i32 %127, %395
  br label %402

397:                                              ; preds = %385
  %398 = add nsw i32 %126, 1
  %399 = load ptr, ptr %45, align 16, !tbaa !49
  %400 = getelementptr inbounds %struct.x264_sps_t, ptr %399, i64 0, i32 16
  %401 = load i32, ptr %400, align 4, !tbaa !55
  br label %402

402:                                              ; preds = %388, %397
  %403 = phi i32 [ %393, %388 ], [ %401, %397 ]
  %404 = phi i32 [ %396, %388 ], [ %127, %397 ]
  %405 = phi i32 [ %390, %388 ], [ %398, %397 ]
  %406 = icmp eq i32 %405, %403
  %407 = zext i1 %406 to i32
  %408 = add nsw i32 %404, %407
  %409 = select i1 %406, i32 0, i32 %405
  %410 = mul nsw i32 %403, %408
  %411 = add nsw i32 %410, %409
  %412 = load i32, ptr %89, align 8, !tbaa !358
  %413 = icmp sgt i32 %411, %412
  br i1 %413, label %414, label %123

414:                                              ; preds = %402, %207
  %415 = phi i32 [ %208, %207 ], [ %185, %402 ]
  %416 = load i32, ptr %63, align 16, !tbaa !96
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %426, label %421

418:                                              ; preds = %78
  %419 = load i32, ptr %63, align 16, !tbaa !96
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %429, label %421

421:                                              ; preds = %418, %414
  %422 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42
  tail call void @x264_cabac_encode_flush(ptr noundef nonnull %0, ptr noundef nonnull %422) #23
  %423 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 5
  %424 = load ptr, ptr %423, align 8, !tbaa !421
  %425 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  store ptr %424, ptr %425, align 8, !tbaa !418
  br label %430

426:                                              ; preds = %414
  %427 = icmp sgt i32 %415, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %426
  tail call fastcc void @bs_write_ue_big(ptr noundef nonnull %20, i32 noundef %415) #24
  br label %429

429:                                              ; preds = %418, %428, %426
  tail call fastcc void @bs_rbsp_trailing(ptr noundef nonnull %20) #24
  tail call fastcc void @bs_flush(ptr noundef nonnull %20) #24
  br label %430

430:                                              ; preds = %429, %421
  %431 = tail call fastcc i32 @x264_nal_end(ptr noundef nonnull %0) #24, !range !16
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %455

433:                                              ; preds = %430
  %434 = load i32, ptr %89, align 8, !tbaa !358
  %435 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 6
  %436 = load i32, ptr %435, align 8, !tbaa !280
  %437 = load ptr, ptr %45, align 16, !tbaa !49
  %438 = getelementptr inbounds %struct.x264_sps_t, ptr %437, i64 0, i32 16
  %439 = load i32, ptr %438, align 4, !tbaa !55
  %440 = mul nsw i32 %439, %436
  %441 = add nsw i32 %440, -1
  %442 = icmp eq i32 %434, %441
  br i1 %442, label %443, label %455

443:                                              ; preds = %433
  %444 = tail call fastcc i32 @bs_pos(ptr noundef nonnull %20) #24
  %445 = load i32, ptr %19, align 16, !tbaa !107
  %446 = mul i32 %445, 40
  %447 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57
  %448 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 1
  %449 = load i32, ptr %448, align 4, !tbaa !440
  %450 = load i32, ptr %447, align 8, !tbaa !441
  %451 = add i32 %446, %444
  %452 = add i32 %449, %450
  %453 = sub i32 %451, %452
  %454 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 0, i32 2
  store i32 %453, ptr %454, align 8, !tbaa !442
  tail call fastcc void @x264_fdec_filter_row(ptr noundef nonnull %0, i32 noundef %436, i32 noundef 1) #24
  br label %455

455:                                              ; preds = %150, %433, %443, %430
  %456 = phi i32 [ -1, %430 ], [ 0, %443 ], [ 0, %433 ], [ -1, %150 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2)
  ret i32 %456
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_realign(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !221
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = and i64 %4, 3
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %3, i64 %10
  store ptr %11, ptr %2, align 8, !tbaa !221
  %12 = trunc i64 %9 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = sub nuw nsw i32 64, %13
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !223
  %16 = load i32, ptr %11, align 4, !tbaa !120
  %17 = tail call fastcc i32 @endian_fix32(i32 noundef %16) #24
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %20 = shl nuw nsw i32 %6, 3
  %21 = sub nuw nsw i32 32, %20
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %18, %22
  store i64 %23, ptr %19, align 8, !tbaa !224
  br label %24

24:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: optsize
declare void @x264_macroblock_thread_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_slice_header_write(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) unnamed_addr #18 {
  %4 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !380
  %6 = icmp ne i32 %5, 0
  %7 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !375
  %9 = zext i1 %6 to i32
  %10 = ashr i32 %8, %9
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %10) #24
  %11 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 16, !tbaa !385
  %13 = add nsw i32 %12, 5
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %13) #24
  %14 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 5
  %15 = load i32, ptr %14, align 4, !tbaa !378
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %15) #24
  %16 = load ptr, ptr %1, align 16, !tbaa !373
  %17 = getelementptr inbounds %struct.x264_sps_t, ptr %16, i64 0, i32 6
  %18 = load i32, ptr %17, align 4, !tbaa !392
  %19 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 6
  %20 = load i32, ptr %19, align 16, !tbaa !379
  %21 = shl nsw i32 -1, %18
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %18, i32 noundef %23) #24
  %24 = load ptr, ptr %1, align 16, !tbaa !373
  %25 = getelementptr inbounds %struct.x264_sps_t, ptr %24, i64 0, i32 18
  %26 = load i32, ptr %25, align 4, !tbaa !443
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 8
  %30 = load i32, ptr %29, align 8, !tbaa !381
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %30) #24
  %31 = load i32, ptr %29, align 8, !tbaa !381
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 9
  %35 = load i32, ptr %34, align 4, !tbaa !382
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %35) #24
  br label %36

36:                                               ; preds = %28, %33, %3
  %37 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 10
  %38 = load i32, ptr %37, align 16, !tbaa !383
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %38) #24
  br label %41

41:                                               ; preds = %40, %36
  %42 = load ptr, ptr %1, align 16, !tbaa !373
  %43 = getelementptr inbounds %struct.x264_sps_t, ptr %42, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !353
  switch i32 %44, label %85 [
    i32 0, label %45
    i32 1, label %64
  ]

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.x264_sps_t, ptr %42, i64 0, i32 8
  %47 = load i32, ptr %46, align 4, !tbaa !444
  %48 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 11
  %49 = load i32, ptr %48, align 4, !tbaa !445
  %50 = shl nsw i32 -1, %47
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %47, i32 noundef %52) #24
  %53 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !374
  %55 = getelementptr inbounds %struct.x264_pps_t, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !446
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %85, label %58

58:                                               ; preds = %45
  %59 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 8
  %60 = load i32, ptr %59, align 8, !tbaa !381
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 12
  br label %82

64:                                               ; preds = %41
  %65 = getelementptr inbounds %struct.x264_sps_t, ptr %42, i64 0, i32 9
  %66 = load i32, ptr %65, align 4, !tbaa !447
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 13
  %70 = load i32, ptr %69, align 4, !tbaa !94
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %70) #24
  %71 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !374
  %73 = getelementptr inbounds %struct.x264_pps_t, ptr %72, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !446
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 8
  %78 = load i32, ptr %77, align 8, !tbaa !381
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 13, i64 1
  br label %82

82:                                               ; preds = %62, %80
  %83 = phi ptr [ %81, %80 ], [ %63, %62 ]
  %84 = load i32, ptr %83, align 4, !tbaa !94
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %84) #24
  br label %85

85:                                               ; preds = %82, %41, %64, %76, %68, %45, %58
  %86 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !374
  %88 = getelementptr inbounds %struct.x264_pps_t, ptr %87, i64 0, i32 14
  %89 = load i32, ptr %88, align 8, !tbaa !448
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %85
  %92 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 14
  %93 = load i32, ptr %92, align 4, !tbaa !449
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %93) #24
  br label %94

94:                                               ; preds = %91, %85
  %95 = load i32, ptr %11, align 16, !tbaa !385
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 15
  %99 = load i32, ptr %98, align 8, !tbaa !386
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %99) #24
  %100 = load i32, ptr %11, align 16, !tbaa !385
  br label %101

101:                                              ; preds = %97, %94
  %102 = phi i32 [ %100, %97 ], [ %95, %94 ]
  switch i32 %102, label %118 [
    i32 0, label %103
    i32 3, label %103
    i32 1, label %103
  ]

103:                                              ; preds = %101, %101, %101
  %104 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 16
  %105 = load i32, ptr %104, align 4, !tbaa !387
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %105) #24
  %106 = load i32, ptr %104, align 4, !tbaa !387
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %103
  %109 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 17
  %110 = load i32, ptr %109, align 16, !tbaa !388
  %111 = add nsw i32 %110, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %111) #24
  %112 = load i32, ptr %11, align 16, !tbaa !385
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 18
  %116 = load i32, ptr %115, align 4, !tbaa !389
  %117 = add nsw i32 %116, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %117) #24
  br label %118

118:                                              ; preds = %114, %103, %101
  %119 = load i32, ptr %11, align 16, !tbaa !385
  br label %120

120:                                              ; preds = %118, %108
  %121 = phi i32 [ %119, %118 ], [ %112, %108 ]
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %145, label %123

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 19
  %125 = load i32, ptr %124, align 8, !tbaa !390
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %125) #24
  %126 = load i32, ptr %124, align 8, !tbaa !390
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %145, label %128

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 17
  %130 = load i32, ptr %129, align 16, !tbaa !388
  %131 = icmp sgt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 21
  br label %135

134:                                              ; preds = %135, %128
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 3) #24
  br label %145

135:                                              ; preds = %132, %135
  %136 = phi i64 [ 0, %132 ], [ %141, %135 ]
  %137 = getelementptr inbounds [16 x %struct.anon.6], ptr %133, i64 0, i64 %136
  %138 = load i32, ptr %137, align 8, !tbaa !328
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %138) #24
  %139 = getelementptr inbounds [16 x %struct.anon.6], ptr %133, i64 0, i64 %136, i32 1
  %140 = load i32, ptr %139, align 4, !tbaa !288
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %140) #24
  %141 = add nuw nsw i64 %136, 1
  %142 = load i32, ptr %129, align 16, !tbaa !388
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %135, label %134, !llvm.loop !450

145:                                              ; preds = %123, %134, %120
  %146 = load i32, ptr %11, align 16, !tbaa !385
  %147 = icmp eq i32 %146, 1
  br i1 %147, label %148, label %168

148:                                              ; preds = %145
  %149 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 20
  %150 = load i32, ptr %149, align 4, !tbaa !391
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %150) #24
  %151 = load i32, ptr %149, align 4, !tbaa !391
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 18
  %155 = load i32, ptr %154, align 4, !tbaa !389
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %158, %153
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 3) #24
  br label %168

158:                                              ; preds = %153, %158
  %159 = phi i64 [ %164, %158 ], [ 0, %153 ]
  %160 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 21, i64 1, i64 %159
  %161 = load i32, ptr %160, align 8, !tbaa !328
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %161) #24
  %162 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 21, i64 1, i64 %159, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !288
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %163) #24
  %164 = add nuw nsw i64 %159, 1
  %165 = load i32, ptr %154, align 4, !tbaa !389
  %166 = sext i32 %165 to i64
  %167 = icmp slt i64 %164, %166
  br i1 %167, label %158, label %157, !llvm.loop !451

168:                                              ; preds = %148, %157, %145
  %169 = load ptr, ptr %86, align 8, !tbaa !374
  %170 = getelementptr inbounds %struct.x264_pps_t, ptr %169, i64 0, i32 7
  %171 = load i32, ptr %170, align 4, !tbaa !452
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %219, label %173

173:                                              ; preds = %168
  %174 = load i32, ptr %11, align 16, !tbaa !385
  switch i32 %174, label %219 [
    i32 0, label %175
    i32 3, label %175
  ]

175:                                              ; preds = %173, %173
  %176 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 0, i64 0, i32 2
  %177 = load i32, ptr %176, align 16, !tbaa !313
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %177) #24
  %178 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 0, i64 1, i32 2
  %179 = load i32, ptr %178, align 16, !tbaa !313
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %179) #24
  %180 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 17
  %181 = load i32, ptr %180, align 16, !tbaa !388
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %219

183:                                              ; preds = %175, %214
  %184 = phi i64 [ %215, %214 ], [ 0, %175 ]
  %185 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 %184
  %186 = getelementptr inbounds %struct.x264_weight_t, ptr %185, i64 0, i32 5
  %187 = load ptr, ptr %186, align 16, !tbaa !334
  %188 = icmp ne ptr %187, null
  %189 = zext i1 %188 to i32
  %190 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 %184, i64 1, i32 5
  %191 = load ptr, ptr %190, align 16, !tbaa !334
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %183
  %194 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 %184, i64 2, i32 5
  %195 = load ptr, ptr %194, align 16, !tbaa !334
  %196 = icmp ne ptr %195, null
  br label %197

197:                                              ; preds = %193, %183
  %198 = phi i1 [ true, %183 ], [ %196, %193 ]
  %199 = zext i1 %198 to i32
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %189) #24
  br i1 %188, label %200, label %205

200:                                              ; preds = %197
  %201 = getelementptr inbounds %struct.x264_weight_t, ptr %185, i64 0, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !335
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %202) #24
  %203 = getelementptr inbounds %struct.x264_weight_t, ptr %185, i64 0, i32 4
  %204 = load i32, ptr %203, align 8, !tbaa !336
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %204) #24
  br label %205

205:                                              ; preds = %200, %197
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %199) #24
  br i1 %198, label %206, label %214

206:                                              ; preds = %205, %206
  %207 = phi i64 [ %212, %206 ], [ 1, %205 ]
  %208 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 %184, i64 %207, i32 3
  %209 = load i32, ptr %208, align 4, !tbaa !335
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %209) #24
  %210 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 22, i64 %184, i64 %207, i32 4
  %211 = load i32, ptr %210, align 8, !tbaa !336
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %211) #24
  %212 = add nuw nsw i64 %207, 1
  %213 = icmp eq i64 %212, 3
  br i1 %213, label %214, label %206, !llvm.loop !453

214:                                              ; preds = %206, %205
  %215 = add nuw nsw i64 %184, 1
  %216 = load i32, ptr %180, align 16, !tbaa !388
  %217 = sext i32 %216 to i64
  %218 = icmp slt i64 %215, %217
  br i1 %218, label %183, label %219, !llvm.loop !454

219:                                              ; preds = %214, %175, %173, %168
  %220 = icmp eq i32 %2, 0
  br i1 %220, label %242, label %221

221:                                              ; preds = %219
  %222 = load i32, ptr %37, align 16, !tbaa !383
  %223 = icmp sgt i32 %222, -1
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef 0) #24
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef 0) #24
  br label %242

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 24
  %227 = load i32, ptr %226, align 4, !tbaa !455
  %228 = icmp sgt i32 %227, 0
  %229 = zext i1 %228 to i32
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %229) #24
  %230 = load i32, ptr %226, align 4, !tbaa !455
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %233, label %242

232:                                              ; preds = %233
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 0) #24
  br label %242

233:                                              ; preds = %225, %233
  %234 = phi i64 [ %238, %233 ], [ 0, %225 ]
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 1) #24
  %235 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 25, i64 %234
  %236 = load i32, ptr %235, align 8, !tbaa !328
  %237 = add nsw i32 %236, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %237) #24
  %238 = add nuw nsw i64 %234, 1
  %239 = load i32, ptr %226, align 4, !tbaa !455
  %240 = sext i32 %239 to i64
  %241 = icmp slt i64 %238, %240
  br i1 %241, label %233, label %232, !llvm.loop !456

242:                                              ; preds = %224, %232, %225, %219
  %243 = load ptr, ptr %86, align 8, !tbaa !374
  %244 = getelementptr inbounds %struct.x264_pps_t, ptr %243, i64 0, i32 2
  %245 = load i32, ptr %244, align 8, !tbaa !457
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %253, label %247

247:                                              ; preds = %242
  %248 = load i32, ptr %11, align 16, !tbaa !385
  %249 = icmp eq i32 %248, 2
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 26
  %252 = load i32, ptr %251, align 8, !tbaa !395
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %252) #24
  br label %253

253:                                              ; preds = %250, %247, %242
  %254 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 28
  %255 = load i32, ptr %254, align 16, !tbaa !398
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %255) #24
  %256 = load ptr, ptr %86, align 8, !tbaa !374
  %257 = getelementptr inbounds %struct.x264_pps_t, ptr %256, i64 0, i32 12
  %258 = load i32, ptr %257, align 8, !tbaa !458
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %272, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 31
  %262 = load i32, ptr %261, align 4, !tbaa !405
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %262) #24
  %263 = load i32, ptr %261, align 4, !tbaa !405
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %272, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 32
  %267 = load i32, ptr %266, align 16, !tbaa !406
  %268 = ashr i32 %267, 1
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %268) #24
  %269 = getelementptr inbounds %struct.x264_slice_header_t, ptr %1, i64 0, i32 33
  %270 = load i32, ptr %269, align 4, !tbaa !407
  %271 = ashr i32 %270, 1
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %271) #24
  br label %272

272:                                              ; preds = %260, %265, %253
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_align_1(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !223
  %4 = and i32 %3, 7
  %5 = shl nsw i32 -1, %4
  %6 = xor i32 %5, -1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %4, i32 noundef %6) #24
  tail call fastcc void @bs_flush(ptr noundef %0) #24
  ret void
}

; Function Attrs: optsize
declare void @x264_cabac_context_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_cabac_encode_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @x264_cabac_pos(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  %4 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 16, !tbaa !460
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %5 to i64
  %8 = sub i64 %6, %7
  %9 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !461
  %11 = getelementptr inbounds %struct.x264_cabac_t, ptr %0, i64 0, i32 2
  %12 = load i32, ptr %11, align 8, !tbaa !462
  %13 = trunc i64 %8 to i32
  %14 = add i32 %10, %13
  %15 = shl i32 %14, 3
  %16 = add i32 %15, %12
  ret i32 %16
}

; Function Attrs: optsize
declare void @x264_macroblock_cache_load(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_analyse(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_encode(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @x264_bitstream_check_buffer(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !125
  %5 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 24
  %6 = load i32, ptr %5, align 16, !tbaa !96
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 6
  %10 = load ptr, ptr %9, align 16, !tbaa !463
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !421
  %13 = ptrtoint ptr %10 to i64
  %14 = ptrtoint ptr %12 to i64
  %15 = sub i64 %13, %14
  %16 = icmp slt i64 %15, 2500
  br i1 %16, label %26, label %17

17:                                               ; preds = %8, %1
  %18 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 2
  %19 = load ptr, ptr %18, align 16, !tbaa !419
  %20 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !418
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %21 to i64
  %24 = sub i64 %22, %23
  %25 = icmp slt i64 %24, 2500
  br i1 %25, label %26, label %77

26:                                               ; preds = %17, %8
  %27 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 3
  %28 = load i32, ptr %27, align 16, !tbaa !112
  %29 = add nsw i32 %28, 100000
  store i32 %29, ptr %27, align 16, !tbaa !112
  %30 = tail call ptr @x264_malloc(i32 noundef %29) #23
  store ptr %30, ptr %3, align 8, !tbaa !125
  %31 = icmp eq ptr %30, null
  br i1 %31, label %75, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 70, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !464
  %35 = load i32, ptr %27, align 16, !tbaa !112
  %36 = and i32 %35, -16
  %37 = add nsw i32 %36, -100000
  %38 = sext i32 %37 to i64
  %39 = tail call ptr %34(ptr noundef nonnull %30, ptr noundef %4, i64 noundef %38) #23
  %40 = load ptr, ptr %3, align 8, !tbaa !125
  %41 = ptrtoint ptr %40 to i64
  %42 = ptrtoint ptr %4 to i64
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5
  %45 = load ptr, ptr %44, align 16, !tbaa !465
  %46 = getelementptr inbounds i8, ptr %45, i64 %43
  store ptr %46, ptr %44, align 16, !tbaa !465
  %47 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !418
  %49 = getelementptr inbounds i8, ptr %48, i64 %43
  store ptr %49, ptr %47, align 8, !tbaa !418
  %50 = load i32, ptr %27, align 16, !tbaa !112
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, ptr %40, i64 %51
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 5, i32 2
  store ptr %52, ptr %53, align 16, !tbaa !419
  %54 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 4
  %55 = load ptr, ptr %54, align 16, !tbaa !466
  %56 = getelementptr inbounds i8, ptr %55, i64 %43
  store ptr %56, ptr %54, align 16, !tbaa !466
  %57 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !421
  %59 = getelementptr inbounds i8, ptr %58, i64 %43
  store ptr %59, ptr %57, align 8, !tbaa !421
  %60 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 42, i32 6
  store ptr %52, ptr %60, align 16, !tbaa !463
  %61 = load i32, ptr %2, align 16, !tbaa !107
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %32
  %64 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 7, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !126
  %66 = add nuw i32 %61, 1
  %67 = zext i32 %66 to i64
  br label %68

68:                                               ; preds = %63, %68
  %69 = phi i64 [ 0, %63 ], [ %73, %68 ]
  %70 = getelementptr inbounds %struct.x264_nal_t, ptr %65, i64 %69, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !229
  %72 = getelementptr inbounds i8, ptr %71, i64 %43
  store ptr %72, ptr %70, align 8, !tbaa !229
  %73 = add nuw nsw i64 %69, 1
  %74 = icmp eq i64 %73, %67
  br i1 %74, label %75, label %68, !llvm.loop !467

75:                                               ; preds = %68, %26, %32
  %76 = phi i32 [ 0, %32 ], [ -1, %26 ], [ 0, %68 ]
  tail call void @x264_free(ptr noundef %4) #23
  br label %77

77:                                               ; preds = %75, %17
  %78 = phi i32 [ 0, %17 ], [ %76, %75 ]
  ret i32 %78
}

; Function Attrs: optsize
declare void @x264_cabac_encode_terminal_c(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_cabac_mb_skip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_write_cabac(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_ue_big(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = add i32 %1, 1
  %4 = icmp sgt i32 %3, 65535
  %5 = lshr i32 %3, 16
  %6 = select i1 %4, i32 32, i32 0
  %7 = select i1 %4, i32 %5, i32 %3
  %8 = icmp sgt i32 %7, 255
  %9 = or disjoint i32 %6, 16
  %10 = lshr i32 %7, 8
  %11 = select i1 %8, i32 %9, i32 %6
  %12 = select i1 %8, i32 %10, i32 %7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !120
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %11, %16
  %18 = lshr i32 %17, 1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %18, i32 noundef 0) #24
  %19 = add nuw nsw i32 %18, 1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %19, i32 noundef %3) #24
  ret void
}

; Function Attrs: optsize
declare void @x264_macroblock_write_cavlc(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_cache_save(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_cache_load_deblock(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_ratecontrol_mb(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_cabac_encode_flush(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_flush(ptr nocapture noundef %0) unnamed_addr #12 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !224
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !223
  %6 = and i32 %5, 31
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 %3, %7
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc i32 @endian_fix32(i32 noundef %9) #24
  %11 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !221
  store i32 %10, ptr %12, align 4, !tbaa !120
  %13 = load i32, ptr %4, align 8, !tbaa !223
  %14 = sdiv i32 %13, -8
  %15 = load ptr, ptr %11, align 8, !tbaa !221
  %16 = sext i32 %14 to i64
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = getelementptr i8, ptr %17, i64 8
  store ptr %18, ptr %11, align 8, !tbaa !221
  store i32 64, ptr %4, align 8, !tbaa !223
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_se(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #12 {
  %3 = shl nsw i32 %1, 1
  %4 = sub nsw i32 1, %3
  %5 = icmp sgt i32 %1, 0
  %6 = select i1 %5, i32 %3, i32 %4
  %7 = icmp sgt i32 %6, 255
  %8 = lshr i32 %6, 8
  %9 = select i1 %7, i32 16, i32 0
  %10 = select i1 %7, i32 %8, i32 %6
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %11
  %13 = load i8, ptr %12, align 1, !tbaa !120
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %9, %14
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %15, i32 noundef %6) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @x264_encoder_close(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [2 x [7 x i64]], align 16
  %3 = alloca [200 x i8], align 16
  %4 = alloca [3 x i64], align 16
  %5 = alloca [4 x [9 x i64]], align 16
  %6 = alloca [4 x i64], align 16
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 4, !tbaa !108
  %9 = mul nsw i32 %8, 3
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !109
  %12 = mul nsw i32 %9, %11
  %13 = sdiv i32 %12, 2
  %14 = sext i32 %13 to i64
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %2, i8 0, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %3) #22
  %15 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2
  %17 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 3
  %18 = load i64, ptr %17, align 8, !tbaa !122
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 3
  %22 = load i64, ptr %21, align 8, !tbaa !122
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 3
  %26 = load i64, ptr %25, align 8, !tbaa !122
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %24, %20, %1
  %29 = phi i1 [ true, %20 ], [ true, %1 ], [ %27, %24 ]
  %30 = zext i1 %29 to i32
  tail call void @x264_lookahead_delete(ptr noundef nonnull %0) #23
  %31 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !115
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %67

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %36 = load i32, ptr %35, align 4, !tbaa !67
  %37 = icmp sgt i32 %36, 1
  br i1 %37, label %50, label %67

38:                                               ; preds = %62
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 16, !tbaa !196
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !88
  tail call void @x264_thread_sync_ratecontrol(ptr noundef nonnull %0, ptr noundef %43, ptr noundef nonnull %0) #23
  tail call void @x264_thread_sync_ratecontrol(ptr noundef %43, ptr noundef %43, ptr noundef nonnull %0) #23
  %44 = getelementptr inbounds %struct.x264_t, ptr %43, i64 0, i32 10
  %45 = load i32, ptr %44, align 4, !tbaa !40
  %46 = add nsw i32 %45, 1
  %47 = load i32, ptr %35, align 4, !tbaa !67
  %48 = sub i32 %46, %47
  %49 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  store i32 %48, ptr %49, align 4, !tbaa !40
  br label %67

50:                                               ; preds = %34, %62
  %51 = phi i32 [ %63, %62 ], [ %36, %34 ]
  %52 = phi i64 [ %64, %62 ], [ 0, %34 ]
  %53 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !88
  %55 = getelementptr inbounds %struct.x264_t, ptr %54, i64 0, i32 3
  %56 = load i32, ptr %55, align 4, !tbaa !281
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.x264_t, ptr %54, i64 0, i32 44
  %60 = load ptr, ptr %59, align 8, !tbaa !239
  tail call void @x264_frame_delete(ptr noundef %60) #23
  %61 = load i32, ptr %35, align 4, !tbaa !67
  br label %62

62:                                               ; preds = %50, %58
  %63 = phi i32 [ %51, %50 ], [ %61, %58 ]
  %64 = add nuw nsw i64 %52, 1
  %65 = sext i32 %63 to i64
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %50, label %38, !llvm.loop !468

67:                                               ; preds = %34, %38, %28
  %68 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 10
  %69 = load i32, ptr %68, align 4, !tbaa !40
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %68, align 4, !tbaa !40
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 22
  br label %77

72:                                               ; preds = %118
  %73 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 17
  %74 = load i32, ptr %73, align 4, !tbaa !45
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %121

76:                                               ; preds = %143, %121, %72
  br label %162

77:                                               ; preds = %67, %118
  %78 = phi i64 [ 0, %67 ], [ %119, %118 ]
  %79 = getelementptr inbounds [5 x i8], ptr @x264_encoder_close.slice_order, i64 0, i64 %78
  %80 = load i8, ptr %79, align 1, !tbaa !120
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !94
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %77
  %86 = load i32, ptr %71, align 4, !tbaa !146
  %87 = icmp eq i32 %86, 0
  %88 = getelementptr inbounds [5 x ptr], ptr @x264_encoder_close.slice_name, i64 0, i64 %81
  %89 = load ptr, ptr %88, align 8, !tbaa !88
  %90 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 3, i64 %81
  %91 = load double, ptr %90, align 8, !tbaa !123
  %92 = sitofp i32 %83 to double
  %93 = fdiv double %91, %92
  %94 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 %81
  %95 = load i64, ptr %94, align 8, !tbaa !122
  %96 = sitofp i64 %95 to double
  %97 = fdiv double %96, %92
  br i1 %87, label %117, label %98

98:                                               ; preds = %85
  %99 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 %81
  %100 = load double, ptr %99, align 8, !tbaa !123
  %101 = fdiv double %100, %92
  %102 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 %81
  %103 = load double, ptr %102, align 8, !tbaa !123
  %104 = fdiv double %103, %92
  %105 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 %81
  %106 = load double, ptr %105, align 8, !tbaa !123
  %107 = fdiv double %106, %92
  %108 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 %81
  %109 = load double, ptr %108, align 8, !tbaa !123
  %110 = fdiv double %109, %92
  %111 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 %81
  %112 = load i64, ptr %111, align 8, !tbaa !122
  %113 = zext nneg i32 %83 to i64
  %114 = mul nsw i64 %113, %14
  %115 = tail call fastcc float @x264_psnr(i64 noundef %112, i64 noundef %114) #24
  %116 = fpext float %115 to double
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.61, ptr noundef %89, i32 noundef %83, double noundef %93, double noundef %97, double noundef %101, double noundef %104, double noundef %107, double noundef %110, double noundef %116) #23
  br label %118

117:                                              ; preds = %85
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.62, ptr noundef %89, i32 noundef %83, double noundef %93, double noundef %97) #23
  br label %118

118:                                              ; preds = %98, %117, %77
  %119 = add nuw nsw i64 %78, 1
  %120 = icmp eq i64 %119, 5
  br i1 %120, label %72, label %77, !llvm.loop !469

121:                                              ; preds = %72
  %122 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %123 = load i32, ptr %122, align 8, !tbaa !94
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %76, label %125

125:                                              ; preds = %121
  %126 = icmp slt i32 %74, 0
  br i1 %126, label %143, label %127

127:                                              ; preds = %125
  %128 = add nuw i32 %74, 1
  %129 = zext i32 %128 to i64
  br label %133

130:                                              ; preds = %133
  br i1 %126, label %143, label %131

131:                                              ; preds = %130
  %132 = sitofp i32 %141 to double
  br label %144

133:                                              ; preds = %127, %133
  %134 = phi i64 [ 0, %127 ], [ %136, %133 ]
  %135 = phi i32 [ 0, %127 ], [ %141, %133 ]
  %136 = add nuw nsw i64 %134, 1
  %137 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 4, i64 %134
  %138 = load i32, ptr %137, align 4, !tbaa !94
  %139 = trunc i64 %136 to i32
  %140 = mul nsw i32 %138, %139
  %141 = add nsw i32 %140, %135
  %142 = icmp eq i64 %136, %129
  br i1 %142, label %130, label %133, !llvm.loop !470

143:                                              ; preds = %144, %125, %130
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.64, ptr noundef nonnull %3) #23
  br label %76

144:                                              ; preds = %131, %144
  %145 = phi i64 [ 0, %131 ], [ %147, %144 ]
  %146 = phi ptr [ %3, %131 ], [ %158, %144 ]
  %147 = add nuw nsw i64 %145, 1
  %148 = trunc i64 %147 to i32
  %149 = sitofp i32 %148 to double
  %150 = fmul double %149, 1.000000e+02
  %151 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 4, i64 %145
  %152 = load i32, ptr %151, align 4, !tbaa !94
  %153 = sitofp i32 %152 to double
  %154 = fmul double %150, %153
  %155 = fdiv double %154, %132
  %156 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %146, ptr noundef nonnull dereferenceable(1) @.str.63, double noundef %155) #23
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, ptr %146, i64 %157
  %159 = load i32, ptr %73, align 4, !tbaa !45
  %160 = sext i32 %159 to i64
  %161 = icmp slt i64 %145, %160
  br i1 %161, label %144, label %143, !llvm.loop !471

162:                                              ; preds = %76, %170
  %163 = phi i1 [ false, %170 ], [ true, %76 ]
  %164 = phi i64 [ 1, %170 ], [ 0, %76 ]
  br label %171

165:                                              ; preds = %170
  %166 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1
  %167 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 2
  %168 = load i32, ptr %167, align 8, !tbaa !94
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %186, label %192

170:                                              ; preds = %183
  br i1 %163, label %162, label %165, !llvm.loop !472

171:                                              ; preds = %162, %183
  %172 = phi i64 [ 0, %162 ], [ %184, %183 ]
  %173 = icmp eq i64 %172, 12
  br i1 %173, label %183, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 %164, i64 %172
  %176 = load i64, ptr %175, align 8, !tbaa !122
  %177 = getelementptr inbounds [17 x i8], ptr @x264_mb_partition_pixel_table, i64 0, i64 %172
  %178 = load i8, ptr %177, align 1, !tbaa !120
  %179 = zext i8 %178 to i64
  %180 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 %164, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !122
  %182 = add nsw i64 %181, %176
  store i64 %182, ptr %180, align 8, !tbaa !122
  br label %183

183:                                              ; preds = %171, %174
  %184 = add nuw nsw i64 %172, 1
  %185 = icmp eq i64 %184, 17
  br i1 %185, label %170, label %171, !llvm.loop !473

186:                                              ; preds = %165
  %187 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %188 = load i32, ptr %187, align 16, !tbaa !61
  %189 = mul nsw i32 %188, %168
  %190 = sitofp i32 %189 to double
  %191 = fdiv double %190, 1.000000e+02
  call fastcc void @x264_print_intra(ptr noundef nonnull %16, double noundef %191, i32 noundef %30, ptr noundef nonnull %3) #24
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.65, ptr noundef nonnull %3) #23
  br label %192

192:                                              ; preds = %186, %165
  %193 = load i32, ptr %166, align 8, !tbaa !94
  %194 = icmp sgt i32 %193, 0
  br i1 %194, label %195, label %231

195:                                              ; preds = %192
  %196 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %197 = load i32, ptr %196, align 16, !tbaa !61
  %198 = mul nsw i32 %197, %193
  %199 = sitofp i32 %198 to double
  %200 = fdiv double %199, 1.000000e+02
  call fastcc void @x264_print_intra(ptr noundef nonnull %15, double noundef %200, i32 noundef %30, ptr noundef nonnull %3) #24
  %201 = load i64, ptr %2, align 16, !tbaa !122
  %202 = sitofp i64 %201 to double
  %203 = fmul double %200, 4.000000e+00
  %204 = fdiv double %202, %203
  %205 = getelementptr inbounds i64, ptr %2, i64 1
  %206 = load i64, ptr %205, align 8, !tbaa !122
  %207 = getelementptr inbounds i64, ptr %2, i64 2
  %208 = load i64, ptr %207, align 16, !tbaa !122
  %209 = add nsw i64 %208, %206
  %210 = sitofp i64 %209 to double
  %211 = fdiv double %210, %203
  %212 = getelementptr inbounds i64, ptr %2, i64 3
  %213 = load i64, ptr %212, align 8, !tbaa !122
  %214 = sitofp i64 %213 to double
  %215 = fdiv double %214, %203
  %216 = getelementptr inbounds i64, ptr %2, i64 4
  %217 = load i64, ptr %216, align 16, !tbaa !122
  %218 = getelementptr inbounds i64, ptr %2, i64 5
  %219 = load i64, ptr %218, align 8, !tbaa !122
  %220 = add nsw i64 %219, %217
  %221 = sitofp i64 %220 to double
  %222 = fdiv double %221, %203
  %223 = getelementptr inbounds i64, ptr %2, i64 6
  %224 = load i64, ptr %223, align 16, !tbaa !122
  %225 = sitofp i64 %224 to double
  %226 = fdiv double %225, %203
  %227 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 6
  %228 = load i64, ptr %227, align 8, !tbaa !122
  %229 = sitofp i64 %228 to double
  %230 = fdiv double %229, %200
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.66, ptr noundef nonnull %3, double noundef %204, double noundef %211, double noundef %215, double noundef %222, double noundef %226, double noundef %230) #23
  br label %231

231:                                              ; preds = %195, %192
  %232 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 1, i64 1
  %233 = load i32, ptr %232, align 4, !tbaa !94
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %324

235:                                              ; preds = %231
  %236 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1
  %237 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %238 = load i32, ptr %237, align 16, !tbaa !61
  %239 = mul nsw i32 %238, %233
  %240 = sitofp i32 %239 to double
  %241 = fdiv double %240, 1.000000e+02
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call fastcc void @x264_print_intra(ptr noundef nonnull %236, double noundef %241, i32 noundef %30, ptr noundef nonnull %3) #24
  br label %242

242:                                              ; preds = %235, %300
  %243 = phi i64 [ 0, %235 ], [ %301, %300 ]
  %244 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %243
  %245 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 %243
  br label %303

246:                                              ; preds = %300
  %247 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1
  %248 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 3
  %249 = load i64, ptr %248, align 8, !tbaa !122
  %250 = load i64, ptr %4, align 16, !tbaa !122
  %251 = add nsw i64 %250, %249
  %252 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 7
  %253 = load i64, ptr %252, align 8, !tbaa !122
  %254 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 1
  %255 = load i64, ptr %254, align 8, !tbaa !122
  %256 = add nsw i64 %255, %253
  %257 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 11
  %258 = load i64, ptr %257, align 8, !tbaa !122
  %259 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 2
  %260 = load i64, ptr %259, align 16, !tbaa !122
  %261 = add nsw i64 %260, %258
  %262 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 12, i64 1, i64 12
  %263 = load i64, ptr %262, align 8, !tbaa !122
  %264 = add nsw i64 %263, 2
  %265 = sdiv i64 %264, 4
  %266 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 7
  %267 = load i64, ptr %266, align 8, !tbaa !122
  %268 = add nsw i64 %265, %267
  store i64 %268, ptr %266, align 8, !tbaa !122
  %269 = add nsw i64 %256, %251
  %270 = add nsw i64 %269, %261
  %271 = sitofp i64 %270 to double
  %272 = fdiv double %271, 1.000000e+02
  %273 = load i64, ptr %247, align 8, !tbaa !122
  %274 = sitofp i64 %273 to double
  %275 = fmul double %241, 4.000000e+00
  %276 = fdiv double %274, %275
  %277 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1, i64 1
  %278 = load i64, ptr %277, align 16, !tbaa !122
  %279 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1, i64 2
  %280 = load i64, ptr %279, align 8, !tbaa !122
  %281 = add nsw i64 %280, %278
  %282 = sitofp i64 %281 to double
  %283 = fdiv double %282, %275
  %284 = getelementptr inbounds [2 x [7 x i64]], ptr %2, i64 0, i64 1, i64 3
  %285 = load i64, ptr %284, align 16, !tbaa !122
  %286 = sitofp i64 %285 to double
  %287 = fdiv double %286, %275
  %288 = sitofp i64 %268 to double
  %289 = fdiv double %288, %241
  %290 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 18
  %291 = load i64, ptr %290, align 8, !tbaa !122
  %292 = sitofp i64 %291 to double
  %293 = fdiv double %292, %241
  %294 = sitofp i64 %251 to double
  %295 = fdiv double %294, %272
  %296 = sitofp i64 %256 to double
  %297 = fdiv double %296, %272
  %298 = sitofp i64 %261 to double
  %299 = fdiv double %298, %272
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull %3, double noundef %276, double noundef %283, double noundef %287, double noundef %289, double noundef %293, double noundef %295, double noundef %297, double noundef %299) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #22
  br label %324

300:                                              ; preds = %323
  %301 = add nuw nsw i64 %243, 1
  %302 = icmp eq i64 %301, 17
  br i1 %302, label %246, label %242, !llvm.loop !474

303:                                              ; preds = %242, %323
  %304 = phi i1 [ true, %242 ], [ false, %323 ]
  %305 = phi i64 [ 0, %242 ], [ 1, %323 ]
  %306 = getelementptr inbounds [2 x i8], ptr %244, i64 0, i64 %305
  %307 = load i8, ptr %306, align 1, !tbaa !120
  %308 = getelementptr inbounds [19 x [2 x [2 x i8]]], ptr @x264_mb_type_list_table, i64 0, i64 %243, i64 1, i64 %305
  %309 = load i8, ptr %308, align 1, !tbaa !120
  %310 = icmp ne i8 %307, 0
  %311 = icmp ne i8 %309, 0
  %312 = select i1 %310, i1 true, i1 %311
  br i1 %312, label %313, label %323

313:                                              ; preds = %303
  %314 = zext i8 %309 to i64
  %315 = zext i8 %307 to i64
  %316 = load i64, ptr %245, align 8, !tbaa !122
  %317 = shl nsw i64 %316, 1
  %318 = add nuw nsw i64 %315, 1
  %319 = mul nuw nsw i64 %318, %314
  %320 = getelementptr inbounds [3 x i64], ptr %4, i64 0, i64 %319
  %321 = load i64, ptr %320, align 8, !tbaa !122
  %322 = add nsw i64 %321, %317
  store i64 %322, ptr %320, align 8, !tbaa !122
  br label %323

323:                                              ; preds = %303, %313
  br i1 %304, label %303, label %300, !llvm.loop !475

324:                                              ; preds = %246, %231
  call void @x264_ratecontrol_summary(ptr noundef nonnull %0) #23
  %325 = load i32, ptr %167, align 8, !tbaa !94
  %326 = load i32, ptr %166, align 8, !tbaa !94
  %327 = add nsw i32 %326, %325
  %328 = load i32, ptr %232, align 4, !tbaa !94
  %329 = add nsw i32 %327, %328
  %330 = icmp sgt i32 %329, 0
  br i1 %330, label %331, label %799

331:                                              ; preds = %324
  %332 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 1
  %333 = load i64, ptr %332, align 8, !tbaa !122
  %334 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 1
  %335 = load i64, ptr %334, align 8, !tbaa !122
  %336 = add nsw i64 %335, %333
  %337 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1
  %338 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 1
  %339 = load i64, ptr %338, align 8, !tbaa !122
  %340 = add nsw i64 %336, %339
  %341 = load i64, ptr %16, align 8, !tbaa !122
  %342 = load i64, ptr %15, align 8, !tbaa !122
  %343 = load i64, ptr %337, align 8, !tbaa !122
  %344 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 2, i64 2
  %345 = load i64, ptr %344, align 8, !tbaa !122
  %346 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 2
  %347 = load i64, ptr %346, align 8, !tbaa !122
  %348 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 2
  %349 = load i64, ptr %348, align 8, !tbaa !122
  %350 = add i64 %340, %341
  %351 = add i64 %350, %342
  %352 = add i64 %351, %343
  %353 = add i64 %352, %345
  %354 = add i64 %353, %347
  %355 = add i64 %354, %349
  %356 = load i64, ptr %17, align 8, !tbaa !122
  %357 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 0, i64 3
  %358 = load i64, ptr %357, align 8, !tbaa !122
  %359 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 11, i64 1, i64 3
  %360 = load i64, ptr %359, align 8, !tbaa !122
  %361 = add i64 %355, %356
  %362 = add i64 %361, %358
  %363 = add i64 %362, %360
  %364 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 55
  %365 = load i32, ptr %364, align 16, !tbaa !61
  %366 = mul nsw i32 %365, %329
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 47
  %369 = load i32, ptr %368, align 8, !tbaa !69
  %370 = icmp eq i32 %369, 0
  %371 = icmp eq i32 %329, 1
  %372 = or i1 %371, %370
  br i1 %372, label %373, label %393

373:                                              ; preds = %331
  %374 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %375 = load i32, ptr %374, align 4, !tbaa !164
  %376 = uitofp i32 %375 to float
  %377 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %378 = load i32, ptr %377, align 16, !tbaa !165
  %379 = uitofp i32 %378 to float
  %380 = fdiv float %376, %379
  %381 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2
  %382 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 2
  %383 = load i64, ptr %382, align 8, !tbaa !122
  %384 = load i64, ptr %381, align 8, !tbaa !122
  %385 = add nsw i64 %384, %383
  %386 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 1
  %387 = load i64, ptr %386, align 8, !tbaa !122
  %388 = add nsw i64 %385, %387
  %389 = sitofp i64 %388 to float
  %390 = fmul float %380, %389
  %391 = sitofp i32 %329 to float
  %392 = fdiv float %390, %391
  br label %419

393:                                              ; preds = %331
  %394 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 14
  %395 = load i64, ptr %394, align 16, !tbaa !245
  %396 = shl nsw i64 %395, 1
  %397 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 43, i32 15
  %398 = load i64, ptr %397, align 8, !tbaa !246
  %399 = sub nsw i64 %396, %398
  %400 = sitofp i64 %399 to float
  %401 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 50
  %402 = load i32, ptr %401, align 4, !tbaa !48
  %403 = uitofp i32 %402 to float
  %404 = fmul float %400, %403
  %405 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 51
  %406 = load i32, ptr %405, align 8, !tbaa !43
  %407 = uitofp i32 %406 to float
  %408 = fdiv float %404, %407
  %409 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2
  %410 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 2
  %411 = load i64, ptr %410, align 8, !tbaa !122
  %412 = load i64, ptr %409, align 8, !tbaa !122
  %413 = add nsw i64 %412, %411
  %414 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 2, i64 1
  %415 = load i64, ptr %414, align 8, !tbaa !122
  %416 = add nsw i64 %413, %415
  %417 = sitofp i64 %416 to float
  %418 = fdiv float %417, %408
  br label %419

419:                                              ; preds = %393, %373
  %420 = phi float [ %392, %373 ], [ %418, %393 ]
  %421 = fdiv float %420, 1.250000e+02
  %422 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 26
  %423 = load ptr, ptr %422, align 16, !tbaa !51
  %424 = getelementptr inbounds %struct.x264_pps_t, ptr %423, i64 0, i32 15
  %425 = load i32, ptr %424, align 4, !tbaa !210
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %444, label %427

427:                                              ; preds = %419
  store i8 0, ptr %3, align 16, !tbaa !120
  %428 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 13
  %429 = load i64, ptr %428, align 8, !tbaa !122
  %430 = icmp eq i64 %429, 0
  br i1 %430, label %439, label %431

431:                                              ; preds = %427
  %432 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 13, i64 1
  %433 = load i64, ptr %432, align 8, !tbaa !122
  %434 = sitofp i64 %433 to double
  %435 = fmul double %434, 1.000000e+02
  %436 = sitofp i64 %429 to double
  %437 = fdiv double %435, %436
  %438 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.68, double noundef %437) #23
  br label %439

439:                                              ; preds = %431, %427
  %440 = sitofp i64 %340 to double
  %441 = fmul double %440, 1.000000e+02
  %442 = sitofp i64 %355 to double
  %443 = fdiv double %441, %442
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.69, double noundef %443, ptr noundef nonnull %3) #23
  br label %444

444:                                              ; preds = %439, %419
  %445 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 5
  %446 = load i32, ptr %445, align 4, !tbaa !159
  %447 = icmp eq i32 %446, 3
  br i1 %447, label %456, label %448

448:                                              ; preds = %444
  %449 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18
  %450 = load i32, ptr %449, align 8, !tbaa !94
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %471, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18, i64 1
  %454 = load i32, ptr %453, align 4, !tbaa !94
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %471, label %456

456:                                              ; preds = %452, %444
  %457 = load i32, ptr %232, align 4, !tbaa !94
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %471, label %459

459:                                              ; preds = %456
  %460 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18
  %461 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 18, i64 1
  %462 = load i32, ptr %461, align 4, !tbaa !94
  %463 = sitofp i32 %462 to double
  %464 = fmul double %463, 1.000000e+02
  %465 = sitofp i32 %457 to double
  %466 = fdiv double %464, %465
  %467 = load i32, ptr %460, align 8, !tbaa !94
  %468 = sitofp i32 %467 to double
  %469 = fmul double %468, 1.000000e+02
  %470 = fdiv double %469, %465
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.70, double noundef %466, double noundef %470) #23
  br label %471

471:                                              ; preds = %459, %456, %452, %448
  store i8 0, ptr %3, align 16, !tbaa !120
  %472 = icmp eq i64 %363, %367
  br i1 %472, label %494, label %473

473:                                              ; preds = %471
  %474 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 1
  %475 = load i64, ptr %474, align 8, !tbaa !122
  %476 = sitofp i64 %475 to double
  %477 = fmul double %476, 1.000000e+02
  %478 = sub nsw i64 %367, %363
  %479 = shl nsw i64 %478, 2
  %480 = sitofp i64 %479 to double
  %481 = fdiv double %477, %480
  %482 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 3
  %483 = load i64, ptr %482, align 8, !tbaa !122
  %484 = sitofp i64 %483 to double
  %485 = fmul double %484, 1.000000e+02
  %486 = sitofp i64 %478 to double
  %487 = fdiv double %485, %486
  %488 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 5
  %489 = load i64, ptr %488, align 8, !tbaa !122
  %490 = sitofp i64 %489 to double
  %491 = fmul double %490, 1.000000e+02
  %492 = fdiv double %491, %486
  %493 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.71, double noundef %481, double noundef %487, double noundef %492) #23
  br label %494

494:                                              ; preds = %473, %471
  %495 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15
  %496 = load i64, ptr %495, align 8, !tbaa !122
  %497 = sitofp i64 %496 to double
  %498 = fmul double %497, 1.000000e+02
  %499 = shl nsw i64 %363, 2
  %500 = sitofp i64 %499 to double
  %501 = fdiv double %498, %500
  %502 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 2
  %503 = load i64, ptr %502, align 8, !tbaa !122
  %504 = sitofp i64 %503 to double
  %505 = fmul double %504, 1.000000e+02
  %506 = sitofp i64 %363 to double
  %507 = fdiv double %505, %506
  %508 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 15, i64 4
  %509 = load i64, ptr %508, align 8, !tbaa !122
  %510 = sitofp i64 %509 to double
  %511 = fmul double %510, 1.000000e+02
  %512 = fdiv double %511, %506
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.72, double noundef %501, double noundef %507, double noundef %512, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %5) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %5, i8 0, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %6, i8 0, i64 32, i1 false)
  %513 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16
  br label %516

514:                                              ; preds = %516
  store i64 %527, ptr %6, align 16, !tbaa !122
  %515 = icmp eq i64 %527, 0
  br i1 %515, label %551, label %530

516:                                              ; preds = %494, %516
  %517 = phi i64 [ 0, %494 ], [ %528, %516 ]
  %518 = phi i64 [ 0, %494 ], [ %527, %516 ]
  %519 = getelementptr inbounds [13 x i64], ptr %513, i64 0, i64 %517
  %520 = load i64, ptr %519, align 8, !tbaa !122
  %521 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode16x16_fix, i64 0, i64 %517
  %522 = load i8, ptr %521, align 1, !tbaa !120
  %523 = zext i8 %522 to i64
  %524 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 %523
  %525 = load i64, ptr %524, align 8, !tbaa !122
  %526 = add nsw i64 %525, %520
  store i64 %526, ptr %524, align 8, !tbaa !122
  %527 = add nsw i64 %518, %520
  %528 = add nuw nsw i64 %517, 1
  %529 = icmp eq i64 %528, 7
  br i1 %529, label %514, label %516, !llvm.loop !476

530:                                              ; preds = %514
  %531 = load i64, ptr %5, align 16, !tbaa !122
  %532 = sitofp i64 %531 to double
  %533 = fmul double %532, 1.000000e+02
  %534 = sitofp i64 %527 to double
  %535 = fdiv double %533, %534
  %536 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 1
  %537 = load i64, ptr %536, align 8, !tbaa !122
  %538 = sitofp i64 %537 to double
  %539 = fmul double %538, 1.000000e+02
  %540 = fdiv double %539, %534
  %541 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 2
  %542 = load i64, ptr %541, align 16, !tbaa !122
  %543 = sitofp i64 %542 to double
  %544 = fmul double %543, 1.000000e+02
  %545 = fdiv double %544, %534
  %546 = getelementptr inbounds [9 x i64], ptr %5, i64 0, i64 3
  %547 = load i64, ptr %546, align 8, !tbaa !122
  %548 = sitofp i64 %547 to double
  %549 = fmul double %548, 1.000000e+02
  %550 = fdiv double %549, %534
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.73, double noundef %535, double noundef %540, double noundef %545, double noundef %550) #23
  br label %551

551:                                              ; preds = %530, %514
  br label %552

552:                                              ; preds = %551, %625
  %553 = phi i64 [ %626, %625 ], [ 1, %551 ]
  %554 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 %553
  %555 = load i64, ptr %554, align 8, !tbaa !122
  br label %561

556:                                              ; preds = %625
  %557 = getelementptr inbounds [4 x i64], ptr %6, i64 0, i64 3
  %558 = load i64, ptr %557, align 8, !tbaa !122
  br label %630

559:                                              ; preds = %561
  store i64 %573, ptr %554, align 8, !tbaa !122
  %560 = icmp eq i64 %573, 0
  br i1 %560, label %625, label %575

561:                                              ; preds = %552, %561
  %562 = phi i64 [ 0, %552 ], [ %566, %561 ]
  %563 = phi i64 [ %555, %552 ], [ %573, %561 ]
  %564 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16, i64 %553, i64 %562
  %565 = load i64, ptr %564, align 8, !tbaa !122
  %566 = add nuw nsw i64 %562, 1
  %567 = getelementptr inbounds [13 x i8], ptr @x264_mb_pred_mode4x4_fix, i64 0, i64 %566
  %568 = load i8, ptr %567, align 1, !tbaa !120
  %569 = sext i8 %568 to i64
  %570 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 %569
  %571 = load i64, ptr %570, align 8, !tbaa !122
  %572 = add nsw i64 %571, %565
  store i64 %572, ptr %570, align 8, !tbaa !122
  %573 = add nsw i64 %563, %565
  %574 = icmp eq i64 %566, 12
  br i1 %574, label %559, label %561, !llvm.loop !477

575:                                              ; preds = %559
  %576 = trunc i64 %553 to i32
  %577 = shl i32 %576, 2
  %578 = xor i32 %577, 12
  %579 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553
  %580 = load i64, ptr %579, align 8, !tbaa !122
  %581 = sitofp i64 %580 to double
  %582 = fmul double %581, 1.000000e+02
  %583 = sitofp i64 %573 to double
  %584 = fdiv double %582, %583
  %585 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 1
  %586 = load i64, ptr %585, align 8, !tbaa !122
  %587 = sitofp i64 %586 to double
  %588 = fmul double %587, 1.000000e+02
  %589 = fdiv double %588, %583
  %590 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 2
  %591 = load i64, ptr %590, align 8, !tbaa !122
  %592 = sitofp i64 %591 to double
  %593 = fmul double %592, 1.000000e+02
  %594 = fdiv double %593, %583
  %595 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 3
  %596 = load i64, ptr %595, align 8, !tbaa !122
  %597 = sitofp i64 %596 to double
  %598 = fmul double %597, 1.000000e+02
  %599 = fdiv double %598, %583
  %600 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 4
  %601 = load i64, ptr %600, align 8, !tbaa !122
  %602 = sitofp i64 %601 to double
  %603 = fmul double %602, 1.000000e+02
  %604 = fdiv double %603, %583
  %605 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 5
  %606 = load i64, ptr %605, align 8, !tbaa !122
  %607 = sitofp i64 %606 to double
  %608 = fmul double %607, 1.000000e+02
  %609 = fdiv double %608, %583
  %610 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 6
  %611 = load i64, ptr %610, align 8, !tbaa !122
  %612 = sitofp i64 %611 to double
  %613 = fmul double %612, 1.000000e+02
  %614 = fdiv double %613, %583
  %615 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 7
  %616 = load i64, ptr %615, align 8, !tbaa !122
  %617 = sitofp i64 %616 to double
  %618 = fmul double %617, 1.000000e+02
  %619 = fdiv double %618, %583
  %620 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 %553, i64 8
  %621 = load i64, ptr %620, align 8, !tbaa !122
  %622 = sitofp i64 %621 to double
  %623 = fmul double %622, 1.000000e+02
  %624 = fdiv double %623, %583
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %578, double noundef %584, double noundef %589, double noundef %594, double noundef %599, double noundef %604, double noundef %609, double noundef %614, double noundef %619, double noundef %624) #23
  br label %625

625:                                              ; preds = %559, %575
  %626 = add nuw nsw i64 %553, 1
  %627 = icmp eq i64 %626, 3
  br i1 %627, label %556, label %552, !llvm.loop !478

628:                                              ; preds = %630
  store i64 %641, ptr %557, align 8, !tbaa !122
  %629 = icmp eq i64 %641, 0
  br i1 %629, label %666, label %644

630:                                              ; preds = %556, %630
  %631 = phi i64 [ 0, %556 ], [ %642, %630 ]
  %632 = phi i64 [ %558, %556 ], [ %641, %630 ]
  %633 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 16, i64 3, i64 %631
  %634 = load i64, ptr %633, align 8, !tbaa !122
  %635 = getelementptr inbounds [7 x i8], ptr @x264_mb_pred_mode8x8c_fix, i64 0, i64 %631
  %636 = load i8, ptr %635, align 1, !tbaa !120
  %637 = zext i8 %636 to i64
  %638 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 %637
  %639 = load i64, ptr %638, align 8, !tbaa !122
  %640 = add nsw i64 %639, %634
  store i64 %640, ptr %638, align 8, !tbaa !122
  %641 = add nsw i64 %632, %634
  %642 = add nuw nsw i64 %631, 1
  %643 = icmp eq i64 %642, 7
  br i1 %643, label %628, label %630, !llvm.loop !479

644:                                              ; preds = %628
  %645 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3
  %646 = load i64, ptr %645, align 8, !tbaa !122
  %647 = sitofp i64 %646 to double
  %648 = fmul double %647, 1.000000e+02
  %649 = sitofp i64 %641 to double
  %650 = fdiv double %648, %649
  %651 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 1
  %652 = load i64, ptr %651, align 16, !tbaa !122
  %653 = sitofp i64 %652 to double
  %654 = fmul double %653, 1.000000e+02
  %655 = fdiv double %654, %649
  %656 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 2
  %657 = load i64, ptr %656, align 8, !tbaa !122
  %658 = sitofp i64 %657 to double
  %659 = fmul double %658, 1.000000e+02
  %660 = fdiv double %659, %649
  %661 = getelementptr inbounds [4 x [9 x i64]], ptr %5, i64 0, i64 3, i64 3
  %662 = load i64, ptr %661, align 16, !tbaa !122
  %663 = sitofp i64 %662 to double
  %664 = fmul double %663, 1.000000e+02
  %665 = fdiv double %664, %649
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.75, double noundef %650, double noundef %655, double noundef %660, double noundef %665) #23
  br label %666

666:                                              ; preds = %644, %628
  %667 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 3
  %668 = load i32, ptr %667, align 4, !tbaa !81
  %669 = icmp eq i32 %668, 2
  br i1 %669, label %670, label %680

670:                                              ; preds = %666
  %671 = load i32, ptr %166, align 8, !tbaa !94
  %672 = icmp sgt i32 %671, 0
  br i1 %672, label %673, label %680

673:                                              ; preds = %670
  %674 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 19
  %675 = load i32, ptr %674, align 8, !tbaa !94
  %676 = sitofp i32 %675 to double
  %677 = fmul double %676, 1.000000e+02
  %678 = sitofp i32 %671 to double
  %679 = fdiv double %677, %678
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.76, double noundef %679) #23
  br label %680

680:                                              ; preds = %673, %670, %666
  br label %681

681:                                              ; preds = %680, %692
  %682 = phi i1 [ false, %692 ], [ true, %680 ]
  %683 = phi i64 [ 1, %692 ], [ 0, %680 ]
  %684 = trunc i64 %683 to i32
  br label %689

685:                                              ; preds = %692
  %686 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 23
  %687 = load i32, ptr %686, align 16, !tbaa !147
  %688 = icmp eq i32 %687, 0
  br i1 %688, label %742, label %731

689:                                              ; preds = %681, %730
  %690 = phi i1 [ true, %681 ], [ false, %730 ]
  %691 = phi i64 [ 0, %681 ], [ 1, %730 ]
  br label %701

692:                                              ; preds = %730
  br i1 %682, label %681, label %685, !llvm.loop !480

693:                                              ; preds = %701
  %694 = icmp eq i32 %710, 0
  br i1 %694, label %730, label %695

695:                                              ; preds = %693
  %696 = icmp slt i32 %710, 0
  br i1 %696, label %713, label %697

697:                                              ; preds = %695
  %698 = sitofp i64 %708 to double
  %699 = add nuw i32 %710, 1
  %700 = zext i32 %699 to i64
  br label %717

701:                                              ; preds = %689, %701
  %702 = phi i64 [ 0, %689 ], [ %711, %701 ]
  %703 = phi i32 [ 0, %689 ], [ %710, %701 ]
  %704 = phi i64 [ 0, %689 ], [ %708, %701 ]
  %705 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 14, i64 %691, i64 %683, i64 %702
  %706 = load i64, ptr %705, align 8, !tbaa !122
  %707 = icmp eq i64 %706, 0
  %708 = add nsw i64 %706, %704
  %709 = trunc i64 %702 to i32
  %710 = select i1 %707, i32 %703, i32 %709
  %711 = add nuw nsw i64 %702, 1
  %712 = icmp eq i64 %711, 32
  br i1 %712, label %693, label %701, !llvm.loop !481

713:                                              ; preds = %717, %695
  %714 = getelementptr inbounds [3 x i8], ptr @.str.78, i64 0, i64 %691
  %715 = load i8, ptr %714, align 1, !tbaa !120
  %716 = sext i8 %715 to i32
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %716, i32 noundef %684, ptr noundef nonnull %3) #23
  br label %730

717:                                              ; preds = %697, %717
  %718 = phi i64 [ 0, %697 ], [ %728, %717 ]
  %719 = phi ptr [ %3, %697 ], [ %727, %717 ]
  %720 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 14, i64 %691, i64 %683, i64 %718
  %721 = load i64, ptr %720, align 8, !tbaa !122
  %722 = sitofp i64 %721 to double
  %723 = fmul double %722, 1.000000e+02
  %724 = fdiv double %723, %698
  %725 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %719, ptr noundef nonnull dereferenceable(1) @.str.63, double noundef %724) #23
  %726 = sext i32 %725 to i64
  %727 = getelementptr inbounds i8, ptr %719, i64 %726
  %728 = add nuw nsw i64 %718, 1
  %729 = icmp eq i64 %728, %700
  br i1 %729, label %713, label %717, !llvm.loop !482

730:                                              ; preds = %693, %713
  br i1 %690, label %689, label %692, !llvm.loop !483

731:                                              ; preds = %685
  %732 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10
  %733 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10, i64 2
  %734 = load double, ptr %733, align 8, !tbaa !123
  %735 = load double, ptr %732, align 8, !tbaa !123
  %736 = fadd double %734, %735
  %737 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 10, i64 1
  %738 = load double, ptr %737, align 8, !tbaa !123
  %739 = fadd double %736, %738
  %740 = sitofp i32 %329 to double
  %741 = fdiv double %739, %740
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.79, double noundef %741) #23
  br label %742

742:                                              ; preds = %731, %685
  %743 = load i32, ptr %71, align 4, !tbaa !146
  %744 = icmp eq i32 %743, 0
  br i1 %744, label %796, label %745

745:                                              ; preds = %742
  %746 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7
  %747 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 2
  %748 = load double, ptr %747, align 8, !tbaa !123
  %749 = load double, ptr %746, align 8, !tbaa !123
  %750 = fadd double %748, %749
  %751 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 7, i64 1
  %752 = load double, ptr %751, align 8, !tbaa !123
  %753 = fadd double %750, %752
  %754 = sitofp i32 %329 to double
  %755 = fdiv double %753, %754
  %756 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8
  %757 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 2
  %758 = load double, ptr %757, align 8, !tbaa !123
  %759 = load double, ptr %756, align 8, !tbaa !123
  %760 = fadd double %758, %759
  %761 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 8, i64 1
  %762 = load double, ptr %761, align 8, !tbaa !123
  %763 = fadd double %760, %762
  %764 = fdiv double %763, %754
  %765 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9
  %766 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 2
  %767 = load double, ptr %766, align 8, !tbaa !123
  %768 = load double, ptr %765, align 8, !tbaa !123
  %769 = fadd double %767, %768
  %770 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 9, i64 1
  %771 = load double, ptr %770, align 8, !tbaa !123
  %772 = fadd double %769, %771
  %773 = fdiv double %772, %754
  %774 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6
  %775 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 2
  %776 = load double, ptr %775, align 8, !tbaa !123
  %777 = load double, ptr %774, align 8, !tbaa !123
  %778 = fadd double %776, %777
  %779 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 6, i64 1
  %780 = load double, ptr %779, align 8, !tbaa !123
  %781 = fadd double %778, %780
  %782 = fdiv double %781, %754
  %783 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5
  %784 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 2
  %785 = load i64, ptr %784, align 8, !tbaa !122
  %786 = load i64, ptr %783, align 8, !tbaa !122
  %787 = add nsw i64 %786, %785
  %788 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 57, i32 5, i64 1
  %789 = load i64, ptr %788, align 8, !tbaa !122
  %790 = add nsw i64 %787, %789
  %791 = zext nneg i32 %329 to i64
  %792 = mul nsw i64 %791, %14
  %793 = call fastcc float @x264_psnr(i64 noundef %790, i64 noundef %792) #24
  %794 = fpext float %793 to double
  %795 = fpext float %421 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.80, double noundef %755, double noundef %764, double noundef %773, double noundef %782, double noundef %794, double noundef %795) #23
  br label %798

796:                                              ; preds = %742
  %797 = fpext float %421 to double
  call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.81, double noundef %797) #23
  br label %798

798:                                              ; preds = %796, %745
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %5) #22
  br label %799

799:                                              ; preds = %798, %324
  call void @x264_ratecontrol_delete(ptr noundef nonnull %0) #23
  %800 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 19
  %801 = load ptr, ptr %800, align 8, !tbaa !38
  %802 = icmp eq ptr %801, null
  br i1 %802, label %804, label %803

803:                                              ; preds = %799
  call void @free(ptr noundef nonnull %801) #23
  br label %804

804:                                              ; preds = %803, %799
  %805 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 21
  %806 = load ptr, ptr %805, align 8, !tbaa !39
  %807 = icmp eq ptr %806, null
  br i1 %807, label %809, label %808

808:                                              ; preds = %804
  call void @free(ptr noundef nonnull %806) #23
  br label %809

809:                                              ; preds = %808, %804
  call void @x264_cqm_delete(ptr noundef nonnull %0) #23
  %810 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 8
  %811 = load ptr, ptr %810, align 8, !tbaa !113
  call void @x264_free(ptr noundef %811) #23
  call void @x264_analyse_free_costs(ptr noundef nonnull %0) #23
  %812 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %813 = load i32, ptr %812, align 4, !tbaa !67
  %814 = icmp sgt i32 %813, 1
  br i1 %814, label %815, label %821

815:                                              ; preds = %809
  %816 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %817 = load i32, ptr %816, align 16, !tbaa !196
  %818 = sext i32 %817 to i64
  %819 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %818
  %820 = load ptr, ptr %819, align 8, !tbaa !88
  br label %821

821:                                              ; preds = %815, %809
  %822 = phi ptr [ %820, %815 ], [ %0, %809 ]
  %823 = getelementptr inbounds %struct.x264_t, ptr %822, i64 0, i32 43
  %824 = getelementptr inbounds %struct.x264_t, ptr %822, i64 0, i32 43, i32 1
  %825 = load ptr, ptr %824, align 8, !tbaa !88
  call void @x264_frame_delete_list(ptr noundef %825) #23
  %826 = getelementptr inbounds %struct.x264_t, ptr %822, i64 0, i32 43, i32 1, i64 1
  %827 = load ptr, ptr %826, align 8, !tbaa !88
  call void @x264_frame_delete_list(ptr noundef %827) #23
  %828 = load ptr, ptr %823, align 16, !tbaa !89
  call void @x264_frame_delete_list(ptr noundef %828) #23
  %829 = getelementptr inbounds %struct.x264_t, ptr %822, i64 0, i32 43, i32 2
  %830 = load ptr, ptr %829, align 8, !tbaa !90
  call void @x264_frame_delete_list(ptr noundef %830) #23
  %831 = getelementptr inbounds %struct.x264_t, ptr %822, i64 0, i32 1
  %832 = load ptr, ptr %831, align 16, !tbaa !88
  %833 = getelementptr inbounds %struct.x264_param_t, ptr %832, i64 0, i32 1
  %834 = load i32, ptr %833, align 4, !tbaa !115
  %835 = icmp sgt i32 %834, 0
  br i1 %835, label %836, label %839

836:                                              ; preds = %821
  %837 = getelementptr inbounds %struct.x264_param_t, ptr %832, i64 0, i32 2
  %838 = zext nneg i32 %834 to i64
  br label %840

839:                                              ; preds = %879, %821
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #22
  ret void

840:                                              ; preds = %836, %879
  %841 = phi i64 [ %838, %836 ], [ %842, %879 ]
  %842 = add nsw i64 %841, -1
  %843 = load i32, ptr %837, align 8, !tbaa !118
  %844 = icmp eq i32 %843, 0
  %845 = icmp eq i64 %842, 0
  %846 = select i1 %844, i1 true, i1 %845
  br i1 %846, label %847, label %879

847:                                              ; preds = %840
  %848 = getelementptr inbounds %struct.x264_t, ptr %832, i64 0, i32 1, i64 %842
  %849 = load ptr, ptr %848, align 8, !tbaa !88
  %850 = getelementptr inbounds %struct.x264_t, ptr %849, i64 0, i32 43, i32 3
  %851 = load ptr, ptr %850, align 8, !tbaa !88
  %852 = icmp eq ptr %851, null
  br i1 %852, label %867, label %853

853:                                              ; preds = %847, %861
  %854 = phi ptr [ %863, %861 ], [ %851, %847 ]
  %855 = phi ptr [ %862, %861 ], [ %850, %847 ]
  %856 = getelementptr inbounds %struct.x264_frame, ptr %854, i64 0, i32 78
  %857 = load i32, ptr %856, align 16, !tbaa !234
  %858 = add nsw i32 %857, -1
  store i32 %858, ptr %856, align 16, !tbaa !234
  %859 = icmp eq i32 %858, 0
  br i1 %859, label %860, label %861

860:                                              ; preds = %853
  call void @x264_frame_delete(ptr noundef nonnull %854) #23
  br label %861

861:                                              ; preds = %853, %860
  %862 = getelementptr inbounds ptr, ptr %855, i64 1
  %863 = load ptr, ptr %862, align 8, !tbaa !88
  %864 = icmp eq ptr %863, null
  br i1 %864, label %865, label %853, !llvm.loop !484

865:                                              ; preds = %861
  %866 = load ptr, ptr %848, align 8, !tbaa !88
  br label %867

867:                                              ; preds = %865, %847
  %868 = phi ptr [ %866, %865 ], [ %849, %847 ]
  %869 = getelementptr inbounds %struct.x264_t, ptr %868, i64 0, i32 45
  %870 = load ptr, ptr %869, align 8, !tbaa !88
  %871 = getelementptr inbounds %struct.x264_frame, ptr %870, i64 0, i32 78
  %872 = load i32, ptr %871, align 16, !tbaa !234
  %873 = add nsw i32 %872, -1
  store i32 %873, ptr %871, align 16, !tbaa !234
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %875, label %877

875:                                              ; preds = %867
  call void @x264_frame_delete(ptr noundef nonnull %870) #23
  %876 = load ptr, ptr %848, align 8, !tbaa !88
  br label %877

877:                                              ; preds = %875, %867
  %878 = phi ptr [ %876, %875 ], [ %868, %867 ]
  call void @x264_macroblock_cache_free(ptr noundef %878) #23
  br label %879

879:                                              ; preds = %840, %877
  %880 = getelementptr inbounds %struct.x264_t, ptr %832, i64 0, i32 1, i64 %842
  %881 = load ptr, ptr %880, align 8, !tbaa !88
  call void @x264_macroblock_thread_free(ptr noundef %881, i32 noundef 0) #23
  %882 = load ptr, ptr %880, align 8, !tbaa !88
  %883 = getelementptr inbounds %struct.x264_t, ptr %882, i64 0, i32 7, i32 4
  %884 = load ptr, ptr %883, align 8, !tbaa !125
  call void @x264_free(ptr noundef %884) #23
  %885 = load ptr, ptr %880, align 8, !tbaa !88
  %886 = getelementptr inbounds %struct.x264_t, ptr %885, i64 0, i32 7, i32 2
  %887 = load ptr, ptr %886, align 8, !tbaa !126
  call void @x264_free(ptr noundef %887) #23
  %888 = load ptr, ptr %880, align 8, !tbaa !88
  call void @x264_free(ptr noundef %888) #23
  %889 = icmp sgt i64 %841, 1
  br i1 %889, label %840, label %839, !llvm.loop !485
}

; Function Attrs: optsize
declare void @x264_lookahead_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @x264_print_intra(ptr nocapture noundef readonly %0, double noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #16 {
  %5 = icmp eq i32 %2, 0
  %6 = select i1 %5, ptr @.str.84, ptr @.str.83
  %7 = getelementptr inbounds i64, ptr %0, i64 2
  %8 = load i64, ptr %7, align 8, !tbaa !122
  %9 = sitofp i64 %8 to double
  %10 = fdiv double %9, %1
  %11 = getelementptr inbounds i64, ptr %0, i64 1
  %12 = load i64, ptr %11, align 8, !tbaa !122
  %13 = sitofp i64 %12 to double
  %14 = fdiv double %13, %1
  %15 = load i64, ptr %0, align 8, !tbaa !122
  %16 = sitofp i64 %15 to double
  %17 = fdiv double %16, %1
  %18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef nonnull %6, double noundef %10, double noundef %14, double noundef %17) #23
  br i1 %5, label %27, label %19

19:                                               ; preds = %4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds i8, ptr %3, i64 %20
  %22 = getelementptr inbounds i64, ptr %0, i64 3
  %23 = load i64, ptr %22, align 8, !tbaa !122
  %24 = sitofp i64 %23 to double
  %25 = fdiv double %24, %1
  %26 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %21, ptr noundef nonnull dereferenceable(1) @.str.63, double noundef %25) #23
  br label %27

27:                                               ; preds = %19, %4
  ret void
}

; Function Attrs: optsize
declare void @x264_ratecontrol_summary(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_ratecontrol_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: optsize
declare void @x264_cqm_delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_analyse_free_costs(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_frame_delete_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_cache_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @x264_macroblock_thread_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @x264_encoder_delayed_frames(ptr nocapture noundef readonly %0) local_unnamed_addr #20 {
  %2 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 12
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = zext nneg i32 %3 to i64
  br label %13

7:                                                ; preds = %13
  %8 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 16, !tbaa !196
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !88
  br label %23

13:                                               ; preds = %5, %13
  %14 = phi i64 [ 0, %5 ], [ %21, %13 ]
  %15 = phi i32 [ 0, %5 ], [ %20, %13 ]
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 1, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !88
  %18 = getelementptr inbounds %struct.x264_t, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !281
  %20 = add nsw i32 %19, %15
  %21 = add nuw nsw i64 %14, 1
  %22 = icmp eq i64 %21, %6
  br i1 %22, label %7, label %13, !llvm.loop !486

23:                                               ; preds = %7, %1
  %24 = phi ptr [ %12, %7 ], [ %0, %1 ]
  %25 = phi i32 [ %20, %7 ], [ 0, %1 ]
  %26 = getelementptr inbounds %struct.x264_t, ptr %24, i64 0, i32 43
  %27 = load ptr, ptr %26, align 16, !tbaa !89
  %28 = load ptr, ptr %27, align 8, !tbaa !88
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %43, %23
  %31 = phi i32 [ %25, %23 ], [ %46, %43 ]
  %32 = getelementptr inbounds %struct.x264_t, ptr %24, i64 0, i32 75
  %33 = load ptr, ptr %32, align 16, !tbaa !254
  %34 = getelementptr inbounds %struct.x264_lookahead_t, ptr %33, i64 0, i32 6, i32 2
  %35 = load i32, ptr %34, align 4, !tbaa !487
  %36 = getelementptr inbounds %struct.x264_lookahead_t, ptr %33, i64 0, i32 7, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !488
  %38 = getelementptr inbounds %struct.x264_lookahead_t, ptr %33, i64 0, i32 8, i32 2
  %39 = load i32, ptr %38, align 4, !tbaa !489
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
  %49 = load ptr, ptr %48, align 8, !tbaa !88
  %50 = icmp eq ptr %49, null
  br i1 %50, label %30, label %43, !llvm.loop !490
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline nounwind optsize willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !12, i64 696}
!7 = !{!"x264_param_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !11, i64 44, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !12, i64 152, !9, i64 160, !9, i64 176, !9, i64 192, !9, i64 208, !9, i64 224, !9, i64 288, !12, i64 352, !12, i64 360, !8, i64 368, !8, i64 372, !12, i64 376, !13, i64 384, !15, i64 488, !8, i64 632, !8, i64 636, !8, i64 640, !8, i64 644, !8, i64 648, !8, i64 652, !8, i64 656, !8, i64 660, !8, i64 664, !8, i64 668, !8, i64 672, !8, i64 676, !8, i64 680, !8, i64 684, !8, i64 688, !8, i64 692, !12, i64 696}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !14, i64 72, !14, i64 76, !8, i64 80, !9, i64 84, !8, i64 92, !8, i64 96}
!14 = !{!"float", !9, i64 0}
!15 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !8, i64 36, !8, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !8, i64 56, !14, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !12, i64 80, !8, i64 88, !12, i64 96, !14, i64 104, !14, i64 108, !14, i64 112, !12, i64 120, !8, i64 128, !12, i64 136}
!16 = !{i32 -1, i32 1}
!17 = !{!18, !12, i64 152}
!18 = !{!"x264_t", !7, i64 0, !9, i64 704, !8, i64 1736, !8, i64 1740, !8, i64 1744, !8, i64 1748, !8, i64 1752, !19, i64 1760, !12, i64 1832, !8, i64 1840, !8, i64 1844, !8, i64 1848, !8, i64 1852, !8, i64 1856, !8, i64 1860, !8, i64 1864, !8, i64 1868, !8, i64 1872, !8, i64 1876, !8, i64 1880, !8, i64 1884, !8, i64 1888, !8, i64 1892, !9, i64 1896, !12, i64 3200, !9, i64 3208, !12, i64 3328, !8, i64 3336, !8, i64 3340, !9, i64 3344, !9, i64 3376, !9, i64 3392, !9, i64 3424, !9, i64 3440, !9, i64 3472, !9, i64 3488, !9, i64 3520, !9, i64 3536, !9, i64 4272, !12, i64 7216, !22, i64 7232, !23, i64 13904, !24, i64 14416, !12, i64 14680, !12, i64 14688, !8, i64 14696, !9, i64 14704, !8, i64 14856, !9, i64 14864, !9, i64 15016, !8, i64 15024, !8, i64 15028, !21, i64 15032, !25, i64 15040, !26, i64 16368, !12, i64 26704, !29, i64 26712, !9, i64 30400, !9, i64 30912, !9, i64 31168, !12, i64 31176, !9, i64 31184, !9, i64 31232, !9, i64 31248, !9, i64 31304, !9, i64 31360, !9, i64 31456, !12, i64 31552, !32, i64 31560, !33, i64 32616, !34, i64 32912, !35, i64 33032, !36, i64 33080, !37, i64 33256, !12, i64 33328}
!19 = !{!"", !8, i64 0, !8, i64 4, !12, i64 8, !8, i64 16, !12, i64 24, !20, i64 32}
!20 = !{!"bs_s", !12, i64 0, !12, i64 8, !12, i64 16, !21, i64 24, !8, i64 32, !8, i64 36}
!21 = !{!"long", !9, i64 0}
!22 = !{!"", !12, i64 0, !12, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !9, i64 60, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !9, i64 96, !9, i64 352, !8, i64 6496, !8, i64 6500, !9, i64 6504, !8, i64 6632, !8, i64 6636, !8, i64 6640, !8, i64 6644, !8, i64 6648, !8, i64 6652, !8, i64 6656, !8, i64 6660}
!23 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !8, i64 48, !9, i64 52}
!24 = !{!"", !12, i64 0, !9, i64 8, !12, i64 24, !9, i64 32, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !21, i64 208, !21, i64 216, !9, i64 224, !21, i64 240, !21, i64 248, !8, i64 256, !8, i64 260}
!25 = !{!"", !9, i64 0, !9, i64 32, !9, i64 48, !9, i64 560}
!26 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104, !9, i64 112, !8, i64 120, !9, i64 124, !9, i64 140, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288, !12, i64 296, !9, i64 304, !9, i64 320, !9, i64 336, !9, i64 352, !12, i64 864, !12, i64 872, !12, i64 880, !9, i64 888, !8, i64 1016, !8, i64 1020, !9, i64 1024, !8, i64 1028, !8, i64 1032, !8, i64 1036, !8, i64 1040, !8, i64 1044, !8, i64 1048, !8, i64 1052, !8, i64 1056, !8, i64 1060, !27, i64 1072, !28, i64 8656, !8, i64 9424, !8, i64 9428, !8, i64 9432, !8, i64 9436, !8, i64 9440, !8, i64 9444, !8, i64 9448, !8, i64 9452, !9, i64 9456, !8, i64 9472, !8, i64 9476, !9, i64 9480, !12, i64 9992, !9, i64 10000, !12, i64 10256, !9, i64 10264, !8, i64 10284, !9, i64 10288}
!27 = !{!"", !9, i64 0, !9, i64 384, !9, i64 1248, !9, i64 1504, !9, i64 1760, !9, i64 2144, !9, i64 2624, !9, i64 2640, !8, i64 2656, !8, i64 2660, !9, i64 2672, !9, i64 3184, !9, i64 3696, !9, i64 3776, !9, i64 3904, !9, i64 3928, !9, i64 3952, !9, i64 3976, !9, i64 3984, !9, i64 7056, !9, i64 7312, !9, i64 7568}
!28 = !{!"", !9, i64 0, !9, i64 48, !9, i64 96, !9, i64 176, !9, i64 496, !9, i64 656, !9, i64 696, !9, i64 728, !8, i64 736, !9, i64 740, !8, i64 744, !8, i64 748, !8, i64 752, !8, i64 756}
!29 = !{!"", !30, i64 0, !9, i64 704, !9, i64 728, !9, i64 768, !9, i64 808, !9, i64 880, !9, i64 920, !9, i64 960, !9, i64 1000, !9, i64 1040, !9, i64 1080, !9, i64 1120, !9, i64 1880, !9, i64 2152, !9, i64 2168, !9, i64 3192, !9, i64 3240, !9, i64 3656, !9, i64 3664, !9, i64 3672}
!30 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !8, i64 88, !8, i64 92, !8, i64 96, !9, i64 100, !9, i64 108, !9, i64 364, !9, i64 432, !9, i64 456, !9, i64 664, !9, i64 672, !31, i64 696}
!31 = !{!"double", !9, i64 0}
!32 = !{!"", !9, i64 0, !9, i64 56, !9, i64 112, !9, i64 168, !9, i64 224, !9, i64 256, !9, i64 312, !9, i64 368, !9, i64 424, !9, i64 480, !9, i64 536, !12, i64 592, !9, i64 600, !9, i64 632, !12, i64 664, !12, i64 672, !9, i64 680, !9, i64 736, !9, i64 792, !9, i64 848, !9, i64 904, !12, i64 960, !12, i64 968, !12, i64 976, !12, i64 984, !12, i64 992, !12, i64 1000, !12, i64 1008, !12, i64 1016, !12, i64 1024, !12, i64 1032, !12, i64 1040, !12, i64 1048}
!33 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 104, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !12, i64 280, !12, i64 288}
!34 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!35 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!36 = !{!"", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !9, i64 88, !9, i64 136}
!37 = !{!"", !9, i64 0, !9, i64 16, !9, i64 32, !9, i64 48, !12, i64 64}
!38 = !{!18, !12, i64 568}
!39 = !{!18, !12, i64 584}
!40 = !{!18, !8, i64 1844}
!41 = !{!18, !8, i64 1848}
!42 = !{!18, !8, i64 3336}
!43 = !{!18, !8, i64 664}
!44 = !{!18, !8, i64 668}
!45 = !{!18, !8, i64 100}
!46 = !{!18, !8, i64 3340}
!47 = !{!18, !8, i64 112}
!48 = !{!18, !8, i64 660}
!49 = !{!18, !12, i64 3200}
!50 = !{!18, !8, i64 644}
!51 = !{!18, !12, i64 3328}
!52 = !{!53, !8, i64 44}
!53 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !9, i64 72}
!54 = !{!18, !12, i64 7216}
!55 = !{!56, !8, i64 1084}
!56 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !9, i64 52, !8, i64 1076, !8, i64 1080, !8, i64 1084, !8, i64 1088, !8, i64 1092, !8, i64 1096, !8, i64 1100, !8, i64 1104, !57, i64 1108, !8, i64 1124, !58, i64 1128, !8, i64 1296}
!57 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!58 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !59, i64 84, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164}
!59 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44}
!60 = !{!56, !8, i64 1088}
!61 = !{!18, !8, i64 16368}
!62 = !{!18, !8, i64 104}
!63 = !{!18, !8, i64 576}
!64 = !{!18, !8, i64 552}
!65 = !{!18, !8, i64 528}
!66 = !{!18, !8, i64 556}
!67 = !{!18, !8, i64 1852}
!68 = !{!18, !8, i64 16}
!69 = !{!18, !8, i64 648}
!70 = !{!18, !8, i64 488}
!71 = !{!18, !8, i64 560}
!72 = !{!18, !8, i64 14612}
!73 = !{!18, !8, i64 14616}
!74 = !{!18, !8, i64 80}
!75 = !{!18, !8, i64 14604}
!76 = !{!56, !8, i64 1288}
!77 = !{!18, !8, i64 14608}
!78 = !{!56, !8, i64 1292}
!79 = !{!18, !8, i64 14600}
!80 = !{!18, !8, i64 92}
!81 = !{!18, !8, i64 396}
!82 = !{!18, !8, i64 14672}
!83 = !{!18, !8, i64 388}
!84 = !{!18, !8, i64 14676}
!85 = !{!18, !8, i64 84}
!86 = !{!18, !8, i64 14592}
!87 = !{!18, !8, i64 14596}
!88 = !{!12, !12, i64 0}
!89 = !{!18, !12, i64 14416}
!90 = !{!18, !12, i64 14440}
!91 = !{!18, !8, i64 14696}
!92 = !{!18, !8, i64 14856}
!93 = !{!18, !8, i64 1880}
!94 = !{!8, !8, i64 0}
!95 = !{!18, !8, i64 0}
!96 = !{!18, !8, i64 128}
!97 = !{!18, !8, i64 136}
!98 = !{!99, !8, i64 16}
!99 = !{!"", !9, i64 0, !8, i64 16}
!100 = distinct !{!100, !101}
!101 = !{!"llvm.loop.mustprogress"}
!102 = !{!18, !8, i64 496}
!103 = !{!18, !8, i64 500}
!104 = distinct !{!104, !101}
!105 = !{!106, !106, i64 0}
!106 = !{!"short", !9, i64 0}
!107 = !{!18, !8, i64 1760}
!108 = !{!18, !8, i64 20}
!109 = !{!18, !8, i64 24}
!110 = !{!18, !8, i64 492}
!111 = !{!18, !14, i64 536}
!112 = !{!18, !8, i64 1776}
!113 = !{!18, !12, i64 1832}
!114 = !{!18, !8, i64 1840}
!115 = !{!18, !8, i64 4}
!116 = distinct !{!116, !101}
!117 = !{!18, !8, i64 692}
!118 = !{!18, !8, i64 8}
!119 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 12, i64 4, !94, i64 16, i64 4, !94, i64 20, i64 4, !94, i64 24, i64 4, !94, i64 28, i64 4, !94, i64 32, i64 4, !94, i64 36, i64 4, !94, i64 40, i64 4, !94, i64 44, i64 4, !94, i64 48, i64 4, !94, i64 52, i64 4, !94, i64 56, i64 4, !94, i64 60, i64 4, !94, i64 64, i64 4, !94, i64 68, i64 4, !94, i64 72, i64 4, !94, i64 76, i64 4, !94, i64 80, i64 4, !94, i64 84, i64 4, !94, i64 88, i64 4, !94, i64 92, i64 4, !94, i64 96, i64 4, !94, i64 100, i64 4, !94, i64 104, i64 4, !94, i64 108, i64 4, !94, i64 112, i64 4, !94, i64 116, i64 4, !94, i64 120, i64 4, !94, i64 124, i64 4, !94, i64 128, i64 4, !94, i64 132, i64 4, !94, i64 136, i64 4, !94, i64 140, i64 4, !94, i64 144, i64 4, !94, i64 152, i64 8, !88, i64 160, i64 16, !120, i64 176, i64 16, !120, i64 192, i64 16, !120, i64 208, i64 16, !120, i64 224, i64 64, !120, i64 288, i64 64, !120, i64 352, i64 8, !88, i64 360, i64 8, !88, i64 368, i64 4, !94, i64 372, i64 4, !94, i64 376, i64 8, !88, i64 384, i64 4, !94, i64 388, i64 4, !94, i64 392, i64 4, !94, i64 396, i64 4, !94, i64 400, i64 4, !94, i64 404, i64 4, !94, i64 408, i64 4, !94, i64 412, i64 4, !94, i64 416, i64 4, !94, i64 420, i64 4, !94, i64 424, i64 4, !94, i64 428, i64 4, !94, i64 432, i64 4, !94, i64 436, i64 4, !94, i64 440, i64 4, !94, i64 444, i64 4, !94, i64 448, i64 4, !94, i64 452, i64 4, !94, i64 456, i64 4, !121, i64 460, i64 4, !121, i64 464, i64 4, !94, i64 468, i64 8, !120, i64 476, i64 4, !94, i64 480, i64 4, !94, i64 488, i64 4, !94, i64 492, i64 4, !94, i64 496, i64 4, !94, i64 500, i64 4, !94, i64 504, i64 4, !94, i64 508, i64 4, !94, i64 512, i64 4, !121, i64 516, i64 4, !121, i64 520, i64 4, !121, i64 524, i64 4, !94, i64 528, i64 4, !94, i64 532, i64 4, !121, i64 536, i64 4, !121, i64 540, i64 4, !121, i64 544, i64 4, !94, i64 548, i64 4, !121, i64 552, i64 4, !94, i64 556, i64 4, !94, i64 560, i64 4, !94, i64 568, i64 8, !88, i64 576, i64 4, !94, i64 584, i64 8, !88, i64 592, i64 4, !121, i64 596, i64 4, !121, i64 600, i64 4, !121, i64 608, i64 8, !88, i64 616, i64 4, !94, i64 624, i64 8, !88, i64 632, i64 4, !94, i64 636, i64 4, !94, i64 640, i64 4, !94, i64 644, i64 4, !94, i64 648, i64 4, !94, i64 652, i64 4, !94, i64 656, i64 4, !94, i64 660, i64 4, !94, i64 664, i64 4, !94, i64 668, i64 4, !94, i64 672, i64 4, !94, i64 676, i64 4, !94, i64 680, i64 4, !94, i64 684, i64 4, !94, i64 688, i64 4, !94, i64 692, i64 4, !94, i64 696, i64 8, !88, i64 704, i64 1032, !120, i64 1736, i64 4, !94, i64 1740, i64 4, !94, i64 1744, i64 4, !94, i64 1748, i64 4, !94, i64 1752, i64 4, !94, i64 1760, i64 4, !94, i64 1764, i64 4, !94, i64 1768, i64 8, !88, i64 1776, i64 4, !94, i64 1784, i64 8, !88, i64 1792, i64 8, !88, i64 1800, i64 8, !88, i64 1808, i64 8, !88, i64 1816, i64 8, !122, i64 1824, i64 4, !94, i64 1828, i64 4, !94, i64 1832, i64 8, !88, i64 1840, i64 4, !94, i64 1844, i64 4, !94, i64 1848, i64 4, !94, i64 1852, i64 4, !94, i64 1856, i64 4, !94, i64 1860, i64 4, !94, i64 1864, i64 4, !94, i64 1868, i64 4, !94, i64 1872, i64 4, !94, i64 1876, i64 4, !94, i64 1880, i64 4, !94, i64 1884, i64 4, !94, i64 1888, i64 4, !94, i64 1892, i64 4, !94, i64 1896, i64 1300, !120, i64 3200, i64 8, !88, i64 3208, i64 120, !120, i64 3328, i64 8, !88, i64 3336, i64 4, !94, i64 3340, i64 4, !94, i64 3344, i64 32, !120, i64 3376, i64 16, !120, i64 3392, i64 32, !120, i64 3424, i64 16, !120, i64 3440, i64 32, !120, i64 3472, i64 16, !120, i64 3488, i64 32, !120, i64 3520, i64 16, !120, i64 3536, i64 736, !120, i64 4272, i64 2944, !120, i64 7216, i64 8, !88, i64 7232, i64 8, !88, i64 7240, i64 8, !88, i64 7248, i64 4, !94, i64 7252, i64 4, !94, i64 7256, i64 4, !94, i64 7260, i64 4, !94, i64 7264, i64 4, !94, i64 7268, i64 4, !94, i64 7272, i64 4, !94, i64 7276, i64 4, !94, i64 7280, i64 4, !94, i64 7284, i64 4, !94, i64 7288, i64 4, !94, i64 7292, i64 8, !120, i64 7300, i64 4, !94, i64 7304, i64 4, !94, i64 7308, i64 4, !94, i64 7312, i64 4, !94, i64 7316, i64 4, !94, i64 7320, i64 4, !94, i64 7324, i64 4, !94, i64 7328, i64 256, !120, i64 7584, i64 6144, !120, i64 13728, i64 4, !94, i64 13732, i64 4, !94, i64 13736, i64 128, !120, i64 13864, i64 4, !94, i64 13868, i64 4, !94, i64 13872, i64 4, !94, i64 13876, i64 4, !94, i64 13880, i64 4, !94, i64 13884, i64 4, !94, i64 13888, i64 4, !94, i64 13892, i64 4, !94, i64 13904, i64 4, !94, i64 13908, i64 4, !94, i64 13912, i64 4, !94, i64 13916, i64 4, !94, i64 13920, i64 8, !88, i64 13928, i64 8, !88, i64 13936, i64 8, !88, i64 13952, i64 4, !94, i64 13956, i64 460, !120, i64 14416, i64 8, !88, i64 14424, i64 16, !120, i64 14440, i64 8, !88, i64 14448, i64 144, !120, i64 14592, i64 4, !94, i64 14596, i64 4, !94, i64 14600, i64 4, !94, i64 14604, i64 4, !94, i64 14608, i64 4, !94, i64 14612, i64 4, !94, i64 14616, i64 4, !94, i64 14624, i64 8, !122, i64 14632, i64 8, !122, i64 14640, i64 16, !120, i64 14656, i64 8, !122, i64 14664, i64 8, !122, i64 14672, i64 4, !94, i64 14676, i64 4, !94, i64 14680, i64 8, !88, i64 14688, i64 8, !88, i64 14696, i64 4, !94, i64 14704, i64 152, !120, i64 14856, i64 4, !94, i64 14864, i64 152, !120, i64 15016, i64 8, !120, i64 15024, i64 4, !94, i64 15028, i64 4, !94, i64 15032, i64 8, !122, i64 15040, i64 32, !120, i64 15072, i64 16, !120, i64 15088, i64 512, !120, i64 15600, i64 768, !120, i64 16368, i64 4, !94, i64 16372, i64 4, !94, i64 16376, i64 4, !94, i64 16380, i64 4, !94, i64 16384, i64 4, !94, i64 16388, i64 4, !94, i64 16392, i64 4, !94, i64 16396, i64 4, !94, i64 16400, i64 4, !94, i64 16404, i64 4, !94, i64 16408, i64 4, !94, i64 16412, i64 4, !94, i64 16416, i64 4, !94, i64 16420, i64 4, !94, i64 16424, i64 4, !94, i64 16428, i64 4, !94, i64 16432, i64 4, !94, i64 16436, i64 4, !94, i64 16440, i64 8, !120, i64 16448, i64 8, !120, i64 16456, i64 8, !120, i64 16464, i64 8, !120, i64 16472, i64 8, !120, i64 16480, i64 8, !120, i64 16488, i64 4, !94, i64 16492, i64 16, !120, i64 16508, i64 64, !120, i64 16572, i64 4, !94, i64 16576, i64 4, !94, i64 16580, i64 4, !94, i64 16584, i64 4, !94, i64 16588, i64 4, !94, i64 16592, i64 4, !94, i64 16596, i64 4, !94, i64 16600, i64 4, !94, i64 16604, i64 4, !94, i64 16608, i64 4, !94, i64 16612, i64 4, !94, i64 16616, i64 8, !88, i64 16624, i64 8, !88, i64 16632, i64 8, !88, i64 16640, i64 8, !88, i64 16648, i64 8, !88, i64 16656, i64 8, !88, i64 16664, i64 8, !88, i64 16672, i64 16, !120, i64 16688, i64 16, !120, i64 16704, i64 16, !120, i64 16720, i64 512, !120, i64 17232, i64 8, !88, i64 17240, i64 8, !88, i64 17248, i64 8, !88, i64 17256, i64 128, !120, i64 17384, i64 4, !94, i64 17388, i64 4, !94, i64 17392, i64 4, !120, i64 17396, i64 4, !94, i64 17400, i64 4, !94, i64 17404, i64 4, !94, i64 17408, i64 4, !94, i64 17412, i64 4, !94, i64 17416, i64 4, !94, i64 17420, i64 4, !94, i64 17424, i64 4, !94, i64 17428, i64 4, !94, i64 17440, i64 384, !120, i64 17824, i64 864, !120, i64 18688, i64 256, !120, i64 18944, i64 256, !120, i64 19200, i64 384, !120, i64 19584, i64 480, !120, i64 20064, i64 16, !120, i64 20080, i64 16, !120, i64 20096, i64 4, !94, i64 20100, i64 4, !94, i64 20112, i64 512, !120, i64 20624, i64 512, !120, i64 21136, i64 72, !120, i64 21216, i64 128, !120, i64 21344, i64 24, !120, i64 21368, i64 24, !120, i64 21392, i64 24, !120, i64 21416, i64 8, !120, i64 21424, i64 3072, !120, i64 24496, i64 256, !120, i64 24752, i64 256, !120, i64 25008, i64 12, !120, i64 25024, i64 40, !120, i64 25072, i64 48, !120, i64 25120, i64 80, !120, i64 25200, i64 320, !120, i64 25520, i64 160, !120, i64 25680, i64 40, !120, i64 25720, i64 32, !120, i64 25752, i64 8, !120, i64 25760, i64 4, !94, i64 25764, i64 4, !120, i64 25768, i64 4, !94, i64 25772, i64 4, !94, i64 25776, i64 4, !94, i64 25780, i64 4, !94, i64 25792, i64 4, !94, i64 25796, i64 4, !94, i64 25800, i64 4, !94, i64 25804, i64 4, !94, i64 25808, i64 4, !94, i64 25812, i64 4, !94, i64 25816, i64 4, !94, i64 25820, i64 4, !94, i64 25824, i64 16, !120, i64 25840, i64 4, !94, i64 25844, i64 4, !94, i64 25848, i64 512, !120, i64 26360, i64 8, !88, i64 26368, i64 256, !120, i64 26624, i64 8, !88, i64 26632, i64 18, !120, i64 26652, i64 4, !94, i64 26656, i64 34, !120, i64 26704, i64 8, !88, i64 26712, i64 4, !94, i64 26716, i64 4, !94, i64 26720, i64 4, !94, i64 26724, i64 76, !120, i64 26800, i64 4, !94, i64 26804, i64 4, !94, i64 26808, i64 4, !94, i64 26812, i64 8, !120, i64 26820, i64 256, !120, i64 27076, i64 68, !120, i64 27144, i64 24, !120, i64 27168, i64 208, !120, i64 27376, i64 8, !120, i64 27384, i64 24, !120, i64 27408, i64 8, !123, i64 27416, i64 20, !120, i64 27440, i64 40, !120, i64 27480, i64 40, !120, i64 27520, i64 68, !120, i64 27592, i64 40, !120, i64 27632, i64 40, !120, i64 27672, i64 40, !120, i64 27712, i64 40, !120, i64 27752, i64 40, !120, i64 27792, i64 40, !120, i64 27832, i64 760, !120, i64 28592, i64 272, !120, i64 28864, i64 16, !120, i64 28880, i64 1024, !120, i64 29904, i64 48, !120, i64 29952, i64 416, !120, i64 30368, i64 8, !120, i64 30376, i64 8, !120, i64 30384, i64 12, !120, i64 30400, i64 512, !120, i64 30912, i64 256, !120, i64 31168, i64 8, !120, i64 31176, i64 8, !88, i64 31184, i64 48, !120, i64 31232, i64 16, !120, i64 31248, i64 56, !120, i64 31304, i64 56, !120, i64 31360, i64 96, !120, i64 31456, i64 96, !120, i64 31552, i64 8, !88, i64 31560, i64 56, !120, i64 31616, i64 56, !120, i64 31672, i64 56, !120, i64 31728, i64 56, !120, i64 31784, i64 32, !120, i64 31816, i64 56, !120, i64 31872, i64 56, !120, i64 31928, i64 56, !120, i64 31984, i64 56, !120, i64 32040, i64 56, !120, i64 32096, i64 56, !120, i64 32152, i64 8, !88, i64 32160, i64 32, !120, i64 32192, i64 32, !120, i64 32224, i64 8, !88, i64 32232, i64 8, !88, i64 32240, i64 56, !120, i64 32296, i64 56, !120, i64 32352, i64 56, !120, i64 32408, i64 56, !120, i64 32464, i64 56, !120, i64 32520, i64 8, !88, i64 32528, i64 8, !88, i64 32536, i64 8, !88, i64 32544, i64 8, !88, i64 32552, i64 8, !88, i64 32560, i64 8, !88, i64 32568, i64 8, !88, i64 32576, i64 8, !88, i64 32584, i64 8, !88, i64 32592, i64 8, !88, i64 32600, i64 8, !88, i64 32608, i64 8, !88, i64 32616, i64 8, !88, i64 32624, i64 8, !88, i64 32632, i64 8, !88, i64 32640, i64 80, !120, i64 32720, i64 56, !120, i64 32776, i64 8, !88, i64 32784, i64 8, !88, i64 32792, i64 8, !88, i64 32800, i64 8, !88, i64 32808, i64 8, !88, i64 32816, i64 8, !88, i64 32824, i64 8, !88, i64 32832, i64 8, !88, i64 32840, i64 8, !88, i64 32848, i64 8, !88, i64 32856, i64 8, !88, i64 32864, i64 8, !88, i64 32872, i64 8, !88, i64 32880, i64 8, !88, i64 32888, i64 8, !88, i64 32896, i64 8, !88, i64 32904, i64 8, !88, i64 32912, i64 8, !88, i64 32920, i64 8, !88, i64 32928, i64 8, !88, i64 32936, i64 8, !88, i64 32944, i64 8, !88, i64 32952, i64 8, !88, i64 32960, i64 8, !88, i64 32968, i64 8, !88, i64 32976, i64 8, !88, i64 32984, i64 8, !88, i64 32992, i64 8, !88, i64 33000, i64 8, !88, i64 33008, i64 8, !88, i64 33016, i64 8, !88, i64 33024, i64 8, !88, i64 33032, i64 8, !88, i64 33040, i64 8, !88, i64 33048, i64 8, !88, i64 33056, i64 8, !88, i64 33064, i64 8, !88, i64 33072, i64 8, !88, i64 33080, i64 8, !88, i64 33088, i64 8, !88, i64 33096, i64 8, !88, i64 33104, i64 8, !88, i64 33112, i64 8, !88, i64 33120, i64 8, !88, i64 33128, i64 8, !88, i64 33136, i64 8, !88, i64 33144, i64 8, !88, i64 33152, i64 8, !88, i64 33160, i64 8, !88, i64 33168, i64 48, !120, i64 33216, i64 40, !120, i64 33256, i64 16, !120, i64 33272, i64 16, !120, i64 33288, i64 16, !120, i64 33304, i64 16, !120, i64 33320, i64 8, !88, i64 33328, i64 8, !88}
!120 = !{!9, !9, i64 0}
!121 = !{!14, !14, i64 0}
!122 = !{!21, !21, i64 0}
!123 = !{!31, !31, i64 0}
!124 = !{!18, !12, i64 14688}
!125 = !{!18, !12, i64 1784}
!126 = !{!18, !12, i64 1768}
!127 = !{!18, !8, i64 1764}
!128 = distinct !{!128, !101}
!129 = distinct !{!129, !101}
!130 = !{!18, !8, i64 40}
!131 = !{!56, !8, i64 1232}
!132 = !{!56, !8, i64 1236}
!133 = !{!18, !12, i64 376}
!134 = !{!56, !8, i64 4}
!135 = !{!56, !8, i64 8}
!136 = !{!18, !8, i64 28}
!137 = !{!18, !8, i64 412}
!138 = !{!18, !8, i64 416}
!139 = !{!18, !8, i64 504}
!140 = !{!18, !14, i64 592}
!141 = !{!18, !8, i64 428}
!142 = !{!18, !14, i64 512}
!143 = !{!18, !8, i64 508}
!144 = !{!18, !8, i64 25812}
!145 = !{!18, !8, i64 144}
!146 = !{!18, !8, i64 476}
!147 = !{!18, !8, i64 480}
!148 = !{!18, !8, i64 408}
!149 = !{!18, !8, i64 440}
!150 = !{!18, !8, i64 444}
!151 = !{!18, !8, i64 452}
!152 = !{!18, !8, i64 464}
!153 = !{!18, !8, i64 392}
!154 = !{!18, !14, i64 540}
!155 = !{!18, !8, i64 544}
!156 = !{!18, !8, i64 524}
!157 = !{!18, !8, i64 684}
!158 = !{!18, !8, i64 688}
!159 = !{!18, !8, i64 404}
!160 = !{!18, !8, i64 96}
!161 = !{!18, !8, i64 108}
!162 = !{!18, !8, i64 400}
!163 = !{!18, !8, i64 88}
!164 = !{!18, !8, i64 652}
!165 = !{!18, !8, i64 656}
!166 = !{!18, !8, i64 120}
!167 = !{!18, !8, i64 124}
!168 = !{!18, !8, i64 132}
!169 = !{!18, !8, i64 436}
!170 = !{!18, !8, i64 384}
!171 = !{!18, !14, i64 460}
!172 = !{!18, !14, i64 456}
!173 = !{!18, !14, i64 548}
!174 = !{!18, !8, i64 32}
!175 = !{!176, !8, i64 0}
!176 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48}
!177 = distinct !{!177, !101}
!178 = !{!18, !8, i64 420}
!179 = !{!176, !8, i64 24}
!180 = !{!18, !8, i64 424}
!181 = !{!18, !14, i64 596}
!182 = !{!18, !14, i64 600}
!183 = !{!18, !8, i64 368}
!184 = !{!18, !8, i64 676}
!185 = !{!18, !8, i64 116}
!186 = !{!18, !8, i64 372}
!187 = !{!18, !8, i64 640}
!188 = !{!7, !8, i64 48}
!189 = !{!7, !8, i64 44}
!190 = !{!18, !8, i64 48}
!191 = !{!18, !8, i64 44}
!192 = distinct !{!192, !101}
!193 = !{!18, !12, i64 32520}
!194 = !{!18, !12, i64 32544}
!195 = !{!18, !12, i64 32568}
!196 = !{!18, !8, i64 1744}
!197 = !{!7, !8, i64 80}
!198 = !{!7, !8, i64 108}
!199 = !{!7, !8, i64 92}
!200 = !{!7, !8, i64 124}
!201 = !{!7, !8, i64 388}
!202 = !{!7, !8, i64 384}
!203 = !{!7, !8, i64 404}
!204 = !{!7, !8, i64 416}
!205 = !{!7, !8, i64 452}
!206 = !{!7, !8, i64 428}
!207 = !{!7, !8, i64 448}
!208 = !{!18, !8, i64 448}
!209 = !{!7, !8, i64 412}
!210 = !{!53, !8, i64 60}
!211 = !{!7, !8, i64 392}
!212 = !{!7, !8, i64 112}
!213 = !{!7, !8, i64 692}
!214 = !{!7, !8, i64 524}
!215 = !{!7, !8, i64 528}
!216 = !{!7, !8, i64 508}
!217 = !{!7, !14, i64 512}
!218 = !{!18, !14, i64 516}
!219 = !{!7, !14, i64 516}
!220 = !{!20, !12, i64 0}
!221 = !{!20, !12, i64 8}
!222 = !{!20, !12, i64 16}
!223 = !{!20, !8, i64 32}
!224 = !{!20, !21, i64 24}
!225 = !{!226, !8, i64 0}
!226 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !12, i64 16}
!227 = !{!226, !8, i64 4}
!228 = !{!226, !8, i64 8}
!229 = !{!226, !12, i64 16}
!230 = distinct !{!230, !101}
!231 = distinct !{!231, !101}
!232 = distinct !{!232, !101}
!233 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 16, i64 8, !122, i64 24, i64 8, !122, i64 32, i64 4, !94, i64 36, i64 4, !94, i64 40, i64 4, !94, i64 44, i64 4, !94, i64 48, i64 8, !88, i64 56, i64 4, !94, i64 60, i64 4, !94, i64 64, i64 4, !94, i64 68, i64 4, !94, i64 72, i64 4, !94, i64 76, i64 4, !94, i64 80, i64 4, !94, i64 84, i64 1, !120, i64 85, i64 1, !120, i64 86, i64 1, !120, i64 88, i64 4, !121, i64 92, i64 4, !121, i64 96, i64 4, !94, i64 100, i64 4, !94, i64 104, i64 12, !120, i64 116, i64 12, !120, i64 128, i64 12, !120, i64 140, i64 4, !94, i64 144, i64 4, !94, i64 148, i64 4, !94, i64 152, i64 24, !120, i64 176, i64 32, !120, i64 208, i64 32, !120, i64 240, i64 8, !88, i64 248, i64 32, !120, i64 280, i64 32, !120, i64 320, i64 3072, !120, i64 3392, i64 128, !120, i64 3520, i64 4, !94, i64 3528, i64 8, !88, i64 3536, i64 8, !88, i64 3544, i64 8, !88, i64 3552, i64 16, !120, i64 3568, i64 8, !88, i64 3576, i64 272, !120, i64 3848, i64 2592, !120, i64 6440, i64 272, !120, i64 6712, i64 16, !120, i64 6728, i64 8, !120, i64 6736, i64 128, !120, i64 6864, i64 4, !120, i64 6868, i64 1296, !120, i64 8164, i64 1296, !120, i64 9460, i64 4, !94, i64 9464, i64 72, !120, i64 9536, i64 2592, !120, i64 12128, i64 8, !88, i64 12136, i64 8, !88, i64 12144, i64 8, !88, i64 12152, i64 8, !88, i64 12160, i64 8, !88, i64 12168, i64 4, !94, i64 12176, i64 8, !88, i64 12184, i64 8, !88, i64 12192, i64 8, !88, i64 12200, i64 4, !94, i64 12204, i64 72, !120, i64 12276, i64 4, !94, i64 12280, i64 8, !122, i64 12288, i64 8, !123, i64 12296, i64 8, !123, i64 12304, i64 8, !123, i64 12312, i64 8, !123, i64 12320, i64 251, !120, i64 12572, i64 1004, !120, i64 13576, i64 2008, !120, i64 15584, i64 4, !94, i64 15588, i64 4, !94, i64 15592, i64 4, !94, i64 15596, i64 4, !94, i64 15600, i64 4, !94, i64 15604, i64 4, !94, i64 15608, i64 4, !94, i64 15612, i64 4, !121, i64 15616, i64 4, !94, i64 15620, i64 4, !94, i64 15624, i64 4, !94}
!234 = !{!235, !8, i64 15600}
!235 = !{!"x264_frame", !8, i64 0, !8, i64 4, !8, i64 8, !21, i64 16, !21, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !12, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !9, i64 84, !9, i64 85, !9, i64 86, !14, i64 88, !14, i64 92, !8, i64 96, !8, i64 100, !9, i64 104, !9, i64 116, !9, i64 128, !8, i64 140, !8, i64 144, !8, i64 148, !9, i64 152, !9, i64 176, !9, i64 208, !12, i64 240, !9, i64 248, !9, i64 280, !9, i64 320, !9, i64 3392, !8, i64 3520, !12, i64 3528, !12, i64 3536, !12, i64 3544, !9, i64 3552, !12, i64 3568, !9, i64 3576, !9, i64 3848, !9, i64 6440, !9, i64 6712, !9, i64 6728, !9, i64 6736, !9, i64 6864, !9, i64 6868, !9, i64 8164, !8, i64 9460, !9, i64 9464, !9, i64 9536, !12, i64 12128, !12, i64 12136, !12, i64 12144, !12, i64 12152, !12, i64 12160, !8, i64 12168, !12, i64 12176, !12, i64 12184, !12, i64 12192, !8, i64 12200, !9, i64 12204, !8, i64 12276, !21, i64 12280, !236, i64 12288, !9, i64 12320, !9, i64 12572, !9, i64 13576, !8, i64 15584, !8, i64 15588, !8, i64 15592, !8, i64 15596, !8, i64 15600, !8, i64 15604, !8, i64 15608, !14, i64 15612, !8, i64 15616, !8, i64 15620, !8, i64 15624}
!236 = !{!"", !31, i64 0, !31, i64 8, !31, i64 16, !31, i64 24}
!237 = !{!235, !12, i64 3528}
!238 = !{!235, !8, i64 3520}
!239 = !{!18, !12, i64 14680}
!240 = !{!18, !8, i64 1892}
!241 = !{!235, !8, i64 15592}
!242 = !{!235, !8, i64 56}
!243 = !{!235, !21, i64 16}
!244 = !{!18, !21, i64 14624}
!245 = !{!18, !21, i64 14656}
!246 = !{!18, !21, i64 14664}
!247 = !{!235, !8, i64 76}
!248 = !{!235, !12, i64 48}
!249 = !{!7, !8, i64 136}
!250 = !{!7, !8, i64 672}
!251 = !{!252, !8, i64 0}
!252 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !21, i64 16, !21, i64 24, !12, i64 32, !253, i64 40, !236, i64 96, !12, i64 128}
!253 = !{!"", !8, i64 0, !8, i64 4, !9, i64 8, !9, i64 24}
!254 = !{!18, !12, i64 33328}
!255 = !{!256, !9, i64 0}
!256 = !{!"x264_lookahead_t", !9, i64 0, !9, i64 1, !9, i64 2, !8, i64 4, !8, i64 8, !12, i64 16, !257, i64 24, !257, i64 56, !257, i64 88}
!257 = !{!"", !12, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!258 = !{!235, !21, i64 24}
!259 = !{!18, !21, i64 15032}
!260 = !{!235, !8, i64 80}
!261 = !{!235, !8, i64 4}
!262 = !{!18, !8, i64 13728}
!263 = !{!18, !8, i64 13732}
!264 = !{!18, !8, i64 7248}
!265 = !{!235, !8, i64 0}
!266 = !{!235, !8, i64 72}
!267 = distinct !{!267, !101}
!268 = !{!18, !8, i64 632}
!269 = !{!18, !8, i64 1856}
!270 = !{!18, !8, i64 1860}
!271 = !{!235, !8, i64 15624}
!272 = !{!235, !14, i64 15612}
!273 = !{!18, !8, i64 636}
!274 = !{!56, !8, i64 1260}
!275 = !{!56, !8, i64 1204}
!276 = !{!235, !8, i64 8}
!277 = !{!252, !8, i64 4}
!278 = !{!235, !8, i64 96}
!279 = !{!18, !8, i64 1748}
!280 = !{!18, !8, i64 1752}
!281 = !{!18, !8, i64 1740}
!282 = distinct !{!282, !101}
!283 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 12, i64 4, !94, i64 16, i64 4, !94, i64 20, i64 4, !94, i64 24, i64 4, !94, i64 28, i64 4, !94, i64 32, i64 4, !94, i64 36, i64 4, !94, i64 40, i64 4, !94, i64 44, i64 4, !94, i64 48, i64 4, !94, i64 52, i64 4, !94, i64 56, i64 4, !94, i64 60, i64 4, !94, i64 64, i64 4, !94, i64 68, i64 4, !94, i64 72, i64 4, !94, i64 76, i64 4, !94, i64 80, i64 4, !94, i64 84, i64 4, !94, i64 88, i64 4, !94, i64 92, i64 4, !94, i64 96, i64 4, !94, i64 100, i64 4, !94, i64 104, i64 4, !94, i64 108, i64 4, !94, i64 112, i64 4, !94, i64 116, i64 4, !94, i64 120, i64 4, !94, i64 124, i64 4, !94, i64 128, i64 4, !94, i64 132, i64 4, !94, i64 136, i64 4, !94, i64 140, i64 4, !94, i64 144, i64 4, !94, i64 152, i64 8, !88, i64 160, i64 16, !120, i64 176, i64 16, !120, i64 192, i64 16, !120, i64 208, i64 16, !120, i64 224, i64 64, !120, i64 288, i64 64, !120, i64 352, i64 8, !88, i64 360, i64 8, !88, i64 368, i64 4, !94, i64 372, i64 4, !94, i64 376, i64 8, !88, i64 384, i64 4, !94, i64 388, i64 4, !94, i64 392, i64 4, !94, i64 396, i64 4, !94, i64 400, i64 4, !94, i64 404, i64 4, !94, i64 408, i64 4, !94, i64 412, i64 4, !94, i64 416, i64 4, !94, i64 420, i64 4, !94, i64 424, i64 4, !94, i64 428, i64 4, !94, i64 432, i64 4, !94, i64 436, i64 4, !94, i64 440, i64 4, !94, i64 444, i64 4, !94, i64 448, i64 4, !94, i64 452, i64 4, !94, i64 456, i64 4, !121, i64 460, i64 4, !121, i64 464, i64 4, !94, i64 468, i64 8, !120, i64 476, i64 4, !94, i64 480, i64 4, !94, i64 488, i64 4, !94, i64 492, i64 4, !94, i64 496, i64 4, !94, i64 500, i64 4, !94, i64 504, i64 4, !94, i64 508, i64 4, !94, i64 512, i64 4, !121, i64 516, i64 4, !121, i64 520, i64 4, !121, i64 524, i64 4, !94, i64 528, i64 4, !94, i64 532, i64 4, !121, i64 536, i64 4, !121, i64 540, i64 4, !121, i64 544, i64 4, !94, i64 548, i64 4, !121, i64 552, i64 4, !94, i64 556, i64 4, !94, i64 560, i64 4, !94, i64 568, i64 8, !88, i64 576, i64 4, !94, i64 584, i64 8, !88, i64 592, i64 4, !121, i64 596, i64 4, !121, i64 600, i64 4, !121, i64 608, i64 8, !88, i64 616, i64 4, !94, i64 624, i64 8, !88, i64 632, i64 4, !94, i64 636, i64 4, !94, i64 640, i64 4, !94, i64 644, i64 4, !94, i64 648, i64 4, !94, i64 652, i64 4, !94, i64 656, i64 4, !94, i64 660, i64 4, !94, i64 664, i64 4, !94, i64 668, i64 4, !94, i64 672, i64 4, !94, i64 676, i64 4, !94, i64 680, i64 4, !94, i64 684, i64 4, !94, i64 688, i64 4, !94, i64 692, i64 4, !94, i64 696, i64 8, !88}
!284 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 12, i64 76, !120, i64 88, i64 4, !94, i64 92, i64 4, !94, i64 96, i64 4, !94, i64 100, i64 8, !120, i64 108, i64 256, !120, i64 364, i64 68, !120, i64 432, i64 24, !120, i64 456, i64 208, !120, i64 664, i64 8, !120, i64 672, i64 24, !120, i64 696, i64 8, !123, i64 704, i64 20, !120, i64 728, i64 40, !120, i64 768, i64 40, !120, i64 808, i64 68, !120, i64 880, i64 40, !120, i64 920, i64 40, !120, i64 960, i64 40, !120, i64 1000, i64 40, !120, i64 1040, i64 40, !120, i64 1080, i64 40, !120, i64 1120, i64 760, !120, i64 1880, i64 272, !120, i64 2152, i64 16, !120, i64 2168, i64 1024, !120, i64 3192, i64 48, !120, i64 3240, i64 416, !120, i64 3656, i64 8, !120, i64 3664, i64 8, !120, i64 3672, i64 12, !120}
!285 = distinct !{!285, !101}
!286 = !{!56, !8, i64 1076}
!287 = distinct !{!287, !101}
!288 = !{!289, !8, i64 4}
!289 = !{!"", !8, i64 0, !8, i64 4}
!290 = distinct !{!290, !101}
!291 = !{!18, !8, i64 15024}
!292 = distinct !{!292, !101}
!293 = !{i64 0, i64 4, !94, i64 4, i64 4, !94, i64 8, i64 4, !94, i64 16, i64 8, !88}
!294 = !{!252, !8, i64 12}
!295 = !{!252, !21, i64 16}
!296 = !{!18, !21, i64 14632}
!297 = !{!252, !21, i64 24}
!298 = !{!235, !8, i64 100}
!299 = !{!252, !8, i64 44}
!300 = distinct !{!300, !101}
!301 = !{i64 0, i64 8, !123, i64 8, i64 8, !123, i64 16, i64 8, !123, i64 24, i64 8, !123}
!302 = distinct !{!302, !101}
!303 = !{!235, !14, i64 92}
!304 = distinct !{!304, !101}
!305 = distinct !{!305, !101}
!306 = distinct !{!306, !101, !307, !308}
!307 = !{!"llvm.loop.isvectorized", i32 1}
!308 = !{!"llvm.loop.unroll.runtime.disable"}
!309 = distinct !{!309, !101}
!310 = distinct !{!310, !101}
!311 = distinct !{!311, !101, !307, !308}
!312 = distinct !{!312, !101}
!313 = !{!314, !8, i64 32}
!314 = !{!"x264_weight_t", !9, i64 0, !9, i64 16, !8, i64 32, !8, i64 36, !8, i64 40, !12, i64 48}
!315 = distinct !{!315, !101}
!316 = !{!18, !8, i64 7304}
!317 = !{!18, !8, i64 25820}
!318 = !{!18, !31, i64 27408}
!319 = !{!18, !8, i64 26800}
!320 = !{!18, !8, i64 26804}
!321 = !{!18, !8, i64 26808}
!322 = distinct !{!322, !101}
!323 = !{!18, !8, i64 36}
!324 = distinct !{!324, !101}
!325 = !{!235, !8, i64 60}
!326 = distinct !{!326, !101}
!327 = !{!235, !8, i64 68}
!328 = !{!289, !8, i64 0}
!329 = distinct !{!329, !101}
!330 = distinct !{!330, !101}
!331 = distinct !{!331, !101}
!332 = distinct !{!332, !101}
!333 = distinct !{!333, !101}
!334 = !{!314, !12, i64 48}
!335 = !{!314, !8, i64 36}
!336 = !{!314, !8, i64 40}
!337 = !{!18, !12, i64 32896}
!338 = !{i32 -1, i32 2}
!339 = !{i64 0, i64 16, !120, i64 16, i64 16, !120, i64 32, i64 4, !94, i64 36, i64 4, !94, i64 40, i64 4, !94, i64 48, i64 8, !88}
!340 = !{!18, !8, i64 26652}
!341 = distinct !{!341, !101}
!342 = !{!235, !8, i64 15596}
!343 = !{!18, !8, i64 7268}
!344 = distinct !{!344, !101}
!345 = distinct !{!345, !101}
!346 = distinct !{!346, !101}
!347 = !{!18, !8, i64 7312}
!348 = !{!18, !8, i64 7316}
!349 = !{!53, !8, i64 20}
!350 = !{!53, !8, i64 24}
!351 = !{!18, !8, i64 7308}
!352 = !{!18, !8, i64 7264}
!353 = !{!56, !8, i64 28}
!354 = !{!18, !8, i64 7284}
!355 = !{!18, !8, i64 672}
!356 = !{!18, !8, i64 7288}
!357 = !{!18, !8, i64 7252}
!358 = !{!18, !8, i64 7256}
!359 = distinct !{!359, !101}
!360 = distinct !{!360, !101}
!361 = distinct !{!361, !101}
!362 = distinct !{!362, !101}
!363 = distinct !{!363, !101}
!364 = distinct !{!364, !101}
!365 = distinct !{!365, !101}
!366 = distinct !{!366, !101}
!367 = !{!18, !8, i64 17424}
!368 = distinct !{!368, !101}
!369 = distinct !{!369, !101}
!370 = distinct !{!370, !101}
!371 = distinct !{!371, !101}
!372 = distinct !{!372, !101}
!373 = !{!22, !12, i64 0}
!374 = !{!22, !12, i64 8}
!375 = !{!22, !8, i64 20}
!376 = !{!22, !8, i64 24}
!377 = !{!53, !8, i64 0}
!378 = !{!22, !8, i64 28}
!379 = !{!22, !8, i64 32}
!380 = !{!22, !8, i64 36}
!381 = !{!22, !8, i64 40}
!382 = !{!22, !8, i64 44}
!383 = !{!22, !8, i64 48}
!384 = !{!18, !8, i64 25816}
!385 = !{!22, !8, i64 16}
!386 = !{!22, !8, i64 72}
!387 = !{!22, !8, i64 76}
!388 = !{!22, !8, i64 80}
!389 = !{!22, !8, i64 84}
!390 = !{!22, !8, i64 88}
!391 = !{!22, !8, i64 92}
!392 = !{!56, !8, i64 24}
!393 = distinct !{!393, !101}
!394 = !{!7, !8, i64 132}
!395 = !{!22, !8, i64 6632}
!396 = !{!22, !8, i64 6636}
!397 = !{!53, !8, i64 36}
!398 = !{!22, !8, i64 6640}
!399 = !{!22, !8, i64 6644}
!400 = !{!22, !8, i64 6648}
!401 = !{!7, !8, i64 120}
!402 = !{!7, !8, i64 116}
!403 = !{!18, !8, i64 25808}
!404 = !{!7, !8, i64 8}
!405 = !{!22, !8, i64 6652}
!406 = !{!22, !8, i64 6656}
!407 = !{!22, !8, i64 6660}
!408 = !{!18, !8, i64 13884}
!409 = distinct !{!409, !101}
!410 = distinct !{!410, !101}
!411 = distinct !{!411, !101}
!412 = distinct !{!412, !101}
!413 = !{!18, !12, i64 31176}
!414 = !{!18, !8, i64 25800}
!415 = !{!18, !8, i64 13868}
!416 = !{!18, !8, i64 13872}
!417 = !{!18, !8, i64 13864}
!418 = !{!18, !12, i64 1800}
!419 = !{!18, !12, i64 1808}
!420 = !{!18, !8, i64 25804}
!421 = !{!18, !12, i64 13928}
!422 = !{i64 0, i64 8, !88, i64 8, i64 8, !88, i64 16, i64 8, !88, i64 24, i64 8, !122, i64 32, i64 4, !94, i64 36, i64 4, !94}
!423 = !{!18, !8, i64 17384}
!424 = !{!18, !8, i64 17388}
!425 = distinct !{!425, !101}
!426 = distinct !{!426, !101}
!427 = distinct !{!427, !101}
!428 = !{!18, !8, i64 17400}
!429 = !{!18, !8, i64 17404}
!430 = !{!18, !8, i64 17396}
!431 = !{!18, !8, i64 17408}
!432 = distinct !{!432, !101}
!433 = distinct !{!433, !101}
!434 = !{!18, !8, i64 17412}
!435 = !{!18, !8, i64 16388}
!436 = !{!18, !8, i64 16384}
!437 = !{!18, !12, i64 16616}
!438 = !{!18, !8, i64 16392}
!439 = !{!18, !12, i64 33320}
!440 = !{!18, !8, i64 26716}
!441 = !{!18, !8, i64 26712}
!442 = !{!18, !8, i64 26720}
!443 = !{!56, !8, i64 1092}
!444 = !{!56, !8, i64 32}
!445 = !{!22, !8, i64 52}
!446 = !{!53, !8, i64 12}
!447 = !{!56, !8, i64 36}
!448 = !{!53, !8, i64 56}
!449 = !{!22, !8, i64 68}
!450 = distinct !{!450, !101}
!451 = distinct !{!451, !101}
!452 = !{!53, !8, i64 28}
!453 = distinct !{!453, !101}
!454 = distinct !{!454, !101}
!455 = !{!22, !8, i64 6500}
!456 = distinct !{!456, !101}
!457 = !{!53, !8, i64 8}
!458 = !{!53, !8, i64 48}
!459 = !{!23, !12, i64 24}
!460 = !{!23, !12, i64 16}
!461 = !{!23, !8, i64 12}
!462 = !{!23, !8, i64 8}
!463 = !{!18, !12, i64 13936}
!464 = !{!18, !12, i64 32816}
!465 = !{!18, !12, i64 1792}
!466 = !{!18, !12, i64 13920}
!467 = distinct !{!467, !101}
!468 = distinct !{!468, !101}
!469 = distinct !{!469, !101}
!470 = distinct !{!470, !101}
!471 = distinct !{!471, !101}
!472 = distinct !{!472, !101}
!473 = distinct !{!473, !101}
!474 = distinct !{!474, !101}
!475 = distinct !{!475, !101}
!476 = distinct !{!476, !101}
!477 = distinct !{!477, !101}
!478 = distinct !{!478, !101}
!479 = distinct !{!479, !101}
!480 = distinct !{!480, !101}
!481 = distinct !{!481, !101}
!482 = distinct !{!482, !101}
!483 = distinct !{!483, !101}
!484 = distinct !{!484, !101}
!485 = distinct !{!485, !101}
!486 = distinct !{!486, !101}
!487 = !{!256, !8, i64 36}
!488 = !{!256, !8, i64 68}
!489 = !{!256, !8, i64 100}
!490 = distinct !{!490, !101}
