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
@po2 = internal unnamed_addr constant [64 x i64] [i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384, i64 32768, i64 65536, i64 131072, i64 262144, i64 524288, i64 1048576, i64 2097152, i64 4194304, i64 8388608, i64 16777216, i64 33554432, i64 67108864, i64 134217728, i64 268435456, i64 536870912, i64 1073741824, i64 2147483648, i64 4294967296, i64 8589934592, i64 17179869184, i64 34359738368, i64 68719476736, i64 137438953472, i64 274877906944, i64 549755813888, i64 1099511627776, i64 2199023255552, i64 4398046511104, i64 8796093022208, i64 17592186044416, i64 35184372088832, i64 70368744177664, i64 140737488355328, i64 281474976710656, i64 562949953421312, i64 1125899906842624, i64 2251799813685248, i64 4503599627370496, i64 9007199254740992, i64 18014398509481984, i64 36028797018963968, i64 72057594037927936, i64 144115188075855872, i64 288230376151711744, i64 576460752303423488, i64 1152921504606846976, i64 2305843009213693952, i64 4611686018427387904, i64 -9223372036854775808], align 16
@pos2ctx_map_int = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x8i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map8x4i, ptr @pos2ctx_map4x4], align 16
@pos2ctx_map = internal unnamed_addr constant [22 x ptr] [ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map2x4c, ptr @pos2ctx_map4x4c, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map4x4, ptr @pos2ctx_map8x8, ptr @pos2ctx_map8x4, ptr @pos2ctx_map8x4, ptr @pos2ctx_map4x4], align 16
@type2ctx_last = internal unnamed_addr constant [22 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 6, i16 6, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21], align 16
@maxpos = internal unnamed_addr constant [22 x i16] [i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 3, i16 14, i16 7, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15, i16 15, i16 14, i16 63, i16 31, i16 31, i16 15], align 16
@reltable.read_significance_map = internal unnamed_addr constant [22 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last2x4c to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4c to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x8 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last8x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @pos2ctx_last4x4 to i64), i64 ptrtoint (ptr @reltable.read_significance_map to i64)) to i32)], align 4
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @CheckAvailabilityOfNeighborsCABAC(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.pix_pos, align 4
  %3 = alloca %struct.pix_pos, align 4
  %4 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #14
  %6 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 81
  %7 = getelementptr inbounds %struct.video_par, ptr %5, i64 0, i32 160
  %8 = load ptr, ptr %7, align 8, !tbaa !43
  call void %8(ptr noundef %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %3) #15
  %9 = load ptr, ptr %7, align 8, !tbaa !43
  call void %9(ptr noundef %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %6, ptr noundef nonnull %2) #15
  %10 = load i32, ptr %2, align 4, !tbaa !49
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %0, align 8, !tbaa !51
  %14 = getelementptr inbounds %struct.slice, ptr %13, i64 0, i32 124
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = getelementptr inbounds %struct.pix_pos, ptr %2, i64 0, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !55
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.macroblock, ptr %15, i64 %18
  br label %20

20:                                               ; preds = %1, %12
  %21 = phi ptr [ %19, %12 ], [ null, %1 ]
  %22 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  store ptr %21, ptr %22, align 8
  %23 = load i32, ptr %3, align 4, !tbaa !49
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %20
  %26 = load ptr, ptr %0, align 8, !tbaa !51
  %27 = getelementptr inbounds %struct.slice, ptr %26, i64 0, i32 124
  %28 = load ptr, ptr %27, align 8, !tbaa !52
  %29 = getelementptr inbounds %struct.pix_pos, ptr %3, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !55
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.macroblock, ptr %28, i64 %31
  br label %33

33:                                               ; preds = %20, %25
  %34 = phi ptr [ %32, %25 ], [ null, %20 ]
  %35 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  store ptr %34, ptr %35, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @cabac_new_slice(ptr nocapture noundef writeonly %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 45
  store i32 0, ptr %2, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @create_contexts_MotionInfo() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(364) ptr @calloc(i64 noundef 1, i64 noundef 364) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str) #15
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @no_mem_exit(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noalias noundef ptr @create_contexts_TextureInfo() local_unnamed_addr #0 {
  %1 = tail call noalias dereferenceable_or_null(6596) ptr @calloc(i64 noundef 1, i64 noundef 6596) #16
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call void @no_mem_exit(ptr noundef nonnull @.str.1) #15
  br label %4

4:                                                ; preds = %3, %0
  ret ptr %1
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_MotionInfo(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #15
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local void @delete_contexts_TextureInfo(ptr noundef %0) local_unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %0) #15
  br label %4

4:                                                ; preds = %1, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readFieldModeInfo_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 4, !tbaa !58
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 124
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 46
  %14 = load i32, ptr %13, align 4, !tbaa !59
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %15, i32 45
  %17 = load i32, ptr %16, align 8, !tbaa !60
  br label %18

18:                                               ; preds = %3, %10
  %19 = phi i32 [ %17, %10 ], [ 0, %3 ]
  %20 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 51
  %21 = load i32, ptr %20, align 8, !tbaa !61
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 124
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 47
  %27 = load i32, ptr %26, align 8, !tbaa !62
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 45
  %30 = load i32, ptr %29, align 8, !tbaa !60
  br label %31

31:                                               ; preds = %18, %23
  %32 = phi i32 [ %30, %23 ], [ 0, %18 ]
  %33 = add nsw i32 %32, %19
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 5, i64 %34
  %36 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %35) #15
  %37 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %36, ptr %37, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare i32 @biari_decode_symbol(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @check_next_mb_and_get_field_mode_CABAC_p_slice(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x ptr], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 58
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %9 = load i32, ptr %8, align 4, !tbaa !66
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !66
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 1
  store ptr %5, ptr %15, align 8, !tbaa !35
  store ptr %0, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 22
  %17 = load i16, ptr %16, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 21
  store i16 %17, ptr %18, align 4, !tbaa !68
  %19 = zext i32 %9 to i64
  %20 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %19, i32 45
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 45
  store i32 %21, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 3
  store i32 %10, ptr %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %25 = load i32, ptr %24, align 8, !tbaa !70
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %21, 0
  %28 = select i1 %26, i1 true, i1 %27
  %29 = and i32 %9, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i16 4, i16 2
  %32 = select i1 %28, i16 0, i16 %31
  %33 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 25
  store i16 %32, ptr %33, align 2, !tbaa !71
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %14) #15
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %14) #17
  %34 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #16
  br label %35

35:                                               ; preds = %3, %35
  %36 = phi i64 [ 0, %3 ], [ %39, %35 ]
  %37 = tail call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #16
  %38 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %36
  store ptr %37, ptr %38, align 8, !tbaa !72
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %35, !llvm.loop !73

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1
  %43 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 32, i1 false)
  %44 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = load i32, ptr %45, align 4, !tbaa !77
  %47 = getelementptr inbounds %struct.DecodingEnvironment, ptr %34, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  store i32 %46, ptr %48, align 4, !tbaa !77
  br label %49

49:                                               ; preds = %41, %49
  %50 = phi i64 [ 0, %41 ], [ %54, %49 ]
  %51 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %7, i64 0, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %52, ptr noundef nonnull align 2 dereferenceable(44) %53, i64 44, i1 false)
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %49, !llvm.loop !78

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.MotionInfoContexts, ptr %7, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %43, ptr noundef nonnull align 2 dereferenceable(16) %57, i64 16, i1 false)
  %58 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 45
  store i32 0, ptr %58, align 4, !tbaa !56
  tail call void @read_skip_flag_CABAC_p_slice(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %42) #17
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !63
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, ptr %8, align 4, !tbaa !66
  %64 = add i32 %63, -1
  br label %72

65:                                               ; preds = %56
  tail call void @readFieldModeInfo_CABAC(ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef nonnull %42) #17
  %66 = load i32, ptr %59, align 4, !tbaa !63
  %67 = load ptr, ptr %11, align 8, !tbaa !52
  %68 = load i32, ptr %8, align 4, !tbaa !66
  %69 = add i32 %68, -1
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.macroblock, ptr %67, i64 %70, i32 45
  store i32 %66, ptr %71, align 8, !tbaa !60
  br label %72

72:                                               ; preds = %62, %65
  %73 = phi i32 [ %64, %62 ], [ %69, %65 ]
  store i32 %73, ptr %8, align 4, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false)
  %74 = load ptr, ptr %44, align 8, !tbaa !75
  store i32 %46, ptr %74, align 4, !tbaa !77
  br label %75

75:                                               ; preds = %72, %75
  %76 = phi i64 [ 0, %72 ], [ %80, %75 ]
  %77 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %7, i64 0, i64 %76
  %78 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %76
  %79 = load ptr, ptr %78, align 8, !tbaa !72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %77, ptr noundef nonnull align 2 dereferenceable(44) %79, i64 44, i1 false)
  %80 = add nuw nsw i64 %76, 1
  %81 = icmp eq i64 %80, 3
  br i1 %81, label %82, label %75, !llvm.loop !79

82:                                               ; preds = %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %57, ptr noundef nonnull align 2 dereferenceable(16) %43, i64 16, i1 false)
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %14) #17
  tail call void @free(ptr noundef %34) #15
  br label %83

83:                                               ; preds = %82, %83
  %84 = phi i64 [ 0, %82 ], [ %87, %83 ]
  %85 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !72
  tail call void @free(ptr noundef %86) #15
  %87 = add nuw nsw i64 %84, 1
  %88 = icmp eq i64 %87, 3
  br i1 %88, label %89, label %83, !llvm.loop !80

89:                                               ; preds = %83
  %90 = zext i1 %61 to i32
  tail call void @free(ptr noundef %43) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i32 %90
}

; Function Attrs: optsize
declare void @CheckAvailabilityOfNeighbors(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_skip_flag_CABAC_p_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %8, i64 0, i32 41
  %12 = load i8, ptr %11, align 2, !tbaa !82
  %13 = icmp eq i8 %12, 0
  %14 = zext i1 %13 to i64
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi i64 [ %14, %10 ], [ 0, %3 ]
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.macroblock, ptr %18, i64 0, i32 41
  %22 = load i8, ptr %21, align 2, !tbaa !82
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i64
  br label %25

25:                                               ; preds = %15, %20
  %26 = phi i64 [ %24, %20 ], [ 0, %15 ]
  %27 = add nuw nsw i64 %26, %16
  %28 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 %27
  %29 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %28) #15
  %30 = icmp eq i32 %29, 1
  %31 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  br i1 %30, label %33, label %32

32:                                               ; preds = %25
  store i32 1, ptr %31, align 4
  br label %35

33:                                               ; preds = %25
  store i32 0, ptr %31, align 4
  %34 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 45
  store i32 0, ptr %34, align 4, !tbaa !56
  br label %35

35:                                               ; preds = %32, %33
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @check_next_mb_and_get_field_mode_CABAC_b_slice(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca [3 x ptr], align 16
  %5 = load ptr, ptr %0, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #14
  %6 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 58
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  %8 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 20
  %9 = load i32, ptr %8, align 4, !tbaa !66
  %10 = add i32 %9, 1
  store i32 %10, ptr %8, align 4, !tbaa !66
  %11 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 124
  %12 = load ptr, ptr %11, align 8, !tbaa !52
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13
  %15 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 1
  store ptr %5, ptr %15, align 8, !tbaa !35
  store ptr %0, ptr %14, align 8, !tbaa !51
  %16 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 22
  %17 = load i16, ptr %16, align 4, !tbaa !67
  %18 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 21
  store i16 %17, ptr %18, align 4, !tbaa !68
  %19 = zext i32 %9 to i64
  %20 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %19, i32 45
  %21 = load i32, ptr %20, align 8, !tbaa !60
  %22 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 45
  store i32 %21, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 3
  store i32 %10, ptr %23, align 8, !tbaa !69
  %24 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 25
  %25 = load i32, ptr %24, align 8, !tbaa !70
  %26 = icmp eq i32 %25, 0
  %27 = icmp eq i32 %21, 0
  %28 = select i1 %26, i1 true, i1 %27
  %29 = and i32 %9, 1
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i16 4, i16 2
  %32 = select i1 %28, i16 0, i16 %31
  %33 = getelementptr inbounds %struct.macroblock, ptr %12, i64 %13, i32 25
  store i16 %32, ptr %33, align 2, !tbaa !71
  tail call void @CheckAvailabilityOfNeighbors(ptr noundef nonnull %14) #15
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %14) #17
  %34 = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #16
  br label %35

35:                                               ; preds = %3, %35
  %36 = phi i64 [ 0, %3 ], [ %39, %35 ]
  %37 = tail call noalias dereferenceable_or_null(44) ptr @calloc(i64 noundef 11, i64 noundef 4) #16
  %38 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %36
  store ptr %37, ptr %38, align 8, !tbaa !72
  %39 = add nuw nsw i64 %36, 1
  %40 = icmp eq i64 %39, 3
  br i1 %40, label %41, label %35, !llvm.loop !84

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1
  %43 = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 4, i64 noundef 4) #16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %42, i64 32, i1 false)
  %44 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !75
  %46 = load i32, ptr %45, align 4, !tbaa !77
  %47 = getelementptr inbounds %struct.DecodingEnvironment, ptr %34, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !75
  store i32 %46, ptr %48, align 4, !tbaa !77
  br label %49

49:                                               ; preds = %41, %49
  %50 = phi i64 [ 0, %41 ], [ %54, %49 ]
  %51 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !72
  %53 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %7, i64 0, i64 %50
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %52, ptr noundef nonnull align 2 dereferenceable(44) %53, i64 44, i1 false)
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, 3
  br i1 %55, label %56, label %49, !llvm.loop !85

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.MotionInfoContexts, ptr %7, i64 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %43, ptr noundef nonnull align 2 dereferenceable(16) %57, i64 16, i1 false)
  %58 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 45
  store i32 0, ptr %58, align 4, !tbaa !56
  tail call void @read_skip_flag_CABAC_b_slice(ptr noundef nonnull %14, ptr noundef %1, ptr noundef nonnull %42) #17
  %59 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !63
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %64 = load i32, ptr %63, align 8, !tbaa !86
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, ptr %8, align 4, !tbaa !66
  %68 = add i32 %67, -1
  br label %76

69:                                               ; preds = %56, %62
  tail call void @readFieldModeInfo_CABAC(ptr noundef nonnull %14, ptr noundef nonnull %1, ptr noundef nonnull %42) #17
  %70 = load i32, ptr %59, align 4, !tbaa !63
  %71 = load ptr, ptr %11, align 8, !tbaa !52
  %72 = load i32, ptr %8, align 4, !tbaa !66
  %73 = add i32 %72, -1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.macroblock, ptr %71, i64 %74, i32 45
  store i32 %70, ptr %75, align 8, !tbaa !60
  br label %76

76:                                               ; preds = %66, %69
  %77 = phi i32 [ %68, %66 ], [ %73, %69 ]
  %78 = phi i32 [ 1, %66 ], [ 0, %69 ]
  store i32 %77, ptr %8, align 4, !tbaa !66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(32) %34, i64 32, i1 false)
  %79 = load ptr, ptr %44, align 8, !tbaa !75
  store i32 %46, ptr %79, align 4, !tbaa !77
  br label %80

80:                                               ; preds = %76, %80
  %81 = phi i64 [ 0, %76 ], [ %85, %80 ]
  %82 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %7, i64 0, i64 %81
  %83 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %81
  %84 = load ptr, ptr %83, align 8, !tbaa !72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(44) %82, ptr noundef nonnull align 2 dereferenceable(44) %84, i64 44, i1 false)
  %85 = add nuw nsw i64 %81, 1
  %86 = icmp eq i64 %85, 3
  br i1 %86, label %87, label %80, !llvm.loop !87

87:                                               ; preds = %80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %57, ptr noundef nonnull align 2 dereferenceable(16) %43, i64 16, i1 false)
  tail call void @CheckAvailabilityOfNeighborsCABAC(ptr noundef nonnull %14) #17
  tail call void @free(ptr noundef %34) #15
  br label %88

88:                                               ; preds = %87, %88
  %89 = phi i64 [ 0, %87 ], [ %92, %88 ]
  %90 = getelementptr inbounds [3 x ptr], ptr %4, i64 0, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !72
  tail call void @free(ptr noundef %91) #15
  %92 = add nuw nsw i64 %89, 1
  %93 = icmp eq i64 %92, 3
  br i1 %93, label %94, label %88, !llvm.loop !88

94:                                               ; preds = %88
  tail call void @free(ptr noundef %43) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #14
  ret i32 %78
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_skip_flag_CABAC_b_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %8 = load ptr, ptr %7, align 8, !tbaa !81
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %8, i64 0, i32 41
  %12 = load i8, ptr %11, align 2, !tbaa !82
  %13 = icmp eq i8 %12, 0
  %14 = select i1 %13, i64 8, i64 7
  br label %15

15:                                               ; preds = %3, %10
  %16 = phi i64 [ %14, %10 ], [ 7, %3 ]
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %18 = load ptr, ptr %17, align 8, !tbaa !83
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.macroblock, ptr %18, i64 0, i32 41
  %22 = load i8, ptr %21, align 2, !tbaa !82
  %23 = icmp eq i8 %22, 0
  %24 = zext i1 %23 to i64
  br label %25

25:                                               ; preds = %15, %20
  %26 = phi i64 [ %24, %20 ], [ 0, %15 ]
  %27 = add nuw nsw i64 %26, %16
  %28 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 %27
  %29 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %28) #15
  %30 = icmp eq i32 %29, 1
  %31 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %32 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  br i1 %30, label %34, label %33

33:                                               ; preds = %25
  store i32 1, ptr %31, align 8
  store i32 1, ptr %32, align 4
  br label %36

34:                                               ; preds = %25
  store i32 0, ptr %31, align 8
  store i32 0, ptr %32, align 4
  %35 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 45
  store i32 0, ptr %35, align 4, !tbaa !56
  br label %36

36:                                               ; preds = %33, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_MVD_CABAC(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !35
  %8 = load ptr, ptr %0, align 8, !tbaa !51
  %9 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !57
  %11 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %12 = load i32, ptr %11, align 4, !tbaa !89
  %13 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !86
  %17 = and i32 %16, 1
  %18 = ashr i32 %16, 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %19 = add nsw i32 %12, -1
  %20 = getelementptr inbounds %struct.video_par, ptr %7, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %19, i32 noundef %14, ptr noundef nonnull %20, ptr noundef nonnull %4) #15
  %21 = load i32, ptr %4, align 4, !tbaa !49
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %61, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 124
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !55
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
  %39 = sext i16 %38 to i32
  %40 = call fastcc i32 @iabs(i32 noundef %39) #17
  %41 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 25
  %42 = load i32, ptr %41, align 8, !tbaa !70
  %43 = icmp ne i32 %42, 0
  %44 = icmp eq i32 %18, 1
  %45 = select i1 %43, i1 %44, i1 false
  br i1 %45, label %46, label %61

46:                                               ; preds = %23
  %47 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %48 = load i32, ptr %47, align 8, !tbaa !60
  switch i32 %48, label %61 [
    i32 0, label %49
    i32 1, label %55
  ]

49:                                               ; preds = %46
  %50 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 45
  %51 = load i32, ptr %50, align 8, !tbaa !60
  %52 = icmp eq i32 %51, 1
  %53 = zext i1 %52 to i32
  %54 = shl nsw i32 %40, %53
  br label %61

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.macroblock, ptr %25, i64 %28, i32 45
  %57 = load i32, ptr %56, align 8, !tbaa !60
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = sdiv i32 %40, 2
  br label %61

61:                                               ; preds = %49, %46, %23, %55, %59, %3
  %62 = phi i32 [ %60, %59 ], [ %40, %55 ], [ %40, %23 ], [ 0, %3 ], [ %54, %49 ], [ %40, %46 ]
  %63 = add nsw i32 %14, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %12, i32 noundef %63, ptr noundef nonnull %20, ptr noundef nonnull %5) #15
  %64 = load i32, ptr %5, align 4, !tbaa !49
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %104, label %66

66:                                               ; preds = %61
  %67 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 124
  %68 = load ptr, ptr %67, align 8, !tbaa !52
  %69 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !55
  %71 = sext i32 %70 to i64
  %72 = zext nneg i32 %17 to i64
  %73 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %74 = load i16, ptr %73, align 2, !tbaa !91
  %75 = sext i16 %74 to i64
  %76 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %77 = load i16, ptr %76, align 4, !tbaa !92
  %78 = sext i16 %77 to i64
  %79 = sext i32 %18 to i64
  %80 = getelementptr inbounds %struct.macroblock, ptr %68, i64 %71, i32 31, i64 %72, i64 %75, i64 %78, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !93
  %82 = sext i16 %81 to i32
  %83 = call fastcc i32 @iabs(i32 noundef %82) #17
  %84 = getelementptr inbounds %struct.slice, ptr %8, i64 0, i32 25
  %85 = load i32, ptr %84, align 8, !tbaa !70
  %86 = icmp ne i32 %85, 0
  %87 = icmp eq i32 %18, 1
  %88 = select i1 %86, i1 %87, i1 false
  br i1 %88, label %89, label %104

89:                                               ; preds = %66
  %90 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %91 = load i32, ptr %90, align 8, !tbaa !60
  switch i32 %91, label %104 [
    i32 0, label %92
    i32 1, label %98
  ]

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.macroblock, ptr %68, i64 %71, i32 45
  %94 = load i32, ptr %93, align 8, !tbaa !60
  %95 = icmp eq i32 %94, 1
  %96 = zext i1 %95 to i32
  %97 = shl nsw i32 %83, %96
  br label %104

98:                                               ; preds = %89
  %99 = getelementptr inbounds %struct.macroblock, ptr %68, i64 %71, i32 45
  %100 = load i32, ptr %99, align 8, !tbaa !60
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = sdiv i32 %83, 2
  br label %104

104:                                              ; preds = %92, %89, %66, %98, %102, %61
  %105 = phi i32 [ %103, %102 ], [ %83, %98 ], [ %83, %66 ], [ 0, %61 ], [ %97, %92 ], [ %83, %89 ]
  %106 = add nsw i32 %105, %62
  %107 = icmp slt i32 %106, 3
  br i1 %107, label %108, label %110

108:                                              ; preds = %104
  %109 = mul nsw i32 %18, 5
  br label %117

110:                                              ; preds = %104
  %111 = icmp ugt i32 %106, 32
  %112 = mul nsw i32 %18, 5
  br i1 %111, label %113, label %115

113:                                              ; preds = %110
  %114 = add nsw i32 %112, 3
  br label %117

115:                                              ; preds = %110
  %116 = add nsw i32 %112, 2
  br label %117

117:                                              ; preds = %113, %115, %108
  %118 = phi i32 [ %109, %108 ], [ %114, %113 ], [ %116, %115 ]
  %119 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %118, ptr %119, align 8, !tbaa !94
  %120 = getelementptr inbounds %struct.MotionInfoContexts, ptr %10, i64 0, i32 2
  %121 = sext i32 %118 to i64
  %122 = getelementptr inbounds [10 x %struct.BiContextType], ptr %120, i64 0, i64 %121
  %123 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %122) #15
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %136, label %125

125:                                              ; preds = %117
  %126 = mul nsw i32 %18, 5
  %127 = getelementptr inbounds %struct.MotionInfoContexts, ptr %10, i64 0, i32 2, i64 1
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds %struct.BiContextType, ptr %127, i64 %128
  %130 = call fastcc i32 @unary_exp_golomb_mv_decode(ptr noundef %2, ptr noundef nonnull %129) #17
  %131 = add i32 %130, 1
  %132 = call i32 @biari_decode_symbol_eq_prob(ptr noundef %2) #15
  %133 = icmp eq i32 %132, 0
  %134 = xor i32 %130, -1
  %135 = select i1 %133, i32 %131, i32 %134
  br label %136

136:                                              ; preds = %125, %117
  %137 = phi i32 [ 0, %117 ], [ %135, %125 ]
  %138 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %137, ptr %138, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @get4x4NeighbourBase(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @iabs(i32 noundef %0) unnamed_addr #8 !PGOFuncName !95 {
  %2 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unary_exp_golomb_mv_decode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !96 {
  %3 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BiContextType, ptr %1, i64 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %19, %7 ]
  %9 = phi ptr [ %6, %5 ], [ %18, %7 ]
  %10 = phi i32 [ 1, %5 ], [ %12, %7 ]
  %11 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %9) #15
  %12 = add nuw nsw i32 %10, 1
  %13 = icmp eq i32 %12, 2
  %14 = zext i1 %13 to i64
  %15 = getelementptr inbounds %struct.BiContextType, ptr %9, i64 %14
  %16 = icmp eq i32 %12, 3
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds %struct.BiContextType, ptr %15, i64 %17
  %19 = add nuw nsw i32 %8, 1
  %20 = icmp ne i32 %11, 0
  %21 = icmp ne i32 %12, 8
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %7, label %23, !llvm.loop !97

23:                                               ; preds = %7
  br i1 %20, label %24, label %28

24:                                               ; preds = %23
  %25 = tail call fastcc i32 @exp_golomb_decode_eq_prob(ptr noundef %0, i32 noundef 3) #17
  %26 = add nuw i32 %8, 2
  %27 = add i32 %26, %25
  br label %28

28:                                               ; preds = %23, %24, %2
  %29 = phi i32 [ 0, %2 ], [ %27, %24 ], [ %19, %23 ]
  ret i32 %29
}

; Function Attrs: optsize
declare i32 @biari_decode_symbol_eq_prob(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @exp_golomb_decode_eq_prob(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !PGOFuncName !98 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i32 [ %1, %2 ], [ %10, %3 ]
  %5 = phi i32 [ 0, %2 ], [ %12, %3 ]
  %6 = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %0) #15
  %7 = icmp eq i32 %6, 1
  %8 = shl nuw i32 1, %4
  %9 = zext i1 %7 to i32
  %10 = add nsw i32 %4, %9
  %11 = select i1 %7, i32 %8, i32 0
  %12 = add nsw i32 %11, %5
  %13 = icmp eq i32 %6, 0
  br i1 %13, label %14, label %3, !llvm.loop !99

14:                                               ; preds = %3
  %15 = icmp eq i32 %10, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %14, %16
  %17 = phi i32 [ %24, %16 ], [ 0, %14 ]
  %18 = phi i32 [ %19, %16 ], [ %10, %14 ]
  %19 = add nsw i32 %18, -1
  %20 = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %0) #15
  %21 = icmp eq i32 %20, 1
  %22 = shl nuw i32 1, %19
  %23 = select i1 %21, i32 %22, i32 0
  %24 = or i32 %23, %17
  %25 = icmp eq i32 %19, 0
  br i1 %25, label %26, label %16, !llvm.loop !100

26:                                               ; preds = %16, %14
  %27 = phi i32 [ 0, %14 ], [ %24, %16 ]
  %28 = add nsw i32 %27, %12
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readB8_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 0, i64 1
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 0, i64 3
  %12 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 0, i64 4
  %16 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %15) #15
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 3, i32 2
  br label %19

19:                                               ; preds = %10, %14, %3
  %20 = phi i32 [ 0, %3 ], [ %18, %14 ], [ 1, %10 ]
  %21 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %20, ptr %21, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readB8_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %46, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 1
  %12 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 2
  %16 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 3
  %17 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %15) #15
  %18 = icmp eq i32 %17, 0
  %19 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #15
  %20 = icmp eq i32 %19, 0
  br i1 %18, label %32, label %21

21:                                               ; preds = %14
  %22 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #15
  %23 = icmp eq i32 %22, 0
  br i1 %20, label %26, label %24

24:                                               ; preds = %21
  %25 = select i1 %23, i32 10, i32 11
  br label %43

26:                                               ; preds = %21
  %27 = select i1 %23, i32 6, i32 8
  %28 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #15
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = or disjoint i32 %27, %30
  br label %43

32:                                               ; preds = %14
  %33 = select i1 %20, i32 2, i32 4
  %34 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %16) #15
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = or disjoint i32 %33, %36
  br label %43

38:                                               ; preds = %10
  %39 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 1, i64 1, i64 3
  %40 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %39) #15
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
  store i32 %47, ptr %48, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readMB_transform_size_flag_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %8 = load ptr, ptr %7, align 8, !tbaa !83
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.macroblock, ptr %8, i64 0, i32 54
  %12 = load i32, ptr %11, align 4, !tbaa !102
  br label %13

13:                                               ; preds = %3, %10
  %14 = phi i32 [ %12, %10 ], [ 0, %3 ]
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %16 = load ptr, ptr %15, align 8, !tbaa !81
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.macroblock, ptr %16, i64 0, i32 54
  %20 = load i32, ptr %19, align 4, !tbaa !102
  br label %21

21:                                               ; preds = %13, %18
  %22 = phi i32 [ %20, %18 ], [ 0, %13 ]
  %23 = add nsw i32 %22, %14
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %24
  %26 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %25) #15
  %27 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %26, ptr %27, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readMB_typeInfo_CABAC_i_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 33
  %8 = load i32, ptr %7, align 4, !tbaa !103
  switch i32 %8, label %133 [
    i32 2, label %9
    i32 4, label %55
  ]

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.macroblock, ptr %11, i64 0, i32 30
  %15 = load i16, ptr %14, align 8, !tbaa !104
  %16 = and i16 %15, -5
  %17 = icmp ne i16 %16, 9
  %18 = zext i1 %17 to i32
  br label %19

19:                                               ; preds = %13, %9
  %20 = phi i32 [ %18, %13 ], [ 0, %9 ]
  %21 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %22 = load ptr, ptr %21, align 8, !tbaa !81
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.macroblock, ptr %22, i64 0, i32 30
  %26 = load i16, ptr %25, align 8, !tbaa !104
  %27 = and i16 %26, -5
  %28 = icmp ne i16 %27, 9
  %29 = zext i1 %28 to i32
  br label %30

30:                                               ; preds = %24, %19
  %31 = phi i32 [ %29, %24 ], [ 0, %19 ]
  %32 = add nuw nsw i32 %31, %20
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %33
  %35 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %34) #15
  %36 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %32, ptr %36, align 8, !tbaa !94
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %133, label %38

38:                                               ; preds = %30
  %39 = tail call i32 @biari_decode_final(ptr noundef %2) #15
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %133, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 4
  %43 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %42) #15
  %44 = mul nsw i32 %43, 12
  %45 = or disjoint i32 %44, 1
  %46 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 5
  %47 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %46) #15
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %124, label %49

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 6
  %51 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %50) #15
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 5, i32 9
  %54 = add i32 %53, %44
  br label %124

55:                                               ; preds = %3
  %56 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %57 = load ptr, ptr %56, align 8, !tbaa !83
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.macroblock, ptr %57, i64 0, i32 30
  %61 = load i16, ptr %60, align 8, !tbaa !104
  %62 = icmp ne i16 %61, 12
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %59, %55
  %65 = phi i32 [ %63, %59 ], [ 0, %55 ]
  %66 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %67 = load ptr, ptr %66, align 8, !tbaa !81
  %68 = icmp eq ptr %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.macroblock, ptr %67, i64 0, i32 30
  %71 = load i16, ptr %70, align 8, !tbaa !104
  %72 = icmp ne i16 %71, 12
  %73 = zext i1 %72 to i32
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi i32 [ %73, %69 ], [ 0, %64 ]
  %76 = add nuw nsw i32 %75, %65
  %77 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1
  %78 = zext nneg i32 %76 to i64
  %79 = getelementptr inbounds %struct.BiContextType, ptr %77, i64 %78
  %80 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %79) #15
  %81 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  store i32 %76, ptr %81, align 8, !tbaa !94
  %82 = icmp eq i32 %80, 0
  br i1 %82, label %133, label %83

83:                                               ; preds = %74
  %84 = load ptr, ptr %56, align 8, !tbaa !83
  %85 = icmp eq ptr %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %83
  %87 = getelementptr inbounds %struct.macroblock, ptr %84, i64 0, i32 30
  %88 = load i16, ptr %87, align 8, !tbaa !104
  %89 = icmp ne i16 %88, 9
  %90 = zext i1 %89 to i32
  br label %91

91:                                               ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %65, %83 ]
  %93 = load ptr, ptr %66, align 8, !tbaa !81
  %94 = icmp eq ptr %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.macroblock, ptr %93, i64 0, i32 30
  %97 = load i16, ptr %96, align 8, !tbaa !104
  %98 = icmp ne i16 %97, 9
  %99 = zext i1 %98 to i32
  br label %100

100:                                              ; preds = %95, %91
  %101 = phi i32 [ %99, %95 ], [ %75, %91 ]
  %102 = add nuw nsw i32 %101, %92
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 %103
  %105 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %104) #15
  store i32 %102, ptr %81, align 8, !tbaa !94
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %100
  %108 = tail call i32 @biari_decode_final(ptr noundef %2) #15
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %133, label %110

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 4
  %112 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %111) #15
  %113 = mul nsw i32 %112, 12
  %114 = or disjoint i32 %113, 2
  %115 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 5
  %116 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %115) #15
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 6
  %120 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %119) #15
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, i32 6, i32 10
  %123 = add i32 %122, %113
  br label %124

124:                                              ; preds = %110, %118, %41, %49
  %125 = phi i32 [ %45, %41 ], [ %54, %49 ], [ %114, %110 ], [ %123, %118 ]
  %126 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 7
  %127 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %126) #15
  %128 = shl nsw i32 %127, 1
  %129 = add nsw i32 %128, %125
  %130 = getelementptr inbounds %struct.BiContextType, ptr %6, i64 8
  %131 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %130) #15
  %132 = add nsw i32 %129, %131
  br label %133

133:                                              ; preds = %124, %107, %100, %74, %3, %38, %30
  %134 = phi i32 [ 0, %30 ], [ 25, %38 ], [ 0, %3 ], [ 0, %74 ], [ 1, %100 ], [ 26, %107 ], [ %132, %124 ]
  %135 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %134, ptr %135, align 4, !tbaa !63
  ret void
}

; Function Attrs: optsize
declare i32 @biari_decode_final(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readMB_typeInfo_CABAC_p_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 4
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #15
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %3
  %11 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 5
  %12 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %11) #15
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 7
  %16 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %15) #15
  %17 = icmp eq i32 %16, 0
  %18 = select i1 %17, i32 3, i32 2
  br label %52

19:                                               ; preds = %10
  %20 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 6
  %21 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %20) #15
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, i32 1, i32 4
  br label %52

24:                                               ; preds = %3
  %25 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 7
  %26 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %25) #15
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %52, label %28

28:                                               ; preds = %24
  %29 = tail call i32 @biari_decode_final(ptr noundef %2) #15
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %52, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 8
  %33 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %32) #15
  %34 = mul nsw i32 %33, 12
  %35 = add nsw i32 %34, 7
  %36 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 9
  %37 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %36) #15
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %31
  %40 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %36) #15
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 11, i32 15
  %43 = add nsw i32 %42, %34
  br label %44

44:                                               ; preds = %39, %31
  %45 = phi i32 [ %35, %31 ], [ %43, %39 ]
  %46 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 10
  %47 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %46) #15
  %48 = shl nsw i32 %47, 1
  %49 = add nsw i32 %48, %45
  %50 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %46) #15
  %51 = add nsw i32 %49, %50
  br label %52

52:                                               ; preds = %19, %14, %28, %24, %44
  %53 = phi i32 [ %51, %44 ], [ 6, %24 ], [ 31, %28 ], [ %23, %19 ], [ %18, %14 ]
  %54 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %53, ptr %54, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readMB_typeInfo_CABAC_b_slice(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 30
  %13 = load i16, ptr %12, align 8, !tbaa !104
  %14 = icmp ne i16 %13, 0
  %15 = zext i1 %14 to i64
  br label %16

16:                                               ; preds = %11, %3
  %17 = phi i64 [ %15, %11 ], [ 0, %3 ]
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.macroblock, ptr %19, i64 0, i32 30
  %23 = load i16, ptr %22, align 8, !tbaa !104
  %24 = icmp ne i16 %23, 0
  %25 = zext i1 %24 to i64
  br label %26

26:                                               ; preds = %21, %16
  %27 = phi i64 [ %25, %21 ], [ 0, %16 ]
  %28 = getelementptr %struct.BiContextType, ptr %7, i64 %27
  %29 = getelementptr %struct.BiContextType, ptr %28, i64 %17
  %30 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef %29) #15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %98, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 4
  %34 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %33) #15
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %61, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 5
  %38 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %37) #15
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 6
  %41 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #15
  %42 = icmp eq i32 %41, 0
  %43 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #15
  %44 = icmp eq i32 %43, 0
  %45 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #15
  br i1 %39, label %54, label %46

46:                                               ; preds = %36
  %47 = select i1 %42, i32 12, i32 20
  %48 = add nuw nsw i32 %47, 4
  %49 = select i1 %44, i32 %47, i32 %48
  %50 = icmp eq i32 %45, 0
  %51 = or disjoint i32 %49, 2
  %52 = select i1 %50, i32 %49, i32 %51
  switch i32 %52, label %66 [
    i32 24, label %98
    i32 26, label %53
  ]

53:                                               ; preds = %46
  br label %98

54:                                               ; preds = %36
  %55 = select i1 %42, i32 3, i32 7
  %56 = add nuw nsw i32 %55, 2
  %57 = select i1 %44, i32 %55, i32 %56
  %58 = icmp ne i32 %45, 0
  %59 = zext i1 %58 to i32
  %60 = add nuw nsw i32 %57, %59
  br label %98

61:                                               ; preds = %32
  %62 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 2, i64 6
  %63 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %62) #15
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %64, i32 1, i32 2
  br label %98

66:                                               ; preds = %46
  %67 = icmp eq i32 %52, 22
  %68 = select i1 %67, i32 23, i32 %52
  %69 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %40) #15
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = add nuw nsw i32 %68, %71
  %73 = icmp ult i32 %72, 24
  br i1 %73, label %98, label %74

74:                                               ; preds = %66
  %75 = tail call i32 @biari_decode_final(ptr noundef %2) #15
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %98, label %77

77:                                               ; preds = %74
  %78 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 8
  %79 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %78) #15
  %80 = mul nsw i32 %79, 12
  %81 = add nsw i32 %80, %72
  %82 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 9
  %83 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %82) #15
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %82) #15
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 4, i32 8
  %89 = add nsw i32 %88, %81
  br label %90

90:                                               ; preds = %85, %77
  %91 = phi i32 [ %81, %77 ], [ %89, %85 ]
  %92 = getelementptr inbounds [3 x [11 x %struct.BiContextType]], ptr %6, i64 0, i64 1, i64 10
  %93 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %92) #15
  %94 = shl nsw i32 %93, 1
  %95 = add nsw i32 %94, %91
  %96 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %92) #15
  %97 = add nsw i32 %95, %96
  br label %98

98:                                               ; preds = %54, %26, %61, %46, %53, %74, %66, %90
  %99 = phi i32 [ %97, %90 ], [ %72, %66 ], [ 48, %74 ], [ %60, %54 ], [ 0, %26 ], [ %65, %61 ], [ 11, %46 ], [ 22, %53 ]
  %100 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %99, ptr %100, align 4, !tbaa !63
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readIntraPredMode_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 1
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %7) #15
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 -1, ptr %11, align 4, !tbaa !63
  br label %24

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 1, i64 1
  %14 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #15
  %15 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !63
  %16 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #15
  %17 = shl i32 %16, 1
  %18 = load i32, ptr %15, align 4, !tbaa !63
  %19 = or i32 %18, %17
  store i32 %19, ptr %15, align 4, !tbaa !63
  %20 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #15
  %21 = shl i32 %20, 2
  %22 = load i32, ptr %15, align 4, !tbaa !63
  %23 = or i32 %22, %21
  store i32 %23, ptr %15, align 4, !tbaa !63
  br label %24

24:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readRefFrame_CABAC(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 58
  %12 = load ptr, ptr %11, align 8, !tbaa !57
  %13 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %14 = load i32, ptr %13, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %15 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %16 = load i32, ptr %15, align 4, !tbaa !89
  %17 = add nsw i32 %16, -1
  %18 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %19 = load i32, ptr %18, align 8, !tbaa !90
  %20 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %17, i32 noundef %19, ptr noundef nonnull %20, ptr noundef nonnull %4) #15
  %21 = load i32, ptr %15, align 4, !tbaa !89
  %22 = load i32, ptr %18, align 8, !tbaa !90
  %23 = add nsw i32 %22, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %23, ptr noundef nonnull %20, ptr noundef nonnull %5) #15
  %24 = load i32, ptr %5, align 4, !tbaa !49
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
  %36 = load ptr, ptr %35, align 8, !tbaa !52
  %37 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !55
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 30
  %41 = load i16, ptr %40, align 8, !tbaa !104
  switch i16 %41, label %46 [
    i16 14, label %85
    i16 0, label %42
  ]

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %44 = load i32, ptr %43, align 4, !tbaa !103
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %85, label %46

46:                                               ; preds = %26, %42
  %47 = zext nneg i16 %34 to i64
  %48 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 37, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !106
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 38, i64 %47
  %53 = load i8, ptr %52, align 1, !tbaa !106
  %54 = icmp eq i8 %53, 2
  br i1 %54, label %85, label %55

55:                                               ; preds = %51, %46
  %56 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 25
  %57 = load i32, ptr %56, align 8, !tbaa !70
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %61 = load i32, ptr %60, align 8, !tbaa !60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.macroblock, ptr %36, i64 %39, i32 45
  %65 = load i32, ptr %64, align 8, !tbaa !60
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %68, label %67

67:                                               ; preds = %63, %59, %55
  br label %68

68:                                               ; preds = %63, %67
  %69 = phi i8 [ 0, %67 ], [ 1, %63 ]
  %70 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 35
  %71 = load ptr, ptr %70, align 8, !tbaa !107
  %72 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 5
  %73 = load i16, ptr %72, align 2, !tbaa !110
  %74 = sext i16 %73 to i64
  %75 = getelementptr inbounds ptr, ptr %71, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !72
  %77 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 4
  %78 = load i16, ptr %77, align 4, !tbaa !111
  %79 = sext i16 %78 to i64
  %80 = sext i32 %14 to i64
  %81 = getelementptr inbounds %struct.pic_motion_params, ptr %76, i64 %79, i32 2, i64 %80
  %82 = load i8, ptr %81, align 1, !tbaa !106
  %83 = icmp sgt i8 %82, %69
  %84 = select i1 %83, i32 2, i32 0
  br label %85

85:                                               ; preds = %68, %42, %51, %26, %3
  %86 = phi i32 [ 0, %3 ], [ 0, %26 ], [ 0, %42 ], [ 0, %51 ], [ %84, %68 ]
  %87 = load i32, ptr %4, align 4, !tbaa !49
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
  %99 = load ptr, ptr %98, align 8, !tbaa !52
  %100 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !55
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 30
  %104 = load i16, ptr %103, align 8, !tbaa !104
  switch i16 %104, label %109 [
    i16 14, label %148
    i16 0, label %105
  ]

105:                                              ; preds = %89
  %106 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 33
  %107 = load i32, ptr %106, align 4, !tbaa !103
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %148, label %109

109:                                              ; preds = %89, %105
  %110 = zext nneg i16 %97 to i64
  %111 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 37, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !106
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 38, i64 %110
  %116 = load i8, ptr %115, align 1, !tbaa !106
  %117 = icmp eq i8 %116, 2
  br i1 %117, label %148, label %118

118:                                              ; preds = %114, %109
  %119 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 25
  %120 = load i32, ptr %119, align 8, !tbaa !70
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %130, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %124 = load i32, ptr %123, align 8, !tbaa !60
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.macroblock, ptr %99, i64 %102, i32 45
  %128 = load i32, ptr %127, align 8, !tbaa !60
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %131, label %130

130:                                              ; preds = %126, %122, %118
  br label %131

131:                                              ; preds = %126, %130
  %132 = phi i8 [ 0, %130 ], [ 1, %126 ]
  %133 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 35
  %134 = load ptr, ptr %133, align 8, !tbaa !107
  %135 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 5
  %136 = load i16, ptr %135, align 2, !tbaa !110
  %137 = sext i16 %136 to i64
  %138 = getelementptr inbounds ptr, ptr %134, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !72
  %140 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 4
  %141 = load i16, ptr %140, align 4, !tbaa !111
  %142 = sext i16 %141 to i64
  %143 = sext i32 %14 to i64
  %144 = getelementptr inbounds %struct.pic_motion_params, ptr %139, i64 %142, i32 2, i64 %143
  %145 = load i8, ptr %144, align 1, !tbaa !106
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
  %155 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %154) #15
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.MotionInfoContexts, ptr %12, i64 0, i32 3, i64 0, i64 4
  %159 = call fastcc i32 @unary_bin_decode(ptr noundef %2, ptr noundef nonnull %158) #17
  %160 = add nsw i32 %159, 1
  br label %161

161:                                              ; preds = %157, %148
  %162 = phi i32 [ %160, %157 ], [ 0, %148 ]
  %163 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %162, ptr %163, align 4, !tbaa !63
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: optsize
declare void @get4x4Neighbour(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unary_bin_decode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !112 {
  %3 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.BiContextType, ptr %1, i64 1
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %10, %7 ]
  %9 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef nonnull %6) #15
  %10 = add i32 %8, 1
  %11 = icmp eq i32 %9, 0
  br i1 %11, label %12, label %7, !llvm.loop !113

12:                                               ; preds = %7, %2
  %13 = phi i32 [ 0, %2 ], [ %10, %7 ]
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_dQuant_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 58
  %6 = load ptr, ptr %5, align 8, !tbaa !57
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 45
  %9 = load i32, ptr %8, align 4, !tbaa !56
  %10 = icmp ne i32 %9, 0
  %11 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 4
  %12 = zext i1 %10 to i64
  %13 = getelementptr inbounds %struct.BiContextType, ptr %11, i64 %12
  %14 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %13) #15
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.MotionInfoContexts, ptr %6, i64 0, i32 4, i64 2
  %18 = tail call fastcc i32 @unary_bin_decode(ptr noundef %2, ptr noundef nonnull %17) #17
  %19 = add nsw i32 %18, 2
  %20 = ashr i32 %19, 1
  store i32 %20, ptr %7, align 4, !tbaa !77
  %21 = and i32 %18, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = sub nsw i32 0, %20
  br label %25

25:                                               ; preds = %3, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %3 ]
  store i32 %26, ptr %7, align 4, !tbaa !77
  br label %27

27:                                               ; preds = %25, %16
  %28 = phi i32 [ %20, %16 ], [ %26, %25 ]
  store i32 %28, ptr %8, align 4, !tbaa !56
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @read_CBP_CABAC(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = load ptr, ptr %0, align 8, !tbaa !51
  %8 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 125
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 59
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  %12 = getelementptr inbounds %struct.video_par, ptr %6, i64 0, i32 81
  %13 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 124
  %14 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %15 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %16 = getelementptr inbounds %struct.TextureInfoContexts, ptr %11, i64 0, i32 3
  %17 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  br label %18

18:                                               ; preds = %3, %91
  %19 = phi ptr [ null, %3 ], [ %28, %91 ]
  %20 = phi i32 [ 0, %3 ], [ %90, %91 ]
  %21 = phi i32 [ 0, %3 ], [ %54, %91 ]
  %22 = phi i1 [ true, %3 ], [ false, %91 ]
  %23 = phi i32 [ 0, %3 ], [ 2, %91 ]
  br i1 %22, label %24, label %26

24:                                               ; preds = %18
  %25 = load ptr, ptr %17, align 8, !tbaa !83
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi i32 [ 0, %24 ], [ %21, %18 ]
  %28 = phi ptr [ %25, %24 ], [ %19, %18 ]
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct.macroblock, ptr %28, i64 0, i32 30
  %31 = getelementptr inbounds %struct.macroblock, ptr %28, i64 0, i32 32
  %32 = shl nuw nsw i32 %23, 2
  br label %33

33:                                               ; preds = %26, %80
  %34 = phi i32 [ %20, %26 ], [ %90, %80 ]
  %35 = phi i32 [ %27, %26 ], [ %54, %80 ]
  %36 = phi i1 [ true, %26 ], [ false, %80 ]
  %37 = phi i32 [ 0, %26 ], [ 1, %80 ]
  br i1 %22, label %38, label %48

38:                                               ; preds = %33
  br i1 %29, label %53, label %39

39:                                               ; preds = %38
  %40 = load i16, ptr %30, align 8, !tbaa !104
  %41 = icmp eq i16 %40, 14
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load i32, ptr %31, align 4, !tbaa !114
  %44 = shl nuw nsw i32 4, %37
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  %47 = select i1 %46, i32 2, i32 0
  br label %53

48:                                               ; preds = %33
  %49 = shl nuw nsw i32 1, %37
  %50 = and i32 %34, %49
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 2, i32 0
  br label %53

53:                                               ; preds = %38, %42, %39, %48
  %54 = phi i32 [ %47, %42 ], [ %35, %39 ], [ %35, %38 ], [ %52, %48 ]
  br i1 %36, label %55, label %76

55:                                               ; preds = %53
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef -1, i32 noundef %32, ptr noundef nonnull %12, ptr noundef nonnull %4) #15
  %56 = load i32, ptr %4, align 4, !tbaa !49
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %80, label %58

58:                                               ; preds = %55
  %59 = load ptr, ptr %13, align 8, !tbaa !52
  %60 = load i32, ptr %14, align 4, !tbaa !55
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.macroblock, ptr %59, i64 %61, i32 30
  %63 = load i16, ptr %62, align 8, !tbaa !104
  %64 = icmp eq i16 %63, 14
  br i1 %64, label %80, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.macroblock, ptr %59, i64 %61, i32 32
  %67 = load i32, ptr %66, align 4, !tbaa !114
  %68 = load i16, ptr %15, align 2, !tbaa !91
  %69 = sdiv i16 %68, 2
  %70 = sext i16 %69 to i32
  %71 = shl nsw i32 %70, 1
  %72 = or disjoint i32 %71, 1
  %73 = xor i32 %67, -1
  %74 = lshr i32 %73, %72
  %75 = and i32 %74, 1
  br label %80

76:                                               ; preds = %53
  %77 = xor i32 %34, -1
  %78 = lshr i32 %77, %23
  %79 = and i32 %78, 1
  br label %80

80:                                               ; preds = %55, %58, %65, %76
  %81 = phi i32 [ %75, %65 ], [ %79, %76 ], [ 0, %58 ], [ 0, %55 ]
  %82 = add nuw nsw i32 %81, %54
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds %struct.BiContextType, ptr %16, i64 %83
  %85 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %84) #15
  %86 = icmp eq i32 %85, 0
  %87 = or disjoint i32 %37, %23
  %88 = shl nuw nsw i32 1, %87
  %89 = select i1 %86, i32 0, i32 %88
  %90 = add nsw i32 %89, %34
  br i1 %36, label %33, label %91, !llvm.loop !115

91:                                               ; preds = %80
  br i1 %22, label %18, label %92, !llvm.loop !116

92:                                               ; preds = %91
  %93 = getelementptr inbounds %struct.storable_picture, ptr %9, i64 0, i32 48
  %94 = load i32, ptr %93, align 4, !tbaa !117
  switch i32 %94, label %95 [
    i32 0, label %164
    i32 3, label %164
  ]

95:                                               ; preds = %92
  %96 = load ptr, ptr %17, align 8, !tbaa !83
  %97 = icmp eq ptr %96, null
  br i1 %97, label %107, label %98

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.macroblock, ptr %96, i64 0, i32 30
  %100 = load i16, ptr %99, align 8, !tbaa !104
  %101 = icmp eq i16 %100, 14
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.macroblock, ptr %96, i64 0, i32 32
  %104 = load i32, ptr %103, align 4, !tbaa !114
  %105 = icmp sgt i32 %104, 15
  br i1 %105, label %106, label %107

106:                                              ; preds = %102, %98
  br label %107

107:                                              ; preds = %102, %106, %95
  %108 = phi i64 [ 2, %106 ], [ 0, %102 ], [ 0, %95 ]
  %109 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %110 = load ptr, ptr %109, align 8, !tbaa !81
  %111 = icmp eq ptr %110, null
  br i1 %111, label %121, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.macroblock, ptr %110, i64 0, i32 30
  %114 = load i16, ptr %113, align 8, !tbaa !104
  %115 = icmp eq i16 %114, 14
  br i1 %115, label %120, label %116

116:                                              ; preds = %112
  %117 = getelementptr inbounds %struct.macroblock, ptr %110, i64 0, i32 32
  %118 = load i32, ptr %117, align 4, !tbaa !114
  %119 = icmp sgt i32 %118, 15
  br i1 %119, label %120, label %121

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %116, %120, %107
  %122 = phi i64 [ 1, %120 ], [ 0, %116 ], [ 0, %107 ]
  %123 = or disjoint i64 %122, %108
  %124 = getelementptr inbounds %struct.TextureInfoContexts, ptr %11, i64 0, i32 3, i64 1
  %125 = getelementptr inbounds %struct.BiContextType, ptr %124, i64 %123
  %126 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %125) #15
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %164, label %128

128:                                              ; preds = %121
  %129 = load ptr, ptr %17, align 8, !tbaa !83
  %130 = icmp eq ptr %129, null
  br i1 %130, label %141, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.macroblock, ptr %129, i64 0, i32 30
  %133 = load i16, ptr %132, align 8, !tbaa !104
  %134 = icmp eq i16 %133, 14
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.macroblock, ptr %129, i64 0, i32 32
  %137 = load i32, ptr %136, align 4, !tbaa !114
  %138 = and i32 %137, -16
  %139 = icmp eq i32 %138, 32
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %131
  br label %141

141:                                              ; preds = %135, %140, %128
  %142 = phi i64 [ 2, %140 ], [ 0, %135 ], [ 0, %128 ]
  %143 = load ptr, ptr %109, align 8, !tbaa !81
  %144 = icmp eq ptr %143, null
  br i1 %144, label %155, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.macroblock, ptr %143, i64 0, i32 30
  %147 = load i16, ptr %146, align 8, !tbaa !104
  %148 = icmp eq i16 %147, 14
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.macroblock, ptr %143, i64 0, i32 32
  %151 = load i32, ptr %150, align 4, !tbaa !114
  %152 = and i32 %151, -16
  %153 = icmp eq i32 %152, 32
  br i1 %153, label %154, label %155

154:                                              ; preds = %149, %145
  br label %155

155:                                              ; preds = %149, %154, %141
  %156 = phi i64 [ 1, %154 ], [ 0, %149 ], [ 0, %141 ]
  %157 = or disjoint i64 %156, %142
  %158 = getelementptr inbounds %struct.TextureInfoContexts, ptr %11, i64 0, i32 3, i64 2
  %159 = getelementptr inbounds %struct.BiContextType, ptr %158, i64 %157
  %160 = call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %159) #15
  %161 = icmp eq i32 %160, 1
  %162 = select i1 %161, i32 32, i32 16
  %163 = add nsw i32 %162, %90
  br label %164

164:                                              ; preds = %92, %92, %121, %155
  %165 = phi i32 [ %163, %155 ], [ %90, %121 ], [ %90, %92 ], [ %90, %92 ]
  %166 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %165, ptr %166, align 4, !tbaa !63
  %167 = icmp eq i32 %165, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.slice, ptr %7, i64 0, i32 45
  store i32 0, ptr %169, align 4, !tbaa !56
  br label %170

170:                                              ; preds = %168, %164
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readCIPredMode_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %6 = load ptr, ptr %5, align 8, !tbaa !101
  %7 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  %8 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 26
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 27
  %11 = load ptr, ptr %10, align 8, !tbaa !81
  %12 = icmp eq ptr %9, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 40
  %15 = load i8, ptr %14, align 1, !tbaa !118
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.macroblock, ptr %9, i64 0, i32 30
  %19 = load i16, ptr %18, align 8, !tbaa !104
  %20 = icmp ne i16 %19, 14
  %21 = zext i1 %20 to i64
  br label %22

22:                                               ; preds = %13, %17, %3
  %23 = phi i64 [ 0, %3 ], [ 0, %13 ], [ %21, %17 ]
  %24 = icmp eq ptr %11, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.macroblock, ptr %11, i64 0, i32 40
  %27 = load i8, ptr %26, align 1, !tbaa !118
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.macroblock, ptr %11, i64 0, i32 30
  %31 = load i16, ptr %30, align 8, !tbaa !104
  %32 = icmp ne i16 %31, 14
  %33 = zext i1 %32 to i64
  br label %34

34:                                               ; preds = %25, %29, %22
  %35 = phi i64 [ 0, %22 ], [ 0, %25 ], [ %33, %29 ]
  %36 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 2
  %37 = getelementptr %struct.BiContextType, ptr %36, i64 %35
  %38 = getelementptr %struct.BiContextType, ptr %37, i64 %23
  %39 = tail call i32 @biari_decode_symbol(ptr noundef %2, ptr noundef nonnull %38) #15
  store i32 %39, ptr %7, align 4, !tbaa !77
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.TextureInfoContexts, ptr %6, i64 0, i32 2, i64 3
  %43 = tail call fastcc i32 @unary_bin_max_decode(ptr noundef %2, ptr noundef nonnull %42) #17
  %44 = add i32 %43, 1
  store i32 %44, ptr %7, align 4, !tbaa !77
  br label %45

45:                                               ; preds = %41, %34
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unary_bin_max_decode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !119 {
  %3 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %1) #15
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 1, i32 2
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %2 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @set_read_and_store_CBP(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq i32 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !72
  %5 = getelementptr inbounds %struct.macroblock, ptr %4, i64 0, i32 59
  %6 = select i1 %3, ptr @read_and_store_CBP_block_bit_444, ptr @read_and_store_CBP_block_bit_normal
  store ptr %6, ptr %5, align 8, !tbaa !120
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @read_and_store_CBP_block_bit_444(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !PGOFuncName !121 {
  %4 = alloca %struct.pix_pos, align 4
  %5 = alloca %struct.pix_pos, align 4
  %6 = load ptr, ptr %0, align 8, !tbaa !51
  %7 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !35
  %9 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 125
  %10 = load ptr, ptr %9, align 8, !tbaa !105
  %11 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 59
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = getelementptr inbounds %struct.slice, ptr %6, i64 0, i32 124
  %14 = load ptr, ptr %13, align 8, !tbaa !52
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
  switch i32 %2, label %40 [
    i32 7, label %30
    i32 8, label %35
    i32 6, label %35
    i32 9, label %35
  ]

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %32 = load i32, ptr %31, align 4, !tbaa !122
  %33 = icmp eq i32 %32, 0
  %34 = icmp ne i32 %32, 0
  br label %40

35:                                               ; preds = %3, %3, %3
  %36 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %37 = load i32, ptr %36, align 4, !tbaa !122
  %38 = icmp eq i32 %37, 0
  %39 = icmp ne i32 %37, 0
  br label %40

40:                                               ; preds = %3, %30, %35
  %41 = phi i1 [ %38, %35 ], [ false, %30 ], [ false, %3 ]
  %42 = phi i1 [ false, %35 ], [ %34, %30 ], [ false, %3 ]
  %43 = phi i1 [ false, %35 ], [ %33, %30 ], [ false, %3 ]
  %44 = phi i1 [ %39, %35 ], [ false, %30 ], [ false, %3 ]
  %45 = select i1 %23, i1 true, i1 %43
  %46 = select i1 %45, i1 true, i1 %42
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %49 = load i32, ptr %48, align 8, !tbaa !90
  %50 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %51 = load i32, ptr %50, align 4, !tbaa !89
  br label %52

52:                                               ; preds = %40, %47
  %53 = phi i32 [ %49, %47 ], [ 0, %40 ]
  %54 = phi i32 [ %51, %47 ], [ 0, %40 ]
  %55 = or i1 %23, %29
  %56 = xor i1 %29, true
  %57 = zext i1 %56 to i32
  %58 = select i1 %43, i32 19, i32 35
  %59 = select i1 %44, i32 18, i32 %58
  %60 = select i1 %41, i32 17, i32 %59
  %61 = select i1 %55, i32 %57, i32 %60
  %62 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %63 = load i32, ptr %62, align 8, !tbaa !123
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  br i1 %23, label %66, label %92

66:                                               ; preds = %52
  %67 = add nsw i32 %54, -1
  %68 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %67, i32 noundef %53, ptr noundef nonnull %68, ptr noundef nonnull %4) #15
  %69 = add nsw i32 %53, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %69, ptr noundef nonnull %68, ptr noundef nonnull %5) #15
  %70 = load i32, ptr %4, align 4, !tbaa !49
  %71 = icmp eq i32 %70, 0
  %72 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %73 = load i16, ptr %72, align 2
  %74 = sext i16 %73 to i32
  %75 = shl nsw i32 %74, 2
  %76 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %77 = load i16, ptr %76, align 4
  %78 = sext i16 %77 to i32
  %79 = add nsw i32 %75, %78
  %80 = select i1 %71, i32 0, i32 %79
  %81 = load i32, ptr %5, align 4, !tbaa !49
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %125, label %83

83:                                               ; preds = %66
  %84 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %85 = load i16, ptr %84, align 2, !tbaa !91
  %86 = sext i16 %85 to i32
  %87 = shl nsw i32 %86, 2
  %88 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %89 = load i16, ptr %88, align 4, !tbaa !92
  %90 = sext i16 %89 to i32
  %91 = add nsw i32 %87, %90
  br label %125

92:                                               ; preds = %52
  br i1 %29, label %93, label %97

93:                                               ; preds = %92
  %94 = add nsw i32 %54, -1
  %95 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %94, i32 noundef %53, ptr noundef nonnull %95, ptr noundef nonnull %4) #15
  %96 = add nsw i32 %53, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %96, ptr noundef nonnull %95, ptr noundef nonnull %5) #15
  br label %125

97:                                               ; preds = %92
  %98 = select i1 %43, i1 true, i1 %42
  %99 = add nsw i32 %54, -1
  %100 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 81, i64 1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %99, i32 noundef %53, ptr noundef nonnull %100, ptr noundef nonnull %4) #15
  %101 = add nsw i32 %53, -1
  call void @get4x4Neighbour(ptr noundef nonnull %0, i32 noundef %54, i32 noundef %101, ptr noundef nonnull %100, ptr noundef nonnull %5) #15
  br i1 %98, label %102, label %125

102:                                              ; preds = %97
  %103 = load i32, ptr %4, align 4, !tbaa !49
  %104 = icmp eq i32 %103, 0
  %105 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 3
  %106 = load i16, ptr %105, align 2
  %107 = sext i16 %106 to i32
  %108 = shl nsw i32 %107, 2
  %109 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 2
  %110 = load i16, ptr %109, align 4
  %111 = sext i16 %110 to i32
  %112 = add nsw i32 %108, %111
  %113 = select i1 %104, i32 0, i32 %112
  %114 = load i32, ptr %5, align 4, !tbaa !49
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %125, label %116

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 3
  %118 = load i16, ptr %117, align 2, !tbaa !91
  %119 = sext i16 %118 to i32
  %120 = shl nsw i32 %119, 2
  %121 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 2
  %122 = load i16, ptr %121, align 4, !tbaa !92
  %123 = sext i16 %122 to i32
  %124 = add nsw i32 %120, %123
  br label %125

125:                                              ; preds = %97, %93, %102, %116, %66, %83
  %126 = phi i32 [ %80, %83 ], [ %80, %66 ], [ 0, %93 ], [ %113, %116 ], [ %113, %102 ], [ 0, %97 ]
  %127 = phi i32 [ %91, %83 ], [ 0, %66 ], [ 0, %93 ], [ %124, %116 ], [ 0, %102 ], [ 0, %97 ]
  %128 = getelementptr inbounds %struct.storable_picture, ptr %10, i64 0, i32 48
  %129 = load i32, ptr %128, align 4, !tbaa !117
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %160, label %131

131:                                              ; preds = %125
  br i1 %15, label %270, label %132

132:                                              ; preds = %131
  %133 = load i32, ptr %5, align 4, !tbaa !49
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %132
  %136 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %137 = load i32, ptr %136, align 4, !tbaa !55
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %138, i32 30
  %140 = load i16, ptr %139, align 8, !tbaa !104
  %141 = icmp eq i16 %140, 14
  br i1 %141, label %147, label %142

142:                                              ; preds = %135
  %143 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %138, i32 34
  %144 = load i64, ptr %143, align 8, !tbaa !124
  %145 = add nsw i32 %127, %61
  %146 = call fastcc i32 @get_bit(i64 noundef %144, i32 noundef %145) #17, !range !125
  br label %147

147:                                              ; preds = %135, %142, %132
  %148 = phi i32 [ %146, %142 ], [ %65, %132 ], [ 1, %135 ]
  %149 = load i32, ptr %4, align 4, !tbaa !49
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %257, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %153 = load i32, ptr %152, align 4, !tbaa !55
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %154, i32 30
  %156 = load i16, ptr %155, align 8, !tbaa !104
  %157 = icmp eq i16 %156, 14
  br i1 %157, label %257, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %154, i32 34
  br label %251

160:                                              ; preds = %125
  %161 = getelementptr inbounds %struct.video_par, ptr %8, i64 0, i32 105
  %162 = load i32, ptr %161, align 8, !tbaa !126
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %193, label %164

164:                                              ; preds = %160
  br i1 %15, label %270, label %165

165:                                              ; preds = %164
  %166 = load i32, ptr %5, align 4, !tbaa !49
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %180, label %168

168:                                              ; preds = %165
  %169 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !55
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %171, i32 30
  %173 = load i16, ptr %172, align 8, !tbaa !104
  %174 = icmp eq i16 %173, 14
  br i1 %174, label %180, label %175

175:                                              ; preds = %168
  %176 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %171, i32 34
  %177 = load i64, ptr %176, align 8, !tbaa !124
  %178 = add nsw i32 %127, %61
  %179 = call fastcc i32 @get_bit(i64 noundef %177, i32 noundef %178) #17, !range !125
  br label %180

180:                                              ; preds = %168, %175, %165
  %181 = phi i32 [ %179, %175 ], [ %65, %165 ], [ 1, %168 ]
  %182 = load i32, ptr %4, align 4, !tbaa !49
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %257, label %184

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %186 = load i32, ptr %185, align 4, !tbaa !55
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %187, i32 30
  %189 = load i16, ptr %188, align 8, !tbaa !104
  %190 = icmp eq i16 %189, 14
  br i1 %190, label %257, label %191

191:                                              ; preds = %184
  %192 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %187, i32 34
  br label %251

193:                                              ; preds = %160
  %194 = load i32, ptr %5, align 4, !tbaa !49
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %224, label %196

196:                                              ; preds = %193
  %197 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %198 = load i32, ptr %197, align 4, !tbaa !55
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 30
  %201 = load i16, ptr %200, align 8, !tbaa !104
  %202 = icmp eq i16 %201, 14
  br i1 %202, label %224, label %203

203:                                              ; preds = %196
  br i1 %15, label %204, label %206

204:                                              ; preds = %203
  %205 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 35
  br label %219

206:                                              ; preds = %203
  br i1 %16, label %207, label %209

207:                                              ; preds = %206
  %208 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 35, i64 1
  br label %219

209:                                              ; preds = %206
  br i1 %17, label %210, label %212

210:                                              ; preds = %209
  %211 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 35, i64 2
  br label %219

212:                                              ; preds = %209
  switch i32 %2, label %217 [
    i32 15, label %213
    i32 14, label %213
    i32 13, label %213
    i32 11, label %213
    i32 10, label %213
    i32 21, label %215
    i32 20, label %215
    i32 19, label %215
    i32 17, label %215
    i32 16, label %215
  ]

213:                                              ; preds = %212, %212, %212, %212, %212
  %214 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 34, i64 1
  br label %219

215:                                              ; preds = %212, %212, %212, %212, %212
  %216 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 34, i64 2
  br label %219

217:                                              ; preds = %212
  %218 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %199, i32 34
  br label %219

219:                                              ; preds = %204, %210, %215, %217, %213, %207
  %220 = phi ptr [ %208, %207 ], [ %214, %213 ], [ %218, %217 ], [ %216, %215 ], [ %211, %210 ], [ %205, %204 ]
  %221 = load i64, ptr %220, align 8, !tbaa !124
  %222 = add nsw i32 %127, %61
  %223 = call fastcc i32 @get_bit(i64 noundef %221, i32 noundef %222) #17, !range !125
  br label %224

224:                                              ; preds = %219, %196, %193
  %225 = phi i32 [ %65, %193 ], [ 1, %196 ], [ %223, %219 ]
  %226 = load i32, ptr %4, align 4, !tbaa !49
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %257, label %228

228:                                              ; preds = %224
  %229 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %230 = load i32, ptr %229, align 4, !tbaa !55
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 30
  %233 = load i16, ptr %232, align 8, !tbaa !104
  %234 = icmp eq i16 %233, 14
  br i1 %234, label %257, label %235

235:                                              ; preds = %228
  br i1 %15, label %236, label %238

236:                                              ; preds = %235
  %237 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 35
  br label %251

238:                                              ; preds = %235
  br i1 %16, label %239, label %241

239:                                              ; preds = %238
  %240 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 35, i64 1
  br label %251

241:                                              ; preds = %238
  br i1 %17, label %242, label %244

242:                                              ; preds = %241
  %243 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 35, i64 2
  br label %251

244:                                              ; preds = %241
  switch i32 %2, label %249 [
    i32 15, label %245
    i32 14, label %245
    i32 13, label %245
    i32 11, label %245
    i32 10, label %245
    i32 21, label %247
    i32 20, label %247
    i32 19, label %247
    i32 17, label %247
    i32 16, label %247
  ]

245:                                              ; preds = %244, %244, %244, %244, %244
  %246 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 34, i64 1
  br label %251

247:                                              ; preds = %244, %244, %244, %244, %244
  %248 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 34, i64 2
  br label %251

249:                                              ; preds = %244
  %250 = getelementptr inbounds %struct.macroblock, ptr %14, i64 %231, i32 34
  br label %251

251:                                              ; preds = %239, %245, %249, %247, %242, %236, %158, %191
  %252 = phi ptr [ %192, %191 ], [ %159, %158 ], [ %240, %239 ], [ %246, %245 ], [ %250, %249 ], [ %248, %247 ], [ %243, %242 ], [ %237, %236 ]
  %253 = phi i32 [ %181, %191 ], [ %148, %158 ], [ %225, %239 ], [ %225, %245 ], [ %225, %249 ], [ %225, %247 ], [ %225, %242 ], [ %225, %236 ]
  %254 = load i64, ptr %252, align 8, !tbaa !124
  %255 = add nsw i32 %126, %61
  %256 = call fastcc i32 @get_bit(i64 noundef %254, i32 noundef %255) #17, !range !125
  br label %257

257:                                              ; preds = %251, %224, %228, %180, %184, %147, %151
  %258 = phi i32 [ %148, %151 ], [ %148, %147 ], [ %181, %184 ], [ %181, %180 ], [ %225, %228 ], [ %225, %224 ], [ %253, %251 ]
  %259 = phi i32 [ 1, %151 ], [ %65, %147 ], [ 1, %184 ], [ %65, %180 ], [ 1, %228 ], [ %65, %224 ], [ %256, %251 ]
  %260 = shl nuw nsw i32 %258, 1
  %261 = or disjoint i32 %259, %260
  %262 = sext i32 %2 to i64
  %263 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %262
  %264 = load i16, ptr %263, align 2, !tbaa !93
  %265 = sext i16 %264 to i64
  %266 = getelementptr inbounds %struct.TextureInfoContexts, ptr %12, i64 0, i32 4, i64 %265
  %267 = zext nneg i32 %261 to i64
  %268 = getelementptr inbounds %struct.BiContextType, ptr %266, i64 %267
  %269 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %268) #15
  br label %270

270:                                              ; preds = %257, %164, %131
  %271 = phi i32 [ 1, %131 ], [ 1, %164 ], [ %269, %257 ]
  br i1 %29, label %288, label %272

272:                                              ; preds = %270
  br i1 %23, label %273, label %277

273:                                              ; preds = %272
  %274 = add nsw i32 %53, 1
  %275 = ashr i32 %54, 2
  %276 = add nsw i32 %274, %275
  br label %288

277:                                              ; preds = %272
  %278 = select i1 %41, i1 true, i1 %44
  %279 = select i1 %41, i32 17, i32 18
  br i1 %278, label %288, label %280

280:                                              ; preds = %277
  %281 = ashr i32 %54, 2
  br i1 %43, label %282, label %285

282:                                              ; preds = %280
  %283 = add nsw i32 %53, 19
  %284 = add nsw i32 %283, %281
  br label %288

285:                                              ; preds = %280
  %286 = add nsw i32 %53, 35
  %287 = add nsw i32 %286, %281
  br label %288

288:                                              ; preds = %277, %273, %285, %282, %270
  %289 = phi i32 [ 0, %270 ], [ %276, %273 ], [ %279, %277 ], [ %284, %282 ], [ %287, %285 ]
  %290 = icmp eq i32 %271, 0
  br i1 %290, label %357, label %291

291:                                              ; preds = %288
  br i1 %15, label %292, label %302

292:                                              ; preds = %291
  %293 = zext nneg i32 %289 to i64
  %294 = shl i64 51, %293
  %295 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %296 = load i64, ptr %295, align 8, !tbaa !124
  %297 = or i64 %296, %294
  store i64 %297, ptr %295, align 8, !tbaa !124
  %298 = load i32, ptr %128, align 4, !tbaa !117
  %299 = icmp eq i32 %298, 3
  br i1 %299, label %300, label %357

300:                                              ; preds = %292
  %301 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 35
  br label %352

302:                                              ; preds = %291
  br i1 %16, label %303, label %310

303:                                              ; preds = %302
  %304 = zext nneg i32 %289 to i64
  %305 = shl i64 51, %304
  %306 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 35, i64 1
  %307 = load i64, ptr %306, align 8, !tbaa !124
  %308 = or i64 %307, %305
  store i64 %308, ptr %306, align 8, !tbaa !124
  %309 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %352

310:                                              ; preds = %302
  br i1 %17, label %311, label %318

311:                                              ; preds = %310
  %312 = zext nneg i32 %289 to i64
  %313 = shl i64 51, %312
  %314 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 35, i64 2
  %315 = load i64, ptr %314, align 8, !tbaa !124
  %316 = or i64 %315, %313
  store i64 %316, ptr %314, align 8, !tbaa !124
  %317 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %352

318:                                              ; preds = %310
  switch i32 %2, label %349 [
    i32 3, label %319
    i32 13, label %323
    i32 19, label %327
    i32 4, label %331
    i32 14, label %335
    i32 20, label %339
    i32 15, label %343
    i32 11, label %343
    i32 10, label %343
    i32 21, label %346
    i32 17, label %346
    i32 16, label %346
  ]

319:                                              ; preds = %318
  %320 = zext nneg i32 %289 to i64
  %321 = shl i64 3, %320
  %322 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  br label %352

323:                                              ; preds = %318
  %324 = zext nneg i32 %289 to i64
  %325 = shl i64 3, %324
  %326 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %352

327:                                              ; preds = %318
  %328 = zext nneg i32 %289 to i64
  %329 = shl i64 3, %328
  %330 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %352

331:                                              ; preds = %318
  %332 = zext nneg i32 %289 to i64
  %333 = shl i64 17, %332
  %334 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  br label %352

335:                                              ; preds = %318
  %336 = zext nneg i32 %289 to i64
  %337 = shl i64 17, %336
  %338 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %352

339:                                              ; preds = %318
  %340 = zext nneg i32 %289 to i64
  %341 = shl i64 17, %340
  %342 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %352

343:                                              ; preds = %318, %318, %318
  %344 = call fastcc i64 @i64_power2(i32 noundef %289) #17
  %345 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 1
  br label %352

346:                                              ; preds = %318, %318, %318
  %347 = call fastcc i64 @i64_power2(i32 noundef %289) #17
  %348 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34, i64 2
  br label %352

349:                                              ; preds = %318
  %350 = call fastcc i64 @i64_power2(i32 noundef %289) #17
  %351 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  br label %352

352:                                              ; preds = %303, %319, %327, %335, %343, %349, %346, %339, %331, %323, %311, %300
  %353 = phi ptr [ %301, %300 ], [ %317, %311 ], [ %326, %323 ], [ %334, %331 ], [ %342, %339 ], [ %348, %346 ], [ %351, %349 ], [ %345, %343 ], [ %338, %335 ], [ %330, %327 ], [ %322, %319 ], [ %309, %303 ]
  %354 = phi i64 [ %294, %300 ], [ %313, %311 ], [ %325, %323 ], [ %333, %331 ], [ %341, %339 ], [ %347, %346 ], [ %350, %349 ], [ %344, %343 ], [ %337, %335 ], [ %329, %327 ], [ %321, %319 ], [ %305, %303 ]
  %355 = load i64, ptr %353, align 8, !tbaa !124
  %356 = or i64 %355, %354
  store i64 %356, ptr %353, align 8, !tbaa !124
  br label %357

357:                                              ; preds = %352, %292, %288
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  ret i32 %271
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @read_and_store_CBP_block_bit_normal(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !PGOFuncName !127 {
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
  %18 = load ptr, ptr %0, align 8, !tbaa !51
  %19 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !35
  %21 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 59
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  %23 = getelementptr inbounds %struct.slice, ptr %18, i64 0, i32 124
  %24 = load ptr, ptr %23, align 8, !tbaa !52
  switch i32 %2, label %323 [
    i32 0, label %25
    i32 1, label %59
    i32 3, label %107
    i32 4, label %156
    i32 5, label %205
    i32 2, label %253
    i32 9, label %266
    i32 8, label %266
    i32 6, label %266
  ]

25:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #14
  %26 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %26, ptr noundef nonnull %4) #15
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %26, ptr noundef nonnull %5) #15
  %27 = load i32, ptr %5, align 4, !tbaa !49
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.pix_pos, ptr %5, i64 0, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !55
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %32
  %34 = call fastcc i32 @set_cbp_bit(ptr noundef %33) #17, !range !125
  %35 = shl nuw nsw i32 %34, 1
  br label %36

36:                                               ; preds = %29, %25
  %37 = phi i32 [ %35, %29 ], [ 2, %25 ]
  %38 = load i32, ptr %4, align 4, !tbaa !49
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.pix_pos, ptr %4, i64 0, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !55
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %43
  %45 = call fastcc i32 @set_cbp_bit(ptr noundef %44) #17, !range !125
  br label %46

46:                                               ; preds = %40, %36
  %47 = phi i32 [ %45, %40 ], [ 1, %36 ]
  %48 = or disjoint i32 %47, %37
  %49 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4
  %50 = zext nneg i32 %48 to i64
  %51 = getelementptr inbounds %struct.BiContextType, ptr %49, i64 %50
  %52 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %51) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %56 = load i64, ptr %55, align 8, !tbaa !124
  %57 = or i64 %56, 1
  store i64 %57, ptr %55, align 8, !tbaa !124
  br label %58

58:                                               ; preds = %54, %46
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #14
  br label %408

59:                                               ; preds = %3
  %60 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %61 = load i32, ptr %60, align 8, !tbaa !90
  %62 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %63 = load i32, ptr %62, align 4, !tbaa !89
  %64 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %65 = load i32, ptr %64, align 8, !tbaa !123
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #14
  %68 = add nsw i32 %63, -1
  %69 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %68, i32 noundef %61, ptr noundef nonnull %69, ptr noundef nonnull %6) #15
  %70 = add nsw i32 %61, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %63, i32 noundef %70, ptr noundef nonnull %69, ptr noundef nonnull %7) #15
  %71 = load i32, ptr %7, align 4, !tbaa !49
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %59
  %74 = getelementptr inbounds %struct.pix_pos, ptr %7, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !55
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %76
  %78 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %77, ptr noundef nonnull %7) #17, !range !125
  br label %79

79:                                               ; preds = %73, %59
  %80 = phi i32 [ %78, %73 ], [ %67, %59 ]
  %81 = load i32, ptr %6, align 4, !tbaa !49
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.pix_pos, ptr %6, i64 0, i32 1
  %85 = load i32, ptr %84, align 4, !tbaa !55
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %86
  %88 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %87, ptr noundef nonnull %6) #17, !range !125
  br label %89

89:                                               ; preds = %83, %79
  %90 = phi i32 [ %88, %83 ], [ %67, %79 ]
  %91 = shl nuw nsw i32 %80, 1
  %92 = or disjoint i32 %90, %91
  %93 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 1
  %94 = zext nneg i32 %92 to i64
  %95 = getelementptr inbounds %struct.BiContextType, ptr %93, i64 %94
  %96 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %95) #15
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %89
  %99 = add nsw i32 %61, 1
  %100 = ashr i32 %63, 2
  %101 = add nsw i32 %99, %100
  %102 = call fastcc i64 @i64_power2(i32 noundef %101) #17
  %103 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %104 = load i64, ptr %103, align 8, !tbaa !124
  %105 = or i64 %104, %102
  store i64 %105, ptr %103, align 8, !tbaa !124
  br label %106

106:                                              ; preds = %98, %89
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #14
  br label %408

107:                                              ; preds = %3
  %108 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %109 = load i32, ptr %108, align 8, !tbaa !90
  %110 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %111 = load i32, ptr %110, align 4, !tbaa !89
  %112 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %113 = load i32, ptr %112, align 8, !tbaa !123
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #14
  %116 = add nsw i32 %111, -1
  %117 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %116, i32 noundef %109, ptr noundef nonnull %117, ptr noundef nonnull %8) #15
  %118 = add nsw i32 %109, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %111, i32 noundef %118, ptr noundef nonnull %117, ptr noundef nonnull %9) #15
  %119 = load i32, ptr %9, align 4, !tbaa !49
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %127, label %121

121:                                              ; preds = %107
  %122 = getelementptr inbounds %struct.pix_pos, ptr %9, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !55
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %124
  %126 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %125, ptr noundef nonnull %9) #17, !range !125
  br label %127

127:                                              ; preds = %121, %107
  %128 = phi i32 [ %126, %121 ], [ %115, %107 ]
  %129 = load i32, ptr %8, align 4, !tbaa !49
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.pix_pos, ptr %8, i64 0, i32 1
  %133 = load i32, ptr %132, align 4, !tbaa !55
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %134
  %136 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %135, ptr noundef nonnull %8) #17, !range !125
  br label %137

137:                                              ; preds = %131, %127
  %138 = phi i32 [ %136, %131 ], [ %115, %127 ]
  %139 = shl nuw nsw i32 %128, 1
  %140 = or disjoint i32 %138, %139
  %141 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 3
  %142 = zext nneg i32 %140 to i64
  %143 = getelementptr inbounds %struct.BiContextType, ptr %141, i64 %142
  %144 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %143) #15
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %155, label %146

146:                                              ; preds = %137
  %147 = add nsw i32 %109, 1
  %148 = ashr i32 %111, 2
  %149 = add nsw i32 %147, %148
  %150 = zext nneg i32 %149 to i64
  %151 = shl i64 3, %150
  %152 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %153 = load i64, ptr %152, align 8, !tbaa !124
  %154 = or i64 %153, %151
  store i64 %154, ptr %152, align 8, !tbaa !124
  br label %155

155:                                              ; preds = %146, %137
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #14
  br label %408

156:                                              ; preds = %3
  %157 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %158 = load i32, ptr %157, align 8, !tbaa !90
  %159 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %160 = load i32, ptr %159, align 4, !tbaa !89
  %161 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %162 = load i32, ptr %161, align 8, !tbaa !123
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #14
  %165 = add nsw i32 %160, -1
  %166 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %165, i32 noundef %158, ptr noundef nonnull %166, ptr noundef nonnull %10) #15
  %167 = add nsw i32 %158, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %160, i32 noundef %167, ptr noundef nonnull %166, ptr noundef nonnull %11) #15
  %168 = load i32, ptr %11, align 4, !tbaa !49
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %156
  %171 = getelementptr inbounds %struct.pix_pos, ptr %11, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !55
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %173
  %175 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %174, ptr noundef nonnull %11) #17, !range !125
  br label %176

176:                                              ; preds = %170, %156
  %177 = phi i32 [ %175, %170 ], [ %164, %156 ]
  %178 = load i32, ptr %10, align 4, !tbaa !49
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %176
  %181 = getelementptr inbounds %struct.pix_pos, ptr %10, i64 0, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !55
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %183
  %185 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %184, ptr noundef nonnull %10) #17, !range !125
  br label %186

186:                                              ; preds = %180, %176
  %187 = phi i32 [ %185, %180 ], [ %164, %176 ]
  %188 = shl nuw nsw i32 %177, 1
  %189 = or disjoint i32 %187, %188
  %190 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 3
  %191 = zext nneg i32 %189 to i64
  %192 = getelementptr inbounds %struct.BiContextType, ptr %190, i64 %191
  %193 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %192) #15
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %204, label %195

195:                                              ; preds = %186
  %196 = add nsw i32 %158, 1
  %197 = ashr i32 %160, 2
  %198 = add nsw i32 %196, %197
  %199 = zext nneg i32 %198 to i64
  %200 = shl i64 17, %199
  %201 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %202 = load i64, ptr %201, align 8, !tbaa !124
  %203 = or i64 %202, %200
  store i64 %203, ptr %201, align 8, !tbaa !124
  br label %204

204:                                              ; preds = %195, %186
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #14
  br label %408

205:                                              ; preds = %3
  %206 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %207 = load i32, ptr %206, align 8, !tbaa !90
  %208 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %209 = load i32, ptr %208, align 4, !tbaa !89
  %210 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %211 = load i32, ptr %210, align 8, !tbaa !123
  %212 = icmp ne i32 %211, 0
  %213 = zext i1 %212 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #14
  %214 = add nsw i32 %209, -1
  %215 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %214, i32 noundef %207, ptr noundef nonnull %215, ptr noundef nonnull %12) #15
  %216 = add nsw i32 %207, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %209, i32 noundef %216, ptr noundef nonnull %215, ptr noundef nonnull %13) #15
  %217 = load i32, ptr %13, align 4, !tbaa !49
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %225, label %219

219:                                              ; preds = %205
  %220 = getelementptr inbounds %struct.pix_pos, ptr %13, i64 0, i32 1
  %221 = load i32, ptr %220, align 4, !tbaa !55
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %222
  %224 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %223, ptr noundef nonnull %13) #17, !range !125
  br label %225

225:                                              ; preds = %219, %205
  %226 = phi i32 [ %224, %219 ], [ %213, %205 ]
  %227 = load i32, ptr %12, align 4, !tbaa !49
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %235, label %229

229:                                              ; preds = %225
  %230 = getelementptr inbounds %struct.pix_pos, ptr %12, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !55
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %232
  %234 = call fastcc i32 @set_cbp_bit_ac(ptr noundef %233, ptr noundef nonnull %12) #17, !range !125
  br label %235

235:                                              ; preds = %229, %225
  %236 = phi i32 [ %234, %229 ], [ %213, %225 ]
  %237 = shl nuw nsw i32 %226, 1
  %238 = or disjoint i32 %236, %237
  %239 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 4
  %240 = zext nneg i32 %238 to i64
  %241 = getelementptr inbounds %struct.BiContextType, ptr %239, i64 %240
  %242 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %241) #15
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %235
  %245 = add nsw i32 %207, 1
  %246 = ashr i32 %209, 2
  %247 = add nsw i32 %245, %246
  %248 = call fastcc i64 @i64_power2(i32 noundef %247) #17
  %249 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %250 = load i64, ptr %249, align 8, !tbaa !124
  %251 = or i64 %250, %248
  store i64 %251, ptr %249, align 8, !tbaa !124
  br label %252

252:                                              ; preds = %244, %235
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #14
  br label %408

253:                                              ; preds = %3
  %254 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %255 = load i32, ptr %254, align 8, !tbaa !90
  %256 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %257 = load i32, ptr %256, align 4, !tbaa !89
  %258 = add nsw i32 %255, 1
  %259 = ashr i32 %257, 2
  %260 = add nsw i32 %258, %259
  %261 = zext nneg i32 %260 to i64
  %262 = shl i64 51, %261
  %263 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %264 = load i64, ptr %263, align 8, !tbaa !124
  %265 = or i64 %262, %264
  store i64 %265, ptr %263, align 8, !tbaa !124
  br label %408

266:                                              ; preds = %3, %3, %3
  %267 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %268 = load i32, ptr %267, align 4, !tbaa !122
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i32 17, i32 18
  %271 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %272 = load i32, ptr %271, align 8, !tbaa !123
  %273 = icmp ne i32 %272, 0
  %274 = zext i1 %273 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %15) #14
  %275 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81, i64 1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %275, ptr noundef nonnull %14) #15
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, ptr noundef nonnull %275, ptr noundef nonnull %15) #15
  %276 = load i32, ptr %15, align 4, !tbaa !49
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %289, label %278

278:                                              ; preds = %266
  %279 = getelementptr inbounds %struct.pix_pos, ptr %15, i64 0, i32 1
  %280 = load i32, ptr %279, align 4, !tbaa !55
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %281, i32 30
  %283 = load i16, ptr %282, align 8, !tbaa !104
  %284 = icmp eq i16 %283, 14
  br i1 %284, label %289, label %285

285:                                              ; preds = %278
  %286 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %281, i32 34
  %287 = load i64, ptr %286, align 8, !tbaa !124
  %288 = call fastcc i32 @get_bit(i64 noundef %287, i32 noundef %270) #17, !range !125
  br label %289

289:                                              ; preds = %278, %285, %266
  %290 = phi i32 [ %288, %285 ], [ %274, %266 ], [ 1, %278 ]
  %291 = load i32, ptr %14, align 4, !tbaa !49
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %304, label %293

293:                                              ; preds = %289
  %294 = getelementptr inbounds %struct.pix_pos, ptr %14, i64 0, i32 1
  %295 = load i32, ptr %294, align 4, !tbaa !55
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %296, i32 30
  %298 = load i16, ptr %297, align 8, !tbaa !104
  %299 = icmp eq i16 %298, 14
  br i1 %299, label %304, label %300

300:                                              ; preds = %293
  %301 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %296, i32 34
  %302 = load i64, ptr %301, align 8, !tbaa !124
  %303 = call fastcc i32 @get_bit(i64 noundef %302, i32 noundef %270) #17, !range !125
  br label %304

304:                                              ; preds = %293, %300, %289
  %305 = phi i32 [ %303, %300 ], [ %274, %289 ], [ 1, %293 ]
  %306 = shl nuw nsw i32 %290, 1
  %307 = or disjoint i32 %305, %306
  %308 = zext nneg i32 %2 to i64
  %309 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %308
  %310 = load i16, ptr %309, align 2, !tbaa !93
  %311 = sext i16 %310 to i64
  %312 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 %311
  %313 = zext nneg i32 %307 to i64
  %314 = getelementptr inbounds %struct.BiContextType, ptr %312, i64 %313
  %315 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %314) #15
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %322, label %317

317:                                              ; preds = %304
  %318 = call fastcc i64 @i64_power2(i32 noundef %270) #17
  %319 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %320 = load i64, ptr %319, align 8, !tbaa !124
  %321 = or i64 %320, %318
  store i64 %321, ptr %319, align 8, !tbaa !124
  br label %322

322:                                              ; preds = %317, %304
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %15) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #14
  br label %408

323:                                              ; preds = %3
  %324 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 19
  %325 = load i32, ptr %324, align 4, !tbaa !122
  %326 = icmp eq i32 %325, 0
  %327 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 13
  %328 = load i32, ptr %327, align 8, !tbaa !90
  %329 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 12
  %330 = load i32, ptr %329, align 4, !tbaa !89
  %331 = select i1 %326, i32 19, i32 35
  %332 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 18
  %333 = load i32, ptr %332, align 8, !tbaa !123
  %334 = icmp ne i32 %333, 0
  %335 = zext i1 %334 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %16) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %17) #14
  %336 = add nsw i32 %330, -1
  %337 = getelementptr inbounds %struct.video_par, ptr %20, i64 0, i32 81, i64 1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %336, i32 noundef %328, ptr noundef nonnull %337, ptr noundef nonnull %16) #15
  %338 = add nsw i32 %328, -1
  call void @get4x4NeighbourBase(ptr noundef nonnull %0, i32 noundef %330, i32 noundef %338, ptr noundef nonnull %337, ptr noundef nonnull %17) #15
  %339 = load i32, ptr %17, align 4, !tbaa !49
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %361, label %341

341:                                              ; preds = %323
  %342 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 1
  %343 = load i32, ptr %342, align 4, !tbaa !55
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %344, i32 30
  %346 = load i16, ptr %345, align 8, !tbaa !104
  %347 = icmp eq i16 %346, 14
  br i1 %347, label %361, label %348

348:                                              ; preds = %341
  %349 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 3
  %350 = load i16, ptr %349, align 2, !tbaa !91
  %351 = sext i16 %350 to i32
  %352 = shl nsw i32 %351, 2
  %353 = getelementptr inbounds %struct.pix_pos, ptr %17, i64 0, i32 2
  %354 = load i16, ptr %353, align 4, !tbaa !92
  %355 = sext i16 %354 to i32
  %356 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %344, i32 34
  %357 = load i64, ptr %356, align 8, !tbaa !124
  %358 = add nsw i32 %331, %355
  %359 = add nsw i32 %358, %352
  %360 = call fastcc i32 @get_bit(i64 noundef %357, i32 noundef %359) #17, !range !125
  br label %361

361:                                              ; preds = %341, %348, %323
  %362 = phi i32 [ %360, %348 ], [ %335, %323 ], [ 1, %341 ]
  %363 = load i32, ptr %16, align 4, !tbaa !49
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %385, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 1
  %367 = load i32, ptr %366, align 4, !tbaa !55
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %368, i32 30
  %370 = load i16, ptr %369, align 8, !tbaa !104
  %371 = icmp eq i16 %370, 14
  br i1 %371, label %385, label %372

372:                                              ; preds = %365
  %373 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 3
  %374 = load i16, ptr %373, align 2, !tbaa !91
  %375 = sext i16 %374 to i32
  %376 = shl nsw i32 %375, 2
  %377 = getelementptr inbounds %struct.pix_pos, ptr %16, i64 0, i32 2
  %378 = load i16, ptr %377, align 4, !tbaa !92
  %379 = sext i16 %378 to i32
  %380 = getelementptr inbounds %struct.macroblock, ptr %24, i64 %368, i32 34
  %381 = load i64, ptr %380, align 8, !tbaa !124
  %382 = add nsw i32 %331, %379
  %383 = add nsw i32 %382, %376
  %384 = call fastcc i32 @get_bit(i64 noundef %381, i32 noundef %383) #17, !range !125
  br label %385

385:                                              ; preds = %365, %372, %361
  %386 = phi i32 [ %384, %372 ], [ %335, %361 ], [ 1, %365 ]
  %387 = shl nuw nsw i32 %362, 1
  %388 = or disjoint i32 %386, %387
  %389 = sext i32 %2 to i64
  %390 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %389
  %391 = load i16, ptr %390, align 2, !tbaa !93
  %392 = sext i16 %391 to i64
  %393 = getelementptr inbounds %struct.TextureInfoContexts, ptr %22, i64 0, i32 4, i64 %392
  %394 = zext nneg i32 %388 to i64
  %395 = getelementptr inbounds %struct.BiContextType, ptr %393, i64 %394
  %396 = call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %395) #15
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %407, label %398

398:                                              ; preds = %385
  %399 = ashr i32 %330, 2
  %400 = select i1 %326, i32 19, i32 35
  %401 = add nsw i32 %328, %400
  %402 = add nsw i32 %401, %399
  %403 = call fastcc i64 @i64_power2(i32 noundef %402) #17
  %404 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %405 = load i64, ptr %404, align 8, !tbaa !124
  %406 = or i64 %405, %403
  store i64 %406, ptr %404, align 8, !tbaa !124
  br label %407

407:                                              ; preds = %398, %385
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %17) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %16) #14
  br label %408

408:                                              ; preds = %106, %204, %253, %407, %322, %252, %155, %58
  %409 = phi i32 [ %52, %58 ], [ %96, %106 ], [ %144, %155 ], [ %193, %204 ], [ %242, %252 ], [ 1, %253 ], [ %315, %322 ], [ %396, %407 ]
  ret i32 %409
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_bit(i64 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !128 {
  %3 = zext nneg i32 %1 to i64
  %4 = lshr i64 %0, %3
  %5 = trunc i64 %4 to i32
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @i64_power2(i32 noundef %0) unnamed_addr #8 !PGOFuncName !129 {
  %2 = icmp sgt i32 %0, 63
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [64 x i64], ptr @po2, i64 0, i64 %4
  %6 = load i64, ptr %5, align 8, !tbaa !124
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i64 [ %6, %3 ], [ 0, %1 ]
  ret i64 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @set_cbp_bit(ptr nocapture noundef readonly %0) unnamed_addr #10 !PGOFuncName !130 {
  %2 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %3 = load i16, ptr %2, align 8, !tbaa !104
  %4 = icmp eq i16 %3, 14
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %7 = load i64, ptr %6, align 8, !tbaa !124
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 1
  br label %10

10:                                               ; preds = %1, %5
  %11 = phi i32 [ %9, %5 ], [ 1, %1 ]
  ret i32 %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @set_cbp_bit_ac(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #10 !PGOFuncName !131 {
  %3 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 30
  %4 = load i16, ptr %3, align 8, !tbaa !104
  %5 = icmp eq i16 %4, 14
  br i1 %5, label %19, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 3
  %8 = load i16, ptr %7, align 2, !tbaa !91
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 2
  %11 = or disjoint i32 %10, 1
  %12 = getelementptr inbounds %struct.pix_pos, ptr %1, i64 0, i32 2
  %13 = load i16, ptr %12, align 4, !tbaa !92
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %11, %14
  %16 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 34
  %17 = load i64, ptr %16, align 8, !tbaa !124
  %18 = tail call fastcc i32 @get_bit(i64 noundef %17, i32 noundef %15) #17, !range !125
  br label %19

19:                                               ; preds = %2, %6
  %20 = phi i32 [ %18, %6 ], [ 1, %2 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readRunLevel_CABAC(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !51
  %5 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 94
  %6 = load i32, ptr %5, align 4, !tbaa !77
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 59
  %10 = load ptr, ptr %9, align 8, !tbaa !120
  %11 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !94
  %13 = tail call i32 %10(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %12) #15
  store i32 %13, ptr %5, align 4, !tbaa !77
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %49, label %15

15:                                               ; preds = %8
  %16 = load i32, ptr %11, align 8, !tbaa !94
  %17 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93
  %18 = tail call fastcc i32 @read_significance_map(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %16, ptr noundef nonnull %17) #17
  store i32 %18, ptr %5, align 4, !tbaa !77
  %19 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 59
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = load i32, ptr %11, align 8, !tbaa !94
  tail call fastcc void @read_significant_coefficients(ptr noundef %2, ptr noundef %20, i32 noundef %21, ptr noundef nonnull %17) #17
  %22 = load i32, ptr %5, align 4, !tbaa !77
  br label %23

23:                                               ; preds = %15, %3
  %24 = phi i32 [ %22, %15 ], [ %6, %3 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %49, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  %28 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 95
  %29 = load i32, ptr %28, align 4, !tbaa !132
  store i32 0, ptr %27, align 8, !tbaa !86
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !77
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %26, %34
  %35 = phi i64 [ %37, %34 ], [ %30, %26 ]
  %36 = phi i32 [ %39, %34 ], [ 0, %26 ]
  %37 = add i64 %35, 1
  %38 = trunc i64 %37 to i32
  store i32 %38, ptr %28, align 4, !tbaa !132
  %39 = add nuw nsw i32 %36, 1
  store i32 %39, ptr %27, align 8, !tbaa !86
  %40 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93, i64 %37
  %41 = load i32, ptr %40, align 4, !tbaa !77
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %34, label %43, !llvm.loop !133

43:                                               ; preds = %34, %26
  %44 = phi i64 [ %30, %26 ], [ %37, %34 ]
  %45 = phi i32 [ %29, %26 ], [ %38, %34 ]
  %46 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 93, i64 %44
  %47 = add nsw i32 %45, 1
  store i32 %47, ptr %28, align 4, !tbaa !132
  %48 = load i32, ptr %46, align 4, !tbaa !77
  br label %51

49:                                               ; preds = %8, %23
  %50 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 2
  store i32 0, ptr %50, align 8, !tbaa !86
  br label %51

51:                                               ; preds = %49, %43
  %52 = phi i32 [ 0, %49 ], [ %48, %43 ]
  %53 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 1
  store i32 %52, ptr %53, align 4, !tbaa !63
  %54 = load i32, ptr %5, align 4, !tbaa !77
  %55 = add nsw i32 %54, -1
  store i32 %55, ptr %5, align 4, !tbaa !77
  %56 = icmp eq i32 %54, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.slice, ptr %4, i64 0, i32 95
  store i32 0, ptr %58, align 4, !tbaa !132
  br label %59

59:                                               ; preds = %57, %51
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @read_significance_map(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3) unnamed_addr #0 !PGOFuncName !134 {
  %5 = load ptr, ptr %0, align 8, !tbaa !51
  %6 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 38
  %7 = load i32, ptr %6, align 8, !tbaa !135
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.macroblock, ptr %0, i64 0, i32 45
  %11 = load i32, ptr %10, align 8, !tbaa !60
  %12 = freeze i32 %11
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %13, ptr @pos2ctx_map_int, ptr @pos2ctx_map
  %15 = zext i1 %13 to i64
  br label %16

16:                                               ; preds = %4, %9
  %17 = phi i64 [ 1, %4 ], [ %15, %9 ]
  %18 = phi ptr [ @pos2ctx_map_int, %4 ], [ %14, %9 ]
  %19 = getelementptr inbounds %struct.slice, ptr %5, i64 0, i32 59
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !93
  %24 = sext i16 %23 to i64
  %25 = getelementptr inbounds %struct.TextureInfoContexts, ptr %20, i64 0, i32 5, i64 %17, i64 %24
  %26 = getelementptr inbounds [22 x i16], ptr @type2ctx_last, i64 0, i64 %21
  %27 = load i16, ptr %26, align 2, !tbaa !93
  %28 = sext i16 %27 to i64
  %29 = getelementptr inbounds %struct.TextureInfoContexts, ptr %20, i64 0, i32 6, i64 %17, i64 %28
  %30 = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %21
  %31 = load i16, ptr %30, align 2, !tbaa !93
  %32 = sext i16 %31 to i32
  %33 = lshr i64 133250, %21
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 1
  %36 = add nsw i32 %35, %32
  %37 = getelementptr inbounds ptr, ptr %18, i64 %21
  %38 = load ptr, ptr %37, align 8, !tbaa !72
  %39 = shl i64 %21, 2
  br label %40

40:                                               ; preds = %16, %66
  %41 = phi i32 [ 0, %16 ], [ %68, %66 ]
  %42 = phi i32 [ %35, %16 ], [ %69, %66 ]
  %43 = phi ptr [ %3, %16 ], [ %51, %66 ]
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, ptr %38, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !106
  %47 = zext i8 %46 to i64
  %48 = getelementptr inbounds %struct.BiContextType, ptr %25, i64 %47
  %49 = tail call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %48) #15
  %50 = icmp eq i32 %49, 0
  %51 = getelementptr inbounds i32, ptr %43, i64 1
  br i1 %50, label %65, label %52

52:                                               ; preds = %40
  store i32 1, ptr %43, align 4, !tbaa !77
  %53 = add nsw i32 %41, 1
  %54 = call ptr @llvm.load.relative.i64(ptr @reltable.read_significance_map, i64 %39)
  %55 = getelementptr inbounds i8, ptr %54, i64 %44
  %56 = load i8, ptr %55, align 1, !tbaa !106
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds %struct.BiContextType, ptr %29, i64 %57
  %59 = tail call i32 @biari_decode_symbol(ptr noundef %1, ptr noundef nonnull %58) #15
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = sub nsw i32 %36, %42
  %63 = sext i32 %62 to i64
  %64 = shl nsw i64 %63, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %51, i8 0, i64 %64, i1 false)
  br label %66

65:                                               ; preds = %40
  store i32 0, ptr %43, align 4, !tbaa !77
  br label %66

66:                                               ; preds = %65, %61, %52
  %67 = phi i32 [ %36, %61 ], [ %42, %52 ], [ %42, %65 ]
  %68 = phi i32 [ %53, %61 ], [ %53, %52 ], [ %41, %65 ]
  %69 = add nsw i32 %67, 1
  %70 = icmp slt i32 %69, %36
  br i1 %70, label %40, label %71, !llvm.loop !136

71:                                               ; preds = %66
  %72 = icmp slt i32 %67, %36
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  store i32 1, ptr %51, align 4, !tbaa !77
  %74 = add nsw i32 %68, 1
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %74, %73 ], [ %68, %71 ]
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @read_significant_coefficients(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) unnamed_addr #0 !PGOFuncName !137 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %5
  %7 = load i16, ptr %6, align 2, !tbaa !93
  %8 = sext i16 %7 to i64
  %9 = getelementptr inbounds %struct.TextureInfoContexts, ptr %1, i64 0, i32 7, i64 %8
  %10 = getelementptr inbounds [22 x i16], ptr @type2ctx_abs, i64 0, i64 %5
  %11 = load i16, ptr %10, align 2, !tbaa !93
  %12 = sext i16 %11 to i64
  %13 = getelementptr inbounds %struct.TextureInfoContexts, ptr %1, i64 0, i32 8, i64 %12
  %14 = getelementptr inbounds [22 x i16], ptr @max_c2, i64 0, i64 %5
  %15 = load i16, ptr %14, align 2, !tbaa !93
  %16 = sext i16 %15 to i32
  %17 = getelementptr inbounds [22 x i16], ptr @maxpos, i64 0, i64 %5
  %18 = load i16, ptr %17, align 2, !tbaa !93
  %19 = sext i16 %18 to i32
  %20 = sext i16 %18 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  br label %22

22:                                               ; preds = %4, %57
  %23 = phi ptr [ %60, %57 ], [ %21, %4 ]
  %24 = phi i32 [ %61, %57 ], [ %19, %4 ]
  %25 = phi i32 [ %59, %57 ], [ 1, %4 ]
  %26 = phi i32 [ %58, %57 ], [ 0, %4 ]
  %27 = load i32, ptr %23, align 4, !tbaa !77
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %57, label %29

29:                                               ; preds = %22
  %30 = tail call fastcc i32 @imin(i32 noundef %25, i32 noundef 4) #17
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.BiContextType, ptr %9, i64 %31
  %33 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef nonnull %32) #15
  %34 = load i32, ptr %23, align 4, !tbaa !77
  %35 = add i32 %34, %33
  store i32 %35, ptr %23, align 4, !tbaa !77
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = add nsw i32 %26, 1
  %39 = tail call fastcc i32 @imin(i32 noundef %26, i32 noundef %16) #17
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.BiContextType, ptr %13, i64 %40
  %42 = tail call fastcc i32 @unary_exp_golomb_level_decode(ptr noundef %0, ptr noundef nonnull %41) #17
  %43 = load i32, ptr %23, align 4, !tbaa !77
  %44 = add i32 %43, %42
  store i32 %44, ptr %23, align 4, !tbaa !77
  br label %49

45:                                               ; preds = %29
  %46 = icmp eq i32 %25, 0
  %47 = add nsw i32 %25, 1
  %48 = select i1 %46, i32 0, i32 %47
  br label %49

49:                                               ; preds = %45, %37
  %50 = phi i32 [ %38, %37 ], [ %26, %45 ]
  %51 = phi i32 [ 0, %37 ], [ %48, %45 ]
  %52 = tail call i32 @biari_decode_symbol_eq_prob(ptr noundef %0) #15
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i32, ptr %23, align 4, !tbaa !77
  %56 = sub nsw i32 0, %55
  store i32 %56, ptr %23, align 4, !tbaa !77
  br label %57

57:                                               ; preds = %49, %54, %22
  %58 = phi i32 [ %50, %54 ], [ %50, %49 ], [ %26, %22 ]
  %59 = phi i32 [ %51, %54 ], [ %51, %49 ], [ %25, %22 ]
  %60 = getelementptr inbounds i32, ptr %23, i64 -1
  %61 = add nsw i32 %24, -1
  %62 = icmp sgt i32 %24, 0
  br i1 %62, label %22, label %63, !llvm.loop !138

63:                                               ; preds = %57
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @imin(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !PGOFuncName !139 {
  %3 = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @unary_exp_golomb_level_decode(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !PGOFuncName !140 {
  %3 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %1) #15
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %9, %5 ], [ 0, %2 ]
  %7 = phi i32 [ %10, %5 ], [ 1, %2 ]
  %8 = tail call i32 @biari_decode_symbol(ptr noundef %0, ptr noundef %1) #15
  %9 = add nuw nsw i32 %6, 1
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp ne i32 %8, 0
  %12 = icmp ne i32 %10, 13
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %5, label %14, !llvm.loop !141

14:                                               ; preds = %5
  br i1 %11, label %15, label %19

15:                                               ; preds = %14
  %16 = tail call fastcc i32 @exp_golomb_decode_eq_prob(ptr noundef %0, i32 noundef 0) #17
  %17 = add nuw i32 %6, 2
  %18 = add i32 %17, %16
  br label %19

19:                                               ; preds = %14, %15, %2
  %20 = phi i32 [ 0, %2 ], [ %18, %15 ], [ %9, %14 ]
  ret i32 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @readSyntaxElement_CABAC(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.datapartition, ptr %2, i64 0, i32 1
  %5 = tail call i32 @arideco_bits_read(ptr noundef nonnull %4) #15
  %6 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 9
  %7 = load ptr, ptr %6, align 8, !tbaa !142
  tail call void %7(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #15
  %8 = tail call i32 @arideco_bits_read(ptr noundef nonnull %4) #15
  %9 = sub nsw i32 %8, %5
  %10 = getelementptr inbounds %struct.syntaxelement, ptr %1, i64 0, i32 3
  store i32 %9, ptr %10, align 4, !tbaa !143
  ret i32 %9
}

; Function Attrs: optsize
declare i32 @arideco_bits_read(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @cabac_startcode_follows(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 57
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %struct.datapartition, ptr %6, i64 0, i32 1
  %8 = tail call i32 @biari_decode_final(ptr noundef nonnull %7) #15
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %2, %4
  %12 = phi i32 [ %10, %4 ], [ 0, %2 ]
  ret i32 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @readIPCM_CABAC(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr %0, align 8, !tbaa !65
  %5 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 125
  %6 = load ptr, ptr %5, align 8, !tbaa !105
  %7 = load ptr, ptr %1, align 8, !tbaa !145
  %8 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !147
  %10 = getelementptr inbounds %struct.bit_stream, ptr %7, i64 0, i32 3
  %11 = load i32, ptr %10, align 4, !tbaa !149
  %12 = shl i32 %11, 3
  %13 = or disjoint i32 %12, 7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #14
  store i32 0, ptr %3, align 4, !tbaa !77
  %14 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !150
  %16 = icmp sgt i32 %15, 7
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !75
  %20 = load i32, ptr %19, align 4, !tbaa !77
  br label %34

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 1
  %23 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !75
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i32 [ %15, %21 ], [ %32, %25 ]
  %27 = load i32, ptr %22, align 4, !tbaa !151
  %28 = lshr i32 %27, 8
  store i32 %28, ptr %22, align 4, !tbaa !151
  %29 = add nsw i32 %26, -8
  store i32 %29, ptr %14, align 8, !tbaa !150
  %30 = load i32, ptr %24, align 4, !tbaa !77
  %31 = add nsw i32 %30, -1
  store i32 %31, ptr %24, align 4, !tbaa !77
  %32 = load i32, ptr %14, align 8, !tbaa !150
  %33 = icmp sgt i32 %32, 7
  br i1 %33, label %25, label %34, !llvm.loop !152

34:                                               ; preds = %25, %17
  %35 = phi i32 [ %20, %17 ], [ %31, %25 ]
  %36 = shl i32 %35, 3
  %37 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 64
  %38 = load i16, ptr %37, align 8, !tbaa !153
  %39 = sext i16 %38 to i32
  %40 = getelementptr inbounds %struct.slice, ptr %0, i64 0, i32 80
  br label %41

41:                                               ; preds = %34, %60
  %42 = phi i64 [ 0, %34 ], [ %61, %60 ]
  %43 = phi i32 [ %36, %34 ], [ %57, %60 ]
  %44 = phi i32 [ 0, %34 ], [ %50, %60 ]
  br label %45

45:                                               ; preds = %41, %45
  %46 = phi i64 [ 0, %41 ], [ %58, %45 ]
  %47 = phi i32 [ %43, %41 ], [ %57, %45 ]
  %48 = phi i32 [ %44, %41 ], [ %50, %45 ]
  %49 = call i32 @GetBits(ptr noundef %9, i32 noundef %47, ptr noundef nonnull %3, i32 noundef %13, i32 noundef %39) #15
  %50 = add nsw i32 %49, %48
  %51 = load i32, ptr %3, align 4, !tbaa !77
  %52 = load ptr, ptr %40, align 8, !tbaa !154
  %53 = load ptr, ptr %52, align 8, !tbaa !72
  %54 = getelementptr inbounds ptr, ptr %53, i64 %42
  %55 = load ptr, ptr %54, align 8, !tbaa !72
  %56 = getelementptr inbounds i32, ptr %55, i64 %46
  store i32 %51, ptr %56, align 4, !tbaa !77
  %57 = add nsw i32 %47, %39
  %58 = add nuw nsw i64 %46, 1
  %59 = icmp eq i64 %58, 16
  br i1 %59, label %60, label %45, !llvm.loop !155

60:                                               ; preds = %45
  %61 = add nuw nsw i64 %42, 1
  %62 = icmp eq i64 %61, 16
  br i1 %62, label %63, label %41, !llvm.loop !156

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 65
  %65 = load i16, ptr %64, align 2, !tbaa !157
  %66 = sext i16 %65 to i32
  %67 = getelementptr inbounds %struct.storable_picture, ptr %6, i64 0, i32 48
  %68 = load i32, ptr %67, align 4, !tbaa !117
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %129, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 105
  %72 = load i32, ptr %71, align 8, !tbaa !126
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %129

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 78
  %76 = getelementptr inbounds %struct.video_par, ptr %4, i64 0, i32 77
  %77 = load i32, ptr %75, align 8, !tbaa !158
  br label %78

78:                                               ; preds = %74, %122
  %79 = phi i32 [ %77, %74 ], [ %123, %122 ]
  %80 = phi i32 [ %77, %74 ], [ %124, %122 ]
  %81 = phi i64 [ 1, %74 ], [ %127, %122 ]
  %82 = phi i32 [ %57, %74 ], [ %126, %122 ]
  %83 = phi i32 [ %50, %74 ], [ %125, %122 ]
  %84 = icmp sgt i32 %80, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %78
  %86 = load i32, ptr %76, align 4, !tbaa !159
  br label %87

87:                                               ; preds = %85, %114
  %88 = phi i32 [ %79, %85 ], [ %115, %114 ]
  %89 = phi i32 [ %86, %85 ], [ %116, %114 ]
  %90 = phi i64 [ 0, %85 ], [ %119, %114 ]
  %91 = phi i32 [ %82, %85 ], [ %118, %114 ]
  %92 = phi i32 [ %83, %85 ], [ %117, %114 ]
  %93 = icmp sgt i32 %89, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %87, %94
  %95 = phi i64 [ %108, %94 ], [ 0, %87 ]
  %96 = phi i32 [ %107, %94 ], [ %91, %87 ]
  %97 = phi i32 [ %99, %94 ], [ %92, %87 ]
  %98 = call i32 @GetBits(ptr noundef %9, i32 noundef %96, ptr noundef nonnull %3, i32 noundef %13, i32 noundef %66) #15
  %99 = add nsw i32 %98, %97
  %100 = load i32, ptr %3, align 4, !tbaa !77
  %101 = load ptr, ptr %40, align 8, !tbaa !154
  %102 = getelementptr inbounds ptr, ptr %101, i64 %81
  %103 = load ptr, ptr %102, align 8, !tbaa !72
  %104 = getelementptr inbounds ptr, ptr %103, i64 %90
  %105 = load ptr, ptr %104, align 8, !tbaa !72
  %106 = getelementptr inbounds i32, ptr %105, i64 %95
  store i32 %100, ptr %106, align 4, !tbaa !77
  %107 = add nsw i32 %96, %66
  %108 = add nuw nsw i64 %95, 1
  %109 = load i32, ptr %76, align 4, !tbaa !159
  %110 = sext i32 %109 to i64
  %111 = icmp slt i64 %108, %110
  br i1 %111, label %94, label %112, !llvm.loop !160

112:                                              ; preds = %94
  %113 = load i32, ptr %75, align 8, !tbaa !158
  br label %114

114:                                              ; preds = %112, %87
  %115 = phi i32 [ %88, %87 ], [ %113, %112 ]
  %116 = phi i32 [ %89, %87 ], [ %109, %112 ]
  %117 = phi i32 [ %92, %87 ], [ %99, %112 ]
  %118 = phi i32 [ %91, %87 ], [ %107, %112 ]
  %119 = add nuw nsw i64 %90, 1
  %120 = sext i32 %115 to i64
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %87, label %122, !llvm.loop !161

122:                                              ; preds = %114, %78
  %123 = phi i32 [ %79, %78 ], [ %115, %114 ]
  %124 = phi i32 [ %80, %78 ], [ %115, %114 ]
  %125 = phi i32 [ %83, %78 ], [ %117, %114 ]
  %126 = phi i32 [ %82, %78 ], [ %118, %114 ]
  %127 = add nuw nsw i64 %81, 1
  %128 = icmp eq i64 %127, 3
  br i1 %128, label %129, label %78, !llvm.loop !162

129:                                              ; preds = %122, %70, %63
  %130 = phi i32 [ %50, %70 ], [ %50, %63 ], [ %125, %122 ]
  %131 = getelementptr inbounds %struct.datapartition, ptr %1, i64 0, i32 1, i32 4
  %132 = ashr i32 %130, 3
  %133 = load ptr, ptr %131, align 8, !tbaa !75
  %134 = load i32, ptr %133, align 4, !tbaa !77
  %135 = add nsw i32 %134, %132
  %136 = and i32 %130, 7
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i32
  %139 = add nsw i32 %135, %138
  store i32 %139, ptr %133, align 4, !tbaa !77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #14
  ret void
}

; Function Attrs: optsize
declare i32 @GetBits(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #13

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize }
attributes #16 = { nounwind optsize allocsize(0,1) }
attributes #17 = { optsize }

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
!35 = !{!36, !37, i64 8}
!36 = !{!"macroblock", !37, i64 0, !37, i64 8, !37, i64 16, !40, i64 24, !41, i64 28, !40, i64 32, !40, i64 36, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !38, i64 80, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !42, i64 108, !38, i64 110, !38, i64 111, !42, i64 112, !42, i64 114, !37, i64 120, !37, i64 128, !37, i64 136, !37, i64 144, !42, i64 152, !38, i64 154, !40, i64 284, !38, i64 288, !38, i64 312, !38, i64 336, !40, i64 360, !38, i64 364, !38, i64 368, !38, i64 372, !38, i64 373, !38, i64 374, !42, i64 376, !42, i64 378, !42, i64 380, !40, i64 384, !40, i64 388, !40, i64 392, !40, i64 396, !40, i64 400, !40, i64 404, !40, i64 408, !40, i64 412, !40, i64 416, !40, i64 420, !40, i64 424, !37, i64 432, !37, i64 440, !37, i64 448, !37, i64 456, !37, i64 464, !38, i64 472}
!37 = !{!"any pointer", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !{!"int", !38, i64 0}
!41 = !{!"", !42, i64 0, !42, i64 2}
!42 = !{!"short", !38, i64 0}
!43 = !{!44, !37, i64 856744}
!44 = !{!"video_par", !37, i64 0, !37, i64 8, !37, i64 16, !38, i64 24, !38, i64 132120, !37, i64 699416, !38, i64 699424, !40, i64 848672, !40, i64 848676, !40, i64 848680, !40, i64 848684, !37, i64 848688, !37, i64 848696, !37, i64 848704, !40, i64 848712, !40, i64 848716, !40, i64 848720, !40, i64 848724, !40, i64 848728, !37, i64 848736, !37, i64 848744, !38, i64 848752, !40, i64 848776, !40, i64 848780, !40, i64 848784, !40, i64 848788, !40, i64 848792, !37, i64 848800, !38, i64 848808, !37, i64 848832, !37, i64 848840, !38, i64 848848, !40, i64 848872, !40, i64 848876, !37, i64 848880, !37, i64 848888, !38, i64 848896, !40, i64 848920, !37, i64 848928, !37, i64 848936, !40, i64 848944, !40, i64 848948, !40, i64 848952, !40, i64 848956, !40, i64 848960, !40, i64 848964, !40, i64 848968, !40, i64 848972, !40, i64 848976, !40, i64 848980, !40, i64 848984, !40, i64 848988, !40, i64 848992, !40, i64 848996, !40, i64 849000, !40, i64 849004, !40, i64 849008, !40, i64 849012, !40, i64 849016, !40, i64 849020, !40, i64 849024, !40, i64 849028, !40, i64 849032, !40, i64 849036, !42, i64 849040, !42, i64 849042, !38, i64 849044, !40, i64 849052, !40, i64 849056, !38, i64 849060, !38, i64 849072, !40, i64 849084, !40, i64 849088, !40, i64 849092, !40, i64 849096, !40, i64 849100, !40, i64 849104, !40, i64 849108, !40, i64 849112, !40, i64 849116, !40, i64 849120, !38, i64 849124, !38, i64 849148, !38, i64 849172, !40, i64 849196, !40, i64 849200, !40, i64 849204, !40, i64 849208, !40, i64 849212, !40, i64 849216, !40, i64 849220, !40, i64 849224, !40, i64 849228, !40, i64 849232, !40, i64 849236, !40, i64 849240, !40, i64 849244, !40, i64 849248, !40, i64 849252, !40, i64 849256, !40, i64 849260, !40, i64 849264, !40, i64 849268, !40, i64 849272, !40, i64 849276, !40, i64 849280, !40, i64 849284, !37, i64 849288, !37, i64 849296, !45, i64 849304, !45, i64 849624, !45, i64 849944, !45, i64 850264, !45, i64 850584, !45, i64 850904, !45, i64 851224, !45, i64 851544, !40, i64 851864, !40, i64 851868, !40, i64 851872, !48, i64 851880, !40, i64 851888, !38, i64 851892, !40, i64 855988, !40, i64 855992, !40, i64 855996, !40, i64 856000, !40, i64 856004, !40, i64 856008, !40, i64 856012, !37, i64 856016, !37, i64 856024, !37, i64 856032, !37, i64 856040, !37, i64 856048, !38, i64 856056, !37, i64 856456, !38, i64 856464, !37, i64 856488, !37, i64 856496, !37, i64 856504, !40, i64 856512, !37, i64 856520, !38, i64 856528, !37, i64 856608, !37, i64 856616, !37, i64 856624, !37, i64 856632, !40, i64 856640, !40, i64 856644, !40, i64 856648, !37, i64 856656, !37, i64 856664, !38, i64 856672, !38, i64 856688, !37, i64 856704, !37, i64 856712, !40, i64 856720, !37, i64 856728, !37, i64 856736, !37, i64 856744, !37, i64 856752, !37, i64 856760, !37, i64 856768, !37, i64 856776, !37, i64 856784, !37, i64 856792, !37, i64 856800, !37, i64 856808, !37, i64 856816, !40, i64 856824, !37, i64 856832, !40, i64 856840, !40, i64 856844, !40, i64 856848, !40, i64 856852, !40, i64 856856, !40, i64 856860, !40, i64 856864, !37, i64 856872}
!45 = !{!"image_data", !46, i64 0, !38, i64 136, !38, i64 160, !38, i64 184, !38, i64 208, !38, i64 232, !38, i64 256, !38, i64 280, !38, i64 292, !38, i64 304}
!46 = !{!"frame_format", !40, i64 0, !40, i64 4, !47, i64 8, !38, i64 16, !38, i64 28, !40, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !38, i64 72, !40, i64 84, !38, i64 88, !38, i64 100, !38, i64 112, !40, i64 124, !40, i64 128}
!47 = !{!"double", !38, i64 0}
!48 = !{!"long", !38, i64 0}
!49 = !{!50, !40, i64 0}
!50 = !{!"pix_pos", !40, i64 0, !40, i64 4, !42, i64 8, !42, i64 10, !42, i64 12, !42, i64 14}
!51 = !{!36, !37, i64 0}
!52 = !{!53, !37, i64 13512}
!53 = !{!"slice", !37, i64 0, !37, i64 8, !37, i64 16, !37, i64 24, !40, i64 32, !37, i64 40, !40, i64 48, !40, i64 52, !40, i64 56, !40, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !38, i64 88, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !42, i64 116, !40, i64 120, !40, i64 124, !40, i64 128, !40, i64 132, !38, i64 136, !40, i64 144, !40, i64 148, !40, i64 152, !40, i64 156, !40, i64 160, !40, i64 164, !40, i64 168, !40, i64 172, !40, i64 176, !38, i64 180, !40, i64 184, !40, i64 188, !40, i64 192, !40, i64 196, !40, i64 200, !40, i64 204, !40, i64 208, !40, i64 212, !40, i64 216, !40, i64 220, !40, i64 224, !40, i64 228, !40, i64 232, !40, i64 236, !40, i64 240, !40, i64 244, !37, i64 248, !38, i64 256, !38, i64 264, !37, i64 312, !37, i64 320, !37, i64 328, !38, i64 336, !38, i64 1104, !38, i64 1112, !38, i64 1128, !38, i64 1144, !38, i64 1160, !40, i64 1176, !40, i64 1180, !40, i64 1184, !54, i64 1188, !42, i64 1220, !42, i64 1222, !42, i64 1224, !40, i64 1228, !40, i64 1232, !40, i64 1236, !40, i64 1240, !37, i64 1248, !37, i64 1256, !37, i64 1264, !37, i64 1272, !37, i64 1280, !38, i64 1288, !37, i64 1352, !37, i64 1360, !37, i64 1368, !37, i64 1376, !37, i64 1384, !38, i64 1392, !38, i64 2544, !38, i64 3696, !38, i64 8304, !38, i64 12912, !38, i64 13008, !40, i64 13264, !40, i64 13268, !42, i64 13272, !42, i64 13274, !42, i64 13276, !42, i64 13278, !37, i64 13280, !37, i64 13288, !37, i64 13296, !42, i64 13304, !42, i64 13306, !40, i64 13308, !40, i64 13312, !37, i64 13320, !37, i64 13328, !40, i64 13336, !38, i64 13340, !37, i64 13408, !37, i64 13416, !37, i64 13424, !37, i64 13432, !37, i64 13440, !37, i64 13448, !37, i64 13456, !37, i64 13464, !37, i64 13472, !37, i64 13480, !37, i64 13488, !37, i64 13496, !40, i64 13504, !37, i64 13512, !37, i64 13520, !37, i64 13528, !37, i64 13536, !37, i64 13544, !38, i64 13552}
!54 = !{!"nalunitheadermvcext_tag", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28}
!55 = !{!50, !40, i64 4}
!56 = !{!53, !40, i64 212}
!57 = !{!53, !37, i64 320}
!58 = !{!36, !40, i64 404}
!59 = !{!36, !40, i64 388}
!60 = !{!36, !40, i64 384}
!61 = !{!36, !40, i64 408}
!62 = !{!36, !40, i64 392}
!63 = !{!64, !40, i64 4}
!64 = !{!"syntaxelement", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !37, i64 32, !37, i64 40}
!65 = !{!53, !37, i64 0}
!66 = !{!53, !40, i64 108}
!67 = !{!53, !42, i64 116}
!68 = !{!36, !42, i64 108}
!69 = !{!36, !40, i64 24}
!70 = !{!53, !40, i64 128}
!71 = !{!36, !42, i64 114}
!72 = !{!37, !37, i64 0}
!73 = distinct !{!73, !74}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!76, !37, i64 24}
!76 = !{!"", !40, i64 0, !40, i64 4, !40, i64 8, !37, i64 16, !37, i64 24}
!77 = !{!40, !40, i64 0}
!78 = distinct !{!78, !74}
!79 = distinct !{!79, !74}
!80 = distinct !{!80, !74}
!81 = !{!36, !37, i64 128}
!82 = !{!36, !38, i64 374}
!83 = !{!36, !37, i64 120}
!84 = distinct !{!84, !74}
!85 = distinct !{!85, !74}
!86 = !{!64, !40, i64 8}
!87 = distinct !{!87, !74}
!88 = distinct !{!88, !74}
!89 = !{!36, !40, i64 60}
!90 = !{!36, !40, i64 64}
!91 = !{!50, !42, i64 10}
!92 = !{!50, !42, i64 8}
!93 = !{!42, !42, i64 0}
!94 = !{!64, !40, i64 24}
!95 = !{!"cabac.c:iabs"}
!96 = !{!"cabac.c:unary_exp_golomb_mv_decode"}
!97 = distinct !{!97, !74}
!98 = !{!"cabac.c:exp_golomb_decode_eq_prob"}
!99 = distinct !{!99, !74}
!100 = distinct !{!100, !74}
!101 = !{!53, !37, i64 328}
!102 = !{!36, !40, i64 420}
!103 = !{!53, !40, i64 164}
!104 = !{!36, !42, i64 152}
!105 = !{!53, !37, i64 13520}
!106 = !{!38, !38, i64 0}
!107 = !{!108, !37, i64 152}
!108 = !{!"storable_picture", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !40, i64 16, !40, i64 20, !40, i64 24, !40, i64 28, !40, i64 32, !40, i64 36, !38, i64 40, !40, i64 44, !40, i64 48, !40, i64 52, !40, i64 56, !42, i64 60, !40, i64 64, !40, i64 68, !40, i64 72, !40, i64 76, !40, i64 80, !40, i64 84, !40, i64 88, !40, i64 92, !40, i64 96, !40, i64 100, !40, i64 104, !40, i64 108, !40, i64 112, !40, i64 116, !40, i64 120, !40, i64 124, !37, i64 128, !37, i64 136, !37, i64 144, !37, i64 152, !38, i64 160, !109, i64 184, !38, i64 192, !37, i64 216, !37, i64 224, !37, i64 232, !37, i64 240, !40, i64 248, !40, i64 252, !40, i64 256, !40, i64 260, !40, i64 264, !40, i64 268, !40, i64 272, !40, i64 276, !40, i64 280, !40, i64 284, !40, i64 288, !40, i64 292, !40, i64 296, !38, i64 300, !40, i64 308, !37, i64 312, !40, i64 320, !40, i64 324, !40, i64 328, !40, i64 332, !37, i64 336, !40, i64 344, !40, i64 348, !40, i64 352, !40, i64 356, !40, i64 360, !40, i64 364, !40, i64 368, !37, i64 376, !40, i64 384, !40, i64 388, !38, i64 392, !38, i64 400}
!109 = !{!"pic_motion_params_old", !37, i64 0}
!110 = !{!50, !42, i64 14}
!111 = !{!50, !42, i64 12}
!112 = !{!"cabac.c:unary_bin_decode"}
!113 = distinct !{!113, !74}
!114 = !{!36, !40, i64 284}
!115 = distinct !{!115, !74}
!116 = distinct !{!116, !74}
!117 = !{!108, !40, i64 268}
!118 = !{!36, !38, i64 373}
!119 = !{!"cabac.c:unary_bin_max_decode"}
!120 = !{!36, !37, i64 456}
!121 = !{!"cabac.c:read_and_store_CBP_block_bit_444"}
!122 = !{!36, !40, i64 100}
!123 = !{!36, !40, i64 96}
!124 = !{!48, !48, i64 0}
!125 = !{i32 0, i32 2}
!126 = !{!44, !40, i64 849280}
!127 = !{!"cabac.c:read_and_store_CBP_block_bit_normal"}
!128 = !{!"cabac.c:get_bit"}
!129 = !{!"cabac.c:i64_power2"}
!130 = !{!"cabac.c:set_cbp_bit"}
!131 = !{!"cabac.c:set_cbp_bit_ac"}
!132 = !{!53, !40, i64 13268}
!133 = distinct !{!133, !74}
!134 = !{!"cabac.c:read_significance_map"}
!135 = !{!53, !40, i64 184}
!136 = distinct !{!136, !74}
!137 = !{!"cabac.c:read_significant_coefficients"}
!138 = distinct !{!138, !74}
!139 = !{!"cabac.c:imin"}
!140 = !{!"cabac.c:unary_exp_golomb_level_decode"}
!141 = distinct !{!141, !74}
!142 = !{!64, !37, i64 40}
!143 = !{!64, !40, i64 12}
!144 = !{!53, !37, i64 312}
!145 = !{!146, !37, i64 0}
!146 = !{!"datapartition", !37, i64 0, !76, i64 8, !37, i64 40}
!147 = !{!148, !37, i64 16}
!148 = !{!"bit_stream", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !37, i64 16, !40, i64 24}
!149 = !{!148, !40, i64 12}
!150 = !{!76, !40, i64 8}
!151 = !{!76, !40, i64 4}
!152 = distinct !{!152, !74}
!153 = !{!44, !42, i64 849040}
!154 = !{!53, !37, i64 1272}
!155 = distinct !{!155, !74}
!156 = distinct !{!156, !74}
!157 = !{!44, !42, i64 849042}
!158 = !{!44, !40, i64 849112}
!159 = !{!44, !40, i64 849108}
!160 = distinct !{!160, !74}
!161 = distinct !{!161, !74}
!162 = distinct !{!162, !74}
