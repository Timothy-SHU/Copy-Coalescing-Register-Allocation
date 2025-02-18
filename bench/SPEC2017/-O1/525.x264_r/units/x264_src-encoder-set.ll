; ModuleID = 'x264_src/encoder/set.c'
source_filename = "x264_src/encoder/set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon.5 = type { i8, i8, i8 }
%struct.x264_level_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.x264_param_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.2, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [64 x i8], [64 x i8], ptr, ptr, i32, i32, ptr, %struct.anon.3, %struct.anon.4, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.anon.2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.3 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, i32, [2 x i32], i32, i32 }
%struct.anon.4 = type { i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, float, float, float, i32, float, i32, i32, i32, ptr, i32, ptr, float, float, float, ptr, i32, ptr }
%struct.x264_sps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon, i32, %struct.anon.0, i32 }
%struct.anon = type { i32, i32, i32, i32 }
%struct.anon.0 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.anon.1, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.1 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bs_s = type { ptr, ptr, ptr, i64, i32, i32 }
%struct.x264_pps_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x ptr] }
%struct.x264_t = type { %struct.x264_param_t, [129 x ptr], i32, i32, i32, i32, i32, %struct.anon.6, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x %struct.x264_sps_t], ptr, [1 x %struct.x264_pps_t], ptr, i32, i32, [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [4 x ptr], [2 x ptr], [92 x ptr], [92 x [4 x ptr]], ptr, [8 x i8], %struct.x264_slice_header_t, %struct.x264_cabac_t, %struct.anon.9, ptr, ptr, i32, [19 x ptr], i32, [19 x ptr], [2 x i32], i32, i32, i64, %struct.anon.10, %struct.anon.11, ptr, %struct.anon.14, [2 x [64 x i32]], [2 x [64 x i16]], [2 x i32], ptr, [2 x [3 x ptr]], [2 x ptr], [7 x ptr], [7 x ptr], [12 x ptr], [12 x ptr], ptr, %struct.x264_pixel_function_t, %struct.x264_mc_functions_t, %struct.x264_dct_function_t, %struct.x264_zigzag_function_t, %struct.x264_quant_function_t, %struct.x264_deblock_function_t, ptr, [8 x i8] }
%struct.anon.6 = type { i32, i32, ptr, i32, ptr, %struct.bs_s }
%struct.x264_slice_header_t = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, [2 x [16 x %struct.anon.7]], [32 x [3 x %struct.x264_weight_t]], i32, i32, [16 x %struct.anon.8], i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.anon.7 = type { i32, i32 }
%struct.x264_weight_t = type { [8 x i16], [8 x i16], i32, i32, i32, ptr, [8 x i8] }
%struct.anon.8 = type { i32, i32 }
%struct.x264_cabac_t = type { i32, i32, i32, i32, ptr, ptr, ptr, [8 x i8], i32, [460 x i8] }
%struct.anon.9 = type { ptr, [2 x ptr], ptr, [18 x ptr], i32, i32, i32, i32, i32, i32, i32, i64, i64, [2 x i64], i64, i64, i32, i32 }
%struct.anon.10 = type { [16 x i16], [2 x [4 x i16]], [4 x [64 x i16]], [24 x [16 x i16]] }
%struct.anon.11 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i32, [4 x i32], [16 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [2 x ptr], [2 x ptr], [2 x [32 x ptr]], ptr, ptr, ptr, [16 x ptr], i32, i32, [4 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i8], %struct.anon.12, %struct.anon.13, i32, i32, i32, i32, i32, i32, i32, i32, [2 x [2 x i32]], i32, i32, [2 x [32 x [4 x i16]]], ptr, [2 x [32 x [4 x i8]]], ptr, [18 x i8], i32, [34 x i8], [14 x i8] }
%struct.anon.12 = type { [384 x i8], [864 x i8], [256 x i8], [256 x i8], [3 x [64 x i16]], [15 x [16 x i16]], [4 x i32], [4 x i32], i32, i32, [8 x i8], [4 x [64 x i16]], [16 x [16 x i16]], [9 x i64], [8 x i8], [32 x i32], [3 x ptr], [3 x ptr], [3 x ptr], [2 x i32], [2 x [32 x [6 x ptr]]], [32 x ptr], [2 x [16 x ptr]], [3 x i32] }
%struct.anon.13 = type { [40 x i8], [8 x i8], [48 x i8], [2 x [40 x i8]], [2 x [40 x [2 x i16]]], [2 x [40 x [2 x i8]]], [40 x i8], [2 x [4 x [2 x i16]]], [2 x [4 x i8]], i32, [2 x i16], i32, i32, i32, i32, [8 x i8] }
%struct.anon.14 = type { %struct.anon.15, [5 x i32], [5 x i64], [5 x double], [17 x i32], [5 x i64], [5 x double], [5 x double], [5 x double], [5 x double], [5 x double], [5 x [19 x i64]], [2 x [17 x i64]], [2 x i64], [2 x [2 x [32 x i64]]], [6 x i64], [4 x [13 x i64]], [2 x i32], [2 x i32], [3 x i32] }
%struct.anon.15 = type { i32, i32, i32, [19 x i32], i32, i32, i32, [2 x i32], [2 x [32 x i32]], [17 x i32], [6 x i32], [4 x [13 x i32]], [2 x i32], [3 x i64], double }
%struct.x264_pixel_function_t = type { [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [4 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, [4 x ptr], [4 x ptr], ptr, ptr, [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_mc_functions_t = type { ptr, ptr, ptr, [10 x ptr], [7 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_dct_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_zigzag_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.x264_quant_function_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [6 x ptr], [5 x ptr] }
%struct.x264_deblock_function_t = type { [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], ptr }
%struct.x264_frame = type { i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, float, float, i32, i32, [3 x i32], [3 x i32], [3 x i32], i32, i32, i32, [3 x ptr], [4 x ptr], [4 x ptr], ptr, [4 x ptr], [4 x ptr], [8 x i8], [16 x [3 x %struct.x264_weight_t]], [16 x ptr], i32, ptr, ptr, ptr, [2 x ptr], ptr, [2 x [17 x ptr]], [18 x [18 x ptr]], [2 x [17 x ptr]], [2 x ptr], [2 x i32], [2 x [16 x i32]], [2 x i16], [18 x [18 x i32]], [18 x [18 x i32]], i32, [18 x i32], [18 x [18 x ptr]], ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, [18 x float], i32, i64, %struct.x264_hrd_t, [251 x i8], [251 x i32], [251 x double], i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32 }
%struct.x264_hrd_t = type { double, double, double, double }

@x264_sps_write.sar = internal unnamed_addr constant [14 x %struct.anon.5] [%struct.anon.5 { i8 1, i8 1, i8 1 }, %struct.anon.5 { i8 12, i8 11, i8 2 }, %struct.anon.5 { i8 10, i8 11, i8 3 }, %struct.anon.5 { i8 16, i8 11, i8 4 }, %struct.anon.5 { i8 40, i8 33, i8 5 }, %struct.anon.5 { i8 24, i8 11, i8 6 }, %struct.anon.5 { i8 20, i8 11, i8 7 }, %struct.anon.5 { i8 32, i8 11, i8 8 }, %struct.anon.5 { i8 80, i8 33, i8 9 }, %struct.anon.5 { i8 18, i8 11, i8 10 }, %struct.anon.5 { i8 15, i8 11, i8 11 }, %struct.anon.5 { i8 64, i8 33, i8 12 }, %struct.anon.5 { i8 -96, i8 99, i8 13 }, %struct.anon.5 { i8 0, i8 0, i8 -1 }], align 16
@x264_cqm_flat16 = internal constant [64 x i8] c"\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10", align 16
@x264_cqm_jvt = internal unnamed_addr constant [6 x ptr] [ptr @x264_cqm_jvt4i, ptr @x264_cqm_jvt4p, ptr @x264_cqm_jvt4i, ptr @x264_cqm_jvt4p, ptr @x264_cqm_jvt8i, ptr @x264_cqm_jvt8p], align 16
@__const.x264_sei_version_write.uuid = private unnamed_addr constant [16 x i8] c"\DCE\E9\BD\E6\D9H\B7\96,\D8 \D9#\EE\EF", align 16
@.str = private unnamed_addr constant [113 x i8] c"x264 - core %d%s - H.264/MPEG-4 AVC codec - Copyleft 2003-2010 - http://www.videolan.org/x264.html - options: %s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@num_clock_ts = internal unnamed_addr constant [10 x i8] c"\00\01\01\01\02\02\03\03\02\03", align 1
@x264_levels = dso_local local_unnamed_addr constant [16 x %struct.x264_level_t] [%struct.x264_level_t { i32 10, i32 1485, i32 99, i32 152064, i32 64, i32 175, i32 64, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 11, i32 3000, i32 396, i32 345600, i32 192, i32 500, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 12, i32 6000, i32 396, i32 912384, i32 384, i32 1000, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 13, i32 11880, i32 396, i32 912384, i32 768, i32 2000, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 20, i32 11880, i32 396, i32 912384, i32 2000, i32 2000, i32 128, i32 64, i32 0, i32 2, i32 0, i32 0, i32 1 }, %struct.x264_level_t { i32 21, i32 19800, i32 792, i32 1824768, i32 4000, i32 4000, i32 256, i32 64, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.x264_level_t { i32 22, i32 20250, i32 1620, i32 3110400, i32 4000, i32 4000, i32 256, i32 64, i32 0, i32 2, i32 0, i32 0, i32 0 }, %struct.x264_level_t { i32 30, i32 40500, i32 1620, i32 3110400, i32 10000, i32 10000, i32 256, i32 32, i32 22, i32 2, i32 0, i32 1, i32 0 }, %struct.x264_level_t { i32 31, i32 108000, i32 3600, i32 6912000, i32 14000, i32 14000, i32 512, i32 16, i32 60, i32 4, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 32, i32 216000, i32 5120, i32 7864320, i32 20000, i32 20000, i32 512, i32 16, i32 60, i32 4, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 40, i32 245760, i32 8192, i32 12582912, i32 20000, i32 25000, i32 512, i32 16, i32 60, i32 4, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 41, i32 245760, i32 8192, i32 12582912, i32 50000, i32 62500, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 0 }, %struct.x264_level_t { i32 42, i32 522240, i32 8704, i32 13369344, i32 50000, i32 62500, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 1 }, %struct.x264_level_t { i32 50, i32 589824, i32 22080, i32 42393600, i32 135000, i32 135000, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 1 }, %struct.x264_level_t { i32 51, i32 983040, i32 36864, i32 70778880, i32 240000, i32 240000, i32 512, i32 16, i32 24, i32 2, i32 1, i32 1, i32 1 }, %struct.x264_level_t zeroinitializer], align 16
@.str.2 = private unnamed_addr constant [42 x i8] c"frame MB size (%dx%d) > level limit (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"DPB size (%d frames, %d bytes) > level limit (%d frames, %d bytes)\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"VBV bitrate (%d) > level limit (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"VBV buffer (%d) > level limit (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"MV range (%d) > level limit (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"interlaced (%d) > level limit (%d)\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"fake interlaced (%d) > level limit (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"MB rate (%d) > level limit (%d)\0A\00", align 1
@x264_ue_size_tab = internal unnamed_addr constant [256 x i8] c"\01\01\03\03\05\05\05\05\07\07\07\07\07\07\07\07\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", align 16
@x264_cqm_jvt4i = internal constant [16 x i8] c"\06\0D\14\1C\0D\14\1C \14\1C %\1C %*", align 16
@x264_cqm_jvt4p = internal constant [16 x i8] c"\0A\0E\14\18\0E\14\18\1B\14\18\1B\1E\18\1B\1E\22", align 16
@x264_cqm_jvt8i = internal constant [64 x i8] c"\06\0A\0D\10\12\17\19\1B\0A\0B\10\12\17\19\1B\1D\0D\10\12\17\19\1B\1D\1F\10\12\17\19\1B\1D\1F!\12\17\19\1B\1D\1F!$\17\19\1B\1D\1F!$&\19\1B\1D\1F!$&(\1B\1D\1F!$&(*", align 16
@x264_cqm_jvt8p = internal constant [64 x i8] c"\09\0D\0F\11\13\15\16\18\0D\0D\11\13\15\16\18\19\0F\11\13\15\16\18\19\1B\11\13\15\16\18\19\1B\1C\13\15\16\18\19\1B\1C\1E\15\16\18\19\1B\1C\1E \16\18\19\1B\1C\1E !\18\19\1B\1C\1E !#", align 16
@x264_zigzag_scan4 = internal unnamed_addr constant [2 x [16 x i8]] [[16 x i8] c"\00\04\01\02\05\08\0C\09\06\03\07\0A\0D\0E\0B\0F", [16 x i8] c"\00\01\04\02\03\05\06\07\08\09\0A\0B\0C\0D\0E\0F"], align 16
@x264_zigzag_scan8 = internal unnamed_addr constant [2 x [64 x i8]] [[64 x i8] c"\00\08\01\02\09\10\18\11\0A\03\04\0B\12\19 (!\1A\13\0C\05\06\0D\14\1B\22)081*#\1C\15\0E\07\0F\16\1D$+29:3,%\1E\17\1F&-4;<5.'/6=>7?", [64 x i8] c"\00\01\02\08\09\03\04\0A\10\0B\05\06\07\0C\11\18\12\0D\0E\0F\13\19 \1A\14\15\16\17\1B!(\22\1C\1D\1E\1F#)0*$%&'+12,-./3894567:;<=>?"], align 16

; Function Attrs: nofree nounwind memory(write, argmem: readwrite) uwtable
define dso_local void @x264_sps_init(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 4, !tbaa !34
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42
  %5 = load i32, ptr %4, align 8, !tbaa !42
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !49
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 25
  store i32 %11, ptr %12, align 4, !tbaa !50
  br i1 %10, label %40, label %15

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 25
  store i32 0, ptr %14, align 4, !tbaa !50
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !51
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28
  %21 = load i32, ptr %20, align 8, !tbaa !52
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 24
  %25 = load i32, ptr %24, align 8, !tbaa !53
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !54
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %33 = load i32, ptr %32, align 8, !tbaa !55
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !56
  %38 = icmp sgt i32 %37, 0
  %39 = select i1 %38, i32 77, i32 66
  br label %40

40:                                               ; preds = %35, %23, %27, %31, %15, %19, %7
  %41 = phi i32 [ 244, %7 ], [ 100, %19 ], [ 100, %15 ], [ 77, %31 ], [ 77, %27 ], [ 77, %23 ], [ %39, %35 ]
  %42 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !57
  %43 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8
  %44 = load i32, ptr %43, align 8, !tbaa !58
  %45 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 2
  store i32 %44, ptr %45, align 4, !tbaa !59
  %46 = icmp eq i32 %41, 66
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 3
  store i32 %47, ptr %48, align 4, !tbaa !60
  %49 = icmp ult i32 %41, 78
  %50 = zext i1 %49 to i32
  %51 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 4
  store i32 %50, ptr %51, align 4, !tbaa !61
  %52 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %52, align 4, !tbaa !62
  %53 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 13
  %54 = load i32, ptr %53, align 4, !tbaa !63
  br label %55

55:                                               ; preds = %55, %40
  %56 = phi i32 [ 4, %40 ], [ %61, %55 ]
  %57 = shl nuw i32 1, %56
  %58 = icmp sle i32 %57, %54
  %59 = icmp ult i32 %56, 10
  %60 = and i1 %59, %58
  %61 = add nuw nsw i32 %56, 1
  br i1 %60, label %55, label %62, !llvm.loop !64

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 6
  %64 = add nuw nsw i32 %56, 1
  store i32 %64, ptr %63, align 4, !tbaa !67
  %65 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 7
  store i32 0, ptr %65, align 4, !tbaa !68
  %66 = add nuw nsw i32 %56, 2
  %67 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 8
  store i32 %66, ptr %67, align 4, !tbaa !69
  %68 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 23
  store i32 1, ptr %68, align 4, !tbaa !70
  %69 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %69, align 4, !tbaa !71
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !72
  %72 = add nsw i32 %71, 15
  %73 = sdiv i32 %72, 16
  %74 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 16
  store i32 %73, ptr %74, align 4, !tbaa !73
  %75 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 6
  %76 = load i32, ptr %75, align 8, !tbaa !74
  %77 = add nsw i32 %76, 15
  %78 = sdiv i32 %77, 16
  %79 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 17
  store i32 %78, ptr %79, align 4, !tbaa !75
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %81 = load i32, ptr %80, align 8, !tbaa !55
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %62
  %84 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 55
  %85 = load i32, ptr %84, align 8, !tbaa !76
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  br label %88

88:                                               ; preds = %62, %83
  %89 = phi i32 [ %87, %83 ], [ 0, %62 ]
  %90 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 18
  store i32 %89, ptr %90, align 4, !tbaa !77
  %91 = icmp eq i32 %89, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = add nsw i32 %78, 1
  %94 = and i32 %93, -2
  store i32 %94, ptr %79, align 4, !tbaa !75
  br label %95

95:                                               ; preds = %92, %88
  %96 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 19
  store i32 %81, ptr %96, align 4, !tbaa !78
  %97 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 20
  store i32 1, ptr %97, align 4, !tbaa !79
  %98 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22
  store i32 0, ptr %98, align 4, !tbaa !80
  %99 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 2
  store i32 0, ptr %99, align 4, !tbaa !81
  %100 = shl nsw i32 %73, 4
  %101 = sub nsw i32 %100, %71
  %102 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 1
  store i32 %101, ptr %102, align 4, !tbaa !82
  %103 = load i32, ptr %79, align 4, !tbaa !75
  %104 = shl nsw i32 %103, 4
  %105 = sub nsw i32 %104, %76
  %106 = xor i32 %89, 1
  %107 = ashr i32 %105, %106
  %108 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 3
  store i32 %107, ptr %108, align 4, !tbaa !83
  %109 = icmp ne i32 %100, %71
  %110 = icmp ne i32 %107, 0
  %111 = select i1 %109, i1 true, i1 %110
  %112 = zext i1 %111 to i32
  %113 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 21
  store i32 %112, ptr %113, align 4, !tbaa !84
  %114 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24
  store i32 0, ptr %114, align 4, !tbaa !85
  %115 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !86
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %95
  %119 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11
  %120 = load i32, ptr %119, align 4, !tbaa !87
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %118
  store i32 1, ptr %114, align 4, !tbaa !85
  %123 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 1
  store i32 %116, ptr %123, align 4, !tbaa !88
  %124 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 2
  store i32 %120, ptr %124, align 4, !tbaa !89
  br label %125

125:                                              ; preds = %122, %118, %95
  %126 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 2
  %127 = load i32, ptr %126, align 4, !tbaa !90
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i32
  %130 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 3
  store i32 %129, ptr %130, align 4, !tbaa !91
  br i1 %128, label %131, label %135

131:                                              ; preds = %125
  %132 = icmp eq i32 %127, 2
  %133 = zext i1 %132 to i32
  %134 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 4
  store i32 %133, ptr %134, align 4, !tbaa !92
  br label %135

135:                                              ; preds = %131, %125
  %136 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 5
  store i32 0, ptr %136, align 4, !tbaa !93
  %137 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 3
  %138 = load i32, ptr %137, align 4, !tbaa !94
  %139 = tail call i32 @llvm.smin.i32(i32 %138, i32 5)
  %140 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 6
  store i32 %139, ptr %140, align 4, !tbaa !95
  %141 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 4
  %142 = load i32, ptr %141, align 4, !tbaa !96
  %143 = icmp ne i32 %142, 0
  %144 = zext i1 %143 to i32
  %145 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 7
  store i32 %144, ptr %145, align 4, !tbaa !97
  %146 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 8
  store i32 0, ptr %146, align 4, !tbaa !98
  %147 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 5
  %148 = load i32, ptr %147, align 4, !tbaa !99
  %149 = icmp slt i32 %148, 10
  %150 = select i1 %149, i32 %148, i32 2
  %151 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 9
  store i32 %150, ptr %151, align 4, !tbaa !100
  %152 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 6
  %153 = load i32, ptr %152, align 4, !tbaa !101
  %154 = icmp slt i32 %153, 12
  %155 = select i1 %154, i32 %153, i32 2
  %156 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 10
  store i32 %155, ptr %156, align 4, !tbaa !102
  %157 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 7
  %158 = load i32, ptr %157, align 4, !tbaa !103
  %159 = icmp slt i32 %158, 10
  %160 = select i1 %159, i32 %158, i32 2
  %161 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 11
  store i32 %160, ptr %161, align 4, !tbaa !104
  %162 = icmp eq i32 %150, 2
  br i1 %162, label %163, label %167

163:                                              ; preds = %135
  %164 = icmp eq i32 %155, 2
  %165 = icmp eq i32 %160, 2
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %168, label %167

167:                                              ; preds = %163, %135
  store i32 1, ptr %146, align 4, !tbaa !98
  br label %168

168:                                              ; preds = %163, %167
  %169 = icmp slt i32 %138, 5
  %170 = select i1 %169, i1 true, i1 %143
  br i1 %170, label %174, label %171

171:                                              ; preds = %168
  %172 = load i32, ptr %146, align 4, !tbaa !98
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %175, label %174

174:                                              ; preds = %171, %168
  store i32 1, ptr %136, align 4, !tbaa !93
  br label %175

175:                                              ; preds = %174, %171
  %176 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 8
  %177 = load i32, ptr %176, align 4, !tbaa !105
  %178 = icmp ne i32 %177, 0
  %179 = zext i1 %178 to i32
  %180 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 12
  store i32 %179, ptr %180, align 4, !tbaa !106
  br i1 %178, label %181, label %184

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 13
  store i32 %177, ptr %182, align 4, !tbaa !107
  %183 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 14
  store i32 %177, ptr %183, align 4, !tbaa !108
  br label %184

184:                                              ; preds = %181, %175
  %185 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 50
  %186 = load i32, ptr %185, align 4, !tbaa !109
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %203, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 51
  %190 = load i32, ptr %189, align 8, !tbaa !110
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i32
  %193 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 15
  store i32 %192, ptr %193, align 4, !tbaa !111
  br i1 %191, label %194, label %205

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 16
  store i32 %186, ptr %195, align 4, !tbaa !112
  %196 = shl i32 %190, 1
  %197 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 17
  store i32 %196, ptr %197, align 4, !tbaa !113
  %198 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 47
  %199 = load i32, ptr %198, align 8, !tbaa !114
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 18
  store i32 %201, ptr %202, align 4, !tbaa !115
  br label %205

203:                                              ; preds = %184
  %204 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 15
  store i32 0, ptr %204, align 4, !tbaa !111
  br label %205

205:                                              ; preds = %203, %194, %188
  %206 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 20
  store i32 0, ptr %206, align 4, !tbaa !116
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 10
  %208 = load i32, ptr %207, align 8, !tbaa !117
  %209 = icmp ne i32 %208, 0
  %210 = zext i1 %209 to i32
  %211 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 19
  store i32 %210, ptr %211, align 4, !tbaa !118
  %212 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 54
  %213 = load i32, ptr %212, align 4, !tbaa !119
  %214 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 22
  store i32 %213, ptr %214, align 4, !tbaa !120
  %215 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 20
  %216 = load i32, ptr %215, align 8, !tbaa !121
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %205
  %219 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 17
  %220 = load i32, ptr %219, align 4, !tbaa !54
  %221 = icmp ne i32 %220, 0
  %222 = zext i1 %221 to i32
  br label %223

223:                                              ; preds = %205, %218
  %224 = phi i32 [ 1, %218 ], [ 4, %205 ]
  %225 = phi i32 [ %222, %218 ], [ 2, %205 ]
  %226 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 29
  store i32 %225, ptr %226, align 4, !tbaa !122
  %227 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 12
  %228 = load i32, ptr %227, align 8, !tbaa !123
  %229 = icmp ult i32 %225, %224
  %230 = add nuw nsw i32 %225, 1
  %231 = select i1 %229, i32 %224, i32 %230
  %232 = tail call i32 @llvm.smax.i32(i32 %228, i32 %231)
  %233 = icmp ugt i32 %232, 16
  br i1 %233, label %238, label %234

234:                                              ; preds = %223
  %235 = icmp ult i32 %225, %224
  %236 = select i1 %235, i32 %224, i32 %230
  %237 = tail call i32 @llvm.smax.i32(i32 %228, i32 %236)
  br label %238

238:                                              ; preds = %234, %223
  %239 = phi i32 [ 16, %223 ], [ %237, %234 ]
  %240 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 14
  store i32 %239, ptr %240, align 4, !tbaa !124
  %241 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 30
  store i32 %239, ptr %241, align 4, !tbaa !125
  %242 = icmp eq i32 %216, 1
  %243 = sext i1 %242 to i32
  %244 = add nsw i32 %239, %243
  store i32 %244, ptr %240, align 4, !tbaa !124
  %245 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 23
  store i32 1, ptr %245, align 4, !tbaa !126
  %246 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 24
  store i32 1, ptr %246, align 4, !tbaa !127
  %247 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 25
  store i32 0, ptr %247, align 4, !tbaa !128
  %248 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 26
  store i32 0, ptr %248, align 4, !tbaa !129
  %249 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 9
  %250 = load i32, ptr %249, align 4, !tbaa !130
  %251 = icmp slt i32 %250, 1
  %252 = shl nsw i32 %250, 2
  %253 = add nsw i32 %252, -1
  %254 = sitofp i32 %253 to float
  %255 = select i1 %251, float 1.000000e+00, float %254
  %256 = tail call float @log2f(float noundef %255) #12
  %257 = fptosi float %256 to i32
  %258 = add nsw i32 %257, 1
  %259 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 28
  store i32 %258, ptr %259, align 4, !tbaa !131
  %260 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 27
  store i32 %258, ptr %260, align 4, !tbaa !132
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sps_write(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = ptrtoint ptr %4 to i64
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = and i64 %5, 3
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  store ptr %12, ptr %3, align 8, !tbaa !133
  %13 = trunc i64 %10 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = sub nuw nsw i32 64, %14
  %16 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  store i32 %15, ptr %16, align 8, !tbaa !136
  %17 = load i32, ptr %12, align 4, !tbaa !137
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %21 = shl nuw nsw i32 %7, 3
  %22 = sub nuw nsw i32 32, %21
  %23 = zext nneg i32 %22 to i64
  %24 = lshr i64 %19, %23
  store i64 %24, ptr %20, align 8, !tbaa !138
  br label %25

25:                                               ; preds = %2, %9
  %26 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !57
  %28 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %29 = load i64, ptr %28, align 8, !tbaa !138
  %30 = shl i64 %29, 8
  %31 = zext i32 %27 to i64
  %32 = or i64 %30, %31
  store i64 %32, ptr %28, align 8, !tbaa !138
  %33 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %34 = load i32, ptr %33, align 8, !tbaa !136
  %35 = add nsw i32 %34, -8
  store i32 %35, ptr %33, align 8, !tbaa !136
  %36 = icmp slt i32 %34, 41
  br i1 %36, label %37, label %47

37:                                               ; preds = %25
  %38 = zext nneg i32 %35 to i64
  %39 = shl i64 %32, %38
  %40 = tail call i64 @llvm.bswap.i64(i64 %39)
  %41 = trunc i64 %40 to i32
  %42 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %41, ptr %42, align 4, !tbaa !137
  %43 = load i32, ptr %33, align 8, !tbaa !136
  %44 = add nsw i32 %43, 32
  store i32 %44, ptr %33, align 8, !tbaa !136
  %45 = load ptr, ptr %3, align 8, !tbaa !133
  %46 = getelementptr inbounds i8, ptr %45, i64 4
  store ptr %46, ptr %3, align 8, !tbaa !133
  br label %47

47:                                               ; preds = %25, %37
  %48 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !60
  %50 = load i64, ptr %28, align 8, !tbaa !138
  %51 = shl i64 %50, 1
  %52 = zext i32 %49 to i64
  %53 = or i64 %51, %52
  store i64 %53, ptr %28, align 8, !tbaa !138
  %54 = load i32, ptr %33, align 8, !tbaa !136
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %33, align 8, !tbaa !136
  %56 = icmp slt i32 %54, 34
  br i1 %56, label %57, label %67

57:                                               ; preds = %47
  %58 = zext nneg i32 %55 to i64
  %59 = shl i64 %53, %58
  %60 = tail call i64 @llvm.bswap.i64(i64 %59)
  %61 = trunc i64 %60 to i32
  %62 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %61, ptr %62, align 4, !tbaa !137
  %63 = load i32, ptr %33, align 8, !tbaa !136
  %64 = add nsw i32 %63, 32
  store i32 %64, ptr %33, align 8, !tbaa !136
  %65 = load ptr, ptr %3, align 8, !tbaa !133
  %66 = getelementptr inbounds i8, ptr %65, i64 4
  store ptr %66, ptr %3, align 8, !tbaa !133
  br label %67

67:                                               ; preds = %47, %57
  %68 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 4
  %69 = load i32, ptr %68, align 4, !tbaa !61
  %70 = load i64, ptr %28, align 8, !tbaa !138
  %71 = shl i64 %70, 1
  %72 = zext i32 %69 to i64
  %73 = or i64 %71, %72
  store i64 %73, ptr %28, align 8, !tbaa !138
  %74 = load i32, ptr %33, align 8, !tbaa !136
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %33, align 8, !tbaa !136
  %76 = icmp slt i32 %74, 34
  br i1 %76, label %77, label %87

77:                                               ; preds = %67
  %78 = zext nneg i32 %75 to i64
  %79 = shl i64 %73, %78
  %80 = tail call i64 @llvm.bswap.i64(i64 %79)
  %81 = trunc i64 %80 to i32
  %82 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %81, ptr %82, align 4, !tbaa !137
  %83 = load i32, ptr %33, align 8, !tbaa !136
  %84 = add nsw i32 %83, 32
  store i32 %84, ptr %33, align 8, !tbaa !136
  %85 = load ptr, ptr %3, align 8, !tbaa !133
  %86 = getelementptr inbounds i8, ptr %85, i64 4
  store ptr %86, ptr %3, align 8, !tbaa !133
  br label %87

87:                                               ; preds = %67, %77
  %88 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 5
  %89 = load i32, ptr %88, align 4, !tbaa !62
  %90 = load i64, ptr %28, align 8, !tbaa !138
  %91 = shl i64 %90, 1
  %92 = zext i32 %89 to i64
  %93 = or i64 %91, %92
  store i64 %93, ptr %28, align 8, !tbaa !138
  %94 = load i32, ptr %33, align 8, !tbaa !136
  %95 = add nsw i32 %94, -1
  store i32 %95, ptr %33, align 8, !tbaa !136
  %96 = icmp slt i32 %94, 34
  br i1 %96, label %97, label %107

97:                                               ; preds = %87
  %98 = zext nneg i32 %95 to i64
  %99 = shl i64 %93, %98
  %100 = tail call i64 @llvm.bswap.i64(i64 %99)
  %101 = trunc i64 %100 to i32
  %102 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %101, ptr %102, align 4, !tbaa !137
  %103 = load i32, ptr %33, align 8, !tbaa !136
  %104 = add nsw i32 %103, 32
  store i32 %104, ptr %33, align 8, !tbaa !136
  %105 = load ptr, ptr %3, align 8, !tbaa !133
  %106 = getelementptr inbounds i8, ptr %105, i64 4
  store ptr %106, ptr %3, align 8, !tbaa !133
  br label %107

107:                                              ; preds = %87, %97
  %108 = load i64, ptr %28, align 8, !tbaa !138
  %109 = shl i64 %108, 5
  store i64 %109, ptr %28, align 8, !tbaa !138
  %110 = load i32, ptr %33, align 8, !tbaa !136
  %111 = add nsw i32 %110, -5
  store i32 %111, ptr %33, align 8, !tbaa !136
  %112 = icmp slt i32 %110, 38
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = zext nneg i32 %111 to i64
  %115 = shl i64 %109, %114
  %116 = tail call i64 @llvm.bswap.i64(i64 %115)
  %117 = trunc i64 %116 to i32
  %118 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %117, ptr %118, align 4, !tbaa !137
  %119 = load i32, ptr %33, align 8, !tbaa !136
  %120 = add nsw i32 %119, 32
  store i32 %120, ptr %33, align 8, !tbaa !136
  %121 = load ptr, ptr %3, align 8, !tbaa !133
  %122 = getelementptr inbounds i8, ptr %121, i64 4
  store ptr %122, ptr %3, align 8, !tbaa !133
  br label %123

123:                                              ; preds = %107, %113
  %124 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !59
  %126 = load i64, ptr %28, align 8, !tbaa !138
  %127 = shl i64 %126, 8
  %128 = zext i32 %125 to i64
  %129 = or i64 %127, %128
  store i64 %129, ptr %28, align 8, !tbaa !138
  %130 = load i32, ptr %33, align 8, !tbaa !136
  %131 = add nsw i32 %130, -8
  store i32 %131, ptr %33, align 8, !tbaa !136
  %132 = icmp slt i32 %130, 41
  br i1 %132, label %133, label %143

133:                                              ; preds = %123
  %134 = zext nneg i32 %131 to i64
  %135 = shl i64 %129, %134
  %136 = tail call i64 @llvm.bswap.i64(i64 %135)
  %137 = trunc i64 %136 to i32
  %138 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %137, ptr %138, align 4, !tbaa !137
  %139 = load i32, ptr %33, align 8, !tbaa !136
  %140 = add nsw i32 %139, 32
  store i32 %140, ptr %33, align 8, !tbaa !136
  %141 = load ptr, ptr %3, align 8, !tbaa !133
  %142 = getelementptr inbounds i8, ptr %141, i64 4
  store ptr %142, ptr %3, align 8, !tbaa !133
  br label %143

143:                                              ; preds = %123, %133
  %144 = load i32, ptr %1, align 4, !tbaa !34
  %145 = add i32 %144, 1
  %146 = icmp sgt i32 %145, 65535
  %147 = lshr i32 %145, 16
  %148 = select i1 %146, i32 32, i32 0
  %149 = select i1 %146, i32 %147, i32 %145
  %150 = icmp sgt i32 %149, 255
  %151 = or disjoint i32 %148, 16
  %152 = lshr i32 %149, 8
  %153 = select i1 %150, i32 %151, i32 %148
  %154 = select i1 %150, i32 %152, i32 %149
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %155
  %157 = load i8, ptr %156, align 1, !tbaa !137
  %158 = zext i8 %157 to i32
  %159 = add nuw nsw i32 %153, %158
  %160 = lshr i32 %159, 1
  %161 = load i64, ptr %28, align 8, !tbaa !138
  %162 = zext nneg i32 %160 to i64
  %163 = shl i64 %161, %162
  store i64 %163, ptr %28, align 8, !tbaa !138
  %164 = load i32, ptr %33, align 8, !tbaa !136
  %165 = sub nsw i32 %164, %160
  store i32 %165, ptr %33, align 8, !tbaa !136
  %166 = icmp slt i32 %165, 33
  br i1 %166, label %167, label %177

167:                                              ; preds = %143
  %168 = zext nneg i32 %165 to i64
  %169 = shl i64 %163, %168
  %170 = tail call i64 @llvm.bswap.i64(i64 %169)
  %171 = trunc i64 %170 to i32
  %172 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %171, ptr %172, align 4, !tbaa !137
  %173 = load i32, ptr %33, align 8, !tbaa !136
  %174 = add nsw i32 %173, 32
  store i32 %174, ptr %33, align 8, !tbaa !136
  %175 = load ptr, ptr %3, align 8, !tbaa !133
  %176 = getelementptr inbounds i8, ptr %175, i64 4
  store ptr %176, ptr %3, align 8, !tbaa !133
  br label %177

177:                                              ; preds = %167, %143
  %178 = add nuw nsw i32 %160, 1
  %179 = load i64, ptr %28, align 8, !tbaa !138
  %180 = zext nneg i32 %178 to i64
  %181 = shl i64 %179, %180
  %182 = zext i32 %145 to i64
  %183 = or i64 %181, %182
  store i64 %183, ptr %28, align 8, !tbaa !138
  %184 = load i32, ptr %33, align 8, !tbaa !136
  %185 = sub nsw i32 %184, %178
  store i32 %185, ptr %33, align 8, !tbaa !136
  %186 = icmp slt i32 %185, 33
  br i1 %186, label %187, label %197

187:                                              ; preds = %177
  %188 = zext nneg i32 %185 to i64
  %189 = shl i64 %183, %188
  %190 = tail call i64 @llvm.bswap.i64(i64 %189)
  %191 = trunc i64 %190 to i32
  %192 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %191, ptr %192, align 4, !tbaa !137
  %193 = load i32, ptr %33, align 8, !tbaa !136
  %194 = add nsw i32 %193, 32
  store i32 %194, ptr %33, align 8, !tbaa !136
  %195 = load ptr, ptr %3, align 8, !tbaa !133
  %196 = getelementptr inbounds i8, ptr %195, i64 4
  store ptr %196, ptr %3, align 8, !tbaa !133
  br label %197

197:                                              ; preds = %177, %187
  %198 = load i32, ptr %26, align 4, !tbaa !57
  %199 = icmp sgt i32 %198, 99
  br i1 %199, label %200, label %331

200:                                              ; preds = %197
  %201 = load i64, ptr %28, align 8, !tbaa !138
  %202 = shl i64 %201, 1
  store i64 %202, ptr %28, align 8, !tbaa !138
  %203 = load i32, ptr %33, align 8, !tbaa !136
  %204 = add nsw i32 %203, -1
  store i32 %204, ptr %33, align 8, !tbaa !136
  %205 = icmp slt i32 %203, 34
  br i1 %205, label %206, label %216

206:                                              ; preds = %200
  %207 = zext nneg i32 %204 to i64
  %208 = shl i64 %202, %207
  %209 = tail call i64 @llvm.bswap.i64(i64 %208)
  %210 = trunc i64 %209 to i32
  %211 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %210, ptr %211, align 4, !tbaa !137
  %212 = load i32, ptr %33, align 8, !tbaa !136
  %213 = add nsw i32 %212, 32
  store i32 %213, ptr %33, align 8, !tbaa !136
  %214 = load ptr, ptr %3, align 8, !tbaa !133
  %215 = getelementptr inbounds i8, ptr %214, i64 4
  store ptr %215, ptr %3, align 8, !tbaa !133
  br label %216

216:                                              ; preds = %206, %200
  %217 = load i64, ptr %28, align 8, !tbaa !138
  %218 = shl i64 %217, 2
  %219 = or disjoint i64 %218, 2
  store i64 %219, ptr %28, align 8, !tbaa !138
  %220 = load i32, ptr %33, align 8, !tbaa !136
  %221 = add nsw i32 %220, -2
  store i32 %221, ptr %33, align 8, !tbaa !136
  %222 = icmp slt i32 %220, 35
  br i1 %222, label %223, label %233

223:                                              ; preds = %216
  %224 = zext nneg i32 %221 to i64
  %225 = shl i64 %219, %224
  %226 = tail call i64 @llvm.bswap.i64(i64 %225)
  %227 = trunc i64 %226 to i32
  %228 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %227, ptr %228, align 4, !tbaa !137
  %229 = load i32, ptr %33, align 8, !tbaa !136
  %230 = add nsw i32 %229, 32
  store i32 %230, ptr %33, align 8, !tbaa !136
  %231 = load ptr, ptr %3, align 8, !tbaa !133
  %232 = getelementptr inbounds i8, ptr %231, i64 4
  store ptr %232, ptr %3, align 8, !tbaa !133
  br label %233

233:                                              ; preds = %216, %223
  %234 = load i32, ptr %33, align 8, !tbaa !136
  %235 = icmp slt i32 %234, 33
  br i1 %235, label %236, label %247

236:                                              ; preds = %233
  %237 = load i64, ptr %28, align 8, !tbaa !138
  %238 = zext nneg i32 %234 to i64
  %239 = shl i64 %237, %238
  %240 = tail call i64 @llvm.bswap.i64(i64 %239)
  %241 = trunc i64 %240 to i32
  %242 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %241, ptr %242, align 4, !tbaa !137
  %243 = load i32, ptr %33, align 8, !tbaa !136
  %244 = add nsw i32 %243, 32
  store i32 %244, ptr %33, align 8, !tbaa !136
  %245 = load ptr, ptr %3, align 8, !tbaa !133
  %246 = getelementptr inbounds i8, ptr %245, i64 4
  store ptr %246, ptr %3, align 8, !tbaa !133
  br label %247

247:                                              ; preds = %236, %233
  %248 = load i64, ptr %28, align 8, !tbaa !138
  %249 = shl i64 %248, 1
  %250 = or disjoint i64 %249, 1
  store i64 %250, ptr %28, align 8, !tbaa !138
  %251 = load i32, ptr %33, align 8, !tbaa !136
  %252 = add nsw i32 %251, -1
  store i32 %252, ptr %33, align 8, !tbaa !136
  %253 = icmp slt i32 %251, 34
  br i1 %253, label %254, label %264

254:                                              ; preds = %247
  %255 = zext nneg i32 %252 to i64
  %256 = shl i64 %250, %255
  %257 = tail call i64 @llvm.bswap.i64(i64 %256)
  %258 = trunc i64 %257 to i32
  %259 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %258, ptr %259, align 4, !tbaa !137
  %260 = load i32, ptr %33, align 8, !tbaa !136
  %261 = add nsw i32 %260, 32
  store i32 %261, ptr %33, align 8, !tbaa !136
  %262 = load ptr, ptr %3, align 8, !tbaa !133
  %263 = getelementptr inbounds i8, ptr %262, i64 4
  store ptr %263, ptr %3, align 8, !tbaa !133
  br label %264

264:                                              ; preds = %247, %254
  %265 = load i32, ptr %33, align 8, !tbaa !136
  %266 = icmp slt i32 %265, 33
  br i1 %266, label %267, label %278

267:                                              ; preds = %264
  %268 = load i64, ptr %28, align 8, !tbaa !138
  %269 = zext nneg i32 %265 to i64
  %270 = shl i64 %268, %269
  %271 = tail call i64 @llvm.bswap.i64(i64 %270)
  %272 = trunc i64 %271 to i32
  %273 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %272, ptr %273, align 4, !tbaa !137
  %274 = load i32, ptr %33, align 8, !tbaa !136
  %275 = add nsw i32 %274, 32
  store i32 %275, ptr %33, align 8, !tbaa !136
  %276 = load ptr, ptr %3, align 8, !tbaa !133
  %277 = getelementptr inbounds i8, ptr %276, i64 4
  store ptr %277, ptr %3, align 8, !tbaa !133
  br label %278

278:                                              ; preds = %267, %264
  %279 = load i64, ptr %28, align 8, !tbaa !138
  %280 = shl i64 %279, 1
  %281 = or disjoint i64 %280, 1
  store i64 %281, ptr %28, align 8, !tbaa !138
  %282 = load i32, ptr %33, align 8, !tbaa !136
  %283 = add nsw i32 %282, -1
  store i32 %283, ptr %33, align 8, !tbaa !136
  %284 = icmp slt i32 %282, 34
  br i1 %284, label %285, label %295

285:                                              ; preds = %278
  %286 = zext nneg i32 %283 to i64
  %287 = shl i64 %281, %286
  %288 = tail call i64 @llvm.bswap.i64(i64 %287)
  %289 = trunc i64 %288 to i32
  %290 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %289, ptr %290, align 4, !tbaa !137
  %291 = load i32, ptr %33, align 8, !tbaa !136
  %292 = add nsw i32 %291, 32
  store i32 %292, ptr %33, align 8, !tbaa !136
  %293 = load ptr, ptr %3, align 8, !tbaa !133
  %294 = getelementptr inbounds i8, ptr %293, i64 4
  store ptr %294, ptr %3, align 8, !tbaa !133
  br label %295

295:                                              ; preds = %278, %285
  %296 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 25
  %297 = load i32, ptr %296, align 4, !tbaa !50
  %298 = load i64, ptr %28, align 8, !tbaa !138
  %299 = shl i64 %298, 1
  %300 = zext i32 %297 to i64
  %301 = or i64 %299, %300
  store i64 %301, ptr %28, align 8, !tbaa !138
  %302 = load i32, ptr %33, align 8, !tbaa !136
  %303 = add nsw i32 %302, -1
  store i32 %303, ptr %33, align 8, !tbaa !136
  %304 = icmp slt i32 %302, 34
  br i1 %304, label %305, label %315

305:                                              ; preds = %295
  %306 = zext nneg i32 %303 to i64
  %307 = shl i64 %301, %306
  %308 = tail call i64 @llvm.bswap.i64(i64 %307)
  %309 = trunc i64 %308 to i32
  %310 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %309, ptr %310, align 4, !tbaa !137
  %311 = load i32, ptr %33, align 8, !tbaa !136
  %312 = add nsw i32 %311, 32
  store i32 %312, ptr %33, align 8, !tbaa !136
  %313 = load ptr, ptr %3, align 8, !tbaa !133
  %314 = getelementptr inbounds i8, ptr %313, i64 4
  store ptr %314, ptr %3, align 8, !tbaa !133
  br label %315

315:                                              ; preds = %295, %305
  %316 = load i64, ptr %28, align 8, !tbaa !138
  %317 = shl i64 %316, 1
  store i64 %317, ptr %28, align 8, !tbaa !138
  %318 = load i32, ptr %33, align 8, !tbaa !136
  %319 = add nsw i32 %318, -1
  store i32 %319, ptr %33, align 8, !tbaa !136
  %320 = icmp slt i32 %318, 34
  br i1 %320, label %321, label %331

321:                                              ; preds = %315
  %322 = zext nneg i32 %319 to i64
  %323 = shl i64 %317, %322
  %324 = tail call i64 @llvm.bswap.i64(i64 %323)
  %325 = trunc i64 %324 to i32
  %326 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %325, ptr %326, align 4, !tbaa !137
  %327 = load i32, ptr %33, align 8, !tbaa !136
  %328 = add nsw i32 %327, 32
  store i32 %328, ptr %33, align 8, !tbaa !136
  %329 = load ptr, ptr %3, align 8, !tbaa !133
  %330 = getelementptr inbounds i8, ptr %329, i64 4
  store ptr %330, ptr %3, align 8, !tbaa !133
  br label %331

331:                                              ; preds = %321, %315, %197
  %332 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 6
  %333 = load i32, ptr %332, align 4, !tbaa !67
  %334 = add i32 %333, -3
  %335 = icmp sgt i32 %334, 65535
  %336 = lshr i32 %334, 16
  %337 = select i1 %335, i32 32, i32 0
  %338 = select i1 %335, i32 %336, i32 %334
  %339 = icmp sgt i32 %338, 255
  %340 = or disjoint i32 %337, 16
  %341 = lshr i32 %338, 8
  %342 = select i1 %339, i32 %340, i32 %337
  %343 = select i1 %339, i32 %341, i32 %338
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %344
  %346 = load i8, ptr %345, align 1, !tbaa !137
  %347 = zext i8 %346 to i32
  %348 = add nuw nsw i32 %342, %347
  %349 = lshr i32 %348, 1
  %350 = load i64, ptr %28, align 8, !tbaa !138
  %351 = zext nneg i32 %349 to i64
  %352 = shl i64 %350, %351
  store i64 %352, ptr %28, align 8, !tbaa !138
  %353 = load i32, ptr %33, align 8, !tbaa !136
  %354 = sub nsw i32 %353, %349
  store i32 %354, ptr %33, align 8, !tbaa !136
  %355 = icmp slt i32 %354, 33
  br i1 %355, label %356, label %366

356:                                              ; preds = %331
  %357 = zext nneg i32 %354 to i64
  %358 = shl i64 %352, %357
  %359 = tail call i64 @llvm.bswap.i64(i64 %358)
  %360 = trunc i64 %359 to i32
  %361 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %360, ptr %361, align 4, !tbaa !137
  %362 = load i32, ptr %33, align 8, !tbaa !136
  %363 = add nsw i32 %362, 32
  store i32 %363, ptr %33, align 8, !tbaa !136
  %364 = load ptr, ptr %3, align 8, !tbaa !133
  %365 = getelementptr inbounds i8, ptr %364, i64 4
  store ptr %365, ptr %3, align 8, !tbaa !133
  br label %366

366:                                              ; preds = %356, %331
  %367 = add nuw nsw i32 %349, 1
  %368 = load i64, ptr %28, align 8, !tbaa !138
  %369 = zext nneg i32 %367 to i64
  %370 = shl i64 %368, %369
  %371 = zext i32 %334 to i64
  %372 = or i64 %370, %371
  store i64 %372, ptr %28, align 8, !tbaa !138
  %373 = load i32, ptr %33, align 8, !tbaa !136
  %374 = sub nsw i32 %373, %367
  store i32 %374, ptr %33, align 8, !tbaa !136
  %375 = icmp slt i32 %374, 33
  br i1 %375, label %376, label %386

376:                                              ; preds = %366
  %377 = zext nneg i32 %374 to i64
  %378 = shl i64 %372, %377
  %379 = tail call i64 @llvm.bswap.i64(i64 %378)
  %380 = trunc i64 %379 to i32
  %381 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %380, ptr %381, align 4, !tbaa !137
  %382 = load i32, ptr %33, align 8, !tbaa !136
  %383 = add nsw i32 %382, 32
  store i32 %383, ptr %33, align 8, !tbaa !136
  %384 = load ptr, ptr %3, align 8, !tbaa !133
  %385 = getelementptr inbounds i8, ptr %384, i64 4
  store ptr %385, ptr %3, align 8, !tbaa !133
  br label %386

386:                                              ; preds = %366, %376
  %387 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 7
  %388 = load i32, ptr %387, align 4, !tbaa !68
  %389 = add i32 %388, 1
  %390 = icmp sgt i32 %389, 65535
  %391 = lshr i32 %389, 16
  %392 = select i1 %390, i32 32, i32 0
  %393 = select i1 %390, i32 %391, i32 %389
  %394 = icmp sgt i32 %393, 255
  %395 = or disjoint i32 %392, 16
  %396 = lshr i32 %393, 8
  %397 = select i1 %394, i32 %395, i32 %392
  %398 = select i1 %394, i32 %396, i32 %393
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %399
  %401 = load i8, ptr %400, align 1, !tbaa !137
  %402 = zext i8 %401 to i32
  %403 = add nuw nsw i32 %397, %402
  %404 = lshr i32 %403, 1
  %405 = load i64, ptr %28, align 8, !tbaa !138
  %406 = zext nneg i32 %404 to i64
  %407 = shl i64 %405, %406
  store i64 %407, ptr %28, align 8, !tbaa !138
  %408 = load i32, ptr %33, align 8, !tbaa !136
  %409 = sub nsw i32 %408, %404
  store i32 %409, ptr %33, align 8, !tbaa !136
  %410 = icmp slt i32 %409, 33
  br i1 %410, label %411, label %421

411:                                              ; preds = %386
  %412 = zext nneg i32 %409 to i64
  %413 = shl i64 %407, %412
  %414 = tail call i64 @llvm.bswap.i64(i64 %413)
  %415 = trunc i64 %414 to i32
  %416 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %415, ptr %416, align 4, !tbaa !137
  %417 = load i32, ptr %33, align 8, !tbaa !136
  %418 = add nsw i32 %417, 32
  store i32 %418, ptr %33, align 8, !tbaa !136
  %419 = load ptr, ptr %3, align 8, !tbaa !133
  %420 = getelementptr inbounds i8, ptr %419, i64 4
  store ptr %420, ptr %3, align 8, !tbaa !133
  br label %421

421:                                              ; preds = %411, %386
  %422 = add nuw nsw i32 %404, 1
  %423 = load i64, ptr %28, align 8, !tbaa !138
  %424 = zext nneg i32 %422 to i64
  %425 = shl i64 %423, %424
  %426 = zext i32 %389 to i64
  %427 = or i64 %425, %426
  store i64 %427, ptr %28, align 8, !tbaa !138
  %428 = load i32, ptr %33, align 8, !tbaa !136
  %429 = sub nsw i32 %428, %422
  store i32 %429, ptr %33, align 8, !tbaa !136
  %430 = icmp slt i32 %429, 33
  br i1 %430, label %431, label %441

431:                                              ; preds = %421
  %432 = zext nneg i32 %429 to i64
  %433 = shl i64 %427, %432
  %434 = tail call i64 @llvm.bswap.i64(i64 %433)
  %435 = trunc i64 %434 to i32
  %436 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %435, ptr %436, align 4, !tbaa !137
  %437 = load i32, ptr %33, align 8, !tbaa !136
  %438 = add nsw i32 %437, 32
  store i32 %438, ptr %33, align 8, !tbaa !136
  %439 = load ptr, ptr %3, align 8, !tbaa !133
  %440 = getelementptr inbounds i8, ptr %439, i64 4
  store ptr %440, ptr %3, align 8, !tbaa !133
  br label %441

441:                                              ; preds = %421, %431
  %442 = load i32, ptr %387, align 4, !tbaa !68
  switch i32 %442, label %692 [
    i32 0, label %443
    i32 1, label %500
  ]

443:                                              ; preds = %441
  %444 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 8
  %445 = load i32, ptr %444, align 4, !tbaa !69
  %446 = add i32 %445, -3
  %447 = icmp sgt i32 %446, 65535
  %448 = lshr i32 %446, 16
  %449 = select i1 %447, i32 32, i32 0
  %450 = select i1 %447, i32 %448, i32 %446
  %451 = icmp sgt i32 %450, 255
  %452 = or disjoint i32 %449, 16
  %453 = lshr i32 %450, 8
  %454 = select i1 %451, i32 %452, i32 %449
  %455 = select i1 %451, i32 %453, i32 %450
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %456
  %458 = load i8, ptr %457, align 1, !tbaa !137
  %459 = zext i8 %458 to i32
  %460 = add nuw nsw i32 %454, %459
  %461 = lshr i32 %460, 1
  %462 = load i64, ptr %28, align 8, !tbaa !138
  %463 = zext nneg i32 %461 to i64
  %464 = shl i64 %462, %463
  store i64 %464, ptr %28, align 8, !tbaa !138
  %465 = load i32, ptr %33, align 8, !tbaa !136
  %466 = sub nsw i32 %465, %461
  store i32 %466, ptr %33, align 8, !tbaa !136
  %467 = icmp slt i32 %466, 33
  br i1 %467, label %468, label %479

468:                                              ; preds = %443
  %469 = load i64, ptr %28, align 8, !tbaa !138
  %470 = zext nneg i32 %466 to i64
  %471 = shl i64 %469, %470
  %472 = tail call i64 @llvm.bswap.i64(i64 %471)
  %473 = trunc i64 %472 to i32
  %474 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %473, ptr %474, align 4, !tbaa !137
  %475 = load i32, ptr %33, align 8, !tbaa !136
  %476 = add nsw i32 %475, 32
  store i32 %476, ptr %33, align 8, !tbaa !136
  %477 = load ptr, ptr %3, align 8, !tbaa !133
  %478 = getelementptr inbounds i8, ptr %477, i64 4
  store ptr %478, ptr %3, align 8, !tbaa !133
  br label %479

479:                                              ; preds = %468, %443
  %480 = add nuw nsw i32 %461, 1
  %481 = load i64, ptr %28, align 8, !tbaa !138
  %482 = zext nneg i32 %480 to i64
  %483 = shl i64 %481, %482
  %484 = zext i32 %446 to i64
  %485 = or i64 %483, %484
  store i64 %485, ptr %28, align 8, !tbaa !138
  %486 = load i32, ptr %33, align 8, !tbaa !136
  %487 = sub nsw i32 %486, %480
  store i32 %487, ptr %33, align 8, !tbaa !136
  %488 = icmp slt i32 %487, 33
  br i1 %488, label %489, label %692

489:                                              ; preds = %479
  %490 = load i64, ptr %28, align 8, !tbaa !138
  %491 = zext nneg i32 %487 to i64
  %492 = shl i64 %490, %491
  %493 = tail call i64 @llvm.bswap.i64(i64 %492)
  %494 = trunc i64 %493 to i32
  %495 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %494, ptr %495, align 4, !tbaa !137
  %496 = load i32, ptr %33, align 8, !tbaa !136
  %497 = add nsw i32 %496, 32
  store i32 %497, ptr %33, align 8, !tbaa !136
  %498 = load ptr, ptr %3, align 8, !tbaa !133
  %499 = getelementptr inbounds i8, ptr %498, i64 4
  store ptr %499, ptr %3, align 8, !tbaa !133
  br label %692

500:                                              ; preds = %441
  %501 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 9
  %502 = load i32, ptr %501, align 4, !tbaa !139
  %503 = load i64, ptr %28, align 8, !tbaa !138
  %504 = shl i64 %503, 1
  %505 = zext i32 %502 to i64
  %506 = or i64 %504, %505
  store i64 %506, ptr %28, align 8, !tbaa !138
  %507 = load i32, ptr %33, align 8, !tbaa !136
  %508 = add nsw i32 %507, -1
  store i32 %508, ptr %33, align 8, !tbaa !136
  %509 = icmp slt i32 %507, 34
  br i1 %509, label %510, label %521

510:                                              ; preds = %500
  %511 = load i64, ptr %28, align 8, !tbaa !138
  %512 = zext nneg i32 %508 to i64
  %513 = shl i64 %511, %512
  %514 = tail call i64 @llvm.bswap.i64(i64 %513)
  %515 = trunc i64 %514 to i32
  %516 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %515, ptr %516, align 4, !tbaa !137
  %517 = load i32, ptr %33, align 8, !tbaa !136
  %518 = add nsw i32 %517, 32
  store i32 %518, ptr %33, align 8, !tbaa !136
  %519 = load ptr, ptr %3, align 8, !tbaa !133
  %520 = getelementptr inbounds i8, ptr %519, i64 4
  store ptr %520, ptr %3, align 8, !tbaa !133
  br label %521

521:                                              ; preds = %500, %510
  %522 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 10
  %523 = load i32, ptr %522, align 4, !tbaa !140
  %524 = shl nsw i32 %523, 1
  %525 = sub nsw i32 1, %524
  %526 = icmp sgt i32 %523, 0
  %527 = select i1 %526, i32 %524, i32 %525
  %528 = icmp sgt i32 %527, 255
  %529 = lshr i32 %527, 8
  %530 = select i1 %528, i32 16, i32 0
  %531 = select i1 %528, i32 %529, i32 %527
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %532
  %534 = load i8, ptr %533, align 1, !tbaa !137
  %535 = zext i8 %534 to i32
  %536 = add nuw nsw i32 %530, %535
  %537 = load i64, ptr %28, align 8, !tbaa !138
  %538 = zext nneg i32 %536 to i64
  %539 = shl i64 %537, %538
  %540 = zext i32 %527 to i64
  %541 = or i64 %539, %540
  store i64 %541, ptr %28, align 8, !tbaa !138
  %542 = load i32, ptr %33, align 8, !tbaa !136
  %543 = sub nsw i32 %542, %536
  store i32 %543, ptr %33, align 8, !tbaa !136
  %544 = icmp slt i32 %543, 33
  br i1 %544, label %545, label %556

545:                                              ; preds = %521
  %546 = load i64, ptr %28, align 8, !tbaa !138
  %547 = zext nneg i32 %543 to i64
  %548 = shl i64 %546, %547
  %549 = tail call i64 @llvm.bswap.i64(i64 %548)
  %550 = trunc i64 %549 to i32
  %551 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %550, ptr %551, align 4, !tbaa !137
  %552 = load i32, ptr %33, align 8, !tbaa !136
  %553 = add nsw i32 %552, 32
  store i32 %553, ptr %33, align 8, !tbaa !136
  %554 = load ptr, ptr %3, align 8, !tbaa !133
  %555 = getelementptr inbounds i8, ptr %554, i64 4
  store ptr %555, ptr %3, align 8, !tbaa !133
  br label %556

556:                                              ; preds = %521, %545
  %557 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 11
  %558 = load i32, ptr %557, align 4, !tbaa !141
  %559 = shl nsw i32 %558, 1
  %560 = sub nsw i32 1, %559
  %561 = icmp sgt i32 %558, 0
  %562 = select i1 %561, i32 %559, i32 %560
  %563 = icmp sgt i32 %562, 255
  %564 = lshr i32 %562, 8
  %565 = select i1 %563, i32 16, i32 0
  %566 = select i1 %563, i32 %564, i32 %562
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %567
  %569 = load i8, ptr %568, align 1, !tbaa !137
  %570 = zext i8 %569 to i32
  %571 = add nuw nsw i32 %565, %570
  %572 = load i64, ptr %28, align 8, !tbaa !138
  %573 = zext nneg i32 %571 to i64
  %574 = shl i64 %572, %573
  %575 = zext i32 %562 to i64
  %576 = or i64 %574, %575
  store i64 %576, ptr %28, align 8, !tbaa !138
  %577 = load i32, ptr %33, align 8, !tbaa !136
  %578 = sub nsw i32 %577, %571
  store i32 %578, ptr %33, align 8, !tbaa !136
  %579 = icmp slt i32 %578, 33
  br i1 %579, label %580, label %591

580:                                              ; preds = %556
  %581 = load i64, ptr %28, align 8, !tbaa !138
  %582 = zext nneg i32 %578 to i64
  %583 = shl i64 %581, %582
  %584 = tail call i64 @llvm.bswap.i64(i64 %583)
  %585 = trunc i64 %584 to i32
  %586 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %585, ptr %586, align 4, !tbaa !137
  %587 = load i32, ptr %33, align 8, !tbaa !136
  %588 = add nsw i32 %587, 32
  store i32 %588, ptr %33, align 8, !tbaa !136
  %589 = load ptr, ptr %3, align 8, !tbaa !133
  %590 = getelementptr inbounds i8, ptr %589, i64 4
  store ptr %590, ptr %3, align 8, !tbaa !133
  br label %591

591:                                              ; preds = %556, %580
  %592 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 12
  %593 = load i32, ptr %592, align 4, !tbaa !142
  %594 = add i32 %593, 1
  %595 = icmp sgt i32 %594, 65535
  %596 = lshr i32 %594, 16
  %597 = select i1 %595, i32 32, i32 0
  %598 = select i1 %595, i32 %596, i32 %594
  %599 = icmp sgt i32 %598, 255
  %600 = or disjoint i32 %597, 16
  %601 = lshr i32 %598, 8
  %602 = select i1 %599, i32 %600, i32 %597
  %603 = select i1 %599, i32 %601, i32 %598
  %604 = sext i32 %603 to i64
  %605 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %604
  %606 = load i8, ptr %605, align 1, !tbaa !137
  %607 = zext i8 %606 to i32
  %608 = add nuw nsw i32 %602, %607
  %609 = lshr i32 %608, 1
  %610 = load i64, ptr %28, align 8, !tbaa !138
  %611 = zext nneg i32 %609 to i64
  %612 = shl i64 %610, %611
  store i64 %612, ptr %28, align 8, !tbaa !138
  %613 = load i32, ptr %33, align 8, !tbaa !136
  %614 = sub nsw i32 %613, %609
  store i32 %614, ptr %33, align 8, !tbaa !136
  %615 = icmp slt i32 %614, 33
  br i1 %615, label %616, label %627

616:                                              ; preds = %591
  %617 = load i64, ptr %28, align 8, !tbaa !138
  %618 = zext nneg i32 %614 to i64
  %619 = shl i64 %617, %618
  %620 = tail call i64 @llvm.bswap.i64(i64 %619)
  %621 = trunc i64 %620 to i32
  %622 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %621, ptr %622, align 4, !tbaa !137
  %623 = load i32, ptr %33, align 8, !tbaa !136
  %624 = add nsw i32 %623, 32
  store i32 %624, ptr %33, align 8, !tbaa !136
  %625 = load ptr, ptr %3, align 8, !tbaa !133
  %626 = getelementptr inbounds i8, ptr %625, i64 4
  store ptr %626, ptr %3, align 8, !tbaa !133
  br label %627

627:                                              ; preds = %616, %591
  %628 = add nuw nsw i32 %609, 1
  %629 = load i64, ptr %28, align 8, !tbaa !138
  %630 = zext nneg i32 %628 to i64
  %631 = shl i64 %629, %630
  %632 = zext i32 %594 to i64
  %633 = or i64 %631, %632
  store i64 %633, ptr %28, align 8, !tbaa !138
  %634 = load i32, ptr %33, align 8, !tbaa !136
  %635 = sub nsw i32 %634, %628
  store i32 %635, ptr %33, align 8, !tbaa !136
  %636 = icmp slt i32 %635, 33
  br i1 %636, label %637, label %648

637:                                              ; preds = %627
  %638 = load i64, ptr %28, align 8, !tbaa !138
  %639 = zext nneg i32 %635 to i64
  %640 = shl i64 %638, %639
  %641 = tail call i64 @llvm.bswap.i64(i64 %640)
  %642 = trunc i64 %641 to i32
  %643 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %642, ptr %643, align 4, !tbaa !137
  %644 = load i32, ptr %33, align 8, !tbaa !136
  %645 = add nsw i32 %644, 32
  store i32 %645, ptr %33, align 8, !tbaa !136
  %646 = load ptr, ptr %3, align 8, !tbaa !133
  %647 = getelementptr inbounds i8, ptr %646, i64 4
  store ptr %647, ptr %3, align 8, !tbaa !133
  br label %648

648:                                              ; preds = %627, %637
  %649 = load i32, ptr %592, align 4, !tbaa !142
  %650 = icmp sgt i32 %649, 0
  br i1 %650, label %651, label %692

651:                                              ; preds = %648, %687
  %652 = phi i64 [ %688, %687 ], [ 0, %648 ]
  %653 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 13, i64 %652
  %654 = load i32, ptr %653, align 4, !tbaa !143
  %655 = shl nsw i32 %654, 1
  %656 = sub nsw i32 1, %655
  %657 = icmp sgt i32 %654, 0
  %658 = select i1 %657, i32 %655, i32 %656
  %659 = icmp sgt i32 %658, 255
  %660 = lshr i32 %658, 8
  %661 = select i1 %659, i32 16, i32 0
  %662 = select i1 %659, i32 %660, i32 %658
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %663
  %665 = load i8, ptr %664, align 1, !tbaa !137
  %666 = zext i8 %665 to i32
  %667 = add nuw nsw i32 %661, %666
  %668 = load i64, ptr %28, align 8, !tbaa !138
  %669 = zext nneg i32 %667 to i64
  %670 = shl i64 %668, %669
  %671 = zext i32 %658 to i64
  %672 = or i64 %670, %671
  store i64 %672, ptr %28, align 8, !tbaa !138
  %673 = load i32, ptr %33, align 8, !tbaa !136
  %674 = sub nsw i32 %673, %667
  store i32 %674, ptr %33, align 8, !tbaa !136
  %675 = icmp slt i32 %674, 33
  br i1 %675, label %676, label %687

676:                                              ; preds = %651
  %677 = load i64, ptr %28, align 8, !tbaa !138
  %678 = zext nneg i32 %674 to i64
  %679 = shl i64 %677, %678
  %680 = tail call i64 @llvm.bswap.i64(i64 %679)
  %681 = trunc i64 %680 to i32
  %682 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %681, ptr %682, align 4, !tbaa !137
  %683 = load i32, ptr %33, align 8, !tbaa !136
  %684 = add nsw i32 %683, 32
  store i32 %684, ptr %33, align 8, !tbaa !136
  %685 = load ptr, ptr %3, align 8, !tbaa !133
  %686 = getelementptr inbounds i8, ptr %685, i64 4
  store ptr %686, ptr %3, align 8, !tbaa !133
  br label %687

687:                                              ; preds = %651, %676
  %688 = add nuw nsw i64 %652, 1
  %689 = load i32, ptr %592, align 4, !tbaa !142
  %690 = sext i32 %689 to i64
  %691 = icmp slt i64 %688, %690
  br i1 %691, label %651, label %692, !llvm.loop !144

692:                                              ; preds = %687, %648, %489, %479, %441
  %693 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 14
  %694 = load i32, ptr %693, align 4, !tbaa !124
  %695 = add i32 %694, 1
  %696 = icmp sgt i32 %695, 65535
  %697 = lshr i32 %695, 16
  %698 = select i1 %696, i32 32, i32 0
  %699 = select i1 %696, i32 %697, i32 %695
  %700 = icmp sgt i32 %699, 255
  %701 = or disjoint i32 %698, 16
  %702 = lshr i32 %699, 8
  %703 = select i1 %700, i32 %701, i32 %698
  %704 = select i1 %700, i32 %702, i32 %699
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %705
  %707 = load i8, ptr %706, align 1, !tbaa !137
  %708 = zext i8 %707 to i32
  %709 = add nuw nsw i32 %703, %708
  %710 = lshr i32 %709, 1
  %711 = load i64, ptr %28, align 8, !tbaa !138
  %712 = zext nneg i32 %710 to i64
  %713 = shl i64 %711, %712
  store i64 %713, ptr %28, align 8, !tbaa !138
  %714 = load i32, ptr %33, align 8, !tbaa !136
  %715 = sub nsw i32 %714, %710
  store i32 %715, ptr %33, align 8, !tbaa !136
  %716 = icmp slt i32 %715, 33
  br i1 %716, label %717, label %727

717:                                              ; preds = %692
  %718 = zext nneg i32 %715 to i64
  %719 = shl i64 %713, %718
  %720 = tail call i64 @llvm.bswap.i64(i64 %719)
  %721 = trunc i64 %720 to i32
  %722 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %721, ptr %722, align 4, !tbaa !137
  %723 = load i32, ptr %33, align 8, !tbaa !136
  %724 = add nsw i32 %723, 32
  store i32 %724, ptr %33, align 8, !tbaa !136
  %725 = load ptr, ptr %3, align 8, !tbaa !133
  %726 = getelementptr inbounds i8, ptr %725, i64 4
  store ptr %726, ptr %3, align 8, !tbaa !133
  br label %727

727:                                              ; preds = %717, %692
  %728 = add nuw nsw i32 %710, 1
  %729 = load i64, ptr %28, align 8, !tbaa !138
  %730 = zext nneg i32 %728 to i64
  %731 = shl i64 %729, %730
  %732 = zext i32 %695 to i64
  %733 = or i64 %731, %732
  store i64 %733, ptr %28, align 8, !tbaa !138
  %734 = load i32, ptr %33, align 8, !tbaa !136
  %735 = sub nsw i32 %734, %728
  store i32 %735, ptr %33, align 8, !tbaa !136
  %736 = icmp slt i32 %735, 33
  br i1 %736, label %737, label %747

737:                                              ; preds = %727
  %738 = zext nneg i32 %735 to i64
  %739 = shl i64 %733, %738
  %740 = tail call i64 @llvm.bswap.i64(i64 %739)
  %741 = trunc i64 %740 to i32
  %742 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %741, ptr %742, align 4, !tbaa !137
  %743 = load i32, ptr %33, align 8, !tbaa !136
  %744 = add nsw i32 %743, 32
  store i32 %744, ptr %33, align 8, !tbaa !136
  %745 = load ptr, ptr %3, align 8, !tbaa !133
  %746 = getelementptr inbounds i8, ptr %745, i64 4
  store ptr %746, ptr %3, align 8, !tbaa !133
  br label %747

747:                                              ; preds = %727, %737
  %748 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 15
  %749 = load i32, ptr %748, align 4, !tbaa !71
  %750 = load i64, ptr %28, align 8, !tbaa !138
  %751 = shl i64 %750, 1
  %752 = zext i32 %749 to i64
  %753 = or i64 %751, %752
  store i64 %753, ptr %28, align 8, !tbaa !138
  %754 = load i32, ptr %33, align 8, !tbaa !136
  %755 = add nsw i32 %754, -1
  store i32 %755, ptr %33, align 8, !tbaa !136
  %756 = icmp slt i32 %754, 34
  br i1 %756, label %757, label %767

757:                                              ; preds = %747
  %758 = zext nneg i32 %755 to i64
  %759 = shl i64 %753, %758
  %760 = tail call i64 @llvm.bswap.i64(i64 %759)
  %761 = trunc i64 %760 to i32
  %762 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %761, ptr %762, align 4, !tbaa !137
  %763 = load i32, ptr %33, align 8, !tbaa !136
  %764 = add nsw i32 %763, 32
  store i32 %764, ptr %33, align 8, !tbaa !136
  %765 = load ptr, ptr %3, align 8, !tbaa !133
  %766 = getelementptr inbounds i8, ptr %765, i64 4
  store ptr %766, ptr %3, align 8, !tbaa !133
  br label %767

767:                                              ; preds = %747, %757
  %768 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 16
  %769 = load i32, ptr %768, align 4, !tbaa !73
  %770 = icmp sgt i32 %769, 65535
  %771 = lshr i32 %769, 16
  %772 = select i1 %770, i32 32, i32 0
  %773 = select i1 %770, i32 %771, i32 %769
  %774 = icmp sgt i32 %773, 255
  %775 = or disjoint i32 %772, 16
  %776 = lshr i32 %773, 8
  %777 = select i1 %774, i32 %775, i32 %772
  %778 = select i1 %774, i32 %776, i32 %773
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %779
  %781 = load i8, ptr %780, align 1, !tbaa !137
  %782 = zext i8 %781 to i32
  %783 = add nuw nsw i32 %777, %782
  %784 = lshr i32 %783, 1
  %785 = load i64, ptr %28, align 8, !tbaa !138
  %786 = zext nneg i32 %784 to i64
  %787 = shl i64 %785, %786
  store i64 %787, ptr %28, align 8, !tbaa !138
  %788 = load i32, ptr %33, align 8, !tbaa !136
  %789 = sub nsw i32 %788, %784
  store i32 %789, ptr %33, align 8, !tbaa !136
  %790 = icmp slt i32 %789, 33
  br i1 %790, label %791, label %801

791:                                              ; preds = %767
  %792 = zext nneg i32 %789 to i64
  %793 = shl i64 %787, %792
  %794 = tail call i64 @llvm.bswap.i64(i64 %793)
  %795 = trunc i64 %794 to i32
  %796 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %795, ptr %796, align 4, !tbaa !137
  %797 = load i32, ptr %33, align 8, !tbaa !136
  %798 = add nsw i32 %797, 32
  store i32 %798, ptr %33, align 8, !tbaa !136
  %799 = load ptr, ptr %3, align 8, !tbaa !133
  %800 = getelementptr inbounds i8, ptr %799, i64 4
  store ptr %800, ptr %3, align 8, !tbaa !133
  br label %801

801:                                              ; preds = %791, %767
  %802 = add nuw nsw i32 %784, 1
  %803 = load i64, ptr %28, align 8, !tbaa !138
  %804 = zext nneg i32 %802 to i64
  %805 = shl i64 %803, %804
  %806 = zext i32 %769 to i64
  %807 = or i64 %805, %806
  store i64 %807, ptr %28, align 8, !tbaa !138
  %808 = load i32, ptr %33, align 8, !tbaa !136
  %809 = sub nsw i32 %808, %802
  store i32 %809, ptr %33, align 8, !tbaa !136
  %810 = icmp slt i32 %809, 33
  br i1 %810, label %811, label %821

811:                                              ; preds = %801
  %812 = zext nneg i32 %809 to i64
  %813 = shl i64 %807, %812
  %814 = tail call i64 @llvm.bswap.i64(i64 %813)
  %815 = trunc i64 %814 to i32
  %816 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %815, ptr %816, align 4, !tbaa !137
  %817 = load i32, ptr %33, align 8, !tbaa !136
  %818 = add nsw i32 %817, 32
  store i32 %818, ptr %33, align 8, !tbaa !136
  %819 = load ptr, ptr %3, align 8, !tbaa !133
  %820 = getelementptr inbounds i8, ptr %819, i64 4
  store ptr %820, ptr %3, align 8, !tbaa !133
  br label %821

821:                                              ; preds = %801, %811
  %822 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 18
  %823 = load i32, ptr %822, align 4, !tbaa !77
  %824 = icmp eq i32 %823, 0
  %825 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 17
  %826 = load i32, ptr %825, align 4, !tbaa !75
  br i1 %824, label %872, label %827

827:                                              ; preds = %821
  %828 = icmp sgt i32 %826, 65535
  %829 = lshr i32 %826, 16
  %830 = select i1 %828, i32 32, i32 0
  %831 = select i1 %828, i32 %829, i32 %826
  %832 = icmp sgt i32 %831, 255
  %833 = or disjoint i32 %830, 16
  %834 = lshr i32 %831, 8
  %835 = select i1 %832, i32 %833, i32 %830
  %836 = select i1 %832, i32 %834, i32 %831
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %837
  %839 = load i8, ptr %838, align 1, !tbaa !137
  %840 = zext i8 %839 to i32
  %841 = add nuw nsw i32 %835, %840
  %842 = lshr i32 %841, 1
  %843 = load i64, ptr %28, align 8, !tbaa !138
  %844 = zext nneg i32 %842 to i64
  %845 = shl i64 %843, %844
  store i64 %845, ptr %28, align 8, !tbaa !138
  %846 = load i32, ptr %33, align 8, !tbaa !136
  %847 = sub nsw i32 %846, %842
  store i32 %847, ptr %33, align 8, !tbaa !136
  %848 = icmp slt i32 %847, 33
  br i1 %848, label %849, label %860

849:                                              ; preds = %827
  %850 = load i64, ptr %28, align 8, !tbaa !138
  %851 = zext nneg i32 %847 to i64
  %852 = shl i64 %850, %851
  %853 = tail call i64 @llvm.bswap.i64(i64 %852)
  %854 = trunc i64 %853 to i32
  %855 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %854, ptr %855, align 4, !tbaa !137
  %856 = load i32, ptr %33, align 8, !tbaa !136
  %857 = add nsw i32 %856, 32
  store i32 %857, ptr %33, align 8, !tbaa !136
  %858 = load ptr, ptr %3, align 8, !tbaa !133
  %859 = getelementptr inbounds i8, ptr %858, i64 4
  store ptr %859, ptr %3, align 8, !tbaa !133
  br label %860

860:                                              ; preds = %849, %827
  %861 = add nuw nsw i32 %842, 1
  %862 = load i64, ptr %28, align 8, !tbaa !138
  %863 = zext nneg i32 %861 to i64
  %864 = shl i64 %862, %863
  %865 = zext i32 %826 to i64
  %866 = or i64 %864, %865
  store i64 %866, ptr %28, align 8, !tbaa !138
  %867 = load i32, ptr %33, align 8, !tbaa !136
  %868 = sub nsw i32 %867, %861
  store i32 %868, ptr %33, align 8, !tbaa !136
  %869 = icmp slt i32 %868, 33
  br i1 %869, label %870, label %927

870:                                              ; preds = %860
  %871 = load i64, ptr %28, align 8, !tbaa !138
  br label %915

872:                                              ; preds = %821
  %873 = sdiv i32 %826, 2
  %874 = icmp sgt i32 %826, 131071
  %875 = lshr i32 %873, 16
  %876 = select i1 %874, i32 32, i32 0
  %877 = select i1 %874, i32 %875, i32 %873
  %878 = icmp sgt i32 %877, 255
  %879 = or disjoint i32 %876, 16
  %880 = lshr i32 %877, 8
  %881 = select i1 %878, i32 %879, i32 %876
  %882 = select i1 %878, i32 %880, i32 %877
  %883 = sext i32 %882 to i64
  %884 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %883
  %885 = load i8, ptr %884, align 1, !tbaa !137
  %886 = zext i8 %885 to i32
  %887 = add nuw nsw i32 %881, %886
  %888 = lshr i32 %887, 1
  %889 = load i64, ptr %28, align 8, !tbaa !138
  %890 = zext nneg i32 %888 to i64
  %891 = shl i64 %889, %890
  store i64 %891, ptr %28, align 8, !tbaa !138
  %892 = load i32, ptr %33, align 8, !tbaa !136
  %893 = sub nsw i32 %892, %888
  store i32 %893, ptr %33, align 8, !tbaa !136
  %894 = icmp slt i32 %893, 33
  br i1 %894, label %895, label %905

895:                                              ; preds = %872
  %896 = zext nneg i32 %893 to i64
  %897 = shl i64 %891, %896
  %898 = tail call i64 @llvm.bswap.i64(i64 %897)
  %899 = trunc i64 %898 to i32
  %900 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %899, ptr %900, align 4, !tbaa !137
  %901 = load i32, ptr %33, align 8, !tbaa !136
  %902 = add nsw i32 %901, 32
  store i32 %902, ptr %33, align 8, !tbaa !136
  %903 = load ptr, ptr %3, align 8, !tbaa !133
  %904 = getelementptr inbounds i8, ptr %903, i64 4
  store ptr %904, ptr %3, align 8, !tbaa !133
  br label %905

905:                                              ; preds = %895, %872
  %906 = add nuw nsw i32 %888, 1
  %907 = load i64, ptr %28, align 8, !tbaa !138
  %908 = zext nneg i32 %906 to i64
  %909 = shl i64 %907, %908
  %910 = zext i32 %873 to i64
  %911 = or i64 %909, %910
  store i64 %911, ptr %28, align 8, !tbaa !138
  %912 = load i32, ptr %33, align 8, !tbaa !136
  %913 = sub nsw i32 %912, %906
  store i32 %913, ptr %33, align 8, !tbaa !136
  %914 = icmp slt i32 %913, 33
  br i1 %914, label %915, label %927

915:                                              ; preds = %905, %870
  %916 = phi i32 [ %868, %870 ], [ %913, %905 ]
  %917 = phi i64 [ %871, %870 ], [ %911, %905 ]
  %918 = zext nneg i32 %916 to i64
  %919 = shl i64 %917, %918
  %920 = tail call i64 @llvm.bswap.i64(i64 %919)
  %921 = trunc i64 %920 to i32
  %922 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %921, ptr %922, align 4, !tbaa !137
  %923 = load i32, ptr %33, align 8, !tbaa !136
  %924 = add nsw i32 %923, 32
  store i32 %924, ptr %33, align 8, !tbaa !136
  %925 = load ptr, ptr %3, align 8, !tbaa !133
  %926 = getelementptr inbounds i8, ptr %925, i64 4
  store ptr %926, ptr %3, align 8, !tbaa !133
  br label %927

927:                                              ; preds = %915, %905, %860
  %928 = load i32, ptr %822, align 4, !tbaa !77
  %929 = load i64, ptr %28, align 8, !tbaa !138
  %930 = shl i64 %929, 1
  %931 = zext i32 %928 to i64
  %932 = or i64 %930, %931
  store i64 %932, ptr %28, align 8, !tbaa !138
  %933 = load i32, ptr %33, align 8, !tbaa !136
  %934 = add nsw i32 %933, -1
  store i32 %934, ptr %33, align 8, !tbaa !136
  %935 = icmp slt i32 %933, 34
  br i1 %935, label %936, label %946

936:                                              ; preds = %927
  %937 = zext nneg i32 %934 to i64
  %938 = shl i64 %932, %937
  %939 = tail call i64 @llvm.bswap.i64(i64 %938)
  %940 = trunc i64 %939 to i32
  %941 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %940, ptr %941, align 4, !tbaa !137
  %942 = load i32, ptr %33, align 8, !tbaa !136
  %943 = add nsw i32 %942, 32
  store i32 %943, ptr %33, align 8, !tbaa !136
  %944 = load ptr, ptr %3, align 8, !tbaa !133
  %945 = getelementptr inbounds i8, ptr %944, i64 4
  store ptr %945, ptr %3, align 8, !tbaa !133
  br label %946

946:                                              ; preds = %927, %936
  %947 = load i32, ptr %822, align 4, !tbaa !77
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %969

949:                                              ; preds = %946
  %950 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 19
  %951 = load i32, ptr %950, align 4, !tbaa !78
  %952 = load i64, ptr %28, align 8, !tbaa !138
  %953 = shl i64 %952, 1
  %954 = zext i32 %951 to i64
  %955 = or i64 %953, %954
  store i64 %955, ptr %28, align 8, !tbaa !138
  %956 = load i32, ptr %33, align 8, !tbaa !136
  %957 = add nsw i32 %956, -1
  store i32 %957, ptr %33, align 8, !tbaa !136
  %958 = icmp slt i32 %956, 34
  br i1 %958, label %959, label %969

959:                                              ; preds = %949
  %960 = zext nneg i32 %957 to i64
  %961 = shl i64 %955, %960
  %962 = tail call i64 @llvm.bswap.i64(i64 %961)
  %963 = trunc i64 %962 to i32
  %964 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %963, ptr %964, align 4, !tbaa !137
  %965 = load i32, ptr %33, align 8, !tbaa !136
  %966 = add nsw i32 %965, 32
  store i32 %966, ptr %33, align 8, !tbaa !136
  %967 = load ptr, ptr %3, align 8, !tbaa !133
  %968 = getelementptr inbounds i8, ptr %967, i64 4
  store ptr %968, ptr %3, align 8, !tbaa !133
  br label %969

969:                                              ; preds = %959, %949, %946
  %970 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 20
  %971 = load i32, ptr %970, align 4, !tbaa !79
  %972 = load i64, ptr %28, align 8, !tbaa !138
  %973 = shl i64 %972, 1
  %974 = zext i32 %971 to i64
  %975 = or i64 %973, %974
  store i64 %975, ptr %28, align 8, !tbaa !138
  %976 = load i32, ptr %33, align 8, !tbaa !136
  %977 = add nsw i32 %976, -1
  store i32 %977, ptr %33, align 8, !tbaa !136
  %978 = icmp slt i32 %976, 34
  br i1 %978, label %979, label %989

979:                                              ; preds = %969
  %980 = zext nneg i32 %977 to i64
  %981 = shl i64 %975, %980
  %982 = tail call i64 @llvm.bswap.i64(i64 %981)
  %983 = trunc i64 %982 to i32
  %984 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %983, ptr %984, align 4, !tbaa !137
  %985 = load i32, ptr %33, align 8, !tbaa !136
  %986 = add nsw i32 %985, 32
  store i32 %986, ptr %33, align 8, !tbaa !136
  %987 = load ptr, ptr %3, align 8, !tbaa !133
  %988 = getelementptr inbounds i8, ptr %987, i64 4
  store ptr %988, ptr %3, align 8, !tbaa !133
  br label %989

989:                                              ; preds = %969, %979
  %990 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 21
  %991 = load i32, ptr %990, align 4, !tbaa !84
  %992 = load i64, ptr %28, align 8, !tbaa !138
  %993 = shl i64 %992, 1
  %994 = zext i32 %991 to i64
  %995 = or i64 %993, %994
  store i64 %995, ptr %28, align 8, !tbaa !138
  %996 = load i32, ptr %33, align 8, !tbaa !136
  %997 = add nsw i32 %996, -1
  store i32 %997, ptr %33, align 8, !tbaa !136
  %998 = icmp slt i32 %996, 34
  br i1 %998, label %999, label %1009

999:                                              ; preds = %989
  %1000 = zext nneg i32 %997 to i64
  %1001 = shl i64 %995, %1000
  %1002 = tail call i64 @llvm.bswap.i64(i64 %1001)
  %1003 = trunc i64 %1002 to i32
  %1004 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1003, ptr %1004, align 4, !tbaa !137
  %1005 = load i32, ptr %33, align 8, !tbaa !136
  %1006 = add nsw i32 %1005, 32
  store i32 %1006, ptr %33, align 8, !tbaa !136
  %1007 = load ptr, ptr %3, align 8, !tbaa !133
  %1008 = getelementptr inbounds i8, ptr %1007, i64 4
  store ptr %1008, ptr %3, align 8, !tbaa !133
  br label %1009

1009:                                             ; preds = %989, %999
  %1010 = load i32, ptr %990, align 4, !tbaa !84
  %1011 = icmp eq i32 %1010, 0
  br i1 %1011, label %1244, label %1012

1012:                                             ; preds = %1009
  %1013 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22
  %1014 = load i32, ptr %1013, align 4, !tbaa !80
  %1015 = sdiv i32 %1014, 2
  %1016 = add nsw i32 %1015, 1
  %1017 = icmp sgt i32 %1014, 131069
  %1018 = lshr i32 %1016, 16
  %1019 = select i1 %1017, i32 32, i32 0
  %1020 = select i1 %1017, i32 %1018, i32 %1016
  %1021 = icmp sgt i32 %1020, 255
  %1022 = or disjoint i32 %1019, 16
  %1023 = lshr i32 %1020, 8
  %1024 = select i1 %1021, i32 %1022, i32 %1019
  %1025 = select i1 %1021, i32 %1023, i32 %1020
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1026
  %1028 = load i8, ptr %1027, align 1, !tbaa !137
  %1029 = zext i8 %1028 to i32
  %1030 = add nuw nsw i32 %1024, %1029
  %1031 = lshr i32 %1030, 1
  %1032 = load i64, ptr %28, align 8, !tbaa !138
  %1033 = zext nneg i32 %1031 to i64
  %1034 = shl i64 %1032, %1033
  store i64 %1034, ptr %28, align 8, !tbaa !138
  %1035 = load i32, ptr %33, align 8, !tbaa !136
  %1036 = sub nsw i32 %1035, %1031
  store i32 %1036, ptr %33, align 8, !tbaa !136
  %1037 = icmp slt i32 %1036, 33
  br i1 %1037, label %1038, label %1049

1038:                                             ; preds = %1012
  %1039 = load i64, ptr %28, align 8, !tbaa !138
  %1040 = zext nneg i32 %1036 to i64
  %1041 = shl i64 %1039, %1040
  %1042 = tail call i64 @llvm.bswap.i64(i64 %1041)
  %1043 = trunc i64 %1042 to i32
  %1044 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1043, ptr %1044, align 4, !tbaa !137
  %1045 = load i32, ptr %33, align 8, !tbaa !136
  %1046 = add nsw i32 %1045, 32
  store i32 %1046, ptr %33, align 8, !tbaa !136
  %1047 = load ptr, ptr %3, align 8, !tbaa !133
  %1048 = getelementptr inbounds i8, ptr %1047, i64 4
  store ptr %1048, ptr %3, align 8, !tbaa !133
  br label %1049

1049:                                             ; preds = %1038, %1012
  %1050 = add nuw nsw i32 %1031, 1
  %1051 = load i64, ptr %28, align 8, !tbaa !138
  %1052 = zext nneg i32 %1050 to i64
  %1053 = shl i64 %1051, %1052
  %1054 = zext i32 %1016 to i64
  %1055 = or i64 %1053, %1054
  store i64 %1055, ptr %28, align 8, !tbaa !138
  %1056 = load i32, ptr %33, align 8, !tbaa !136
  %1057 = sub nsw i32 %1056, %1050
  store i32 %1057, ptr %33, align 8, !tbaa !136
  %1058 = icmp slt i32 %1057, 33
  br i1 %1058, label %1059, label %1070

1059:                                             ; preds = %1049
  %1060 = load i64, ptr %28, align 8, !tbaa !138
  %1061 = zext nneg i32 %1057 to i64
  %1062 = shl i64 %1060, %1061
  %1063 = tail call i64 @llvm.bswap.i64(i64 %1062)
  %1064 = trunc i64 %1063 to i32
  %1065 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1064, ptr %1065, align 4, !tbaa !137
  %1066 = load i32, ptr %33, align 8, !tbaa !136
  %1067 = add nsw i32 %1066, 32
  store i32 %1067, ptr %33, align 8, !tbaa !136
  %1068 = load ptr, ptr %3, align 8, !tbaa !133
  %1069 = getelementptr inbounds i8, ptr %1068, i64 4
  store ptr %1069, ptr %3, align 8, !tbaa !133
  br label %1070

1070:                                             ; preds = %1049, %1059
  %1071 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 1
  %1072 = load i32, ptr %1071, align 4, !tbaa !82
  %1073 = sdiv i32 %1072, 2
  %1074 = add nsw i32 %1073, 1
  %1075 = icmp sgt i32 %1072, 131069
  %1076 = lshr i32 %1074, 16
  %1077 = select i1 %1075, i32 32, i32 0
  %1078 = select i1 %1075, i32 %1076, i32 %1074
  %1079 = icmp sgt i32 %1078, 255
  %1080 = or disjoint i32 %1077, 16
  %1081 = lshr i32 %1078, 8
  %1082 = select i1 %1079, i32 %1080, i32 %1077
  %1083 = select i1 %1079, i32 %1081, i32 %1078
  %1084 = sext i32 %1083 to i64
  %1085 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1084
  %1086 = load i8, ptr %1085, align 1, !tbaa !137
  %1087 = zext i8 %1086 to i32
  %1088 = add nuw nsw i32 %1082, %1087
  %1089 = lshr i32 %1088, 1
  %1090 = load i64, ptr %28, align 8, !tbaa !138
  %1091 = zext nneg i32 %1089 to i64
  %1092 = shl i64 %1090, %1091
  store i64 %1092, ptr %28, align 8, !tbaa !138
  %1093 = load i32, ptr %33, align 8, !tbaa !136
  %1094 = sub nsw i32 %1093, %1089
  store i32 %1094, ptr %33, align 8, !tbaa !136
  %1095 = icmp slt i32 %1094, 33
  br i1 %1095, label %1096, label %1107

1096:                                             ; preds = %1070
  %1097 = load i64, ptr %28, align 8, !tbaa !138
  %1098 = zext nneg i32 %1094 to i64
  %1099 = shl i64 %1097, %1098
  %1100 = tail call i64 @llvm.bswap.i64(i64 %1099)
  %1101 = trunc i64 %1100 to i32
  %1102 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1101, ptr %1102, align 4, !tbaa !137
  %1103 = load i32, ptr %33, align 8, !tbaa !136
  %1104 = add nsw i32 %1103, 32
  store i32 %1104, ptr %33, align 8, !tbaa !136
  %1105 = load ptr, ptr %3, align 8, !tbaa !133
  %1106 = getelementptr inbounds i8, ptr %1105, i64 4
  store ptr %1106, ptr %3, align 8, !tbaa !133
  br label %1107

1107:                                             ; preds = %1096, %1070
  %1108 = add nuw nsw i32 %1089, 1
  %1109 = load i64, ptr %28, align 8, !tbaa !138
  %1110 = zext nneg i32 %1108 to i64
  %1111 = shl i64 %1109, %1110
  %1112 = zext i32 %1074 to i64
  %1113 = or i64 %1111, %1112
  store i64 %1113, ptr %28, align 8, !tbaa !138
  %1114 = load i32, ptr %33, align 8, !tbaa !136
  %1115 = sub nsw i32 %1114, %1108
  store i32 %1115, ptr %33, align 8, !tbaa !136
  %1116 = icmp slt i32 %1115, 33
  br i1 %1116, label %1117, label %1128

1117:                                             ; preds = %1107
  %1118 = load i64, ptr %28, align 8, !tbaa !138
  %1119 = zext nneg i32 %1115 to i64
  %1120 = shl i64 %1118, %1119
  %1121 = tail call i64 @llvm.bswap.i64(i64 %1120)
  %1122 = trunc i64 %1121 to i32
  %1123 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1122, ptr %1123, align 4, !tbaa !137
  %1124 = load i32, ptr %33, align 8, !tbaa !136
  %1125 = add nsw i32 %1124, 32
  store i32 %1125, ptr %33, align 8, !tbaa !136
  %1126 = load ptr, ptr %3, align 8, !tbaa !133
  %1127 = getelementptr inbounds i8, ptr %1126, i64 4
  store ptr %1127, ptr %3, align 8, !tbaa !133
  br label %1128

1128:                                             ; preds = %1107, %1117
  %1129 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 2
  %1130 = load i32, ptr %1129, align 4, !tbaa !81
  %1131 = sdiv i32 %1130, 2
  %1132 = add nsw i32 %1131, 1
  %1133 = icmp sgt i32 %1130, 131069
  %1134 = lshr i32 %1132, 16
  %1135 = select i1 %1133, i32 32, i32 0
  %1136 = select i1 %1133, i32 %1134, i32 %1132
  %1137 = icmp sgt i32 %1136, 255
  %1138 = or disjoint i32 %1135, 16
  %1139 = lshr i32 %1136, 8
  %1140 = select i1 %1137, i32 %1138, i32 %1135
  %1141 = select i1 %1137, i32 %1139, i32 %1136
  %1142 = sext i32 %1141 to i64
  %1143 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1142
  %1144 = load i8, ptr %1143, align 1, !tbaa !137
  %1145 = zext i8 %1144 to i32
  %1146 = add nuw nsw i32 %1140, %1145
  %1147 = lshr i32 %1146, 1
  %1148 = load i64, ptr %28, align 8, !tbaa !138
  %1149 = zext nneg i32 %1147 to i64
  %1150 = shl i64 %1148, %1149
  store i64 %1150, ptr %28, align 8, !tbaa !138
  %1151 = load i32, ptr %33, align 8, !tbaa !136
  %1152 = sub nsw i32 %1151, %1147
  store i32 %1152, ptr %33, align 8, !tbaa !136
  %1153 = icmp slt i32 %1152, 33
  br i1 %1153, label %1154, label %1165

1154:                                             ; preds = %1128
  %1155 = load i64, ptr %28, align 8, !tbaa !138
  %1156 = zext nneg i32 %1152 to i64
  %1157 = shl i64 %1155, %1156
  %1158 = tail call i64 @llvm.bswap.i64(i64 %1157)
  %1159 = trunc i64 %1158 to i32
  %1160 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1159, ptr %1160, align 4, !tbaa !137
  %1161 = load i32, ptr %33, align 8, !tbaa !136
  %1162 = add nsw i32 %1161, 32
  store i32 %1162, ptr %33, align 8, !tbaa !136
  %1163 = load ptr, ptr %3, align 8, !tbaa !133
  %1164 = getelementptr inbounds i8, ptr %1163, i64 4
  store ptr %1164, ptr %3, align 8, !tbaa !133
  br label %1165

1165:                                             ; preds = %1154, %1128
  %1166 = add nuw nsw i32 %1147, 1
  %1167 = load i64, ptr %28, align 8, !tbaa !138
  %1168 = zext nneg i32 %1166 to i64
  %1169 = shl i64 %1167, %1168
  %1170 = zext i32 %1132 to i64
  %1171 = or i64 %1169, %1170
  store i64 %1171, ptr %28, align 8, !tbaa !138
  %1172 = load i32, ptr %33, align 8, !tbaa !136
  %1173 = sub nsw i32 %1172, %1166
  store i32 %1173, ptr %33, align 8, !tbaa !136
  %1174 = icmp slt i32 %1173, 33
  br i1 %1174, label %1175, label %1186

1175:                                             ; preds = %1165
  %1176 = load i64, ptr %28, align 8, !tbaa !138
  %1177 = zext nneg i32 %1173 to i64
  %1178 = shl i64 %1176, %1177
  %1179 = tail call i64 @llvm.bswap.i64(i64 %1178)
  %1180 = trunc i64 %1179 to i32
  %1181 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1180, ptr %1181, align 4, !tbaa !137
  %1182 = load i32, ptr %33, align 8, !tbaa !136
  %1183 = add nsw i32 %1182, 32
  store i32 %1183, ptr %33, align 8, !tbaa !136
  %1184 = load ptr, ptr %3, align 8, !tbaa !133
  %1185 = getelementptr inbounds i8, ptr %1184, i64 4
  store ptr %1185, ptr %3, align 8, !tbaa !133
  br label %1186

1186:                                             ; preds = %1165, %1175
  %1187 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 3
  %1188 = load i32, ptr %1187, align 4, !tbaa !83
  %1189 = sdiv i32 %1188, 2
  %1190 = add nsw i32 %1189, 1
  %1191 = icmp sgt i32 %1188, 131069
  %1192 = lshr i32 %1190, 16
  %1193 = select i1 %1191, i32 32, i32 0
  %1194 = select i1 %1191, i32 %1192, i32 %1190
  %1195 = icmp sgt i32 %1194, 255
  %1196 = or disjoint i32 %1193, 16
  %1197 = lshr i32 %1194, 8
  %1198 = select i1 %1195, i32 %1196, i32 %1193
  %1199 = select i1 %1195, i32 %1197, i32 %1194
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1200
  %1202 = load i8, ptr %1201, align 1, !tbaa !137
  %1203 = zext i8 %1202 to i32
  %1204 = add nuw nsw i32 %1198, %1203
  %1205 = lshr i32 %1204, 1
  %1206 = load i64, ptr %28, align 8, !tbaa !138
  %1207 = zext nneg i32 %1205 to i64
  %1208 = shl i64 %1206, %1207
  store i64 %1208, ptr %28, align 8, !tbaa !138
  %1209 = load i32, ptr %33, align 8, !tbaa !136
  %1210 = sub nsw i32 %1209, %1205
  store i32 %1210, ptr %33, align 8, !tbaa !136
  %1211 = icmp slt i32 %1210, 33
  br i1 %1211, label %1212, label %1223

1212:                                             ; preds = %1186
  %1213 = load i64, ptr %28, align 8, !tbaa !138
  %1214 = zext nneg i32 %1210 to i64
  %1215 = shl i64 %1213, %1214
  %1216 = tail call i64 @llvm.bswap.i64(i64 %1215)
  %1217 = trunc i64 %1216 to i32
  %1218 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1217, ptr %1218, align 4, !tbaa !137
  %1219 = load i32, ptr %33, align 8, !tbaa !136
  %1220 = add nsw i32 %1219, 32
  store i32 %1220, ptr %33, align 8, !tbaa !136
  %1221 = load ptr, ptr %3, align 8, !tbaa !133
  %1222 = getelementptr inbounds i8, ptr %1221, i64 4
  store ptr %1222, ptr %3, align 8, !tbaa !133
  br label %1223

1223:                                             ; preds = %1212, %1186
  %1224 = add nuw nsw i32 %1205, 1
  %1225 = load i64, ptr %28, align 8, !tbaa !138
  %1226 = zext nneg i32 %1224 to i64
  %1227 = shl i64 %1225, %1226
  %1228 = zext i32 %1190 to i64
  %1229 = or i64 %1227, %1228
  store i64 %1229, ptr %28, align 8, !tbaa !138
  %1230 = load i32, ptr %33, align 8, !tbaa !136
  %1231 = sub nsw i32 %1230, %1224
  store i32 %1231, ptr %33, align 8, !tbaa !136
  %1232 = icmp slt i32 %1231, 33
  br i1 %1232, label %1233, label %1244

1233:                                             ; preds = %1223
  %1234 = load i64, ptr %28, align 8, !tbaa !138
  %1235 = zext nneg i32 %1231 to i64
  %1236 = shl i64 %1234, %1235
  %1237 = tail call i64 @llvm.bswap.i64(i64 %1236)
  %1238 = trunc i64 %1237 to i32
  %1239 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1238, ptr %1239, align 4, !tbaa !137
  %1240 = load i32, ptr %33, align 8, !tbaa !136
  %1241 = add nsw i32 %1240, 32
  store i32 %1241, ptr %33, align 8, !tbaa !136
  %1242 = load ptr, ptr %3, align 8, !tbaa !133
  %1243 = getelementptr inbounds i8, ptr %1242, i64 4
  store ptr %1243, ptr %3, align 8, !tbaa !133
  br label %1244

1244:                                             ; preds = %1233, %1223, %1009
  %1245 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 23
  %1246 = load i32, ptr %1245, align 4, !tbaa !70
  %1247 = load i64, ptr %28, align 8, !tbaa !138
  %1248 = shl i64 %1247, 1
  %1249 = zext i32 %1246 to i64
  %1250 = or i64 %1248, %1249
  store i64 %1250, ptr %28, align 8, !tbaa !138
  %1251 = load i32, ptr %33, align 8, !tbaa !136
  %1252 = add nsw i32 %1251, -1
  store i32 %1252, ptr %33, align 8, !tbaa !136
  %1253 = icmp slt i32 %1251, 34
  br i1 %1253, label %1254, label %1264

1254:                                             ; preds = %1244
  %1255 = zext nneg i32 %1252 to i64
  %1256 = shl i64 %1250, %1255
  %1257 = tail call i64 @llvm.bswap.i64(i64 %1256)
  %1258 = trunc i64 %1257 to i32
  %1259 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1258, ptr %1259, align 4, !tbaa !137
  %1260 = load i32, ptr %33, align 8, !tbaa !136
  %1261 = add nsw i32 %1260, 32
  store i32 %1261, ptr %33, align 8, !tbaa !136
  %1262 = load ptr, ptr %3, align 8, !tbaa !133
  %1263 = getelementptr inbounds i8, ptr %1262, i64 4
  store ptr %1263, ptr %3, align 8, !tbaa !133
  br label %1264

1264:                                             ; preds = %1244, %1254
  %1265 = load i32, ptr %1245, align 4, !tbaa !70
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %2521, label %1267

1267:                                             ; preds = %1264
  %1268 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24
  %1269 = load i32, ptr %1268, align 4, !tbaa !85
  %1270 = load i64, ptr %28, align 8, !tbaa !138
  %1271 = shl i64 %1270, 1
  %1272 = zext i32 %1269 to i64
  %1273 = or i64 %1271, %1272
  store i64 %1273, ptr %28, align 8, !tbaa !138
  %1274 = load i32, ptr %33, align 8, !tbaa !136
  %1275 = add nsw i32 %1274, -1
  store i32 %1275, ptr %33, align 8, !tbaa !136
  %1276 = icmp eq i32 %1275, 32
  br i1 %1276, label %1277, label %1283

1277:                                             ; preds = %1267
  %1278 = trunc i64 %1273 to i32
  %1279 = tail call i32 @llvm.bswap.i32(i32 %1278)
  %1280 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1279, ptr %1280, align 4, !tbaa !137
  %1281 = load ptr, ptr %3, align 8, !tbaa !133
  %1282 = getelementptr inbounds i8, ptr %1281, i64 4
  store ptr %1282, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1283

1283:                                             ; preds = %1267, %1277
  %1284 = load i32, ptr %1268, align 4, !tbaa !85
  %1285 = icmp eq i32 %1284, 0
  br i1 %1285, label %1372, label %1286

1286:                                             ; preds = %1283
  %1287 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 1
  %1288 = load i32, ptr %1287, align 4, !tbaa !88
  %1289 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 2
  br label %1290

1290:                                             ; preds = %1286, %1303
  %1291 = phi i64 [ 0, %1286 ], [ %1304, %1303 ]
  %1292 = phi i1 [ false, %1286 ], [ %1305, %1303 ]
  %1293 = getelementptr inbounds [14 x %struct.anon.5], ptr @x264_sps_write.sar, i64 0, i64 %1291
  %1294 = load i8, ptr %1293, align 1, !tbaa !145
  %1295 = zext i8 %1294 to i32
  %1296 = icmp eq i32 %1288, %1295
  br i1 %1296, label %1297, label %1303

1297:                                             ; preds = %1290
  %1298 = getelementptr inbounds [14 x %struct.anon.5], ptr @x264_sps_write.sar, i64 0, i64 %1291, i32 1
  %1299 = load i8, ptr %1298, align 1, !tbaa !147
  %1300 = zext i8 %1299 to i32
  %1301 = load i32, ptr %1289, align 4, !tbaa !89
  %1302 = icmp eq i32 %1301, %1300
  br i1 %1302, label %1306, label %1303

1303:                                             ; preds = %1290, %1297
  %1304 = add nuw nsw i64 %1291, 1
  %1305 = icmp eq i64 %1304, 13
  br i1 %1305, label %1306, label %1290, !llvm.loop !148

1306:                                             ; preds = %1297, %1303
  %1307 = phi i64 [ %1291, %1297 ], [ 13, %1303 ]
  %1308 = phi i1 [ %1292, %1297 ], [ %1305, %1303 ]
  %1309 = getelementptr inbounds [14 x %struct.anon.5], ptr @x264_sps_write.sar, i64 0, i64 %1307, i32 2
  %1310 = load i8, ptr %1309, align 1, !tbaa !149
  %1311 = load i64, ptr %28, align 8, !tbaa !138
  %1312 = shl i64 %1311, 8
  %1313 = zext i8 %1310 to i64
  %1314 = or disjoint i64 %1312, %1313
  store i64 %1314, ptr %28, align 8, !tbaa !138
  %1315 = load i32, ptr %33, align 8, !tbaa !136
  %1316 = add nsw i32 %1315, -8
  store i32 %1316, ptr %33, align 8, !tbaa !136
  %1317 = icmp slt i32 %1315, 41
  br i1 %1317, label %1318, label %1329

1318:                                             ; preds = %1306
  %1319 = load i64, ptr %28, align 8, !tbaa !138
  %1320 = zext nneg i32 %1316 to i64
  %1321 = shl i64 %1319, %1320
  %1322 = tail call i64 @llvm.bswap.i64(i64 %1321)
  %1323 = trunc i64 %1322 to i32
  %1324 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1323, ptr %1324, align 4, !tbaa !137
  %1325 = load i32, ptr %33, align 8, !tbaa !136
  %1326 = add nsw i32 %1325, 32
  store i32 %1326, ptr %33, align 8, !tbaa !136
  %1327 = load ptr, ptr %3, align 8, !tbaa !133
  %1328 = getelementptr inbounds i8, ptr %1327, i64 4
  store ptr %1328, ptr %3, align 8, !tbaa !133
  br label %1329

1329:                                             ; preds = %1306, %1318
  br i1 %1308, label %1330, label %1372

1330:                                             ; preds = %1329
  %1331 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 1
  %1332 = load i32, ptr %1331, align 4, !tbaa !88
  %1333 = load i64, ptr %28, align 8, !tbaa !138
  %1334 = shl i64 %1333, 16
  %1335 = zext i32 %1332 to i64
  %1336 = or i64 %1334, %1335
  store i64 %1336, ptr %28, align 8, !tbaa !138
  %1337 = load i32, ptr %33, align 8, !tbaa !136
  %1338 = add nsw i32 %1337, -16
  store i32 %1338, ptr %33, align 8, !tbaa !136
  %1339 = icmp slt i32 %1337, 49
  br i1 %1339, label %1340, label %1351

1340:                                             ; preds = %1330
  %1341 = load i64, ptr %28, align 8, !tbaa !138
  %1342 = zext nneg i32 %1338 to i64
  %1343 = shl i64 %1341, %1342
  %1344 = tail call i64 @llvm.bswap.i64(i64 %1343)
  %1345 = trunc i64 %1344 to i32
  %1346 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1345, ptr %1346, align 4, !tbaa !137
  %1347 = load i32, ptr %33, align 8, !tbaa !136
  %1348 = add nsw i32 %1347, 32
  store i32 %1348, ptr %33, align 8, !tbaa !136
  %1349 = load ptr, ptr %3, align 8, !tbaa !133
  %1350 = getelementptr inbounds i8, ptr %1349, i64 4
  store ptr %1350, ptr %3, align 8, !tbaa !133
  br label %1351

1351:                                             ; preds = %1330, %1340
  %1352 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 2
  %1353 = load i32, ptr %1352, align 4, !tbaa !89
  %1354 = load i64, ptr %28, align 8, !tbaa !138
  %1355 = shl i64 %1354, 16
  %1356 = zext i32 %1353 to i64
  %1357 = or i64 %1355, %1356
  store i64 %1357, ptr %28, align 8, !tbaa !138
  %1358 = load i32, ptr %33, align 8, !tbaa !136
  %1359 = add nsw i32 %1358, -16
  store i32 %1359, ptr %33, align 8, !tbaa !136
  %1360 = icmp slt i32 %1358, 49
  br i1 %1360, label %1361, label %1372

1361:                                             ; preds = %1351
  %1362 = load i64, ptr %28, align 8, !tbaa !138
  %1363 = zext nneg i32 %1359 to i64
  %1364 = shl i64 %1362, %1363
  %1365 = tail call i64 @llvm.bswap.i64(i64 %1364)
  %1366 = trunc i64 %1365 to i32
  %1367 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1366, ptr %1367, align 4, !tbaa !137
  %1368 = load i32, ptr %33, align 8, !tbaa !136
  %1369 = add nsw i32 %1368, 32
  store i32 %1369, ptr %33, align 8, !tbaa !136
  %1370 = load ptr, ptr %3, align 8, !tbaa !133
  %1371 = getelementptr inbounds i8, ptr %1370, i64 4
  store ptr %1371, ptr %3, align 8, !tbaa !133
  br label %1372

1372:                                             ; preds = %1361, %1351, %1329, %1283
  %1373 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 3
  %1374 = load i32, ptr %1373, align 4, !tbaa !91
  %1375 = load i64, ptr %28, align 8, !tbaa !138
  %1376 = shl i64 %1375, 1
  %1377 = zext i32 %1374 to i64
  %1378 = or i64 %1376, %1377
  store i64 %1378, ptr %28, align 8, !tbaa !138
  %1379 = load i32, ptr %33, align 8, !tbaa !136
  %1380 = add nsw i32 %1379, -1
  store i32 %1380, ptr %33, align 8, !tbaa !136
  %1381 = icmp eq i32 %1380, 32
  br i1 %1381, label %1382, label %1388

1382:                                             ; preds = %1372
  %1383 = trunc i64 %1378 to i32
  %1384 = tail call i32 @llvm.bswap.i32(i32 %1383)
  %1385 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1384, ptr %1385, align 4, !tbaa !137
  %1386 = load ptr, ptr %3, align 8, !tbaa !133
  %1387 = getelementptr inbounds i8, ptr %1386, i64 4
  store ptr %1387, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1388

1388:                                             ; preds = %1372, %1382
  %1389 = load i32, ptr %1373, align 4, !tbaa !91
  %1390 = icmp eq i32 %1389, 0
  br i1 %1390, label %1408, label %1391

1391:                                             ; preds = %1388
  %1392 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 4
  %1393 = load i32, ptr %1392, align 4, !tbaa !92
  %1394 = load i64, ptr %28, align 8, !tbaa !138
  %1395 = shl i64 %1394, 1
  %1396 = zext i32 %1393 to i64
  %1397 = or i64 %1395, %1396
  store i64 %1397, ptr %28, align 8, !tbaa !138
  %1398 = load i32, ptr %33, align 8, !tbaa !136
  %1399 = add nsw i32 %1398, -1
  store i32 %1399, ptr %33, align 8, !tbaa !136
  %1400 = icmp eq i32 %1399, 32
  br i1 %1400, label %1401, label %1408

1401:                                             ; preds = %1391
  %1402 = load i64, ptr %28, align 8, !tbaa !138
  %1403 = trunc i64 %1402 to i32
  %1404 = tail call i32 @llvm.bswap.i32(i32 %1403)
  %1405 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1404, ptr %1405, align 4, !tbaa !137
  %1406 = load ptr, ptr %3, align 8, !tbaa !133
  %1407 = getelementptr inbounds i8, ptr %1406, i64 4
  store ptr %1407, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1408

1408:                                             ; preds = %1401, %1391, %1388
  %1409 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 5
  %1410 = load i32, ptr %1409, align 4, !tbaa !93
  %1411 = load i64, ptr %28, align 8, !tbaa !138
  %1412 = shl i64 %1411, 1
  %1413 = zext i32 %1410 to i64
  %1414 = or i64 %1412, %1413
  store i64 %1414, ptr %28, align 8, !tbaa !138
  %1415 = load i32, ptr %33, align 8, !tbaa !136
  %1416 = add nsw i32 %1415, -1
  store i32 %1416, ptr %33, align 8, !tbaa !136
  %1417 = icmp eq i32 %1416, 32
  br i1 %1417, label %1418, label %1424

1418:                                             ; preds = %1408
  %1419 = trunc i64 %1414 to i32
  %1420 = tail call i32 @llvm.bswap.i32(i32 %1419)
  %1421 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1420, ptr %1421, align 4, !tbaa !137
  %1422 = load ptr, ptr %3, align 8, !tbaa !133
  %1423 = getelementptr inbounds i8, ptr %1422, i64 4
  store ptr %1423, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1424

1424:                                             ; preds = %1408, %1418
  %1425 = load i32, ptr %1409, align 4, !tbaa !93
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1544, label %1427

1427:                                             ; preds = %1424
  %1428 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 6
  %1429 = load i32, ptr %1428, align 4, !tbaa !95
  %1430 = load i64, ptr %28, align 8, !tbaa !138
  %1431 = shl i64 %1430, 3
  %1432 = zext i32 %1429 to i64
  %1433 = or i64 %1431, %1432
  store i64 %1433, ptr %28, align 8, !tbaa !138
  %1434 = load i32, ptr %33, align 8, !tbaa !136
  %1435 = add nsw i32 %1434, -3
  store i32 %1435, ptr %33, align 8, !tbaa !136
  %1436 = icmp slt i32 %1434, 36
  br i1 %1436, label %1437, label %1447

1437:                                             ; preds = %1427
  %1438 = zext nneg i32 %1435 to i64
  %1439 = shl i64 %1433, %1438
  %1440 = tail call i64 @llvm.bswap.i64(i64 %1439)
  %1441 = trunc i64 %1440 to i32
  %1442 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1441, ptr %1442, align 4, !tbaa !137
  %1443 = load i32, ptr %33, align 8, !tbaa !136
  %1444 = add nsw i32 %1443, 32
  store i32 %1444, ptr %33, align 8, !tbaa !136
  %1445 = load ptr, ptr %3, align 8, !tbaa !133
  %1446 = getelementptr inbounds i8, ptr %1445, i64 4
  store ptr %1446, ptr %3, align 8, !tbaa !133
  br label %1447

1447:                                             ; preds = %1427, %1437
  %1448 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 7
  %1449 = load i32, ptr %1448, align 4, !tbaa !97
  %1450 = load i64, ptr %28, align 8, !tbaa !138
  %1451 = shl i64 %1450, 1
  %1452 = zext i32 %1449 to i64
  %1453 = or i64 %1451, %1452
  store i64 %1453, ptr %28, align 8, !tbaa !138
  %1454 = load i32, ptr %33, align 8, !tbaa !136
  %1455 = add nsw i32 %1454, -1
  store i32 %1455, ptr %33, align 8, !tbaa !136
  %1456 = icmp eq i32 %1455, 32
  br i1 %1456, label %1457, label %1463

1457:                                             ; preds = %1447
  %1458 = trunc i64 %1453 to i32
  %1459 = tail call i32 @llvm.bswap.i32(i32 %1458)
  %1460 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1459, ptr %1460, align 4, !tbaa !137
  %1461 = load ptr, ptr %3, align 8, !tbaa !133
  %1462 = getelementptr inbounds i8, ptr %1461, i64 4
  store ptr %1462, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1463

1463:                                             ; preds = %1447, %1457
  %1464 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 8
  %1465 = load i32, ptr %1464, align 4, !tbaa !98
  %1466 = load i64, ptr %28, align 8, !tbaa !138
  %1467 = shl i64 %1466, 1
  %1468 = zext i32 %1465 to i64
  %1469 = or i64 %1467, %1468
  store i64 %1469, ptr %28, align 8, !tbaa !138
  %1470 = load i32, ptr %33, align 8, !tbaa !136
  %1471 = add nsw i32 %1470, -1
  store i32 %1471, ptr %33, align 8, !tbaa !136
  %1472 = icmp eq i32 %1471, 32
  br i1 %1472, label %1473, label %1479

1473:                                             ; preds = %1463
  %1474 = trunc i64 %1469 to i32
  %1475 = tail call i32 @llvm.bswap.i32(i32 %1474)
  %1476 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1475, ptr %1476, align 4, !tbaa !137
  %1477 = load ptr, ptr %3, align 8, !tbaa !133
  %1478 = getelementptr inbounds i8, ptr %1477, i64 4
  store ptr %1478, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1479

1479:                                             ; preds = %1463, %1473
  %1480 = load i32, ptr %1464, align 4, !tbaa !98
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1544, label %1482

1482:                                             ; preds = %1479
  %1483 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 9
  %1484 = load i32, ptr %1483, align 4, !tbaa !100
  %1485 = load i64, ptr %28, align 8, !tbaa !138
  %1486 = shl i64 %1485, 8
  %1487 = zext i32 %1484 to i64
  %1488 = or i64 %1486, %1487
  store i64 %1488, ptr %28, align 8, !tbaa !138
  %1489 = load i32, ptr %33, align 8, !tbaa !136
  %1490 = add nsw i32 %1489, -8
  store i32 %1490, ptr %33, align 8, !tbaa !136
  %1491 = icmp slt i32 %1489, 41
  br i1 %1491, label %1492, label %1502

1492:                                             ; preds = %1482
  %1493 = zext nneg i32 %1490 to i64
  %1494 = shl i64 %1488, %1493
  %1495 = tail call i64 @llvm.bswap.i64(i64 %1494)
  %1496 = trunc i64 %1495 to i32
  %1497 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1496, ptr %1497, align 4, !tbaa !137
  %1498 = load i32, ptr %33, align 8, !tbaa !136
  %1499 = add nsw i32 %1498, 32
  store i32 %1499, ptr %33, align 8, !tbaa !136
  %1500 = load ptr, ptr %3, align 8, !tbaa !133
  %1501 = getelementptr inbounds i8, ptr %1500, i64 4
  store ptr %1501, ptr %3, align 8, !tbaa !133
  br label %1502

1502:                                             ; preds = %1482, %1492
  %1503 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 10
  %1504 = load i32, ptr %1503, align 4, !tbaa !102
  %1505 = load i64, ptr %28, align 8, !tbaa !138
  %1506 = shl i64 %1505, 8
  %1507 = zext i32 %1504 to i64
  %1508 = or i64 %1506, %1507
  store i64 %1508, ptr %28, align 8, !tbaa !138
  %1509 = load i32, ptr %33, align 8, !tbaa !136
  %1510 = add nsw i32 %1509, -8
  store i32 %1510, ptr %33, align 8, !tbaa !136
  %1511 = icmp slt i32 %1509, 41
  br i1 %1511, label %1512, label %1523

1512:                                             ; preds = %1502
  %1513 = load i64, ptr %28, align 8, !tbaa !138
  %1514 = zext nneg i32 %1510 to i64
  %1515 = shl i64 %1513, %1514
  %1516 = tail call i64 @llvm.bswap.i64(i64 %1515)
  %1517 = trunc i64 %1516 to i32
  %1518 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1517, ptr %1518, align 4, !tbaa !137
  %1519 = load i32, ptr %33, align 8, !tbaa !136
  %1520 = add nsw i32 %1519, 32
  store i32 %1520, ptr %33, align 8, !tbaa !136
  %1521 = load ptr, ptr %3, align 8, !tbaa !133
  %1522 = getelementptr inbounds i8, ptr %1521, i64 4
  store ptr %1522, ptr %3, align 8, !tbaa !133
  br label %1523

1523:                                             ; preds = %1502, %1512
  %1524 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 11
  %1525 = load i32, ptr %1524, align 4, !tbaa !104
  %1526 = load i64, ptr %28, align 8, !tbaa !138
  %1527 = shl i64 %1526, 8
  %1528 = zext i32 %1525 to i64
  %1529 = or i64 %1527, %1528
  store i64 %1529, ptr %28, align 8, !tbaa !138
  %1530 = load i32, ptr %33, align 8, !tbaa !136
  %1531 = add nsw i32 %1530, -8
  store i32 %1531, ptr %33, align 8, !tbaa !136
  %1532 = icmp slt i32 %1530, 41
  br i1 %1532, label %1533, label %1544

1533:                                             ; preds = %1523
  %1534 = load i64, ptr %28, align 8, !tbaa !138
  %1535 = zext nneg i32 %1531 to i64
  %1536 = shl i64 %1534, %1535
  %1537 = tail call i64 @llvm.bswap.i64(i64 %1536)
  %1538 = trunc i64 %1537 to i32
  %1539 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1538, ptr %1539, align 4, !tbaa !137
  %1540 = load i32, ptr %33, align 8, !tbaa !136
  %1541 = add nsw i32 %1540, 32
  store i32 %1541, ptr %33, align 8, !tbaa !136
  %1542 = load ptr, ptr %3, align 8, !tbaa !133
  %1543 = getelementptr inbounds i8, ptr %1542, i64 4
  store ptr %1543, ptr %3, align 8, !tbaa !133
  br label %1544

1544:                                             ; preds = %1533, %1523, %1479, %1424
  %1545 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 12
  %1546 = load i32, ptr %1545, align 4, !tbaa !106
  %1547 = load i64, ptr %28, align 8, !tbaa !138
  %1548 = shl i64 %1547, 1
  %1549 = zext i32 %1546 to i64
  %1550 = or i64 %1548, %1549
  store i64 %1550, ptr %28, align 8, !tbaa !138
  %1551 = load i32, ptr %33, align 8, !tbaa !136
  %1552 = add nsw i32 %1551, -1
  store i32 %1552, ptr %33, align 8, !tbaa !136
  %1553 = icmp eq i32 %1552, 32
  br i1 %1553, label %1554, label %1560

1554:                                             ; preds = %1544
  %1555 = trunc i64 %1550 to i32
  %1556 = tail call i32 @llvm.bswap.i32(i32 %1555)
  %1557 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1556, ptr %1557, align 4, !tbaa !137
  %1558 = load ptr, ptr %3, align 8, !tbaa !133
  %1559 = getelementptr inbounds i8, ptr %1558, i64 4
  store ptr %1559, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1560

1560:                                             ; preds = %1544, %1554
  %1561 = load i32, ptr %1545, align 4, !tbaa !106
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1673, label %1563

1563:                                             ; preds = %1560
  %1564 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 13
  %1565 = load i32, ptr %1564, align 4, !tbaa !107
  %1566 = add i32 %1565, 1
  %1567 = icmp sgt i32 %1566, 65535
  %1568 = lshr i32 %1566, 16
  %1569 = select i1 %1567, i32 32, i32 0
  %1570 = select i1 %1567, i32 %1568, i32 %1566
  %1571 = icmp sgt i32 %1570, 255
  %1572 = or disjoint i32 %1569, 16
  %1573 = lshr i32 %1570, 8
  %1574 = select i1 %1571, i32 %1572, i32 %1569
  %1575 = select i1 %1571, i32 %1573, i32 %1570
  %1576 = sext i32 %1575 to i64
  %1577 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1576
  %1578 = load i8, ptr %1577, align 1, !tbaa !137
  %1579 = zext i8 %1578 to i32
  %1580 = add nuw nsw i32 %1574, %1579
  %1581 = lshr i32 %1580, 1
  %1582 = load i64, ptr %28, align 8, !tbaa !138
  %1583 = zext nneg i32 %1581 to i64
  %1584 = shl i64 %1582, %1583
  store i64 %1584, ptr %28, align 8, !tbaa !138
  %1585 = load i32, ptr %33, align 8, !tbaa !136
  %1586 = sub nsw i32 %1585, %1581
  store i32 %1586, ptr %33, align 8, !tbaa !136
  %1587 = icmp slt i32 %1586, 33
  br i1 %1587, label %1588, label %1598

1588:                                             ; preds = %1563
  %1589 = zext nneg i32 %1586 to i64
  %1590 = shl i64 %1584, %1589
  %1591 = tail call i64 @llvm.bswap.i64(i64 %1590)
  %1592 = trunc i64 %1591 to i32
  %1593 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1592, ptr %1593, align 4, !tbaa !137
  %1594 = load i32, ptr %33, align 8, !tbaa !136
  %1595 = add nsw i32 %1594, 32
  store i32 %1595, ptr %33, align 8, !tbaa !136
  %1596 = load ptr, ptr %3, align 8, !tbaa !133
  %1597 = getelementptr inbounds i8, ptr %1596, i64 4
  store ptr %1597, ptr %3, align 8, !tbaa !133
  br label %1598

1598:                                             ; preds = %1588, %1563
  %1599 = add nuw nsw i32 %1581, 1
  %1600 = load i64, ptr %28, align 8, !tbaa !138
  %1601 = zext nneg i32 %1599 to i64
  %1602 = shl i64 %1600, %1601
  %1603 = zext i32 %1566 to i64
  %1604 = or i64 %1602, %1603
  store i64 %1604, ptr %28, align 8, !tbaa !138
  %1605 = load i32, ptr %33, align 8, !tbaa !136
  %1606 = sub nsw i32 %1605, %1599
  store i32 %1606, ptr %33, align 8, !tbaa !136
  %1607 = icmp slt i32 %1606, 33
  br i1 %1607, label %1608, label %1618

1608:                                             ; preds = %1598
  %1609 = zext nneg i32 %1606 to i64
  %1610 = shl i64 %1604, %1609
  %1611 = tail call i64 @llvm.bswap.i64(i64 %1610)
  %1612 = trunc i64 %1611 to i32
  %1613 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1612, ptr %1613, align 4, !tbaa !137
  %1614 = load i32, ptr %33, align 8, !tbaa !136
  %1615 = add nsw i32 %1614, 32
  store i32 %1615, ptr %33, align 8, !tbaa !136
  %1616 = load ptr, ptr %3, align 8, !tbaa !133
  %1617 = getelementptr inbounds i8, ptr %1616, i64 4
  store ptr %1617, ptr %3, align 8, !tbaa !133
  br label %1618

1618:                                             ; preds = %1598, %1608
  %1619 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 14
  %1620 = load i32, ptr %1619, align 4, !tbaa !108
  %1621 = add i32 %1620, 1
  %1622 = icmp sgt i32 %1621, 65535
  %1623 = lshr i32 %1621, 16
  %1624 = select i1 %1622, i32 32, i32 0
  %1625 = select i1 %1622, i32 %1623, i32 %1621
  %1626 = icmp sgt i32 %1625, 255
  %1627 = or disjoint i32 %1624, 16
  %1628 = lshr i32 %1625, 8
  %1629 = select i1 %1626, i32 %1627, i32 %1624
  %1630 = select i1 %1626, i32 %1628, i32 %1625
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1631
  %1633 = load i8, ptr %1632, align 1, !tbaa !137
  %1634 = zext i8 %1633 to i32
  %1635 = add nuw nsw i32 %1629, %1634
  %1636 = lshr i32 %1635, 1
  %1637 = load i64, ptr %28, align 8, !tbaa !138
  %1638 = zext nneg i32 %1636 to i64
  %1639 = shl i64 %1637, %1638
  store i64 %1639, ptr %28, align 8, !tbaa !138
  %1640 = load i32, ptr %33, align 8, !tbaa !136
  %1641 = sub nsw i32 %1640, %1636
  store i32 %1641, ptr %33, align 8, !tbaa !136
  %1642 = icmp slt i32 %1641, 33
  br i1 %1642, label %1643, label %1653

1643:                                             ; preds = %1618
  %1644 = zext nneg i32 %1641 to i64
  %1645 = shl i64 %1639, %1644
  %1646 = tail call i64 @llvm.bswap.i64(i64 %1645)
  %1647 = trunc i64 %1646 to i32
  %1648 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1647, ptr %1648, align 4, !tbaa !137
  %1649 = load i32, ptr %33, align 8, !tbaa !136
  %1650 = add nsw i32 %1649, 32
  store i32 %1650, ptr %33, align 8, !tbaa !136
  %1651 = load ptr, ptr %3, align 8, !tbaa !133
  %1652 = getelementptr inbounds i8, ptr %1651, i64 4
  store ptr %1652, ptr %3, align 8, !tbaa !133
  br label %1653

1653:                                             ; preds = %1643, %1618
  %1654 = add nuw nsw i32 %1636, 1
  %1655 = load i64, ptr %28, align 8, !tbaa !138
  %1656 = zext nneg i32 %1654 to i64
  %1657 = shl i64 %1655, %1656
  %1658 = zext i32 %1621 to i64
  %1659 = or i64 %1657, %1658
  store i64 %1659, ptr %28, align 8, !tbaa !138
  %1660 = load i32, ptr %33, align 8, !tbaa !136
  %1661 = sub nsw i32 %1660, %1654
  store i32 %1661, ptr %33, align 8, !tbaa !136
  %1662 = icmp slt i32 %1661, 33
  br i1 %1662, label %1663, label %1673

1663:                                             ; preds = %1653
  %1664 = zext nneg i32 %1661 to i64
  %1665 = shl i64 %1659, %1664
  %1666 = tail call i64 @llvm.bswap.i64(i64 %1665)
  %1667 = trunc i64 %1666 to i32
  %1668 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1667, ptr %1668, align 4, !tbaa !137
  %1669 = load i32, ptr %33, align 8, !tbaa !136
  %1670 = add nsw i32 %1669, 32
  store i32 %1670, ptr %33, align 8, !tbaa !136
  %1671 = load ptr, ptr %3, align 8, !tbaa !133
  %1672 = getelementptr inbounds i8, ptr %1671, i64 4
  store ptr %1672, ptr %3, align 8, !tbaa !133
  br label %1673

1673:                                             ; preds = %1663, %1653, %1560
  %1674 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 15
  %1675 = load i32, ptr %1674, align 4, !tbaa !111
  %1676 = load i64, ptr %28, align 8, !tbaa !138
  %1677 = shl i64 %1676, 1
  %1678 = zext i32 %1675 to i64
  %1679 = or i64 %1677, %1678
  store i64 %1679, ptr %28, align 8, !tbaa !138
  %1680 = load i32, ptr %33, align 8, !tbaa !136
  %1681 = add nsw i32 %1680, -1
  store i32 %1681, ptr %33, align 8, !tbaa !136
  %1682 = icmp eq i32 %1681, 32
  br i1 %1682, label %1683, label %1689

1683:                                             ; preds = %1673
  %1684 = trunc i64 %1679 to i32
  %1685 = tail call i32 @llvm.bswap.i32(i32 %1684)
  %1686 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1685, ptr %1686, align 4, !tbaa !137
  %1687 = load ptr, ptr %3, align 8, !tbaa !133
  %1688 = getelementptr inbounds i8, ptr %1687, i64 4
  store ptr %1688, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1689

1689:                                             ; preds = %1673, %1683
  %1690 = load i32, ptr %1674, align 4, !tbaa !111
  %1691 = icmp eq i32 %1690, 0
  br i1 %1691, label %1786, label %1692

1692:                                             ; preds = %1689
  %1693 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 16
  %1694 = load i32, ptr %1693, align 4, !tbaa !112
  %1695 = lshr i32 %1694, 16
  %1696 = load i64, ptr %28, align 8, !tbaa !138
  %1697 = shl i64 %1696, 16
  %1698 = zext nneg i32 %1695 to i64
  %1699 = or disjoint i64 %1697, %1698
  store i64 %1699, ptr %28, align 8, !tbaa !138
  %1700 = load i32, ptr %33, align 8, !tbaa !136
  %1701 = add nsw i32 %1700, -16
  store i32 %1701, ptr %33, align 8, !tbaa !136
  %1702 = icmp slt i32 %1700, 49
  br i1 %1702, label %1703, label %1713

1703:                                             ; preds = %1692
  %1704 = zext nneg i32 %1701 to i64
  %1705 = shl i64 %1699, %1704
  %1706 = tail call i64 @llvm.bswap.i64(i64 %1705)
  %1707 = trunc i64 %1706 to i32
  %1708 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1707, ptr %1708, align 4, !tbaa !137
  %1709 = load i32, ptr %33, align 8, !tbaa !136
  %1710 = add nsw i32 %1709, 32
  store i32 %1710, ptr %33, align 8, !tbaa !136
  %1711 = load ptr, ptr %3, align 8, !tbaa !133
  %1712 = getelementptr inbounds i8, ptr %1711, i64 4
  store ptr %1712, ptr %3, align 8, !tbaa !133
  br label %1713

1713:                                             ; preds = %1703, %1692
  %1714 = load i64, ptr %28, align 8, !tbaa !138
  %1715 = shl i64 %1714, 16
  %1716 = zext i32 %1694 to i64
  %1717 = or i64 %1715, %1716
  store i64 %1717, ptr %28, align 8, !tbaa !138
  %1718 = load i32, ptr %33, align 8, !tbaa !136
  %1719 = add nsw i32 %1718, -16
  store i32 %1719, ptr %33, align 8, !tbaa !136
  %1720 = icmp slt i32 %1718, 49
  br i1 %1720, label %1721, label %1731

1721:                                             ; preds = %1713
  %1722 = zext nneg i32 %1719 to i64
  %1723 = shl i64 %1717, %1722
  %1724 = tail call i64 @llvm.bswap.i64(i64 %1723)
  %1725 = trunc i64 %1724 to i32
  %1726 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1725, ptr %1726, align 4, !tbaa !137
  %1727 = load i32, ptr %33, align 8, !tbaa !136
  %1728 = add nsw i32 %1727, 32
  store i32 %1728, ptr %33, align 8, !tbaa !136
  %1729 = load ptr, ptr %3, align 8, !tbaa !133
  %1730 = getelementptr inbounds i8, ptr %1729, i64 4
  store ptr %1730, ptr %3, align 8, !tbaa !133
  br label %1731

1731:                                             ; preds = %1713, %1721
  %1732 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 17
  %1733 = load i32, ptr %1732, align 4, !tbaa !113
  %1734 = lshr i32 %1733, 16
  %1735 = load i64, ptr %28, align 8, !tbaa !138
  %1736 = shl i64 %1735, 16
  %1737 = zext nneg i32 %1734 to i64
  %1738 = or disjoint i64 %1736, %1737
  store i64 %1738, ptr %28, align 8, !tbaa !138
  %1739 = load i32, ptr %33, align 8, !tbaa !136
  %1740 = add nsw i32 %1739, -16
  store i32 %1740, ptr %33, align 8, !tbaa !136
  %1741 = icmp slt i32 %1739, 49
  br i1 %1741, label %1742, label %1752

1742:                                             ; preds = %1731
  %1743 = zext nneg i32 %1740 to i64
  %1744 = shl i64 %1738, %1743
  %1745 = tail call i64 @llvm.bswap.i64(i64 %1744)
  %1746 = trunc i64 %1745 to i32
  %1747 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1746, ptr %1747, align 4, !tbaa !137
  %1748 = load i32, ptr %33, align 8, !tbaa !136
  %1749 = add nsw i32 %1748, 32
  store i32 %1749, ptr %33, align 8, !tbaa !136
  %1750 = load ptr, ptr %3, align 8, !tbaa !133
  %1751 = getelementptr inbounds i8, ptr %1750, i64 4
  store ptr %1751, ptr %3, align 8, !tbaa !133
  br label %1752

1752:                                             ; preds = %1742, %1731
  %1753 = load i64, ptr %28, align 8, !tbaa !138
  %1754 = shl i64 %1753, 16
  %1755 = zext i32 %1733 to i64
  %1756 = or i64 %1754, %1755
  store i64 %1756, ptr %28, align 8, !tbaa !138
  %1757 = load i32, ptr %33, align 8, !tbaa !136
  %1758 = add nsw i32 %1757, -16
  store i32 %1758, ptr %33, align 8, !tbaa !136
  %1759 = icmp slt i32 %1757, 49
  br i1 %1759, label %1760, label %1770

1760:                                             ; preds = %1752
  %1761 = zext nneg i32 %1758 to i64
  %1762 = shl i64 %1756, %1761
  %1763 = tail call i64 @llvm.bswap.i64(i64 %1762)
  %1764 = trunc i64 %1763 to i32
  %1765 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1764, ptr %1765, align 4, !tbaa !137
  %1766 = load i32, ptr %33, align 8, !tbaa !136
  %1767 = add nsw i32 %1766, 32
  store i32 %1767, ptr %33, align 8, !tbaa !136
  %1768 = load ptr, ptr %3, align 8, !tbaa !133
  %1769 = getelementptr inbounds i8, ptr %1768, i64 4
  store ptr %1769, ptr %3, align 8, !tbaa !133
  br label %1770

1770:                                             ; preds = %1752, %1760
  %1771 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 18
  %1772 = load i32, ptr %1771, align 4, !tbaa !115
  %1773 = load i64, ptr %28, align 8, !tbaa !138
  %1774 = shl i64 %1773, 1
  %1775 = zext i32 %1772 to i64
  %1776 = or i64 %1774, %1775
  store i64 %1776, ptr %28, align 8, !tbaa !138
  %1777 = load i32, ptr %33, align 8, !tbaa !136
  %1778 = add nsw i32 %1777, -1
  store i32 %1778, ptr %33, align 8, !tbaa !136
  %1779 = icmp eq i32 %1778, 32
  br i1 %1779, label %1780, label %1786

1780:                                             ; preds = %1770
  %1781 = trunc i64 %1776 to i32
  %1782 = tail call i32 @llvm.bswap.i32(i32 %1781)
  %1783 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1782, ptr %1783, align 4, !tbaa !137
  %1784 = load ptr, ptr %3, align 8, !tbaa !133
  %1785 = getelementptr inbounds i8, ptr %1784, i64 4
  store ptr %1785, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1786

1786:                                             ; preds = %1780, %1770, %1689
  %1787 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 19
  %1788 = load i32, ptr %1787, align 4, !tbaa !118
  %1789 = load i64, ptr %28, align 8, !tbaa !138
  %1790 = shl i64 %1789, 1
  %1791 = zext i32 %1788 to i64
  %1792 = or i64 %1790, %1791
  store i64 %1792, ptr %28, align 8, !tbaa !138
  %1793 = load i32, ptr %33, align 8, !tbaa !136
  %1794 = add nsw i32 %1793, -1
  store i32 %1794, ptr %33, align 8, !tbaa !136
  %1795 = icmp eq i32 %1794, 32
  br i1 %1795, label %1796, label %1802

1796:                                             ; preds = %1786
  %1797 = trunc i64 %1792 to i32
  %1798 = tail call i32 @llvm.bswap.i32(i32 %1797)
  %1799 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1798, ptr %1799, align 4, !tbaa !137
  %1800 = load ptr, ptr %3, align 8, !tbaa !133
  %1801 = getelementptr inbounds i8, ptr %1800, i64 4
  store ptr %1801, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %1802

1802:                                             ; preds = %1786, %1796
  %1803 = load i32, ptr %1787, align 4, !tbaa !118
  %1804 = icmp eq i32 %1803, 0
  br i1 %1804, label %2106, label %1805

1805:                                             ; preds = %1802
  %1806 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21
  %1807 = load i32, ptr %1806, align 4, !tbaa !150
  %1808 = icmp sgt i32 %1807, 65535
  %1809 = lshr i32 %1807, 16
  %1810 = select i1 %1808, i32 32, i32 0
  %1811 = select i1 %1808, i32 %1809, i32 %1807
  %1812 = icmp sgt i32 %1811, 255
  %1813 = or disjoint i32 %1810, 16
  %1814 = lshr i32 %1811, 8
  %1815 = select i1 %1812, i32 %1813, i32 %1810
  %1816 = select i1 %1812, i32 %1814, i32 %1811
  %1817 = sext i32 %1816 to i64
  %1818 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1817
  %1819 = load i8, ptr %1818, align 1, !tbaa !137
  %1820 = zext i8 %1819 to i32
  %1821 = add nuw nsw i32 %1815, %1820
  %1822 = lshr i32 %1821, 1
  %1823 = load i64, ptr %28, align 8, !tbaa !138
  %1824 = zext nneg i32 %1822 to i64
  %1825 = shl i64 %1823, %1824
  store i64 %1825, ptr %28, align 8, !tbaa !138
  %1826 = load i32, ptr %33, align 8, !tbaa !136
  %1827 = sub nsw i32 %1826, %1822
  store i32 %1827, ptr %33, align 8, !tbaa !136
  %1828 = icmp slt i32 %1827, 33
  br i1 %1828, label %1829, label %1839

1829:                                             ; preds = %1805
  %1830 = zext nneg i32 %1827 to i64
  %1831 = shl i64 %1825, %1830
  %1832 = tail call i64 @llvm.bswap.i64(i64 %1831)
  %1833 = trunc i64 %1832 to i32
  %1834 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1833, ptr %1834, align 4, !tbaa !137
  %1835 = load i32, ptr %33, align 8, !tbaa !136
  %1836 = add nsw i32 %1835, 32
  store i32 %1836, ptr %33, align 8, !tbaa !136
  %1837 = load ptr, ptr %3, align 8, !tbaa !133
  %1838 = getelementptr inbounds i8, ptr %1837, i64 4
  store ptr %1838, ptr %3, align 8, !tbaa !133
  br label %1839

1839:                                             ; preds = %1829, %1805
  %1840 = add nuw nsw i32 %1822, 1
  %1841 = load i64, ptr %28, align 8, !tbaa !138
  %1842 = zext nneg i32 %1840 to i64
  %1843 = shl i64 %1841, %1842
  %1844 = zext i32 %1807 to i64
  %1845 = or i64 %1843, %1844
  store i64 %1845, ptr %28, align 8, !tbaa !138
  %1846 = load i32, ptr %33, align 8, !tbaa !136
  %1847 = sub nsw i32 %1846, %1840
  store i32 %1847, ptr %33, align 8, !tbaa !136
  %1848 = icmp slt i32 %1847, 33
  br i1 %1848, label %1849, label %1859

1849:                                             ; preds = %1839
  %1850 = zext nneg i32 %1847 to i64
  %1851 = shl i64 %1845, %1850
  %1852 = tail call i64 @llvm.bswap.i64(i64 %1851)
  %1853 = trunc i64 %1852 to i32
  %1854 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1853, ptr %1854, align 4, !tbaa !137
  %1855 = load i32, ptr %33, align 8, !tbaa !136
  %1856 = add nsw i32 %1855, 32
  store i32 %1856, ptr %33, align 8, !tbaa !136
  %1857 = load ptr, ptr %3, align 8, !tbaa !133
  %1858 = getelementptr inbounds i8, ptr %1857, i64 4
  store ptr %1858, ptr %3, align 8, !tbaa !133
  br label %1859

1859:                                             ; preds = %1839, %1849
  %1860 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 1
  %1861 = load i32, ptr %1860, align 4, !tbaa !151
  %1862 = load i64, ptr %28, align 8, !tbaa !138
  %1863 = shl i64 %1862, 4
  %1864 = zext i32 %1861 to i64
  %1865 = or i64 %1863, %1864
  store i64 %1865, ptr %28, align 8, !tbaa !138
  %1866 = load i32, ptr %33, align 8, !tbaa !136
  %1867 = add nsw i32 %1866, -4
  store i32 %1867, ptr %33, align 8, !tbaa !136
  %1868 = icmp slt i32 %1866, 37
  br i1 %1868, label %1869, label %1879

1869:                                             ; preds = %1859
  %1870 = zext nneg i32 %1867 to i64
  %1871 = shl i64 %1865, %1870
  %1872 = tail call i64 @llvm.bswap.i64(i64 %1871)
  %1873 = trunc i64 %1872 to i32
  %1874 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1873, ptr %1874, align 4, !tbaa !137
  %1875 = load i32, ptr %33, align 8, !tbaa !136
  %1876 = add nsw i32 %1875, 32
  store i32 %1876, ptr %33, align 8, !tbaa !136
  %1877 = load ptr, ptr %3, align 8, !tbaa !133
  %1878 = getelementptr inbounds i8, ptr %1877, i64 4
  store ptr %1878, ptr %3, align 8, !tbaa !133
  br label %1879

1879:                                             ; preds = %1859, %1869
  %1880 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 2
  %1881 = load i32, ptr %1880, align 4, !tbaa !152
  %1882 = load i64, ptr %28, align 8, !tbaa !138
  %1883 = shl i64 %1882, 4
  %1884 = zext i32 %1881 to i64
  %1885 = or i64 %1883, %1884
  store i64 %1885, ptr %28, align 8, !tbaa !138
  %1886 = load i32, ptr %33, align 8, !tbaa !136
  %1887 = add nsw i32 %1886, -4
  store i32 %1887, ptr %33, align 8, !tbaa !136
  %1888 = icmp slt i32 %1886, 37
  br i1 %1888, label %1889, label %1899

1889:                                             ; preds = %1879
  %1890 = zext nneg i32 %1887 to i64
  %1891 = shl i64 %1885, %1890
  %1892 = tail call i64 @llvm.bswap.i64(i64 %1891)
  %1893 = trunc i64 %1892 to i32
  %1894 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1893, ptr %1894, align 4, !tbaa !137
  %1895 = load i32, ptr %33, align 8, !tbaa !136
  %1896 = add nsw i32 %1895, 32
  store i32 %1896, ptr %33, align 8, !tbaa !136
  %1897 = load ptr, ptr %3, align 8, !tbaa !133
  %1898 = getelementptr inbounds i8, ptr %1897, i64 4
  store ptr %1898, ptr %3, align 8, !tbaa !133
  br label %1899

1899:                                             ; preds = %1879, %1889
  %1900 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 3
  %1901 = load i32, ptr %1900, align 4, !tbaa !153
  %1902 = icmp sgt i32 %1901, 65535
  %1903 = lshr i32 %1901, 16
  %1904 = select i1 %1902, i32 32, i32 0
  %1905 = select i1 %1902, i32 %1903, i32 %1901
  %1906 = icmp sgt i32 %1905, 255
  %1907 = or disjoint i32 %1904, 16
  %1908 = lshr i32 %1905, 8
  %1909 = select i1 %1906, i32 %1907, i32 %1904
  %1910 = select i1 %1906, i32 %1908, i32 %1905
  %1911 = sext i32 %1910 to i64
  %1912 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1911
  %1913 = load i8, ptr %1912, align 1, !tbaa !137
  %1914 = zext i8 %1913 to i32
  %1915 = add nuw nsw i32 %1909, %1914
  %1916 = lshr i32 %1915, 1
  %1917 = load i64, ptr %28, align 8, !tbaa !138
  %1918 = zext nneg i32 %1916 to i64
  %1919 = shl i64 %1917, %1918
  store i64 %1919, ptr %28, align 8, !tbaa !138
  %1920 = load i32, ptr %33, align 8, !tbaa !136
  %1921 = sub nsw i32 %1920, %1916
  store i32 %1921, ptr %33, align 8, !tbaa !136
  %1922 = icmp slt i32 %1921, 33
  br i1 %1922, label %1923, label %1933

1923:                                             ; preds = %1899
  %1924 = zext nneg i32 %1921 to i64
  %1925 = shl i64 %1919, %1924
  %1926 = tail call i64 @llvm.bswap.i64(i64 %1925)
  %1927 = trunc i64 %1926 to i32
  %1928 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1927, ptr %1928, align 4, !tbaa !137
  %1929 = load i32, ptr %33, align 8, !tbaa !136
  %1930 = add nsw i32 %1929, 32
  store i32 %1930, ptr %33, align 8, !tbaa !136
  %1931 = load ptr, ptr %3, align 8, !tbaa !133
  %1932 = getelementptr inbounds i8, ptr %1931, i64 4
  store ptr %1932, ptr %3, align 8, !tbaa !133
  br label %1933

1933:                                             ; preds = %1923, %1899
  %1934 = add nuw nsw i32 %1916, 1
  %1935 = load i64, ptr %28, align 8, !tbaa !138
  %1936 = zext nneg i32 %1934 to i64
  %1937 = shl i64 %1935, %1936
  %1938 = zext i32 %1901 to i64
  %1939 = or i64 %1937, %1938
  store i64 %1939, ptr %28, align 8, !tbaa !138
  %1940 = load i32, ptr %33, align 8, !tbaa !136
  %1941 = sub nsw i32 %1940, %1934
  store i32 %1941, ptr %33, align 8, !tbaa !136
  %1942 = icmp slt i32 %1941, 33
  br i1 %1942, label %1943, label %1953

1943:                                             ; preds = %1933
  %1944 = zext nneg i32 %1941 to i64
  %1945 = shl i64 %1939, %1944
  %1946 = tail call i64 @llvm.bswap.i64(i64 %1945)
  %1947 = trunc i64 %1946 to i32
  %1948 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1947, ptr %1948, align 4, !tbaa !137
  %1949 = load i32, ptr %33, align 8, !tbaa !136
  %1950 = add nsw i32 %1949, 32
  store i32 %1950, ptr %33, align 8, !tbaa !136
  %1951 = load ptr, ptr %3, align 8, !tbaa !133
  %1952 = getelementptr inbounds i8, ptr %1951, i64 4
  store ptr %1952, ptr %3, align 8, !tbaa !133
  br label %1953

1953:                                             ; preds = %1933, %1943
  %1954 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 4
  %1955 = load i32, ptr %1954, align 4, !tbaa !154
  %1956 = icmp sgt i32 %1955, 65535
  %1957 = lshr i32 %1955, 16
  %1958 = select i1 %1956, i32 32, i32 0
  %1959 = select i1 %1956, i32 %1957, i32 %1955
  %1960 = icmp sgt i32 %1959, 255
  %1961 = or disjoint i32 %1958, 16
  %1962 = lshr i32 %1959, 8
  %1963 = select i1 %1960, i32 %1961, i32 %1958
  %1964 = select i1 %1960, i32 %1962, i32 %1959
  %1965 = sext i32 %1964 to i64
  %1966 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %1965
  %1967 = load i8, ptr %1966, align 1, !tbaa !137
  %1968 = zext i8 %1967 to i32
  %1969 = add nuw nsw i32 %1963, %1968
  %1970 = lshr i32 %1969, 1
  %1971 = load i64, ptr %28, align 8, !tbaa !138
  %1972 = zext nneg i32 %1970 to i64
  %1973 = shl i64 %1971, %1972
  store i64 %1973, ptr %28, align 8, !tbaa !138
  %1974 = load i32, ptr %33, align 8, !tbaa !136
  %1975 = sub nsw i32 %1974, %1970
  store i32 %1975, ptr %33, align 8, !tbaa !136
  %1976 = icmp slt i32 %1975, 33
  br i1 %1976, label %1977, label %1987

1977:                                             ; preds = %1953
  %1978 = zext nneg i32 %1975 to i64
  %1979 = shl i64 %1973, %1978
  %1980 = tail call i64 @llvm.bswap.i64(i64 %1979)
  %1981 = trunc i64 %1980 to i32
  %1982 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %1981, ptr %1982, align 4, !tbaa !137
  %1983 = load i32, ptr %33, align 8, !tbaa !136
  %1984 = add nsw i32 %1983, 32
  store i32 %1984, ptr %33, align 8, !tbaa !136
  %1985 = load ptr, ptr %3, align 8, !tbaa !133
  %1986 = getelementptr inbounds i8, ptr %1985, i64 4
  store ptr %1986, ptr %3, align 8, !tbaa !133
  br label %1987

1987:                                             ; preds = %1977, %1953
  %1988 = add nuw nsw i32 %1970, 1
  %1989 = load i64, ptr %28, align 8, !tbaa !138
  %1990 = zext nneg i32 %1988 to i64
  %1991 = shl i64 %1989, %1990
  %1992 = zext i32 %1955 to i64
  %1993 = or i64 %1991, %1992
  store i64 %1993, ptr %28, align 8, !tbaa !138
  %1994 = load i32, ptr %33, align 8, !tbaa !136
  %1995 = sub nsw i32 %1994, %1988
  store i32 %1995, ptr %33, align 8, !tbaa !136
  %1996 = icmp slt i32 %1995, 33
  br i1 %1996, label %1997, label %2007

1997:                                             ; preds = %1987
  %1998 = zext nneg i32 %1995 to i64
  %1999 = shl i64 %1993, %1998
  %2000 = tail call i64 @llvm.bswap.i64(i64 %1999)
  %2001 = trunc i64 %2000 to i32
  %2002 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2001, ptr %2002, align 4, !tbaa !137
  %2003 = load i32, ptr %33, align 8, !tbaa !136
  %2004 = add nsw i32 %2003, 32
  store i32 %2004, ptr %33, align 8, !tbaa !136
  %2005 = load ptr, ptr %3, align 8, !tbaa !133
  %2006 = getelementptr inbounds i8, ptr %2005, i64 4
  store ptr %2006, ptr %3, align 8, !tbaa !133
  br label %2007

2007:                                             ; preds = %1987, %1997
  %2008 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 7
  %2009 = load i32, ptr %2008, align 4, !tbaa !155
  %2010 = load i64, ptr %28, align 8, !tbaa !138
  %2011 = shl i64 %2010, 1
  %2012 = zext i32 %2009 to i64
  %2013 = or i64 %2011, %2012
  store i64 %2013, ptr %28, align 8, !tbaa !138
  %2014 = load i32, ptr %33, align 8, !tbaa !136
  %2015 = add nsw i32 %2014, -1
  store i32 %2015, ptr %33, align 8, !tbaa !136
  %2016 = icmp eq i32 %2015, 32
  br i1 %2016, label %2017, label %2023

2017:                                             ; preds = %2007
  %2018 = trunc i64 %2013 to i32
  %2019 = tail call i32 @llvm.bswap.i32(i32 %2018)
  %2020 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2019, ptr %2020, align 4, !tbaa !137
  %2021 = load ptr, ptr %3, align 8, !tbaa !133
  %2022 = getelementptr inbounds i8, ptr %2021, i64 4
  store ptr %2022, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2023

2023:                                             ; preds = %2007, %2017
  %2024 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 8
  %2025 = load i32, ptr %2024, align 4, !tbaa !156
  %2026 = add nsw i32 %2025, -1
  %2027 = load i64, ptr %28, align 8, !tbaa !138
  %2028 = shl i64 %2027, 5
  %2029 = zext i32 %2026 to i64
  %2030 = or i64 %2028, %2029
  store i64 %2030, ptr %28, align 8, !tbaa !138
  %2031 = load i32, ptr %33, align 8, !tbaa !136
  %2032 = add nsw i32 %2031, -5
  store i32 %2032, ptr %33, align 8, !tbaa !136
  %2033 = icmp slt i32 %2031, 38
  br i1 %2033, label %2034, label %2044

2034:                                             ; preds = %2023
  %2035 = zext nneg i32 %2032 to i64
  %2036 = shl i64 %2030, %2035
  %2037 = tail call i64 @llvm.bswap.i64(i64 %2036)
  %2038 = trunc i64 %2037 to i32
  %2039 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2038, ptr %2039, align 4, !tbaa !137
  %2040 = load i32, ptr %33, align 8, !tbaa !136
  %2041 = add nsw i32 %2040, 32
  store i32 %2041, ptr %33, align 8, !tbaa !136
  %2042 = load ptr, ptr %3, align 8, !tbaa !133
  %2043 = getelementptr inbounds i8, ptr %2042, i64 4
  store ptr %2043, ptr %3, align 8, !tbaa !133
  br label %2044

2044:                                             ; preds = %2023, %2034
  %2045 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 9
  %2046 = load i32, ptr %2045, align 4, !tbaa !157
  %2047 = add nsw i32 %2046, -1
  %2048 = load i64, ptr %28, align 8, !tbaa !138
  %2049 = shl i64 %2048, 5
  %2050 = zext i32 %2047 to i64
  %2051 = or i64 %2049, %2050
  store i64 %2051, ptr %28, align 8, !tbaa !138
  %2052 = load i32, ptr %33, align 8, !tbaa !136
  %2053 = add nsw i32 %2052, -5
  store i32 %2053, ptr %33, align 8, !tbaa !136
  %2054 = icmp slt i32 %2052, 38
  br i1 %2054, label %2055, label %2065

2055:                                             ; preds = %2044
  %2056 = zext nneg i32 %2053 to i64
  %2057 = shl i64 %2051, %2056
  %2058 = tail call i64 @llvm.bswap.i64(i64 %2057)
  %2059 = trunc i64 %2058 to i32
  %2060 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2059, ptr %2060, align 4, !tbaa !137
  %2061 = load i32, ptr %33, align 8, !tbaa !136
  %2062 = add nsw i32 %2061, 32
  store i32 %2062, ptr %33, align 8, !tbaa !136
  %2063 = load ptr, ptr %3, align 8, !tbaa !133
  %2064 = getelementptr inbounds i8, ptr %2063, i64 4
  store ptr %2064, ptr %3, align 8, !tbaa !133
  br label %2065

2065:                                             ; preds = %2044, %2055
  %2066 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 10
  %2067 = load i32, ptr %2066, align 4, !tbaa !158
  %2068 = add nsw i32 %2067, -1
  %2069 = load i64, ptr %28, align 8, !tbaa !138
  %2070 = shl i64 %2069, 5
  %2071 = zext i32 %2068 to i64
  %2072 = or i64 %2070, %2071
  store i64 %2072, ptr %28, align 8, !tbaa !138
  %2073 = load i32, ptr %33, align 8, !tbaa !136
  %2074 = add nsw i32 %2073, -5
  store i32 %2074, ptr %33, align 8, !tbaa !136
  %2075 = icmp slt i32 %2073, 38
  br i1 %2075, label %2076, label %2086

2076:                                             ; preds = %2065
  %2077 = zext nneg i32 %2074 to i64
  %2078 = shl i64 %2072, %2077
  %2079 = tail call i64 @llvm.bswap.i64(i64 %2078)
  %2080 = trunc i64 %2079 to i32
  %2081 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2080, ptr %2081, align 4, !tbaa !137
  %2082 = load i32, ptr %33, align 8, !tbaa !136
  %2083 = add nsw i32 %2082, 32
  store i32 %2083, ptr %33, align 8, !tbaa !136
  %2084 = load ptr, ptr %3, align 8, !tbaa !133
  %2085 = getelementptr inbounds i8, ptr %2084, i64 4
  store ptr %2085, ptr %3, align 8, !tbaa !133
  br label %2086

2086:                                             ; preds = %2065, %2076
  %2087 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 11
  %2088 = load i32, ptr %2087, align 4, !tbaa !159
  %2089 = load i64, ptr %28, align 8, !tbaa !138
  %2090 = shl i64 %2089, 5
  %2091 = zext i32 %2088 to i64
  %2092 = or i64 %2090, %2091
  store i64 %2092, ptr %28, align 8, !tbaa !138
  %2093 = load i32, ptr %33, align 8, !tbaa !136
  %2094 = add nsw i32 %2093, -5
  store i32 %2094, ptr %33, align 8, !tbaa !136
  %2095 = icmp slt i32 %2093, 38
  br i1 %2095, label %2096, label %2106

2096:                                             ; preds = %2086
  %2097 = zext nneg i32 %2094 to i64
  %2098 = shl i64 %2092, %2097
  %2099 = tail call i64 @llvm.bswap.i64(i64 %2098)
  %2100 = trunc i64 %2099 to i32
  %2101 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2100, ptr %2101, align 4, !tbaa !137
  %2102 = load i32, ptr %33, align 8, !tbaa !136
  %2103 = add nsw i32 %2102, 32
  store i32 %2103, ptr %33, align 8, !tbaa !136
  %2104 = load ptr, ptr %3, align 8, !tbaa !133
  %2105 = getelementptr inbounds i8, ptr %2104, i64 4
  store ptr %2105, ptr %3, align 8, !tbaa !133
  br label %2106

2106:                                             ; preds = %2096, %2086, %1802
  %2107 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 20
  %2108 = load i32, ptr %2107, align 4, !tbaa !116
  %2109 = load i64, ptr %28, align 8, !tbaa !138
  %2110 = shl i64 %2109, 1
  %2111 = zext i32 %2108 to i64
  %2112 = or i64 %2110, %2111
  store i64 %2112, ptr %28, align 8, !tbaa !138
  %2113 = load i32, ptr %33, align 8, !tbaa !136
  %2114 = add nsw i32 %2113, -1
  store i32 %2114, ptr %33, align 8, !tbaa !136
  %2115 = icmp eq i32 %2114, 32
  br i1 %2115, label %2116, label %2122

2116:                                             ; preds = %2106
  %2117 = trunc i64 %2112 to i32
  %2118 = tail call i32 @llvm.bswap.i32(i32 %2117)
  %2119 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2118, ptr %2119, align 4, !tbaa !137
  %2120 = load ptr, ptr %3, align 8, !tbaa !133
  %2121 = getelementptr inbounds i8, ptr %2120, i64 4
  store ptr %2121, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2122

2122:                                             ; preds = %2106, %2116
  %2123 = load i32, ptr %1787, align 4, !tbaa !118
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2125, label %2128

2125:                                             ; preds = %2122
  %2126 = load i32, ptr %2107, align 4, !tbaa !116
  %2127 = icmp eq i32 %2126, 0
  br i1 %2127, label %2140, label %2128

2128:                                             ; preds = %2125, %2122
  %2129 = load i64, ptr %28, align 8, !tbaa !138
  %2130 = shl i64 %2129, 1
  store i64 %2130, ptr %28, align 8, !tbaa !138
  %2131 = load i32, ptr %33, align 8, !tbaa !136
  %2132 = add nsw i32 %2131, -1
  store i32 %2132, ptr %33, align 8, !tbaa !136
  %2133 = icmp eq i32 %2132, 32
  br i1 %2133, label %2134, label %2140

2134:                                             ; preds = %2128
  %2135 = trunc i64 %2130 to i32
  %2136 = tail call i32 @llvm.bswap.i32(i32 %2135)
  %2137 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2136, ptr %2137, align 4, !tbaa !137
  %2138 = load ptr, ptr %3, align 8, !tbaa !133
  %2139 = getelementptr inbounds i8, ptr %2138, i64 4
  store ptr %2139, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2140

2140:                                             ; preds = %2134, %2128, %2125
  %2141 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 22
  %2142 = load i32, ptr %2141, align 4, !tbaa !120
  %2143 = load i64, ptr %28, align 8, !tbaa !138
  %2144 = shl i64 %2143, 1
  %2145 = zext i32 %2142 to i64
  %2146 = or i64 %2144, %2145
  store i64 %2146, ptr %28, align 8, !tbaa !138
  %2147 = load i32, ptr %33, align 8, !tbaa !136
  %2148 = add nsw i32 %2147, -1
  store i32 %2148, ptr %33, align 8, !tbaa !136
  %2149 = icmp eq i32 %2148, 32
  br i1 %2149, label %2150, label %2156

2150:                                             ; preds = %2140
  %2151 = trunc i64 %2146 to i32
  %2152 = tail call i32 @llvm.bswap.i32(i32 %2151)
  %2153 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2152, ptr %2153, align 4, !tbaa !137
  %2154 = load ptr, ptr %3, align 8, !tbaa !133
  %2155 = getelementptr inbounds i8, ptr %2154, i64 4
  store ptr %2155, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2156

2156:                                             ; preds = %2140, %2150
  %2157 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 23
  %2158 = load i32, ptr %2157, align 4, !tbaa !126
  %2159 = load i64, ptr %28, align 8, !tbaa !138
  %2160 = shl i64 %2159, 1
  %2161 = zext i32 %2158 to i64
  %2162 = or i64 %2160, %2161
  store i64 %2162, ptr %28, align 8, !tbaa !138
  %2163 = load i32, ptr %33, align 8, !tbaa !136
  %2164 = add nsw i32 %2163, -1
  store i32 %2164, ptr %33, align 8, !tbaa !136
  %2165 = icmp eq i32 %2164, 32
  br i1 %2165, label %2166, label %2172

2166:                                             ; preds = %2156
  %2167 = trunc i64 %2162 to i32
  %2168 = tail call i32 @llvm.bswap.i32(i32 %2167)
  %2169 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2168, ptr %2169, align 4, !tbaa !137
  %2170 = load ptr, ptr %3, align 8, !tbaa !133
  %2171 = getelementptr inbounds i8, ptr %2170, i64 4
  store ptr %2171, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2172

2172:                                             ; preds = %2156, %2166
  %2173 = load i32, ptr %2157, align 4, !tbaa !126
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2521, label %2175

2175:                                             ; preds = %2172
  %2176 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 24
  %2177 = load i32, ptr %2176, align 4, !tbaa !127
  %2178 = load i64, ptr %28, align 8, !tbaa !138
  %2179 = shl i64 %2178, 1
  %2180 = zext i32 %2177 to i64
  %2181 = or i64 %2179, %2180
  store i64 %2181, ptr %28, align 8, !tbaa !138
  %2182 = load i32, ptr %33, align 8, !tbaa !136
  %2183 = add nsw i32 %2182, -1
  store i32 %2183, ptr %33, align 8, !tbaa !136
  %2184 = icmp eq i32 %2183, 32
  br i1 %2184, label %2185, label %2191

2185:                                             ; preds = %2175
  %2186 = trunc i64 %2181 to i32
  %2187 = tail call i32 @llvm.bswap.i32(i32 %2186)
  %2188 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2187, ptr %2188, align 4, !tbaa !137
  %2189 = load ptr, ptr %3, align 8, !tbaa !133
  %2190 = getelementptr inbounds i8, ptr %2189, i64 4
  store ptr %2190, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2191

2191:                                             ; preds = %2175, %2185
  %2192 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 25
  %2193 = load i32, ptr %2192, align 4, !tbaa !128
  %2194 = add i32 %2193, 1
  %2195 = icmp sgt i32 %2194, 65535
  %2196 = lshr i32 %2194, 16
  %2197 = select i1 %2195, i32 32, i32 0
  %2198 = select i1 %2195, i32 %2196, i32 %2194
  %2199 = icmp sgt i32 %2198, 255
  %2200 = or disjoint i32 %2197, 16
  %2201 = lshr i32 %2198, 8
  %2202 = select i1 %2199, i32 %2200, i32 %2197
  %2203 = select i1 %2199, i32 %2201, i32 %2198
  %2204 = sext i32 %2203 to i64
  %2205 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2204
  %2206 = load i8, ptr %2205, align 1, !tbaa !137
  %2207 = zext i8 %2206 to i32
  %2208 = add nuw nsw i32 %2202, %2207
  %2209 = lshr i32 %2208, 1
  %2210 = load i64, ptr %28, align 8, !tbaa !138
  %2211 = zext nneg i32 %2209 to i64
  %2212 = shl i64 %2210, %2211
  store i64 %2212, ptr %28, align 8, !tbaa !138
  %2213 = load i32, ptr %33, align 8, !tbaa !136
  %2214 = sub nsw i32 %2213, %2209
  store i32 %2214, ptr %33, align 8, !tbaa !136
  %2215 = icmp slt i32 %2214, 33
  br i1 %2215, label %2216, label %2226

2216:                                             ; preds = %2191
  %2217 = zext nneg i32 %2214 to i64
  %2218 = shl i64 %2212, %2217
  %2219 = tail call i64 @llvm.bswap.i64(i64 %2218)
  %2220 = trunc i64 %2219 to i32
  %2221 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2220, ptr %2221, align 4, !tbaa !137
  %2222 = load i32, ptr %33, align 8, !tbaa !136
  %2223 = add nsw i32 %2222, 32
  store i32 %2223, ptr %33, align 8, !tbaa !136
  %2224 = load ptr, ptr %3, align 8, !tbaa !133
  %2225 = getelementptr inbounds i8, ptr %2224, i64 4
  store ptr %2225, ptr %3, align 8, !tbaa !133
  br label %2226

2226:                                             ; preds = %2216, %2191
  %2227 = add nuw nsw i32 %2209, 1
  %2228 = load i64, ptr %28, align 8, !tbaa !138
  %2229 = zext nneg i32 %2227 to i64
  %2230 = shl i64 %2228, %2229
  %2231 = zext i32 %2194 to i64
  %2232 = or i64 %2230, %2231
  store i64 %2232, ptr %28, align 8, !tbaa !138
  %2233 = load i32, ptr %33, align 8, !tbaa !136
  %2234 = sub nsw i32 %2233, %2227
  store i32 %2234, ptr %33, align 8, !tbaa !136
  %2235 = icmp slt i32 %2234, 33
  br i1 %2235, label %2236, label %2246

2236:                                             ; preds = %2226
  %2237 = zext nneg i32 %2234 to i64
  %2238 = shl i64 %2232, %2237
  %2239 = tail call i64 @llvm.bswap.i64(i64 %2238)
  %2240 = trunc i64 %2239 to i32
  %2241 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2240, ptr %2241, align 4, !tbaa !137
  %2242 = load i32, ptr %33, align 8, !tbaa !136
  %2243 = add nsw i32 %2242, 32
  store i32 %2243, ptr %33, align 8, !tbaa !136
  %2244 = load ptr, ptr %3, align 8, !tbaa !133
  %2245 = getelementptr inbounds i8, ptr %2244, i64 4
  store ptr %2245, ptr %3, align 8, !tbaa !133
  br label %2246

2246:                                             ; preds = %2226, %2236
  %2247 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 26
  %2248 = load i32, ptr %2247, align 4, !tbaa !129
  %2249 = add i32 %2248, 1
  %2250 = icmp sgt i32 %2249, 65535
  %2251 = lshr i32 %2249, 16
  %2252 = select i1 %2250, i32 32, i32 0
  %2253 = select i1 %2250, i32 %2251, i32 %2249
  %2254 = icmp sgt i32 %2253, 255
  %2255 = or disjoint i32 %2252, 16
  %2256 = lshr i32 %2253, 8
  %2257 = select i1 %2254, i32 %2255, i32 %2252
  %2258 = select i1 %2254, i32 %2256, i32 %2253
  %2259 = sext i32 %2258 to i64
  %2260 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2259
  %2261 = load i8, ptr %2260, align 1, !tbaa !137
  %2262 = zext i8 %2261 to i32
  %2263 = add nuw nsw i32 %2257, %2262
  %2264 = lshr i32 %2263, 1
  %2265 = load i64, ptr %28, align 8, !tbaa !138
  %2266 = zext nneg i32 %2264 to i64
  %2267 = shl i64 %2265, %2266
  store i64 %2267, ptr %28, align 8, !tbaa !138
  %2268 = load i32, ptr %33, align 8, !tbaa !136
  %2269 = sub nsw i32 %2268, %2264
  store i32 %2269, ptr %33, align 8, !tbaa !136
  %2270 = icmp slt i32 %2269, 33
  br i1 %2270, label %2271, label %2281

2271:                                             ; preds = %2246
  %2272 = zext nneg i32 %2269 to i64
  %2273 = shl i64 %2267, %2272
  %2274 = tail call i64 @llvm.bswap.i64(i64 %2273)
  %2275 = trunc i64 %2274 to i32
  %2276 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2275, ptr %2276, align 4, !tbaa !137
  %2277 = load i32, ptr %33, align 8, !tbaa !136
  %2278 = add nsw i32 %2277, 32
  store i32 %2278, ptr %33, align 8, !tbaa !136
  %2279 = load ptr, ptr %3, align 8, !tbaa !133
  %2280 = getelementptr inbounds i8, ptr %2279, i64 4
  store ptr %2280, ptr %3, align 8, !tbaa !133
  br label %2281

2281:                                             ; preds = %2271, %2246
  %2282 = add nuw nsw i32 %2264, 1
  %2283 = load i64, ptr %28, align 8, !tbaa !138
  %2284 = zext nneg i32 %2282 to i64
  %2285 = shl i64 %2283, %2284
  %2286 = zext i32 %2249 to i64
  %2287 = or i64 %2285, %2286
  store i64 %2287, ptr %28, align 8, !tbaa !138
  %2288 = load i32, ptr %33, align 8, !tbaa !136
  %2289 = sub nsw i32 %2288, %2282
  store i32 %2289, ptr %33, align 8, !tbaa !136
  %2290 = icmp slt i32 %2289, 33
  br i1 %2290, label %2291, label %2301

2291:                                             ; preds = %2281
  %2292 = zext nneg i32 %2289 to i64
  %2293 = shl i64 %2287, %2292
  %2294 = tail call i64 @llvm.bswap.i64(i64 %2293)
  %2295 = trunc i64 %2294 to i32
  %2296 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2295, ptr %2296, align 4, !tbaa !137
  %2297 = load i32, ptr %33, align 8, !tbaa !136
  %2298 = add nsw i32 %2297, 32
  store i32 %2298, ptr %33, align 8, !tbaa !136
  %2299 = load ptr, ptr %3, align 8, !tbaa !133
  %2300 = getelementptr inbounds i8, ptr %2299, i64 4
  store ptr %2300, ptr %3, align 8, !tbaa !133
  br label %2301

2301:                                             ; preds = %2281, %2291
  %2302 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 27
  %2303 = load i32, ptr %2302, align 4, !tbaa !132
  %2304 = add i32 %2303, 1
  %2305 = icmp sgt i32 %2304, 65535
  %2306 = lshr i32 %2304, 16
  %2307 = select i1 %2305, i32 32, i32 0
  %2308 = select i1 %2305, i32 %2306, i32 %2304
  %2309 = icmp sgt i32 %2308, 255
  %2310 = or disjoint i32 %2307, 16
  %2311 = lshr i32 %2308, 8
  %2312 = select i1 %2309, i32 %2310, i32 %2307
  %2313 = select i1 %2309, i32 %2311, i32 %2308
  %2314 = sext i32 %2313 to i64
  %2315 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2314
  %2316 = load i8, ptr %2315, align 1, !tbaa !137
  %2317 = zext i8 %2316 to i32
  %2318 = add nuw nsw i32 %2312, %2317
  %2319 = lshr i32 %2318, 1
  %2320 = load i64, ptr %28, align 8, !tbaa !138
  %2321 = zext nneg i32 %2319 to i64
  %2322 = shl i64 %2320, %2321
  store i64 %2322, ptr %28, align 8, !tbaa !138
  %2323 = load i32, ptr %33, align 8, !tbaa !136
  %2324 = sub nsw i32 %2323, %2319
  store i32 %2324, ptr %33, align 8, !tbaa !136
  %2325 = icmp slt i32 %2324, 33
  br i1 %2325, label %2326, label %2336

2326:                                             ; preds = %2301
  %2327 = zext nneg i32 %2324 to i64
  %2328 = shl i64 %2322, %2327
  %2329 = tail call i64 @llvm.bswap.i64(i64 %2328)
  %2330 = trunc i64 %2329 to i32
  %2331 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2330, ptr %2331, align 4, !tbaa !137
  %2332 = load i32, ptr %33, align 8, !tbaa !136
  %2333 = add nsw i32 %2332, 32
  store i32 %2333, ptr %33, align 8, !tbaa !136
  %2334 = load ptr, ptr %3, align 8, !tbaa !133
  %2335 = getelementptr inbounds i8, ptr %2334, i64 4
  store ptr %2335, ptr %3, align 8, !tbaa !133
  br label %2336

2336:                                             ; preds = %2326, %2301
  %2337 = add nuw nsw i32 %2319, 1
  %2338 = load i64, ptr %28, align 8, !tbaa !138
  %2339 = zext nneg i32 %2337 to i64
  %2340 = shl i64 %2338, %2339
  %2341 = zext i32 %2304 to i64
  %2342 = or i64 %2340, %2341
  store i64 %2342, ptr %28, align 8, !tbaa !138
  %2343 = load i32, ptr %33, align 8, !tbaa !136
  %2344 = sub nsw i32 %2343, %2337
  store i32 %2344, ptr %33, align 8, !tbaa !136
  %2345 = icmp slt i32 %2344, 33
  br i1 %2345, label %2346, label %2356

2346:                                             ; preds = %2336
  %2347 = zext nneg i32 %2344 to i64
  %2348 = shl i64 %2342, %2347
  %2349 = tail call i64 @llvm.bswap.i64(i64 %2348)
  %2350 = trunc i64 %2349 to i32
  %2351 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2350, ptr %2351, align 4, !tbaa !137
  %2352 = load i32, ptr %33, align 8, !tbaa !136
  %2353 = add nsw i32 %2352, 32
  store i32 %2353, ptr %33, align 8, !tbaa !136
  %2354 = load ptr, ptr %3, align 8, !tbaa !133
  %2355 = getelementptr inbounds i8, ptr %2354, i64 4
  store ptr %2355, ptr %3, align 8, !tbaa !133
  br label %2356

2356:                                             ; preds = %2336, %2346
  %2357 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 28
  %2358 = load i32, ptr %2357, align 4, !tbaa !131
  %2359 = add i32 %2358, 1
  %2360 = icmp sgt i32 %2359, 65535
  %2361 = lshr i32 %2359, 16
  %2362 = select i1 %2360, i32 32, i32 0
  %2363 = select i1 %2360, i32 %2361, i32 %2359
  %2364 = icmp sgt i32 %2363, 255
  %2365 = or disjoint i32 %2362, 16
  %2366 = lshr i32 %2363, 8
  %2367 = select i1 %2364, i32 %2365, i32 %2362
  %2368 = select i1 %2364, i32 %2366, i32 %2363
  %2369 = sext i32 %2368 to i64
  %2370 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2369
  %2371 = load i8, ptr %2370, align 1, !tbaa !137
  %2372 = zext i8 %2371 to i32
  %2373 = add nuw nsw i32 %2367, %2372
  %2374 = lshr i32 %2373, 1
  %2375 = load i64, ptr %28, align 8, !tbaa !138
  %2376 = zext nneg i32 %2374 to i64
  %2377 = shl i64 %2375, %2376
  store i64 %2377, ptr %28, align 8, !tbaa !138
  %2378 = load i32, ptr %33, align 8, !tbaa !136
  %2379 = sub nsw i32 %2378, %2374
  store i32 %2379, ptr %33, align 8, !tbaa !136
  %2380 = icmp slt i32 %2379, 33
  br i1 %2380, label %2381, label %2391

2381:                                             ; preds = %2356
  %2382 = zext nneg i32 %2379 to i64
  %2383 = shl i64 %2377, %2382
  %2384 = tail call i64 @llvm.bswap.i64(i64 %2383)
  %2385 = trunc i64 %2384 to i32
  %2386 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2385, ptr %2386, align 4, !tbaa !137
  %2387 = load i32, ptr %33, align 8, !tbaa !136
  %2388 = add nsw i32 %2387, 32
  store i32 %2388, ptr %33, align 8, !tbaa !136
  %2389 = load ptr, ptr %3, align 8, !tbaa !133
  %2390 = getelementptr inbounds i8, ptr %2389, i64 4
  store ptr %2390, ptr %3, align 8, !tbaa !133
  br label %2391

2391:                                             ; preds = %2381, %2356
  %2392 = add nuw nsw i32 %2374, 1
  %2393 = load i64, ptr %28, align 8, !tbaa !138
  %2394 = zext nneg i32 %2392 to i64
  %2395 = shl i64 %2393, %2394
  %2396 = zext i32 %2359 to i64
  %2397 = or i64 %2395, %2396
  store i64 %2397, ptr %28, align 8, !tbaa !138
  %2398 = load i32, ptr %33, align 8, !tbaa !136
  %2399 = sub nsw i32 %2398, %2392
  store i32 %2399, ptr %33, align 8, !tbaa !136
  %2400 = icmp slt i32 %2399, 33
  br i1 %2400, label %2401, label %2411

2401:                                             ; preds = %2391
  %2402 = zext nneg i32 %2399 to i64
  %2403 = shl i64 %2397, %2402
  %2404 = tail call i64 @llvm.bswap.i64(i64 %2403)
  %2405 = trunc i64 %2404 to i32
  %2406 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2405, ptr %2406, align 4, !tbaa !137
  %2407 = load i32, ptr %33, align 8, !tbaa !136
  %2408 = add nsw i32 %2407, 32
  store i32 %2408, ptr %33, align 8, !tbaa !136
  %2409 = load ptr, ptr %3, align 8, !tbaa !133
  %2410 = getelementptr inbounds i8, ptr %2409, i64 4
  store ptr %2410, ptr %3, align 8, !tbaa !133
  br label %2411

2411:                                             ; preds = %2391, %2401
  %2412 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 29
  %2413 = load i32, ptr %2412, align 4, !tbaa !122
  %2414 = add i32 %2413, 1
  %2415 = icmp sgt i32 %2414, 65535
  %2416 = lshr i32 %2414, 16
  %2417 = select i1 %2415, i32 32, i32 0
  %2418 = select i1 %2415, i32 %2416, i32 %2414
  %2419 = icmp sgt i32 %2418, 255
  %2420 = or disjoint i32 %2417, 16
  %2421 = lshr i32 %2418, 8
  %2422 = select i1 %2419, i32 %2420, i32 %2417
  %2423 = select i1 %2419, i32 %2421, i32 %2418
  %2424 = sext i32 %2423 to i64
  %2425 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2424
  %2426 = load i8, ptr %2425, align 1, !tbaa !137
  %2427 = zext i8 %2426 to i32
  %2428 = add nuw nsw i32 %2422, %2427
  %2429 = lshr i32 %2428, 1
  %2430 = load i64, ptr %28, align 8, !tbaa !138
  %2431 = zext nneg i32 %2429 to i64
  %2432 = shl i64 %2430, %2431
  store i64 %2432, ptr %28, align 8, !tbaa !138
  %2433 = load i32, ptr %33, align 8, !tbaa !136
  %2434 = sub nsw i32 %2433, %2429
  store i32 %2434, ptr %33, align 8, !tbaa !136
  %2435 = icmp slt i32 %2434, 33
  br i1 %2435, label %2436, label %2446

2436:                                             ; preds = %2411
  %2437 = zext nneg i32 %2434 to i64
  %2438 = shl i64 %2432, %2437
  %2439 = tail call i64 @llvm.bswap.i64(i64 %2438)
  %2440 = trunc i64 %2439 to i32
  %2441 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2440, ptr %2441, align 4, !tbaa !137
  %2442 = load i32, ptr %33, align 8, !tbaa !136
  %2443 = add nsw i32 %2442, 32
  store i32 %2443, ptr %33, align 8, !tbaa !136
  %2444 = load ptr, ptr %3, align 8, !tbaa !133
  %2445 = getelementptr inbounds i8, ptr %2444, i64 4
  store ptr %2445, ptr %3, align 8, !tbaa !133
  br label %2446

2446:                                             ; preds = %2436, %2411
  %2447 = add nuw nsw i32 %2429, 1
  %2448 = load i64, ptr %28, align 8, !tbaa !138
  %2449 = zext nneg i32 %2447 to i64
  %2450 = shl i64 %2448, %2449
  %2451 = zext i32 %2414 to i64
  %2452 = or i64 %2450, %2451
  store i64 %2452, ptr %28, align 8, !tbaa !138
  %2453 = load i32, ptr %33, align 8, !tbaa !136
  %2454 = sub nsw i32 %2453, %2447
  store i32 %2454, ptr %33, align 8, !tbaa !136
  %2455 = icmp slt i32 %2454, 33
  br i1 %2455, label %2456, label %2466

2456:                                             ; preds = %2446
  %2457 = zext nneg i32 %2454 to i64
  %2458 = shl i64 %2452, %2457
  %2459 = tail call i64 @llvm.bswap.i64(i64 %2458)
  %2460 = trunc i64 %2459 to i32
  %2461 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2460, ptr %2461, align 4, !tbaa !137
  %2462 = load i32, ptr %33, align 8, !tbaa !136
  %2463 = add nsw i32 %2462, 32
  store i32 %2463, ptr %33, align 8, !tbaa !136
  %2464 = load ptr, ptr %3, align 8, !tbaa !133
  %2465 = getelementptr inbounds i8, ptr %2464, i64 4
  store ptr %2465, ptr %3, align 8, !tbaa !133
  br label %2466

2466:                                             ; preds = %2446, %2456
  %2467 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 30
  %2468 = load i32, ptr %2467, align 4, !tbaa !125
  %2469 = add i32 %2468, 1
  %2470 = icmp sgt i32 %2469, 65535
  %2471 = lshr i32 %2469, 16
  %2472 = select i1 %2470, i32 32, i32 0
  %2473 = select i1 %2470, i32 %2471, i32 %2469
  %2474 = icmp sgt i32 %2473, 255
  %2475 = or disjoint i32 %2472, 16
  %2476 = lshr i32 %2473, 8
  %2477 = select i1 %2474, i32 %2475, i32 %2472
  %2478 = select i1 %2474, i32 %2476, i32 %2473
  %2479 = sext i32 %2478 to i64
  %2480 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %2479
  %2481 = load i8, ptr %2480, align 1, !tbaa !137
  %2482 = zext i8 %2481 to i32
  %2483 = add nuw nsw i32 %2477, %2482
  %2484 = lshr i32 %2483, 1
  %2485 = load i64, ptr %28, align 8, !tbaa !138
  %2486 = zext nneg i32 %2484 to i64
  %2487 = shl i64 %2485, %2486
  store i64 %2487, ptr %28, align 8, !tbaa !138
  %2488 = load i32, ptr %33, align 8, !tbaa !136
  %2489 = sub nsw i32 %2488, %2484
  store i32 %2489, ptr %33, align 8, !tbaa !136
  %2490 = icmp slt i32 %2489, 33
  br i1 %2490, label %2491, label %2501

2491:                                             ; preds = %2466
  %2492 = zext nneg i32 %2489 to i64
  %2493 = shl i64 %2487, %2492
  %2494 = tail call i64 @llvm.bswap.i64(i64 %2493)
  %2495 = trunc i64 %2494 to i32
  %2496 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2495, ptr %2496, align 4, !tbaa !137
  %2497 = load i32, ptr %33, align 8, !tbaa !136
  %2498 = add nsw i32 %2497, 32
  store i32 %2498, ptr %33, align 8, !tbaa !136
  %2499 = load ptr, ptr %3, align 8, !tbaa !133
  %2500 = getelementptr inbounds i8, ptr %2499, i64 4
  store ptr %2500, ptr %3, align 8, !tbaa !133
  br label %2501

2501:                                             ; preds = %2491, %2466
  %2502 = add nuw nsw i32 %2484, 1
  %2503 = load i64, ptr %28, align 8, !tbaa !138
  %2504 = zext nneg i32 %2502 to i64
  %2505 = shl i64 %2503, %2504
  %2506 = zext i32 %2469 to i64
  %2507 = or i64 %2505, %2506
  store i64 %2507, ptr %28, align 8, !tbaa !138
  %2508 = load i32, ptr %33, align 8, !tbaa !136
  %2509 = sub nsw i32 %2508, %2502
  store i32 %2509, ptr %33, align 8, !tbaa !136
  %2510 = icmp slt i32 %2509, 33
  br i1 %2510, label %2511, label %2521

2511:                                             ; preds = %2501
  %2512 = zext nneg i32 %2509 to i64
  %2513 = shl i64 %2507, %2512
  %2514 = tail call i64 @llvm.bswap.i64(i64 %2513)
  %2515 = trunc i64 %2514 to i32
  %2516 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2515, ptr %2516, align 4, !tbaa !137
  %2517 = load i32, ptr %33, align 8, !tbaa !136
  %2518 = add nsw i32 %2517, 32
  store i32 %2518, ptr %33, align 8, !tbaa !136
  %2519 = load ptr, ptr %3, align 8, !tbaa !133
  %2520 = getelementptr inbounds i8, ptr %2519, i64 4
  store ptr %2520, ptr %3, align 8, !tbaa !133
  br label %2521

2521:                                             ; preds = %2511, %2501, %2172, %1264
  %2522 = load i64, ptr %28, align 8, !tbaa !138
  %2523 = shl i64 %2522, 1
  %2524 = or disjoint i64 %2523, 1
  store i64 %2524, ptr %28, align 8, !tbaa !138
  %2525 = load i32, ptr %33, align 8, !tbaa !136
  %2526 = add nsw i32 %2525, -1
  store i32 %2526, ptr %33, align 8, !tbaa !136
  %2527 = icmp eq i32 %2526, 32
  br i1 %2527, label %2528, label %2534

2528:                                             ; preds = %2521
  %2529 = trunc i64 %2524 to i32
  %2530 = tail call i32 @llvm.bswap.i32(i32 %2529)
  %2531 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2530, ptr %2531, align 4, !tbaa !137
  %2532 = load ptr, ptr %3, align 8, !tbaa !133
  %2533 = getelementptr inbounds i8, ptr %2532, i64 4
  store ptr %2533, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  br label %2534

2534:                                             ; preds = %2528, %2521
  %2535 = load i32, ptr %33, align 8, !tbaa !136
  %2536 = and i32 %2535, 7
  %2537 = load i64, ptr %28, align 8, !tbaa !138
  %2538 = zext nneg i32 %2536 to i64
  %2539 = shl i64 %2537, %2538
  store i64 %2539, ptr %28, align 8, !tbaa !138
  %2540 = and i32 %2535, -8
  store i32 %2540, ptr %33, align 8, !tbaa !136
  %2541 = icmp slt i32 %2540, 33
  br i1 %2541, label %2542, label %2552

2542:                                             ; preds = %2534
  %2543 = zext nneg i32 %2540 to i64
  %2544 = tail call i64 @llvm.bswap.i64(i64 %2539)
  %2545 = lshr i64 %2544, %2543
  %2546 = trunc i64 %2545 to i32
  %2547 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2546, ptr %2547, align 4, !tbaa !137
  %2548 = load i32, ptr %33, align 8, !tbaa !136
  %2549 = add nsw i32 %2548, 32
  store i32 %2549, ptr %33, align 8, !tbaa !136
  %2550 = load ptr, ptr %3, align 8, !tbaa !133
  %2551 = getelementptr inbounds i8, ptr %2550, i64 4
  store ptr %2551, ptr %3, align 8, !tbaa !133
  br label %2552

2552:                                             ; preds = %2534, %2542
  %2553 = load i64, ptr %28, align 8, !tbaa !138
  %2554 = load i32, ptr %33, align 8, !tbaa !136
  %2555 = and i32 %2554, 31
  %2556 = zext nneg i32 %2555 to i64
  %2557 = shl i64 %2553, %2556
  %2558 = trunc i64 %2557 to i32
  %2559 = tail call i32 @llvm.bswap.i32(i32 %2558)
  %2560 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %2559, ptr %2560, align 4, !tbaa !137
  %2561 = load i32, ptr %33, align 8, !tbaa !136
  %2562 = sdiv i32 %2561, -8
  %2563 = load ptr, ptr %3, align 8, !tbaa !133
  %2564 = sext i32 %2562 to i64
  %2565 = getelementptr i8, ptr %2563, i64 %2564
  %2566 = getelementptr i8, ptr %2565, i64 8
  store ptr %2566, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %33, align 8, !tbaa !136
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_init(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #3 {
  store i32 %1, ptr %0, align 8, !tbaa !160
  %5 = load i32, ptr %3, align 4, !tbaa !34
  %6 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !162
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !53
  %9 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 8, !tbaa !163
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !55
  %12 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !164
  %13 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 4
  store i32 1, ptr %13, align 8, !tbaa !165
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !123
  %16 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 5
  store i32 %15, ptr %16, align 4, !tbaa !166
  %17 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 6
  store i32 1, ptr %17, align 8, !tbaa !167
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !56
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !168
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !169
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 8
  store i32 %26, ptr %27, align 8, !tbaa !170
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42
  %29 = load i32, ptr %28, align 8, !tbaa !42
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !49
  br label %34

34:                                               ; preds = %4, %31
  %35 = phi i32 [ %33, %31 ], [ 26, %4 ]
  %36 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 9
  store i32 %35, ptr %36, align 4, !tbaa !171
  %37 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 10
  store i32 26, ptr %37, align 8, !tbaa !172
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !173
  %40 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 11
  store i32 %39, ptr %40, align 4, !tbaa !174
  %41 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %41, align 8, !tbaa !175
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 27
  %43 = load i32, ptr %42, align 4, !tbaa !176
  %44 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 13
  store i32 %43, ptr %44, align 4, !tbaa !177
  %45 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %45, align 8, !tbaa !178
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !51
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 15
  store i32 %49, ptr %50, align 4, !tbaa !179
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28
  %52 = load i32, ptr %51, align 8, !tbaa !52
  %53 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 16
  store i32 %52, ptr %53, align 8, !tbaa !180
  switch i32 %52, label %221 [
    i32 0, label %54
    i32 1, label %59
    i32 2, label %66
  ]

54:                                               ; preds = %34, %54
  %55 = phi i64 [ %57, %54 ], [ 0, %34 ]
  %56 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 %55
  store ptr @x264_cqm_flat16, ptr %56, align 8, !tbaa !181
  %57 = add nuw nsw i64 %55, 1
  %58 = icmp eq i64 %57, 6
  br i1 %58, label %221, label %54, !llvm.loop !182

59:                                               ; preds = %34, %59
  %60 = phi i64 [ %64, %59 ], [ 0, %34 ]
  %61 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !181
  %63 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 %60
  store ptr %62, ptr %63, align 8, !tbaa !181
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp eq i64 %64, 6
  br i1 %65, label %221, label %59, !llvm.loop !183

66:                                               ; preds = %34
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30
  br label %68

68:                                               ; preds = %66, %75
  %69 = phi i64 [ 0, %66 ], [ %76, %75 ]
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = shl nuw nsw i64 %69, 2
  %73 = getelementptr i8, ptr %67, i64 %72
  %74 = getelementptr i8, ptr %67, i64 %69
  br label %78

75:                                               ; preds = %78, %68
  %76 = add nuw nsw i64 %69, 1
  %77 = icmp eq i64 %76, 4
  br i1 %77, label %87, label %68, !llvm.loop !184

78:                                               ; preds = %71, %78
  %79 = phi i64 [ 0, %71 ], [ %85, %78 ]
  %80 = getelementptr i8, ptr %73, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !137
  %82 = shl nsw i64 %79, 2
  %83 = getelementptr i8, ptr %74, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !137
  store i8 %84, ptr %80, align 1, !tbaa !137
  store i8 %81, ptr %83, align 1, !tbaa !137
  %85 = add nuw nsw i64 %79, 1
  %86 = icmp eq i64 %85, %69
  br i1 %86, label %75, label %78, !llvm.loop !185

87:                                               ; preds = %75
  %88 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31
  br label %89

89:                                               ; preds = %87, %96
  %90 = phi i64 [ 0, %87 ], [ %97, %96 ]
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = shl nuw nsw i64 %90, 2
  %94 = getelementptr i8, ptr %88, i64 %93
  %95 = getelementptr i8, ptr %88, i64 %90
  br label %99

96:                                               ; preds = %99, %89
  %97 = add nuw nsw i64 %90, 1
  %98 = icmp eq i64 %97, 4
  br i1 %98, label %108, label %89, !llvm.loop !184

99:                                               ; preds = %92, %99
  %100 = phi i64 [ 0, %92 ], [ %106, %99 ]
  %101 = getelementptr i8, ptr %94, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !137
  %103 = shl nsw i64 %100, 2
  %104 = getelementptr i8, ptr %95, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !137
  store i8 %105, ptr %101, align 1, !tbaa !137
  store i8 %102, ptr %104, align 1, !tbaa !137
  %106 = add nuw nsw i64 %100, 1
  %107 = icmp eq i64 %106, %90
  br i1 %107, label %96, label %99, !llvm.loop !185

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32
  br label %110

110:                                              ; preds = %108, %117
  %111 = phi i64 [ 0, %108 ], [ %118, %117 ]
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = shl nuw nsw i64 %111, 2
  %115 = getelementptr i8, ptr %109, i64 %114
  %116 = getelementptr i8, ptr %109, i64 %111
  br label %120

117:                                              ; preds = %120, %110
  %118 = add nuw nsw i64 %111, 1
  %119 = icmp eq i64 %118, 4
  br i1 %119, label %129, label %110, !llvm.loop !184

120:                                              ; preds = %113, %120
  %121 = phi i64 [ 0, %113 ], [ %127, %120 ]
  %122 = getelementptr i8, ptr %115, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !137
  %124 = shl nsw i64 %121, 2
  %125 = getelementptr i8, ptr %116, i64 %124
  %126 = load i8, ptr %125, align 1, !tbaa !137
  store i8 %126, ptr %122, align 1, !tbaa !137
  store i8 %123, ptr %125, align 1, !tbaa !137
  %127 = add nuw nsw i64 %121, 1
  %128 = icmp eq i64 %127, %111
  br i1 %128, label %117, label %120, !llvm.loop !185

129:                                              ; preds = %117
  %130 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33
  br label %131

131:                                              ; preds = %129, %138
  %132 = phi i64 [ 0, %129 ], [ %139, %138 ]
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %131
  %135 = shl nuw nsw i64 %132, 2
  %136 = getelementptr i8, ptr %130, i64 %135
  %137 = getelementptr i8, ptr %130, i64 %132
  br label %141

138:                                              ; preds = %141, %131
  %139 = add nuw nsw i64 %132, 1
  %140 = icmp eq i64 %139, 4
  br i1 %140, label %150, label %131, !llvm.loop !184

141:                                              ; preds = %134, %141
  %142 = phi i64 [ 0, %134 ], [ %148, %141 ]
  %143 = getelementptr i8, ptr %136, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !137
  %145 = shl nsw i64 %142, 2
  %146 = getelementptr i8, ptr %137, i64 %145
  %147 = load i8, ptr %146, align 1, !tbaa !137
  store i8 %147, ptr %143, align 1, !tbaa !137
  store i8 %144, ptr %146, align 1, !tbaa !137
  %148 = add nuw nsw i64 %142, 1
  %149 = icmp eq i64 %148, %132
  br i1 %149, label %138, label %141, !llvm.loop !185

150:                                              ; preds = %138
  %151 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 34
  br label %152

152:                                              ; preds = %150, %159
  %153 = phi i64 [ 0, %150 ], [ %160, %159 ]
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %152
  %156 = shl nuw nsw i64 %153, 3
  %157 = getelementptr i8, ptr %151, i64 %156
  %158 = getelementptr i8, ptr %151, i64 %153
  br label %162

159:                                              ; preds = %162, %152
  %160 = add nuw nsw i64 %153, 1
  %161 = icmp eq i64 %160, 8
  br i1 %161, label %171, label %152, !llvm.loop !184

162:                                              ; preds = %155, %162
  %163 = phi i64 [ 0, %155 ], [ %169, %162 ]
  %164 = getelementptr i8, ptr %157, i64 %163
  %165 = load i8, ptr %164, align 1, !tbaa !137
  %166 = shl nsw i64 %163, 3
  %167 = getelementptr i8, ptr %158, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !137
  store i8 %168, ptr %164, align 1, !tbaa !137
  store i8 %165, ptr %167, align 1, !tbaa !137
  %169 = add nuw nsw i64 %163, 1
  %170 = icmp eq i64 %169, %153
  br i1 %170, label %159, label %162, !llvm.loop !185

171:                                              ; preds = %159
  %172 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 35
  br label %173

173:                                              ; preds = %171, %180
  %174 = phi i64 [ 0, %171 ], [ %181, %180 ]
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %173
  %177 = shl nuw nsw i64 %174, 3
  %178 = getelementptr i8, ptr %172, i64 %177
  %179 = getelementptr i8, ptr %172, i64 %174
  br label %183

180:                                              ; preds = %183, %173
  %181 = add nuw nsw i64 %174, 1
  %182 = icmp eq i64 %181, 8
  br i1 %182, label %192, label %173, !llvm.loop !184

183:                                              ; preds = %176, %183
  %184 = phi i64 [ 0, %176 ], [ %190, %183 ]
  %185 = getelementptr i8, ptr %178, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !137
  %187 = shl nsw i64 %184, 3
  %188 = getelementptr i8, ptr %179, i64 %187
  %189 = load i8, ptr %188, align 1, !tbaa !137
  store i8 %189, ptr %185, align 1, !tbaa !137
  store i8 %186, ptr %188, align 1, !tbaa !137
  %190 = add nuw nsw i64 %184, 1
  %191 = icmp eq i64 %190, %174
  br i1 %191, label %180, label %183, !llvm.loop !185

192:                                              ; preds = %180
  %193 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17
  store ptr %67, ptr %193, align 8, !tbaa !181
  %194 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 2
  store ptr %88, ptr %194, align 8, !tbaa !181
  %195 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 1
  store ptr %109, ptr %195, align 8, !tbaa !181
  %196 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 3
  store ptr %130, ptr %196, align 8, !tbaa !181
  %197 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 4
  store ptr %151, ptr %197, align 8, !tbaa !181
  %198 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 5
  store ptr %172, ptr %198, align 8, !tbaa !181
  br label %199

199:                                              ; preds = %192, %206
  %200 = phi i64 [ 0, %192 ], [ %207, %206 ]
  %201 = icmp ult i64 %200, 4
  %202 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 %200
  %203 = load ptr, ptr %202, align 8, !tbaa !181
  %204 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %200
  %205 = select i1 %201, i64 16, i64 64
  br label %209

206:                                              ; preds = %217
  %207 = add nuw nsw i64 %200, 1
  %208 = icmp eq i64 %207, 6
  br i1 %208, label %221, label %199, !llvm.loop !186

209:                                              ; preds = %199, %217
  %210 = phi i64 [ 0, %199 ], [ %219, %217 ]
  %211 = phi ptr [ %203, %199 ], [ %218, %217 ]
  %212 = getelementptr inbounds i8, ptr %211, i64 %210
  %213 = load i8, ptr %212, align 1, !tbaa !137
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %209
  %216 = load ptr, ptr %204, align 8, !tbaa !181
  store ptr %216, ptr %202, align 8, !tbaa !181
  br label %217

217:                                              ; preds = %209, %215
  %218 = phi ptr [ %211, %209 ], [ %216, %215 ]
  %219 = add nuw nsw i64 %210, 1
  %220 = icmp eq i64 %219, %205
  br i1 %220, label %206, label %209, !llvm.loop !187

221:                                              ; preds = %206, %59, %54, %34
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_write(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !133
  %5 = ptrtoint ptr %4 to i64
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  %10 = and i64 %5, 3
  %11 = sub nsw i64 0, %10
  %12 = getelementptr inbounds i8, ptr %4, i64 %11
  store ptr %12, ptr %3, align 8, !tbaa !133
  %13 = trunc i64 %10 to i32
  %14 = shl nuw nsw i32 %13, 3
  %15 = sub nuw nsw i32 64, %14
  %16 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  store i32 %15, ptr %16, align 8, !tbaa !136
  %17 = load i32, ptr %12, align 4, !tbaa !137
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %21 = shl nuw nsw i32 %7, 3
  %22 = sub nuw nsw i32 32, %21
  %23 = zext nneg i32 %22 to i64
  %24 = lshr i64 %19, %23
  store i64 %24, ptr %20, align 8, !tbaa !138
  br label %25

25:                                               ; preds = %2, %9
  %26 = load i32, ptr %1, align 8, !tbaa !160
  %27 = add i32 %26, 1
  %28 = icmp sgt i32 %27, 65535
  %29 = lshr i32 %27, 16
  %30 = select i1 %28, i32 32, i32 0
  %31 = select i1 %28, i32 %29, i32 %27
  %32 = icmp sgt i32 %31, 255
  %33 = or disjoint i32 %30, 16
  %34 = lshr i32 %31, 8
  %35 = select i1 %32, i32 %33, i32 %30
  %36 = select i1 %32, i32 %34, i32 %31
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !137
  %40 = zext i8 %39 to i32
  %41 = add nuw nsw i32 %35, %40
  %42 = lshr i32 %41, 1
  %43 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !138
  %45 = zext nneg i32 %42 to i64
  %46 = shl i64 %44, %45
  store i64 %46, ptr %43, align 8, !tbaa !138
  %47 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %48 = load i32, ptr %47, align 8, !tbaa !136
  %49 = sub nsw i32 %48, %42
  store i32 %49, ptr %47, align 8, !tbaa !136
  %50 = icmp slt i32 %49, 33
  br i1 %50, label %51, label %61

51:                                               ; preds = %25
  %52 = zext nneg i32 %49 to i64
  %53 = shl i64 %46, %52
  %54 = tail call i64 @llvm.bswap.i64(i64 %53)
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %55, ptr %56, align 4, !tbaa !137
  %57 = load i32, ptr %47, align 8, !tbaa !136
  %58 = add nsw i32 %57, 32
  store i32 %58, ptr %47, align 8, !tbaa !136
  %59 = load ptr, ptr %3, align 8, !tbaa !133
  %60 = getelementptr inbounds i8, ptr %59, i64 4
  store ptr %60, ptr %3, align 8, !tbaa !133
  br label %61

61:                                               ; preds = %51, %25
  %62 = add nuw nsw i32 %42, 1
  %63 = load i64, ptr %43, align 8, !tbaa !138
  %64 = zext nneg i32 %62 to i64
  %65 = shl i64 %63, %64
  %66 = zext i32 %27 to i64
  %67 = or i64 %65, %66
  store i64 %67, ptr %43, align 8, !tbaa !138
  %68 = load i32, ptr %47, align 8, !tbaa !136
  %69 = sub nsw i32 %68, %62
  store i32 %69, ptr %47, align 8, !tbaa !136
  %70 = icmp slt i32 %69, 33
  br i1 %70, label %71, label %81

71:                                               ; preds = %61
  %72 = zext nneg i32 %69 to i64
  %73 = shl i64 %67, %72
  %74 = tail call i64 @llvm.bswap.i64(i64 %73)
  %75 = trunc i64 %74 to i32
  %76 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %75, ptr %76, align 4, !tbaa !137
  %77 = load i32, ptr %47, align 8, !tbaa !136
  %78 = add nsw i32 %77, 32
  store i32 %78, ptr %47, align 8, !tbaa !136
  %79 = load ptr, ptr %3, align 8, !tbaa !133
  %80 = getelementptr inbounds i8, ptr %79, i64 4
  store ptr %80, ptr %3, align 8, !tbaa !133
  br label %81

81:                                               ; preds = %61, %71
  %82 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !162
  %84 = add i32 %83, 1
  %85 = icmp sgt i32 %84, 65535
  %86 = lshr i32 %84, 16
  %87 = select i1 %85, i32 32, i32 0
  %88 = select i1 %85, i32 %86, i32 %84
  %89 = icmp sgt i32 %88, 255
  %90 = or disjoint i32 %87, 16
  %91 = lshr i32 %88, 8
  %92 = select i1 %89, i32 %90, i32 %87
  %93 = select i1 %89, i32 %91, i32 %88
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %94
  %96 = load i8, ptr %95, align 1, !tbaa !137
  %97 = zext i8 %96 to i32
  %98 = add nuw nsw i32 %92, %97
  %99 = lshr i32 %98, 1
  %100 = load i64, ptr %43, align 8, !tbaa !138
  %101 = zext nneg i32 %99 to i64
  %102 = shl i64 %100, %101
  store i64 %102, ptr %43, align 8, !tbaa !138
  %103 = load i32, ptr %47, align 8, !tbaa !136
  %104 = sub nsw i32 %103, %99
  store i32 %104, ptr %47, align 8, !tbaa !136
  %105 = icmp slt i32 %104, 33
  br i1 %105, label %106, label %116

106:                                              ; preds = %81
  %107 = zext nneg i32 %104 to i64
  %108 = shl i64 %102, %107
  %109 = tail call i64 @llvm.bswap.i64(i64 %108)
  %110 = trunc i64 %109 to i32
  %111 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %110, ptr %111, align 4, !tbaa !137
  %112 = load i32, ptr %47, align 8, !tbaa !136
  %113 = add nsw i32 %112, 32
  store i32 %113, ptr %47, align 8, !tbaa !136
  %114 = load ptr, ptr %3, align 8, !tbaa !133
  %115 = getelementptr inbounds i8, ptr %114, i64 4
  store ptr %115, ptr %3, align 8, !tbaa !133
  br label %116

116:                                              ; preds = %106, %81
  %117 = add nuw nsw i32 %99, 1
  %118 = load i64, ptr %43, align 8, !tbaa !138
  %119 = zext nneg i32 %117 to i64
  %120 = shl i64 %118, %119
  %121 = zext i32 %84 to i64
  %122 = or i64 %120, %121
  store i64 %122, ptr %43, align 8, !tbaa !138
  %123 = load i32, ptr %47, align 8, !tbaa !136
  %124 = sub nsw i32 %123, %117
  store i32 %124, ptr %47, align 8, !tbaa !136
  %125 = icmp slt i32 %124, 33
  br i1 %125, label %126, label %136

126:                                              ; preds = %116
  %127 = zext nneg i32 %124 to i64
  %128 = shl i64 %122, %127
  %129 = tail call i64 @llvm.bswap.i64(i64 %128)
  %130 = trunc i64 %129 to i32
  %131 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %130, ptr %131, align 4, !tbaa !137
  %132 = load i32, ptr %47, align 8, !tbaa !136
  %133 = add nsw i32 %132, 32
  store i32 %133, ptr %47, align 8, !tbaa !136
  %134 = load ptr, ptr %3, align 8, !tbaa !133
  %135 = getelementptr inbounds i8, ptr %134, i64 4
  store ptr %135, ptr %3, align 8, !tbaa !133
  br label %136

136:                                              ; preds = %116, %126
  %137 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 2
  %138 = load i32, ptr %137, align 8, !tbaa !163
  %139 = load i64, ptr %43, align 8, !tbaa !138
  %140 = shl i64 %139, 1
  %141 = zext i32 %138 to i64
  %142 = or i64 %140, %141
  store i64 %142, ptr %43, align 8, !tbaa !138
  %143 = load i32, ptr %47, align 8, !tbaa !136
  %144 = add nsw i32 %143, -1
  store i32 %144, ptr %47, align 8, !tbaa !136
  %145 = icmp slt i32 %143, 34
  br i1 %145, label %146, label %156

146:                                              ; preds = %136
  %147 = zext nneg i32 %144 to i64
  %148 = shl i64 %142, %147
  %149 = tail call i64 @llvm.bswap.i64(i64 %148)
  %150 = trunc i64 %149 to i32
  %151 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %150, ptr %151, align 4, !tbaa !137
  %152 = load i32, ptr %47, align 8, !tbaa !136
  %153 = add nsw i32 %152, 32
  store i32 %153, ptr %47, align 8, !tbaa !136
  %154 = load ptr, ptr %3, align 8, !tbaa !133
  %155 = getelementptr inbounds i8, ptr %154, i64 4
  store ptr %155, ptr %3, align 8, !tbaa !133
  br label %156

156:                                              ; preds = %136, %146
  %157 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 3
  %158 = load i32, ptr %157, align 4, !tbaa !164
  %159 = load i64, ptr %43, align 8, !tbaa !138
  %160 = shl i64 %159, 1
  %161 = zext i32 %158 to i64
  %162 = or i64 %160, %161
  store i64 %162, ptr %43, align 8, !tbaa !138
  %163 = load i32, ptr %47, align 8, !tbaa !136
  %164 = add nsw i32 %163, -1
  store i32 %164, ptr %47, align 8, !tbaa !136
  %165 = icmp slt i32 %163, 34
  br i1 %165, label %166, label %176

166:                                              ; preds = %156
  %167 = zext nneg i32 %164 to i64
  %168 = shl i64 %162, %167
  %169 = tail call i64 @llvm.bswap.i64(i64 %168)
  %170 = trunc i64 %169 to i32
  %171 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %170, ptr %171, align 4, !tbaa !137
  %172 = load i32, ptr %47, align 8, !tbaa !136
  %173 = add nsw i32 %172, 32
  store i32 %173, ptr %47, align 8, !tbaa !136
  %174 = load ptr, ptr %3, align 8, !tbaa !133
  %175 = getelementptr inbounds i8, ptr %174, i64 4
  store ptr %175, ptr %3, align 8, !tbaa !133
  br label %176

176:                                              ; preds = %156, %166
  %177 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 4
  %178 = load i32, ptr %177, align 8, !tbaa !165
  %179 = icmp sgt i32 %178, 65535
  %180 = lshr i32 %178, 16
  %181 = select i1 %179, i32 32, i32 0
  %182 = select i1 %179, i32 %180, i32 %178
  %183 = icmp sgt i32 %182, 255
  %184 = or disjoint i32 %181, 16
  %185 = lshr i32 %182, 8
  %186 = select i1 %183, i32 %184, i32 %181
  %187 = select i1 %183, i32 %185, i32 %182
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %188
  %190 = load i8, ptr %189, align 1, !tbaa !137
  %191 = zext i8 %190 to i32
  %192 = add nuw nsw i32 %186, %191
  %193 = lshr i32 %192, 1
  %194 = load i64, ptr %43, align 8, !tbaa !138
  %195 = zext nneg i32 %193 to i64
  %196 = shl i64 %194, %195
  store i64 %196, ptr %43, align 8, !tbaa !138
  %197 = load i32, ptr %47, align 8, !tbaa !136
  %198 = sub nsw i32 %197, %193
  store i32 %198, ptr %47, align 8, !tbaa !136
  %199 = icmp slt i32 %198, 33
  br i1 %199, label %200, label %210

200:                                              ; preds = %176
  %201 = zext nneg i32 %198 to i64
  %202 = shl i64 %196, %201
  %203 = tail call i64 @llvm.bswap.i64(i64 %202)
  %204 = trunc i64 %203 to i32
  %205 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %204, ptr %205, align 4, !tbaa !137
  %206 = load i32, ptr %47, align 8, !tbaa !136
  %207 = add nsw i32 %206, 32
  store i32 %207, ptr %47, align 8, !tbaa !136
  %208 = load ptr, ptr %3, align 8, !tbaa !133
  %209 = getelementptr inbounds i8, ptr %208, i64 4
  store ptr %209, ptr %3, align 8, !tbaa !133
  br label %210

210:                                              ; preds = %200, %176
  %211 = add nuw nsw i32 %193, 1
  %212 = load i64, ptr %43, align 8, !tbaa !138
  %213 = zext nneg i32 %211 to i64
  %214 = shl i64 %212, %213
  %215 = zext i32 %178 to i64
  %216 = or i64 %214, %215
  store i64 %216, ptr %43, align 8, !tbaa !138
  %217 = load i32, ptr %47, align 8, !tbaa !136
  %218 = sub nsw i32 %217, %211
  store i32 %218, ptr %47, align 8, !tbaa !136
  %219 = icmp slt i32 %218, 33
  br i1 %219, label %220, label %230

220:                                              ; preds = %210
  %221 = zext nneg i32 %218 to i64
  %222 = shl i64 %216, %221
  %223 = tail call i64 @llvm.bswap.i64(i64 %222)
  %224 = trunc i64 %223 to i32
  %225 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %224, ptr %225, align 4, !tbaa !137
  %226 = load i32, ptr %47, align 8, !tbaa !136
  %227 = add nsw i32 %226, 32
  store i32 %227, ptr %47, align 8, !tbaa !136
  %228 = load ptr, ptr %3, align 8, !tbaa !133
  %229 = getelementptr inbounds i8, ptr %228, i64 4
  store ptr %229, ptr %3, align 8, !tbaa !133
  br label %230

230:                                              ; preds = %210, %220
  %231 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 5
  %232 = load i32, ptr %231, align 4, !tbaa !166
  %233 = icmp sgt i32 %232, 65535
  %234 = lshr i32 %232, 16
  %235 = select i1 %233, i32 32, i32 0
  %236 = select i1 %233, i32 %234, i32 %232
  %237 = icmp sgt i32 %236, 255
  %238 = or disjoint i32 %235, 16
  %239 = lshr i32 %236, 8
  %240 = select i1 %237, i32 %238, i32 %235
  %241 = select i1 %237, i32 %239, i32 %236
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %242
  %244 = load i8, ptr %243, align 1, !tbaa !137
  %245 = zext i8 %244 to i32
  %246 = add nuw nsw i32 %240, %245
  %247 = lshr i32 %246, 1
  %248 = load i64, ptr %43, align 8, !tbaa !138
  %249 = zext nneg i32 %247 to i64
  %250 = shl i64 %248, %249
  store i64 %250, ptr %43, align 8, !tbaa !138
  %251 = load i32, ptr %47, align 8, !tbaa !136
  %252 = sub nsw i32 %251, %247
  store i32 %252, ptr %47, align 8, !tbaa !136
  %253 = icmp slt i32 %252, 33
  br i1 %253, label %254, label %264

254:                                              ; preds = %230
  %255 = zext nneg i32 %252 to i64
  %256 = shl i64 %250, %255
  %257 = tail call i64 @llvm.bswap.i64(i64 %256)
  %258 = trunc i64 %257 to i32
  %259 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %258, ptr %259, align 4, !tbaa !137
  %260 = load i32, ptr %47, align 8, !tbaa !136
  %261 = add nsw i32 %260, 32
  store i32 %261, ptr %47, align 8, !tbaa !136
  %262 = load ptr, ptr %3, align 8, !tbaa !133
  %263 = getelementptr inbounds i8, ptr %262, i64 4
  store ptr %263, ptr %3, align 8, !tbaa !133
  br label %264

264:                                              ; preds = %254, %230
  %265 = add nuw nsw i32 %247, 1
  %266 = load i64, ptr %43, align 8, !tbaa !138
  %267 = zext nneg i32 %265 to i64
  %268 = shl i64 %266, %267
  %269 = zext i32 %232 to i64
  %270 = or i64 %268, %269
  store i64 %270, ptr %43, align 8, !tbaa !138
  %271 = load i32, ptr %47, align 8, !tbaa !136
  %272 = sub nsw i32 %271, %265
  store i32 %272, ptr %47, align 8, !tbaa !136
  %273 = icmp slt i32 %272, 33
  br i1 %273, label %274, label %284

274:                                              ; preds = %264
  %275 = zext nneg i32 %272 to i64
  %276 = shl i64 %270, %275
  %277 = tail call i64 @llvm.bswap.i64(i64 %276)
  %278 = trunc i64 %277 to i32
  %279 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %278, ptr %279, align 4, !tbaa !137
  %280 = load i32, ptr %47, align 8, !tbaa !136
  %281 = add nsw i32 %280, 32
  store i32 %281, ptr %47, align 8, !tbaa !136
  %282 = load ptr, ptr %3, align 8, !tbaa !133
  %283 = getelementptr inbounds i8, ptr %282, i64 4
  store ptr %283, ptr %3, align 8, !tbaa !133
  br label %284

284:                                              ; preds = %264, %274
  %285 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 6
  %286 = load i32, ptr %285, align 8, !tbaa !167
  %287 = icmp sgt i32 %286, 65535
  %288 = lshr i32 %286, 16
  %289 = select i1 %287, i32 32, i32 0
  %290 = select i1 %287, i32 %288, i32 %286
  %291 = icmp sgt i32 %290, 255
  %292 = or disjoint i32 %289, 16
  %293 = lshr i32 %290, 8
  %294 = select i1 %291, i32 %292, i32 %289
  %295 = select i1 %291, i32 %293, i32 %290
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %296
  %298 = load i8, ptr %297, align 1, !tbaa !137
  %299 = zext i8 %298 to i32
  %300 = add nuw nsw i32 %294, %299
  %301 = lshr i32 %300, 1
  %302 = load i64, ptr %43, align 8, !tbaa !138
  %303 = zext nneg i32 %301 to i64
  %304 = shl i64 %302, %303
  store i64 %304, ptr %43, align 8, !tbaa !138
  %305 = load i32, ptr %47, align 8, !tbaa !136
  %306 = sub nsw i32 %305, %301
  store i32 %306, ptr %47, align 8, !tbaa !136
  %307 = icmp slt i32 %306, 33
  br i1 %307, label %308, label %318

308:                                              ; preds = %284
  %309 = zext nneg i32 %306 to i64
  %310 = shl i64 %304, %309
  %311 = tail call i64 @llvm.bswap.i64(i64 %310)
  %312 = trunc i64 %311 to i32
  %313 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %312, ptr %313, align 4, !tbaa !137
  %314 = load i32, ptr %47, align 8, !tbaa !136
  %315 = add nsw i32 %314, 32
  store i32 %315, ptr %47, align 8, !tbaa !136
  %316 = load ptr, ptr %3, align 8, !tbaa !133
  %317 = getelementptr inbounds i8, ptr %316, i64 4
  store ptr %317, ptr %3, align 8, !tbaa !133
  br label %318

318:                                              ; preds = %308, %284
  %319 = add nuw nsw i32 %301, 1
  %320 = load i64, ptr %43, align 8, !tbaa !138
  %321 = zext nneg i32 %319 to i64
  %322 = shl i64 %320, %321
  %323 = zext i32 %286 to i64
  %324 = or i64 %322, %323
  store i64 %324, ptr %43, align 8, !tbaa !138
  %325 = load i32, ptr %47, align 8, !tbaa !136
  %326 = sub nsw i32 %325, %319
  store i32 %326, ptr %47, align 8, !tbaa !136
  %327 = icmp slt i32 %326, 33
  br i1 %327, label %328, label %338

328:                                              ; preds = %318
  %329 = zext nneg i32 %326 to i64
  %330 = shl i64 %324, %329
  %331 = tail call i64 @llvm.bswap.i64(i64 %330)
  %332 = trunc i64 %331 to i32
  %333 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %332, ptr %333, align 4, !tbaa !137
  %334 = load i32, ptr %47, align 8, !tbaa !136
  %335 = add nsw i32 %334, 32
  store i32 %335, ptr %47, align 8, !tbaa !136
  %336 = load ptr, ptr %3, align 8, !tbaa !133
  %337 = getelementptr inbounds i8, ptr %336, i64 4
  store ptr %337, ptr %3, align 8, !tbaa !133
  br label %338

338:                                              ; preds = %318, %328
  %339 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 7
  %340 = load i32, ptr %339, align 4, !tbaa !168
  %341 = load i64, ptr %43, align 8, !tbaa !138
  %342 = shl i64 %341, 1
  %343 = zext i32 %340 to i64
  %344 = or i64 %342, %343
  store i64 %344, ptr %43, align 8, !tbaa !138
  %345 = load i32, ptr %47, align 8, !tbaa !136
  %346 = add nsw i32 %345, -1
  store i32 %346, ptr %47, align 8, !tbaa !136
  %347 = icmp slt i32 %345, 34
  br i1 %347, label %348, label %358

348:                                              ; preds = %338
  %349 = zext nneg i32 %346 to i64
  %350 = shl i64 %344, %349
  %351 = tail call i64 @llvm.bswap.i64(i64 %350)
  %352 = trunc i64 %351 to i32
  %353 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %352, ptr %353, align 4, !tbaa !137
  %354 = load i32, ptr %47, align 8, !tbaa !136
  %355 = add nsw i32 %354, 32
  store i32 %355, ptr %47, align 8, !tbaa !136
  %356 = load ptr, ptr %3, align 8, !tbaa !133
  %357 = getelementptr inbounds i8, ptr %356, i64 4
  store ptr %357, ptr %3, align 8, !tbaa !133
  br label %358

358:                                              ; preds = %338, %348
  %359 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 8
  %360 = load i32, ptr %359, align 8, !tbaa !170
  %361 = load i64, ptr %43, align 8, !tbaa !138
  %362 = shl i64 %361, 2
  %363 = zext i32 %360 to i64
  %364 = or i64 %362, %363
  store i64 %364, ptr %43, align 8, !tbaa !138
  %365 = load i32, ptr %47, align 8, !tbaa !136
  %366 = add nsw i32 %365, -2
  store i32 %366, ptr %47, align 8, !tbaa !136
  %367 = icmp slt i32 %365, 35
  br i1 %367, label %368, label %378

368:                                              ; preds = %358
  %369 = zext nneg i32 %366 to i64
  %370 = shl i64 %364, %369
  %371 = tail call i64 @llvm.bswap.i64(i64 %370)
  %372 = trunc i64 %371 to i32
  %373 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %372, ptr %373, align 4, !tbaa !137
  %374 = load i32, ptr %47, align 8, !tbaa !136
  %375 = add nsw i32 %374, 32
  store i32 %375, ptr %47, align 8, !tbaa !136
  %376 = load ptr, ptr %3, align 8, !tbaa !133
  %377 = getelementptr inbounds i8, ptr %376, i64 4
  store ptr %377, ptr %3, align 8, !tbaa !133
  br label %378

378:                                              ; preds = %358, %368
  %379 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 9
  %380 = load i32, ptr %379, align 4, !tbaa !171
  %381 = shl i32 %380, 1
  %382 = add i32 %381, -52
  %383 = sub i32 53, %381
  %384 = icmp sgt i32 %380, 26
  %385 = select i1 %384, i32 %382, i32 %383
  %386 = icmp sgt i32 %385, 255
  %387 = lshr i32 %385, 8
  %388 = select i1 %386, i32 16, i32 0
  %389 = select i1 %386, i32 %387, i32 %385
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %390
  %392 = load i8, ptr %391, align 1, !tbaa !137
  %393 = zext i8 %392 to i32
  %394 = add nuw nsw i32 %388, %393
  %395 = load i64, ptr %43, align 8, !tbaa !138
  %396 = zext nneg i32 %394 to i64
  %397 = shl i64 %395, %396
  %398 = zext i32 %385 to i64
  %399 = or i64 %397, %398
  store i64 %399, ptr %43, align 8, !tbaa !138
  %400 = load i32, ptr %47, align 8, !tbaa !136
  %401 = sub nsw i32 %400, %394
  store i32 %401, ptr %47, align 8, !tbaa !136
  %402 = icmp slt i32 %401, 33
  br i1 %402, label %403, label %413

403:                                              ; preds = %378
  %404 = zext nneg i32 %401 to i64
  %405 = shl i64 %399, %404
  %406 = tail call i64 @llvm.bswap.i64(i64 %405)
  %407 = trunc i64 %406 to i32
  %408 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %407, ptr %408, align 4, !tbaa !137
  %409 = load i32, ptr %47, align 8, !tbaa !136
  %410 = add nsw i32 %409, 32
  store i32 %410, ptr %47, align 8, !tbaa !136
  %411 = load ptr, ptr %3, align 8, !tbaa !133
  %412 = getelementptr inbounds i8, ptr %411, i64 4
  store ptr %412, ptr %3, align 8, !tbaa !133
  br label %413

413:                                              ; preds = %378, %403
  %414 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 10
  %415 = load i32, ptr %414, align 8, !tbaa !172
  %416 = shl i32 %415, 1
  %417 = add i32 %416, -52
  %418 = sub i32 53, %416
  %419 = icmp sgt i32 %415, 26
  %420 = select i1 %419, i32 %417, i32 %418
  %421 = icmp sgt i32 %420, 255
  %422 = lshr i32 %420, 8
  %423 = select i1 %421, i32 16, i32 0
  %424 = select i1 %421, i32 %422, i32 %420
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %425
  %427 = load i8, ptr %426, align 1, !tbaa !137
  %428 = zext i8 %427 to i32
  %429 = add nuw nsw i32 %423, %428
  %430 = load i64, ptr %43, align 8, !tbaa !138
  %431 = zext nneg i32 %429 to i64
  %432 = shl i64 %430, %431
  %433 = zext i32 %420 to i64
  %434 = or i64 %432, %433
  store i64 %434, ptr %43, align 8, !tbaa !138
  %435 = load i32, ptr %47, align 8, !tbaa !136
  %436 = sub nsw i32 %435, %429
  store i32 %436, ptr %47, align 8, !tbaa !136
  %437 = icmp slt i32 %436, 33
  br i1 %437, label %438, label %448

438:                                              ; preds = %413
  %439 = zext nneg i32 %436 to i64
  %440 = shl i64 %434, %439
  %441 = tail call i64 @llvm.bswap.i64(i64 %440)
  %442 = trunc i64 %441 to i32
  %443 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %442, ptr %443, align 4, !tbaa !137
  %444 = load i32, ptr %47, align 8, !tbaa !136
  %445 = add nsw i32 %444, 32
  store i32 %445, ptr %47, align 8, !tbaa !136
  %446 = load ptr, ptr %3, align 8, !tbaa !133
  %447 = getelementptr inbounds i8, ptr %446, i64 4
  store ptr %447, ptr %3, align 8, !tbaa !133
  br label %448

448:                                              ; preds = %413, %438
  %449 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 11
  %450 = load i32, ptr %449, align 4, !tbaa !174
  %451 = shl nsw i32 %450, 1
  %452 = sub nsw i32 1, %451
  %453 = icmp sgt i32 %450, 0
  %454 = select i1 %453, i32 %451, i32 %452
  %455 = icmp sgt i32 %454, 255
  %456 = lshr i32 %454, 8
  %457 = select i1 %455, i32 16, i32 0
  %458 = select i1 %455, i32 %456, i32 %454
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %459
  %461 = load i8, ptr %460, align 1, !tbaa !137
  %462 = zext i8 %461 to i32
  %463 = add nuw nsw i32 %457, %462
  %464 = load i64, ptr %43, align 8, !tbaa !138
  %465 = zext nneg i32 %463 to i64
  %466 = shl i64 %464, %465
  %467 = zext i32 %454 to i64
  %468 = or i64 %466, %467
  store i64 %468, ptr %43, align 8, !tbaa !138
  %469 = load i32, ptr %47, align 8, !tbaa !136
  %470 = sub nsw i32 %469, %463
  store i32 %470, ptr %47, align 8, !tbaa !136
  %471 = icmp slt i32 %470, 33
  br i1 %471, label %472, label %482

472:                                              ; preds = %448
  %473 = zext nneg i32 %470 to i64
  %474 = shl i64 %468, %473
  %475 = tail call i64 @llvm.bswap.i64(i64 %474)
  %476 = trunc i64 %475 to i32
  %477 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %476, ptr %477, align 4, !tbaa !137
  %478 = load i32, ptr %47, align 8, !tbaa !136
  %479 = add nsw i32 %478, 32
  store i32 %479, ptr %47, align 8, !tbaa !136
  %480 = load ptr, ptr %3, align 8, !tbaa !133
  %481 = getelementptr inbounds i8, ptr %480, i64 4
  store ptr %481, ptr %3, align 8, !tbaa !133
  br label %482

482:                                              ; preds = %448, %472
  %483 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 12
  %484 = load i32, ptr %483, align 8, !tbaa !175
  %485 = load i64, ptr %43, align 8, !tbaa !138
  %486 = shl i64 %485, 1
  %487 = zext i32 %484 to i64
  %488 = or i64 %486, %487
  store i64 %488, ptr %43, align 8, !tbaa !138
  %489 = load i32, ptr %47, align 8, !tbaa !136
  %490 = add nsw i32 %489, -1
  store i32 %490, ptr %47, align 8, !tbaa !136
  %491 = icmp slt i32 %489, 34
  br i1 %491, label %492, label %502

492:                                              ; preds = %482
  %493 = zext nneg i32 %490 to i64
  %494 = shl i64 %488, %493
  %495 = tail call i64 @llvm.bswap.i64(i64 %494)
  %496 = trunc i64 %495 to i32
  %497 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %496, ptr %497, align 4, !tbaa !137
  %498 = load i32, ptr %47, align 8, !tbaa !136
  %499 = add nsw i32 %498, 32
  store i32 %499, ptr %47, align 8, !tbaa !136
  %500 = load ptr, ptr %3, align 8, !tbaa !133
  %501 = getelementptr inbounds i8, ptr %500, i64 4
  store ptr %501, ptr %3, align 8, !tbaa !133
  br label %502

502:                                              ; preds = %482, %492
  %503 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 13
  %504 = load i32, ptr %503, align 4, !tbaa !177
  %505 = load i64, ptr %43, align 8, !tbaa !138
  %506 = shl i64 %505, 1
  %507 = zext i32 %504 to i64
  %508 = or i64 %506, %507
  store i64 %508, ptr %43, align 8, !tbaa !138
  %509 = load i32, ptr %47, align 8, !tbaa !136
  %510 = add nsw i32 %509, -1
  store i32 %510, ptr %47, align 8, !tbaa !136
  %511 = icmp slt i32 %509, 34
  br i1 %511, label %512, label %522

512:                                              ; preds = %502
  %513 = zext nneg i32 %510 to i64
  %514 = shl i64 %508, %513
  %515 = tail call i64 @llvm.bswap.i64(i64 %514)
  %516 = trunc i64 %515 to i32
  %517 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %516, ptr %517, align 4, !tbaa !137
  %518 = load i32, ptr %47, align 8, !tbaa !136
  %519 = add nsw i32 %518, 32
  store i32 %519, ptr %47, align 8, !tbaa !136
  %520 = load ptr, ptr %3, align 8, !tbaa !133
  %521 = getelementptr inbounds i8, ptr %520, i64 4
  store ptr %521, ptr %3, align 8, !tbaa !133
  br label %522

522:                                              ; preds = %502, %512
  %523 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 14
  %524 = load i32, ptr %523, align 8, !tbaa !178
  %525 = load i64, ptr %43, align 8, !tbaa !138
  %526 = shl i64 %525, 1
  %527 = zext i32 %524 to i64
  %528 = or i64 %526, %527
  store i64 %528, ptr %43, align 8, !tbaa !138
  %529 = load i32, ptr %47, align 8, !tbaa !136
  %530 = add nsw i32 %529, -1
  store i32 %530, ptr %47, align 8, !tbaa !136
  %531 = icmp slt i32 %529, 34
  br i1 %531, label %532, label %542

532:                                              ; preds = %522
  %533 = zext nneg i32 %530 to i64
  %534 = shl i64 %528, %533
  %535 = tail call i64 @llvm.bswap.i64(i64 %534)
  %536 = trunc i64 %535 to i32
  %537 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %536, ptr %537, align 4, !tbaa !137
  %538 = load i32, ptr %47, align 8, !tbaa !136
  %539 = add nsw i32 %538, 32
  store i32 %539, ptr %47, align 8, !tbaa !136
  %540 = load ptr, ptr %3, align 8, !tbaa !133
  %541 = getelementptr inbounds i8, ptr %540, i64 4
  store ptr %541, ptr %3, align 8, !tbaa !133
  br label %542

542:                                              ; preds = %522, %532
  %543 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 15
  %544 = load i32, ptr %543, align 4, !tbaa !179
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %546, label %550

546:                                              ; preds = %542
  %547 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 16
  %548 = load i32, ptr %547, align 8, !tbaa !180
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %661, label %550

550:                                              ; preds = %546, %542
  %551 = load i64, ptr %43, align 8, !tbaa !138
  %552 = shl i64 %551, 1
  %553 = zext i32 %544 to i64
  %554 = or i64 %552, %553
  store i64 %554, ptr %43, align 8, !tbaa !138
  %555 = load i32, ptr %47, align 8, !tbaa !136
  %556 = add nsw i32 %555, -1
  store i32 %556, ptr %47, align 8, !tbaa !136
  %557 = icmp slt i32 %555, 34
  br i1 %557, label %558, label %568

558:                                              ; preds = %550
  %559 = zext nneg i32 %556 to i64
  %560 = shl i64 %554, %559
  %561 = tail call i64 @llvm.bswap.i64(i64 %560)
  %562 = trunc i64 %561 to i32
  %563 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %562, ptr %563, align 4, !tbaa !137
  %564 = load i32, ptr %47, align 8, !tbaa !136
  %565 = add nsw i32 %564, 32
  store i32 %565, ptr %47, align 8, !tbaa !136
  %566 = load ptr, ptr %3, align 8, !tbaa !133
  %567 = getelementptr inbounds i8, ptr %566, i64 4
  store ptr %567, ptr %3, align 8, !tbaa !133
  br label %568

568:                                              ; preds = %550, %558
  %569 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 16
  %570 = load i32, ptr %569, align 8, !tbaa !180
  %571 = icmp ne i32 %570, 0
  %572 = load i64, ptr %43, align 8, !tbaa !138
  %573 = shl i64 %572, 1
  %574 = zext i1 %571 to i64
  %575 = or disjoint i64 %573, %574
  store i64 %575, ptr %43, align 8, !tbaa !138
  %576 = load i32, ptr %47, align 8, !tbaa !136
  %577 = add nsw i32 %576, -1
  store i32 %577, ptr %47, align 8, !tbaa !136
  %578 = icmp slt i32 %576, 34
  br i1 %578, label %579, label %589

579:                                              ; preds = %568
  %580 = zext nneg i32 %577 to i64
  %581 = shl i64 %575, %580
  %582 = tail call i64 @llvm.bswap.i64(i64 %581)
  %583 = trunc i64 %582 to i32
  %584 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %583, ptr %584, align 4, !tbaa !137
  %585 = load i32, ptr %47, align 8, !tbaa !136
  %586 = add nsw i32 %585, 32
  store i32 %586, ptr %47, align 8, !tbaa !136
  %587 = load ptr, ptr %3, align 8, !tbaa !133
  %588 = getelementptr inbounds i8, ptr %587, i64 4
  store ptr %588, ptr %3, align 8, !tbaa !133
  br label %589

589:                                              ; preds = %568, %579
  %590 = load i32, ptr %569, align 8, !tbaa !180
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %628, label %592

592:                                              ; preds = %589
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0)
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2)
  %593 = load i64, ptr %43, align 8, !tbaa !138
  %594 = shl i64 %593, 1
  store i64 %594, ptr %43, align 8, !tbaa !138
  %595 = load i32, ptr %47, align 8, !tbaa !136
  %596 = add nsw i32 %595, -1
  store i32 %596, ptr %47, align 8, !tbaa !136
  %597 = icmp slt i32 %595, 34
  br i1 %597, label %598, label %608

598:                                              ; preds = %592
  %599 = zext nneg i32 %596 to i64
  %600 = shl i64 %594, %599
  %601 = tail call i64 @llvm.bswap.i64(i64 %600)
  %602 = trunc i64 %601 to i32
  %603 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %602, ptr %603, align 4, !tbaa !137
  %604 = load i32, ptr %47, align 8, !tbaa !136
  %605 = add nsw i32 %604, 32
  store i32 %605, ptr %47, align 8, !tbaa !136
  %606 = load ptr, ptr %3, align 8, !tbaa !133
  %607 = getelementptr inbounds i8, ptr %606, i64 4
  store ptr %607, ptr %3, align 8, !tbaa !133
  br label %608

608:                                              ; preds = %592, %598
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1)
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3)
  %609 = load i64, ptr %43, align 8, !tbaa !138
  %610 = shl i64 %609, 1
  store i64 %610, ptr %43, align 8, !tbaa !138
  %611 = load i32, ptr %47, align 8, !tbaa !136
  %612 = add nsw i32 %611, -1
  store i32 %612, ptr %47, align 8, !tbaa !136
  %613 = icmp slt i32 %611, 34
  br i1 %613, label %614, label %624

614:                                              ; preds = %608
  %615 = zext nneg i32 %612 to i64
  %616 = shl i64 %610, %615
  %617 = tail call i64 @llvm.bswap.i64(i64 %616)
  %618 = trunc i64 %617 to i32
  %619 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %618, ptr %619, align 4, !tbaa !137
  %620 = load i32, ptr %47, align 8, !tbaa !136
  %621 = add nsw i32 %620, 32
  store i32 %621, ptr %47, align 8, !tbaa !136
  %622 = load ptr, ptr %3, align 8, !tbaa !133
  %623 = getelementptr inbounds i8, ptr %622, i64 4
  store ptr %623, ptr %3, align 8, !tbaa !133
  br label %624

624:                                              ; preds = %608, %614
  %625 = load i32, ptr %543, align 4, !tbaa !179
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %628, label %627

627:                                              ; preds = %624
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4)
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5)
  br label %628

628:                                              ; preds = %624, %627, %589
  %629 = load i32, ptr %449, align 4, !tbaa !174
  %630 = shl nsw i32 %629, 1
  %631 = sub nsw i32 1, %630
  %632 = icmp sgt i32 %629, 0
  %633 = select i1 %632, i32 %630, i32 %631
  %634 = icmp sgt i32 %633, 255
  %635 = lshr i32 %633, 8
  %636 = select i1 %634, i32 16, i32 0
  %637 = select i1 %634, i32 %635, i32 %633
  %638 = sext i32 %637 to i64
  %639 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %638
  %640 = load i8, ptr %639, align 1, !tbaa !137
  %641 = zext i8 %640 to i32
  %642 = add nuw nsw i32 %636, %641
  %643 = load i64, ptr %43, align 8, !tbaa !138
  %644 = zext nneg i32 %642 to i64
  %645 = shl i64 %643, %644
  %646 = zext i32 %633 to i64
  %647 = or i64 %645, %646
  store i64 %647, ptr %43, align 8, !tbaa !138
  %648 = load i32, ptr %47, align 8, !tbaa !136
  %649 = sub nsw i32 %648, %642
  store i32 %649, ptr %47, align 8, !tbaa !136
  %650 = icmp slt i32 %649, 33
  br i1 %650, label %651, label %661

651:                                              ; preds = %628
  %652 = zext nneg i32 %649 to i64
  %653 = shl i64 %647, %652
  %654 = tail call i64 @llvm.bswap.i64(i64 %653)
  %655 = trunc i64 %654 to i32
  %656 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %655, ptr %656, align 4, !tbaa !137
  %657 = load i32, ptr %47, align 8, !tbaa !136
  %658 = add nsw i32 %657, 32
  store i32 %658, ptr %47, align 8, !tbaa !136
  %659 = load ptr, ptr %3, align 8, !tbaa !133
  %660 = getelementptr inbounds i8, ptr %659, i64 4
  store ptr %660, ptr %3, align 8, !tbaa !133
  br label %661

661:                                              ; preds = %651, %628, %546
  %662 = load i64, ptr %43, align 8, !tbaa !138
  %663 = shl i64 %662, 1
  %664 = or disjoint i64 %663, 1
  store i64 %664, ptr %43, align 8, !tbaa !138
  %665 = load i32, ptr %47, align 8, !tbaa !136
  %666 = add nsw i32 %665, -1
  store i32 %666, ptr %47, align 8, !tbaa !136
  %667 = icmp eq i32 %666, 32
  br i1 %667, label %668, label %674

668:                                              ; preds = %661
  %669 = trunc i64 %664 to i32
  %670 = tail call i32 @llvm.bswap.i32(i32 %669)
  %671 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %670, ptr %671, align 4, !tbaa !137
  %672 = load ptr, ptr %3, align 8, !tbaa !133
  %673 = getelementptr inbounds i8, ptr %672, i64 4
  store ptr %673, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %47, align 8, !tbaa !136
  br label %674

674:                                              ; preds = %668, %661
  %675 = load i32, ptr %47, align 8, !tbaa !136
  %676 = and i32 %675, 7
  %677 = load i64, ptr %43, align 8, !tbaa !138
  %678 = zext nneg i32 %676 to i64
  %679 = shl i64 %677, %678
  store i64 %679, ptr %43, align 8, !tbaa !138
  %680 = and i32 %675, -8
  store i32 %680, ptr %47, align 8, !tbaa !136
  %681 = icmp slt i32 %680, 33
  br i1 %681, label %682, label %692

682:                                              ; preds = %674
  %683 = zext nneg i32 %680 to i64
  %684 = tail call i64 @llvm.bswap.i64(i64 %679)
  %685 = lshr i64 %684, %683
  %686 = trunc i64 %685 to i32
  %687 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %686, ptr %687, align 4, !tbaa !137
  %688 = load i32, ptr %47, align 8, !tbaa !136
  %689 = add nsw i32 %688, 32
  store i32 %689, ptr %47, align 8, !tbaa !136
  %690 = load ptr, ptr %3, align 8, !tbaa !133
  %691 = getelementptr inbounds i8, ptr %690, i64 4
  store ptr %691, ptr %3, align 8, !tbaa !133
  br label %692

692:                                              ; preds = %674, %682
  %693 = load i64, ptr %43, align 8, !tbaa !138
  %694 = load i32, ptr %47, align 8, !tbaa !136
  %695 = and i32 %694, 31
  %696 = zext nneg i32 %695 to i64
  %697 = shl i64 %693, %696
  %698 = trunc i64 %697 to i32
  %699 = tail call i32 @llvm.bswap.i32(i32 %698)
  %700 = load ptr, ptr %3, align 8, !tbaa !133
  store i32 %699, ptr %700, align 4, !tbaa !137
  %701 = load i32, ptr %47, align 8, !tbaa !136
  %702 = sdiv i32 %701, -8
  %703 = load ptr, ptr %3, align 8, !tbaa !133
  %704 = sext i32 %702 to i64
  %705 = getelementptr i8, ptr %703, i64 %704
  %706 = getelementptr i8, ptr %705, i64 8
  store ptr %706, ptr %3, align 8, !tbaa !133
  store i32 64, ptr %47, align 8, !tbaa !136
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @scaling_list_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #4 {
  %4 = icmp slt i32 %2, 4
  %5 = select i1 %4, i32 16, i32 64
  %6 = select i1 %4, ptr @x264_zigzag_scan4, ptr @x264_zigzag_scan8
  %7 = zext nneg i32 %2 to i64
  %8 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !181
  switch i32 %2, label %14 [
    i32 2, label %10
    i32 3, label %12
  ]

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17, i64 1
  br label %16

14:                                               ; preds = %3
  %15 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %7
  br label %16

16:                                               ; preds = %12, %14, %10
  %17 = phi ptr [ %11, %10 ], [ %13, %12 ], [ %15, %14 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !181
  %19 = zext nneg i32 %5 to i64
  %20 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %18, i64 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !138
  %25 = shl i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !138
  %26 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %27 = load i32, ptr %26, align 8, !tbaa !136
  %28 = add nsw i32 %27, -1
  store i32 %28, ptr %26, align 8, !tbaa !136
  %29 = icmp slt i32 %27, 34
  br i1 %29, label %210, label %224

30:                                               ; preds = %16
  %31 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %7
  %32 = load ptr, ptr %31, align 8, !tbaa !181
  %33 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %32, i64 %19)
  %34 = icmp eq i32 %33, 0
  %35 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !138
  %37 = shl i64 %36, 1
  %38 = or disjoint i64 %37, 1
  store i64 %38, ptr %35, align 8, !tbaa !138
  %39 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %40 = load i32, ptr %39, align 8, !tbaa !136
  %41 = add nsw i32 %40, -1
  store i32 %41, ptr %39, align 8, !tbaa !136
  %42 = icmp slt i32 %40, 34
  br i1 %34, label %43, label %62

43:                                               ; preds = %30
  br i1 %42, label %44, label %55

44:                                               ; preds = %43
  %45 = zext nneg i32 %41 to i64
  %46 = shl i64 %38, %45
  %47 = tail call i64 @llvm.bswap.i64(i64 %46)
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !133
  store i32 %48, ptr %50, align 4, !tbaa !137
  %51 = load i32, ptr %39, align 8, !tbaa !136
  %52 = add nsw i32 %51, 32
  store i32 %52, ptr %39, align 8, !tbaa !136
  %53 = load ptr, ptr %49, align 8, !tbaa !133
  %54 = getelementptr inbounds i8, ptr %53, i64 4
  store ptr %54, ptr %49, align 8, !tbaa !133
  br label %55

55:                                               ; preds = %43, %44
  %56 = load i64, ptr %35, align 8, !tbaa !138
  %57 = shl i64 %56, 9
  %58 = or disjoint i64 %57, 17
  store i64 %58, ptr %35, align 8, !tbaa !138
  %59 = load i32, ptr %39, align 8, !tbaa !136
  %60 = add nsw i32 %59, -9
  store i32 %60, ptr %39, align 8, !tbaa !136
  %61 = icmp slt i32 %59, 42
  br i1 %61, label %210, label %224

62:                                               ; preds = %30
  br i1 %42, label %63, label %74

63:                                               ; preds = %62
  %64 = zext nneg i32 %41 to i64
  %65 = shl i64 %38, %64
  %66 = tail call i64 @llvm.bswap.i64(i64 %65)
  %67 = trunc i64 %66 to i32
  %68 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !133
  store i32 %67, ptr %69, align 4, !tbaa !137
  %70 = load i32, ptr %39, align 8, !tbaa !136
  %71 = add nsw i32 %70, 32
  store i32 %71, ptr %39, align 8, !tbaa !136
  %72 = load ptr, ptr %68, align 8, !tbaa !133
  %73 = getelementptr inbounds i8, ptr %72, i64 4
  store ptr %73, ptr %68, align 8, !tbaa !133
  br label %74

74:                                               ; preds = %62, %63
  br label %75

75:                                               ; preds = %74, %90
  %76 = phi i32 [ %91, %90 ], [ %5, %74 ]
  %77 = zext nneg i32 %76 to i64
  %78 = getelementptr i8, ptr %6, i64 %77
  %79 = getelementptr i8, ptr %78, i64 -1
  %80 = load i8, ptr %79, align 1, !tbaa !137
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i8, ptr %9, i64 %81
  %83 = load i8, ptr %82, align 1, !tbaa !137
  %84 = getelementptr i8, ptr %78, i64 -2
  %85 = load i8, ptr %84, align 1, !tbaa !137
  %86 = zext i8 %85 to i64
  %87 = getelementptr inbounds i8, ptr %9, i64 %86
  %88 = load i8, ptr %87, align 1, !tbaa !137
  %89 = icmp eq i8 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = add nsw i32 %76, -1
  %92 = icmp sgt i32 %76, 2
  br i1 %92, label %75, label %93, !llvm.loop !188

93:                                               ; preds = %75, %90
  %94 = phi i32 [ %76, %75 ], [ 1, %90 ]
  %95 = icmp slt i32 %94, %5
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = sub nsw i32 %5, %94
  %98 = sext i32 %94 to i64
  %99 = getelementptr inbounds i8, ptr %6, i64 %98
  %100 = load i8, ptr %99, align 1, !tbaa !137
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, ptr %9, i64 %101
  %103 = load i8, ptr %102, align 1, !tbaa !137
  %104 = sub i8 0, %103
  %105 = sext i8 %104 to i32
  %106 = shl nsw i32 %105, 1
  %107 = sub nsw i32 1, %106
  %108 = icmp sgt i8 %104, 0
  %109 = select i1 %108, i32 %106, i32 %107
  %110 = icmp slt i32 %109, 256
  br i1 %110, label %111, label %116

111:                                              ; preds = %96
  %112 = sext i32 %109 to i64
  %113 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %112
  %114 = load i8, ptr %113, align 1, !tbaa !137
  %115 = zext i8 %114 to i32
  br label %116

116:                                              ; preds = %96, %111
  %117 = phi i32 [ %115, %111 ], [ 17, %96 ]
  %118 = icmp slt i32 %97, %117
  %119 = select i1 %118, i32 %5, i32 %94
  br label %120

120:                                              ; preds = %116, %93
  %121 = phi i32 [ %94, %93 ], [ %119, %116 ]
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %125 = zext nneg i32 %121 to i64
  br label %128

126:                                              ; preds = %177, %120
  %127 = icmp slt i32 %121, %5
  br i1 %127, label %180, label %224

128:                                              ; preds = %123, %177
  %129 = phi i64 [ 0, %123 ], [ %178, %177 ]
  %130 = getelementptr inbounds i8, ptr %6, i64 %129
  %131 = load i8, ptr %130, align 1, !tbaa !137
  %132 = zext i8 %131 to i64
  %133 = getelementptr inbounds i8, ptr %9, i64 %132
  %134 = load i8, ptr %133, align 1, !tbaa !137
  %135 = icmp eq i64 %129, 0
  br i1 %135, label %142, label %136

136:                                              ; preds = %128
  %137 = getelementptr i8, ptr %130, i64 -1
  %138 = load i8, ptr %137, align 1, !tbaa !137
  %139 = zext i8 %138 to i64
  %140 = getelementptr inbounds i8, ptr %9, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !137
  br label %142

142:                                              ; preds = %128, %136
  %143 = phi i8 [ %141, %136 ], [ 8, %128 ]
  %144 = sub i8 %134, %143
  %145 = sext i8 %144 to i32
  %146 = shl nsw i32 %145, 1
  %147 = sub nsw i32 1, %146
  %148 = icmp sgt i8 %144, 0
  %149 = select i1 %148, i32 %146, i32 %147
  %150 = icmp sgt i32 %149, 255
  %151 = lshr i32 %149, 8
  %152 = select i1 %150, i32 16, i32 0
  %153 = select i1 %150, i32 %151, i32 %149
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %154
  %156 = load i8, ptr %155, align 1, !tbaa !137
  %157 = zext i8 %156 to i32
  %158 = add nuw nsw i32 %152, %157
  %159 = load i64, ptr %35, align 8, !tbaa !138
  %160 = zext nneg i32 %158 to i64
  %161 = shl i64 %159, %160
  %162 = zext i32 %149 to i64
  %163 = or i64 %161, %162
  store i64 %163, ptr %35, align 8, !tbaa !138
  %164 = load i32, ptr %39, align 8, !tbaa !136
  %165 = sub nsw i32 %164, %158
  store i32 %165, ptr %39, align 8, !tbaa !136
  %166 = icmp slt i32 %165, 33
  br i1 %166, label %167, label %177

167:                                              ; preds = %142
  %168 = zext nneg i32 %165 to i64
  %169 = shl i64 %163, %168
  %170 = tail call i64 @llvm.bswap.i64(i64 %169)
  %171 = trunc i64 %170 to i32
  %172 = load ptr, ptr %124, align 8, !tbaa !133
  store i32 %171, ptr %172, align 4, !tbaa !137
  %173 = load i32, ptr %39, align 8, !tbaa !136
  %174 = add nsw i32 %173, 32
  store i32 %174, ptr %39, align 8, !tbaa !136
  %175 = load ptr, ptr %124, align 8, !tbaa !133
  %176 = getelementptr inbounds i8, ptr %175, i64 4
  store ptr %176, ptr %124, align 8, !tbaa !133
  br label %177

177:                                              ; preds = %142, %167
  %178 = add nuw nsw i64 %129, 1
  %179 = icmp eq i64 %178, %125
  br i1 %179, label %126, label %128, !llvm.loop !189

180:                                              ; preds = %126
  %181 = sext i32 %121 to i64
  %182 = getelementptr inbounds i8, ptr %6, i64 %181
  %183 = load i8, ptr %182, align 1, !tbaa !137
  %184 = zext i8 %183 to i64
  %185 = getelementptr inbounds i8, ptr %9, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !137
  %187 = sub i8 0, %186
  %188 = sext i8 %187 to i32
  %189 = shl nsw i32 %188, 1
  %190 = sub nsw i32 1, %189
  %191 = icmp sgt i8 %187, 0
  %192 = select i1 %191, i32 %189, i32 %190
  %193 = icmp sgt i32 %192, 255
  %194 = lshr i32 %192, 8
  %195 = select i1 %193, i32 16, i32 0
  %196 = select i1 %193, i32 %194, i32 %192
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %197
  %199 = load i8, ptr %198, align 1, !tbaa !137
  %200 = zext i8 %199 to i32
  %201 = add nuw nsw i32 %195, %200
  %202 = load i64, ptr %35, align 8, !tbaa !138
  %203 = zext nneg i32 %201 to i64
  %204 = shl i64 %202, %203
  %205 = zext i32 %192 to i64
  %206 = or i64 %204, %205
  store i64 %206, ptr %35, align 8, !tbaa !138
  %207 = load i32, ptr %39, align 8, !tbaa !136
  %208 = sub nsw i32 %207, %201
  store i32 %208, ptr %39, align 8, !tbaa !136
  %209 = icmp slt i32 %208, 33
  br i1 %209, label %210, label %224

210:                                              ; preds = %180, %55, %22
  %211 = phi i32 [ %28, %22 ], [ %60, %55 ], [ %208, %180 ]
  %212 = phi i64 [ %25, %22 ], [ %58, %55 ], [ %206, %180 ]
  %213 = phi ptr [ %26, %22 ], [ %39, %55 ], [ %39, %180 ]
  %214 = zext nneg i32 %211 to i64
  %215 = shl i64 %212, %214
  %216 = tail call i64 @llvm.bswap.i64(i64 %215)
  %217 = trunc i64 %216 to i32
  %218 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !133
  store i32 %217, ptr %219, align 4, !tbaa !137
  %220 = load i32, ptr %213, align 8, !tbaa !136
  %221 = add nsw i32 %220, 32
  store i32 %221, ptr %213, align 8, !tbaa !136
  %222 = load ptr, ptr %218, align 8, !tbaa !133
  %223 = getelementptr inbounds i8, ptr %222, i64 4
  store ptr %223, ptr %218, align 8, !tbaa !133
  br label %224

224:                                              ; preds = %210, %180, %55, %22, %126
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_recovery_point_write(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = and i64 %6, 3
  %12 = sub nsw i64 0, %11
  %13 = getelementptr inbounds i8, ptr %5, i64 %12
  store ptr %13, ptr %4, align 8, !tbaa !133
  %14 = trunc i64 %11 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = sub nuw nsw i32 64, %15
  %17 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  store i32 %16, ptr %17, align 8, !tbaa !136
  %18 = load i32, ptr %13, align 4, !tbaa !137
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %22 = shl nuw nsw i32 %8, 3
  %23 = sub nuw nsw i32 32, %22
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %20, %24
  store i64 %25, ptr %21, align 8, !tbaa !138
  br label %26

26:                                               ; preds = %3, %10
  %27 = tail call fastcc ptr @x264_sei_write_header(ptr noundef %1, i32 noundef 6)
  %28 = add i32 %2, 1
  %29 = icmp sgt i32 %28, 65535
  %30 = lshr i32 %28, 16
  %31 = select i1 %29, i32 32, i32 0
  %32 = select i1 %29, i32 %30, i32 %28
  %33 = icmp sgt i32 %32, 255
  %34 = or disjoint i32 %31, 16
  %35 = lshr i32 %32, 8
  %36 = select i1 %33, i32 %34, i32 %31
  %37 = select i1 %33, i32 %35, i32 %32
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %38
  %40 = load i8, ptr %39, align 1, !tbaa !137
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %36, %41
  %43 = lshr i32 %42, 1
  %44 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %45 = load i64, ptr %44, align 8, !tbaa !138
  %46 = zext nneg i32 %43 to i64
  %47 = shl i64 %45, %46
  store i64 %47, ptr %44, align 8, !tbaa !138
  %48 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 8, !tbaa !136
  %50 = sub nsw i32 %49, %43
  store i32 %50, ptr %48, align 8, !tbaa !136
  %51 = icmp slt i32 %50, 33
  br i1 %51, label %52, label %62

52:                                               ; preds = %26
  %53 = zext nneg i32 %50 to i64
  %54 = shl i64 %47, %53
  %55 = tail call i64 @llvm.bswap.i64(i64 %54)
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %56, ptr %57, align 4, !tbaa !137
  %58 = load i32, ptr %48, align 8, !tbaa !136
  %59 = add nsw i32 %58, 32
  store i32 %59, ptr %48, align 8, !tbaa !136
  %60 = load ptr, ptr %4, align 8, !tbaa !133
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  store ptr %61, ptr %4, align 8, !tbaa !133
  br label %62

62:                                               ; preds = %52, %26
  %63 = add nuw nsw i32 %43, 1
  %64 = load i64, ptr %44, align 8, !tbaa !138
  %65 = zext nneg i32 %63 to i64
  %66 = shl i64 %64, %65
  %67 = zext i32 %28 to i64
  %68 = or i64 %66, %67
  store i64 %68, ptr %44, align 8, !tbaa !138
  %69 = load i32, ptr %48, align 8, !tbaa !136
  %70 = sub nsw i32 %69, %63
  store i32 %70, ptr %48, align 8, !tbaa !136
  %71 = icmp slt i32 %70, 33
  br i1 %71, label %72, label %82

72:                                               ; preds = %62
  %73 = zext nneg i32 %70 to i64
  %74 = shl i64 %68, %73
  %75 = tail call i64 @llvm.bswap.i64(i64 %74)
  %76 = trunc i64 %75 to i32
  %77 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %76, ptr %77, align 4, !tbaa !137
  %78 = load i32, ptr %48, align 8, !tbaa !136
  %79 = add nsw i32 %78, 32
  store i32 %79, ptr %48, align 8, !tbaa !136
  %80 = load ptr, ptr %4, align 8, !tbaa !133
  %81 = getelementptr inbounds i8, ptr %80, i64 4
  store ptr %81, ptr %4, align 8, !tbaa !133
  br label %82

82:                                               ; preds = %62, %72
  %83 = load i64, ptr %44, align 8, !tbaa !138
  %84 = shl i64 %83, 1
  %85 = or disjoint i64 %84, 1
  store i64 %85, ptr %44, align 8, !tbaa !138
  %86 = load i32, ptr %48, align 8, !tbaa !136
  %87 = add nsw i32 %86, -1
  store i32 %87, ptr %48, align 8, !tbaa !136
  %88 = icmp slt i32 %86, 34
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = zext nneg i32 %87 to i64
  %91 = shl i64 %85, %90
  %92 = tail call i64 @llvm.bswap.i64(i64 %91)
  %93 = trunc i64 %92 to i32
  %94 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %93, ptr %94, align 4, !tbaa !137
  %95 = load i32, ptr %48, align 8, !tbaa !136
  %96 = add nsw i32 %95, 32
  store i32 %96, ptr %48, align 8, !tbaa !136
  %97 = load ptr, ptr %4, align 8, !tbaa !133
  %98 = getelementptr inbounds i8, ptr %97, i64 4
  store ptr %98, ptr %4, align 8, !tbaa !133
  br label %99

99:                                               ; preds = %82, %89
  %100 = load i64, ptr %44, align 8, !tbaa !138
  %101 = shl i64 %100, 1
  store i64 %101, ptr %44, align 8, !tbaa !138
  %102 = load i32, ptr %48, align 8, !tbaa !136
  %103 = add nsw i32 %102, -1
  store i32 %103, ptr %48, align 8, !tbaa !136
  %104 = icmp slt i32 %102, 34
  br i1 %104, label %105, label %115

105:                                              ; preds = %99
  %106 = zext nneg i32 %103 to i64
  %107 = shl i64 %101, %106
  %108 = tail call i64 @llvm.bswap.i64(i64 %107)
  %109 = trunc i64 %108 to i32
  %110 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %109, ptr %110, align 4, !tbaa !137
  %111 = load i32, ptr %48, align 8, !tbaa !136
  %112 = add nsw i32 %111, 32
  store i32 %112, ptr %48, align 8, !tbaa !136
  %113 = load ptr, ptr %4, align 8, !tbaa !133
  %114 = getelementptr inbounds i8, ptr %113, i64 4
  store ptr %114, ptr %4, align 8, !tbaa !133
  br label %115

115:                                              ; preds = %99, %105
  %116 = load i64, ptr %44, align 8, !tbaa !138
  %117 = shl i64 %116, 2
  store i64 %117, ptr %44, align 8, !tbaa !138
  %118 = load i32, ptr %48, align 8, !tbaa !136
  %119 = add nsw i32 %118, -2
  store i32 %119, ptr %48, align 8, !tbaa !136
  %120 = icmp slt i32 %118, 35
  br i1 %120, label %121, label %131

121:                                              ; preds = %115
  %122 = zext nneg i32 %119 to i64
  %123 = shl i64 %117, %122
  %124 = tail call i64 @llvm.bswap.i64(i64 %123)
  %125 = trunc i64 %124 to i32
  %126 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %125, ptr %126, align 4, !tbaa !137
  %127 = load i32, ptr %48, align 8, !tbaa !136
  %128 = add nsw i32 %127, 32
  store i32 %128, ptr %48, align 8, !tbaa !136
  %129 = load ptr, ptr %4, align 8, !tbaa !133
  %130 = getelementptr inbounds i8, ptr %129, i64 4
  store ptr %130, ptr %4, align 8, !tbaa !133
  br label %131

131:                                              ; preds = %115, %121
  tail call fastcc void @x264_sei_write(ptr noundef %1, ptr noundef %27)
  %132 = load i64, ptr %44, align 8, !tbaa !138
  %133 = load i32, ptr %48, align 8, !tbaa !136
  %134 = and i32 %133, 31
  %135 = zext nneg i32 %134 to i64
  %136 = shl i64 %132, %135
  %137 = trunc i64 %136 to i32
  %138 = tail call i32 @llvm.bswap.i32(i32 %137)
  %139 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %138, ptr %139, align 4, !tbaa !137
  %140 = load i32, ptr %48, align 8, !tbaa !136
  %141 = sdiv i32 %140, -8
  %142 = load ptr, ptr %4, align 8, !tbaa !133
  %143 = sext i32 %141 to i64
  %144 = getelementptr i8, ptr %142, i64 %143
  %145 = getelementptr i8, ptr %144, i64 8
  store ptr %145, ptr %4, align 8, !tbaa !133
  store i32 64, ptr %48, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @x264_sei_write_header(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !138
  %5 = shl i64 %4, 8
  %6 = zext i32 %1 to i64
  %7 = or i64 %5, %6
  store i64 %7, ptr %3, align 8, !tbaa !138
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !136
  %10 = add nsw i32 %9, -8
  store i32 %10, ptr %8, align 8, !tbaa !136
  %11 = icmp slt i32 %9, 41
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = zext nneg i32 %10 to i64
  %14 = shl i64 %7, %13
  %15 = tail call i64 @llvm.bswap.i64(i64 %14)
  %16 = trunc i64 %15 to i32
  %17 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %16, ptr %18, align 4, !tbaa !137
  %19 = load i32, ptr %8, align 8, !tbaa !136
  %20 = add nsw i32 %19, 32
  store i32 %20, ptr %8, align 8, !tbaa !136
  %21 = load ptr, ptr %17, align 8, !tbaa !133
  %22 = getelementptr inbounds i8, ptr %21, i64 4
  store ptr %22, ptr %17, align 8, !tbaa !133
  br label %23

23:                                               ; preds = %2, %12
  %24 = load i64, ptr %3, align 8, !tbaa !138
  %25 = load i32, ptr %8, align 8, !tbaa !136
  %26 = and i32 %25, 31
  %27 = zext nneg i32 %26 to i64
  %28 = shl i64 %24, %27
  %29 = trunc i64 %28 to i32
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !133
  store i32 %30, ptr %32, align 4, !tbaa !137
  %33 = load i32, ptr %8, align 8, !tbaa !136
  %34 = sdiv i32 %33, -8
  %35 = load ptr, ptr %31, align 8, !tbaa !133
  %36 = sext i32 %34 to i64
  %37 = getelementptr i8, ptr %35, i64 %36
  %38 = getelementptr i8, ptr %37, i64 8
  store ptr %38, ptr %31, align 8, !tbaa !133
  store i32 64, ptr %8, align 8, !tbaa !136
  %39 = ptrtoint ptr %38 to i64
  %40 = trunc i64 %39 to i32
  %41 = and i32 %40, 3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %23
  %44 = and i64 %39, 3
  %45 = sub nsw i64 0, %44
  %46 = getelementptr inbounds i8, ptr %38, i64 %45
  store ptr %46, ptr %31, align 8, !tbaa !133
  %47 = trunc i64 %44 to i32
  %48 = shl nuw nsw i32 %47, 3
  %49 = sub nuw nsw i32 64, %48
  store i32 %49, ptr %8, align 8, !tbaa !136
  %50 = load i32, ptr %46, align 4, !tbaa !137
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  %52 = zext i32 %51 to i64
  %53 = shl nuw nsw i32 %41, 3
  %54 = sub nuw nsw i32 32, %53
  %55 = zext nneg i32 %54 to i64
  %56 = lshr i64 %52, %55
  store i64 %56, ptr %3, align 8, !tbaa !138
  br label %57

57:                                               ; preds = %23, %43
  %58 = load i64, ptr %3, align 8, !tbaa !138
  %59 = shl i64 %58, 8
  store i64 %59, ptr %3, align 8, !tbaa !138
  %60 = load i32, ptr %8, align 8, !tbaa !136
  %61 = add nsw i32 %60, -8
  store i32 %61, ptr %8, align 8, !tbaa !136
  %62 = icmp slt i32 %60, 41
  br i1 %62, label %63, label %73

63:                                               ; preds = %57
  %64 = zext nneg i32 %61 to i64
  %65 = shl i64 %59, %64
  %66 = tail call i64 @llvm.bswap.i64(i64 %65)
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %31, align 8, !tbaa !133
  store i32 %67, ptr %68, align 4, !tbaa !137
  %69 = load i32, ptr %8, align 8, !tbaa !136
  %70 = add nsw i32 %69, 32
  store i32 %70, ptr %8, align 8, !tbaa !136
  %71 = load ptr, ptr %31, align 8, !tbaa !133
  %72 = getelementptr inbounds i8, ptr %71, i64 4
  store ptr %72, ptr %31, align 8, !tbaa !133
  br label %73

73:                                               ; preds = %57, %63
  ret ptr %38
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_sei_write(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !136
  %5 = and i32 %4, 7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %29, label %7

7:                                                ; preds = %2
  %8 = add nsw i32 %5, -1
  %9 = shl nuw nsw i32 1, %8
  %10 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !138
  %12 = zext nneg i32 %5 to i64
  %13 = shl i64 %11, %12
  %14 = zext nneg i32 %9 to i64
  %15 = or i64 %13, %14
  store i64 %15, ptr %10, align 8, !tbaa !138
  %16 = and i32 %4, -8
  store i32 %16, ptr %3, align 8, !tbaa !136
  %17 = icmp slt i32 %16, 33
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = zext nneg i32 %16 to i64
  %20 = tail call i64 @llvm.bswap.i64(i64 %15)
  %21 = lshr i64 %20, %19
  %22 = trunc i64 %21 to i32
  %23 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !133
  store i32 %22, ptr %24, align 4, !tbaa !137
  %25 = load i32, ptr %3, align 8, !tbaa !136
  %26 = add nsw i32 %25, 32
  store i32 %26, ptr %3, align 8, !tbaa !136
  %27 = load ptr, ptr %23, align 8, !tbaa !133
  %28 = getelementptr inbounds i8, ptr %27, i64 4
  store ptr %28, ptr %23, align 8, !tbaa !133
  br label %29

29:                                               ; preds = %2, %7, %18
  %30 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %31 = load i64, ptr %30, align 8, !tbaa !138
  %32 = load i32, ptr %3, align 8, !tbaa !136
  %33 = and i32 %32, 31
  %34 = zext nneg i32 %33 to i64
  %35 = shl i64 %31, %34
  %36 = trunc i64 %35 to i32
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  store i32 %37, ptr %39, align 4, !tbaa !137
  %40 = load i32, ptr %3, align 8, !tbaa !136
  %41 = sdiv i32 %40, -8
  %42 = load ptr, ptr %38, align 8, !tbaa !133
  %43 = sext i32 %41 to i64
  %44 = getelementptr i8, ptr %42, i64 %43
  %45 = getelementptr i8, ptr %44, i64 8
  store ptr %45, ptr %38, align 8, !tbaa !133
  store i32 64, ptr %3, align 8, !tbaa !136
  %46 = ptrtoint ptr %45 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = xor i64 %47, -1
  %49 = add i64 %46, %48
  %50 = trunc i64 %49 to i8
  store i8 %50, ptr %1, align 1, !tbaa !137
  %51 = load ptr, ptr %38, align 8, !tbaa !133
  %52 = ptrtoint ptr %51 to i64
  %53 = trunc i64 %52 to i32
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %29
  %57 = and i64 %52, 3
  %58 = sub nsw i64 0, %57
  %59 = getelementptr inbounds i8, ptr %51, i64 %58
  store ptr %59, ptr %38, align 8, !tbaa !133
  %60 = trunc i64 %57 to i32
  %61 = shl nuw nsw i32 %60, 3
  %62 = sub nuw nsw i32 64, %61
  store i32 %62, ptr %3, align 8, !tbaa !136
  %63 = load i32, ptr %59, align 4, !tbaa !137
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %65 = zext i32 %64 to i64
  %66 = shl nuw nsw i32 %54, 3
  %67 = sub nuw nsw i32 32, %66
  %68 = zext nneg i32 %67 to i64
  %69 = lshr i64 %65, %68
  store i64 %69, ptr %30, align 8, !tbaa !138
  br label %70

70:                                               ; preds = %29, %56
  %71 = load i64, ptr %30, align 8, !tbaa !138
  %72 = shl i64 %71, 1
  %73 = or disjoint i64 %72, 1
  store i64 %73, ptr %30, align 8, !tbaa !138
  %74 = load i32, ptr %3, align 8, !tbaa !136
  %75 = add nsw i32 %74, -1
  store i32 %75, ptr %3, align 8, !tbaa !136
  %76 = icmp eq i32 %75, 32
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = trunc i64 %73 to i32
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %80 = load ptr, ptr %38, align 8, !tbaa !133
  store i32 %79, ptr %80, align 4, !tbaa !137
  %81 = load ptr, ptr %38, align 8, !tbaa !133
  %82 = getelementptr inbounds i8, ptr %81, i64 4
  store ptr %82, ptr %38, align 8, !tbaa !133
  store i32 64, ptr %3, align 8, !tbaa !136
  br label %83

83:                                               ; preds = %77, %70
  %84 = load i32, ptr %3, align 8, !tbaa !136
  %85 = and i32 %84, 7
  %86 = load i64, ptr %30, align 8, !tbaa !138
  %87 = zext nneg i32 %85 to i64
  %88 = shl i64 %86, %87
  store i64 %88, ptr %30, align 8, !tbaa !138
  %89 = and i32 %84, -8
  store i32 %89, ptr %3, align 8, !tbaa !136
  %90 = icmp slt i32 %89, 33
  br i1 %90, label %91, label %101

91:                                               ; preds = %83
  %92 = zext nneg i32 %89 to i64
  %93 = tail call i64 @llvm.bswap.i64(i64 %88)
  %94 = lshr i64 %93, %92
  %95 = trunc i64 %94 to i32
  %96 = load ptr, ptr %38, align 8, !tbaa !133
  store i32 %95, ptr %96, align 4, !tbaa !137
  %97 = load i32, ptr %3, align 8, !tbaa !136
  %98 = add nsw i32 %97, 32
  store i32 %98, ptr %3, align 8, !tbaa !136
  %99 = load ptr, ptr %38, align 8, !tbaa !133
  %100 = getelementptr inbounds i8, ptr %99, i64 4
  store ptr %100, ptr %38, align 8, !tbaa !133
  br label %101

101:                                              ; preds = %83, %91
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @x264_sei_version_write(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #6 {
  %3 = tail call ptr @x264_param2string(ptr noundef %0, i32 noundef 0) #12
  %4 = icmp eq ptr %3, null
  br i1 %4, label %211, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #13
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 200
  %9 = tail call ptr @x264_malloc(i32 noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %208, label %11

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 96, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #12
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #13
  %14 = freeze i64 %13
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, 17
  %17 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  %19 = ptrtoint ptr %18 to i64
  %20 = trunc i64 %19 to i32
  %21 = and i32 %20, 3
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %11
  %24 = and i64 %19, 3
  %25 = sub nsw i64 0, %24
  %26 = getelementptr inbounds i8, ptr %18, i64 %25
  store ptr %26, ptr %17, align 8, !tbaa !133
  %27 = trunc i64 %24 to i32
  %28 = shl nuw nsw i32 %27, 3
  %29 = sub nuw nsw i32 64, %28
  %30 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  store i32 %29, ptr %30, align 8, !tbaa !136
  %31 = load i32, ptr %26, align 4, !tbaa !137
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %35 = shl nuw nsw i32 %21, 3
  %36 = sub nuw nsw i32 32, %35
  %37 = zext nneg i32 %36 to i64
  %38 = lshr i64 %33, %37
  store i64 %38, ptr %34, align 8, !tbaa !138
  br label %39

39:                                               ; preds = %11, %23
  %40 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !138
  %42 = shl i64 %41, 8
  %43 = or disjoint i64 %42, 5
  store i64 %43, ptr %40, align 8, !tbaa !138
  %44 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %45 = load i32, ptr %44, align 8, !tbaa !136
  %46 = add nsw i32 %45, -8
  store i32 %46, ptr %44, align 8, !tbaa !136
  %47 = icmp slt i32 %45, 41
  br i1 %47, label %48, label %58

48:                                               ; preds = %39
  %49 = zext nneg i32 %46 to i64
  %50 = shl i64 %43, %49
  %51 = tail call i64 @llvm.bswap.i64(i64 %50)
  %52 = trunc i64 %51 to i32
  %53 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %52, ptr %53, align 4, !tbaa !137
  %54 = load i32, ptr %44, align 8, !tbaa !136
  %55 = add nsw i32 %54, 32
  store i32 %55, ptr %44, align 8, !tbaa !136
  %56 = load ptr, ptr %17, align 8, !tbaa !133
  %57 = getelementptr inbounds i8, ptr %56, i64 4
  store ptr %57, ptr %17, align 8, !tbaa !133
  br label %58

58:                                               ; preds = %39, %48
  %59 = add i32 %15, -238
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %87, label %61

61:                                               ; preds = %58
  %62 = urem i32 %59, 255
  %63 = sub nsw i32 %62, %59
  br label %64

64:                                               ; preds = %61, %82
  %65 = phi i32 [ %83, %82 ], [ 0, %61 ]
  %66 = load i64, ptr %40, align 8, !tbaa !138
  %67 = shl i64 %66, 8
  %68 = or disjoint i64 %67, 255
  store i64 %68, ptr %40, align 8, !tbaa !138
  %69 = load i32, ptr %44, align 8, !tbaa !136
  %70 = add nsw i32 %69, -8
  store i32 %70, ptr %44, align 8, !tbaa !136
  %71 = icmp slt i32 %69, 41
  br i1 %71, label %72, label %82

72:                                               ; preds = %64
  %73 = zext nneg i32 %70 to i64
  %74 = shl i64 %68, %73
  %75 = tail call i64 @llvm.bswap.i64(i64 %74)
  %76 = trunc i64 %75 to i32
  %77 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %76, ptr %77, align 4, !tbaa !137
  %78 = load i32, ptr %44, align 8, !tbaa !136
  %79 = add nsw i32 %78, 32
  store i32 %79, ptr %44, align 8, !tbaa !136
  %80 = load ptr, ptr %17, align 8, !tbaa !133
  %81 = getelementptr inbounds i8, ptr %80, i64 4
  store ptr %81, ptr %17, align 8, !tbaa !133
  br label %82

82:                                               ; preds = %64, %72
  %83 = add nuw nsw i32 %65, 255
  %84 = icmp sgt i32 %83, %59
  br i1 %84, label %85, label %64, !llvm.loop !190

85:                                               ; preds = %82
  %86 = add i32 %63, -255
  br label %87

87:                                               ; preds = %85, %58
  %88 = phi i32 [ 0, %58 ], [ %86, %85 ]
  %89 = add i32 %88, %16
  %90 = load i64, ptr %40, align 8, !tbaa !138
  %91 = shl i64 %90, 8
  %92 = zext i32 %89 to i64
  %93 = or i64 %91, %92
  store i64 %93, ptr %40, align 8, !tbaa !138
  %94 = load i32, ptr %44, align 8, !tbaa !136
  %95 = add nsw i32 %94, -8
  store i32 %95, ptr %44, align 8, !tbaa !136
  %96 = icmp slt i32 %94, 41
  br i1 %96, label %97, label %107

97:                                               ; preds = %87
  %98 = zext nneg i32 %95 to i64
  %99 = shl i64 %93, %98
  %100 = tail call i64 @llvm.bswap.i64(i64 %99)
  %101 = trunc i64 %100 to i32
  %102 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %101, ptr %102, align 4, !tbaa !137
  %103 = load i32, ptr %44, align 8, !tbaa !136
  %104 = add nsw i32 %103, 32
  store i32 %104, ptr %44, align 8, !tbaa !136
  %105 = load ptr, ptr %17, align 8, !tbaa !133
  %106 = getelementptr inbounds i8, ptr %105, i64 4
  store ptr %106, ptr %17, align 8, !tbaa !133
  br label %107

107:                                              ; preds = %87, %97
  br label %113

108:                                              ; preds = %134
  %109 = icmp ult i32 %15, 2147483647
  br i1 %109, label %110, label %137

110:                                              ; preds = %108
  %111 = add i64 %14, 1
  %112 = and i64 %111, 4294967295
  br label %183

113:                                              ; preds = %107, %134
  %114 = phi i64 [ %135, %134 ], [ 0, %107 ]
  %115 = getelementptr inbounds [16 x i8], ptr @__const.x264_sei_version_write.uuid, i64 0, i64 %114
  %116 = load i8, ptr %115, align 1, !tbaa !137
  %117 = load i64, ptr %40, align 8, !tbaa !138
  %118 = shl i64 %117, 8
  %119 = zext i8 %116 to i64
  %120 = or disjoint i64 %118, %119
  store i64 %120, ptr %40, align 8, !tbaa !138
  %121 = load i32, ptr %44, align 8, !tbaa !136
  %122 = add nsw i32 %121, -8
  store i32 %122, ptr %44, align 8, !tbaa !136
  %123 = icmp slt i32 %121, 41
  br i1 %123, label %124, label %134

124:                                              ; preds = %113
  %125 = zext nneg i32 %122 to i64
  %126 = shl i64 %120, %125
  %127 = tail call i64 @llvm.bswap.i64(i64 %126)
  %128 = trunc i64 %127 to i32
  %129 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %128, ptr %129, align 4, !tbaa !137
  %130 = load i32, ptr %44, align 8, !tbaa !136
  %131 = add nsw i32 %130, 32
  store i32 %131, ptr %44, align 8, !tbaa !136
  %132 = load ptr, ptr %17, align 8, !tbaa !133
  %133 = getelementptr inbounds i8, ptr %132, i64 4
  store ptr %133, ptr %17, align 8, !tbaa !133
  br label %134

134:                                              ; preds = %113, %124
  %135 = add nuw nsw i64 %114, 1
  %136 = icmp eq i64 %135, 16
  br i1 %136, label %108, label %113, !llvm.loop !191

137:                                              ; preds = %205, %108
  %138 = load i64, ptr %40, align 8, !tbaa !138
  %139 = shl i64 %138, 1
  %140 = or disjoint i64 %139, 1
  store i64 %140, ptr %40, align 8, !tbaa !138
  %141 = load i32, ptr %44, align 8, !tbaa !136
  %142 = add nsw i32 %141, -1
  store i32 %142, ptr %44, align 8, !tbaa !136
  %143 = icmp eq i32 %142, 32
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = trunc i64 %140 to i32
  %146 = tail call i32 @llvm.bswap.i32(i32 %145)
  %147 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %146, ptr %147, align 4, !tbaa !137
  %148 = load ptr, ptr %17, align 8, !tbaa !133
  %149 = getelementptr inbounds i8, ptr %148, i64 4
  store ptr %149, ptr %17, align 8, !tbaa !133
  store i32 64, ptr %44, align 8, !tbaa !136
  br label %150

150:                                              ; preds = %144, %137
  %151 = load i32, ptr %44, align 8, !tbaa !136
  %152 = and i32 %151, 7
  %153 = load i64, ptr %40, align 8, !tbaa !138
  %154 = zext nneg i32 %152 to i64
  %155 = shl i64 %153, %154
  store i64 %155, ptr %40, align 8, !tbaa !138
  %156 = and i32 %151, -8
  store i32 %156, ptr %44, align 8, !tbaa !136
  %157 = icmp slt i32 %156, 33
  br i1 %157, label %158, label %168

158:                                              ; preds = %150
  %159 = zext nneg i32 %156 to i64
  %160 = tail call i64 @llvm.bswap.i64(i64 %155)
  %161 = lshr i64 %160, %159
  %162 = trunc i64 %161 to i32
  %163 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %162, ptr %163, align 4, !tbaa !137
  %164 = load i32, ptr %44, align 8, !tbaa !136
  %165 = add nsw i32 %164, 32
  store i32 %165, ptr %44, align 8, !tbaa !136
  %166 = load ptr, ptr %17, align 8, !tbaa !133
  %167 = getelementptr inbounds i8, ptr %166, i64 4
  store ptr %167, ptr %17, align 8, !tbaa !133
  br label %168

168:                                              ; preds = %150, %158
  %169 = load i64, ptr %40, align 8, !tbaa !138
  %170 = load i32, ptr %44, align 8, !tbaa !136
  %171 = and i32 %170, 31
  %172 = zext nneg i32 %171 to i64
  %173 = shl i64 %169, %172
  %174 = trunc i64 %173 to i32
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  %176 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %175, ptr %176, align 4, !tbaa !137
  %177 = load i32, ptr %44, align 8, !tbaa !136
  %178 = sdiv i32 %177, -8
  %179 = load ptr, ptr %17, align 8, !tbaa !133
  %180 = sext i32 %178 to i64
  %181 = getelementptr i8, ptr %179, i64 %180
  %182 = getelementptr i8, ptr %181, i64 8
  store ptr %182, ptr %17, align 8, !tbaa !133
  store i32 64, ptr %44, align 8, !tbaa !136
  tail call void @x264_free(ptr noundef nonnull %3) #12
  br label %208

183:                                              ; preds = %110, %205
  %184 = phi i64 [ 0, %110 ], [ %206, %205 ]
  %185 = getelementptr inbounds i8, ptr %9, i64 %184
  %186 = load i8, ptr %185, align 1, !tbaa !137
  %187 = sext i8 %186 to i64
  %188 = load i64, ptr %40, align 8, !tbaa !138
  %189 = shl i64 %188, 8
  %190 = and i64 %187, 4294967295
  %191 = or i64 %189, %190
  store i64 %191, ptr %40, align 8, !tbaa !138
  %192 = load i32, ptr %44, align 8, !tbaa !136
  %193 = add nsw i32 %192, -8
  store i32 %193, ptr %44, align 8, !tbaa !136
  %194 = icmp slt i32 %192, 41
  br i1 %194, label %195, label %205

195:                                              ; preds = %183
  %196 = zext nneg i32 %193 to i64
  %197 = shl i64 %191, %196
  %198 = tail call i64 @llvm.bswap.i64(i64 %197)
  %199 = trunc i64 %198 to i32
  %200 = load ptr, ptr %17, align 8, !tbaa !133
  store i32 %199, ptr %200, align 4, !tbaa !137
  %201 = load i32, ptr %44, align 8, !tbaa !136
  %202 = add nsw i32 %201, 32
  store i32 %202, ptr %44, align 8, !tbaa !136
  %203 = load ptr, ptr %17, align 8, !tbaa !133
  %204 = getelementptr inbounds i8, ptr %203, i64 4
  store ptr %204, ptr %17, align 8, !tbaa !133
  br label %205

205:                                              ; preds = %183, %195
  %206 = add nuw nsw i64 %184, 1
  %207 = icmp eq i64 %206, %112
  br i1 %207, label %137, label %183, !llvm.loop !192

208:                                              ; preds = %5, %168
  %209 = phi ptr [ %9, %168 ], [ %3, %5 ]
  %210 = phi i32 [ 0, %168 ], [ -1, %5 ]
  tail call void @x264_free(ptr noundef nonnull %209) #12
  br label %211

211:                                              ; preds = %208, %2
  %212 = phi i32 [ -1, %2 ], [ %210, %208 ]
  ret i32 %212
}

declare ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #7

declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

declare void @x264_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_buffering_period_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 16, !tbaa !193
  %5 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = ptrtoint ptr %6 to i64
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = and i64 %7, 3
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds i8, ptr %6, i64 %13
  store ptr %14, ptr %5, align 8, !tbaa !133
  %15 = trunc i64 %12 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = sub nuw nsw i32 64, %16
  %18 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  store i32 %17, ptr %18, align 8, !tbaa !136
  %19 = load i32, ptr %14, align 4, !tbaa !137
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %23 = shl nuw nsw i32 %9, 3
  %24 = sub nuw nsw i32 32, %23
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 %21, %25
  store i64 %26, ptr %22, align 8, !tbaa !138
  br label %27

27:                                               ; preds = %2, %11
  %28 = tail call fastcc ptr @x264_sei_write_header(ptr noundef %1, i32 noundef 0)
  %29 = load i32, ptr %4, align 4, !tbaa !34
  %30 = add i32 %29, 1
  %31 = icmp sgt i32 %30, 65535
  %32 = lshr i32 %30, 16
  %33 = select i1 %31, i32 32, i32 0
  %34 = select i1 %31, i32 %32, i32 %30
  %35 = icmp sgt i32 %34, 255
  %36 = or disjoint i32 %33, 16
  %37 = lshr i32 %34, 8
  %38 = select i1 %35, i32 %36, i32 %33
  %39 = select i1 %35, i32 %37, i32 %34
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !137
  %43 = zext i8 %42 to i32
  %44 = add nuw nsw i32 %38, %43
  %45 = lshr i32 %44, 1
  %46 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !138
  %48 = zext nneg i32 %45 to i64
  %49 = shl i64 %47, %48
  store i64 %49, ptr %46, align 8, !tbaa !138
  %50 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %51 = load i32, ptr %50, align 8, !tbaa !136
  %52 = sub nsw i32 %51, %45
  store i32 %52, ptr %50, align 8, !tbaa !136
  %53 = icmp slt i32 %52, 33
  br i1 %53, label %54, label %64

54:                                               ; preds = %27
  %55 = zext nneg i32 %52 to i64
  %56 = shl i64 %49, %55
  %57 = tail call i64 @llvm.bswap.i64(i64 %56)
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %58, ptr %59, align 4, !tbaa !137
  %60 = load i32, ptr %50, align 8, !tbaa !136
  %61 = add nsw i32 %60, 32
  store i32 %61, ptr %50, align 8, !tbaa !136
  %62 = load ptr, ptr %5, align 8, !tbaa !133
  %63 = getelementptr inbounds i8, ptr %62, i64 4
  store ptr %63, ptr %5, align 8, !tbaa !133
  br label %64

64:                                               ; preds = %54, %27
  %65 = add nuw nsw i32 %45, 1
  %66 = load i64, ptr %46, align 8, !tbaa !138
  %67 = zext nneg i32 %65 to i64
  %68 = shl i64 %66, %67
  %69 = zext i32 %30 to i64
  %70 = or i64 %68, %69
  store i64 %70, ptr %46, align 8, !tbaa !138
  %71 = load i32, ptr %50, align 8, !tbaa !136
  %72 = sub nsw i32 %71, %65
  store i32 %72, ptr %50, align 8, !tbaa !136
  %73 = icmp slt i32 %72, 33
  br i1 %73, label %74, label %84

74:                                               ; preds = %64
  %75 = zext nneg i32 %72 to i64
  %76 = shl i64 %70, %75
  %77 = tail call i64 @llvm.bswap.i64(i64 %76)
  %78 = trunc i64 %77 to i32
  %79 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %78, ptr %79, align 4, !tbaa !137
  %80 = load i32, ptr %50, align 8, !tbaa !136
  %81 = add nsw i32 %80, 32
  store i32 %81, ptr %50, align 8, !tbaa !136
  %82 = load ptr, ptr %5, align 8, !tbaa !133
  %83 = getelementptr inbounds i8, ptr %82, i64 4
  store ptr %83, ptr %5, align 8, !tbaa !133
  br label %84

84:                                               ; preds = %64, %74
  %85 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 19
  %86 = load i32, ptr %85, align 4, !tbaa !118
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %133, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 21, i32 8
  %90 = load i32, ptr %89, align 4, !tbaa !156
  %91 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  %92 = load i32, ptr %91, align 16, !tbaa !212
  %93 = load i64, ptr %46, align 8, !tbaa !138
  %94 = zext nneg i32 %90 to i64
  %95 = shl i64 %93, %94
  %96 = zext i32 %92 to i64
  %97 = or i64 %95, %96
  store i64 %97, ptr %46, align 8, !tbaa !138
  %98 = load i32, ptr %50, align 8, !tbaa !136
  %99 = sub nsw i32 %98, %90
  store i32 %99, ptr %50, align 8, !tbaa !136
  %100 = icmp slt i32 %99, 33
  br i1 %100, label %101, label %111

101:                                              ; preds = %88
  %102 = zext nneg i32 %99 to i64
  %103 = shl i64 %97, %102
  %104 = tail call i64 @llvm.bswap.i64(i64 %103)
  %105 = trunc i64 %104 to i32
  %106 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %105, ptr %106, align 4, !tbaa !137
  %107 = load i32, ptr %50, align 8, !tbaa !136
  %108 = add nsw i32 %107, 32
  store i32 %108, ptr %50, align 8, !tbaa !136
  %109 = load ptr, ptr %5, align 8, !tbaa !133
  %110 = getelementptr inbounds i8, ptr %109, i64 4
  store ptr %110, ptr %5, align 8, !tbaa !133
  br label %111

111:                                              ; preds = %88, %101
  %112 = load i32, ptr %89, align 4, !tbaa !156
  %113 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52
  %114 = load i32, ptr %113, align 4, !tbaa !213
  %115 = load i64, ptr %46, align 8, !tbaa !138
  %116 = zext nneg i32 %112 to i64
  %117 = shl i64 %115, %116
  %118 = zext i32 %114 to i64
  %119 = or i64 %117, %118
  store i64 %119, ptr %46, align 8, !tbaa !138
  %120 = load i32, ptr %50, align 8, !tbaa !136
  %121 = sub nsw i32 %120, %112
  store i32 %121, ptr %50, align 8, !tbaa !136
  %122 = icmp slt i32 %121, 33
  br i1 %122, label %123, label %133

123:                                              ; preds = %111
  %124 = zext nneg i32 %121 to i64
  %125 = shl i64 %119, %124
  %126 = tail call i64 @llvm.bswap.i64(i64 %125)
  %127 = trunc i64 %126 to i32
  %128 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %127, ptr %128, align 4, !tbaa !137
  %129 = load i32, ptr %50, align 8, !tbaa !136
  %130 = add nsw i32 %129, 32
  store i32 %130, ptr %50, align 8, !tbaa !136
  %131 = load ptr, ptr %5, align 8, !tbaa !133
  %132 = getelementptr inbounds i8, ptr %131, i64 4
  store ptr %132, ptr %5, align 8, !tbaa !133
  br label %133

133:                                              ; preds = %123, %111, %84
  tail call fastcc void @x264_sei_write(ptr noundef %1, ptr noundef %28)
  %134 = load i64, ptr %46, align 8, !tbaa !138
  %135 = load i32, ptr %50, align 8, !tbaa !136
  %136 = and i32 %135, 31
  %137 = zext nneg i32 %136 to i64
  %138 = shl i64 %134, %137
  %139 = trunc i64 %138 to i32
  %140 = tail call i32 @llvm.bswap.i32(i32 %139)
  %141 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %140, ptr %141, align 4, !tbaa !137
  %142 = load i32, ptr %50, align 8, !tbaa !136
  %143 = sdiv i32 %142, -8
  %144 = load ptr, ptr %5, align 8, !tbaa !133
  %145 = sext i32 %143 to i64
  %146 = getelementptr i8, ptr %144, i64 %145
  %147 = getelementptr i8, ptr %146, i64 8
  store ptr %147, ptr %5, align 8, !tbaa !133
  store i32 64, ptr %50, align 8, !tbaa !136
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_pic_timing_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 16, !tbaa !193
  %5 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !133
  %7 = ptrtoint ptr %6 to i64
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = and i64 %7, 3
  %13 = sub nsw i64 0, %12
  %14 = getelementptr inbounds i8, ptr %6, i64 %13
  store ptr %14, ptr %5, align 8, !tbaa !133
  %15 = trunc i64 %12 to i32
  %16 = shl nuw nsw i32 %15, 3
  %17 = sub nuw nsw i32 64, %16
  %18 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  store i32 %17, ptr %18, align 8, !tbaa !136
  %19 = load i32, ptr %14, align 4, !tbaa !137
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %23 = shl nuw nsw i32 %9, 3
  %24 = sub nuw nsw i32 32, %23
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 %21, %25
  store i64 %26, ptr %22, align 8, !tbaa !138
  br label %27

27:                                               ; preds = %2, %11
  %28 = tail call fastcc ptr @x264_sei_write_header(ptr noundef %1, i32 noundef 1)
  %29 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 19
  %30 = load i32, ptr %29, align 4, !tbaa !118
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 20
  %34 = load i32, ptr %33, align 4, !tbaa !116
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %87, label %36

36:                                               ; preds = %32, %27
  %37 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 21, i32 9
  %38 = load i32, ptr %37, align 4, !tbaa !157
  %39 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %40 = load ptr, ptr %39, align 8, !tbaa !214
  %41 = getelementptr inbounds %struct.x264_frame, ptr %40, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !215
  %43 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !138
  %45 = zext nneg i32 %38 to i64
  %46 = shl i64 %44, %45
  %47 = zext i32 %42 to i64
  %48 = or i64 %46, %47
  store i64 %48, ptr %43, align 8, !tbaa !138
  %49 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %50 = load i32, ptr %49, align 8, !tbaa !136
  %51 = sub nsw i32 %50, %38
  store i32 %51, ptr %49, align 8, !tbaa !136
  %52 = icmp slt i32 %51, 33
  br i1 %52, label %53, label %63

53:                                               ; preds = %36
  %54 = zext nneg i32 %51 to i64
  %55 = shl i64 %48, %54
  %56 = tail call i64 @llvm.bswap.i64(i64 %55)
  %57 = trunc i64 %56 to i32
  %58 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %57, ptr %58, align 4, !tbaa !137
  %59 = load i32, ptr %49, align 8, !tbaa !136
  %60 = add nsw i32 %59, 32
  store i32 %60, ptr %49, align 8, !tbaa !136
  %61 = load ptr, ptr %5, align 8, !tbaa !133
  %62 = getelementptr inbounds i8, ptr %61, i64 4
  store ptr %62, ptr %5, align 8, !tbaa !133
  br label %63

63:                                               ; preds = %36, %53
  %64 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 21, i32 10
  %65 = load i32, ptr %64, align 4, !tbaa !158
  %66 = load ptr, ptr %39, align 8, !tbaa !214
  %67 = getelementptr inbounds %struct.x264_frame, ptr %66, i64 0, i32 8
  %68 = load i32, ptr %67, align 4, !tbaa !218
  %69 = load i64, ptr %43, align 8, !tbaa !138
  %70 = zext nneg i32 %65 to i64
  %71 = shl i64 %69, %70
  %72 = zext i32 %68 to i64
  %73 = or i64 %71, %72
  store i64 %73, ptr %43, align 8, !tbaa !138
  %74 = load i32, ptr %49, align 8, !tbaa !136
  %75 = sub nsw i32 %74, %65
  store i32 %75, ptr %49, align 8, !tbaa !136
  %76 = icmp slt i32 %75, 33
  br i1 %76, label %77, label %87

77:                                               ; preds = %63
  %78 = zext nneg i32 %75 to i64
  %79 = shl i64 %73, %78
  %80 = tail call i64 @llvm.bswap.i64(i64 %79)
  %81 = trunc i64 %80 to i32
  %82 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %81, ptr %82, align 4, !tbaa !137
  %83 = load i32, ptr %49, align 8, !tbaa !136
  %84 = add nsw i32 %83, 32
  store i32 %84, ptr %49, align 8, !tbaa !136
  %85 = load ptr, ptr %5, align 8, !tbaa !133
  %86 = getelementptr inbounds i8, ptr %85, i64 4
  store ptr %86, ptr %5, align 8, !tbaa !133
  br label %87

87:                                               ; preds = %77, %63, %32
  %88 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 22
  %89 = load i32, ptr %88, align 4, !tbaa !120
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %144, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %93 = load ptr, ptr %92, align 8, !tbaa !214
  %94 = getelementptr inbounds %struct.x264_frame, ptr %93, i64 0, i32 15
  %95 = load i32, ptr %94, align 4, !tbaa !219
  %96 = add nsw i32 %95, -1
  %97 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %98 = load i64, ptr %97, align 8, !tbaa !138
  %99 = shl i64 %98, 4
  %100 = zext i32 %96 to i64
  %101 = or i64 %99, %100
  store i64 %101, ptr %97, align 8, !tbaa !138
  %102 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %103 = load i32, ptr %102, align 8, !tbaa !136
  %104 = add nsw i32 %103, -4
  store i32 %104, ptr %102, align 8, !tbaa !136
  %105 = icmp slt i32 %103, 37
  br i1 %105, label %106, label %116

106:                                              ; preds = %91
  %107 = zext nneg i32 %104 to i64
  %108 = shl i64 %101, %107
  %109 = tail call i64 @llvm.bswap.i64(i64 %108)
  %110 = trunc i64 %109 to i32
  %111 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %110, ptr %111, align 4, !tbaa !137
  %112 = load i32, ptr %102, align 8, !tbaa !136
  %113 = add nsw i32 %112, 32
  store i32 %113, ptr %102, align 8, !tbaa !136
  %114 = load ptr, ptr %5, align 8, !tbaa !133
  %115 = getelementptr inbounds i8, ptr %114, i64 4
  store ptr %115, ptr %5, align 8, !tbaa !133
  br label %116

116:                                              ; preds = %91, %106
  %117 = load ptr, ptr %92, align 8, !tbaa !214
  %118 = getelementptr inbounds %struct.x264_frame, ptr %117, i64 0, i32 15
  %119 = load i32, ptr %118, align 4, !tbaa !219
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %144, label %121

121:                                              ; preds = %116, %134
  %122 = phi i32 [ %135, %134 ], [ 0, %116 ]
  %123 = load i64, ptr %97, align 8, !tbaa !138
  %124 = shl i64 %123, 1
  store i64 %124, ptr %97, align 8, !tbaa !138
  %125 = load i32, ptr %102, align 8, !tbaa !136
  %126 = add nsw i32 %125, -1
  store i32 %126, ptr %102, align 8, !tbaa !136
  %127 = icmp eq i32 %126, 32
  br i1 %127, label %128, label %134

128:                                              ; preds = %121
  %129 = trunc i64 %124 to i32
  %130 = tail call i32 @llvm.bswap.i32(i32 %129)
  %131 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %130, ptr %131, align 4, !tbaa !137
  %132 = load ptr, ptr %5, align 8, !tbaa !133
  %133 = getelementptr inbounds i8, ptr %132, i64 4
  store ptr %133, ptr %5, align 8, !tbaa !133
  store i32 64, ptr %102, align 8, !tbaa !136
  br label %134

134:                                              ; preds = %121, %128
  %135 = add nuw nsw i32 %122, 1
  %136 = load ptr, ptr %92, align 8, !tbaa !214
  %137 = getelementptr inbounds %struct.x264_frame, ptr %136, i64 0, i32 15
  %138 = load i32, ptr %137, align 4, !tbaa !219
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [10 x i8], ptr @num_clock_ts, i64 0, i64 %139
  %141 = load i8, ptr %140, align 1, !tbaa !137
  %142 = zext i8 %141 to i32
  %143 = icmp ult i32 %135, %142
  br i1 %143, label %121, label %144, !llvm.loop !220

144:                                              ; preds = %134, %116, %87
  tail call fastcc void @x264_sei_write(ptr noundef %1, ptr noundef %28)
  %145 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %146 = load i64, ptr %145, align 8, !tbaa !138
  %147 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %148 = load i32, ptr %147, align 8, !tbaa !136
  %149 = and i32 %148, 31
  %150 = zext nneg i32 %149 to i64
  %151 = shl i64 %146, %150
  %152 = trunc i64 %151 to i32
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %154 = load ptr, ptr %5, align 8, !tbaa !133
  store i32 %153, ptr %154, align 4, !tbaa !137
  %155 = load i32, ptr %147, align 8, !tbaa !136
  %156 = sdiv i32 %155, -8
  %157 = load ptr, ptr %5, align 8, !tbaa !133
  %158 = sext i32 %156 to i64
  %159 = getelementptr i8, ptr %157, i64 %158
  %160 = getelementptr i8, ptr %159, i64 8
  store ptr %160, ptr %5, align 8, !tbaa !133
  store i32 64, ptr %147, align 8, !tbaa !136
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_filler_write(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !133
  %6 = ptrtoint ptr %5 to i64
  %7 = trunc i64 %6 to i32
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %3
  %11 = and i64 %6, 3
  %12 = sub nsw i64 0, %11
  %13 = getelementptr inbounds i8, ptr %5, i64 %12
  store ptr %13, ptr %4, align 8, !tbaa !133
  %14 = trunc i64 %11 to i32
  %15 = shl nuw nsw i32 %14, 3
  %16 = sub nuw nsw i32 64, %15
  %17 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  store i32 %16, ptr %17, align 8, !tbaa !136
  %18 = load i32, ptr %13, align 4, !tbaa !137
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %22 = shl nuw nsw i32 %8, 3
  %23 = sub nuw nsw i32 32, %22
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %20, %24
  store i64 %25, ptr %21, align 8, !tbaa !138
  br label %26

26:                                               ; preds = %3, %10
  %27 = icmp sgt i32 %2, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %30 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  br label %79

31:                                               ; preds = %97, %26
  %32 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !138
  %34 = shl i64 %33, 1
  %35 = or disjoint i64 %34, 1
  store i64 %35, ptr %32, align 8, !tbaa !138
  %36 = getelementptr inbounds %struct.bs_s, ptr %1, i64 0, i32 4
  %37 = load i32, ptr %36, align 8, !tbaa !136
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr %36, align 8, !tbaa !136
  %39 = icmp eq i32 %38, 32
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  %41 = trunc i64 %35 to i32
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %42, ptr %43, align 4, !tbaa !137
  %44 = load ptr, ptr %4, align 8, !tbaa !133
  %45 = getelementptr inbounds i8, ptr %44, i64 4
  store ptr %45, ptr %4, align 8, !tbaa !133
  store i32 64, ptr %36, align 8, !tbaa !136
  br label %46

46:                                               ; preds = %40, %31
  %47 = load i32, ptr %36, align 8, !tbaa !136
  %48 = and i32 %47, 7
  %49 = load i64, ptr %32, align 8, !tbaa !138
  %50 = zext nneg i32 %48 to i64
  %51 = shl i64 %49, %50
  store i64 %51, ptr %32, align 8, !tbaa !138
  %52 = and i32 %47, -8
  store i32 %52, ptr %36, align 8, !tbaa !136
  %53 = icmp slt i32 %52, 33
  br i1 %53, label %54, label %64

54:                                               ; preds = %46
  %55 = zext nneg i32 %52 to i64
  %56 = tail call i64 @llvm.bswap.i64(i64 %51)
  %57 = lshr i64 %56, %55
  %58 = trunc i64 %57 to i32
  %59 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %58, ptr %59, align 4, !tbaa !137
  %60 = load i32, ptr %36, align 8, !tbaa !136
  %61 = add nsw i32 %60, 32
  store i32 %61, ptr %36, align 8, !tbaa !136
  %62 = load ptr, ptr %4, align 8, !tbaa !133
  %63 = getelementptr inbounds i8, ptr %62, i64 4
  store ptr %63, ptr %4, align 8, !tbaa !133
  br label %64

64:                                               ; preds = %46, %54
  %65 = load i64, ptr %32, align 8, !tbaa !138
  %66 = load i32, ptr %36, align 8, !tbaa !136
  %67 = and i32 %66, 31
  %68 = zext nneg i32 %67 to i64
  %69 = shl i64 %65, %68
  %70 = trunc i64 %69 to i32
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %72 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %71, ptr %72, align 4, !tbaa !137
  %73 = load i32, ptr %36, align 8, !tbaa !136
  %74 = sdiv i32 %73, -8
  %75 = load ptr, ptr %4, align 8, !tbaa !133
  %76 = sext i32 %74 to i64
  %77 = getelementptr i8, ptr %75, i64 %76
  %78 = getelementptr i8, ptr %77, i64 8
  store ptr %78, ptr %4, align 8, !tbaa !133
  store i32 64, ptr %36, align 8, !tbaa !136
  ret void

79:                                               ; preds = %28, %97
  %80 = phi i32 [ 0, %28 ], [ %98, %97 ]
  %81 = load i64, ptr %29, align 8, !tbaa !138
  %82 = shl i64 %81, 8
  %83 = or disjoint i64 %82, 255
  store i64 %83, ptr %29, align 8, !tbaa !138
  %84 = load i32, ptr %30, align 8, !tbaa !136
  %85 = add nsw i32 %84, -8
  store i32 %85, ptr %30, align 8, !tbaa !136
  %86 = icmp slt i32 %84, 41
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = zext nneg i32 %85 to i64
  %89 = shl i64 %83, %88
  %90 = tail call i64 @llvm.bswap.i64(i64 %89)
  %91 = trunc i64 %90 to i32
  %92 = load ptr, ptr %4, align 8, !tbaa !133
  store i32 %91, ptr %92, align 4, !tbaa !137
  %93 = load i32, ptr %30, align 8, !tbaa !136
  %94 = add nsw i32 %93, 32
  store i32 %94, ptr %30, align 8, !tbaa !136
  %95 = load ptr, ptr %4, align 8, !tbaa !133
  %96 = getelementptr inbounds i8, ptr %95, i64 4
  store ptr %96, ptr %4, align 8, !tbaa !133
  br label %97

97:                                               ; preds = %79, %87
  %98 = add nuw nsw i32 %80, 1
  %99 = icmp eq i32 %98, %2
  br i1 %99, label %31, label %79, !llvm.loop !221
}

; Function Attrs: nounwind uwtable
define dso_local i32 @x264_validate_levels(ptr noundef %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 16, !tbaa !193
  %5 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 4, !tbaa !73
  %7 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !75
  %9 = mul nsw i32 %8, %6
  %10 = mul nsw i32 %9, 384
  %11 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 30
  %12 = load i32, ptr %11, align 4, !tbaa !125
  %13 = mul nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !57
  %16 = icmp eq i32 %15, 100
  %17 = select i1 %16, i32 5, i32 4
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 16, !tbaa !222
  br label %20

20:                                               ; preds = %2, %24
  %21 = phi i32 [ 10, %2 ], [ %26, %24 ]
  %22 = phi ptr [ @x264_levels, %2 ], [ %25, %24 ]
  %23 = icmp eq i32 %21, %19
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.x264_level_t, ptr %22, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !223
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20, !llvm.loop !225

28:                                               ; preds = %24, %20
  %29 = phi ptr [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 15, i32 0), %24 ], [ %22, %20 ]
  %30 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !226
  %32 = icmp slt i32 %31, %9
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = shl nsw i32 %31, 3
  %35 = mul nsw i32 %6, %6
  %36 = icmp slt i32 %34, %35
  %37 = mul nsw i32 %8, %8
  %38 = icmp slt i32 %34, %37
  %39 = select i1 %36, i1 true, i1 %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33, %28
  %41 = icmp eq i32 %1, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef %8, i32 noundef %31) #12
  br label %43

43:                                               ; preds = %33, %40, %42
  %44 = phi i32 [ 1, %42 ], [ 1, %40 ], [ 0, %33 ]
  %45 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !227
  %47 = icmp sgt i32 %13, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = icmp eq i32 %1, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %3, align 16, !tbaa !193
  %52 = getelementptr inbounds %struct.x264_sps_t, ptr %51, i64 0, i32 24, i32 30
  %53 = load i32, ptr %52, align 4, !tbaa !125
  %54 = sdiv i32 %46, %10
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %53, i32 noundef %13, i32 noundef %54, i32 noundef %46) #12
  br label %55

55:                                               ; preds = %48, %50, %43
  %56 = phi i32 [ %44, %43 ], [ 1, %50 ], [ 1, %48 ]
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %58 = load i32, ptr %57, align 4, !tbaa !228
  %59 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !229
  %61 = mul nsw i32 %60, %17
  %62 = sdiv i32 %61, 4
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = icmp eq i32 %1, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %64
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %58, i32 noundef %62) #12
  br label %67

67:                                               ; preds = %64, %66, %55
  %68 = phi i32 [ %56, %55 ], [ 1, %66 ], [ 1, %64 ]
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %70 = load i32, ptr %69, align 8, !tbaa !230
  %71 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !231
  %73 = mul nsw i32 %72, %17
  %74 = sdiv i32 %73, 4
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = icmp eq i32 %1, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %70, i32 noundef %74) #12
  br label %79

79:                                               ; preds = %76, %78, %67
  %80 = phi i32 [ %68, %67 ], [ 1, %78 ], [ 1, %76 ]
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  %82 = load i32, ptr %81, align 4, !tbaa !232
  %83 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !233
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = icmp eq i32 %1, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %86
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %82, i32 noundef %84) #12
  br label %89

89:                                               ; preds = %86, %88, %79
  %90 = phi i32 [ %80, %79 ], [ 1, %88 ], [ 1, %86 ]
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %92 = load i32, ptr %91, align 8, !tbaa !234
  %93 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !235
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %89
  %99 = icmp eq i32 %1, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %98
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %92, i32 noundef %96) #12
  br label %101

101:                                              ; preds = %98, %100, %89
  %102 = phi i32 [ %90, %89 ], [ 1, %100 ], [ 1, %98 ]
  %103 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  %104 = load i32, ptr %103, align 8, !tbaa !236
  %105 = icmp sgt i32 %104, %96
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = icmp eq i32 %1, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %104, i32 noundef %96) #12
  br label %109

109:                                              ; preds = %106, %108, %101
  %110 = phi i32 [ %102, %101 ], [ 1, %108 ], [ 1, %106 ]
  %111 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %112 = load i32, ptr %111, align 16, !tbaa !237
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %130, label %114

114:                                              ; preds = %109
  %115 = sext i32 %9 to i64
  %116 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %117 = load i32, ptr %116, align 4, !tbaa !238
  %118 = zext i32 %117 to i64
  %119 = mul nsw i64 %118, %115
  %120 = zext i32 %112 to i64
  %121 = sdiv i64 %119, %120
  %122 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !239
  %124 = sext i32 %123 to i64
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %114
  %127 = icmp eq i32 %1, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %126
  %129 = trunc i64 %121 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %129, i32 noundef %123) #12
  br label %130

130:                                              ; preds = %126, %128, %114, %109
  %131 = phi i32 [ %110, %114 ], [ %110, %109 ], [ 1, %128 ], [ 1, %126 ]
  ret i32 %131
}

declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #11

attributes #0 = { nofree nounwind memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

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
!34 = !{!35, !36, i64 0}
!35 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !37, i64 52, !36, i64 1076, !36, i64 1080, !36, i64 1084, !36, i64 1088, !36, i64 1092, !36, i64 1096, !36, i64 1100, !36, i64 1104, !39, i64 1108, !36, i64 1124, !40, i64 1128, !36, i64 1296}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12}
!40 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !41, i64 84, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !36, i64 148, !36, i64 152, !36, i64 156, !36, i64 160, !36, i64 164}
!41 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44}
!42 = !{!43, !36, i64 488}
!43 = !{!"x264_param_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !44, i64 44, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !36, i64 96, !36, i64 100, !36, i64 104, !36, i64 108, !36, i64 112, !36, i64 116, !36, i64 120, !36, i64 124, !36, i64 128, !36, i64 132, !36, i64 136, !36, i64 140, !36, i64 144, !45, i64 152, !37, i64 160, !37, i64 176, !37, i64 192, !37, i64 208, !37, i64 224, !37, i64 288, !45, i64 352, !45, i64 360, !36, i64 368, !36, i64 372, !45, i64 376, !46, i64 384, !48, i64 488, !36, i64 632, !36, i64 636, !36, i64 640, !36, i64 644, !36, i64 648, !36, i64 652, !36, i64 656, !36, i64 660, !36, i64 664, !36, i64 668, !36, i64 672, !36, i64 676, !36, i64 680, !36, i64 684, !36, i64 688, !36, i64 692, !45, i64 696}
!44 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !47, i64 72, !47, i64 76, !36, i64 80, !37, i64 84, !36, i64 92, !36, i64 96}
!47 = !{!"float", !37, i64 0}
!48 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !47, i64 24, !47, i64 28, !47, i64 32, !36, i64 36, !36, i64 40, !47, i64 44, !47, i64 48, !47, i64 52, !36, i64 56, !47, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !45, i64 80, !36, i64 88, !45, i64 96, !47, i64 104, !47, i64 108, !47, i64 112, !45, i64 120, !36, i64 128, !45, i64 136}
!49 = !{!43, !36, i64 492}
!50 = !{!35, !36, i64 1296}
!51 = !{!43, !36, i64 392}
!52 = !{!43, !36, i64 144}
!53 = !{!43, !36, i64 128}
!54 = !{!43, !36, i64 100}
!55 = !{!43, !36, i64 136}
!56 = !{!43, !36, i64 396}
!57 = !{!35, !36, i64 4}
!58 = !{!43, !36, i64 32}
!59 = !{!35, !36, i64 8}
!60 = !{!35, !36, i64 12}
!61 = !{!35, !36, i64 16}
!62 = !{!35, !36, i64 20}
!63 = !{!43, !36, i64 84}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!35, !36, i64 24}
!68 = !{!35, !36, i64 28}
!69 = !{!35, !36, i64 32}
!70 = !{!35, !36, i64 1124}
!71 = !{!35, !36, i64 1080}
!72 = !{!43, !36, i64 20}
!73 = !{!35, !36, i64 1084}
!74 = !{!43, !36, i64 24}
!75 = !{!35, !36, i64 1088}
!76 = !{!43, !36, i64 680}
!77 = !{!35, !36, i64 1092}
!78 = !{!35, !36, i64 1096}
!79 = !{!35, !36, i64 1100}
!80 = !{!35, !36, i64 1108}
!81 = !{!35, !36, i64 1116}
!82 = !{!35, !36, i64 1112}
!83 = !{!35, !36, i64 1120}
!84 = !{!35, !36, i64 1104}
!85 = !{!35, !36, i64 1128}
!86 = !{!43, !36, i64 48}
!87 = !{!43, !36, i64 44}
!88 = !{!35, !36, i64 1132}
!89 = !{!35, !36, i64 1136}
!90 = !{!43, !36, i64 52}
!91 = !{!35, !36, i64 1140}
!92 = !{!35, !36, i64 1144}
!93 = !{!35, !36, i64 1148}
!94 = !{!43, !36, i64 56}
!95 = !{!35, !36, i64 1152}
!96 = !{!43, !36, i64 60}
!97 = !{!35, !36, i64 1156}
!98 = !{!35, !36, i64 1160}
!99 = !{!43, !36, i64 64}
!100 = !{!35, !36, i64 1164}
!101 = !{!43, !36, i64 68}
!102 = !{!35, !36, i64 1168}
!103 = !{!43, !36, i64 72}
!104 = !{!35, !36, i64 1172}
!105 = !{!43, !36, i64 76}
!106 = !{!35, !36, i64 1176}
!107 = !{!35, !36, i64 1180}
!108 = !{!35, !36, i64 1184}
!109 = !{!43, !36, i64 660}
!110 = !{!43, !36, i64 664}
!111 = !{!35, !36, i64 1188}
!112 = !{!35, !36, i64 1192}
!113 = !{!35, !36, i64 1196}
!114 = !{!43, !36, i64 648}
!115 = !{!35, !36, i64 1200}
!116 = !{!35, !36, i64 1208}
!117 = !{!43, !36, i64 40}
!118 = !{!35, !36, i64 1204}
!119 = !{!43, !36, i64 676}
!120 = !{!35, !36, i64 1260}
!121 = !{!43, !36, i64 112}
!122 = !{!35, !36, i64 1288}
!123 = !{!43, !36, i64 80}
!124 = !{!35, !36, i64 1076}
!125 = !{!35, !36, i64 1292}
!126 = !{!35, !36, i64 1264}
!127 = !{!35, !36, i64 1268}
!128 = !{!35, !36, i64 1272}
!129 = !{!35, !36, i64 1276}
!130 = !{!43, !36, i64 420}
!131 = !{!35, !36, i64 1284}
!132 = !{!35, !36, i64 1280}
!133 = !{!134, !45, i64 8}
!134 = !{!"bs_s", !45, i64 0, !45, i64 8, !45, i64 16, !135, i64 24, !36, i64 32, !36, i64 36}
!135 = !{!"long", !37, i64 0}
!136 = !{!134, !36, i64 32}
!137 = !{!37, !37, i64 0}
!138 = !{!134, !135, i64 24}
!139 = !{!35, !36, i64 36}
!140 = !{!35, !36, i64 40}
!141 = !{!35, !36, i64 44}
!142 = !{!35, !36, i64 48}
!143 = !{!36, !36, i64 0}
!144 = distinct !{!144, !65, !66}
!145 = !{!146, !37, i64 0}
!146 = !{!"", !37, i64 0, !37, i64 1, !37, i64 2}
!147 = !{!146, !37, i64 1}
!148 = distinct !{!148, !65, !66}
!149 = !{!146, !37, i64 2}
!150 = !{!35, !36, i64 1212}
!151 = !{!35, !36, i64 1216}
!152 = !{!35, !36, i64 1220}
!153 = !{!35, !36, i64 1224}
!154 = !{!35, !36, i64 1228}
!155 = !{!35, !36, i64 1240}
!156 = !{!35, !36, i64 1244}
!157 = !{!35, !36, i64 1248}
!158 = !{!35, !36, i64 1252}
!159 = !{!35, !36, i64 1256}
!160 = !{!161, !36, i64 0}
!161 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !37, i64 72}
!162 = !{!161, !36, i64 4}
!163 = !{!161, !36, i64 8}
!164 = !{!161, !36, i64 12}
!165 = !{!161, !36, i64 16}
!166 = !{!161, !36, i64 20}
!167 = !{!161, !36, i64 24}
!168 = !{!161, !36, i64 28}
!169 = !{!43, !36, i64 400}
!170 = !{!161, !36, i64 32}
!171 = !{!161, !36, i64 36}
!172 = !{!161, !36, i64 40}
!173 = !{!43, !36, i64 408}
!174 = !{!161, !36, i64 44}
!175 = !{!161, !36, i64 48}
!176 = !{!43, !36, i64 140}
!177 = !{!161, !36, i64 52}
!178 = !{!161, !36, i64 56}
!179 = !{!161, !36, i64 60}
!180 = !{!161, !36, i64 64}
!181 = !{!45, !45, i64 0}
!182 = distinct !{!182, !65, !66}
!183 = distinct !{!183, !65, !66}
!184 = distinct !{!184, !65, !66}
!185 = distinct !{!185, !65, !66}
!186 = distinct !{!186, !65, !66}
!187 = distinct !{!187, !65, !66}
!188 = distinct !{!188, !65, !66}
!189 = distinct !{!189, !65, !66}
!190 = distinct !{!190, !65, !66}
!191 = distinct !{!191, !65, !66}
!192 = distinct !{!192, !65, !66}
!193 = !{!194, !45, i64 3200}
!194 = !{!"x264_t", !43, i64 0, !37, i64 704, !36, i64 1736, !36, i64 1740, !36, i64 1744, !36, i64 1748, !36, i64 1752, !195, i64 1760, !45, i64 1832, !36, i64 1840, !36, i64 1844, !36, i64 1848, !36, i64 1852, !36, i64 1856, !36, i64 1860, !36, i64 1864, !36, i64 1868, !36, i64 1872, !36, i64 1876, !36, i64 1880, !36, i64 1884, !36, i64 1888, !36, i64 1892, !37, i64 1896, !45, i64 3200, !37, i64 3208, !45, i64 3328, !36, i64 3336, !36, i64 3340, !37, i64 3344, !37, i64 3376, !37, i64 3392, !37, i64 3424, !37, i64 3440, !37, i64 3472, !37, i64 3488, !37, i64 3520, !37, i64 3536, !37, i64 4272, !45, i64 7216, !196, i64 7232, !197, i64 13904, !198, i64 14416, !45, i64 14680, !45, i64 14688, !36, i64 14696, !37, i64 14704, !36, i64 14856, !37, i64 14864, !37, i64 15016, !36, i64 15024, !36, i64 15028, !135, i64 15032, !199, i64 15040, !200, i64 16368, !45, i64 26704, !203, i64 26712, !37, i64 30400, !37, i64 30912, !37, i64 31168, !45, i64 31176, !37, i64 31184, !37, i64 31232, !37, i64 31248, !37, i64 31304, !37, i64 31360, !37, i64 31456, !45, i64 31552, !206, i64 31560, !207, i64 32616, !208, i64 32912, !209, i64 33032, !210, i64 33080, !211, i64 33256, !45, i64 33328}
!195 = !{!"", !36, i64 0, !36, i64 4, !45, i64 8, !36, i64 16, !45, i64 24, !134, i64 32}
!196 = !{!"", !45, i64 0, !45, i64 8, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !37, i64 60, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !36, i64 84, !36, i64 88, !36, i64 92, !37, i64 96, !37, i64 352, !36, i64 6496, !36, i64 6500, !37, i64 6504, !36, i64 6632, !36, i64 6636, !36, i64 6640, !36, i64 6644, !36, i64 6648, !36, i64 6652, !36, i64 6656, !36, i64 6660}
!197 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !45, i64 16, !45, i64 24, !45, i64 32, !36, i64 48, !37, i64 52}
!198 = !{!"", !45, i64 0, !37, i64 8, !45, i64 24, !37, i64 32, !36, i64 176, !36, i64 180, !36, i64 184, !36, i64 188, !36, i64 192, !36, i64 196, !36, i64 200, !135, i64 208, !135, i64 216, !37, i64 224, !135, i64 240, !135, i64 248, !36, i64 256, !36, i64 260}
!199 = !{!"", !37, i64 0, !37, i64 32, !37, i64 48, !37, i64 560}
!200 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48, !36, i64 52, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !37, i64 72, !37, i64 80, !37, i64 88, !37, i64 96, !37, i64 104, !37, i64 112, !36, i64 120, !37, i64 124, !37, i64 140, !36, i64 204, !36, i64 208, !36, i64 212, !36, i64 216, !36, i64 220, !36, i64 224, !36, i64 228, !36, i64 232, !36, i64 236, !36, i64 240, !36, i64 244, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288, !45, i64 296, !37, i64 304, !37, i64 320, !37, i64 336, !37, i64 352, !45, i64 864, !45, i64 872, !45, i64 880, !37, i64 888, !36, i64 1016, !36, i64 1020, !37, i64 1024, !36, i64 1028, !36, i64 1032, !36, i64 1036, !36, i64 1040, !36, i64 1044, !36, i64 1048, !36, i64 1052, !36, i64 1056, !36, i64 1060, !201, i64 1072, !202, i64 8656, !36, i64 9424, !36, i64 9428, !36, i64 9432, !36, i64 9436, !36, i64 9440, !36, i64 9444, !36, i64 9448, !36, i64 9452, !37, i64 9456, !36, i64 9472, !36, i64 9476, !37, i64 9480, !45, i64 9992, !37, i64 10000, !45, i64 10256, !37, i64 10264, !36, i64 10284, !37, i64 10288}
!201 = !{!"", !37, i64 0, !37, i64 384, !37, i64 1248, !37, i64 1504, !37, i64 1760, !37, i64 2144, !37, i64 2624, !37, i64 2640, !36, i64 2656, !36, i64 2660, !37, i64 2672, !37, i64 3184, !37, i64 3696, !37, i64 3776, !37, i64 3904, !37, i64 3928, !37, i64 3952, !37, i64 3976, !37, i64 3984, !37, i64 7056, !37, i64 7312, !37, i64 7568}
!202 = !{!"", !37, i64 0, !37, i64 48, !37, i64 96, !37, i64 176, !37, i64 496, !37, i64 656, !37, i64 696, !37, i64 728, !36, i64 736, !37, i64 740, !36, i64 744, !36, i64 748, !36, i64 752, !36, i64 756}
!203 = !{!"", !204, i64 0, !37, i64 704, !37, i64 728, !37, i64 768, !37, i64 808, !37, i64 880, !37, i64 920, !37, i64 960, !37, i64 1000, !37, i64 1040, !37, i64 1080, !37, i64 1120, !37, i64 1880, !37, i64 2152, !37, i64 2168, !37, i64 3192, !37, i64 3240, !37, i64 3656, !37, i64 3664, !37, i64 3672}
!204 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !37, i64 12, !36, i64 88, !36, i64 92, !36, i64 96, !37, i64 100, !37, i64 108, !37, i64 364, !37, i64 432, !37, i64 456, !37, i64 664, !37, i64 672, !205, i64 696}
!205 = !{!"double", !37, i64 0}
!206 = !{!"", !37, i64 0, !37, i64 56, !37, i64 112, !37, i64 168, !37, i64 224, !37, i64 256, !37, i64 312, !37, i64 368, !37, i64 424, !37, i64 480, !37, i64 536, !45, i64 592, !37, i64 600, !37, i64 632, !45, i64 664, !45, i64 672, !37, i64 680, !37, i64 736, !37, i64 792, !37, i64 848, !37, i64 904, !45, i64 960, !45, i64 968, !45, i64 976, !45, i64 984, !45, i64 992, !45, i64 1000, !45, i64 1008, !45, i64 1016, !45, i64 1024, !45, i64 1032, !45, i64 1040, !45, i64 1048}
!207 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !37, i64 24, !37, i64 104, !45, i64 160, !45, i64 168, !45, i64 176, !45, i64 184, !45, i64 192, !45, i64 200, !45, i64 208, !45, i64 216, !45, i64 224, !45, i64 232, !45, i64 240, !45, i64 248, !45, i64 256, !45, i64 264, !45, i64 272, !45, i64 280, !45, i64 288}
!208 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !45, i64 88, !45, i64 96, !45, i64 104, !45, i64 112}
!209 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40}
!210 = !{!"", !45, i64 0, !45, i64 8, !45, i64 16, !45, i64 24, !45, i64 32, !45, i64 40, !45, i64 48, !45, i64 56, !45, i64 64, !45, i64 72, !45, i64 80, !37, i64 88, !37, i64 136}
!211 = !{!"", !37, i64 0, !37, i64 16, !37, i64 32, !37, i64 48, !45, i64 64}
!212 = !{!194, !36, i64 15024}
!213 = !{!194, !36, i64 15028}
!214 = !{!194, !45, i64 14680}
!215 = !{!216, !36, i64 40}
!216 = !{!"x264_frame", !36, i64 0, !36, i64 4, !36, i64 8, !135, i64 16, !135, i64 24, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !45, i64 48, !36, i64 56, !36, i64 60, !36, i64 64, !36, i64 68, !36, i64 72, !36, i64 76, !36, i64 80, !37, i64 84, !37, i64 85, !37, i64 86, !47, i64 88, !47, i64 92, !36, i64 96, !36, i64 100, !37, i64 104, !37, i64 116, !37, i64 128, !36, i64 140, !36, i64 144, !36, i64 148, !37, i64 152, !37, i64 176, !37, i64 208, !45, i64 240, !37, i64 248, !37, i64 280, !37, i64 320, !37, i64 3392, !36, i64 3520, !45, i64 3528, !45, i64 3536, !45, i64 3544, !37, i64 3552, !45, i64 3568, !37, i64 3576, !37, i64 3848, !37, i64 6440, !37, i64 6712, !37, i64 6728, !37, i64 6736, !37, i64 6864, !37, i64 6868, !37, i64 8164, !36, i64 9460, !37, i64 9464, !37, i64 9536, !45, i64 12128, !45, i64 12136, !45, i64 12144, !45, i64 12152, !45, i64 12160, !36, i64 12168, !45, i64 12176, !45, i64 12184, !45, i64 12192, !36, i64 12200, !37, i64 12204, !36, i64 12276, !135, i64 12280, !217, i64 12288, !37, i64 12320, !37, i64 12572, !37, i64 13576, !36, i64 15584, !36, i64 15588, !36, i64 15592, !36, i64 15596, !36, i64 15600, !36, i64 15604, !36, i64 15608, !47, i64 15612, !36, i64 15616, !36, i64 15620, !36, i64 15624}
!217 = !{!"", !205, i64 0, !205, i64 8, !205, i64 16, !205, i64 24}
!218 = !{!216, !36, i64 44}
!219 = !{!216, !36, i64 76}
!220 = distinct !{!220, !65, !66}
!221 = distinct !{!221, !65, !66}
!222 = !{!194, !36, i64 32}
!223 = !{!224, !36, i64 0}
!224 = !{!"", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !36, i64 16, !36, i64 20, !36, i64 24, !36, i64 28, !36, i64 32, !36, i64 36, !36, i64 40, !36, i64 44, !36, i64 48}
!225 = distinct !{!225, !65, !66}
!226 = !{!224, !36, i64 8}
!227 = !{!224, !36, i64 12}
!228 = !{!194, !36, i64 524}
!229 = !{!224, !36, i64 16}
!230 = !{!194, !36, i64 528}
!231 = !{!224, !36, i64 20}
!232 = !{!194, !36, i64 420}
!233 = !{!224, !36, i64 24}
!234 = !{!194, !36, i64 136}
!235 = !{!224, !36, i64 48}
!236 = !{!194, !36, i64 680}
!237 = !{!194, !36, i64 656}
!238 = !{!194, !36, i64 652}
!239 = !{!224, !36, i64 4}
