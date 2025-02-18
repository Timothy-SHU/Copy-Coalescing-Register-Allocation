; ModuleID = 'ldecod_src/cabac.c'
source_filename = "ldecod_src/cabac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pix_pos = type { i32, i32, i16, i16, i16, i16 }
%struct.macroblock = type { ptr, ptr, ptr, i32, %struct.BlockPos, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [3 x i32], i32, i32, i32, i32, i16, i8, i8, i16, i16, ptr, ptr, ptr, ptr, i16, [2 x [4 x [4 x [2 x i16]]]], i32, [3 x i64], [3 x i64], [3 x i64], i32, [4 x i8], [4 x i8], i8, i8, i8, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.BlockPos = type { i16, i16 }
%struct.video_par = type { ptr, ptr, ptr, [32 x %struct.seq_parameter_set_rbsp_t], [256 x %struct.pic_parameter_set_rbsp_t], ptr, [32 x %struct.subset_seq_parameter_set_rbsp_t], i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [3 x ptr], i32, i32, i32, i32, i32, ptr, [3 x ptr], ptr, ptr, [3 x ptr], i32, i32, ptr, ptr, [3 x ptr], i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, [2 x i32], i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x [2 x i32]], [3 x [2 x i32]], [3 x [2 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, %struct.image_data, i32, i32, i32, i64, i32, [1024 x i32], i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [100 x i32], ptr, [3 x ptr], ptr, ptr, ptr, i32, ptr, [20 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x ptr], [9 x i8], ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.seq_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.vui_seq_parameters_t, i32, i32 }
%struct.vui_seq_parameters_t = type { i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.hrd_parameters_t, i32, %struct.hrd_parameters_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hrd_parameters_t = type { i32, i32, i32, [32 x i32], [32 x i32], [32 x i32], i32, i32, i32, i32 }
%struct.pic_parameter_set_rbsp_t = type { i32, i32, i32, i32, i32, i32, [12 x i32], [6 x [16 x i32]], [6 x [64 x i32]], [6 x i32], [6 x i32], i32, i32, i32, [8 x i32], [8 x i32], [8 x i32], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.subset_seq_parameter_set_rbsp_t = type { %struct.seq_parameter_set_rbsp_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.mvcvui_tag }
%struct.mvcvui_tag = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [32 x i32], [32 x i32], [32 x i8], i8, i8, i8, i8 }
%struct.image_data = type { %struct.frame_format, [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x ptr], [3 x i32], [3 x i32], [3 x i32] }
%struct.frame_format = type { i32, i32, double, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], i32, [3 x i32], [3 x i32], [3 x i32], i32, i32 }
%struct.slice = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i16, i32, i32, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [6 x i8], [6 x ptr], ptr, ptr, ptr, [6 x [32 x i32]], [2 x i32], [2 x ptr], [2 x ptr], [2 x ptr], [2 x ptr], i32, i32, i32, %struct.nalunitheadermvcext_tag, i16, i16, i16, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [16 x i32], ptr, ptr, ptr, ptr, ptr, [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [4 x [4 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [3 x [6 x [8 x [8 x i32]]]], [12 x ptr], [64 x i32], i32, i32, i16, i16, i16, i16, ptr, ptr, ptr, i16, i16, i32, i32, ptr, ptr, i32, [17 x i32], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [6 x [16 x i8]] }
%struct.nalunitheadermvcext_tag = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i8 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.datapartition = type { ptr, %struct.DecodingEnvironment, ptr }
%struct.DecodingEnvironment = type { i32, i32, i32, ptr, ptr }
%struct.TextureInfoContexts = type { [3 x %struct.BiContextType], [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [22 x [4 x %struct.BiContextType]], [2 x [22 x [15 x %struct.BiContextType]]], [2 x [22 x [15 x %struct.BiContextType]]], [22 x [5 x %struct.BiContextType]], [22 x [5 x %struct.BiContextType]] }
%struct.storable_picture = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, [3 x ptr], %struct.pic_motion_params_old, [3 x %struct.pic_motion_params_old], ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, [2 x i8], [2 x ptr] }
%struct.pic_motion_params_old = type { ptr }
%struct.pic_motion_params = type { [2 x ptr], [2 x %struct.MotionVector], [2 x i8] }
%struct.MotionVector = type { i16, i16 }
%struct.bit_stream = type { i32, i32, i32, i32, ptr, i32 }

@.str = private unnamed_addr constant [37 x i8] c"create_contexts_MotionInfo: deco_ctx\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"create_contexts_TextureInfo: deco_ctx\00", align 1
@assignSE2partition = internal unnamed_addr constant [2 x [20 x i8]] [[20 x i8] zeroinitializer, [20 x i8] c"\00\00\00\00\00\00\00\01\01\01\01\00\02\02\02\02\00\00\00\00"], align 16
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@pos2ctx_map_int = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x8i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4], align 16
@pos2ctx_map = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4], align 16
@type2ctx_last = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 6, i16 6, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21], align 16
@maxpos = internal unnamed_addr constant [22 x i16] [i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 3, i16 14, i16 7, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15], align 16
@reltable.readRunLevel_CABAC = internal unnamed_addr constant [22 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last2x4c to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4c to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.readRunLevel_CABAC to i64)) to i32)], align 4
@pos2ctx_map4x4 = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0E", align 16
@pos2ctx_map8x8i = internal constant [64 x i8] c"\00\01\01\02\02\03\03\04\05\06\07\07\07\08\04\05\06\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0B\0C\0B\09\09\0A\0A\08\0D\0D\09\09\0A\0A\08\0D\0D\09\09\0A\0A\0E\0E\0E\0E\0E\0E", align 16
@pos2ctx_map8x4i = internal constant [32 x i8] c"\00\01\02\03\04\05\06\03\04\05\06\03\04\07\06\08\09\07\06\08\09\0A\0B\0C\0C\0A\0B\0D\0D\0E\0E\0E", align 16
@pos2ctx_map4x8i = internal constant [32 x i8] c"\00\01\01\01\02\03\03\04\04\04\05\06\02\07\07\08\08\08\05\06\09\0A\0A\0B\0B\0B\0C\0D\0D\0E\0E\0E", align 16
@pos2ctx_map2x4c = internal constant [16 x i8] c"\00\00\01\01\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@pos2ctx_map4x4c = internal constant [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02", align 16
@pos2ctx_map8x8 = internal constant [64 x i8] c"\00\01\02\03\04\05\05\04\04\03\03\04\04\04\05\05\04\04\04\04\03\03\06\07\07\07\08\09\0A\09\08\07\07\06\0B\0C\0D\0B\06\07\08\09\0E\0A\09\08\06\0B\0C\0D\0B\06\09\0E\0A\09\0B\0C\0D\0B\0E\0A\0C\0E", align 16
@pos2ctx_map8x4 = internal constant [32 x i8] c"\00\01\02\03\04\05\07\08\09\0A\0B\09\08\06\07\08\09\0A\0B\09\08\06\0C\08\09\0A\0B\09\0D\0D\0E\0E", align 16
@pos2ctx_last4x4 = internal constant [16 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F", align 16
@pos2ctx_last8x8 = internal constant [64 x i8] c"\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\05\05\05\05\06\06\06\06\07\07\07\07\08\08\08\08", align 16
@pos2ctx_last8x4 = internal constant [32 x i8] c"\00\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\03\03\03\03\04\04\04\04\05\05\06\06\07\07\08\08", align 16
@pos2ctx_last2x4c = internal constant [16 x i8] c"\00\00\01\01\02\02\02\02\02\02\02\02\02\02\02\02", align 16
@pos2ctx_last4x4c = internal constant [16 x i8] c"\00\00\00\00\01\01\01\01\02\02\02\02\02\02\02\02", align 16
@type2ctx_abs = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 3, i16 4, i16 5, i16 6, i16 5, i16 5, i16 10, i16 11, i16 12, i16 13, i16 13, i16 14, i16 16, i16 17, i16 18, i16 19, i16 19, i16 20], align 16
@max_c2 = internal unnamed_addr constant [22 x i16] [i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 3, i16 4, i16 3, i16 3, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4, i16 4], align 16

; Function Attrs: nounwind uwtable
define dso_local void @CheckAvailabilityOfNeighborsCABAC(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 81
  %7 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 160
  %8 = load ptr, ptr %7, align 8, !tbaa !42
  call void %8(ptr noundef %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %3) #12
  %9 = load ptr, ptr %7, align 8, !tbaa !42
  call void %9(ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %6, ptr noundef nonnull %2) #12
  %10 = load i32, ptr %2, align 4, !tbaa !48
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !50
  %14 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 124
  %15 = load ptr, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18
  br label %20

20:                                               ; preds = %1, %12
  %21 = phi ptr [ %19, %12 ], [ null, %1 ]
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  store ptr %21, ptr %22, align 8, !tbaa !55
  %23 = load i32, ptr %3, align 4, !tbaa !48
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 8, !tbaa !50
  %27 = getelementptr inbounds %struct.slice, ptr %26, i64 0, i32 124
  %28 = load ptr, ptr %27, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !54
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.macroblock, ptr %28, i64 %31
  br label %33

33:                                               ; preds = %20, %25
  %34 = phi ptr [ %32, %25 ], [ null, %20 ]
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  store ptr %34, ptr %35, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @cabac_new_slice(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 45
  store i32 0, ptr %2, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @create_contexts_MotionInfo() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(364) ptr @calloc(i64 noundef 1, i64 noundef 364) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #12
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @create_contexts_TextureInfo() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(6596) ptr @calloc(i64 noundef 1, i64 noundef 6596) #13
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #12
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_MotionInfo(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #12
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_TextureInfo(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef %0) #12
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readFieldModeInfo_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 4, !tbaa !59
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 124
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !60
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %15, i32 45
  %17 = load i32, ptr %16, align 8, !tbaa !61
  br label %18

18:                                               ; preds = %3, %10
  %19 = phi i32 [ %17, %10 ], [ 0, %3 ]
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %21 = load i32, ptr %20, align 8, !tbaa !62
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 124
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %27 = load i32, ptr %26, align 8, !tbaa !63
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 45
  %30 = load i32, ptr %29, align 8, !tbaa !61
  br label %31

31:                                               ; preds = %18, %23
  %32 = phi i32 [ %30, %23 ], [ 0, %18 ]
  %33 = add nsw i32 %32, %19
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 5, i64 %34
  %36 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %35) #12
  %37 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !64
  ret void
}

declare i32 @biari_decode_symbol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca [3 x ptr], align 16
  %9 = load ptr, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %10 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 58
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !67
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 1
  store ptr %9, ptr %20, align 8, !tbaa !34
  store ptr %0, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 22
  %22 = load i16, ptr %21, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 21
  store i16 %22, ptr %23, align 4, !tbaa !69
  %24 = zext i32 %14 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %24, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 45
  store i32 %26, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 3
  store i32 %15, ptr %28, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %30 = load i32, ptr %29, align 8, !tbaa !71
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %26, 0
  %33 = select i1 %31, i1 true, i1 %32
  %34 = and i32 %14, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i16 4, i16 2
  %37 = select i1 %33, i16 0, i16 %36
  %38 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 25
  store i16 %37, ptr %38, align 2, !tbaa !72
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %19) #12
  %39 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %41 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 81
  %42 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 160
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  call void %43(ptr noundef nonnull %19, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %41, ptr noundef nonnull %7) #12
  %44 = load ptr, ptr %42, align 8, !tbaa !42
  call void %44(ptr noundef nonnull %19, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %41, ptr noundef nonnull %6) #12
  %45 = load i32, ptr %6, align 4, !tbaa !48
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %3
  %48 = load ptr, ptr %19, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.slice, ptr %48, i64 0, i32 124
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !54
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.macroblock, ptr %50, i64 %53
  br label %55

55:                                               ; preds = %3, %47
  %56 = phi ptr [ %54, %47 ], [ null, %3 ]
  %57 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 26
  store ptr %56, ptr %57, align 8, !tbaa !55
  %58 = load i32, ptr %7, align 4, !tbaa !48
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %19, align 8, !tbaa !50
  %62 = getelementptr inbounds %struct.slice, ptr %61, i64 0, i32 124
  %63 = load ptr, ptr %62, align 8, !tbaa !51
  %64 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.macroblock, ptr %63, i64 %66
  br label %68

68:                                               ; preds = %55, %60
  %69 = phi ptr [ %67, %60 ], [ null, %55 ]
  %70 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 27
  store ptr %69, ptr %70, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  %71 = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  br label %72

72:                                               ; preds = %68, %72
  %73 = phi i64 [ 0, %68 ], [ %76, %72 ]
  %74 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %75 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %73
  store ptr %74, ptr %75, align 8, !tbaa !73
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %78, label %72, !llvm.loop !74

78:                                               ; preds = %72
  %79 = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false)
  %80 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !77
  %82 = load i32, ptr %81, align 4, !tbaa !79
  %83 = getelementptr inbounds %struct.DecodingEnvironment, ptr %71, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !77
  store i32 %82, ptr %84, align 4, !tbaa !79
  br label %85

85:                                               ; preds = %78, %85
  %86 = phi i64 [ 0, %78 ], [ %90, %85 ]
  %87 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !73
  %89 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %11, i64 0, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %88, ptr noundef nonnull align 2 dereferenceable(44) %89, i64 44, i1 false)
  %90 = add nuw nsw i64 %86, 1
  %91 = icmp eq i64 %90, 3
  br i1 %91, label %92, label %85, !llvm.loop !80

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.MotionInfoContexts, ptr %11, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %79, ptr noundef nonnull align 2 dereferenceable(16) %93, i64 16, i1 false)
  %94 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 45
  store i32 0, ptr %94, align 4, !tbaa !57
  %95 = load ptr, ptr %19, align 8, !tbaa !50
  %96 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 58
  %97 = load ptr, ptr %96, align 8, !tbaa !58
  %98 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 27
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.macroblock, ptr %99, i64 0, i32 41
  %103 = load i8, ptr %102, align 2, !tbaa !81
  %104 = icmp eq i8 %103, 0
  %105 = zext i1 %104 to i64
  br label %106

106:                                              ; preds = %101, %92
  %107 = phi i64 [ %105, %101 ], [ 0, %92 ]
  %108 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 26
  %109 = load ptr, ptr %108, align 8, !tbaa !55
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.macroblock, ptr %109, i64 0, i32 41
  %113 = load i8, ptr %112, align 2, !tbaa !81
  %114 = icmp eq i8 %113, 0
  %115 = zext i1 %114 to i64
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i64 [ %115, %111 ], [ 0, %106 ]
  %118 = add nuw nsw i64 %117, %107
  %119 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %97, i64 0, i64 1, i64 %118
  %120 = call i32 @biari_decode_symbol(ptr noundef nonnull %12, ptr noundef nonnull %119) #12
  %121 = icmp ne i32 %120, 1
  %122 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %123 = zext i1 %121 to i32
  store i32 %123, ptr %122, align 4, !tbaa !64
  %124 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  br i1 %121, label %127, label %125

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 45
  store i32 0, ptr %126, align 4, !tbaa !57
  br label %166

127:                                              ; preds = %116
  %128 = load ptr, ptr %19, align 8, !tbaa !50
  %129 = getelementptr inbounds %struct.slice, ptr %128, i64 0, i32 58
  %130 = load ptr, ptr %129, align 8, !tbaa !58
  %131 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 50
  %132 = load i32, ptr %131, align 4, !tbaa !59
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.slice, ptr %128, i64 0, i32 124
  %136 = load ptr, ptr %135, align 8, !tbaa !51
  %137 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 46
  %138 = load i32, ptr %137, align 4, !tbaa !60
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.macroblock, ptr %136, i64 %139, i32 45
  %141 = load i32, ptr %140, align 8, !tbaa !61
  br label %142

142:                                              ; preds = %134, %127
  %143 = phi i32 [ %141, %134 ], [ 0, %127 ]
  %144 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 51
  %145 = load i32, ptr %144, align 8, !tbaa !62
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %155, label %147

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.slice, ptr %128, i64 0, i32 124
  %149 = load ptr, ptr %148, align 8, !tbaa !51
  %150 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 47
  %151 = load i32, ptr %150, align 8, !tbaa !63
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.macroblock, ptr %149, i64 %152, i32 45
  %154 = load i32, ptr %153, align 8, !tbaa !61
  br label %155

155:                                              ; preds = %142, %147
  %156 = phi i32 [ %154, %147 ], [ 0, %142 ]
  %157 = add nsw i32 %156, %143
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.MotionInfoContexts, ptr %130, i64 0, i32 5, i64 %158
  %160 = call i32 @biari_decode_symbol(ptr noundef nonnull %12, ptr noundef nonnull %159) #12
  store i32 %160, ptr %124, align 4, !tbaa !64
  %161 = load ptr, ptr %16, align 8, !tbaa !51
  %162 = load i32, ptr %13, align 4, !tbaa !67
  %163 = add i32 %162, -1
  %164 = zext i32 %163 to i64
  %165 = getelementptr inbounds %struct.macroblock, ptr %161, i64 %164, i32 45
  store i32 %160, ptr %165, align 8, !tbaa !61
  br label %166

166:                                              ; preds = %125, %155
  %167 = load i32, ptr %13, align 4, !tbaa !67
  %168 = add i32 %167, -1
  store i32 %168, ptr %13, align 4, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %71, i64 32, i1 false)
  %169 = load ptr, ptr %80, align 8, !tbaa !77
  store i32 %82, ptr %169, align 4, !tbaa !79
  br label %170

170:                                              ; preds = %166, %170
  %171 = phi i64 [ 0, %166 ], [ %175, %170 ]
  %172 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %11, i64 0, i64 %171
  %173 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %171
  %174 = load ptr, ptr %173, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %172, ptr noundef nonnull align 2 dereferenceable(44) %174, i64 44, i1 false)
  %175 = add nuw nsw i64 %171, 1
  %176 = icmp eq i64 %175, 3
  br i1 %176, label %177, label %170, !llvm.loop !82

177:                                              ; preds = %170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %93, ptr noundef nonnull align 2 dereferenceable(16) %79, i64 16, i1 false)
  %178 = load ptr, ptr %39, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %179 = getelementptr inbounds %struct.video_par, ptr %178, i64 0, i32 81
  %180 = getelementptr inbounds %struct.video_par, ptr %178, i64 0, i32 160
  %181 = load ptr, ptr %180, align 8, !tbaa !42
  call void %181(ptr noundef nonnull %19, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %179, ptr noundef nonnull %5) #12
  %182 = load ptr, ptr %180, align 8, !tbaa !42
  call void %182(ptr noundef nonnull %19, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %179, ptr noundef nonnull %4) #12
  %183 = load i32, ptr %4, align 4, !tbaa !48
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %193, label %185

185:                                              ; preds = %177
  %186 = load ptr, ptr %19, align 8, !tbaa !50
  %187 = getelementptr inbounds %struct.slice, ptr %186, i64 0, i32 124
  %188 = load ptr, ptr %187, align 8, !tbaa !51
  %189 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %190 = load i32, ptr %189, align 4, !tbaa !54
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.macroblock, ptr %188, i64 %191
  br label %193

193:                                              ; preds = %177, %185
  %194 = phi ptr [ %192, %185 ], [ null, %177 ]
  store ptr %194, ptr %108, align 8, !tbaa !55
  %195 = load i32, ptr %5, align 4, !tbaa !48
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %205, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr %19, align 8, !tbaa !50
  %199 = getelementptr inbounds %struct.slice, ptr %198, i64 0, i32 124
  %200 = load ptr, ptr %199, align 8, !tbaa !51
  %201 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %202 = load i32, ptr %201, align 4, !tbaa !54
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.macroblock, ptr %200, i64 %203
  br label %205

205:                                              ; preds = %193, %197
  %206 = phi ptr [ %204, %197 ], [ null, %193 ]
  store ptr %206, ptr %98, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @free(ptr noundef %71) #12
  br label %207

207:                                              ; preds = %205, %207
  %208 = phi i64 [ 0, %205 ], [ %211, %207 ]
  %209 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !73
  call void @free(ptr noundef %210) #12
  %211 = add nuw nsw i64 %208, 1
  %212 = icmp eq i64 %211, 3
  br i1 %212, label %213, label %207, !llvm.loop !83

213:                                              ; preds = %207
  %214 = xor i1 %121, true
  %215 = zext i1 %214 to i32
  call void @free(ptr noundef %79) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  ret i32 %215
}

declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind uwtable
define dso_local void @read_skip_flag_CABAC_p_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %8, i64 0, i32 41
  %12 = load i8, ptr %11, align 2, !tbaa !81
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i64
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi i64 [ %14, %10 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.macroblock, ptr %18, i64 0, i32 41
  %22 = load i8, ptr %21, align 2, !tbaa !81
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i64
  br label %25

25:                                               ; preds = %15, %20
  %26 = phi i64 [ %24, %20 ], [ 0, %15 ]
  %27 = add nuw nsw i64 %26, %16
  %28 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 %27
  %29 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %28) #12
  %30 = icmp ne i32 %29, 1
  %31 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %32 = zext i1 %30 to i32
  store i32 %32, ptr %31, align 4, !tbaa !64
  br i1 %30, label %35, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 45
  store i32 0, ptr %34, align 4, !tbaa !57
  br label %35

35:                                               ; preds = %33, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca [3 x ptr], align 16
  %9 = load ptr, ptr %0, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #12
  %10 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 58
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %14 = load i32, ptr %13, align 4, !tbaa !67
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 4, !tbaa !67
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  %17 = load ptr, ptr %16, align 8, !tbaa !51
  %18 = zext i32 %15 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18
  %20 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 1
  store ptr %9, ptr %20, align 8, !tbaa !34
  store ptr %0, ptr %19, align 8, !tbaa !50
  %21 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 22
  %22 = load i16, ptr %21, align 4, !tbaa !68
  %23 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 21
  store i16 %22, ptr %23, align 4, !tbaa !69
  %24 = zext i32 %14 to i64
  %25 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %24, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !61
  %27 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 45
  store i32 %26, ptr %27, align 8, !tbaa !61
  %28 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 3
  store i32 %15, ptr %28, align 8, !tbaa !70
  %29 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %30 = load i32, ptr %29, align 8, !tbaa !71
  %31 = icmp eq i32 %30, 0
  %32 = icmp eq i32 %26, 0
  %33 = select i1 %31, i1 true, i1 %32
  %34 = and i32 %14, 1
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, i16 4, i16 2
  %37 = select i1 %33, i16 0, i16 %36
  %38 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 25
  store i16 %37, ptr %38, align 2, !tbaa !72
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %19) #12
  %39 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %41 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 81
  %42 = getelementptr inbounds %struct.video_par, ptr %40, i64 0, i32 160
  %43 = load ptr, ptr %42, align 8, !tbaa !42
  call void %43(ptr noundef nonnull %19, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %41, ptr noundef nonnull %7) #12
  %44 = load ptr, ptr %42, align 8, !tbaa !42
  call void %44(ptr noundef nonnull %19, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %41, ptr noundef nonnull %6) #12
  %45 = load i32, ptr %6, align 4, !tbaa !48
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %3
  %48 = load ptr, ptr %19, align 8, !tbaa !50
  %49 = getelementptr inbounds %struct.slice, ptr %48, i64 0, i32 124
  %50 = load ptr, ptr %49, align 8, !tbaa !51
  %51 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !54
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.macroblock, ptr %50, i64 %53
  br label %55

55:                                               ; preds = %3, %47
  %56 = phi ptr [ %54, %47 ], [ null, %3 ]
  %57 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 26
  store ptr %56, ptr %57, align 8, !tbaa !55
  %58 = load i32, ptr %7, align 4, !tbaa !48
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %55
  %61 = load ptr, ptr %19, align 8, !tbaa !50
  %62 = getelementptr inbounds %struct.slice, ptr %61, i64 0, i32 124
  %63 = load ptr, ptr %62, align 8, !tbaa !51
  %64 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !54
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.macroblock, ptr %63, i64 %66
  br label %68

68:                                               ; preds = %55, %60
  %69 = phi ptr [ %67, %60 ], [ null, %55 ]
  %70 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 27
  store ptr %69, ptr %70, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  %71 = call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #13
  br label %72

72:                                               ; preds = %68, %72
  %73 = phi i64 [ 0, %68 ], [ %76, %72 ]
  %74 = call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #13
  %75 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %73
  store ptr %74, ptr %75, align 8, !tbaa !73
  %76 = add nuw nsw i64 %73, 1
  %77 = icmp eq i64 %76, 3
  br i1 %77, label %78, label %72, !llvm.loop !84

78:                                               ; preds = %72
  %79 = call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %71, ptr noundef nonnull align 8 dereferenceable(32) %10, i64 32, i1 false)
  %80 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1, i32 4
  %81 = load ptr, ptr %80, align 8, !tbaa !77
  %82 = load i32, ptr %81, align 4, !tbaa !79
  %83 = getelementptr inbounds %struct.DecodingEnvironment, ptr %71, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !77
  store i32 %82, ptr %84, align 4, !tbaa !79
  br label %85

85:                                               ; preds = %78, %85
  %86 = phi i64 [ 0, %78 ], [ %90, %85 ]
  %87 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !73
  %89 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %12, i64 0, i64 %86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %88, ptr noundef nonnull align 2 dereferenceable(44) %89, i64 44, i1 false)
  %90 = add nuw nsw i64 %86, 1
  %91 = icmp eq i64 %90, 3
  br i1 %91, label %92, label %85, !llvm.loop !85

92:                                               ; preds = %85
  %93 = getelementptr inbounds %struct.MotionInfoContexts, ptr %12, i64 0, i32 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %79, ptr noundef nonnull align 2 dereferenceable(16) %93, i64 16, i1 false)
  %94 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 45
  store i32 0, ptr %94, align 4, !tbaa !57
  %95 = load ptr, ptr %19, align 8, !tbaa !50
  %96 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 58
  %97 = load ptr, ptr %96, align 8, !tbaa !58
  %98 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 27
  %99 = load ptr, ptr %98, align 8, !tbaa !56
  %100 = icmp eq ptr %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = getelementptr inbounds %struct.macroblock, ptr %99, i64 0, i32 41
  %103 = load i8, ptr %102, align 2, !tbaa !81
  %104 = icmp eq i8 %103, 0
  %105 = select i1 %104, i64 8, i64 7
  br label %106

106:                                              ; preds = %101, %92
  %107 = phi i64 [ %105, %101 ], [ 7, %92 ]
  %108 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 26
  %109 = load ptr, ptr %108, align 8, !tbaa !55
  %110 = icmp eq ptr %109, null
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.macroblock, ptr %109, i64 0, i32 41
  %113 = load i8, ptr %112, align 2, !tbaa !81
  %114 = icmp eq i8 %113, 0
  %115 = zext i1 %114 to i64
  br label %116

116:                                              ; preds = %111, %106
  %117 = phi i64 [ %115, %111 ], [ 0, %106 ]
  %118 = add nuw nsw i64 %117, %107
  %119 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %97, i64 0, i64 2, i64 %118
  %120 = call i32 @biari_decode_symbol(ptr noundef nonnull %10, ptr noundef nonnull %119) #12
  %121 = icmp ne i32 %120, 1
  %122 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %123 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %124 = zext i1 %121 to i32
  store i32 %124, ptr %122, align 8, !tbaa !86
  store i32 %124, ptr %123, align 4, !tbaa !64
  %125 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  br i1 %121, label %131, label %126

126:                                              ; preds = %116
  %127 = getelementptr inbounds %struct.slice, ptr %95, i64 0, i32 45
  store i32 0, ptr %127, align 4, !tbaa !57
  %128 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %129 = load i32, ptr %128, align 8, !tbaa !86
  %130 = icmp eq i32 %129, 0
  br label %131

131:                                              ; preds = %116, %126
  %132 = phi i1 [ %130, %126 ], [ false, %116 ]
  br i1 %132, label %172, label %133

133:                                              ; preds = %131
  %134 = load ptr, ptr %19, align 8, !tbaa !50
  %135 = getelementptr inbounds %struct.slice, ptr %134, i64 0, i32 58
  %136 = load ptr, ptr %135, align 8, !tbaa !58
  %137 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 50
  %138 = load i32, ptr %137, align 4, !tbaa !59
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %148, label %140

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.slice, ptr %134, i64 0, i32 124
  %142 = load ptr, ptr %141, align 8, !tbaa !51
  %143 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 46
  %144 = load i32, ptr %143, align 4, !tbaa !60
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.macroblock, ptr %142, i64 %145, i32 45
  %147 = load i32, ptr %146, align 8, !tbaa !61
  br label %148

148:                                              ; preds = %140, %133
  %149 = phi i32 [ %147, %140 ], [ 0, %133 ]
  %150 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 51
  %151 = load i32, ptr %150, align 8, !tbaa !62
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %161, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.slice, ptr %134, i64 0, i32 124
  %155 = load ptr, ptr %154, align 8, !tbaa !51
  %156 = getelementptr inbounds %struct.macroblock, ptr %17, i64 %18, i32 47
  %157 = load i32, ptr %156, align 8, !tbaa !63
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.macroblock, ptr %155, i64 %158, i32 45
  %160 = load i32, ptr %159, align 8, !tbaa !61
  br label %161

161:                                              ; preds = %148, %153
  %162 = phi i32 [ %160, %153 ], [ 0, %148 ]
  %163 = add nsw i32 %162, %149
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.MotionInfoContexts, ptr %136, i64 0, i32 5, i64 %164
  %166 = call i32 @biari_decode_symbol(ptr noundef nonnull %10, ptr noundef nonnull %165) #12
  store i32 %166, ptr %125, align 4, !tbaa !64
  %167 = load ptr, ptr %16, align 8, !tbaa !51
  %168 = load i32, ptr %13, align 4, !tbaa !67
  %169 = add i32 %168, -1
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.macroblock, ptr %167, i64 %170, i32 45
  store i32 %166, ptr %171, align 8, !tbaa !61
  br label %172

172:                                              ; preds = %161, %131
  %173 = load i32, ptr %13, align 4, !tbaa !67
  %174 = add i32 %173, -1
  store i32 %174, ptr %13, align 4, !tbaa !67
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %71, i64 32, i1 false)
  %175 = load ptr, ptr %80, align 8, !tbaa !77
  store i32 %82, ptr %175, align 4, !tbaa !79
  br label %176

176:                                              ; preds = %172, %176
  %177 = phi i64 [ 0, %172 ], [ %181, %176 ]
  %178 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %12, i64 0, i64 %177
  %179 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %177
  %180 = load ptr, ptr %179, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %178, ptr noundef nonnull align 2 dereferenceable(44) %180, i64 44, i1 false)
  %181 = add nuw nsw i64 %177, 1
  %182 = icmp eq i64 %181, 3
  br i1 %182, label %183, label %176, !llvm.loop !87

183:                                              ; preds = %176
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %93, ptr noundef nonnull align 2 dereferenceable(16) %79, i64 16, i1 false)
  %184 = load ptr, ptr %39, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %185 = getelementptr inbounds %struct.video_par, ptr %184, i64 0, i32 81
  %186 = getelementptr inbounds %struct.video_par, ptr %184, i64 0, i32 160
  %187 = load ptr, ptr %186, align 8, !tbaa !42
  call void %187(ptr noundef nonnull %19, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %185, ptr noundef nonnull %5) #12
  %188 = load ptr, ptr %186, align 8, !tbaa !42
  call void %188(ptr noundef nonnull %19, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %185, ptr noundef nonnull %4) #12
  %189 = load i32, ptr %4, align 4, !tbaa !48
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %199, label %191

191:                                              ; preds = %183
  %192 = load ptr, ptr %19, align 8, !tbaa !50
  %193 = getelementptr inbounds %struct.slice, ptr %192, i64 0, i32 124
  %194 = load ptr, ptr %193, align 8, !tbaa !51
  %195 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %196 = load i32, ptr %195, align 4, !tbaa !54
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.macroblock, ptr %194, i64 %197
  br label %199

199:                                              ; preds = %183, %191
  %200 = phi ptr [ %198, %191 ], [ null, %183 ]
  store ptr %200, ptr %108, align 8, !tbaa !55
  %201 = load i32, ptr %5, align 4, !tbaa !48
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %211, label %203

203:                                              ; preds = %199
  %204 = load ptr, ptr %19, align 8, !tbaa !50
  %205 = getelementptr inbounds %struct.slice, ptr %204, i64 0, i32 124
  %206 = load ptr, ptr %205, align 8, !tbaa !51
  %207 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %208 = load i32, ptr %207, align 4, !tbaa !54
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.macroblock, ptr %206, i64 %209
  br label %211

211:                                              ; preds = %199, %203
  %212 = phi ptr [ %210, %203 ], [ null, %199 ]
  store ptr %212, ptr %98, align 8, !tbaa !56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  call void @free(ptr noundef %71) #12
  br label %213

213:                                              ; preds = %211, %213
  %214 = phi i64 [ 0, %211 ], [ %217, %213 ]
  %215 = getelementptr inbounds [3 x ptr], ptr %8, i64 0, i64 %214
  %216 = load ptr, ptr %215, align 8, !tbaa !73
  call void @free(ptr noundef %216) #12
  %217 = add nuw nsw i64 %214, 1
  %218 = icmp eq i64 %217, 3
  br i1 %218, label %219, label %213, !llvm.loop !88

219:                                              ; preds = %213
  %220 = zext i1 %132 to i32
  call void @free(ptr noundef %79) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #12
  ret i32 %220
}

; Function Attrs: nounwind uwtable
define dso_local void @read_skip_flag_CABAC_b_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !56
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %8, i64 0, i32 41
  %12 = load i8, ptr %11, align 2, !tbaa !81
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i64 8, i64 7
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi i64 [ %14, %10 ], [ 7, %3 ]
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !55
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.macroblock, ptr %18, i64 0, i32 41
  %22 = load i8, ptr %21, align 2, !tbaa !81
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i64
  br label %25

25:                                               ; preds = %15, %20
  %26 = phi i64 [ %24, %20 ], [ 0, %15 ]
  %27 = add nuw nsw i64 %26, %16
  %28 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 %27
  %29 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %28) #12
  %30 = icmp ne i32 %29, 1
  %31 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %32 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %33 = zext i1 %30 to i32
  store i32 %33, ptr %31, align 8, !tbaa !86
  store i32 %33, ptr %32, align 4, !tbaa !64
  br i1 %30, label %36, label %34

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 45
  store i32 0, ptr %35, align 4, !tbaa !57
  br label %36

36:                                               ; preds = %34, %25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @read_MVD_CABAC(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !34
  %8 = load ptr, ptr %0, align 8, !tbaa !50
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !58
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = and i32 %16, 1
  %18 = ashr i32 %16, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %19 = add nsw i32 %12, -1
  %20 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %19, i32 noundef %14, ptr noundef nonnull %20, ptr noundef nonnull %4) #12
  %21 = load i32, ptr %4, align 4, !tbaa !48
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 124
  %25 = load ptr, ptr %24, align 8, !tbaa !51
  %26 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !54
  %28 = sext i32 %27 to i64
  %29 = zext nneg i32 %17 to i64
  %30 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %31 = load i16, ptr %30, align 2, !tbaa !91
  %32 = sext i16 %31 to i64
  %33 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %34 = load i16, ptr %33, align 4, !tbaa !92
  %35 = sext i16 %34 to i64
  %36 = sext i32 %18 to i64
  %37 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 31, i64 %29, i64 %32, i64 %35, i64 %36
  %38 = load i16, ptr %37, align 2, !tbaa !93
  %39 = call i16 @llvm.abs.i16(i16 %38, i1 false)
  %40 = zext i16 %39 to i32
  %41 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 25
  %42 = load i32, ptr %41, align 8, !tbaa !71
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq i32 %18, 1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %63

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %48 = load i32, ptr %47, align 8, !tbaa !61
  switch i32 %48, label %63 [
    i32 0, label %49
    i32 1, label %57
  ]

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !61
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = shl nuw nsw i32 %40, 1
  br label %63

55:                                               ; preds = %49
  %56 = icmp eq i32 %48, 1
  br i1 %56, label %57, label %63

57:                                               ; preds = %46, %55
  %58 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 45
  %59 = load i32, ptr %58, align 8, !tbaa !61
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = lshr i32 %40, %61
  br label %63

63:                                               ; preds = %57, %46, %23, %55, %53, %3
  %64 = phi i32 [ %54, %53 ], [ %40, %55 ], [ %40, %23 ], [ 0, %3 ], [ %40, %46 ], [ %62, %57 ]
  %65 = add nsw i32 %14, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %65, ptr noundef nonnull %20, ptr noundef nonnull %5) #12
  %66 = load i32, ptr %5, align 4, !tbaa !48
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %108, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 124
  %70 = load ptr, ptr %69, align 8, !tbaa !51
  %71 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %72 = load i32, ptr %71, align 4, !tbaa !54
  %73 = sext i32 %72 to i64
  %74 = zext nneg i32 %17 to i64
  %75 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %76 = load i16, ptr %75, align 2, !tbaa !91
  %77 = sext i16 %76 to i64
  %78 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %79 = load i16, ptr %78, align 4, !tbaa !92
  %80 = sext i16 %79 to i64
  %81 = sext i32 %18 to i64
  %82 = getelementptr inbounds %struct.macroblock, ptr %70, i64 %73, i32 31, i64 %74, i64 %77, i64 %80, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !93
  %84 = call i16 @llvm.abs.i16(i16 %83, i1 false)
  %85 = zext i16 %84 to i32
  %86 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 25
  %87 = load i32, ptr %86, align 8, !tbaa !71
  %88 = icmp ne i32 %87, 0
  %89 = icmp eq i32 %18, 1
  %90 = select i1 %88, i1 %89, i1 false
  br i1 %90, label %91, label %108

91:                                               ; preds = %68
  %92 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %93 = load i32, ptr %92, align 8, !tbaa !61
  switch i32 %93, label %108 [
    i32 0, label %94
    i32 1, label %102
  ]

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.macroblock, ptr %70, i64 %73, i32 45
  %96 = load i32, ptr %95, align 8, !tbaa !61
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = shl nuw nsw i32 %85, 1
  br label %108

100:                                              ; preds = %94
  %101 = icmp eq i32 %93, 1
  br i1 %101, label %102, label %108

102:                                              ; preds = %91, %100
  %103 = getelementptr inbounds %struct.macroblock, ptr %70, i64 %73, i32 45
  %104 = load i32, ptr %103, align 8, !tbaa !61
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = lshr i32 %85, %106
  br label %108

108:                                              ; preds = %102, %91, %68, %100, %98, %63
  %109 = phi i32 [ %99, %98 ], [ %85, %100 ], [ %85, %68 ], [ 0, %63 ], [ %85, %91 ], [ %107, %102 ]
  %110 = add nuw nsw i32 %109, %64
  %111 = icmp ult i32 %110, 3
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = mul nsw i32 %18, 5
  br label %121

114:                                              ; preds = %108
  %115 = icmp ugt i32 %110, 32
  %116 = mul nsw i32 %18, 5
  br i1 %115, label %117, label %119

117:                                              ; preds = %114
  %118 = add nsw i32 %116, 3
  br label %121

119:                                              ; preds = %114
  %120 = add nsw i32 %116, 2
  br label %121

121:                                              ; preds = %117, %119, %112
  %122 = phi i32 [ %113, %112 ], [ %118, %117 ], [ %120, %119 ]
  %123 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %122, ptr %123, align 8, !tbaa !94
  %124 = getelementptr inbounds %struct.MotionInfoContexts, ptr %10, i64 0, i32 2
  %125 = sext i32 %122 to i64
  %126 = getelementptr inbounds [10 x %struct.BiContextType], ptr %124, i64 0, i64 %125
  %127 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %126) #12
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %187, label %129

129:                                              ; preds = %121
  %130 = mul nsw i32 %18, 5
  %131 = getelementptr inbounds %struct.MotionInfoContexts, ptr %10, i64 0, i32 2, i64 1
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds %struct.BiContextType, ptr %131, i64 %132
  %134 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %133) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %180, label %136

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.BiContextType, ptr %133, i64 1
  br label %138

138:                                              ; preds = %138, %136
  %139 = phi i32 [ 0, %136 ], [ %150, %138 ]
  %140 = phi ptr [ %137, %136 ], [ %149, %138 ]
  %141 = phi i32 [ 1, %136 ], [ %143, %138 ]
  %142 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %140) #12
  %143 = add nuw nsw i32 %141, 1
  %144 = icmp eq i32 %143, 2
  %145 = zext i1 %144 to i64
  %146 = getelementptr inbounds %struct.BiContextType, ptr %140, i64 %145
  %147 = icmp eq i32 %143, 3
  %148 = zext i1 %147 to i64
  %149 = getelementptr inbounds %struct.BiContextType, ptr %146, i64 %148
  %150 = add nuw nsw i32 %139, 1
  %151 = icmp ne i32 %142, 0
  %152 = icmp ne i32 %143, 8
  %153 = select i1 %151, i1 %152, i1 false
  br i1 %153, label %138, label %154, !llvm.loop !95

154:                                              ; preds = %138
  br i1 %151, label %155, label %180

155:                                              ; preds = %154, %155
  %156 = phi i32 [ %162, %155 ], [ 3, %154 ]
  %157 = phi i32 [ %164, %155 ], [ 0, %154 ]
  %158 = call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #12
  %159 = icmp eq i32 %158, 1
  %160 = shl nuw i32 1, %156
  %161 = zext i1 %159 to i32
  %162 = add nuw nsw i32 %156, %161
  %163 = select i1 %159, i32 %160, i32 0
  %164 = add nsw i32 %163, %157
  %165 = icmp eq i32 %158, 0
  br i1 %165, label %166, label %155, !llvm.loop !96

166:                                              ; preds = %155, %166
  %167 = phi i32 [ %174, %166 ], [ 0, %155 ]
  %168 = phi i32 [ %169, %166 ], [ %162, %155 ]
  %169 = add nsw i32 %168, -1
  %170 = call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #12
  %171 = icmp eq i32 %170, 1
  %172 = shl nuw i32 1, %169
  %173 = select i1 %171, i32 %172, i32 0
  %174 = or i32 %173, %167
  %175 = icmp eq i32 %169, 0
  br i1 %175, label %176, label %166, !llvm.loop !97

176:                                              ; preds = %166
  %177 = add nuw i32 %139, 2
  %178 = add i32 %177, %164
  %179 = add i32 %178, %174
  br label %180

180:                                              ; preds = %129, %154, %176
  %181 = phi i32 [ 0, %129 ], [ %179, %176 ], [ %150, %154 ]
  %182 = add i32 %181, 1
  %183 = call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #12
  %184 = icmp eq i32 %183, 0
  %185 = xor i32 %181, -1
  %186 = select i1 %184, i32 %182, i32 %185
  br label %187

187:                                              ; preds = %180, %121
  %188 = phi i32 [ 0, %121 ], [ %186, %180 ]
  %189 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %188, ptr %189, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

declare void @get4x4NeighbourBase(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @biari_decode_symbol_eq_prob(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @readB8_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 0, i64 1
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 0, i64 3
  %12 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 0, i64 4
  %16 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %15) #12
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 3, i32 2
  br label %19

19:                                               ; preds = %10, %14, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %14 ], [ 1, %10 ]
  %21 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readB8_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 1
  %12 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %11) #12
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 2
  %16 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 3
  %17 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %15) #12
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #12
  %20 = icmp eq i32 %19, 0
  br i1 %18, label %32, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #12
  %23 = icmp eq i32 %22, 0
  br i1 %20, label %26, label %24

24:                                               ; preds = %21
  %25 = select i1 %23, i32 10, i32 11
  br label %43

26:                                               ; preds = %21
  %27 = select i1 %23, i32 6, i32 8
  %28 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #12
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = or disjoint i32 %27, %30
  br label %43

32:                                               ; preds = %14
  %33 = select i1 %20, i32 2, i32 4
  %34 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #12
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = or disjoint i32 %33, %36
  br label %43

38:                                               ; preds = %10
  %39 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 3
  %40 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %39) #12
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  br label %43

43:                                               ; preds = %32, %26, %24, %38
  %44 = phi i32 [ %25, %24 ], [ %42, %38 ], [ %31, %26 ], [ %37, %32 ]
  %45 = add nuw nsw i32 %44, 1
  br label %46

46:                                               ; preds = %3, %43
  %47 = phi i32 [ %45, %43 ], [ 0, %3 ]
  %48 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_transform_size_flag_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !55
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %8, i64 0, i32 54
  %12 = load i32, ptr %11, align 4, !tbaa !99
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !56
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.macroblock, ptr %16, i64 0, i32 54
  %20 = load i32, ptr %19, align 4, !tbaa !99
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ]
  %23 = add nsw i32 %22, %14
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %24
  %26 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %25) #12
  %27 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_i_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !100
  switch i32 %8, label %133 [
    i32 2, label %9
    i32 4, label %55
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !55
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.macroblock, ptr %11, i64 0, i32 30
  %15 = load i16, ptr %14, align 8, !tbaa !101
  %16 = and i16 %15, -5
  %17 = icmp ne i16 %16, 9
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi i32 [ %18, %13 ], [ 0, %9 ]
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !56
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.macroblock, ptr %22, i64 0, i32 30
  %26 = load i16, ptr %25, align 8, !tbaa !101
  %27 = and i16 %26, -5
  %28 = icmp ne i16 %27, 9
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i32 [ %29, %24 ], [ 0, %19 ]
  %32 = add nuw nsw i32 %31, %20
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %33
  %35 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %34) #12
  %36 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %32, ptr %36, align 8, !tbaa !94
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %133, label %38

38:                                               ; preds = %30
  %39 = tail call i32 @biari_decode_final(ptr noundef %2) #12
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %133, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 4
  %43 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %42) #12
  %44 = mul nsw i32 %43, 12
  %45 = or disjoint i32 %44, 1
  %46 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 5
  %47 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %46) #12
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %124, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 6
  %51 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %50) #12
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 5, i32 9
  %54 = add i32 %53, %44
  br label %124

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %57 = load ptr, ptr %56, align 8, !tbaa !55
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.macroblock, ptr %57, i64 0, i32 30
  %61 = load i16, ptr %60, align 8, !tbaa !101
  %62 = icmp ne i16 %61, 12
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i32 [ %63, %59 ], [ 0, %55 ]
  %66 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %67 = load ptr, ptr %66, align 8, !tbaa !56
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.macroblock, ptr %67, i64 0, i32 30
  %71 = load i16, ptr %70, align 8, !tbaa !101
  %72 = icmp ne i16 %71, 12
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i32 [ %73, %69 ], [ 0, %64 ]
  %76 = add nuw nsw i32 %75, %65
  %77 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1
  %78 = zext nneg i32 %76 to i64
  %79 = getelementptr inbounds %struct.BiContextType, ptr %77, i64 %78
  %80 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %79) #12
  %81 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %76, ptr %81, align 8, !tbaa !94
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %133, label %83

83:                                               ; preds = %74
  %84 = load ptr, ptr %56, align 8, !tbaa !55
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.macroblock, ptr %84, i64 0, i32 30
  %88 = load i16, ptr %87, align 8, !tbaa !101
  %89 = icmp ne i16 %88, 9
  %90 = zext i1 %89 to i32
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %65, %83 ]
  %93 = load ptr, ptr %66, align 8, !tbaa !56
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.macroblock, ptr %93, i64 0, i32 30
  %97 = load i16, ptr %96, align 8, !tbaa !101
  %98 = icmp ne i16 %97, 9
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i32 [ %99, %95 ], [ %75, %91 ]
  %102 = add nuw nsw i32 %101, %92
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %103
  %105 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %104) #12
  store i32 %102, ptr %81, align 8, !tbaa !94
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %100
  %108 = tail call i32 @biari_decode_final(ptr noundef %2) #12
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %133, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 4
  %112 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %111) #12
  %113 = mul nsw i32 %112, 12
  %114 = or disjoint i32 %113, 2
  %115 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 5
  %116 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %115) #12
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 6
  %120 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %119) #12
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 6, i32 10
  %123 = add i32 %122, %113
  br label %124

124:                                              ; preds = %110, %118, %41, %49
  %125 = phi i32 [ %45, %41 ], [ %54, %49 ], [ %114, %110 ], [ %123, %118 ]
  %126 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 7
  %127 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %126) #12
  %128 = shl nsw i32 %127, 1
  %129 = add nsw i32 %128, %125
  %130 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 8
  %131 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %130) #12
  %132 = add nsw i32 %129, %131
  br label %133

133:                                              ; preds = %124, %107, %100, %74, %3, %38, %30
  %134 = phi i32 [ 0, %30 ], [ 25, %38 ], [ 0, %3 ], [ 0, %74 ], [ 1, %100 ], [ 26, %107 ], [ %132, %124 ]
  %135 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %134, ptr %135, align 4, !tbaa !64
  ret void
}

declare i32 @biari_decode_final(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 4
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #12
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 7
  %12 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %11) #12
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i32 6, i32 7
  br label %29

15:                                               ; preds = %3
  %16 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 5
  %17 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 7
  %21 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %20) #12
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 3, i32 2
  br label %29

24:                                               ; preds = %15
  %25 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 6
  %26 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %25) #12
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 1, i32 4
  br label %29

29:                                               ; preds = %24, %19, %10
  %30 = phi i1 [ %13, %10 ], [ true, %19 ], [ true, %24 ]
  %31 = phi i32 [ %14, %10 ], [ %23, %19 ], [ %28, %24 ]
  br i1 %30, label %56, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @biari_decode_final(ptr noundef %2) #12
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %56, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 8
  %37 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %36) #12
  %38 = mul nsw i32 %37, 12
  %39 = add nsw i32 %38, 7
  %40 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 9
  %41 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #12
  %45 = icmp eq i32 %44, 0
  %46 = select i1 %45, i32 11, i32 15
  %47 = add nsw i32 %46, %38
  br label %48

48:                                               ; preds = %43, %35
  %49 = phi i32 [ %39, %35 ], [ %47, %43 ]
  %50 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 10
  %51 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %50) #12
  %52 = shl nsw i32 %51, 1
  %53 = add nsw i32 %52, %49
  %54 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %50) #12
  %55 = add nsw i32 %53, %54
  br label %56

56:                                               ; preds = %32, %29, %48
  %57 = phi i32 [ %55, %48 ], [ %31, %29 ], [ 31, %32 ]
  %58 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %57, ptr %58, align 4, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readMB_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 30
  %13 = load i16, ptr %12, align 8, !tbaa !101
  %14 = icmp ne i16 %13, 0
  %15 = zext i1 %14 to i64
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i64 [ %15, %11 ], [ 0, %3 ]
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !56
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.macroblock, ptr %19, i64 0, i32 30
  %23 = load i16, ptr %22, align 8, !tbaa !101
  %24 = icmp ne i16 %23, 0
  %25 = zext i1 %24 to i64
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i64 [ %25, %21 ], [ 0, %16 ]
  %28 = getelementptr %struct.BiContextType, ptr %7, i64 %27
  %29 = getelementptr %struct.BiContextType, ptr %28, i64 %17
  %30 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %29) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %73, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 4
  %34 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %33) #12
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %68, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 5
  %38 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %37) #12
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 6
  %41 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #12
  %42 = icmp eq i32 %41, 0
  %43 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #12
  %44 = icmp eq i32 %43, 0
  %45 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #12
  br i1 %39, label %61, label %46

46:                                               ; preds = %36
  %47 = select i1 %42, i32 12, i32 20
  %48 = add nuw nsw i32 %47, 4
  %49 = select i1 %44, i32 %47, i32 %48
  %50 = icmp eq i32 %45, 0
  %51 = or disjoint i32 %49, 2
  %52 = select i1 %50, i32 %49, i32 %51
  switch i32 %52, label %54 [
    i32 24, label %73
    i32 26, label %53
  ]

53:                                               ; preds = %46
  br label %73

54:                                               ; preds = %46
  %55 = icmp eq i32 %52, 22
  %56 = select i1 %55, i32 23, i32 %52
  %57 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #12
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %56, %59
  br label %73

61:                                               ; preds = %36
  %62 = select i1 %42, i32 3, i32 7
  %63 = add nuw nsw i32 %62, 2
  %64 = select i1 %44, i32 %62, i32 %63
  %65 = icmp ne i32 %45, 0
  %66 = zext i1 %65 to i32
  %67 = add nuw nsw i32 %64, %66
  br label %73

68:                                               ; preds = %32
  %69 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 6
  %70 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %69) #12
  %71 = icmp eq i32 %70, 0
  %72 = select i1 %71, i32 1, i32 2
  br label %73

73:                                               ; preds = %61, %54, %26, %68, %46, %53
  %74 = phi i32 [ 22, %53 ], [ 11, %46 ], [ %60, %54 ], [ %72, %68 ], [ 0, %26 ], [ %67, %61 ]
  %75 = icmp slt i32 %74, 24
  br i1 %75, label %100, label %76

76:                                               ; preds = %73
  %77 = tail call i32 @biari_decode_final(ptr noundef %2) #12
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %100, label %79

79:                                               ; preds = %76
  %80 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 8
  %81 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %80) #12
  %82 = mul nsw i32 %81, 12
  %83 = add nsw i32 %82, %74
  %84 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 9
  %85 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %84) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %79
  %88 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %84) #12
  %89 = icmp eq i32 %88, 0
  %90 = select i1 %89, i32 4, i32 8
  %91 = add nsw i32 %90, %83
  br label %92

92:                                               ; preds = %87, %79
  %93 = phi i32 [ %83, %79 ], [ %91, %87 ]
  %94 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 10
  %95 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %94) #12
  %96 = shl nsw i32 %95, 1
  %97 = add nsw i32 %96, %93
  %98 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %94) #12
  %99 = add nsw i32 %97, %98
  br label %100

100:                                              ; preds = %76, %73, %92
  %101 = phi i32 [ %99, %92 ], [ %74, %73 ], [ 48, %76 ]
  %102 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %101, ptr %102, align 4, !tbaa !64
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readIntraPredMode_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 1
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #12
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 -1, ptr %11, align 4, !tbaa !64
  br label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 1, i64 1
  %14 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #12
  %15 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !64
  %16 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #12
  %17 = shl i32 %16, 1
  %18 = load i32, ptr %15, align 4, !tbaa !64
  %19 = or i32 %18, %17
  store i32 %19, ptr %15, align 4, !tbaa !64
  %20 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #12
  %21 = shl i32 %20, 2
  %22 = load i32, ptr %15, align 4, !tbaa !64
  %23 = or i32 %22, %21
  store i32 %23, ptr %15, align 4, !tbaa !64
  br label %24

24:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readRefFrame_CABAC(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 58
  %12 = load ptr, ptr %11, align 8, !tbaa !58
  %13 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = add nsw i32 %16, -1
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %4) #12
  %21 = load i32, ptr %15, align 4, !tbaa !89
  %22 = load i32, ptr %18, align 8, !tbaa !90
  %23 = add nsw i32 %22, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %20, ptr noundef nonnull %5) #12
  %24 = load i32, ptr %5, align 4, !tbaa !48
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %85, label %26

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %28 = load i16, ptr %27, align 4, !tbaa !92
  %29 = lshr i16 %28, 1
  %30 = and i16 %29, 1
  %31 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %32 = load i16, ptr %31, align 2, !tbaa !91
  %33 = and i16 %32, 2
  %34 = or disjoint i16 %30, %33
  %35 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 124
  %36 = load ptr, ptr %35, align 8, !tbaa !51
  %37 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !54
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 30
  %41 = load i16, ptr %40, align 8, !tbaa !101
  switch i16 %41, label %46 [
    i16 14, label %85
    i16 0, label %42
  ]

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %44 = load i32, ptr %43, align 4, !tbaa !100
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %85, label %46

46:                                               ; preds = %26, %42
  %47 = zext nneg i16 %34 to i64
  %48 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 37, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !103
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 38, i64 %47
  %53 = load i8, ptr %52, align 1, !tbaa !103
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %85, label %55

55:                                               ; preds = %51, %46
  %56 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 25
  %57 = load i32, ptr %56, align 8, !tbaa !71
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %61 = load i32, ptr %60, align 8, !tbaa !61
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 45
  %65 = load i32, ptr %64, align 8, !tbaa !61
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %59, %55
  br label %68

68:                                               ; preds = %63, %67
  %69 = phi i8 [ 0, %67 ], [ 1, %63 ]
  %70 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 35
  %71 = load ptr, ptr %70, align 8, !tbaa !104
  %72 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %73 = load i16, ptr %72, align 2, !tbaa !107
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %71, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !73
  %77 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !108
  %79 = sext i16 %78 to i64
  %80 = sext i32 %14 to i64
  %81 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %79, i32 2, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !103
  %83 = icmp sgt i8 %82, %69
  %84 = select i1 %83, i32 2, i32 0
  br label %85

85:                                               ; preds = %68, %42, %51, %26, %3
  %86 = phi i32 [ 0, %3 ], [ 0, %26 ], [ 0, %42 ], [ 0, %51 ], [ %84, %68 ]
  %87 = load i32, ptr %4, align 4, !tbaa !48
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %148, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %91 = load i16, ptr %90, align 4, !tbaa !92
  %92 = lshr i16 %91, 1
  %93 = and i16 %92, 1
  %94 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %95 = load i16, ptr %94, align 2, !tbaa !91
  %96 = and i16 %95, 2
  %97 = or disjoint i16 %93, %96
  %98 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 124
  %99 = load ptr, ptr %98, align 8, !tbaa !51
  %100 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !54
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 30
  %104 = load i16, ptr %103, align 8, !tbaa !101
  switch i16 %104, label %109 [
    i16 14, label %148
    i16 0, label %105
  ]

105:                                              ; preds = %89
  %106 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %107 = load i32, ptr %106, align 4, !tbaa !100
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %148, label %109

109:                                              ; preds = %89, %105
  %110 = zext nneg i16 %97 to i64
  %111 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 37, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !103
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 38, i64 %110
  %116 = load i8, ptr %115, align 1, !tbaa !103
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %148, label %118

118:                                              ; preds = %114, %109
  %119 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 25
  %120 = load i32, ptr %119, align 8, !tbaa !71
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %124 = load i32, ptr %123, align 8, !tbaa !61
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 45
  %128 = load i32, ptr %127, align 8, !tbaa !61
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %131, label %130

130:                                              ; preds = %126, %122, %118
  br label %131

131:                                              ; preds = %126, %130
  %132 = phi i8 [ 0, %130 ], [ 1, %126 ]
  %133 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 35
  %134 = load ptr, ptr %133, align 8, !tbaa !104
  %135 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %136 = load i16, ptr %135, align 2, !tbaa !107
  %137 = sext i16 %136 to i64
  %138 = getelementptr inbounds ptr, ptr %134, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !73
  %140 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %141 = load i16, ptr %140, align 4, !tbaa !108
  %142 = sext i16 %141 to i64
  %143 = sext i32 %14 to i64
  %144 = getelementptr inbounds %struct.pic_motion_params, ptr %139, i64 %142, i32 2, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !103
  %146 = icmp sgt i8 %145, %132
  %147 = zext i1 %146 to i32
  br label %148

148:                                              ; preds = %105, %114, %89, %131, %85
  %149 = phi i32 [ 0, %85 ], [ 0, %89 ], [ 0, %105 ], [ 0, %114 ], [ %147, %131 ]
  %150 = or disjoint i32 %149, %86
  %151 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %150, ptr %151, align 8, !tbaa !94
  %152 = getelementptr inbounds %struct.MotionInfoContexts, ptr %12, i64 0, i32 3
  %153 = zext nneg i32 %150 to i64
  %154 = getelementptr inbounds %struct.BiContextType, ptr %152, i64 %153
  %155 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %154) #12
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %170, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.MotionInfoContexts, ptr %12, i64 0, i32 3, i64 0, i64 4
  %159 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %158) #12
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %170, label %161

161:                                              ; preds = %157
  %162 = getelementptr inbounds %struct.MotionInfoContexts, ptr %12, i64 0, i32 3, i64 0, i64 5
  br label %163

163:                                              ; preds = %163, %161
  %164 = phi i32 [ 0, %161 ], [ %166, %163 ]
  %165 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %162) #12
  %166 = add i32 %164, 1
  %167 = icmp eq i32 %165, 0
  br i1 %167, label %168, label %163, !llvm.loop !109

168:                                              ; preds = %163
  %169 = add i32 %164, 2
  br label %170

170:                                              ; preds = %157, %168, %148
  %171 = phi i32 [ 0, %148 ], [ 1, %157 ], [ %169, %168 ]
  %172 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %171, ptr %172, align 4, !tbaa !64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

declare void @get4x4Neighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @read_dQuant_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !58
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !57
  %10 = icmp ne i32 %9, 0
  %11 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 4
  %12 = zext i1 %10 to i64
  %13 = getelementptr inbounds %struct.BiContextType, ptr %11, i64 %12
  %14 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %35, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 4, i64 2
  %18 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %17) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 4, i64 3
  br label %22

22:                                               ; preds = %22, %20
  %23 = phi i32 [ 0, %20 ], [ %25, %22 ]
  %24 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %21) #12
  %25 = add i32 %23, 1
  %26 = icmp eq i32 %24, 0
  br i1 %26, label %27, label %22, !llvm.loop !109

27:                                               ; preds = %22, %16
  %28 = phi i32 [ 0, %16 ], [ %25, %22 ]
  %29 = add nsw i32 %28, 2
  %30 = ashr i32 %29, 1
  store i32 %30, ptr %7, align 4, !tbaa !79
  %31 = and i32 %28, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = sub nsw i32 0, %30
  br label %35

35:                                               ; preds = %3, %33
  %36 = phi i32 [ %34, %33 ], [ 0, %3 ]
  store i32 %36, ptr %7, align 4, !tbaa !79
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32, ptr %7, align 4, !tbaa !79
  store i32 %38, ptr %8, align 4, !tbaa !57
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @read_CBP_CABAC(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %0, align 8, !tbaa !50
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !102
  %10 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 59
  %11 = load ptr, ptr %10, align 8, !tbaa !98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  %12 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81
  %13 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 124
  %14 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %15 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %16 = getelementptr inbounds %struct.TextureInfoContexts, ptr %11, i64 0, i32 3
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  br label %18

18:                                               ; preds = %3, %96
  %19 = phi ptr [ null, %3 ], [ %28, %96 ]
  %20 = phi i32 [ 0, %3 ], [ %93, %96 ]
  %21 = phi i32 [ 0, %3 ], [ %55, %96 ]
  %22 = phi i32 [ 0, %3 ], [ %97, %96 ]
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 8, !tbaa !55
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ 0, %24 ], [ %21, %18 ]
  %28 = phi ptr [ %25, %24 ], [ %19, %18 ]
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.macroblock, ptr %28, i64 0, i32 30
  %31 = getelementptr inbounds %struct.macroblock, ptr %28, i64 0, i32 32
  %32 = shl nuw nsw i32 %22, 2
  br label %33

33:                                               ; preds = %26, %82
  %34 = phi i32 [ %20, %26 ], [ %93, %82 ]
  %35 = phi i32 [ %27, %26 ], [ %55, %82 ]
  %36 = phi i32 [ 0, %26 ], [ %94, %82 ]
  br i1 %23, label %37, label %48

37:                                               ; preds = %33
  br i1 %29, label %54, label %38

38:                                               ; preds = %37
  %39 = load i16, ptr %30, align 8, !tbaa !101
  %40 = icmp eq i16 %39, 14
  br i1 %40, label %54, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr %31, align 4, !tbaa !110
  %43 = lshr exact i32 %36, 1
  %44 = shl i32 4, %43
  %45 = and i32 %42, %44
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 2, i32 0
  br label %54

48:                                               ; preds = %33
  %49 = lshr exact i32 %36, 1
  %50 = shl nuw nsw i32 1, %49
  %51 = and i32 %34, %50
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 2, i32 0
  br label %54

54:                                               ; preds = %37, %41, %38, %48
  %55 = phi i32 [ %47, %41 ], [ %35, %38 ], [ %35, %37 ], [ %53, %48 ]
  %56 = icmp eq i32 %36, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %54
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %32, ptr noundef nonnull %12, ptr noundef nonnull %4) #12
  %58 = load i32, ptr %4, align 4, !tbaa !48
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %57
  %61 = load ptr, ptr %13, align 8, !tbaa !51
  %62 = load i32, ptr %14, align 4, !tbaa !54
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.macroblock, ptr %61, i64 %63, i32 30
  %65 = load i16, ptr %64, align 8, !tbaa !101
  %66 = icmp eq i16 %65, 14
  br i1 %66, label %82, label %67

67:                                               ; preds = %60
  %68 = getelementptr inbounds %struct.macroblock, ptr %61, i64 %63, i32 32
  %69 = load i32, ptr %68, align 4, !tbaa !110
  %70 = load i16, ptr %15, align 2, !tbaa !91
  %71 = sdiv i16 %70, 2
  %72 = sext i16 %71 to i32
  %73 = shl nsw i32 %72, 1
  %74 = or disjoint i32 %73, 1
  %75 = xor i32 %69, -1
  %76 = lshr i32 %75, %74
  %77 = and i32 %76, 1
  br label %82

78:                                               ; preds = %54
  %79 = xor i32 %34, -1
  %80 = lshr i32 %79, %22
  %81 = and i32 %80, 1
  br label %82

82:                                               ; preds = %57, %60, %67, %78
  %83 = phi i32 [ %77, %67 ], [ %81, %78 ], [ 0, %60 ], [ 0, %57 ]
  %84 = add nuw nsw i32 %83, %55
  %85 = zext nneg i32 %84 to i64
  %86 = getelementptr inbounds %struct.BiContextType, ptr %16, i64 %85
  %87 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %86) #12
  %88 = icmp eq i32 %87, 0
  %89 = lshr exact i32 %36, 1
  %90 = add nuw nsw i32 %89, %22
  %91 = shl nuw nsw i32 1, %90
  %92 = select i1 %88, i32 0, i32 %91
  %93 = add nsw i32 %92, %34
  %94 = add nuw nsw i32 %36, 2
  %95 = icmp eq i32 %36, 0
  br i1 %95, label %33, label %96, !llvm.loop !111

96:                                               ; preds = %82
  %97 = add nuw nsw i32 %22, 2
  %98 = icmp eq i32 %22, 0
  br i1 %98, label %18, label %99, !llvm.loop !112

99:                                               ; preds = %96
  %100 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %101 = load i32, ptr %100, align 4, !tbaa !113
  switch i32 %101, label %102 [
    i32 0, label %172
    i32 3, label %172
  ]

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %104 = load ptr, ptr %103, align 8, !tbaa !55
  %105 = icmp eq ptr %104, null
  br i1 %105, label %115, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.macroblock, ptr %104, i64 0, i32 30
  %108 = load i16, ptr %107, align 8, !tbaa !101
  %109 = icmp eq i16 %108, 14
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.macroblock, ptr %104, i64 0, i32 32
  %112 = load i32, ptr %111, align 4, !tbaa !110
  %113 = icmp sgt i32 %112, 15
  br i1 %113, label %114, label %115

114:                                              ; preds = %110, %106
  br label %115

115:                                              ; preds = %110, %114, %102
  %116 = phi i64 [ 2, %114 ], [ 0, %110 ], [ 0, %102 ]
  %117 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %118 = load ptr, ptr %117, align 8, !tbaa !56
  %119 = icmp eq ptr %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.macroblock, ptr %118, i64 0, i32 30
  %122 = load i16, ptr %121, align 8, !tbaa !101
  %123 = icmp eq i16 %122, 14
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.macroblock, ptr %118, i64 0, i32 32
  %126 = load i32, ptr %125, align 4, !tbaa !110
  %127 = icmp sgt i32 %126, 15
  br i1 %127, label %128, label %129

128:                                              ; preds = %124, %120
  br label %129

129:                                              ; preds = %124, %128, %115
  %130 = phi i64 [ 1, %128 ], [ 0, %124 ], [ 0, %115 ]
  %131 = or disjoint i64 %130, %116
  %132 = getelementptr inbounds %struct.TextureInfoContexts, ptr %11, i64 0, i32 3, i64 1
  %133 = getelementptr inbounds %struct.BiContextType, ptr %132, i64 %131
  %134 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %133) #12
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %172, label %136

136:                                              ; preds = %129
  %137 = load ptr, ptr %103, align 8, !tbaa !55
  %138 = icmp eq ptr %137, null
  br i1 %138, label %149, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds %struct.macroblock, ptr %137, i64 0, i32 30
  %141 = load i16, ptr %140, align 8, !tbaa !101
  %142 = icmp eq i16 %141, 14
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.macroblock, ptr %137, i64 0, i32 32
  %145 = load i32, ptr %144, align 4, !tbaa !110
  %146 = and i32 %145, -16
  %147 = icmp eq i32 %146, 32
  br i1 %147, label %148, label %149

148:                                              ; preds = %143, %139
  br label %149

149:                                              ; preds = %143, %148, %136
  %150 = phi i64 [ 2, %148 ], [ 0, %143 ], [ 0, %136 ]
  %151 = load ptr, ptr %117, align 8, !tbaa !56
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.macroblock, ptr %151, i64 0, i32 30
  %155 = load i16, ptr %154, align 8, !tbaa !101
  %156 = icmp eq i16 %155, 14
  br i1 %156, label %162, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.macroblock, ptr %151, i64 0, i32 32
  %159 = load i32, ptr %158, align 4, !tbaa !110
  %160 = and i32 %159, -16
  %161 = icmp eq i32 %160, 32
  br i1 %161, label %162, label %163

162:                                              ; preds = %157, %153
  br label %163

163:                                              ; preds = %157, %162, %149
  %164 = phi i64 [ 1, %162 ], [ 0, %157 ], [ 0, %149 ]
  %165 = or disjoint i64 %164, %150
  %166 = getelementptr inbounds %struct.TextureInfoContexts, ptr %11, i64 0, i32 3, i64 2
  %167 = getelementptr inbounds %struct.BiContextType, ptr %166, i64 %165
  %168 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %167) #12
  %169 = icmp eq i32 %168, 1
  %170 = select i1 %169, i32 32, i32 16
  %171 = add nsw i32 %170, %93
  br label %172

172:                                              ; preds = %99, %99, %129, %163
  %173 = phi i32 [ %171, %163 ], [ %93, %129 ], [ %93, %99 ], [ %93, %99 ]
  %174 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %173, ptr %174, align 4, !tbaa !64
  %175 = icmp eq i32 %173, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 45
  store i32 0, ptr %177, align 4, !tbaa !57
  br label %178

178:                                              ; preds = %176, %172
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @readCIPredMode_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = icmp eq ptr %9, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 40
  %15 = load i8, ptr %14, align 1, !tbaa !114
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 30
  %19 = load i16, ptr %18, align 8, !tbaa !101
  %20 = icmp ne i16 %19, 14
  %21 = zext i1 %20 to i64
  br label %22

22:                                               ; preds = %13, %17, %3
  %23 = phi i64 [ 0, %3 ], [ 0, %13 ], [ %21, %17 ]
  %24 = icmp eq ptr %11, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.macroblock, ptr %11, i64 0, i32 40
  %27 = load i8, ptr %26, align 1, !tbaa !114
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.macroblock, ptr %11, i64 0, i32 30
  %31 = load i16, ptr %30, align 8, !tbaa !101
  %32 = icmp ne i16 %31, 14
  %33 = zext i1 %32 to i64
  br label %34

34:                                               ; preds = %25, %29, %22
  %35 = phi i64 [ 0, %22 ], [ 0, %25 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 2
  %37 = getelementptr %struct.BiContextType, ptr %36, i64 %35
  %38 = getelementptr %struct.BiContextType, ptr %37, i64 %23
  %39 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %38) #12
  store i32 %39, ptr %7, align 4, !tbaa !79
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 2, i64 3
  %43 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %42) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %42) #12
  %47 = icmp eq i32 %46, 0
  %48 = select i1 %47, i32 1, i32 2
  br label %49

49:                                               ; preds = %41, %45
  %50 = phi i32 [ %48, %45 ], [ %43, %41 ]
  %51 = add nuw nsw i32 %50, 1
  store i32 %51, ptr %7, align 4, !tbaa !79
  br label %52

52:                                               ; preds = %49, %34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_read_and_store_CBP(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq i32 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !73
  %5 = getelementptr inbounds %struct.macroblock, ptr %4, i64 0, i32 59
  %6 = select i1 %3, ptr @read_and_store_CBP_block_bit_444, ptr @read_and_store_CBP_block_bit_normal
  store ptr %6, ptr %5, align 8, !tbaa !115
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @read_and_store_CBP_block_bit_444(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !50
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !34
  %9 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !102
  %11 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 59
  %12 = load ptr, ptr %11, align 8, !tbaa !98
  %13 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 124
  %14 = load ptr, ptr %13, align 8, !tbaa !51
  %15 = icmp eq i32 %2, 2
  %16 = icmp eq i32 %2, 12
  %17 = icmp eq i32 %2, 18
  %18 = icmp ult i32 %2, 22
  %19 = trunc i32 %2 to i22
  %20 = lshr i22 -67522, %19
  %21 = and i22 %20, 1
  %22 = icmp ne i22 %21, 0
  %23 = select i1 %18, i1 %22, i1 false
  %24 = icmp ult i32 %2, 17
  %25 = trunc i32 %2 to i17
  %26 = lshr i17 -64511, %25
  %27 = and i17 %26, 1
  %28 = icmp ne i17 %27, 0
  %29 = select i1 %24, i1 %28, i1 false
  %30 = icmp eq i32 %2, 7
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %33 = load i32, ptr %32, align 4, !tbaa !116
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %31, %3
  %36 = phi i1 [ false, %3 ], [ %34, %31 ]
  br i1 %30, label %37, label %41

37:                                               ; preds = %35
  %38 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %39 = load i32, ptr %38, align 4, !tbaa !116
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i1 [ false, %35 ], [ %40, %37 ]
  %43 = icmp ult i32 %2, 10
  %44 = trunc i32 %2 to i10
  %45 = lshr i10 -192, %44
  %46 = and i10 %45, 1
  %47 = icmp ne i10 %46, 0
  %48 = select i1 %43, i1 %47, i1 false
  br i1 %48, label %49, label %53

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %51 = load i32, ptr %50, align 4, !tbaa !116
  %52 = icmp eq i32 %51, 0
  br label %53

53:                                               ; preds = %49, %41
  %54 = phi i1 [ false, %41 ], [ %52, %49 ]
  br i1 %48, label %55, label %59

55:                                               ; preds = %53
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %57 = load i32, ptr %56, align 4, !tbaa !116
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %55, %53
  %60 = phi i1 [ false, %53 ], [ %58, %55 ]
  %61 = select i1 %23, i1 true, i1 %36
  %62 = select i1 %61, i1 true, i1 %42
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %65 = load i32, ptr %64, align 8, !tbaa !90
  br label %66

66:                                               ; preds = %59, %63
  %67 = phi i32 [ %65, %63 ], [ 0, %59 ]
  br i1 %62, label %68, label %71

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %70 = load i32, ptr %69, align 4, !tbaa !89
  br label %71

71:                                               ; preds = %66, %68
  %72 = phi i32 [ %70, %68 ], [ 0, %66 ]
  %73 = or i1 %23, %29
  %74 = xor i1 %29, true
  %75 = zext i1 %74 to i32
  %76 = select i1 %36, i32 19, i32 35
  %77 = select i1 %60, i32 18, i32 %76
  %78 = select i1 %54, i32 17, i32 %77
  %79 = select i1 %73, i32 %75, i32 %78
  %80 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %81 = load i32, ptr %80, align 8, !tbaa !117
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  br i1 %23, label %84, label %110

84:                                               ; preds = %71
  %85 = add nsw i32 %72, -1
  %86 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %85, i32 noundef %67, ptr noundef nonnull %86, ptr noundef nonnull %4) #12
  %87 = add nsw i32 %67, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %72, i32 noundef %87, ptr noundef nonnull %86, ptr noundef nonnull %5) #12
  %88 = load i32, ptr %4, align 4, !tbaa !48
  %89 = icmp eq i32 %88, 0
  %90 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %91 = load i16, ptr %90, align 2
  %92 = sext i16 %91 to i32
  %93 = shl nsw i32 %92, 2
  %94 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %95 = load i16, ptr %94, align 4
  %96 = sext i16 %95 to i32
  %97 = add nsw i32 %93, %96
  %98 = select i1 %89, i32 0, i32 %97
  %99 = load i32, ptr %5, align 4, !tbaa !48
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %143, label %101

101:                                              ; preds = %84
  %102 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %103 = load i16, ptr %102, align 2, !tbaa !91
  %104 = sext i16 %103 to i32
  %105 = shl nsw i32 %104, 2
  %106 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %107 = load i16, ptr %106, align 4, !tbaa !92
  %108 = sext i16 %107 to i32
  %109 = add nsw i32 %105, %108
  br label %143

110:                                              ; preds = %71
  br i1 %29, label %111, label %115

111:                                              ; preds = %110
  %112 = add nsw i32 %72, -1
  %113 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %112, i32 noundef %67, ptr noundef nonnull %113, ptr noundef nonnull %4) #12
  %114 = add nsw i32 %67, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %72, i32 noundef %114, ptr noundef nonnull %113, ptr noundef nonnull %5) #12
  br label %143

115:                                              ; preds = %110
  %116 = select i1 %36, i1 true, i1 %42
  %117 = add nsw i32 %72, -1
  %118 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81, i64 1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %117, i32 noundef %67, ptr noundef nonnull %118, ptr noundef nonnull %4) #12
  %119 = add nsw i32 %67, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %72, i32 noundef %119, ptr noundef nonnull %118, ptr noundef nonnull %5) #12
  br i1 %116, label %120, label %143

120:                                              ; preds = %115
  %121 = load i32, ptr %4, align 4, !tbaa !48
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %124 = load i16, ptr %123, align 2
  %125 = sext i16 %124 to i32
  %126 = shl nsw i32 %125, 2
  %127 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %128 = load i16, ptr %127, align 4
  %129 = sext i16 %128 to i32
  %130 = add nsw i32 %126, %129
  %131 = select i1 %122, i32 0, i32 %130
  %132 = load i32, ptr %5, align 4, !tbaa !48
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %136 = load i16, ptr %135, align 2, !tbaa !91
  %137 = sext i16 %136 to i32
  %138 = shl nsw i32 %137, 2
  %139 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %140 = load i16, ptr %139, align 4, !tbaa !92
  %141 = sext i16 %140 to i32
  %142 = add nsw i32 %138, %141
  br label %143

143:                                              ; preds = %115, %111, %120, %134, %84, %101
  %144 = phi i32 [ %98, %101 ], [ %98, %84 ], [ 0, %111 ], [ %131, %134 ], [ %131, %120 ], [ 0, %115 ]
  %145 = phi i32 [ %109, %101 ], [ 0, %84 ], [ 0, %111 ], [ %142, %134 ], [ 0, %120 ], [ 0, %115 ]
  %146 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 48
  %147 = load i32, ptr %146, align 4, !tbaa !113
  %148 = icmp eq i32 %147, 3
  br i1 %148, label %181, label %149

149:                                              ; preds = %143
  br i1 %15, label %300, label %150

150:                                              ; preds = %149
  %151 = load i32, ptr %5, align 4, !tbaa !48
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %168, label %153

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !54
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %156, i32 30
  %158 = load i16, ptr %157, align 8, !tbaa !101
  %159 = icmp eq i16 %158, 14
  br i1 %159, label %168, label %160

160:                                              ; preds = %153
  %161 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %156, i32 34
  %162 = load i64, ptr %161, align 8, !tbaa !118
  %163 = add nsw i32 %145, %79
  %164 = zext nneg i32 %163 to i64
  %165 = lshr i64 %162, %164
  %166 = trunc i64 %165 to i32
  %167 = and i32 %166, 1
  br label %168

168:                                              ; preds = %153, %160, %150
  %169 = phi i32 [ %167, %160 ], [ %83, %150 ], [ 1, %153 ]
  %170 = load i32, ptr %4, align 4, !tbaa !48
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %287, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %174 = load i32, ptr %173, align 4, !tbaa !54
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %175, i32 30
  %177 = load i16, ptr %176, align 8, !tbaa !101
  %178 = icmp eq i16 %177, 14
  br i1 %178, label %287, label %179

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %175, i32 34
  br label %278

181:                                              ; preds = %143
  %182 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 105
  %183 = load i32, ptr %182, align 8, !tbaa !119
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %217, label %185

185:                                              ; preds = %181
  br i1 %15, label %300, label %186

186:                                              ; preds = %185
  %187 = load i32, ptr %5, align 4, !tbaa !48
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %204, label %189

189:                                              ; preds = %186
  %190 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !54
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %192, i32 30
  %194 = load i16, ptr %193, align 8, !tbaa !101
  %195 = icmp eq i16 %194, 14
  br i1 %195, label %204, label %196

196:                                              ; preds = %189
  %197 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %192, i32 34
  %198 = load i64, ptr %197, align 8, !tbaa !118
  %199 = add nsw i32 %145, %79
  %200 = zext nneg i32 %199 to i64
  %201 = lshr i64 %198, %200
  %202 = trunc i64 %201 to i32
  %203 = and i32 %202, 1
  br label %204

204:                                              ; preds = %189, %196, %186
  %205 = phi i32 [ %203, %196 ], [ %83, %186 ], [ 1, %189 ]
  %206 = load i32, ptr %4, align 4, !tbaa !48
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %287, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %210 = load i32, ptr %209, align 4, !tbaa !54
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %211, i32 30
  %213 = load i16, ptr %212, align 8, !tbaa !101
  %214 = icmp eq i16 %213, 14
  br i1 %214, label %287, label %215

215:                                              ; preds = %208
  %216 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %211, i32 34
  br label %278

217:                                              ; preds = %181
  %218 = load i32, ptr %5, align 4, !tbaa !48
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %251, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %222 = load i32, ptr %221, align 4, !tbaa !54
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 30
  %225 = load i16, ptr %224, align 8, !tbaa !101
  %226 = icmp eq i16 %225, 14
  br i1 %226, label %251, label %227

227:                                              ; preds = %220
  br i1 %15, label %228, label %230

228:                                              ; preds = %227
  %229 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 35
  br label %243

230:                                              ; preds = %227
  br i1 %16, label %231, label %233

231:                                              ; preds = %230
  %232 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 35, i64 1
  br label %243

233:                                              ; preds = %230
  br i1 %17, label %234, label %236

234:                                              ; preds = %233
  %235 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 35, i64 2
  br label %243

236:                                              ; preds = %233
  switch i32 %2, label %241 [
    i32 15, label %237
    i32 14, label %237
    i32 13, label %237
    i32 11, label %237
    i32 10, label %237
    i32 21, label %239
    i32 20, label %239
    i32 19, label %239
    i32 17, label %239
    i32 16, label %239
  ]

237:                                              ; preds = %236, %236, %236, %236, %236
  %238 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 34, i64 1
  br label %243

239:                                              ; preds = %236, %236, %236, %236, %236
  %240 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 34, i64 2
  br label %243

241:                                              ; preds = %236
  %242 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %223, i32 34
  br label %243

243:                                              ; preds = %228, %234, %239, %241, %237, %231
  %244 = phi ptr [ %232, %231 ], [ %238, %237 ], [ %242, %241 ], [ %240, %239 ], [ %235, %234 ], [ %229, %228 ]
  %245 = load i64, ptr %244, align 8, !tbaa !118
  %246 = add nsw i32 %145, %79
  %247 = zext nneg i32 %246 to i64
  %248 = lshr i64 %245, %247
  %249 = trunc i64 %248 to i32
  %250 = and i32 %249, 1
  br label %251

251:                                              ; preds = %243, %220, %217
  %252 = phi i32 [ %83, %217 ], [ 1, %220 ], [ %250, %243 ]
  %253 = load i32, ptr %4, align 4, !tbaa !48
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %287, label %255

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !54
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 30
  %260 = load i16, ptr %259, align 8, !tbaa !101
  %261 = icmp eq i16 %260, 14
  br i1 %261, label %287, label %262

262:                                              ; preds = %255
  br i1 %15, label %263, label %265

263:                                              ; preds = %262
  %264 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 35
  br label %278

265:                                              ; preds = %262
  br i1 %16, label %266, label %268

266:                                              ; preds = %265
  %267 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 35, i64 1
  br label %278

268:                                              ; preds = %265
  br i1 %17, label %269, label %271

269:                                              ; preds = %268
  %270 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 35, i64 2
  br label %278

271:                                              ; preds = %268
  switch i32 %2, label %276 [
    i32 15, label %272
    i32 14, label %272
    i32 13, label %272
    i32 11, label %272
    i32 10, label %272
    i32 21, label %274
    i32 20, label %274
    i32 19, label %274
    i32 17, label %274
    i32 16, label %274
  ]

272:                                              ; preds = %271, %271, %271, %271, %271
  %273 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 34, i64 1
  br label %278

274:                                              ; preds = %271, %271, %271, %271, %271
  %275 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 34, i64 2
  br label %278

276:                                              ; preds = %271
  %277 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %258, i32 34
  br label %278

278:                                              ; preds = %266, %272, %276, %274, %269, %263, %179, %215
  %279 = phi ptr [ %216, %215 ], [ %180, %179 ], [ %267, %266 ], [ %273, %272 ], [ %277, %276 ], [ %275, %274 ], [ %270, %269 ], [ %264, %263 ]
  %280 = phi i32 [ %205, %215 ], [ %169, %179 ], [ %252, %266 ], [ %252, %272 ], [ %252, %276 ], [ %252, %274 ], [ %252, %269 ], [ %252, %263 ]
  %281 = load i64, ptr %279, align 8, !tbaa !118
  %282 = add nsw i32 %144, %79
  %283 = zext nneg i32 %282 to i64
  %284 = lshr i64 %281, %283
  %285 = trunc i64 %284 to i32
  %286 = and i32 %285, 1
  br label %287

287:                                              ; preds = %278, %251, %255, %204, %208, %168, %172
  %288 = phi i32 [ %169, %172 ], [ %169, %168 ], [ %205, %208 ], [ %205, %204 ], [ %252, %255 ], [ %252, %251 ], [ %280, %278 ]
  %289 = phi i32 [ 1, %172 ], [ %83, %168 ], [ 1, %208 ], [ %83, %204 ], [ 1, %255 ], [ %83, %251 ], [ %286, %278 ]
  %290 = shl nuw nsw i32 %288, 1
  %291 = or disjoint i32 %289, %290
  %292 = sext i32 %2 to i64
  %293 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %292
  %294 = load i16, ptr %293, align 2, !tbaa !93
  %295 = sext i16 %294 to i64
  %296 = getelementptr inbounds %struct.TextureInfoContexts, ptr %12, i64 0, i32 4, i64 %295
  %297 = zext nneg i32 %291 to i64
  %298 = getelementptr inbounds %struct.BiContextType, ptr %296, i64 %297
  %299 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %298) #12
  br label %300

300:                                              ; preds = %287, %185, %149
  %301 = phi i32 [ 1, %149 ], [ 1, %185 ], [ %299, %287 ]
  br i1 %29, label %318, label %302

302:                                              ; preds = %300
  br i1 %23, label %303, label %307

303:                                              ; preds = %302
  %304 = add nsw i32 %67, 1
  %305 = ashr i32 %72, 2
  %306 = add nsw i32 %304, %305
  br label %318

307:                                              ; preds = %302
  %308 = select i1 %54, i1 true, i1 %60
  %309 = select i1 %54, i32 17, i32 18
  br i1 %308, label %318, label %310

310:                                              ; preds = %307
  %311 = ashr i32 %72, 2
  br i1 %36, label %312, label %315

312:                                              ; preds = %310
  %313 = add nsw i32 %67, 19
  %314 = add nsw i32 %313, %311
  br label %318

315:                                              ; preds = %310
  %316 = add nsw i32 %67, 35
  %317 = add nsw i32 %316, %311
  br label %318

318:                                              ; preds = %307, %303, %315, %312, %300
  %319 = phi i32 [ 0, %300 ], [ %306, %303 ], [ %309, %307 ], [ %314, %312 ], [ %317, %315 ]
  %320 = icmp eq i32 %301, 0
  br i1 %320, label %405, label %321

321:                                              ; preds = %318
  br i1 %15, label %322, label %332

322:                                              ; preds = %321
  %323 = zext nneg i32 %319 to i64
  %324 = shl i64 51, %323
  %325 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %326 = load i64, ptr %325, align 8, !tbaa !118
  %327 = or i64 %326, %324
  store i64 %327, ptr %325, align 8, !tbaa !118
  %328 = load i32, ptr %146, align 4, !tbaa !113
  %329 = icmp eq i32 %328, 3
  br i1 %329, label %330, label %405

330:                                              ; preds = %322
  %331 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 35
  br label %400

332:                                              ; preds = %321
  br i1 %16, label %333, label %340

333:                                              ; preds = %332
  %334 = zext nneg i32 %319 to i64
  %335 = shl i64 51, %334
  %336 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 35, i64 1
  %337 = load i64, ptr %336, align 8, !tbaa !118
  %338 = or i64 %337, %335
  store i64 %338, ptr %336, align 8, !tbaa !118
  %339 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %400

340:                                              ; preds = %332
  br i1 %17, label %341, label %348

341:                                              ; preds = %340
  %342 = zext nneg i32 %319 to i64
  %343 = shl i64 51, %342
  %344 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 35, i64 2
  %345 = load i64, ptr %344, align 8, !tbaa !118
  %346 = or i64 %345, %343
  store i64 %346, ptr %344, align 8, !tbaa !118
  %347 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %400

348:                                              ; preds = %340
  switch i32 %2, label %391 [
    i32 3, label %349
    i32 13, label %353
    i32 19, label %357
    i32 4, label %361
    i32 14, label %365
    i32 20, label %369
    i32 15, label %373
    i32 11, label %373
    i32 10, label %373
    i32 21, label %382
    i32 17, label %382
    i32 16, label %382
  ]

349:                                              ; preds = %348
  %350 = zext nneg i32 %319 to i64
  %351 = shl i64 3, %350
  %352 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  br label %400

353:                                              ; preds = %348
  %354 = zext nneg i32 %319 to i64
  %355 = shl i64 3, %354
  %356 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %400

357:                                              ; preds = %348
  %358 = zext nneg i32 %319 to i64
  %359 = shl i64 3, %358
  %360 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %400

361:                                              ; preds = %348
  %362 = zext nneg i32 %319 to i64
  %363 = shl i64 17, %362
  %364 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  br label %400

365:                                              ; preds = %348
  %366 = zext nneg i32 %319 to i64
  %367 = shl i64 17, %366
  %368 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %400

369:                                              ; preds = %348
  %370 = zext nneg i32 %319 to i64
  %371 = shl i64 17, %370
  %372 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %400

373:                                              ; preds = %348, %348, %348
  %374 = icmp sgt i32 %319, 63
  br i1 %374, label %379, label %375

375:                                              ; preds = %373
  %376 = sext i32 %319 to i64
  %377 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !118
  br label %379

379:                                              ; preds = %373, %375
  %380 = phi i64 [ %378, %375 ], [ 0, %373 ]
  %381 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %400

382:                                              ; preds = %348, %348, %348
  %383 = icmp sgt i32 %319, 63
  br i1 %383, label %388, label %384

384:                                              ; preds = %382
  %385 = sext i32 %319 to i64
  %386 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %385
  %387 = load i64, ptr %386, align 8, !tbaa !118
  br label %388

388:                                              ; preds = %382, %384
  %389 = phi i64 [ %387, %384 ], [ 0, %382 ]
  %390 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %400

391:                                              ; preds = %348
  %392 = icmp sgt i32 %319, 63
  br i1 %392, label %397, label %393

393:                                              ; preds = %391
  %394 = sext i32 %319 to i64
  %395 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %394
  %396 = load i64, ptr %395, align 8, !tbaa !118
  br label %397

397:                                              ; preds = %391, %393
  %398 = phi i64 [ %396, %393 ], [ 0, %391 ]
  %399 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  br label %400

400:                                              ; preds = %333, %349, %357, %365, %379, %397, %388, %369, %361, %353, %341, %330
  %401 = phi ptr [ %331, %330 ], [ %347, %341 ], [ %356, %353 ], [ %364, %361 ], [ %372, %369 ], [ %390, %388 ], [ %399, %397 ], [ %381, %379 ], [ %368, %365 ], [ %360, %357 ], [ %352, %349 ], [ %339, %333 ]
  %402 = phi i64 [ %324, %330 ], [ %343, %341 ], [ %355, %353 ], [ %363, %361 ], [ %371, %369 ], [ %389, %388 ], [ %398, %397 ], [ %380, %379 ], [ %367, %365 ], [ %359, %357 ], [ %351, %349 ], [ %335, %333 ]
  %403 = load i64, ptr %401, align 8, !tbaa !118
  %404 = or i64 %403, %402
  store i64 %404, ptr %401, align 8, !tbaa !118
  br label %405

405:                                              ; preds = %400, %322, %318
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  ret i32 %301
}

; Function Attrs: nounwind uwtable
define internal i32 @read_and_store_CBP_block_bit_normal(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = alloca %struct.pix_pos, align 4
  %7 = alloca %struct.pix_pos, align 4
  %8 = alloca %struct.pix_pos, align 4
  %9 = alloca %struct.pix_pos, align 4
  %10 = alloca %struct.pix_pos, align 4
  %11 = alloca %struct.pix_pos, align 4
  %12 = alloca %struct.pix_pos, align 4
  %13 = alloca %struct.pix_pos, align 4
  %14 = alloca %struct.pix_pos, align 4
  %15 = alloca %struct.pix_pos, align 4
  %16 = alloca %struct.pix_pos, align 4
  %17 = alloca %struct.pix_pos, align 4
  %18 = load ptr, ptr %0, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !34
  %21 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 59
  %22 = load ptr, ptr %21, align 8, !tbaa !98
  %23 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 124
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  switch i32 %2, label %488 [
    i32 0, label %25
    i32 1, label %68
    i32 3, label %156
    i32 4, label %239
    i32 5, label %322
    i32 2, label %410
    i32 9, label %423
    i32 8, label %423
    i32 6, label %423
  ]

25:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #12
  %26 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %26, ptr noundef nonnull %4) #12
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %26, ptr noundef nonnull %5) #12
  %27 = load i32, ptr %5, align 4, !tbaa !48
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !54
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %32, i32 30
  %34 = load i16, ptr %33, align 8, !tbaa !101
  %35 = icmp eq i16 %34, 14
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %32, i32 34
  %38 = load i64, ptr %37, align 8, !tbaa !118
  %39 = shl i64 %38, 1
  %40 = and i64 %39, 2
  br label %41

41:                                               ; preds = %36, %29, %25
  %42 = phi i64 [ 2, %25 ], [ %40, %36 ], [ 2, %29 ]
  %43 = load i32, ptr %4, align 4, !tbaa !48
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !54
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %48, i32 30
  %50 = load i16, ptr %49, align 8, !tbaa !101
  %51 = icmp eq i16 %50, 14
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %48, i32 34
  %54 = load i64, ptr %53, align 8, !tbaa !118
  %55 = and i64 %54, 1
  br label %56

56:                                               ; preds = %52, %45, %41
  %57 = phi i64 [ 1, %41 ], [ %55, %52 ], [ 1, %45 ]
  %58 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4
  %59 = or disjoint i64 %57, %42
  %60 = getelementptr inbounds %struct.BiContextType, ptr %58, i64 %59
  %61 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %60) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %65 = load i64, ptr %64, align 8, !tbaa !118
  %66 = or i64 %65, 1
  store i64 %66, ptr %64, align 8, !tbaa !118
  br label %67

67:                                               ; preds = %63, %56
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #12
  br label %585

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %70 = load i32, ptr %69, align 8, !tbaa !90
  %71 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %72 = load i32, ptr %71, align 4, !tbaa !89
  %73 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %74 = load i32, ptr %73, align 8, !tbaa !117
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #12
  %77 = add nsw i32 %72, -1
  %78 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %77, i32 noundef %70, ptr noundef nonnull %78, ptr noundef nonnull %6) #12
  %79 = add nsw i32 %70, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %72, i32 noundef %79, ptr noundef nonnull %78, ptr noundef nonnull %7) #12
  %80 = load i32, ptr %7, align 4, !tbaa !48
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %68
  %83 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !54
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %85, i32 30
  %87 = load i16, ptr %86, align 8, !tbaa !101
  %88 = icmp eq i16 %87, 14
  br i1 %88, label %105, label %89

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 3
  %91 = load i16, ptr %90, align 2, !tbaa !91
  %92 = sext i16 %91 to i64
  %93 = shl nsw i64 %92, 2
  %94 = or disjoint i64 %93, 1
  %95 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 2
  %96 = load i16, ptr %95, align 4, !tbaa !92
  %97 = sext i16 %96 to i64
  %98 = add nsw i64 %94, %97
  %99 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %85, i32 34
  %100 = load i64, ptr %99, align 8, !tbaa !118
  %101 = and i64 %98, 4294967295
  %102 = lshr i64 %100, %101
  %103 = trunc i64 %102 to i32
  %104 = and i32 %103, 1
  br label %105

105:                                              ; preds = %89, %82, %68
  %106 = phi i32 [ %76, %68 ], [ %104, %89 ], [ 1, %82 ]
  %107 = load i32, ptr %6, align 4, !tbaa !48
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %132, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %111 = load i32, ptr %110, align 4, !tbaa !54
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %112, i32 30
  %114 = load i16, ptr %113, align 8, !tbaa !101
  %115 = icmp eq i16 %114, 14
  br i1 %115, label %132, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 3
  %118 = load i16, ptr %117, align 2, !tbaa !91
  %119 = sext i16 %118 to i64
  %120 = shl nsw i64 %119, 2
  %121 = or disjoint i64 %120, 1
  %122 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 2
  %123 = load i16, ptr %122, align 4, !tbaa !92
  %124 = sext i16 %123 to i64
  %125 = add nsw i64 %121, %124
  %126 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %112, i32 34
  %127 = load i64, ptr %126, align 8, !tbaa !118
  %128 = and i64 %125, 4294967295
  %129 = lshr i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = and i32 %130, 1
  br label %132

132:                                              ; preds = %116, %109, %105
  %133 = phi i32 [ %76, %105 ], [ %131, %116 ], [ 1, %109 ]
  %134 = shl nuw nsw i32 %106, 1
  %135 = or disjoint i32 %133, %134
  %136 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 1
  %137 = zext nneg i32 %135 to i64
  %138 = getelementptr inbounds %struct.BiContextType, ptr %136, i64 %137
  %139 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %138) #12
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %155, label %141

141:                                              ; preds = %132
  %142 = add nsw i32 %70, 1
  %143 = ashr i32 %72, 2
  %144 = add nsw i32 %142, %143
  %145 = icmp sgt i32 %144, 63
  br i1 %145, label %150, label %146

146:                                              ; preds = %141
  %147 = sext i32 %144 to i64
  %148 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %147
  %149 = load i64, ptr %148, align 8, !tbaa !118
  br label %150

150:                                              ; preds = %141, %146
  %151 = phi i64 [ %149, %146 ], [ 0, %141 ]
  %152 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %153 = load i64, ptr %152, align 8, !tbaa !118
  %154 = or i64 %153, %151
  store i64 %154, ptr %152, align 8, !tbaa !118
  br label %155

155:                                              ; preds = %150, %132
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %585

156:                                              ; preds = %3
  %157 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %158 = load i32, ptr %157, align 8, !tbaa !90
  %159 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %160 = load i32, ptr %159, align 4, !tbaa !89
  %161 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %162 = load i32, ptr %161, align 8, !tbaa !117
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %165 = add nsw i32 %160, -1
  %166 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %165, i32 noundef %158, ptr noundef nonnull %166, ptr noundef nonnull %8) #12
  %167 = add nsw i32 %158, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %160, i32 noundef %167, ptr noundef nonnull %166, ptr noundef nonnull %9) #12
  %168 = load i32, ptr %9, align 4, !tbaa !48
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %193, label %170

170:                                              ; preds = %156
  %171 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !54
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %173, i32 30
  %175 = load i16, ptr %174, align 8, !tbaa !101
  %176 = icmp eq i16 %175, 14
  br i1 %176, label %193, label %177

177:                                              ; preds = %170
  %178 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 3
  %179 = load i16, ptr %178, align 2, !tbaa !91
  %180 = sext i16 %179 to i64
  %181 = shl nsw i64 %180, 2
  %182 = or disjoint i64 %181, 1
  %183 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 2
  %184 = load i16, ptr %183, align 4, !tbaa !92
  %185 = sext i16 %184 to i64
  %186 = add nsw i64 %182, %185
  %187 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %173, i32 34
  %188 = load i64, ptr %187, align 8, !tbaa !118
  %189 = and i64 %186, 4294967295
  %190 = lshr i64 %188, %189
  %191 = trunc i64 %190 to i32
  %192 = and i32 %191, 1
  br label %193

193:                                              ; preds = %177, %170, %156
  %194 = phi i32 [ %164, %156 ], [ %192, %177 ], [ 1, %170 ]
  %195 = load i32, ptr %8, align 4, !tbaa !48
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %220, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %199 = load i32, ptr %198, align 4, !tbaa !54
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %200, i32 30
  %202 = load i16, ptr %201, align 8, !tbaa !101
  %203 = icmp eq i16 %202, 14
  br i1 %203, label %220, label %204

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 3
  %206 = load i16, ptr %205, align 2, !tbaa !91
  %207 = sext i16 %206 to i64
  %208 = shl nsw i64 %207, 2
  %209 = or disjoint i64 %208, 1
  %210 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 2
  %211 = load i16, ptr %210, align 4, !tbaa !92
  %212 = sext i16 %211 to i64
  %213 = add nsw i64 %209, %212
  %214 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %200, i32 34
  %215 = load i64, ptr %214, align 8, !tbaa !118
  %216 = and i64 %213, 4294967295
  %217 = lshr i64 %215, %216
  %218 = trunc i64 %217 to i32
  %219 = and i32 %218, 1
  br label %220

220:                                              ; preds = %204, %197, %193
  %221 = phi i32 [ %164, %193 ], [ %219, %204 ], [ 1, %197 ]
  %222 = shl nuw nsw i32 %194, 1
  %223 = or disjoint i32 %221, %222
  %224 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 3
  %225 = zext nneg i32 %223 to i64
  %226 = getelementptr inbounds %struct.BiContextType, ptr %224, i64 %225
  %227 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %226) #12
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %220
  %230 = add nsw i32 %158, 1
  %231 = ashr i32 %160, 2
  %232 = add nsw i32 %230, %231
  %233 = zext nneg i32 %232 to i64
  %234 = shl i64 3, %233
  %235 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %236 = load i64, ptr %235, align 8, !tbaa !118
  %237 = or i64 %236, %234
  store i64 %237, ptr %235, align 8, !tbaa !118
  br label %238

238:                                              ; preds = %229, %220
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #12
  br label %585

239:                                              ; preds = %3
  %240 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %241 = load i32, ptr %240, align 8, !tbaa !90
  %242 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %243 = load i32, ptr %242, align 4, !tbaa !89
  %244 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %245 = load i32, ptr %244, align 8, !tbaa !117
  %246 = icmp ne i32 %245, 0
  %247 = zext i1 %246 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #12
  %248 = add nsw i32 %243, -1
  %249 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %248, i32 noundef %241, ptr noundef nonnull %249, ptr noundef nonnull %10) #12
  %250 = add nsw i32 %241, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %243, i32 noundef %250, ptr noundef nonnull %249, ptr noundef nonnull %11) #12
  %251 = load i32, ptr %11, align 4, !tbaa !48
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %276, label %253

253:                                              ; preds = %239
  %254 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 1
  %255 = load i32, ptr %254, align 4, !tbaa !54
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %256, i32 30
  %258 = load i16, ptr %257, align 8, !tbaa !101
  %259 = icmp eq i16 %258, 14
  br i1 %259, label %276, label %260

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 3
  %262 = load i16, ptr %261, align 2, !tbaa !91
  %263 = sext i16 %262 to i64
  %264 = shl nsw i64 %263, 2
  %265 = or disjoint i64 %264, 1
  %266 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 2
  %267 = load i16, ptr %266, align 4, !tbaa !92
  %268 = sext i16 %267 to i64
  %269 = add nsw i64 %265, %268
  %270 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %256, i32 34
  %271 = load i64, ptr %270, align 8, !tbaa !118
  %272 = and i64 %269, 4294967295
  %273 = lshr i64 %271, %272
  %274 = trunc i64 %273 to i32
  %275 = and i32 %274, 1
  br label %276

276:                                              ; preds = %260, %253, %239
  %277 = phi i32 [ %247, %239 ], [ %275, %260 ], [ 1, %253 ]
  %278 = load i32, ptr %10, align 4, !tbaa !48
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %303, label %280

280:                                              ; preds = %276
  %281 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 1
  %282 = load i32, ptr %281, align 4, !tbaa !54
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %283, i32 30
  %285 = load i16, ptr %284, align 8, !tbaa !101
  %286 = icmp eq i16 %285, 14
  br i1 %286, label %303, label %287

287:                                              ; preds = %280
  %288 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 3
  %289 = load i16, ptr %288, align 2, !tbaa !91
  %290 = sext i16 %289 to i64
  %291 = shl nsw i64 %290, 2
  %292 = or disjoint i64 %291, 1
  %293 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 2
  %294 = load i16, ptr %293, align 4, !tbaa !92
  %295 = sext i16 %294 to i64
  %296 = add nsw i64 %292, %295
  %297 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %283, i32 34
  %298 = load i64, ptr %297, align 8, !tbaa !118
  %299 = and i64 %296, 4294967295
  %300 = lshr i64 %298, %299
  %301 = trunc i64 %300 to i32
  %302 = and i32 %301, 1
  br label %303

303:                                              ; preds = %287, %280, %276
  %304 = phi i32 [ %247, %276 ], [ %302, %287 ], [ 1, %280 ]
  %305 = shl nuw nsw i32 %277, 1
  %306 = or disjoint i32 %304, %305
  %307 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 3
  %308 = zext nneg i32 %306 to i64
  %309 = getelementptr inbounds %struct.BiContextType, ptr %307, i64 %308
  %310 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %309) #12
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %321, label %312

312:                                              ; preds = %303
  %313 = add nsw i32 %241, 1
  %314 = ashr i32 %243, 2
  %315 = add nsw i32 %313, %314
  %316 = zext nneg i32 %315 to i64
  %317 = shl i64 17, %316
  %318 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %319 = load i64, ptr %318, align 8, !tbaa !118
  %320 = or i64 %319, %317
  store i64 %320, ptr %318, align 8, !tbaa !118
  br label %321

321:                                              ; preds = %312, %303
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #12
  br label %585

322:                                              ; preds = %3
  %323 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %324 = load i32, ptr %323, align 8, !tbaa !90
  %325 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %326 = load i32, ptr %325, align 4, !tbaa !89
  %327 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %328 = load i32, ptr %327, align 8, !tbaa !117
  %329 = icmp ne i32 %328, 0
  %330 = zext i1 %329 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #12
  %331 = add nsw i32 %326, -1
  %332 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %331, i32 noundef %324, ptr noundef nonnull %332, ptr noundef nonnull %12) #12
  %333 = add nsw i32 %324, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %326, i32 noundef %333, ptr noundef nonnull %332, ptr noundef nonnull %13) #12
  %334 = load i32, ptr %13, align 4, !tbaa !48
  %335 = icmp eq i32 %334, 0
  br i1 %335, label %359, label %336

336:                                              ; preds = %322
  %337 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 1
  %338 = load i32, ptr %337, align 4, !tbaa !54
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %339, i32 30
  %341 = load i16, ptr %340, align 8, !tbaa !101
  %342 = icmp eq i16 %341, 14
  br i1 %342, label %359, label %343

343:                                              ; preds = %336
  %344 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 3
  %345 = load i16, ptr %344, align 2, !tbaa !91
  %346 = sext i16 %345 to i64
  %347 = shl nsw i64 %346, 2
  %348 = or disjoint i64 %347, 1
  %349 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 2
  %350 = load i16, ptr %349, align 4, !tbaa !92
  %351 = sext i16 %350 to i64
  %352 = add nsw i64 %348, %351
  %353 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %339, i32 34
  %354 = load i64, ptr %353, align 8, !tbaa !118
  %355 = and i64 %352, 4294967295
  %356 = lshr i64 %354, %355
  %357 = trunc i64 %356 to i32
  %358 = and i32 %357, 1
  br label %359

359:                                              ; preds = %343, %336, %322
  %360 = phi i32 [ %330, %322 ], [ %358, %343 ], [ 1, %336 ]
  %361 = load i32, ptr %12, align 4, !tbaa !48
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %386, label %363

363:                                              ; preds = %359
  %364 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 1
  %365 = load i32, ptr %364, align 4, !tbaa !54
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %366, i32 30
  %368 = load i16, ptr %367, align 8, !tbaa !101
  %369 = icmp eq i16 %368, 14
  br i1 %369, label %386, label %370

370:                                              ; preds = %363
  %371 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 3
  %372 = load i16, ptr %371, align 2, !tbaa !91
  %373 = sext i16 %372 to i64
  %374 = shl nsw i64 %373, 2
  %375 = or disjoint i64 %374, 1
  %376 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 2
  %377 = load i16, ptr %376, align 4, !tbaa !92
  %378 = sext i16 %377 to i64
  %379 = add nsw i64 %375, %378
  %380 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %366, i32 34
  %381 = load i64, ptr %380, align 8, !tbaa !118
  %382 = and i64 %379, 4294967295
  %383 = lshr i64 %381, %382
  %384 = trunc i64 %383 to i32
  %385 = and i32 %384, 1
  br label %386

386:                                              ; preds = %370, %363, %359
  %387 = phi i32 [ %330, %359 ], [ %385, %370 ], [ 1, %363 ]
  %388 = shl nuw nsw i32 %360, 1
  %389 = or disjoint i32 %387, %388
  %390 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 4
  %391 = zext nneg i32 %389 to i64
  %392 = getelementptr inbounds %struct.BiContextType, ptr %390, i64 %391
  %393 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %392) #12
  %394 = icmp eq i32 %393, 0
  br i1 %394, label %409, label %395

395:                                              ; preds = %386
  %396 = add nsw i32 %324, 1
  %397 = ashr i32 %326, 2
  %398 = add nsw i32 %396, %397
  %399 = icmp sgt i32 %398, 63
  br i1 %399, label %404, label %400

400:                                              ; preds = %395
  %401 = sext i32 %398 to i64
  %402 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %401
  %403 = load i64, ptr %402, align 8, !tbaa !118
  br label %404

404:                                              ; preds = %395, %400
  %405 = phi i64 [ %403, %400 ], [ 0, %395 ]
  %406 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %407 = load i64, ptr %406, align 8, !tbaa !118
  %408 = or i64 %407, %405
  store i64 %408, ptr %406, align 8, !tbaa !118
  br label %409

409:                                              ; preds = %404, %386
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  br label %585

410:                                              ; preds = %3
  %411 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %412 = load i32, ptr %411, align 8, !tbaa !90
  %413 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %414 = load i32, ptr %413, align 4, !tbaa !89
  %415 = add nsw i32 %412, 1
  %416 = ashr i32 %414, 2
  %417 = add nsw i32 %415, %416
  %418 = zext nneg i32 %417 to i64
  %419 = shl i64 51, %418
  %420 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %421 = load i64, ptr %420, align 8, !tbaa !118
  %422 = or i64 %419, %421
  store i64 %422, ptr %420, align 8, !tbaa !118
  br label %585

423:                                              ; preds = %3, %3, %3
  %424 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %425 = load i32, ptr %424, align 4, !tbaa !116
  %426 = icmp eq i32 %425, 0
  %427 = select i1 %426, i32 17, i32 18
  %428 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %429 = load i32, ptr %428, align 8, !tbaa !117
  %430 = icmp ne i32 %429, 0
  %431 = zext i1 %430 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #12
  %432 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81, i64 1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %432, ptr noundef nonnull %14) #12
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %432, ptr noundef nonnull %15) #12
  %433 = load i32, ptr %15, align 4, !tbaa !48
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %449, label %435

435:                                              ; preds = %423
  %436 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 1
  %437 = load i32, ptr %436, align 4, !tbaa !54
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %438, i32 30
  %440 = load i16, ptr %439, align 8, !tbaa !101
  %441 = icmp eq i16 %440, 14
  br i1 %441, label %449, label %442

442:                                              ; preds = %435
  %443 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %438, i32 34
  %444 = load i64, ptr %443, align 8, !tbaa !118
  %445 = zext nneg i32 %427 to i64
  %446 = lshr i64 %444, %445
  %447 = trunc i64 %446 to i32
  %448 = and i32 %447, 1
  br label %449

449:                                              ; preds = %435, %442, %423
  %450 = phi i32 [ %448, %442 ], [ %431, %423 ], [ 1, %435 ]
  %451 = load i32, ptr %14, align 4, !tbaa !48
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %467, label %453

453:                                              ; preds = %449
  %454 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 1
  %455 = load i32, ptr %454, align 4, !tbaa !54
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %456, i32 30
  %458 = load i16, ptr %457, align 8, !tbaa !101
  %459 = icmp eq i16 %458, 14
  br i1 %459, label %467, label %460

460:                                              ; preds = %453
  %461 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %456, i32 34
  %462 = load i64, ptr %461, align 8, !tbaa !118
  %463 = zext nneg i32 %427 to i64
  %464 = lshr i64 %462, %463
  %465 = trunc i64 %464 to i32
  %466 = and i32 %465, 1
  br label %467

467:                                              ; preds = %453, %460, %449
  %468 = phi i32 [ %466, %460 ], [ %431, %449 ], [ 1, %453 ]
  %469 = shl nuw nsw i32 %450, 1
  %470 = or disjoint i32 %468, %469
  %471 = sext i32 %2 to i64
  %472 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %471
  %473 = load i16, ptr %472, align 2, !tbaa !93
  %474 = sext i16 %473 to i64
  %475 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 %474
  %476 = zext nneg i32 %470 to i64
  %477 = getelementptr inbounds %struct.BiContextType, ptr %475, i64 %476
  %478 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %477) #12
  %479 = icmp eq i32 %478, 0
  br i1 %479, label %487, label %480

480:                                              ; preds = %467
  %481 = zext nneg i32 %427 to i64
  %482 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %481
  %483 = load i64, ptr %482, align 8, !tbaa !118
  %484 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %485 = load i64, ptr %484, align 8, !tbaa !118
  %486 = or i64 %485, %483
  store i64 %486, ptr %484, align 8, !tbaa !118
  br label %487

487:                                              ; preds = %480, %467
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #12
  br label %585

488:                                              ; preds = %3
  %489 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %490 = load i32, ptr %489, align 4, !tbaa !116
  %491 = icmp eq i32 %490, 0
  %492 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %493 = load i32, ptr %492, align 8, !tbaa !90
  %494 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %495 = load i32, ptr %494, align 4, !tbaa !89
  %496 = select i1 %491, i32 19, i32 35
  %497 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %498 = load i32, ptr %497, align 8, !tbaa !117
  %499 = icmp ne i32 %498, 0
  %500 = zext i1 %499 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #12
  %501 = add nsw i32 %495, -1
  %502 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81, i64 1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %501, i32 noundef %493, ptr noundef nonnull %502, ptr noundef nonnull %16) #12
  %503 = add nsw i32 %493, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %495, i32 noundef %503, ptr noundef nonnull %502, ptr noundef nonnull %17) #12
  %504 = load i32, ptr %17, align 4, !tbaa !48
  %505 = icmp eq i32 %504, 0
  br i1 %505, label %529, label %506

506:                                              ; preds = %488
  %507 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 1
  %508 = load i32, ptr %507, align 4, !tbaa !54
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %509, i32 30
  %511 = load i16, ptr %510, align 8, !tbaa !101
  %512 = icmp eq i16 %511, 14
  br i1 %512, label %529, label %513

513:                                              ; preds = %506
  %514 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 3
  %515 = load i16, ptr %514, align 2, !tbaa !91
  %516 = sext i16 %515 to i32
  %517 = shl nsw i32 %516, 2
  %518 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 2
  %519 = load i16, ptr %518, align 4, !tbaa !92
  %520 = sext i16 %519 to i32
  %521 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %509, i32 34
  %522 = load i64, ptr %521, align 8, !tbaa !118
  %523 = add nsw i32 %496, %520
  %524 = add nsw i32 %523, %517
  %525 = zext nneg i32 %524 to i64
  %526 = lshr i64 %522, %525
  %527 = trunc i64 %526 to i32
  %528 = and i32 %527, 1
  br label %529

529:                                              ; preds = %506, %513, %488
  %530 = phi i32 [ %528, %513 ], [ %500, %488 ], [ 1, %506 ]
  %531 = load i32, ptr %16, align 4, !tbaa !48
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %556, label %533

533:                                              ; preds = %529
  %534 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 1
  %535 = load i32, ptr %534, align 4, !tbaa !54
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %536, i32 30
  %538 = load i16, ptr %537, align 8, !tbaa !101
  %539 = icmp eq i16 %538, 14
  br i1 %539, label %556, label %540

540:                                              ; preds = %533
  %541 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 3
  %542 = load i16, ptr %541, align 2, !tbaa !91
  %543 = sext i16 %542 to i32
  %544 = shl nsw i32 %543, 2
  %545 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 2
  %546 = load i16, ptr %545, align 4, !tbaa !92
  %547 = sext i16 %546 to i32
  %548 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %536, i32 34
  %549 = load i64, ptr %548, align 8, !tbaa !118
  %550 = add nsw i32 %496, %547
  %551 = add nsw i32 %550, %544
  %552 = zext nneg i32 %551 to i64
  %553 = lshr i64 %549, %552
  %554 = trunc i64 %553 to i32
  %555 = and i32 %554, 1
  br label %556

556:                                              ; preds = %533, %540, %529
  %557 = phi i32 [ %555, %540 ], [ %500, %529 ], [ 1, %533 ]
  %558 = shl nuw nsw i32 %530, 1
  %559 = or disjoint i32 %557, %558
  %560 = sext i32 %2 to i64
  %561 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %560
  %562 = load i16, ptr %561, align 2, !tbaa !93
  %563 = sext i16 %562 to i64
  %564 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 %563
  %565 = zext nneg i32 %559 to i64
  %566 = getelementptr inbounds %struct.BiContextType, ptr %564, i64 %565
  %567 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %566) #12
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %584, label %569

569:                                              ; preds = %556
  %570 = ashr i32 %495, 2
  %571 = select i1 %491, i32 19, i32 35
  %572 = add nsw i32 %493, %571
  %573 = add nsw i32 %572, %570
  %574 = icmp sgt i32 %573, 63
  br i1 %574, label %579, label %575

575:                                              ; preds = %569
  %576 = sext i32 %573 to i64
  %577 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %576
  %578 = load i64, ptr %577, align 8, !tbaa !118
  br label %579

579:                                              ; preds = %569, %575
  %580 = phi i64 [ %578, %575 ], [ 0, %569 ]
  %581 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %582 = load i64, ptr %581, align 8, !tbaa !118
  %583 = or i64 %582, %580
  store i64 %583, ptr %581, align 8, !tbaa !118
  br label %584

584:                                              ; preds = %579, %556
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #12
  br label %585

585:                                              ; preds = %155, %321, %410, %584, %487, %409, %238, %67
  %586 = phi i32 [ %61, %67 ], [ %139, %155 ], [ %227, %238 ], [ %310, %321 ], [ %393, %409 ], [ 1, %410 ], [ %478, %487 ], [ %567, %584 ]
  ret i32 %586
}

; Function Attrs: nounwind uwtable
define dso_local void @readRunLevel_CABAC(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 94
  %6 = load i32, ptr %5, align 4, !tbaa !79
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %190

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %12) #12
  store i32 %13, ptr %5, align 4, !tbaa !79
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %190, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93
  %18 = load ptr, ptr %0, align 8, !tbaa !50
  %19 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 38
  %20 = load i32, ptr %19, align 8, !tbaa !120
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %24 = load i32, ptr %23, align 8, !tbaa !61
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i1 [ true, %15 ], [ %25, %22 ]
  %28 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 59
  %29 = load ptr, ptr %28, align 8, !tbaa !98
  %30 = zext i1 %27 to i64
  %31 = sext i32 %16 to i64
  %32 = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !93
  %34 = sext i16 %33 to i64
  %35 = getelementptr inbounds %struct.TextureInfoContexts, ptr %29, i64 0, i32 5, i64 %30, i64 %34
  %36 = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %31
  %37 = load i16, ptr %36, align 2, !tbaa !93
  %38 = sext i16 %37 to i64
  %39 = getelementptr inbounds %struct.TextureInfoContexts, ptr %29, i64 0, i32 6, i64 %30, i64 %38
  %40 = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %31
  %41 = load i16, ptr %40, align 2, !tbaa !93
  %42 = sext i16 %41 to i32
  %43 = lshr i64 133250, %31
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 1
  %46 = add nsw i32 %45, %42
  %47 = select i1 %27, ptr @pos2ctx_map_int, ptr @pos2ctx_map
  %48 = getelementptr inbounds ptr, ptr %47, i64 %31
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = shl i64 %31, 2
  br label %51

51:                                               ; preds = %26, %77
  %52 = phi i32 [ 0, %26 ], [ %79, %77 ]
  %53 = phi i32 [ %45, %26 ], [ %80, %77 ]
  %54 = phi ptr [ %17, %26 ], [ %62, %77 ]
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, ptr %49, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !103
  %58 = zext i8 %57 to i64
  %59 = getelementptr inbounds %struct.BiContextType, ptr %35, i64 %58
  %60 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %59) #12
  %61 = icmp eq i32 %60, 0
  %62 = getelementptr inbounds i32, ptr %54, i64 1
  br i1 %61, label %76, label %63

63:                                               ; preds = %51
  store i32 1, ptr %54, align 4, !tbaa !79
  %64 = add nsw i32 %52, 1
  %65 = call ptr @llvm.load.relative.i64(ptr @reltable.readRunLevel_CABAC, i64 %50)
  %66 = getelementptr inbounds i8, ptr %65, i64 %55
  %67 = load i8, ptr %66, align 1, !tbaa !103
  %68 = zext i8 %67 to i64
  %69 = getelementptr inbounds %struct.BiContextType, ptr %39, i64 %68
  %70 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %69) #12
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %77, label %72

72:                                               ; preds = %63
  %73 = sub nsw i32 %46, %53
  %74 = sext i32 %73 to i64
  %75 = shl nsw i64 %74, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %62, i8 0, i64 %75, i1 false)
  br label %77

76:                                               ; preds = %51
  store i32 0, ptr %54, align 4, !tbaa !79
  br label %77

77:                                               ; preds = %76, %72, %63
  %78 = phi i32 [ %46, %72 ], [ %53, %63 ], [ %53, %76 ]
  %79 = phi i32 [ %64, %72 ], [ %64, %63 ], [ %52, %76 ]
  %80 = add nsw i32 %78, 1
  %81 = icmp slt i32 %80, %46
  br i1 %81, label %51, label %82, !llvm.loop !121

82:                                               ; preds = %77
  %83 = icmp slt i32 %78, %46
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  store i32 1, ptr %62, align 4, !tbaa !79
  %85 = add nsw i32 %79, 1
  br label %86

86:                                               ; preds = %82, %84
  %87 = phi i32 [ %85, %84 ], [ %79, %82 ]
  store i32 %87, ptr %5, align 4, !tbaa !79
  %88 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %89 = load ptr, ptr %88, align 8, !tbaa !98
  %90 = load i32, ptr %11, align 8, !tbaa !94
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %91
  %93 = load i16, ptr %92, align 2, !tbaa !93
  %94 = sext i16 %93 to i64
  %95 = getelementptr inbounds %struct.TextureInfoContexts, ptr %89, i64 0, i32 7, i64 %94
  %96 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %91
  %97 = load i16, ptr %96, align 2, !tbaa !93
  %98 = sext i16 %97 to i64
  %99 = getelementptr inbounds %struct.TextureInfoContexts, ptr %89, i64 0, i32 8, i64 %98
  %100 = getelementptr inbounds [22 x i16], ptr @max_c2, i64 0, i64 %91
  %101 = load i16, ptr %100, align 2, !tbaa !93
  %102 = sext i16 %101 to i32
  %103 = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %91
  %104 = load i16, ptr %103, align 2, !tbaa !93
  %105 = sext i16 %104 to i32
  %106 = sext i16 %104 to i64
  %107 = getelementptr inbounds i32, ptr %17, i64 %106
  br label %108

108:                                              ; preds = %86, %184
  %109 = phi ptr [ %187, %184 ], [ %107, %86 ]
  %110 = phi i32 [ %188, %184 ], [ %105, %86 ]
  %111 = phi i32 [ %186, %184 ], [ 1, %86 ]
  %112 = phi i32 [ %185, %184 ], [ 0, %86 ]
  %113 = load i32, ptr %109, align 4, !tbaa !79
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %184, label %115

115:                                              ; preds = %108
  %116 = tail call i32 @llvm.smin.i32(i32 %111, i32 4)
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.BiContextType, ptr %95, i64 %117
  %119 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %118) #12
  %120 = load i32, ptr %109, align 4, !tbaa !79
  %121 = add i32 %120, %119
  store i32 %121, ptr %109, align 4, !tbaa !79
  %122 = icmp eq i32 %121, 2
  br i1 %122, label %123, label %172

123:                                              ; preds = %115
  %124 = add nsw i32 %112, 1
  %125 = tail call i32 @llvm.smin.i32(i32 %112, i32 %102)
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.BiContextType, ptr %99, i64 %126
  %128 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %127) #12
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %168, label %130

130:                                              ; preds = %123, %130
  %131 = phi i32 [ %134, %130 ], [ 0, %123 ]
  %132 = phi i32 [ %135, %130 ], [ 1, %123 ]
  %133 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %127) #12
  %134 = add nuw nsw i32 %131, 1
  %135 = add nuw nsw i32 %132, 1
  %136 = icmp ne i32 %133, 0
  %137 = icmp ne i32 %135, 13
  %138 = select i1 %136, i1 %137, i1 false
  br i1 %138, label %130, label %139, !llvm.loop !122

139:                                              ; preds = %130
  br i1 %136, label %140, label %168

140:                                              ; preds = %139, %140
  %141 = phi i32 [ %147, %140 ], [ 0, %139 ]
  %142 = phi i32 [ %149, %140 ], [ 0, %139 ]
  %143 = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #12
  %144 = icmp eq i32 %143, 1
  %145 = shl nuw i32 1, %141
  %146 = zext i1 %144 to i32
  %147 = add nuw nsw i32 %141, %146
  %148 = select i1 %144, i32 %145, i32 0
  %149 = add nsw i32 %148, %142
  %150 = icmp eq i32 %143, 0
  br i1 %150, label %151, label %140, !llvm.loop !96

151:                                              ; preds = %140
  %152 = icmp eq i32 %147, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %151, %153
  %154 = phi i32 [ %161, %153 ], [ 0, %151 ]
  %155 = phi i32 [ %156, %153 ], [ %147, %151 ]
  %156 = add nsw i32 %155, -1
  %157 = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #12
  %158 = icmp eq i32 %157, 1
  %159 = shl nuw i32 1, %156
  %160 = select i1 %158, i32 %159, i32 0
  %161 = or i32 %160, %154
  %162 = icmp eq i32 %156, 0
  br i1 %162, label %163, label %153, !llvm.loop !97

163:                                              ; preds = %153, %151
  %164 = phi i32 [ 0, %151 ], [ %161, %153 ]
  %165 = add nuw i32 %131, 2
  %166 = add i32 %165, %149
  %167 = add i32 %166, %164
  br label %168

168:                                              ; preds = %163, %139, %123
  %169 = phi i32 [ 0, %123 ], [ %167, %163 ], [ %134, %139 ]
  %170 = load i32, ptr %109, align 4, !tbaa !79
  %171 = add i32 %170, %169
  store i32 %171, ptr %109, align 4, !tbaa !79
  br label %176

172:                                              ; preds = %115
  %173 = icmp eq i32 %111, 0
  %174 = add nsw i32 %111, 1
  %175 = select i1 %173, i32 0, i32 %174
  br label %176

176:                                              ; preds = %172, %168
  %177 = phi i32 [ %124, %168 ], [ %112, %172 ]
  %178 = phi i32 [ 0, %168 ], [ %175, %172 ]
  %179 = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #12
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = load i32, ptr %109, align 4, !tbaa !79
  %183 = sub nsw i32 0, %182
  store i32 %183, ptr %109, align 4, !tbaa !79
  br label %184

184:                                              ; preds = %181, %176, %108
  %185 = phi i32 [ %177, %181 ], [ %177, %176 ], [ %112, %108 ]
  %186 = phi i32 [ %178, %181 ], [ %178, %176 ], [ %111, %108 ]
  %187 = getelementptr inbounds i32, ptr %109, i64 -1
  %188 = add nsw i32 %110, -1
  %189 = icmp sgt i32 %110, 0
  br i1 %189, label %108, label %190, !llvm.loop !123

190:                                              ; preds = %184, %8, %3
  %191 = load i32, ptr %5, align 4, !tbaa !79
  %192 = icmp eq i32 %191, 0
  %193 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  br i1 %192, label %220, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 95
  %196 = load i32, ptr %195, align 4, !tbaa !124
  store i32 0, ptr %193, align 8, !tbaa !86
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93, i64 %197
  %199 = load i32, ptr %198, align 4, !tbaa !79
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %194
  %202 = sext i32 %196 to i64
  br label %203

203:                                              ; preds = %201, %203
  %204 = phi i64 [ %202, %201 ], [ %206, %203 ]
  %205 = phi i32 [ 0, %201 ], [ %208, %203 ]
  %206 = add i64 %204, 1
  %207 = trunc i64 %206 to i32
  store i32 %207, ptr %195, align 4, !tbaa !124
  %208 = add nuw nsw i32 %205, 1
  store i32 %208, ptr %193, align 8, !tbaa !86
  %209 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93, i64 %206
  %210 = load i32, ptr %209, align 4, !tbaa !79
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %203, label %212, !llvm.loop !125

212:                                              ; preds = %203
  %213 = trunc i64 %206 to i32
  br label %214

214:                                              ; preds = %212, %194
  %215 = phi i64 [ %197, %194 ], [ %206, %212 ]
  %216 = phi i32 [ %196, %194 ], [ %213, %212 ]
  %217 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93, i64 %215
  %218 = add nsw i32 %216, 1
  store i32 %218, ptr %195, align 4, !tbaa !124
  %219 = load i32, ptr %217, align 4, !tbaa !79
  br label %221

220:                                              ; preds = %190
  store i32 0, ptr %193, align 8, !tbaa !86
  br label %221

221:                                              ; preds = %220, %214
  %222 = phi i32 [ 0, %220 ], [ %219, %214 ]
  %223 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %222, ptr %223, align 4, !tbaa !64
  %224 = load i32, ptr %5, align 4, !tbaa !79
  %225 = add nsw i32 %224, -1
  store i32 %225, ptr %5, align 4, !tbaa !79
  %226 = icmp eq i32 %224, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 95
  store i32 0, ptr %228, align 4, !tbaa !124
  br label %229

229:                                              ; preds = %227, %221
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @readSyntaxElement_CABAC(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1
  %5 = tail call i32 @arideco_bits_read(ptr noundef nonnull %4) #12
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !126
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #12
  %8 = tail call i32 @arideco_bits_read(ptr noundef nonnull %4) #12
  %9 = sub nsw i32 %8, %5
  %10 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 %9, ptr %10, align 4, !tbaa !127
  ret i32 %9
}

declare i32 @arideco_bits_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @cabac_startcode_follows(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 42
  %6 = load i32, ptr %5, align 8, !tbaa !128
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %9 = load ptr, ptr %8, align 8, !tbaa !129
  %10 = getelementptr inbounds [2 x [20 x i8]], ptr @assignSE2partition, i64 0, i64 %7, i64 2
  %11 = load i8, ptr %10, align 2, !tbaa !103
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.datapartition, ptr %9, i64 %12, i32 1
  %14 = tail call i32 @biari_decode_final(ptr noundef nonnull %13) #12
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %2, %4
  %18 = phi i32 [ %16, %4 ], [ 0, %2 ]
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define dso_local void @readIPCM_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !66
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = load ptr, ptr %1, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !134
  %12 = shl i32 %11, 3
  %13 = or disjoint i32 %12, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i32 0, ptr %3, align 4, !tbaa !79
  %14 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !135
  %16 = icmp sgt i32 %15, 7
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 1
  %19 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !77
  br label %21

21:                                               ; preds = %17, %21
  %22 = phi i32 [ %15, %17 ], [ %28, %21 ]
  %23 = load i32, ptr %18, align 4, !tbaa !136
  %24 = lshr i32 %23, 8
  store i32 %24, ptr %18, align 4, !tbaa !136
  %25 = add nsw i32 %22, -8
  store i32 %25, ptr %14, align 8, !tbaa !135
  %26 = load i32, ptr %20, align 4, !tbaa !79
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %20, align 4, !tbaa !79
  %28 = load i32, ptr %14, align 8, !tbaa !135
  %29 = icmp sgt i32 %28, 7
  br i1 %29, label %21, label %30, !llvm.loop !137

30:                                               ; preds = %21, %2
  %31 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = load i32, ptr %32, align 4, !tbaa !79
  %34 = shl i32 %33, 3
  %35 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 64
  %36 = load i16, ptr %35, align 8, !tbaa !138
  %37 = sext i16 %36 to i32
  %38 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %39

39:                                               ; preds = %30, %58
  %40 = phi i64 [ 0, %30 ], [ %59, %58 ]
  %41 = phi i32 [ %34, %30 ], [ %55, %58 ]
  %42 = phi i32 [ 0, %30 ], [ %48, %58 ]
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ 0, %39 ], [ %56, %43 ]
  %45 = phi i32 [ %41, %39 ], [ %55, %43 ]
  %46 = phi i32 [ %42, %39 ], [ %48, %43 ]
  %47 = call i32 @GetBits(ptr noundef %9, i32 noundef %45, ptr noundef nonnull %3, i32 noundef %13, i32 noundef %37) #12
  %48 = add nsw i32 %47, %46
  %49 = load i32, ptr %3, align 4, !tbaa !79
  %50 = load ptr, ptr %38, align 8, !tbaa !139
  %51 = load ptr, ptr %50, align 8, !tbaa !73
  %52 = getelementptr inbounds ptr, ptr %51, i64 %40
  %53 = load ptr, ptr %52, align 8, !tbaa !73
  %54 = getelementptr inbounds i32, ptr %53, i64 %44
  store i32 %49, ptr %54, align 4, !tbaa !79
  %55 = add nsw i32 %45, %37
  %56 = add nuw nsw i64 %44, 1
  %57 = icmp eq i64 %56, 16
  br i1 %57, label %58, label %43, !llvm.loop !140

58:                                               ; preds = %43
  %59 = add nuw nsw i64 %40, 1
  %60 = icmp eq i64 %59, 16
  br i1 %60, label %61, label %39, !llvm.loop !141

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 65
  %63 = load i16, ptr %62, align 2, !tbaa !142
  %64 = sext i16 %63 to i32
  %65 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %66 = load i32, ptr %65, align 4, !tbaa !113
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %118, label %68

68:                                               ; preds = %61
  %69 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %70 = load i32, ptr %69, align 8, !tbaa !119
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %118

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %74 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %75 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %76

76:                                               ; preds = %72, %113
  %77 = phi i64 [ 1, %72 ], [ %116, %113 ]
  %78 = phi i32 [ %55, %72 ], [ %115, %113 ]
  %79 = phi i32 [ %48, %72 ], [ %114, %113 ]
  %80 = load i32, ptr %73, align 8, !tbaa !143
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %76, %106
  %83 = phi i64 [ %109, %106 ], [ 0, %76 ]
  %84 = phi i32 [ %108, %106 ], [ %78, %76 ]
  %85 = phi i32 [ %107, %106 ], [ %79, %76 ]
  %86 = load i32, ptr %74, align 4, !tbaa !144
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %82, %88
  %89 = phi i64 [ %102, %88 ], [ 0, %82 ]
  %90 = phi i32 [ %101, %88 ], [ %84, %82 ]
  %91 = phi i32 [ %93, %88 ], [ %85, %82 ]
  %92 = call i32 @GetBits(ptr noundef %9, i32 noundef %90, ptr noundef nonnull %3, i32 noundef %13, i32 noundef %64) #12
  %93 = add nsw i32 %92, %91
  %94 = load i32, ptr %3, align 4, !tbaa !79
  %95 = load ptr, ptr %75, align 8, !tbaa !139
  %96 = getelementptr inbounds ptr, ptr %95, i64 %77
  %97 = load ptr, ptr %96, align 8, !tbaa !73
  %98 = getelementptr inbounds ptr, ptr %97, i64 %83
  %99 = load ptr, ptr %98, align 8, !tbaa !73
  %100 = getelementptr inbounds i32, ptr %99, i64 %89
  store i32 %94, ptr %100, align 4, !tbaa !79
  %101 = add nsw i32 %90, %64
  %102 = add nuw nsw i64 %89, 1
  %103 = load i32, ptr %74, align 4, !tbaa !144
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %88, label %106, !llvm.loop !145

106:                                              ; preds = %88, %82
  %107 = phi i32 [ %85, %82 ], [ %93, %88 ]
  %108 = phi i32 [ %84, %82 ], [ %101, %88 ]
  %109 = add nuw nsw i64 %83, 1
  %110 = load i32, ptr %73, align 8, !tbaa !143
  %111 = sext i32 %110 to i64
  %112 = icmp slt i64 %109, %111
  br i1 %112, label %82, label %113, !llvm.loop !146

113:                                              ; preds = %106, %76
  %114 = phi i32 [ %79, %76 ], [ %107, %106 ]
  %115 = phi i32 [ %78, %76 ], [ %108, %106 ]
  %116 = add nuw nsw i64 %77, 1
  %117 = icmp eq i64 %116, 3
  br i1 %117, label %118, label %76, !llvm.loop !147

118:                                              ; preds = %113, %68, %61
  %119 = phi i32 [ %48, %68 ], [ %48, %61 ], [ %114, %113 ]
  %120 = ashr i32 %119, 3
  %121 = load ptr, ptr %31, align 8, !tbaa !77
  %122 = load i32, ptr %121, align 4, !tbaa !79
  %123 = add nsw i32 %122, %120
  %124 = and i32 %119, 7
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i32
  %127 = add nsw i32 %123, %126
  store i32 %127, ptr %121, align 4, !tbaa !79
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret void
}

declare i32 @GetBits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }

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
!34 = !{!35, !36, i64 8}
!35 = !{!"macroblock", !36, i64 0, !36, i64 8, !36, i64 16, !39, i64 24, !40, i64 28, !39, i64 32, !39, i64 36, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !37, i64 80, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !41, i64 108, !37, i64 110, !37, i64 111, !41, i64 112, !41, i64 114, !36, i64 120, !36, i64 128, !36, i64 136, !36, i64 144, !41, i64 152, !37, i64 154, !39, i64 284, !37, i64 288, !37, i64 312, !37, i64 336, !39, i64 360, !37, i64 364, !37, i64 368, !37, i64 372, !37, i64 373, !37, i64 374, !41, i64 376, !41, i64 378, !41, i64 380, !39, i64 384, !39, i64 388, !39, i64 392, !39, i64 396, !39, i64 400, !39, i64 404, !39, i64 408, !39, i64 412, !39, i64 416, !39, i64 420, !39, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !37, i64 472}
!36 = !{!"any pointer", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !{!"int", !37, i64 0}
!40 = !{!"", !41, i64 0, !41, i64 2}
!41 = !{!"short", !37, i64 0}
!42 = !{!43, !36, i64 856744}
!43 = !{!"video_par", !36, i64 0, !36, i64 8, !36, i64 16, !37, i64 24, !37, i64 132120, !36, i64 699416, !37, i64 699424, !39, i64 848672, !39, i64 848676, !39, i64 848680, !39, i64 848684, !36, i64 848688, !36, i64 848696, !36, i64 848704, !39, i64 848712, !39, i64 848716, !39, i64 848720, !39, i64 848724, !39, i64 848728, !36, i64 848736, !36, i64 848744, !37, i64 848752, !39, i64 848776, !39, i64 848780, !39, i64 848784, !39, i64 848788, !39, i64 848792, !36, i64 848800, !37, i64 848808, !36, i64 848832, !36, i64 848840, !37, i64 848848, !39, i64 848872, !39, i64 848876, !36, i64 848880, !36, i64 848888, !37, i64 848896, !39, i64 848920, !36, i64 848928, !36, i64 848936, !39, i64 848944, !39, i64 848948, !39, i64 848952, !39, i64 848956, !39, i64 848960, !39, i64 848964, !39, i64 848968, !39, i64 848972, !39, i64 848976, !39, i64 848980, !39, i64 848984, !39, i64 848988, !39, i64 848992, !39, i64 848996, !39, i64 849000, !39, i64 849004, !39, i64 849008, !39, i64 849012, !39, i64 849016, !39, i64 849020, !39, i64 849024, !39, i64 849028, !39, i64 849032, !39, i64 849036, !41, i64 849040, !41, i64 849042, !37, i64 849044, !39, i64 849052, !39, i64 849056, !37, i64 849060, !37, i64 849072, !39, i64 849084, !39, i64 849088, !39, i64 849092, !39, i64 849096, !39, i64 849100, !39, i64 849104, !39, i64 849108, !39, i64 849112, !39, i64 849116, !39, i64 849120, !37, i64 849124, !37, i64 849148, !37, i64 849172, !39, i64 849196, !39, i64 849200, !39, i64 849204, !39, i64 849208, !39, i64 849212, !39, i64 849216, !39, i64 849220, !39, i64 849224, !39, i64 849228, !39, i64 849232, !39, i64 849236, !39, i64 849240, !39, i64 849244, !39, i64 849248, !39, i64 849252, !39, i64 849256, !39, i64 849260, !39, i64 849264, !39, i64 849268, !39, i64 849272, !39, i64 849276, !39, i64 849280, !39, i64 849284, !36, i64 849288, !36, i64 849296, !44, i64 849304, !44, i64 849624, !44, i64 849944, !44, i64 850264, !44, i64 850584, !44, i64 850904, !44, i64 851224, !44, i64 851544, !39, i64 851864, !39, i64 851868, !39, i64 851872, !47, i64 851880, !39, i64 851888, !37, i64 851892, !39, i64 855988, !39, i64 855992, !39, i64 855996, !39, i64 856000, !39, i64 856004, !39, i64 856008, !39, i64 856012, !36, i64 856016, !36, i64 856024, !36, i64 856032, !36, i64 856040, !36, i64 856048, !37, i64 856056, !36, i64 856456, !37, i64 856464, !36, i64 856488, !36, i64 856496, !36, i64 856504, !39, i64 856512, !36, i64 856520, !37, i64 856528, !36, i64 856608, !36, i64 856616, !36, i64 856624, !36, i64 856632, !39, i64 856640, !39, i64 856644, !39, i64 856648, !36, i64 856656, !36, i64 856664, !37, i64 856672, !37, i64 856688, !36, i64 856704, !36, i64 856712, !39, i64 856720, !36, i64 856728, !36, i64 856736, !36, i64 856744, !36, i64 856752, !36, i64 856760, !36, i64 856768, !36, i64 856776, !36, i64 856784, !36, i64 856792, !36, i64 856800, !36, i64 856808, !36, i64 856816, !39, i64 856824, !36, i64 856832, !39, i64 856840, !39, i64 856844, !39, i64 856848, !39, i64 856852, !39, i64 856856, !39, i64 856860, !39, i64 856864, !36, i64 856872}
!44 = !{!"image_data", !45, i64 0, !37, i64 136, !37, i64 160, !37, i64 184, !37, i64 208, !37, i64 232, !37, i64 256, !37, i64 280, !37, i64 292, !37, i64 304}
!45 = !{!"frame_format", !39, i64 0, !39, i64 4, !46, i64 8, !37, i64 16, !37, i64 28, !39, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !37, i64 72, !39, i64 84, !37, i64 88, !37, i64 100, !37, i64 112, !39, i64 124, !39, i64 128}
!46 = !{!"double", !37, i64 0}
!47 = !{!"long", !37, i64 0}
!48 = !{!49, !39, i64 0}
!49 = !{!"pix_pos", !39, i64 0, !39, i64 4, !41, i64 8, !41, i64 10, !41, i64 12, !41, i64 14}
!50 = !{!35, !36, i64 0}
!51 = !{!52, !36, i64 13512}
!52 = !{!"slice", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !39, i64 32, !36, i64 40, !39, i64 48, !39, i64 52, !39, i64 56, !39, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !37, i64 88, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !41, i64 116, !39, i64 120, !39, i64 124, !39, i64 128, !39, i64 132, !37, i64 136, !39, i64 144, !39, i64 148, !39, i64 152, !39, i64 156, !39, i64 160, !39, i64 164, !39, i64 168, !39, i64 172, !39, i64 176, !37, i64 180, !39, i64 184, !39, i64 188, !39, i64 192, !39, i64 196, !39, i64 200, !39, i64 204, !39, i64 208, !39, i64 212, !39, i64 216, !39, i64 220, !39, i64 224, !39, i64 228, !39, i64 232, !39, i64 236, !39, i64 240, !39, i64 244, !36, i64 248, !37, i64 256, !37, i64 264, !36, i64 312, !36, i64 320, !36, i64 328, !37, i64 336, !37, i64 1104, !37, i64 1112, !37, i64 1128, !37, i64 1144, !37, i64 1160, !39, i64 1176, !39, i64 1180, !39, i64 1184, !53, i64 1188, !41, i64 1220, !41, i64 1222, !41, i64 1224, !39, i64 1228, !39, i64 1232, !39, i64 1236, !39, i64 1240, !36, i64 1248, !36, i64 1256, !36, i64 1264, !36, i64 1272, !36, i64 1280, !37, i64 1288, !36, i64 1352, !36, i64 1360, !36, i64 1368, !36, i64 1376, !36, i64 1384, !37, i64 1392, !37, i64 2544, !37, i64 3696, !37, i64 8304, !37, i64 12912, !37, i64 13008, !39, i64 13264, !39, i64 13268, !41, i64 13272, !41, i64 13274, !41, i64 13276, !41, i64 13278, !36, i64 13280, !36, i64 13288, !36, i64 13296, !41, i64 13304, !41, i64 13306, !39, i64 13308, !39, i64 13312, !36, i64 13320, !36, i64 13328, !39, i64 13336, !37, i64 13340, !36, i64 13408, !36, i64 13416, !36, i64 13424, !36, i64 13432, !36, i64 13440, !36, i64 13448, !36, i64 13456, !36, i64 13464, !36, i64 13472, !36, i64 13480, !36, i64 13488, !36, i64 13496, !39, i64 13504, !36, i64 13512, !36, i64 13520, !36, i64 13528, !36, i64 13536, !36, i64 13544, !37, i64 13552}
!53 = !{!"nalunitheadermvcext_tag", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28}
!54 = !{!49, !39, i64 4}
!55 = !{!35, !36, i64 120}
!56 = !{!35, !36, i64 128}
!57 = !{!52, !39, i64 212}
!58 = !{!52, !36, i64 320}
!59 = !{!35, !39, i64 404}
!60 = !{!35, !39, i64 388}
!61 = !{!35, !39, i64 384}
!62 = !{!35, !39, i64 408}
!63 = !{!35, !39, i64 392}
!64 = !{!65, !39, i64 4}
!65 = !{!"syntaxelement", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !36, i64 32, !36, i64 40}
!66 = !{!52, !36, i64 0}
!67 = !{!52, !39, i64 108}
!68 = !{!52, !41, i64 116}
!69 = !{!35, !41, i64 108}
!70 = !{!35, !39, i64 24}
!71 = !{!52, !39, i64 128}
!72 = !{!35, !41, i64 114}
!73 = !{!36, !36, i64 0}
!74 = distinct !{!74, !75, !76}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.unroll.disable"}
!77 = !{!78, !36, i64 24}
!78 = !{!"", !39, i64 0, !39, i64 4, !39, i64 8, !36, i64 16, !36, i64 24}
!79 = !{!39, !39, i64 0}
!80 = distinct !{!80, !75, !76}
!81 = !{!35, !37, i64 374}
!82 = distinct !{!82, !75, !76}
!83 = distinct !{!83, !75, !76}
!84 = distinct !{!84, !75, !76}
!85 = distinct !{!85, !75, !76}
!86 = !{!65, !39, i64 8}
!87 = distinct !{!87, !75, !76}
!88 = distinct !{!88, !75, !76}
!89 = !{!35, !39, i64 60}
!90 = !{!35, !39, i64 64}
!91 = !{!49, !41, i64 10}
!92 = !{!49, !41, i64 8}
!93 = !{!41, !41, i64 0}
!94 = !{!65, !39, i64 24}
!95 = distinct !{!95, !75, !76}
!96 = distinct !{!96, !75, !76}
!97 = distinct !{!97, !75, !76}
!98 = !{!52, !36, i64 328}
!99 = !{!35, !39, i64 420}
!100 = !{!52, !39, i64 164}
!101 = !{!35, !41, i64 152}
!102 = !{!52, !36, i64 13520}
!103 = !{!37, !37, i64 0}
!104 = !{!105, !36, i64 152}
!105 = !{!"storable_picture", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !39, i64 16, !39, i64 20, !39, i64 24, !39, i64 28, !39, i64 32, !39, i64 36, !37, i64 40, !39, i64 44, !39, i64 48, !39, i64 52, !39, i64 56, !41, i64 60, !39, i64 64, !39, i64 68, !39, i64 72, !39, i64 76, !39, i64 80, !39, i64 84, !39, i64 88, !39, i64 92, !39, i64 96, !39, i64 100, !39, i64 104, !39, i64 108, !39, i64 112, !39, i64 116, !39, i64 120, !39, i64 124, !36, i64 128, !36, i64 136, !36, i64 144, !36, i64 152, !37, i64 160, !106, i64 184, !37, i64 192, !36, i64 216, !36, i64 224, !36, i64 232, !36, i64 240, !39, i64 248, !39, i64 252, !39, i64 256, !39, i64 260, !39, i64 264, !39, i64 268, !39, i64 272, !39, i64 276, !39, i64 280, !39, i64 284, !39, i64 288, !39, i64 292, !39, i64 296, !37, i64 300, !39, i64 308, !36, i64 312, !39, i64 320, !39, i64 324, !39, i64 328, !39, i64 332, !36, i64 336, !39, i64 344, !39, i64 348, !39, i64 352, !39, i64 356, !39, i64 360, !39, i64 364, !39, i64 368, !36, i64 376, !39, i64 384, !39, i64 388, !37, i64 392, !37, i64 400}
!106 = !{!"pic_motion_params_old", !36, i64 0}
!107 = !{!49, !41, i64 14}
!108 = !{!49, !41, i64 12}
!109 = distinct !{!109, !75, !76}
!110 = !{!35, !39, i64 284}
!111 = distinct !{!111, !75, !76}
!112 = distinct !{!112, !75, !76}
!113 = !{!105, !39, i64 268}
!114 = !{!35, !37, i64 373}
!115 = !{!35, !36, i64 456}
!116 = !{!35, !39, i64 100}
!117 = !{!35, !39, i64 96}
!118 = !{!47, !47, i64 0}
!119 = !{!43, !39, i64 849280}
!120 = !{!52, !39, i64 184}
!121 = distinct !{!121, !75, !76}
!122 = distinct !{!122, !75, !76}
!123 = distinct !{!123, !75, !76}
!124 = !{!52, !39, i64 13268}
!125 = distinct !{!125, !75, !76}
!126 = !{!65, !36, i64 40}
!127 = !{!65, !39, i64 12}
!128 = !{!52, !39, i64 200}
!129 = !{!52, !36, i64 312}
!130 = !{!131, !36, i64 0}
!131 = !{!"datapartition", !36, i64 0, !78, i64 8, !36, i64 40}
!132 = !{!133, !36, i64 16}
!133 = !{!"bit_stream", !39, i64 0, !39, i64 4, !39, i64 8, !39, i64 12, !36, i64 16, !39, i64 24}
!134 = !{!133, !39, i64 12}
!135 = !{!78, !39, i64 8}
!136 = !{!78, !39, i64 4}
!137 = distinct !{!137, !75, !76}
!138 = !{!43, !41, i64 849040}
!139 = !{!52, !36, i64 1272}
!140 = distinct !{!140, !75, !76}
!141 = distinct !{!141, !75, !76}
!142 = !{!43, !41, i64 849042}
!143 = !{!43, !39, i64 849112}
!144 = !{!43, !39, i64 849108}
!145 = distinct !{!145, !75, !76}
!146 = distinct !{!146, !75, !76}
!147 = distinct !{!147, !75, !76}
