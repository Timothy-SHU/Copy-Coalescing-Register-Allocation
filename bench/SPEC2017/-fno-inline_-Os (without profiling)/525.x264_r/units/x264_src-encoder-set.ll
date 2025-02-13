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

; Function Attrs: nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable
define dso_local void @x264_sps_init(ptr noundef writeonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  store i32 %1, ptr %0, align 4, !tbaa !5
  %4 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42
  %5 = load i32, ptr %4, align 8, !tbaa !13
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !20
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 25
  store i32 %11, ptr %12, align 4, !tbaa !21
  br i1 %10, label %41, label %15

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 25
  store i32 0, ptr %14, align 4, !tbaa !21
  br label %15

15:                                               ; preds = %13, %7
  %16 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !22
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28
  %21 = load i32, ptr %20, align 8, !tbaa !23
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 24
  %25 = load i32, ptr %24, align 8, !tbaa !24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 17
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %33 = load i32, ptr %32, align 8, !tbaa !26
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !27
  %38 = icmp slt i32 %37, 1
  %39 = select i1 %38, i32 66, i32 77
  %40 = zext i1 %38 to i32
  br label %41

41:                                               ; preds = %35, %23, %27, %31, %15, %19, %7
  %42 = phi i32 [ 244, %7 ], [ 100, %19 ], [ 100, %15 ], [ 77, %31 ], [ 77, %27 ], [ 77, %23 ], [ %39, %35 ]
  %43 = phi i32 [ 0, %7 ], [ 0, %19 ], [ 0, %15 ], [ 0, %31 ], [ 0, %27 ], [ 0, %23 ], [ %40, %35 ]
  %44 = phi i32 [ 0, %7 ], [ 0, %19 ], [ 0, %15 ], [ 1, %31 ], [ 1, %27 ], [ 1, %23 ], [ 1, %35 ]
  %45 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 1
  store i32 %42, ptr %45, align 4, !tbaa !28
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 8
  %47 = load i32, ptr %46, align 8, !tbaa !29
  %48 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 2
  store i32 %47, ptr %48, align 4, !tbaa !30
  %49 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 3
  store i32 %43, ptr %49, align 4, !tbaa !31
  %50 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 4
  store i32 %44, ptr %50, align 4, !tbaa !32
  %51 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 5
  store i32 0, ptr %51, align 4, !tbaa !33
  %52 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 13
  %53 = load i32, ptr %52, align 4, !tbaa !34
  br label %54

54:                                               ; preds = %54, %41
  %55 = phi i32 [ 4, %41 ], [ %60, %54 ]
  %56 = shl nuw nsw i32 1, %55
  %57 = icmp sle i32 %56, %53
  %58 = icmp ult i32 %55, 10
  %59 = and i1 %58, %57
  %60 = add nuw nsw i32 %55, 1
  br i1 %59, label %54, label %61, !llvm.loop !35

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 6
  store i32 %60, ptr %62, align 4, !tbaa !37
  %63 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 7
  store i32 0, ptr %63, align 4, !tbaa !38
  %64 = add nuw nsw i32 %55, 2
  %65 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 8
  store i32 %64, ptr %65, align 4, !tbaa !39
  %66 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 23
  store i32 1, ptr %66, align 4, !tbaa !40
  %67 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 15
  store i32 0, ptr %67, align 4, !tbaa !41
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 5
  %69 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 16
  %70 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 17
  %71 = load <2 x i32>, ptr %68, align 4, !tbaa !42
  %72 = add nsw <2 x i32> %71, <i32 15, i32 15>
  %73 = sdiv <2 x i32> %72, <i32 16, i32 16>
  store <2 x i32> %73, ptr %69, align 4, !tbaa !42
  %74 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %75 = load i32, ptr %74, align 8, !tbaa !26
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %61
  %78 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 18
  store i32 0, ptr %78, align 4, !tbaa !43
  br label %86

79:                                               ; preds = %61
  %80 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 55
  %81 = load i32, ptr %80, align 8, !tbaa !44
  %82 = icmp eq i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 18
  store i32 %83, ptr %84, align 4, !tbaa !43
  %85 = extractelement <2 x i32> %73, i64 1
  br i1 %82, label %90, label %86

86:                                               ; preds = %77, %79
  %87 = extractelement <2 x i32> %73, i64 1
  %88 = add nsw i32 %87, 1
  %89 = and i32 %88, -2
  store i32 %89, ptr %70, align 4, !tbaa !45
  br label %90

90:                                               ; preds = %79, %86
  %91 = phi i32 [ %89, %86 ], [ %85, %79 ]
  %92 = phi i32 [ 1, %86 ], [ 0, %79 ]
  %93 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 19
  store i32 %75, ptr %93, align 4, !tbaa !46
  %94 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 20
  store i32 1, ptr %94, align 4, !tbaa !47
  %95 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22
  store i32 0, ptr %95, align 4, !tbaa !48
  %96 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 2
  store i32 0, ptr %96, align 4, !tbaa !49
  %97 = extractelement <2 x i32> %73, i64 0
  %98 = shl nsw i32 %97, 4
  %99 = extractelement <2 x i32> %71, i64 0
  %100 = sub nsw i32 %98, %99
  %101 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 1
  store i32 %100, ptr %101, align 4, !tbaa !50
  %102 = shl nsw i32 %91, 4
  %103 = extractelement <2 x i32> %71, i64 1
  %104 = sub nsw i32 %102, %103
  %105 = ashr i32 %104, %92
  %106 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 22, i32 3
  store i32 %105, ptr %106, align 4, !tbaa !51
  %107 = icmp ne i32 %98, %99
  %108 = icmp ne i32 %105, 0
  %109 = select i1 %107, i1 true, i1 %108
  %110 = zext i1 %109 to i32
  %111 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 21
  store i32 %110, ptr %111, align 4, !tbaa !52
  %112 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24
  store i32 0, ptr %112, align 4, !tbaa !53
  %113 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 1
  %114 = load i32, ptr %113, align 4, !tbaa !54
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %90
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11
  %118 = load i32, ptr %117, align 4, !tbaa !55
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  store i32 1, ptr %112, align 4, !tbaa !53
  %121 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 1
  store i32 %114, ptr %121, align 4, !tbaa !56
  %122 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 2
  store i32 %118, ptr %122, align 4, !tbaa !57
  br label %123

123:                                              ; preds = %120, %116, %90
  %124 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 2
  %125 = load i32, ptr %124, align 4, !tbaa !58
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 3
  store i32 %127, ptr %128, align 4, !tbaa !59
  br i1 %126, label %129, label %133

129:                                              ; preds = %123
  %130 = icmp eq i32 %125, 2
  %131 = zext i1 %130 to i32
  %132 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 4
  store i32 %131, ptr %132, align 4, !tbaa !60
  br label %133

133:                                              ; preds = %129, %123
  %134 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 5
  store i32 0, ptr %134, align 4, !tbaa !61
  %135 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 3
  %136 = load i32, ptr %135, align 4, !tbaa !62
  %137 = tail call i32 @llvm.smin.i32(i32 %136, i32 5)
  %138 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 6
  store i32 %137, ptr %138, align 4, !tbaa !63
  %139 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 4
  %140 = load i32, ptr %139, align 4, !tbaa !64
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i32
  %143 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 7
  store i32 %142, ptr %143, align 4, !tbaa !65
  %144 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 8
  store i32 0, ptr %144, align 4, !tbaa !66
  %145 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 5
  %146 = load i32, ptr %145, align 4, !tbaa !67
  %147 = icmp slt i32 %146, 10
  %148 = select i1 %147, i32 %146, i32 2
  %149 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 9
  store i32 %148, ptr %149, align 4, !tbaa !68
  %150 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 6
  %151 = load i32, ptr %150, align 4, !tbaa !69
  %152 = icmp slt i32 %151, 12
  %153 = select i1 %152, i32 %151, i32 2
  %154 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 10
  store i32 %153, ptr %154, align 4, !tbaa !70
  %155 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 7
  %156 = load i32, ptr %155, align 4, !tbaa !71
  %157 = icmp slt i32 %156, 10
  %158 = select i1 %157, i32 %156, i32 2
  %159 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 11
  store i32 %158, ptr %159, align 4, !tbaa !72
  %160 = icmp eq i32 %148, 2
  br i1 %160, label %161, label %168

161:                                              ; preds = %133
  %162 = icmp eq i32 %153, 2
  %163 = icmp eq i32 %158, 2
  %164 = select i1 %162, i1 %163, i1 false
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = icmp slt i32 %136, 5
  %167 = select i1 %166, i1 true, i1 %141
  br i1 %167, label %169, label %170

168:                                              ; preds = %133, %161
  store i32 1, ptr %144, align 4, !tbaa !66
  br label %169

169:                                              ; preds = %168, %165
  store i32 1, ptr %134, align 4, !tbaa !61
  br label %170

170:                                              ; preds = %165, %169
  %171 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 11, i32 8
  %172 = load i32, ptr %171, align 4, !tbaa !73
  %173 = icmp ne i32 %172, 0
  %174 = zext i1 %173 to i32
  %175 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 12
  store i32 %174, ptr %175, align 4, !tbaa !74
  br i1 %173, label %176, label %179

176:                                              ; preds = %170
  %177 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 13
  store i32 %172, ptr %177, align 4, !tbaa !75
  %178 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 14
  store i32 %172, ptr %178, align 4, !tbaa !76
  br label %179

179:                                              ; preds = %176, %170
  %180 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 50
  %181 = load i32, ptr %180, align 4, !tbaa !77
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %198, label %183

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 51
  %185 = load i32, ptr %184, align 8, !tbaa !78
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 15
  store i32 %187, ptr %188, align 4, !tbaa !79
  br i1 %186, label %189, label %200

189:                                              ; preds = %183
  %190 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 16
  store i32 %181, ptr %190, align 4, !tbaa !80
  %191 = shl i32 %185, 1
  %192 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 17
  store i32 %191, ptr %192, align 4, !tbaa !81
  %193 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 47
  %194 = load i32, ptr %193, align 8, !tbaa !82
  %195 = icmp eq i32 %194, 0
  %196 = zext i1 %195 to i32
  %197 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 18
  store i32 %196, ptr %197, align 4, !tbaa !83
  br label %200

198:                                              ; preds = %179
  %199 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 15
  store i32 0, ptr %199, align 4, !tbaa !79
  br label %200

200:                                              ; preds = %198, %189, %183
  %201 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 20
  store i32 0, ptr %201, align 4, !tbaa !84
  %202 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 10
  %203 = load i32, ptr %202, align 8, !tbaa !85
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i32
  %206 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 19
  store i32 %205, ptr %206, align 4, !tbaa !86
  %207 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 54
  %208 = load i32, ptr %207, align 4, !tbaa !87
  %209 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 22
  store i32 %208, ptr %209, align 4, !tbaa !88
  %210 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 20
  %211 = load i32, ptr %210, align 8, !tbaa !89
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %200
  %214 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 17
  %215 = load i32, ptr %214, align 4, !tbaa !25
  %216 = icmp ne i32 %215, 0
  %217 = zext i1 %216 to i32
  br label %218

218:                                              ; preds = %200, %213
  %219 = phi i32 [ 1, %213 ], [ 4, %200 ]
  %220 = phi i32 [ %217, %213 ], [ 2, %200 ]
  %221 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 29
  store i32 %220, ptr %221, align 4, !tbaa !90
  %222 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 12
  %223 = load i32, ptr %222, align 8, !tbaa !91
  %224 = icmp ult i32 %220, %219
  %225 = add nuw nsw i32 %220, 1
  %226 = select i1 %224, i32 %219, i32 %225
  %227 = icmp sgt i32 %223, %226
  %228 = icmp ugt i32 %223, 16
  %229 = and i1 %227, %228
  %230 = tail call i32 @llvm.smax.i32(i32 %223, i32 %226)
  %231 = select i1 %229, i32 16, i32 %230
  %232 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 14
  %233 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 30
  store i32 %231, ptr %233, align 4, !tbaa !92
  %234 = icmp eq i32 %211, 1
  %235 = sext i1 %234 to i32
  %236 = add nsw i32 %231, %235
  store i32 %236, ptr %232, align 4, !tbaa !93
  %237 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 23
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %237, align 4, !tbaa !42
  %238 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 9
  %239 = load i32, ptr %238, align 4, !tbaa !94
  %240 = icmp slt i32 %239, 1
  %241 = shl nsw i32 %239, 2
  %242 = add nsw i32 %241, -1
  %243 = sitofp i32 %242 to float
  %244 = select i1 %240, float 1.000000e+00, float %243
  %245 = tail call float @log2f(float noundef %244) #16
  %246 = fptosi float %245 to i32
  %247 = add nsw i32 %246, 1
  %248 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 28
  store i32 %247, ptr %248, align 4, !tbaa !95
  %249 = getelementptr inbounds %struct.x264_sps_t, ptr %0, i64 0, i32 24, i32 27
  store i32 %247, ptr %249, align 4, !tbaa !96
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare float @log2f(float noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sps_write(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  tail call fastcc void @bs_realign(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !28
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %4) #17
  %5 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !31
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %6) #17
  %7 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 4
  %8 = load i32, ptr %7, align 4, !tbaa !32
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %8) #17
  %9 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 5
  %10 = load i32, ptr %9, align 4, !tbaa !33
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %10) #17
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 5, i32 noundef 0) #17
  %11 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !30
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %12) #17
  %13 = load i32, ptr %1, align 4, !tbaa !5
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %13) #17
  %14 = load i32, ptr %3, align 4, !tbaa !28
  %15 = icmp sgt i32 %14, 99
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 1) #17
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 0) #17
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef 0) #17
  %17 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 25
  %18 = load i32, ptr %17, align 4, !tbaa !21
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %18) #17
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef 0) #17
  br label %19

19:                                               ; preds = %16, %2
  %20 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 6
  %21 = load i32, ptr %20, align 4, !tbaa !37
  %22 = add nsw i32 %21, -4
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %22) #17
  %23 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 7
  %24 = load i32, ptr %23, align 4, !tbaa !38
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %24) #17
  %25 = load i32, ptr %23, align 4, !tbaa !38
  switch i32 %25, label %49 [
    i32 0, label %26
    i32 1, label %30
  ]

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !39
  %29 = add nsw i32 %28, -4
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %29) #17
  br label %49

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 9
  %32 = load i32, ptr %31, align 4, !tbaa !97
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %32) #17
  %33 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 10
  %34 = load i32, ptr %33, align 4, !tbaa !98
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %34) #17
  %35 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 11
  %36 = load i32, ptr %35, align 4, !tbaa !99
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %36) #17
  %37 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 12
  %38 = load i32, ptr %37, align 4, !tbaa !100
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %38) #17
  %39 = load i32, ptr %37, align 4, !tbaa !100
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %30, %41
  %42 = phi i64 [ %45, %41 ], [ 0, %30 ]
  %43 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 13, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !42
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %44) #17
  %45 = add nuw nsw i64 %42, 1
  %46 = load i32, ptr %37, align 4, !tbaa !100
  %47 = sext i32 %46 to i64
  %48 = icmp slt i64 %45, %47
  br i1 %48, label %41, label %49, !llvm.loop !101

49:                                               ; preds = %41, %30, %19, %26
  %50 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 14
  %51 = load i32, ptr %50, align 4, !tbaa !93
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %51) #17
  %52 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 15
  %53 = load i32, ptr %52, align 4, !tbaa !41
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %53) #17
  %54 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 16
  %55 = load i32, ptr %54, align 4, !tbaa !102
  %56 = add nsw i32 %55, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %56) #17
  %57 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 18
  %58 = load i32, ptr %57, align 4, !tbaa !43
  %59 = icmp eq i32 %58, 0
  %60 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 17
  %61 = load i32, ptr %60, align 4, !tbaa !45
  %62 = sdiv i32 %61, 2
  %63 = select i1 %59, i32 %62, i32 %61
  %64 = add nsw i32 %63, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %64) #17
  %65 = load i32, ptr %57, align 4, !tbaa !43
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %65) #17
  %66 = load i32, ptr %57, align 4, !tbaa !43
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %49
  %69 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 19
  %70 = load i32, ptr %69, align 4, !tbaa !46
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %70) #17
  br label %71

71:                                               ; preds = %68, %49
  %72 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 20
  %73 = load i32, ptr %72, align 4, !tbaa !47
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %73) #17
  %74 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 21
  %75 = load i32, ptr %74, align 4, !tbaa !52
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %75) #17
  %76 = load i32, ptr %74, align 4, !tbaa !52
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %71
  %79 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22
  %80 = load i32, ptr %79, align 4, !tbaa !48
  %81 = sdiv i32 %80, 2
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %81) #17
  %82 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 1
  %83 = load i32, ptr %82, align 4, !tbaa !50
  %84 = sdiv i32 %83, 2
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %84) #17
  %85 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 2
  %86 = load i32, ptr %85, align 4, !tbaa !49
  %87 = sdiv i32 %86, 2
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %87) #17
  %88 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 22, i32 3
  %89 = load i32, ptr %88, align 4, !tbaa !51
  %90 = sdiv i32 %89, 2
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %90) #17
  br label %91

91:                                               ; preds = %78, %71
  %92 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 23
  %93 = load i32, ptr %92, align 4, !tbaa !40
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %93) #17
  %94 = load i32, ptr %92, align 4, !tbaa !40
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %241, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24
  %98 = load i32, ptr %97, align 4, !tbaa !53
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %98) #17
  %99 = load i32, ptr %97, align 4, !tbaa !53
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %127, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !56
  %104 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 2
  br label %105

105:                                              ; preds = %101, %117
  %106 = phi i64 [ 0, %101 ], [ %118, %117 ]
  %107 = getelementptr inbounds [14 x %struct.anon.5], ptr @x264_sps_write.sar, i64 0, i64 %106
  %108 = load i8, ptr %107, align 1, !tbaa !103
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %103, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = getelementptr inbounds [14 x %struct.anon.5], ptr @x264_sps_write.sar, i64 0, i64 %106, i32 1
  %113 = load i8, ptr %112, align 1, !tbaa !105
  %114 = zext i8 %113 to i32
  %115 = load i32, ptr %104, align 4, !tbaa !57
  %116 = icmp eq i32 %115, %114
  br i1 %116, label %120, label %117

117:                                              ; preds = %105, %111
  %118 = add nuw nsw i64 %106, 1
  %119 = icmp eq i64 %118, 13
  br i1 %119, label %124, label %105, !llvm.loop !106

120:                                              ; preds = %111
  %121 = getelementptr inbounds [14 x %struct.anon.5], ptr @x264_sps_write.sar, i64 0, i64 %106, i32 2
  %122 = load i8, ptr %121, align 1, !tbaa !107
  %123 = zext i8 %122 to i32
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %123) #17
  br label %127

124:                                              ; preds = %117
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef 255) #17
  %125 = load i32, ptr %102, align 4, !tbaa !56
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 16, i32 noundef %125) #17
  %126 = load i32, ptr %104, align 4, !tbaa !57
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 16, i32 noundef %126) #17
  br label %127

127:                                              ; preds = %120, %124, %96
  %128 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 3
  %129 = load i32, ptr %128, align 4, !tbaa !59
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %129) #17
  %130 = load i32, ptr %128, align 4, !tbaa !59
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 4
  %134 = load i32, ptr %133, align 4, !tbaa !60
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %134) #17
  br label %135

135:                                              ; preds = %132, %127
  %136 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 5
  %137 = load i32, ptr %136, align 4, !tbaa !61
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %137) #17
  %138 = load i32, ptr %136, align 4, !tbaa !61
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 6
  %142 = load i32, ptr %141, align 4, !tbaa !63
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 3, i32 noundef %142) #17
  %143 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 7
  %144 = load i32, ptr %143, align 4, !tbaa !65
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %144) #17
  %145 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 8
  %146 = load i32, ptr %145, align 4, !tbaa !66
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %146) #17
  %147 = load i32, ptr %145, align 4, !tbaa !66
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %156, label %149

149:                                              ; preds = %140
  %150 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 9
  %151 = load i32, ptr %150, align 4, !tbaa !68
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %151) #17
  %152 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 10
  %153 = load i32, ptr %152, align 4, !tbaa !70
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %153) #17
  %154 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 11
  %155 = load i32, ptr %154, align 4, !tbaa !72
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %155) #17
  br label %156

156:                                              ; preds = %140, %149, %135
  %157 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 12
  %158 = load i32, ptr %157, align 4, !tbaa !74
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %158) #17
  %159 = load i32, ptr %157, align 4, !tbaa !74
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %166, label %161

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 13
  %163 = load i32, ptr %162, align 4, !tbaa !75
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %163) #17
  %164 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 14
  %165 = load i32, ptr %164, align 4, !tbaa !76
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %165) #17
  br label %166

166:                                              ; preds = %161, %156
  %167 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 15
  %168 = load i32, ptr %167, align 4, !tbaa !79
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %168) #17
  %169 = load i32, ptr %167, align 4, !tbaa !79
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %178, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 16
  %173 = load i32, ptr %172, align 4, !tbaa !80
  tail call fastcc void @bs_write32(ptr noundef %0, i32 noundef %173) #17
  %174 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 17
  %175 = load i32, ptr %174, align 4, !tbaa !81
  tail call fastcc void @bs_write32(ptr noundef %0, i32 noundef %175) #17
  %176 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 18
  %177 = load i32, ptr %176, align 4, !tbaa !83
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %177) #17
  br label %178

178:                                              ; preds = %171, %166
  %179 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 19
  %180 = load i32, ptr %179, align 4, !tbaa !86
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %180) #17
  %181 = load i32, ptr %179, align 4, !tbaa !86
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %210, label %183

183:                                              ; preds = %178
  %184 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21
  %185 = load i32, ptr %184, align 4, !tbaa !108
  %186 = add nsw i32 %185, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %186) #17
  %187 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 1
  %188 = load i32, ptr %187, align 4, !tbaa !109
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 4, i32 noundef %188) #17
  %189 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 2
  %190 = load i32, ptr %189, align 4, !tbaa !110
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 4, i32 noundef %190) #17
  %191 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 3
  %192 = load i32, ptr %191, align 4, !tbaa !111
  %193 = add nsw i32 %192, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %193) #17
  %194 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 4
  %195 = load i32, ptr %194, align 4, !tbaa !112
  %196 = add nsw i32 %195, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %196) #17
  %197 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 7
  %198 = load i32, ptr %197, align 4, !tbaa !113
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %198) #17
  %199 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 8
  %200 = load i32, ptr %199, align 4, !tbaa !114
  %201 = add nsw i32 %200, -1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 5, i32 noundef %201) #17
  %202 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 9
  %203 = load i32, ptr %202, align 4, !tbaa !115
  %204 = add nsw i32 %203, -1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 5, i32 noundef %204) #17
  %205 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 10
  %206 = load i32, ptr %205, align 4, !tbaa !116
  %207 = add nsw i32 %206, -1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 5, i32 noundef %207) #17
  %208 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 21, i32 11
  %209 = load i32, ptr %208, align 4, !tbaa !117
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 5, i32 noundef %209) #17
  br label %210

210:                                              ; preds = %183, %178
  %211 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 20
  %212 = load i32, ptr %211, align 4, !tbaa !84
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %212) #17
  %213 = load i32, ptr %179, align 4, !tbaa !86
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %210
  %216 = load i32, ptr %211, align 4, !tbaa !84
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %219, label %218

218:                                              ; preds = %215, %210
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef 0) #17
  br label %219

219:                                              ; preds = %218, %215
  %220 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 22
  %221 = load i32, ptr %220, align 4, !tbaa !88
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %221) #17
  %222 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 23
  %223 = load i32, ptr %222, align 4, !tbaa !118
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %223) #17
  %224 = load i32, ptr %222, align 4, !tbaa !118
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %241, label %226

226:                                              ; preds = %219
  %227 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 24
  %228 = load i32, ptr %227, align 4, !tbaa !119
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef %228) #17
  %229 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 25
  %230 = load i32, ptr %229, align 4, !tbaa !120
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %230) #17
  %231 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 26
  %232 = load i32, ptr %231, align 4, !tbaa !121
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %232) #17
  %233 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 27
  %234 = load i32, ptr %233, align 4, !tbaa !96
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %234) #17
  %235 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 28
  %236 = load i32, ptr %235, align 4, !tbaa !95
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %236) #17
  %237 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 29
  %238 = load i32, ptr %237, align 4, !tbaa !90
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %238) #17
  %239 = getelementptr inbounds %struct.x264_sps_t, ptr %1, i64 0, i32 24, i32 30
  %240 = load i32, ptr %239, align 4, !tbaa !92
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %240) #17
  br label %241

241:                                              ; preds = %219, %226, %91
  tail call fastcc void @bs_rbsp_trailing(ptr noundef %0) #17
  tail call fastcc void @bs_flush(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_realign(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = ptrtoint ptr %3 to i64
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = and i64 %4, 3
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %3, i64 %10
  store ptr %11, ptr %2, align 8, !tbaa !122
  %12 = trunc i64 %9 to i32
  %13 = shl nuw nsw i32 %12, 3
  %14 = sub nuw nsw i32 64, %13
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  store i32 %14, ptr %15, align 8, !tbaa !125
  %16 = load i32, ptr %11, align 4, !tbaa !126
  %17 = tail call fastcc i32 @endian_fix32(i32 noundef %16) #17
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %20 = shl nuw nsw i32 %6, 3
  %21 = sub nuw nsw i32 32, %20
  %22 = zext nneg i32 %21 to i64
  %23 = lshr i64 %18, %22
  store i64 %23, ptr %19, align 8, !tbaa !127
  br label %24

24:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !127
  %6 = zext nneg i32 %1 to i64
  %7 = shl i64 %5, %6
  %8 = zext i32 %2 to i64
  %9 = or i64 %7, %8
  store i64 %9, ptr %4, align 8, !tbaa !127
  %10 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !125
  %12 = sub nsw i32 %11, %1
  store i32 %12, ptr %10, align 8, !tbaa !125
  %13 = icmp slt i32 %12, 33
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = zext nneg i32 %12 to i64
  %16 = shl i64 %9, %15
  %17 = tail call fastcc i64 @endian_fix(i64 noundef %16) #17
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !122
  store i32 %18, ptr %20, align 4, !tbaa !126
  %21 = load i32, ptr %10, align 8, !tbaa !125
  %22 = add nsw i32 %21, 32
  store i32 %22, ptr %10, align 8, !tbaa !125
  %23 = load ptr, ptr %19, align 8, !tbaa !122
  %24 = getelementptr inbounds i8, ptr %23, i64 4
  store ptr %24, ptr %19, align 8, !tbaa !122
  br label %25

25:                                               ; preds = %14, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_ue_big(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
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
  %15 = load i8, ptr %14, align 1, !tbaa !126
  %16 = zext i8 %15 to i32
  %17 = add nuw nsw i32 %11, %16
  %18 = lshr i32 %17, 1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %18, i32 noundef 0) #17
  %19 = add nuw nsw i32 %18, 1
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %19, i32 noundef %3) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write_se(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
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
  %13 = load i8, ptr %12, align 1, !tbaa !126
  %14 = zext i8 %13 to i32
  %15 = add nuw nsw i32 %9, %14
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %15, i32 noundef %6) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write1(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !127
  %5 = shl i64 %4, 1
  %6 = zext i32 %1 to i64
  %7 = or i64 %5, %6
  store i64 %7, ptr %3, align 8, !tbaa !127
  %8 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !125
  %10 = add nsw i32 %9, -1
  store i32 %10, ptr %8, align 8, !tbaa !125
  %11 = icmp eq i32 %10, 32
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = trunc i64 %7 to i32
  %14 = tail call fastcc i32 @endian_fix32(i32 noundef %13) #17
  %15 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !122
  store i32 %14, ptr %16, align 4, !tbaa !126
  %17 = load ptr, ptr %15, align 8, !tbaa !122
  %18 = getelementptr inbounds i8, ptr %17, i64 4
  store ptr %18, ptr %15, align 8, !tbaa !122
  store i32 64, ptr %8, align 8, !tbaa !125
  br label %19

19:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_write32(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #4 {
  %3 = lshr i32 %1, 16
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 16, i32 noundef %3) #17
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 16, i32 noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_rbsp_trailing(ptr nocapture noundef %0) unnamed_addr #4 {
  tail call fastcc void @bs_write1(ptr noundef %0, i32 noundef 1) #17
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = and i32 %3, 7
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef %4, i32 noundef 0) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_flush(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !127
  %4 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !125
  %6 = and i32 %5, 31
  %7 = zext nneg i32 %6 to i64
  %8 = shl i64 %3, %7
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc i32 @endian_fix32(i32 noundef %9) #17
  %11 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !122
  store i32 %10, ptr %12, align 4, !tbaa !126
  %13 = load i32, ptr %4, align 8, !tbaa !125
  %14 = sdiv i32 %13, -8
  %15 = load ptr, ptr %11, align 8, !tbaa !122
  %16 = sext i32 %14 to i64
  %17 = getelementptr i8, ptr %15, i64 %16
  %18 = getelementptr i8, ptr %17, i64 8
  store ptr %18, ptr %11, align 8, !tbaa !122
  store i32 64, ptr %4, align 8, !tbaa !125
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_init(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #5 {
  store i32 %1, ptr %0, align 8, !tbaa !128
  %5 = load i32, ptr %3, align 4, !tbaa !5
  %6 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 1
  store i32 %5, ptr %6, align 4, !tbaa !130
  %7 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 24
  %8 = load i32, ptr %7, align 8, !tbaa !24
  %9 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 2
  store i32 %8, ptr %9, align 8, !tbaa !131
  %10 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 26
  %11 = load i32, ptr %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 3
  store i32 %11, ptr %12, align 4, !tbaa !132
  %13 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 4
  store i32 1, ptr %13, align 8, !tbaa !133
  %14 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 12
  %15 = load i32, ptr %14, align 8, !tbaa !91
  %16 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 5
  store i32 %15, ptr %16, align 4, !tbaa !134
  %17 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 6
  store i32 1, ptr %17, align 8, !tbaa !135
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 3
  %19 = load i32, ptr %18, align 4, !tbaa !27
  %20 = icmp sgt i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 7
  store i32 %21, ptr %22, align 4, !tbaa !136
  %23 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 4
  %24 = load i32, ptr %23, align 8, !tbaa !137
  %25 = icmp eq i32 %24, 0
  %26 = select i1 %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 8
  store i32 %26, ptr %27, align 8, !tbaa !138
  %28 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42
  %29 = load i32, ptr %28, align 8, !tbaa !13
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 42, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !20
  br label %34

34:                                               ; preds = %4, %31
  %35 = phi i32 [ %33, %31 ], [ 26, %4 ]
  %36 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 9
  store i32 %35, ptr %36, align 4, !tbaa !139
  %37 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 10
  store i32 26, ptr %37, align 8, !tbaa !140
  %38 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !141
  %40 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 11
  store i32 %39, ptr %40, align 4, !tbaa !142
  %41 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 12
  store i32 1, ptr %41, align 8, !tbaa !143
  %42 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 27
  %43 = load i32, ptr %42, align 4, !tbaa !144
  %44 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 13
  store i32 %43, ptr %44, align 4, !tbaa !145
  %45 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 14
  store i32 0, ptr %45, align 8, !tbaa !146
  %46 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 41, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !22
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i32
  %50 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 15
  store i32 %49, ptr %50, align 4, !tbaa !147
  %51 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 28
  %52 = load i32, ptr %51, align 8, !tbaa !23
  %53 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 16
  store i32 %52, ptr %53, align 8, !tbaa !148
  switch i32 %52, label %101 [
    i32 0, label %54
    i32 1, label %59
    i32 2, label %66
  ]

54:                                               ; preds = %34, %54
  %55 = phi i64 [ %57, %54 ], [ 0, %34 ]
  %56 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 %55
  store <2 x ptr> <ptr @x264_cqm_flat16, ptr @x264_cqm_flat16>, ptr %56, align 8, !tbaa !149
  %57 = add nuw i64 %55, 2
  %58 = icmp eq i64 %57, 6
  br i1 %58, label %101, label %54, !llvm.loop !150

59:                                               ; preds = %34, %59
  %60 = phi i64 [ %64, %59 ], [ 0, %34 ]
  %61 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !149
  %63 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 %60
  store ptr %62, ptr %63, align 8, !tbaa !149
  %64 = add nuw nsw i64 %60, 1
  %65 = icmp eq i64 %64, 6
  br i1 %65, label %101, label %59, !llvm.loop !153

66:                                               ; preds = %34
  %67 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 30
  tail call fastcc void @transpose(ptr noundef nonnull %67, i32 noundef 4) #17
  %68 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 31
  tail call fastcc void @transpose(ptr noundef nonnull %68, i32 noundef 4) #17
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 32
  tail call fastcc void @transpose(ptr noundef nonnull %69, i32 noundef 4) #17
  %70 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 33
  tail call fastcc void @transpose(ptr noundef nonnull %70, i32 noundef 4) #17
  %71 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 34
  tail call fastcc void @transpose(ptr noundef nonnull %71, i32 noundef 8) #17
  %72 = getelementptr inbounds %struct.x264_param_t, ptr %2, i64 0, i32 35
  tail call fastcc void @transpose(ptr noundef nonnull %72, i32 noundef 8) #17
  %73 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17
  store ptr %67, ptr %73, align 8, !tbaa !149
  %74 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 2
  store ptr %68, ptr %74, align 8, !tbaa !149
  %75 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 1
  store ptr %69, ptr %75, align 8, !tbaa !149
  %76 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 3
  store ptr %70, ptr %76, align 8, !tbaa !149
  %77 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 4
  store ptr %71, ptr %77, align 8, !tbaa !149
  %78 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 5
  store ptr %72, ptr %78, align 8, !tbaa !149
  br label %79

79:                                               ; preds = %66, %86
  %80 = phi i64 [ 0, %66 ], [ %87, %86 ]
  %81 = icmp ult i64 %80, 4
  %82 = getelementptr inbounds %struct.x264_pps_t, ptr %0, i64 0, i32 17, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !149
  %84 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %80
  %85 = select i1 %81, i64 16, i64 64
  br label %89

86:                                               ; preds = %97
  %87 = add nuw nsw i64 %80, 1
  %88 = icmp eq i64 %87, 6
  br i1 %88, label %101, label %79, !llvm.loop !154

89:                                               ; preds = %79, %97
  %90 = phi i64 [ 0, %79 ], [ %99, %97 ]
  %91 = phi ptr [ %83, %79 ], [ %98, %97 ]
  %92 = getelementptr inbounds i8, ptr %91, i64 %90
  %93 = load i8, ptr %92, align 1, !tbaa !126
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load ptr, ptr %84, align 8, !tbaa !149
  store ptr %96, ptr %82, align 8, !tbaa !149
  br label %97

97:                                               ; preds = %89, %95
  %98 = phi ptr [ %91, %89 ], [ %96, %95 ]
  %99 = add nuw nsw i64 %90, 1
  %100 = icmp eq i64 %99, %85
  br i1 %100, label %86, label %89, !llvm.loop !155

101:                                              ; preds = %86, %59, %54, %34
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @transpose(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %17
  %8 = phi i64 [ 0, %4 ], [ %18, %17 ]
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = trunc i64 %8 to i32
  %12 = mul i32 %11, %1
  %13 = zext i32 %12 to i64
  %14 = getelementptr i8, ptr %0, i64 %13
  %15 = getelementptr i8, ptr %0, i64 %8
  br label %20

16:                                               ; preds = %17, %2
  ret void

17:                                               ; preds = %20, %7
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %6
  br i1 %19, label %16, label %7, !llvm.loop !156

20:                                               ; preds = %10, %20
  %21 = phi i64 [ 0, %10 ], [ %27, %20 ]
  %22 = getelementptr i8, ptr %14, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !126
  %24 = mul nsw i64 %21, %5
  %25 = getelementptr i8, ptr %15, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !126
  store i8 %26, ptr %22, align 1, !tbaa !126
  store i8 %23, ptr %25, align 1, !tbaa !126
  %27 = add nuw nsw i64 %21, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %17, label %20, !llvm.loop !157
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_pps_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #7 {
  tail call fastcc void @bs_realign(ptr noundef %0) #17
  %3 = load i32, ptr %1, align 8, !tbaa !128
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %3) #17
  %4 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !130
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %5) #17
  %6 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !131
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %7) #17
  %8 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !132
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %9) #17
  %10 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 8, !tbaa !133
  %12 = add nsw i32 %11, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %12) #17
  %13 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 5
  %14 = load i32, ptr %13, align 4, !tbaa !134
  %15 = add nsw i32 %14, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %15) #17
  %16 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 6
  %17 = load i32, ptr %16, align 8, !tbaa !135
  %18 = add nsw i32 %17, -1
  tail call fastcc void @bs_write_ue_big(ptr noundef %0, i32 noundef %18) #17
  %19 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 7
  %20 = load i32, ptr %19, align 4, !tbaa !136
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %20) #17
  %21 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 8
  %22 = load i32, ptr %21, align 8, !tbaa !138
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 2, i32 noundef %22) #17
  %23 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 9
  %24 = load i32, ptr %23, align 4, !tbaa !139
  %25 = add nsw i32 %24, -26
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %25) #17
  %26 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 10
  %27 = load i32, ptr %26, align 8, !tbaa !140
  %28 = add nsw i32 %27, -26
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %28) #17
  %29 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 11
  %30 = load i32, ptr %29, align 4, !tbaa !142
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %30) #17
  %31 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 12
  %32 = load i32, ptr %31, align 8, !tbaa !143
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %32) #17
  %33 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 13
  %34 = load i32, ptr %33, align 4, !tbaa !145
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %34) #17
  %35 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 14
  %36 = load i32, ptr %35, align 8, !tbaa !146
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %36) #17
  %37 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 15
  %38 = load i32, ptr %37, align 4, !tbaa !147
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 16
  %42 = load i32, ptr %41, align 8, !tbaa !148
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %57, label %44

44:                                               ; preds = %40, %2
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %38) #17
  %45 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 16
  %46 = load i32, ptr %45, align 8, !tbaa !148
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef %48) #17
  %49 = load i32, ptr %45, align 8, !tbaa !148
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %44
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #17
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2) #17
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef 0) #17
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #17
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 3) #17
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef 0) #17
  %52 = load i32, ptr %37, align 4, !tbaa !147
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 4) #17
  tail call fastcc void @scaling_list_write(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 5) #17
  br label %55

55:                                               ; preds = %51, %54, %44
  %56 = load i32, ptr %29, align 4, !tbaa !142
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %56) #17
  br label %57

57:                                               ; preds = %55, %40
  tail call fastcc void @bs_rbsp_trailing(ptr noundef %0) #17
  tail call fastcc void @bs_flush(ptr noundef %0) #17
  ret void
}

; Function Attrs: nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @scaling_list_write(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #7 {
  %4 = icmp slt i32 %2, 4
  %5 = select i1 %4, i32 16, i32 64
  %6 = select i1 %4, ptr @x264_zigzag_scan4, ptr @x264_zigzag_scan8
  %7 = zext nneg i32 %2 to i64
  %8 = getelementptr inbounds %struct.x264_pps_t, ptr %1, i64 0, i32 17, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !149
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
  %18 = load ptr, ptr %17, align 8, !tbaa !149
  %19 = zext nneg i32 %5 to i64
  %20 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %18, i64 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef 0) #17
  br label %97

23:                                               ; preds = %16
  %24 = getelementptr inbounds [6 x ptr], ptr @x264_cqm_jvt, i64 0, i64 %7
  %25 = load ptr, ptr %24, align 8, !tbaa !149
  %26 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %25, i64 %19)
  %27 = icmp eq i32 %26, 0
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 1, i32 noundef 1) #17
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef -8) #17
  br label %97

29:                                               ; preds = %23, %44
  %30 = phi i32 [ %45, %44 ], [ %5, %23 ]
  %31 = zext nneg i32 %30 to i64
  %32 = getelementptr i8, ptr %6, i64 %31
  %33 = getelementptr i8, ptr %32, i64 -1
  %34 = load i8, ptr %33, align 1, !tbaa !126
  %35 = zext i8 %34 to i64
  %36 = getelementptr inbounds i8, ptr %9, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !126
  %38 = getelementptr i8, ptr %32, i64 -2
  %39 = load i8, ptr %38, align 1, !tbaa !126
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, ptr %9, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !126
  %43 = icmp eq i8 %37, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %29
  %45 = add nsw i32 %30, -1
  %46 = icmp sgt i32 %30, 2
  br i1 %46, label %29, label %49, !llvm.loop !158

47:                                               ; preds = %29
  %48 = icmp slt i32 %30, %5
  br i1 %48, label %49, label %63

49:                                               ; preds = %44, %47
  %50 = phi i32 [ %30, %47 ], [ 1, %44 ]
  %51 = sub nsw i32 %5, %50
  %52 = zext nneg i32 %50 to i64
  %53 = getelementptr inbounds i8, ptr %6, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !126
  %55 = zext i8 %54 to i64
  %56 = getelementptr inbounds i8, ptr %9, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !126
  %58 = sub i8 0, %57
  %59 = sext i8 %58 to i32
  %60 = tail call fastcc i32 @bs_size_se(i32 noundef %59) #17, !range !159
  %61 = icmp slt i32 %51, %60
  %62 = select i1 %61, i32 %5, i32 %50
  br label %63

63:                                               ; preds = %49, %47
  %64 = phi i32 [ %30, %47 ], [ %62, %49 ]
  %65 = zext nneg i32 %64 to i64
  br label %68

66:                                               ; preds = %82
  %67 = icmp slt i32 %64, %5
  br i1 %67, label %88, label %97

68:                                               ; preds = %63, %82
  %69 = phi i64 [ 0, %63 ], [ %86, %82 ]
  %70 = getelementptr inbounds i8, ptr %6, i64 %69
  %71 = load i8, ptr %70, align 1, !tbaa !126
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i8, ptr %9, i64 %72
  %74 = load i8, ptr %73, align 1, !tbaa !126
  %75 = icmp eq i64 %69, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %68
  %77 = getelementptr i8, ptr %70, i64 -1
  %78 = load i8, ptr %77, align 1, !tbaa !126
  %79 = zext i8 %78 to i64
  %80 = getelementptr inbounds i8, ptr %9, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !126
  br label %82

82:                                               ; preds = %68, %76
  %83 = phi i8 [ %81, %76 ], [ 8, %68 ]
  %84 = sub i8 %74, %83
  %85 = sext i8 %84 to i32
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %85) #17
  %86 = add nuw nsw i64 %69, 1
  %87 = icmp eq i64 %86, %65
  br i1 %87, label %66, label %68, !llvm.loop !160

88:                                               ; preds = %66
  %89 = sext i32 %64 to i64
  %90 = getelementptr inbounds i8, ptr %6, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !126
  %92 = zext i8 %91 to i64
  %93 = getelementptr inbounds i8, ptr %9, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !126
  %95 = sub i8 0, %94
  %96 = sext i8 %95 to i32
  tail call fastcc void @bs_write_se(ptr noundef %0, i32 noundef %96) #17
  br label %97

97:                                               ; preds = %66, %88, %28, %22
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_recovery_point_write(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  tail call fastcc void @bs_realign(ptr noundef %1) #17
  %4 = tail call fastcc ptr @x264_sei_write_header(ptr noundef %1, i32 noundef 6) #17
  tail call fastcc void @bs_write_ue_big(ptr noundef %1, i32 noundef %2) #17
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 1, i32 noundef 1) #17
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 1, i32 noundef 0) #17
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 2, i32 noundef 0) #17
  tail call fastcc void @x264_sei_write(ptr noundef %1, ptr noundef %4) #17
  tail call fastcc void @bs_flush(ptr noundef %1) #17
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @x264_sei_write_header(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #8 {
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef %1) #17
  tail call fastcc void @bs_flush(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  tail call fastcc void @bs_realign(ptr noundef %0) #17
  tail call fastcc void @bs_write(ptr noundef %0, i32 noundef 8, i32 noundef 0) #17
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @x264_sei_write(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 {
  tail call fastcc void @bs_align_10(ptr noundef %0) #17
  tail call fastcc void @bs_flush(ptr noundef %0) #17
  %3 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !122
  %5 = ptrtoint ptr %4 to i64
  %6 = ptrtoint ptr %1 to i64
  %7 = xor i64 %6, -1
  %8 = add i64 %5, %7
  %9 = trunc i64 %8 to i8
  store i8 %9, ptr %1, align 1, !tbaa !126
  tail call fastcc void @bs_realign(ptr noundef %0) #17
  tail call fastcc void @bs_rbsp_trailing(ptr noundef %0) #17
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @x264_sei_version_write(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 {
  %3 = tail call ptr @x264_param2string(ptr noundef %0, i32 noundef 0) #16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %54, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #18
  %7 = trunc i64 %6 to i32
  %8 = add i32 %7, 200
  %9 = tail call ptr @x264_malloc(i32 noundef %8) #16
  %10 = icmp eq ptr %9, null
  br i1 %10, label %51, label %11

11:                                               ; preds = %5
  %12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef 96, ptr noundef nonnull @.str.1, ptr noundef nonnull %3) #16
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #18
  %14 = freeze i64 %13
  %15 = trunc i64 %14 to i32
  %16 = add i32 %15, 17
  tail call fastcc void @bs_realign(ptr noundef %1) #17
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 8, i32 noundef 5) #17
  %17 = add i32 %15, -238
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %11
  %20 = urem i32 %17, 255
  %21 = sub nsw i32 %20, %17
  br label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %24, %22 ], [ 0, %19 ]
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 8, i32 noundef 255) #17
  %24 = add nuw nsw i32 %23, 255
  %25 = icmp sgt i32 %24, %17
  br i1 %25, label %26, label %22, !llvm.loop !161

26:                                               ; preds = %22
  %27 = add i32 %21, -255
  br label %28

28:                                               ; preds = %26, %11
  %29 = phi i32 [ 0, %11 ], [ %27, %26 ]
  %30 = add i32 %29, %16
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 8, i32 noundef %30) #17
  br label %36

31:                                               ; preds = %36
  %32 = icmp ult i32 %15, 2147483647
  br i1 %32, label %33, label %43

33:                                               ; preds = %31
  %34 = add i64 %14, 1
  %35 = and i64 %34, 4294967295
  br label %44

36:                                               ; preds = %28, %36
  %37 = phi i64 [ 0, %28 ], [ %41, %36 ]
  %38 = getelementptr inbounds [16 x i8], ptr @__const.x264_sei_version_write.uuid, i64 0, i64 %37
  %39 = load i8, ptr %38, align 1, !tbaa !126
  %40 = zext i8 %39 to i32
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 8, i32 noundef %40) #17
  %41 = add nuw nsw i64 %37, 1
  %42 = icmp eq i64 %41, 16
  br i1 %42, label %31, label %36, !llvm.loop !162

43:                                               ; preds = %44, %31
  tail call fastcc void @bs_rbsp_trailing(ptr noundef %1) #17
  tail call fastcc void @bs_flush(ptr noundef %1) #17
  tail call void @x264_free(ptr noundef nonnull %3) #16
  br label %51

44:                                               ; preds = %33, %44
  %45 = phi i64 [ 0, %33 ], [ %49, %44 ]
  %46 = getelementptr inbounds i8, ptr %9, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !126
  %48 = sext i8 %47 to i32
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 8, i32 noundef %48) #17
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, %35
  br i1 %50, label %43, label %44, !llvm.loop !163

51:                                               ; preds = %5, %43
  %52 = phi ptr [ %9, %43 ], [ %3, %5 ]
  %53 = phi i32 [ 0, %43 ], [ -1, %5 ]
  tail call void @x264_free(ptr noundef nonnull %52) #16
  br label %54

54:                                               ; preds = %51, %2
  %55 = phi i32 [ -1, %2 ], [ %53, %51 ]
  ret i32 %55
}

; Function Attrs: optsize
declare ptr @x264_param2string(ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare ptr @x264_malloc(i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: optsize
declare void @x264_free(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_buffering_period_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #8 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 16, !tbaa !164
  tail call fastcc void @bs_realign(ptr noundef %1) #17
  %5 = tail call fastcc ptr @x264_sei_write_header(ptr noundef %1, i32 noundef 0) #17
  %6 = load i32, ptr %4, align 4, !tbaa !5
  tail call fastcc void @bs_write_ue_big(ptr noundef %1, i32 noundef %6) #17
  %7 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 19
  %8 = load i32, ptr %7, align 4, !tbaa !86
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 21, i32 8
  %12 = load i32, ptr %11, align 4, !tbaa !114
  %13 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 51
  %14 = load i32, ptr %13, align 16, !tbaa !183
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef %12, i32 noundef %14) #17
  %15 = load i32, ptr %11, align 4, !tbaa !114
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 52
  %17 = load i32, ptr %16, align 4, !tbaa !184
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef %15, i32 noundef %17) #17
  br label %18

18:                                               ; preds = %10, %2
  tail call fastcc void @x264_sei_write(ptr noundef %1, ptr noundef %5) #17
  tail call fastcc void @bs_flush(ptr noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_sei_pic_timing_write(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 16, !tbaa !164
  tail call fastcc void @bs_realign(ptr noundef %1) #17
  %5 = tail call fastcc ptr @x264_sei_write_header(ptr noundef %1, i32 noundef 1) #17
  %6 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 19
  %7 = load i32, ptr %6, align 4, !tbaa !86
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 20
  %11 = load i32, ptr %10, align 4, !tbaa !84
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 21, i32 9
  %15 = load i32, ptr %14, align 4, !tbaa !115
  %16 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %17 = load ptr, ptr %16, align 8, !tbaa !185
  %18 = getelementptr inbounds %struct.x264_frame, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !186
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef %15, i32 noundef %19) #17
  %20 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 21, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !116
  %22 = load ptr, ptr %16, align 8, !tbaa !185
  %23 = getelementptr inbounds %struct.x264_frame, ptr %22, i64 0, i32 8
  %24 = load i32, ptr %23, align 4, !tbaa !189
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef %21, i32 noundef %24) #17
  br label %25

25:                                               ; preds = %13, %9
  %26 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 22
  %27 = load i32, ptr %26, align 4, !tbaa !88
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %50, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !185
  %32 = getelementptr inbounds %struct.x264_frame, ptr %31, i64 0, i32 15
  %33 = load i32, ptr %32, align 4, !tbaa !190
  %34 = add nsw i32 %33, -1
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 4, i32 noundef %34) #17
  %35 = load ptr, ptr %30, align 8, !tbaa !185
  %36 = getelementptr inbounds %struct.x264_frame, ptr %35, i64 0, i32 15
  %37 = load i32, ptr %36, align 4, !tbaa !190
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %29, %39
  %40 = phi i32 [ %41, %39 ], [ 0, %29 ]
  tail call fastcc void @bs_write1(ptr noundef %1, i32 noundef 0) #17
  %41 = add nuw nsw i32 %40, 1
  %42 = load ptr, ptr %30, align 8, !tbaa !185
  %43 = getelementptr inbounds %struct.x264_frame, ptr %42, i64 0, i32 15
  %44 = load i32, ptr %43, align 4, !tbaa !190
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [10 x i8], ptr @num_clock_ts, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !126
  %48 = zext i8 %47 to i32
  %49 = icmp ult i32 %41, %48
  br i1 %49, label %39, label %50, !llvm.loop !191

50:                                               ; preds = %39, %29, %25
  tail call fastcc void @x264_sei_write(ptr noundef %1, ptr noundef %5) #17
  tail call fastcc void @bs_flush(ptr noundef %1) #17
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @x264_filler_write(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #2 {
  tail call fastcc void @bs_realign(ptr noundef %1) #17
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %6, %3
  tail call fastcc void @bs_rbsp_trailing(ptr noundef %1) #17
  tail call fastcc void @bs_flush(ptr noundef %1) #17
  ret void

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %8, %6 ], [ 0, %3 ]
  tail call fastcc void @bs_write(ptr noundef %1, i32 noundef 8, i32 noundef 255) #17
  %8 = add nuw nsw i32 %7, 1
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %5, label %6, !llvm.loop !192
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @x264_validate_levels(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.x264_t, ptr %0, i64 0, i32 24
  %4 = load ptr, ptr %3, align 16, !tbaa !164
  %5 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 16
  %6 = load i32, ptr %5, align 4, !tbaa !102
  %7 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 17
  %8 = load i32, ptr %7, align 4, !tbaa !45
  %9 = mul nsw i32 %8, %6
  %10 = mul nsw i32 %9, 384
  %11 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 24, i32 30
  %12 = load i32, ptr %11, align 4, !tbaa !92
  %13 = mul nsw i32 %10, %12
  %14 = getelementptr inbounds %struct.x264_sps_t, ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !28
  %16 = icmp eq i32 %15, 100
  %17 = select i1 %16, i32 5, i32 4
  %18 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 8
  %19 = load i32, ptr %18, align 16, !tbaa !193
  br label %20

20:                                               ; preds = %2, %24
  %21 = phi i32 [ 10, %2 ], [ %26, %24 ]
  %22 = phi ptr [ @x264_levels, %2 ], [ %25, %24 ]
  %23 = icmp eq i32 %21, %19
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.x264_level_t, ptr %22, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !194
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %20, !llvm.loop !196

28:                                               ; preds = %24, %20
  %29 = phi ptr [ getelementptr inbounds ([16 x %struct.x264_level_t], ptr @x264_levels, i64 0, i64 15, i32 0), %24 ], [ %22, %20 ]
  %30 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !197
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
  br i1 %41, label %55, label %42

42:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %6, i32 noundef %8, i32 noundef %31) #16
  br label %43

43:                                               ; preds = %33, %42
  %44 = phi i32 [ 1, %42 ], [ 0, %33 ]
  %45 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 3
  %46 = load i32, ptr %45, align 4, !tbaa !198
  %47 = icmp sgt i32 %13, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = icmp eq i32 %1, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %48
  %51 = load ptr, ptr %3, align 16, !tbaa !164
  %52 = getelementptr inbounds %struct.x264_sps_t, ptr %51, i64 0, i32 24, i32 30
  %53 = load i32, ptr %52, align 4, !tbaa !92
  %54 = sdiv i32 %46, %10
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.3, i32 noundef %53, i32 noundef %13, i32 noundef %54, i32 noundef %46) #16
  br label %55

55:                                               ; preds = %40, %48, %50, %43
  %56 = phi i32 [ %44, %43 ], [ 1, %50 ], [ 1, %48 ], [ 1, %40 ]
  %57 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 9
  %58 = load i32, ptr %57, align 4, !tbaa !199
  %59 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !200
  %61 = mul nsw i32 %60, %17
  %62 = sdiv i32 %61, 4
  %63 = icmp sgt i32 %58, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = icmp eq i32 %1, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %64
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.4, i32 noundef %58, i32 noundef %62) #16
  br label %67

67:                                               ; preds = %66, %55
  %68 = phi i32 [ %56, %55 ], [ 1, %66 ]
  %69 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 42, i32 10
  %70 = load i32, ptr %69, align 8, !tbaa !201
  %71 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 5
  %72 = load i32, ptr %71, align 4, !tbaa !202
  %73 = mul nsw i32 %72, %17
  %74 = sdiv i32 %73, 4
  %75 = icmp sgt i32 %70, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = icmp eq i32 %1, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %76
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.5, i32 noundef %70, i32 noundef %74) #16
  br label %79

79:                                               ; preds = %64, %76, %78, %67
  %80 = phi i32 [ %68, %67 ], [ 1, %78 ], [ 1, %76 ], [ 1, %64 ]
  %81 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 41, i32 9
  %82 = load i32, ptr %81, align 4, !tbaa !203
  %83 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 6
  %84 = load i32, ptr %83, align 4, !tbaa !204
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = icmp eq i32 %1, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %86
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.6, i32 noundef %82, i32 noundef %84) #16
  br label %89

89:                                               ; preds = %88, %79
  %90 = phi i32 [ %80, %79 ], [ 1, %88 ]
  %91 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 26
  %92 = load i32, ptr %91, align 8, !tbaa !205
  %93 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 12
  %94 = load i32, ptr %93, align 4, !tbaa !206
  %95 = icmp eq i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = icmp sgt i32 %92, %96
  br i1 %97, label %103, label %106

98:                                               ; preds = %86
  %99 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 12
  %100 = load i32, ptr %99, align 4, !tbaa !206
  %101 = icmp eq i32 %100, 0
  %102 = zext i1 %101 to i32
  br label %106

103:                                              ; preds = %89
  %104 = icmp eq i32 %1, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %103
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.7, i32 noundef %92, i32 noundef %96) #16
  br label %106

106:                                              ; preds = %98, %103, %105, %89
  %107 = phi i32 [ %96, %89 ], [ %96, %105 ], [ %96, %103 ], [ %102, %98 ]
  %108 = phi i32 [ %90, %89 ], [ 1, %105 ], [ 1, %103 ], [ 1, %98 ]
  %109 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 55
  %110 = load i32, ptr %109, align 8, !tbaa !207
  %111 = icmp sgt i32 %110, %107
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = icmp eq i32 %1, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %112
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.8, i32 noundef %110, i32 noundef %107) #16
  br label %115

115:                                              ; preds = %112, %114, %106
  %116 = phi i32 [ %108, %106 ], [ 1, %114 ], [ 1, %112 ]
  %117 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 49
  %118 = load i32, ptr %117, align 16, !tbaa !208
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %136, label %120

120:                                              ; preds = %115
  %121 = sext i32 %9 to i64
  %122 = getelementptr inbounds %struct.x264_param_t, ptr %0, i64 0, i32 48
  %123 = load i32, ptr %122, align 4, !tbaa !209
  %124 = zext i32 %123 to i64
  %125 = mul nsw i64 %124, %121
  %126 = zext i32 %118 to i64
  %127 = sdiv i64 %125, %126
  %128 = getelementptr inbounds %struct.x264_level_t, ptr %29, i64 0, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !210
  %130 = sext i32 %129 to i64
  %131 = icmp sgt i64 %127, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %120
  %133 = icmp eq i32 %1, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %132
  %135 = trunc i64 %127 to i32
  tail call void (ptr, i32, ptr, ...) @x264_log(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.9, i32 noundef %135, i32 noundef %129) #16
  br label %136

136:                                              ; preds = %132, %134, %120, %115
  %137 = phi i32 [ %116, %120 ], [ %116, %115 ], [ 1, %134 ], [ 1, %132 ]
  ret i32 %137
}

; Function Attrs: optsize
declare void @x264_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @endian_fix32(i32 noundef %0) unnamed_addr #13 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @endian_fix(i64 noundef %0) unnamed_addr #13 {
  %2 = tail call fastcc i64 @endian_fix64(i64 noundef %0) #17
  ret i64 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @endian_fix64(i64 noundef %0) unnamed_addr #13 {
  %2 = lshr i64 %0, 32
  %3 = trunc i64 %2 to i32
  %4 = tail call fastcc i32 @endian_fix32(i32 noundef %3) #17
  %5 = zext i32 %4 to i64
  %6 = trunc i64 %0 to i32
  %7 = tail call fastcc i32 @endian_fix32(i32 noundef %6) #17
  %8 = zext i32 %7 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or disjoint i64 %9, %5
  ret i64 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @bs_size_se(i32 noundef %0) unnamed_addr #13 {
  %2 = shl nsw i32 %0, 1
  %3 = sub nsw i32 1, %2
  %4 = icmp sgt i32 %0, 0
  %5 = select i1 %4, i32 %2, i32 %3
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = sext i32 %5 to i64
  %9 = getelementptr inbounds [256 x i8], ptr @x264_ue_size_tab, i64 0, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !126
  %11 = zext i8 %10 to i32
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi i32 [ %11, %7 ], [ 17, %1 ]
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bs_align_10(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr inbounds %struct.bs_s, ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 8, !tbaa !125
  %4 = and i32 %3, 7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add nsw i32 %4, -1
  %8 = shl nuw nsw i32 1, %7
  tail call fastcc void @bs_write(ptr noundef nonnull %0, i32 noundef %4, i32 noundef %8) #17
  br label %9

9:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

attributes #0 = { nofree noinline nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { optsize }
attributes #18 = { nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !8, i64 52, !7, i64 1076, !7, i64 1080, !7, i64 1084, !7, i64 1088, !7, i64 1092, !7, i64 1096, !7, i64 1100, !7, i64 1104, !10, i64 1108, !7, i64 1124, !11, i64 1128, !7, i64 1296}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12}
!11 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !12, i64 84, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164}
!12 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44}
!13 = !{!14, !7, i64 488}
!14 = !{!"x264_param_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !15, i64 44, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !16, i64 152, !8, i64 160, !8, i64 176, !8, i64 192, !8, i64 208, !8, i64 224, !8, i64 288, !16, i64 352, !16, i64 360, !7, i64 368, !7, i64 372, !16, i64 376, !17, i64 384, !19, i64 488, !7, i64 632, !7, i64 636, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !7, i64 672, !7, i64 676, !7, i64 680, !7, i64 684, !7, i64 688, !7, i64 692, !16, i64 696}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32}
!16 = !{!"any pointer", !8, i64 0}
!17 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !18, i64 72, !18, i64 76, !7, i64 80, !8, i64 84, !7, i64 92, !7, i64 96}
!18 = !{!"float", !8, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !18, i64 24, !18, i64 28, !18, i64 32, !7, i64 36, !7, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !7, i64 56, !18, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !16, i64 80, !7, i64 88, !16, i64 96, !18, i64 104, !18, i64 108, !18, i64 112, !16, i64 120, !7, i64 128, !16, i64 136}
!20 = !{!14, !7, i64 492}
!21 = !{!6, !7, i64 1296}
!22 = !{!14, !7, i64 392}
!23 = !{!14, !7, i64 144}
!24 = !{!14, !7, i64 128}
!25 = !{!14, !7, i64 100}
!26 = !{!14, !7, i64 136}
!27 = !{!14, !7, i64 396}
!28 = !{!6, !7, i64 4}
!29 = !{!14, !7, i64 32}
!30 = !{!6, !7, i64 8}
!31 = !{!6, !7, i64 12}
!32 = !{!6, !7, i64 16}
!33 = !{!6, !7, i64 20}
!34 = !{!14, !7, i64 84}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!6, !7, i64 24}
!38 = !{!6, !7, i64 28}
!39 = !{!6, !7, i64 32}
!40 = !{!6, !7, i64 1124}
!41 = !{!6, !7, i64 1080}
!42 = !{!7, !7, i64 0}
!43 = !{!6, !7, i64 1092}
!44 = !{!14, !7, i64 680}
!45 = !{!6, !7, i64 1088}
!46 = !{!6, !7, i64 1096}
!47 = !{!6, !7, i64 1100}
!48 = !{!6, !7, i64 1108}
!49 = !{!6, !7, i64 1116}
!50 = !{!6, !7, i64 1112}
!51 = !{!6, !7, i64 1120}
!52 = !{!6, !7, i64 1104}
!53 = !{!6, !7, i64 1128}
!54 = !{!14, !7, i64 48}
!55 = !{!14, !7, i64 44}
!56 = !{!6, !7, i64 1132}
!57 = !{!6, !7, i64 1136}
!58 = !{!14, !7, i64 52}
!59 = !{!6, !7, i64 1140}
!60 = !{!6, !7, i64 1144}
!61 = !{!6, !7, i64 1148}
!62 = !{!14, !7, i64 56}
!63 = !{!6, !7, i64 1152}
!64 = !{!14, !7, i64 60}
!65 = !{!6, !7, i64 1156}
!66 = !{!6, !7, i64 1160}
!67 = !{!14, !7, i64 64}
!68 = !{!6, !7, i64 1164}
!69 = !{!14, !7, i64 68}
!70 = !{!6, !7, i64 1168}
!71 = !{!14, !7, i64 72}
!72 = !{!6, !7, i64 1172}
!73 = !{!14, !7, i64 76}
!74 = !{!6, !7, i64 1176}
!75 = !{!6, !7, i64 1180}
!76 = !{!6, !7, i64 1184}
!77 = !{!14, !7, i64 660}
!78 = !{!14, !7, i64 664}
!79 = !{!6, !7, i64 1188}
!80 = !{!6, !7, i64 1192}
!81 = !{!6, !7, i64 1196}
!82 = !{!14, !7, i64 648}
!83 = !{!6, !7, i64 1200}
!84 = !{!6, !7, i64 1208}
!85 = !{!14, !7, i64 40}
!86 = !{!6, !7, i64 1204}
!87 = !{!14, !7, i64 676}
!88 = !{!6, !7, i64 1260}
!89 = !{!14, !7, i64 112}
!90 = !{!6, !7, i64 1288}
!91 = !{!14, !7, i64 80}
!92 = !{!6, !7, i64 1292}
!93 = !{!6, !7, i64 1076}
!94 = !{!14, !7, i64 420}
!95 = !{!6, !7, i64 1284}
!96 = !{!6, !7, i64 1280}
!97 = !{!6, !7, i64 36}
!98 = !{!6, !7, i64 40}
!99 = !{!6, !7, i64 44}
!100 = !{!6, !7, i64 48}
!101 = distinct !{!101, !36}
!102 = !{!6, !7, i64 1084}
!103 = !{!104, !8, i64 0}
!104 = !{!"", !8, i64 0, !8, i64 1, !8, i64 2}
!105 = !{!104, !8, i64 1}
!106 = distinct !{!106, !36}
!107 = !{!104, !8, i64 2}
!108 = !{!6, !7, i64 1212}
!109 = !{!6, !7, i64 1216}
!110 = !{!6, !7, i64 1220}
!111 = !{!6, !7, i64 1224}
!112 = !{!6, !7, i64 1228}
!113 = !{!6, !7, i64 1240}
!114 = !{!6, !7, i64 1244}
!115 = !{!6, !7, i64 1248}
!116 = !{!6, !7, i64 1252}
!117 = !{!6, !7, i64 1256}
!118 = !{!6, !7, i64 1264}
!119 = !{!6, !7, i64 1268}
!120 = !{!6, !7, i64 1272}
!121 = !{!6, !7, i64 1276}
!122 = !{!123, !16, i64 8}
!123 = !{!"bs_s", !16, i64 0, !16, i64 8, !16, i64 16, !124, i64 24, !7, i64 32, !7, i64 36}
!124 = !{!"long", !8, i64 0}
!125 = !{!123, !7, i64 32}
!126 = !{!8, !8, i64 0}
!127 = !{!123, !124, i64 24}
!128 = !{!129, !7, i64 0}
!129 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !8, i64 72}
!130 = !{!129, !7, i64 4}
!131 = !{!129, !7, i64 8}
!132 = !{!129, !7, i64 12}
!133 = !{!129, !7, i64 16}
!134 = !{!129, !7, i64 20}
!135 = !{!129, !7, i64 24}
!136 = !{!129, !7, i64 28}
!137 = !{!14, !7, i64 400}
!138 = !{!129, !7, i64 32}
!139 = !{!129, !7, i64 36}
!140 = !{!129, !7, i64 40}
!141 = !{!14, !7, i64 408}
!142 = !{!129, !7, i64 44}
!143 = !{!129, !7, i64 48}
!144 = !{!14, !7, i64 140}
!145 = !{!129, !7, i64 52}
!146 = !{!129, !7, i64 56}
!147 = !{!129, !7, i64 60}
!148 = !{!129, !7, i64 64}
!149 = !{!16, !16, i64 0}
!150 = distinct !{!150, !36, !151, !152}
!151 = !{!"llvm.loop.isvectorized", i32 1}
!152 = !{!"llvm.loop.unroll.runtime.disable"}
!153 = distinct !{!153, !36}
!154 = distinct !{!154, !36}
!155 = distinct !{!155, !36}
!156 = distinct !{!156, !36}
!157 = distinct !{!157, !36}
!158 = distinct !{!158, !36}
!159 = !{i32 0, i32 256}
!160 = distinct !{!160, !36}
!161 = distinct !{!161, !36}
!162 = distinct !{!162, !36}
!163 = distinct !{!163, !36}
!164 = !{!165, !16, i64 3200}
!165 = !{!"x264_t", !14, i64 0, !8, i64 704, !7, i64 1736, !7, i64 1740, !7, i64 1744, !7, i64 1748, !7, i64 1752, !166, i64 1760, !16, i64 1832, !7, i64 1840, !7, i64 1844, !7, i64 1848, !7, i64 1852, !7, i64 1856, !7, i64 1860, !7, i64 1864, !7, i64 1868, !7, i64 1872, !7, i64 1876, !7, i64 1880, !7, i64 1884, !7, i64 1888, !7, i64 1892, !8, i64 1896, !16, i64 3200, !8, i64 3208, !16, i64 3328, !7, i64 3336, !7, i64 3340, !8, i64 3344, !8, i64 3376, !8, i64 3392, !8, i64 3424, !8, i64 3440, !8, i64 3472, !8, i64 3488, !8, i64 3520, !8, i64 3536, !8, i64 4272, !16, i64 7216, !167, i64 7232, !168, i64 13904, !169, i64 14416, !16, i64 14680, !16, i64 14688, !7, i64 14696, !8, i64 14704, !7, i64 14856, !8, i64 14864, !8, i64 15016, !7, i64 15024, !7, i64 15028, !124, i64 15032, !170, i64 15040, !171, i64 16368, !16, i64 26704, !174, i64 26712, !8, i64 30400, !8, i64 30912, !8, i64 31168, !16, i64 31176, !8, i64 31184, !8, i64 31232, !8, i64 31248, !8, i64 31304, !8, i64 31360, !8, i64 31456, !16, i64 31552, !177, i64 31560, !178, i64 32616, !179, i64 32912, !180, i64 33032, !181, i64 33080, !182, i64 33256, !16, i64 33328}
!166 = !{!"", !7, i64 0, !7, i64 4, !16, i64 8, !7, i64 16, !16, i64 24, !123, i64 32}
!167 = !{!"", !16, i64 0, !16, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !8, i64 60, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !8, i64 96, !8, i64 352, !7, i64 6496, !7, i64 6500, !8, i64 6504, !7, i64 6632, !7, i64 6636, !7, i64 6640, !7, i64 6644, !7, i64 6648, !7, i64 6652, !7, i64 6656, !7, i64 6660}
!168 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !7, i64 48, !8, i64 52}
!169 = !{!"", !16, i64 0, !8, i64 8, !16, i64 24, !8, i64 32, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !124, i64 208, !124, i64 216, !8, i64 224, !124, i64 240, !124, i64 248, !7, i64 256, !7, i64 260}
!170 = !{!"", !8, i64 0, !8, i64 32, !8, i64 48, !8, i64 560}
!171 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104, !8, i64 112, !7, i64 120, !8, i64 124, !8, i64 140, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !8, i64 304, !8, i64 320, !8, i64 336, !8, i64 352, !16, i64 864, !16, i64 872, !16, i64 880, !8, i64 888, !7, i64 1016, !7, i64 1020, !8, i64 1024, !7, i64 1028, !7, i64 1032, !7, i64 1036, !7, i64 1040, !7, i64 1044, !7, i64 1048, !7, i64 1052, !7, i64 1056, !7, i64 1060, !172, i64 1072, !173, i64 8656, !7, i64 9424, !7, i64 9428, !7, i64 9432, !7, i64 9436, !7, i64 9440, !7, i64 9444, !7, i64 9448, !7, i64 9452, !8, i64 9456, !7, i64 9472, !7, i64 9476, !8, i64 9480, !16, i64 9992, !8, i64 10000, !16, i64 10256, !8, i64 10264, !7, i64 10284, !8, i64 10288}
!172 = !{!"", !8, i64 0, !8, i64 384, !8, i64 1248, !8, i64 1504, !8, i64 1760, !8, i64 2144, !8, i64 2624, !8, i64 2640, !7, i64 2656, !7, i64 2660, !8, i64 2672, !8, i64 3184, !8, i64 3696, !8, i64 3776, !8, i64 3904, !8, i64 3928, !8, i64 3952, !8, i64 3976, !8, i64 3984, !8, i64 7056, !8, i64 7312, !8, i64 7568}
!173 = !{!"", !8, i64 0, !8, i64 48, !8, i64 96, !8, i64 176, !8, i64 496, !8, i64 656, !8, i64 696, !8, i64 728, !7, i64 736, !8, i64 740, !7, i64 744, !7, i64 748, !7, i64 752, !7, i64 756}
!174 = !{!"", !175, i64 0, !8, i64 704, !8, i64 728, !8, i64 768, !8, i64 808, !8, i64 880, !8, i64 920, !8, i64 960, !8, i64 1000, !8, i64 1040, !8, i64 1080, !8, i64 1120, !8, i64 1880, !8, i64 2152, !8, i64 2168, !8, i64 3192, !8, i64 3240, !8, i64 3656, !8, i64 3664, !8, i64 3672}
!175 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !8, i64 12, !7, i64 88, !7, i64 92, !7, i64 96, !8, i64 100, !8, i64 108, !8, i64 364, !8, i64 432, !8, i64 456, !8, i64 664, !8, i64 672, !176, i64 696}
!176 = !{!"double", !8, i64 0}
!177 = !{!"", !8, i64 0, !8, i64 56, !8, i64 112, !8, i64 168, !8, i64 224, !8, i64 256, !8, i64 312, !8, i64 368, !8, i64 424, !8, i64 480, !8, i64 536, !16, i64 592, !8, i64 600, !8, i64 632, !16, i64 664, !16, i64 672, !8, i64 680, !8, i64 736, !8, i64 792, !8, i64 848, !8, i64 904, !16, i64 960, !16, i64 968, !16, i64 976, !16, i64 984, !16, i64 992, !16, i64 1000, !16, i64 1008, !16, i64 1016, !16, i64 1024, !16, i64 1032, !16, i64 1040, !16, i64 1048}
!178 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !8, i64 24, !8, i64 104, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288}
!179 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112}
!180 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!181 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !8, i64 88, !8, i64 136}
!182 = !{!"", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 48, !16, i64 64}
!183 = !{!165, !7, i64 15024}
!184 = !{!165, !7, i64 15028}
!185 = !{!165, !16, i64 14680}
!186 = !{!187, !7, i64 40}
!187 = !{!"x264_frame", !7, i64 0, !7, i64 4, !7, i64 8, !124, i64 16, !124, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !16, i64 48, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !8, i64 84, !8, i64 85, !8, i64 86, !18, i64 88, !18, i64 92, !7, i64 96, !7, i64 100, !8, i64 104, !8, i64 116, !8, i64 128, !7, i64 140, !7, i64 144, !7, i64 148, !8, i64 152, !8, i64 176, !8, i64 208, !16, i64 240, !8, i64 248, !8, i64 280, !8, i64 320, !8, i64 3392, !7, i64 3520, !16, i64 3528, !16, i64 3536, !16, i64 3544, !8, i64 3552, !16, i64 3568, !8, i64 3576, !8, i64 3848, !8, i64 6440, !8, i64 6712, !8, i64 6728, !8, i64 6736, !8, i64 6864, !8, i64 6868, !8, i64 8164, !7, i64 9460, !8, i64 9464, !8, i64 9536, !16, i64 12128, !16, i64 12136, !16, i64 12144, !16, i64 12152, !16, i64 12160, !7, i64 12168, !16, i64 12176, !16, i64 12184, !16, i64 12192, !7, i64 12200, !8, i64 12204, !7, i64 12276, !124, i64 12280, !188, i64 12288, !8, i64 12320, !8, i64 12572, !8, i64 13576, !7, i64 15584, !7, i64 15588, !7, i64 15592, !7, i64 15596, !7, i64 15600, !7, i64 15604, !7, i64 15608, !18, i64 15612, !7, i64 15616, !7, i64 15620, !7, i64 15624}
!188 = !{!"", !176, i64 0, !176, i64 8, !176, i64 16, !176, i64 24}
!189 = !{!187, !7, i64 44}
!190 = !{!187, !7, i64 76}
!191 = distinct !{!191, !36}
!192 = distinct !{!192, !36}
!193 = !{!165, !7, i64 32}
!194 = !{!195, !7, i64 0}
!195 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48}
!196 = distinct !{!196, !36}
!197 = !{!195, !7, i64 8}
!198 = !{!195, !7, i64 12}
!199 = !{!165, !7, i64 524}
!200 = !{!195, !7, i64 16}
!201 = !{!165, !7, i64 528}
!202 = !{!195, !7, i64 20}
!203 = !{!165, !7, i64 420}
!204 = !{!195, !7, i64 24}
!205 = !{!165, !7, i64 136}
!206 = !{!195, !7, i64 48}
!207 = !{!165, !7, i64 680}
!208 = !{!165, !7, i64 656}
!209 = !{!165, !7, i64 652}
!210 = !{!195, !7, i64 4}
